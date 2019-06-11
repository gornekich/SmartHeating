#ifndef _PERIPHERAL_H_
#define _PERIPHERAL_H_

#include "stm32f103xb.h"
#include "stm32f1xx_ll_spi.h"
#include "stm32f1xx_ll_rtc.h"
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

#endif // _PERIPHERAL_H_
