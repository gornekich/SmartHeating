#ifndef _ONE_WIRE_HW_
#define _ONE_WIRE_HW_

#include "stm32f1xx.h"

/*
 * Number of OneWire lines
 */
#define OW_LINES_TOTAL          1

/*
 * Typedef for one OneWire interface
 */
typedef struct {
        GPIO_TypeDef *port;
        uint32_t pin;
} ow_gpio_t;

/*
 * These functions are hardware specific. User has to implement them regarding
 * which microcontroller he uses.
 */

/*
 * GPIO and timer initialization
 */
void ow_hw_config(const ow_gpio_t *ow_gpio);
/*
 * Set GPIO output mode
 */
void ow_set_output(const ow_gpio_t *ow_gpio);
/*
 * Set GPIO output low
 */
void ow_output_low(const ow_gpio_t *ow_gpio);
/*
 * Set GPIO output high
 */
void ow_output_high(const ow_gpio_t *ow_gpio);
/*
 * Set GPIO input mode
 */
void ow_set_input(const ow_gpio_t *ow_gpio);
/*
 * Read GPIO input
 */
uint32_t ow_read_input(const ow_gpio_t *ow_gpio);
/*
 * OneWire delay in us function.
 */
void ow_delay_us(uint32_t time_us);

#endif // _ONE_WIRE_HW_
