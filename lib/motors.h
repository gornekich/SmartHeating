#ifndef _MOTORS_H_
#define _MOTORS_H_

#include "dev_map.h"

#include "FreeRTOS.h"
#include "task.h"

#define MOTORS_MAN_STACK_DEPTH        256

#define IS_MOTOR_VALID(motor)         ((motor) < (NUMBER_OF_MOTORS))

/*
 * Typedef for motors control
 */
typedef struct {
    uint8_t current_angle[NUMBER_OF_MOTORS];
    uint8_t target_angle[NUMBER_OF_MOTORS];
    uint32_t motors_err;
} motors_ctrl_t;

/*
 * Memory for terminal task
 */
StackType_t motors_manager_ts[MOTORS_MAN_STACK_DEPTH];
StaticTask_t motors_manager_tb;

/*
 * Main manager for motors control
 */
void motors_manager(void *arg);

/*
 * Set target angle function
 */
uint8_t motors_set_angle(uint8_t motor, uint8_t angle);

/*
 * Get target angle function
 */
uint8_t motors_get_angle(uint8_t motor, uint8_t *angle);

#endif //_MOTORS_H_
