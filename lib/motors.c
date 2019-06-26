#include "motors.h"

static motors_ctrl_t motors_ctrl;

/*
 * ----------------------------------------------------------------------------
 * Private functions
 * ----------------------------------------------------------------------------
 */

static void motors_hw_config(void)
{
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
