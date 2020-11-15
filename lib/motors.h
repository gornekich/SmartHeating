#ifndef _MOTORS_H_
#define _MOTORS_H_

#include "gpio_map.h"
#include "peripheral.h"

#include "FreeRTOS.h"
#include "task.h"

#define MOTOR_MAX_ANGLE               90
#define MOTOR_MAX_ADC_FB              4086
#define MOTORS_MAN_STACK_DEPTH        256

#define IS_MOTOR_VALID(motor)         ((motor) < (NUMBER_OF_MOTORS))

/*
 * Motor status enum
 */
typedef enum {
    MOTOR_STAY = 0x00,
    MOTOR_MOVE = 0x01
} motor_state_t;

/*
 * Typedef for motors control
 */
typedef struct {
    gpio_t adc;
    gpio_t pwm;
    motor_state_t state;
    uint8_t target_pos;
    uint8_t current_pos;
    uint8_t prev_pos;
    uint8_t accuacy;
    float p_coeff;
} motor_ctrl_t;

/*
 * Typedef for motors manager
 */
typedef struct {
    motor_ctrl_t motor[NUMBER_OF_MOTORS];
    uint16_t adc_fb[MOTOR_DMA_BUFFER_SIZE];
    uint32_t motors_err;
} mot_man_ctrl_t;

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
uint8_t motors_set_target_angle(uint8_t id, uint8_t angle);

/*
 * Get target angle function
 */
uint8_t motors_get_angle(uint8_t motor, uint8_t *angle);

#endif //_MOTORS_H_
