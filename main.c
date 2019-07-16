#include "stm32f1xx_ll_system.h"
#include "stm32f1xx_ll_bus.h"
#include "stm32f1xx_ll_gpio.h"
#include "stm32f1xx_ll_rcc.h"

#include "FreeRTOS.h"
#include "task.h"

#include "terminal.h"
#include "user_interface.h"
#include "temperature.h"
#include "motors.h"

/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSE)
  *    SYSCLK(Hz)                     = 72000000
  *    HCLK(Hz)                       = 72000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 2
  *    APB2 Prescaler                 = 1
  *    HSE Frequency(Hz)              = 8000000
  *    PLLMUL                         = 9
  *    Flash Latency(WS)              = 2
  */
static void rcc_config(void)
{
    /* Enable HSE oscillator */
    // LL_RCC_HSE_EnableBypass();
    LL_RCC_HSE_Enable();
    while(LL_RCC_HSE_IsReady() != 1)
    {
    };

    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_2);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE_DIV_1, LL_RCC_PLL_MUL_9);
    LL_RCC_PLL_Enable();
    while(LL_RCC_PLL_IsReady() != 1)
    {
    };

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
    {
    };

    /* Set APB1 & APB2 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_2);
    LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_1);

    /* Set systick to 1ms */
    SysTick_Config(72000000 / 1000);

    /* Update CMSIS variable (which can be updated also through SystemCoreClockUpdate function) */
    SystemCoreClock = 72000000;
}

void gpio_config(void)
{
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_13, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13);
    // LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOB);
    // LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_12, LL_GPIO_MODE_OUTPUT);
    // LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_12);
}

int main(void)
{
    rcc_config();
    gpio_config();
    NVIC_SetPriorityGrouping(0);
    xTaskCreateStatic(terminal_manager, "TERM_MAN", TERM_MAN_STACK_DEPTH,
                      NULL, 3, terminal_manager_ts, &terminal_manager_tb);
    xTaskCreateStatic(temp_manager, "TEMP_MAN", TEMP_MAN_STACK_DEPTH,
                      NULL, 5, temp_manager_ts, &temp_manager_tb);
    xTaskCreateStatic(motors_manager, "MOTORS_MAN", MOTORS_MAN_STACK_DEPTH,
                      NULL, 2, motors_manager_ts, &motors_manager_tb);
    xTaskCreateStatic(ui_manager, "UI_MAN", UI_MAN_STACK_DEPTH,
                      NULL, 3, ui_manager_ts, &ui_manager_tb);
    vTaskStartScheduler();
    return 0;
}
