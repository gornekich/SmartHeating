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

/*
 * OneWire pins
 * TODO change!!!
 */
#define OW_PORT0                            GPIOA
#define OW_PIN0                             LL_GPIO_PIN_0
#define OW_PORT1                            GPIOA
#define OW_PIN1                             LL_GPIO_PIN_1
#define OW_PORT2                            GPIOA
#define OW_PIN2                             LL_GPIO_PIN_2

/*
 * Motor control pins
 */
#define MOTOR_PORT0                         GPIOB
#define MOTOR_PIN0                          LL_GPIO_PIN_8
#define MOTOR_PORT1                         GPIOB
#define MOTOR_PIN1                          LL_GPIO_PIN_9

#endif // _GPIO_MAP_H_
