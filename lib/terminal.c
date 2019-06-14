#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "stm32f1xx_ll_usart.h"
#include "peripheral.h"
#include "gpio_map.h"
#include "terminal.h"

#include "FreeRTOS.h"
#include "task.h"
#include "terminal_cmds.h"

/*
 * Private task notifier
 */
static terminal_task_t *term_ctrl;

/*
 * ----------------------------------------------------------------------------
 * Private functions
 * ----------------------------------------------------------------------------
 */

static void terminal_hw_config()
{
    /*
     * Configure USART pins
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(TERM_USART_TX_PORT, TERM_USART_TX_PIN,
                       LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(TERM_USART_TX_PORT, TERM_USART_TX_PIN,
                             LL_GPIO_OUTPUT_PUSHPULL);
    LL_GPIO_SetPinSpeed(TERM_USART_TX_PORT, TERM_USART_TX_PIN,
                        LL_GPIO_SPEED_FREQ_HIGH);
    // TODO For some reason RX is always on ground if it is set as floating
    // LL_GPIO_SetPinMode(TERM_USART_RX_PORT, TERM_USART_RX_PIN,
    //                    LL_GPIO_MODE_FLOATING);
    // LL_GPIO_SetPinSpeed(TERM_USART_RX_PORT, TERM_USART_RX_PIN,
    //                     LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * UART configuration
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_USART1);
    LL_USART_SetTransferDirection(TERM_USART, TERM_USART_TRANSFER_DIRECTION);
    LL_USART_SetParity(TERM_USART, TERM_USART_PARITY);
    LL_USART_SetDataWidth(TERM_USART, TERM_USART_DATA_WIDTH);
    LL_USART_SetStopBitsLength(TERM_USART, TERM_USART_STOPBITS);
    LL_USART_SetHWFlowCtrl(TERM_USART, TERM_USART_HAWDWARE_FLOAT_CNTRL);
    LL_USART_SetBaudRate(TERM_USART,
                         SystemCoreClock/TERM_USART_PERIPH_PRESCALER,
                         TERM_USART_BAUDRATE);
    LL_USART_EnableDirectionRx(TERM_USART);
    LL_USART_EnableDirectionTx(TERM_USART);
    LL_USART_EnableDMAReq_RX(TERM_USART);
    LL_USART_Enable(TERM_USART);
    /*
     * DMA configuration
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_DMA1);
    LL_DMA_SetDataTransferDirection(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_DIRECTION);
    LL_DMA_SetChannelPriorityLevel(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_PRIORITY);
    LL_DMA_SetMode(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_MODE);
    LL_DMA_SetPeriphIncMode(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_PERIPH_INC_MODE);
    LL_DMA_SetMemoryIncMode(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_MEM_INC_MODE);
    LL_DMA_SetPeriphSize(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_PERIPH_SIZE);
    LL_DMA_SetMemorySize(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_MEM_SIZE);
    LL_DMA_ConfigAddresses(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_SRC_ADDR,
                               (uint32_t)term_ctrl->buffer, TERM_DMA_DIRECTION);
    LL_DMA_SetDataLength(TERM_DMA, TERM_DMA_CHANNEL, TERM_DMA_BUFFER_SIZE);
    LL_DMA_EnableIT_TC(TERM_DMA, TERM_DMA_CHANNEL);
    LL_DMA_EnableChannel(TERM_DMA, TERM_DMA_CHANNEL);
    /*
     * Enable DMA global interrupt
     */
    NVIC_SetPriority(TERM_DMA_IRQN, TERM_DMA_IRQN_PRIORITY);
    NVIC_EnableIRQ(TERM_DMA_IRQN);
    return;
}

static uint8_t term_request(terminal_task_t *term_t)
{
    if (ulTaskNotifyTake(pdTRUE, portMAX_DELAY)) {
        term_t->com_args = &(term_t->buffer[1]);
        return (term_t->buffer[0]);
    }
    return 0;
}

static void term_response(terminal_task_t *term_t, int resp_len)
{
    int i = 0;

    LL_USART_ClearFlag_TC(TERM_USART);
    while (resp_len--) {
        while (!LL_USART_IsActiveFlag_TXE(TERM_USART))
                taskYIELD();
        LL_USART_TransmitData8(TERM_USART, term_t->com_args[i++]);
    }
    while (!LL_USART_IsActiveFlag_TC(TERM_USART))
        taskYIELD();
    return;
}

/*
 * ----------------------------------------------------------------------------
 * Public functions
 * ----------------------------------------------------------------------------
 */

void terminal_manager(void *arg)
{
    (void) arg;

    int command_code = 0;
    int resp_len = 0;
    terminal_task_t term_t;

    memset(term_t.buffer, 0, TERM_CH_BUF_SIZE);
    term_t.xTaskToNotify = xTaskGetCurrentTaskHandle();
    term_ctrl = &term_t;
    terminal_hw_config();

    while (1) {
        command_code = term_request(&term_t);
        if (!IS_COMMAND_VALID(command_code) ||
            !commands_handlers[command_code])
            continue;
        resp_len = commands_handlers[command_code](term_t.com_args);
        term_response(&term_t, resp_len);
    }
    return;
}

/*
 * ----------------------------------------------------------------------------
 * Hardware interrupts
 * ----------------------------------------------------------------------------
 */

void DMA1_Channel5_IRQHandler(void)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    if (LL_DMA_IsActiveFlag_TC5(TERM_DMA)) {
        LL_DMA_ClearFlag_TC5(TERM_DMA);
        vTaskNotifyGiveFromISR(term_ctrl->xTaskToNotify,
                               &xHigherPriorityTaskWoken);
    }
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
