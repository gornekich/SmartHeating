#ifndef _H_TERMINAL_
#define _H_TERMINAL_

#include "stm32f1xx_ll_usart.h"

#include "FreeRTOS.h"
#include "task.h"
#include "terminal_cmds.h"

#define TERM_CH_BUF_SIZE        128
#define TERM_MAN_STACK_DEPTH    1024
#define IS_COMMAND_VALID(com) (((com) > LOWER_BOUND_CMD) && \
                               ((com) < UPPER_BOUND_CMD))

/*
 * The main structure for terminal operating
 */
typedef struct {
        uint8_t buffer[TERM_CH_BUF_SIZE];
        uint8_t *com_args;
        TaskHandle_t xTaskToNotify;
} terminal_task_t;

/*
 * Memory for terminal task
 */
StackType_t terminal_manager_ts[TERM_MAN_STACK_DEPTH];
StaticTask_t terminal_manager_tb;

/*
 * Main manager for processing incoming commands
 */
void terminal_manager(void *arg);

#endif
