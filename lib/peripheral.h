#ifndef _PERIPHERAL_H_
#define _PERIPHERAL_H_

#include "dev_map.h"
#include "stm32f103xb.h"
#include "stm32f1xx_ll_spi.h"
#include "stm32f1xx_ll_rtc.h"
#include "stm32f1xx_ll_usart.h"
#include "stm32f1xx_ll_dma.h"
#include "stm32f1xx_ll_tim.h"
#include "stm32f1xx_ll_adc.h"
#include "FreeRTOSConfig.h"

/*
 * OLED display control
 */
#define OLED_SPI                                SPI1
#define OLED_SPI_BAUDRATE_PRESCALER             LL_SPI_BAUDRATEPRESCALER_DIV2
#define OLED_SPI_MODE                           LL_SPI_MODE_MASTER
#define OLED_SPI_BIT_ORDER                      LL_SPI_MSB_FIRST
#define OLED_SPI_TRANSFER_DIR                   LL_SPI_FULL_DUPLEX
#define OLED_SPI_DATA_WIDTH                     LL_SPI_DATAWIDTH_8BIT

/*
 * RTC backup register
 * RTC_BKP_REG_CHECK_VALUE constant will be set to backup domain registers.
 * After system reset one have to check weather this register still have this
 * value. If it does, then RTC proceed working during reset and if not - RTC has
 * to be reinitialized
 */
#define RTC_BKP                                 BKP
#define RTC_BKP_REG                             LL_RTC_BKP_DR1
#define RTC_BKP_REG_CHECK_VALUE                 (uint32_t) 0x0228
#define RTC_IRQN                                RTC_IRQn
#define RTC_IRQN_PRIORITY                       (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 1)

/*
 * Terminal configuration
 * UART configuration
 */
#define TERM_USART                              USART1
#define TERM_USART_PERIPH_PRESCALER             1
#define TERM_USART_BAUDRATE                     115200
#define TERM_USART_DATA_WIDTH                   LL_USART_DATAWIDTH_8B
#define TERM_USART_HAWDWARE_FLOAT_CNTRL         LL_USART_HWCONTROL_NONE
#define TERM_USART_PARITY                       LL_USART_PARITY_NONE
#define TERM_USART_STOPBITS                     LL_USART_STOPBITS_1
#define TERM_USART_TRANSFER_DIRECTION           LL_USART_DIRECTION_TX_RX
/*
 * DMA configuration
 */
#define TERM_DMA                                DMA1
#define TERM_DMA_CHANNEL                        LL_DMA_CHANNEL_5
#define TERM_DMA_IRQN                           DMA1_Channel5_IRQn
#define TERM_DMA_IRQN_PRIORITY                  (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 1)
#define TERM_DMA_MODE                           LL_DMA_MODE_CIRCULAR
#define TERM_DMA_DIRECTION                      LL_DMA_DIRECTION_PERIPH_TO_MEMORY
#define TERM_DMA_PRIORITY                       LL_DMA_PRIORITY_HIGH
#define TERM_DMA_BUFFER_SIZE                    8
#define TERM_DMA_MEM_INC_MODE                   LL_DMA_MEMORY_INCREMENT
#define TERM_DMA_MEM_SIZE                       LL_DMA_MDATAALIGN_BYTE
#define TERM_DMA_PERIPH_INC_MODE                LL_DMA_PERIPH_NOINCREMENT
#define TERM_DMA_PERIPH_SIZE                    LL_DMA_PDATAALIGN_BYTE
#define TERM_DMA_SRC_ADDR                       (uint32_t)&((TERM_USART)->DR)

/*
 * Motor control PWM timer
 * APB1_CLK = 36 MHz, F_inp = 72MHz, PSC = 71, F_tick = 1 MHz
 */
#define MOTOR_TIM                               TIM4
#define MOTOR_PWM_TIM_PSC                       71
#define MOTOR_PWM_TIM_ARR                       999
#define MOTOR_PWM_TIM_CCR_INIT                  99

/*
 * ADC configuration for 2 channels
 */
#define MOTOR_ADC                               ADC1
#define MOTOR_ADC_CHANNEL0                      LL_ADC_CHANNEL_3
#define MOTOR_ADC_CHANNEL1                      LL_ADC_CHANNEL_4
#define MOTOR_ADC_ALIGN                         LL_ADC_DATA_ALIGN_RIGHT
#define MOTOR_ADC_SEQ_SCAN                      LL_ADC_SEQ_SCAN_ENABLE
#define MOTOR_ADC_SEQ_LEN                       LL_ADC_REG_SEQ_SCAN_ENABLE_2RANKS
#define MOTOR_ADC_TRIG                          LL_ADC_REG_TRIG_EXT_TIM1_CH1
#define MOTOR_ADC_TRIG_POLARITY                 LL_ADC_REG_TRIG_EXT_RISING
#define MOTOR_ADC_SINGLE_MODE                   LL_ADC_REG_CONV_SINGLE
#define MOTOR_ADC_DMA_MODE                      LL_ADC_REG_DMA_TRANSFER_UNLIMITED
#define MOTOR_ADC_SAMPL_TIME                    LL_ADC_SAMPLINGTIME_1CYCLE_5
#define MOTOR_ADC_MEAN_SAMPLE_NUM               5

/*
 * Motor timer for ADC trigger source
 * APB2_CLK = 72000000, PSC = 72000, F_clk = 1kHz,
 * ARR = 1000 / Num_of_mean_samples, CCR = ARR/2 (50% duticycle)
 */
#define MOT_ADC_TIM                             TIM1
#define MOT_ADC_TIM_OC_CHANNEL                  LL_TIM_CHANNEL_CH1
#define MOT_ADC_TIM_PSC                         71999
#define MOT_ADC_TIM_ARR                         1000 / MOTOR_ADC_MEAN_SAMPLE_NUM
#define MOT_ADC_TIM_CCR_INIT                    (MOT_ADC_TIM_ARR) >> 1

/*
 * DMA for motor ADC feedback configuration
 */
#define MOTOR_DMA                               DMA1
#define MOTOR_DMA_CHANNEL                       LL_DMA_CHANNEL_1
#define MOTOR_DMA_IRQN                          DMA1_Channel1_IRQn
#define MOTOR_DMA_IRQN_PRIORITY                 (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 1)
#define MOTOR_DMA_MODE                          LL_DMA_MODE_CIRCULAR
#define MOTOR_DMA_DIRECTION                     LL_DMA_DIRECTION_PERIPH_TO_MEMORY
#define MOTOR_DMA_PRIORITY                      LL_DMA_PRIORITY_HIGH
#define MOTOR_DMA_BUFFER_SIZE                   ((MOTOR_ADC_MEAN_SAMPLE_NUM) * (NUMBER_OF_MOTORS))
#define MOTOR_DMA_MEM_INC_MODE                  LL_DMA_MEMORY_INCREMENT
#define MOTOR_DMA_MEM_SIZE                      LL_DMA_MDATAALIGN_HALFWORD
#define MOTOR_DMA_PERIPH_INC_MODE               LL_DMA_PERIPH_NOINCREMENT
#define MOTOR_DMA_PERIPH_SIZE                   LL_DMA_PDATAALIGN_HALFWORD
#define MOTOR_DMA_SRC_ADDR                      (uint32_t)&(ADC1->DR)

/*
 * Timer for OneWire delay function
 * APB1CLK = 36 MHz, F_inp = 72MHz, PSC = 71, F_tick = 1 MHz
 */
#define OW_TIM                                  TIM2
#define OW_TIM_PSC                              71
#define OW_TIM_ARR                              999999

#endif // _PERIPHERAL_H_
