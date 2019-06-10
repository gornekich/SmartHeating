#ifndef _PERIPHERAL_H_
#define _PERIPHERAL_H_

#include "stm32f103xb.h"
#include "stm32f1xx_ll_spi.h"

/*
 * OLED display control
 */
#define OLED_SPI                                SPI1
#define OLED_SPI_BAUDRATE_PRESCALER             LL_SPI_BAUDRATEPRESCALER_DIV2
#define OLED_SPI_MODE                           LL_SPI_MODE_MASTER
#define OLED_SPI_BIT_ORDER                      LL_SPI_MSB_FIRST
#define OLED_SPI_TRANSFER_DIR                   LL_SPI_FULL_DUPLEX
#define OLED_SPI_DATA_WIDTH                     LL_SPI_DATAWIDTH_8BIT

#endif // _PERIPHERAL_H_
