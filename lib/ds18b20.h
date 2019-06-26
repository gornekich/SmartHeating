#ifndef _DS18B20_H_
#define _DS18B20_H_

#include "one_wire.h"

/*
 * Temperature sensor adress
 */
#define DS18B20_FAMILY_CODE             0x28
#define IS_DEV_DS18B20(rom)             ((*rom) == (DS18B20_FAMILY_CODE))

/*
 * Temperature sensor parameters
 */
#define DS18B20_CMD_CONVERTTEMP         0x44
#define DS18B20_DECIMAL_STEPS_12BIT     0.0625
#define DS18B20_DECIMAL_STEPS_11BIT     0.125
#define DS18B20_DECIMAL_STEPS_10BIT     0.25
#define DS18B20_DECIMAL_STEPS_9BIT      0.5
#define DS18B20_RESOLUTION_R1           6
#define DS18B20_RESOLUTION_R0           5

/*
 * Typedef for ds18b20 temperature value resolution
 */
typedef enum {
    DS_RESOLUTION_9BITS =  9,
    DS_RESOLUTION_10BITS = 10,
    DS_RESOLUTION_11BITS = 11,
    DS_RESOLUTION_12BITS = 12    
} ds_resolution_t;

/*
 * Start temperature conversion for certain sensor
 */
uint8_t ds_start(ow_ctrl_t *ow_ctrl, uint8_t *rom);

/*
 * Start temperature conversion for all sensprs on line
 */
uint8_t ds_start_all(ow_ctrl_t *ow_ctrl);

/*
 * Read temperature from certain sensor
 */
uint8_t ds_read(ow_ctrl_t *ow_ctrl, uint8_t *rom, float *temp);

/*
 * Set temperature value resolution
 */
uint8_t ds_set_resolution(ow_ctrl_t *ow_ctrl, uint8_t *rom, ds_resolution_t ds_resolution);

/*
 * Get temperature value resolution
 */
uint8_t ds_get_resolution(ow_ctrl_t *ow_ctrl, uint8_t *rom);

/*
 * Checks if conversion is done on all sensors on the line
 */
uint8_t ds_finished(ow_ctrl_t *ow_ctrl);

#endif // _DS18B20_H_
