#ifndef _RTC_H_
#define _RTC_H_

#include "peripheral.h"
#include "FreeRTOS.h"
#include "task.h"

#define RTC_SECONDS_PER_LEAP_YEAR           31622400
#define RTC_SECONDS_PER_YEAR                31536000
#define RTC_SECONDS_PER_DAY                 86400U
#define RTC_SECONDS_PER_HOUR                3600U
#define RTC_SECONDS_PER_MINUTE              60U
#define RTC_INIT_YEAR                       1970U
#define RTC_MAX_YEAR                        2099U

#define MAX_TASK_NOTIFY                     4

/*
 * Typedef for storing time
 */
typedef struct {
    uint16_t year;
    uint8_t month;
    uint8_t date;
    uint8_t hour;
    uint8_t minute;
    uint8_t second;
} rtc_time_t;

/*
 * Typedef for external task to be notified
 * xTaskToNotify is task to notify
 * period is notification frequency in seconds
 */
typedef struct {
    TaskHandle_t xTaskToNotify;
    uint32_t period;
} rtc_task_notifier_t;

/*
 * Typedef for RTC errors
 */
typedef enum {
    RTC_NO_ERR             = 0x00,
    RTC_WRONG_TIME         = 0x01,
    RTC_DESYNCHRONIZATION  = 0x02,
    RTC_TOO_MUCH_NOTIFIERS = 0x03
} rtc_err_t;

/*
 * RTC control structure
 */
typedef struct {
    rtc_time_t rtc_time;
    rtc_task_notifier_t rtc_task_notifier[MAX_TASK_NOTIFY];
    uint8_t num_task_notify;
    rtc_err_t rtc_err_status;
} rtc_ctrl_t;

/*
 * Public functions
 */

/*
 * Add task notifier
 * This function adds a task which will be notified with given frequency in
 * seconds. This function has to be called before rtc_init()
 */
rtc_err_t rtc_add_notifier(rtc_task_notifier_t *task_notifier);
/*
 * Setting date and time function
 */
rtc_err_t rtc_set(rtc_time_t* rtc_time);
/*
 * Getting date and time function with 1 second precision
 */
rtc_err_t rtc_get_precise(rtc_time_t* rtc_time);
/*
 * Getting date and time function with 1 minute precision
 */
rtc_err_t rtc_get(rtc_time_t* rtc_time);
/*
 * Get RTC error status
 */
rtc_err_t rtc_get_err_status(void);
/*
 * Initialization function
 */
rtc_err_t rtc_init(void);

#endif
