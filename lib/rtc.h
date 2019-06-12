#ifndef _RTC_H_
#define _RTC_H_

#include "peripheral.h"

#define RTC_SECONDS_PER_LEAP_YEAR           31622400
#define RTC_SECONDS_PER_YEAR                31536000
#define RTC_SECONDS_PER_DAY                 86400U
#define RTC_SECONDS_PER_HOUR                3600U
#define RTC_SECONDS_PER_MINUTE              60U
#define RTC_INIT_YEAR                       1970U
#define RTC_MAX_YEAR                        2099U

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
