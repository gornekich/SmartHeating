#ifndef _RTC_H_
#define _RTC_H_

#include "peripheral.h"

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
 * Typedef for RTC errors
 */
typedef enum {
    RTC_NO_ERR            = 0x00,
    RTC_WRONG_TIME        = 0x01,
    RTC_DESYNCHRONIZATION = 0X02
} rtc_err_t;

/*
 * Public functions
 */

/*
 * Initialization function
 */
rtc_err_t rtc_init(void);
/*
 * Setting date and time function
 */
rtc_err_t rtc_set(rtc_time_t* rtc_time);
/*
 * Getting date and time function
 */
rtc_err_t rtc_get(rtc_time_t* rtc_time);

#endif
