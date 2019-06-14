#ifndef _GPIO_MAP_H_
#define _GPIO_MAP_H_ 

#include "stm32f103xb.h"
#include "stm32f1xx_ll_gpio.h"
#include "stm32f1xx_ll_bus.h"

/*
 * Oled display pins
 */
#define OLED_RESET_PORT                     GPIOB
#define OLED_RESET_PIN                      LL_GPIO_PIN_0
#define OLED_DC_PORT                        GPIOB
#define OLED_DC_PIN                         LL_GPIO_PIN_1
#define OLED_SCK_PORT                       GPIOA
#define OLED_SCK_PIN                        LL_GPIO_PIN_5
#define OLED_MOSI_PORT                      GPIOA
#define OLED_MOSI_PIN                       LL_GPIO_PIN_7

/*
 * Terminal pins
 */
#define TERM_USART_TX_PORT                  GPIOA
#define TERM_USART_TX_PIN                   LL_GPIO_PIN_9
#define TERM_USART_RX_PORT                  GPIOA
#define TERM_USART_RX_PIN                   LL_GPIO_PIN_10

#endif // _GPIO_MAP_H_
