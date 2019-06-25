#include "one_wire_hw.h"
#include "gpio_map.h"
#include "peripheral.h"

#include "stm32f1xx_ll_rcc.h"
#include "stm32f1xx_ll_bus.h"

/*
 * GPIO and timer initialization
 */
void ow_hw_config(const ow_gpio_t *ow_gpio)
{
    /*
     * GPIO configuration
     * Take care of clocking corresponding ports!
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(ow_gpio->port, ow_gpio->pin, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetOutputPin(ow_gpio->port, ow_gpio->pin);
    /*
     * Timer configuration
     */
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
    LL_TIM_SetCounterMode(OW_TIM, LL_TIM_COUNTERMODE_UP);
    LL_TIM_SetPrescaler(OW_TIM, OW_TIM_PSC);
    LL_TIM_SetAutoReload(OW_TIM, OW_TIM_ARR);
    return;
}

/*
 * Set GPIO output mode
 */
void ow_set_output(const ow_gpio_t *ow_gpio)
{
    LL_GPIO_SetPinMode(ow_gpio->port, ow_gpio->pin, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetOutputPin(ow_gpio->port, ow_gpio->pin);
    return;
}

/*
 * Set GPIO output low
 */
void ow_output_low(const ow_gpio_t *ow_gpio)
{
    LL_GPIO_SetOutputPin(ow_gpio->port, ow_gpio->pin);
    return;
}

/*
 * Set GPIO output high
 */
void ow_output_high(const ow_gpio_t *ow_gpio)
{
    LL_GPIO_ResetOutputPin(ow_gpio->port, ow_gpio->pin);
    return;
}

/*
 * Set GPIO input mode
 */
void ow_set_input(const ow_gpio_t *ow_gpio)
{
    LL_GPIO_SetPinMode(ow_gpio->port, ow_gpio->pin, LL_GPIO_MODE_INPUT);
    return;
}

/*
 * Read GPIO input
 */
uint32_t ow_read_input(const ow_gpio_t *ow_gpio)
{
    return LL_GPIO_IsInputPinSet(ow_gpio->port, ow_gpio->pin);
}

/*
 * OneWire delay in us function.
 */
void ow_delay_us(uint32_t time_us)
{
    uint32_t current_tick = 0;

    LL_TIM_EnableCounter(OW_TIM);
    LL_TIM_SetCounter(OW_TIM, 0); // TODO check if it resets by hardware
    while (current_tick < time_us) {
        current_tick = LL_TIM_GetCounter(OW_TIM);
    }
    LL_TIM_DisableCounter(OW_TIM);
    return;
}
