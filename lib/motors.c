#include "motors.h"
#include "gpio_map.h"
#include "peripheral.h"

#include <string.h>

static motors_ctrl_t motors_ctrl;

/*
 * ----------------------------------------------------------------------------
 * Private functions
 * ----------------------------------------------------------------------------
 */

static void motors_hw_config(void)
{
    /*
     * Configure GPIO motor control
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(MOTOR_PORT0, MOTOR_PIN0, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(MOTOR_PORT0, MOTOR_PIN0, LL_GPIO_OUTPUT_PUSHPULL);
    LL_GPIO_SetPinMode(MOTOR_PORT1, MOTOR_PIN1, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(MOTOR_PORT1, MOTOR_PIN1, LL_GPIO_OUTPUT_PUSHPULL);
    /*
     * Configure timer in PWM mode
     */
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM4);
    LL_TIM_SetCounterMode(MOTOR_TIM, LL_TIM_COUNTERMODE_UP);
    LL_TIM_SetPrescaler(MOTOR_TIM, MOTOR_PWM_TIM_PSC);
    LL_TIM_SetAutoReload(MOTOR_TIM, MOTOR_PWM_TIM_ARR);
    LL_TIM_CC_EnableChannel(MOTOR_TIM, LL_TIM_CHANNEL_CH3 | LL_TIM_CHANNEL_CH4);
    LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH3, LL_TIM_OCMODE_PWM1);
    LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH4, LL_TIM_OCMODE_PWM1);
    LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH3);
    LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH4);
    LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH3);
    LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH4);
    LL_TIM_EnableARRPreload(MOTOR_TIM);
    LL_TIM_OC_SetCompareCH3(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);
    LL_TIM_OC_SetCompareCH4(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);
    LL_TIM_GenerateEvent_UPDATE(MOTOR_TIM);

    LL_TIM_EnableCounter(MOTOR_TIM);
    return;
}

/*
 * ----------------------------------------------------------------------------
 * Public functions
 * ----------------------------------------------------------------------------
 */

/*
 * Main manager for motors control
 */
void motors_manager(void *arg)
{
    (void) arg;

    motors_hw_config();

    while (1) {
        vTaskDelay(1000);
    }
    return;
}

/*
 * Set target angle function
 */
uint8_t motors_set_angle(uint8_t motor, uint8_t angle)
{
    if (!IS_MOTOR_VALID(motor))
        return 1;
    motors_ctrl.target_angle[motor] = angle;
    return 0;
}

/*
 * Get target angle function
 */
uint8_t motors_get_angle(uint8_t motor, uint8_t *angle)
{
    if (!IS_MOTOR_VALID(motor))
        return 1;
    *angle = motors_ctrl.current_angle[motor];
    return 0;
}

/*
 * ----------------------------------------------------------------------------
 * Terminal commands implementation
 * ----------------------------------------------------------------------------
 */

/*
 * Set ARR register
 */
int cmd_set_arr(void *args) {
    uint32_t *reg_arr = (uint32_t *) args;

    if (*reg_arr > 1000000)
        goto cmd_set_arr_error;

    LL_TIM_SetAutoReload(MOTOR_TIM, *reg_arr);
    memcpy(args, "OK", 3);
    return 3;
cmd_set_arr_error:
    memcpy(args, "ER", 3);
    return 3;
}

/*
 * Set ARR register
 */
int cmd_set_ccr(void *args) {
    uint32_t *reg_ccr = (uint32_t *) args;

    if (*reg_ccr > 1000000)
        goto cmd_set_ccr_error;

    LL_TIM_OC_SetCompareCH3(MOTOR_TIM, *reg_ccr);
    memcpy(args, "OK", 3);
    return 3;
cmd_set_ccr_error:
    memcpy(args, "ER", 3);
    return 3;
}
