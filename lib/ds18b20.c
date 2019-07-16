#include "ds18b20.h"

/*
 * Public functions
 */

/*
 * Start temperature conversion for certain sensor
 */
uint8_t ds_start(ow_ctrl_t *ow_ctrl, uint8_t *rom)
{
    if (!IS_DEV_DS18B20(rom))
        return 1;

    ow_reset(ow_ctrl);
    ow_select(ow_ctrl, rom);
    ow_write_byte(ow_ctrl, DS18B20_CMD_CONVERTTEMP);
    return 0;
}

/*
 * Start temperature conversion for all sensprs on line
 */
uint8_t ds_start_all(ow_ctrl_t *ow_ctrl)
{
    ow_reset(ow_ctrl);
    ow_write_byte(ow_ctrl, OW_CMD_SKIPROM);
    ow_write_byte(ow_ctrl, DS18B20_CMD_CONVERTTEMP);
    return 0;
}

/*
 * Read temperature from certain sensor
 */
uint8_t ds_read(ow_ctrl_t *ow_ctrl, uint8_t *rom, float *temp)
{
    uint16_t temperature;
    uint8_t resolution;
    int8_t digit, minus = 0;
    float decimal;
    uint8_t i = 0;
    uint8_t data[9];
    uint8_t crc;
    
    /* Check if device is DS18B20 */
    if (!IS_DEV_DS18B20(rom)) {
        return 1;
    }
    
    /* Check if line is released, if it is, then conversion is complete */
    if (!ow_read_bit(ow_ctrl)) {
        /* Conversion is not finished yet */
        return 1; 
    }

    ow_reset(ow_ctrl);
    ow_select(ow_ctrl, rom);
    ow_write_byte(ow_ctrl, OW_CMD_RSCRATCHPAD);
    /* Get data */
    for (i = 0; i < 9; i++) {
        /* Read byte by byte */
        data[i] = ow_read_byte(ow_ctrl);
    }
    
    /* Calculate CRC */
    crc = ow_crc8(data, 8);
    
    /* Check if CRC is ok */
    if (crc != data[8]) {
        /* CRC invalid */
        // return 1;
    }
    
    /* First two bytes of scratchpad are temperature values */
    temperature = data[0] | (data[1] << 8);

    /* Reset line */
    ow_reset(ow_ctrl);
    
    /* Check if temperature is negative */
    if (temperature & 0x8000) {
        /* Two's complement, temperature is negative */
        temperature = ~temperature + 1;
        minus = 1;
    }

    
    /* Get sensor resolution */
    resolution = ((data[4] & 0x60) >> 5) + 9;

    
    /* Store temperature integer digits and decimal digits */
    digit = temperature >> 4;
    digit |= ((temperature >> 8) & 0x7) << 4;
    
    /* Store decimal digits */
    switch (resolution) {
        case 9: {
            decimal = (temperature >> 3) & 0x01;
            decimal *= (float)DS18B20_DECIMAL_STEPS_9BIT;
        } break;
        case 10: {
            decimal = (temperature >> 2) & 0x03;
            decimal *= (float)DS18B20_DECIMAL_STEPS_10BIT;
        } break;
        case 11: {
            decimal = (temperature >> 1) & 0x07;
            decimal *= (float)DS18B20_DECIMAL_STEPS_11BIT;
        } break;
        case 12: {
            decimal = temperature & 0x0F;
            decimal *= (float)DS18B20_DECIMAL_STEPS_12BIT;
        } break;
        default: {
            decimal = 0xFF;
            digit = 0;
        }
    }
    
    /* Check for negative part */
    decimal = digit + decimal;
    if (minus) {
        decimal = 0 - decimal;
    }
    
    /* Set to pointer */
    *temp = decimal;

    /* Return 0, temperature valid */
    return 0;
}

/*
 * Set temperature value resolution
 */
uint8_t ds_set_resolution(ow_ctrl_t *ow_ctrl, uint8_t *rom, ds_resolution_t ds_resolution)
{
    uint8_t th, tl, conf;
    if (!IS_DEV_DS18B20(rom)) {
        return 1;
    }
    
    ow_reset(ow_ctrl);
    ow_select(ow_ctrl, rom);
    ow_write_byte(ow_ctrl, OW_CMD_RSCRATCHPAD);
    
    /* Ignore first 2 bytes */
    ow_read_byte(ow_ctrl);
    ow_read_byte(ow_ctrl);
    
    th = ow_read_byte(ow_ctrl);
    tl = ow_read_byte(ow_ctrl);
    conf = ow_read_byte(ow_ctrl);
    
    if (ds_resolution == DS_RESOLUTION_9BITS) {
        conf &= ~(1 << DS18B20_RESOLUTION_R1);
        conf &= ~(1 << DS18B20_RESOLUTION_R0);
    } else if (ds_resolution == DS_RESOLUTION_10BITS) {
        conf &= ~(1 << DS18B20_RESOLUTION_R1);
        conf |= 1 << DS18B20_RESOLUTION_R0;
    } else if (ds_resolution == DS_RESOLUTION_11BITS) {
        conf |= 1 << DS18B20_RESOLUTION_R1;
        conf &= ~(1 << DS18B20_RESOLUTION_R0);
    } else if (ds_resolution == DS_RESOLUTION_12BITS) {
        conf |= 1 << DS18B20_RESOLUTION_R1;
        conf |= 1 << DS18B20_RESOLUTION_R0;
    }
    
    ow_reset(ow_ctrl);
    ow_select(ow_ctrl, rom);
    ow_write_byte(ow_ctrl, OW_CMD_WSCRATCHPAD);
    
    /* Write bytes */
    ow_write_byte(ow_ctrl, th);
    ow_write_byte(ow_ctrl, tl);
    ow_write_byte(ow_ctrl, conf);
    
    ow_reset(ow_ctrl);
    ow_select(ow_ctrl, rom);
    ow_write_byte(ow_ctrl, OW_CMD_CPYSCRATCHPAD);
    
    return 0;
}

/*
 * Get temperature value resolution
 */
uint8_t ds_get_resolution(ow_ctrl_t *ow_ctrl, uint8_t *rom)
{
    uint8_t conf;
    
    if (!IS_DEV_DS18B20(rom)) {
        return 0;
    }

    ow_reset(ow_ctrl);
    ow_select(ow_ctrl, rom);
    ow_write_byte(ow_ctrl, OW_CMD_RSCRATCHPAD);

    /* Ignore first 4 bytes */
    ow_read_byte(ow_ctrl);
    ow_read_byte(ow_ctrl);
    ow_read_byte(ow_ctrl);
    ow_read_byte(ow_ctrl);

    /* 5th byte of scratchpad is configuration register */
    conf = ow_read_byte(ow_ctrl);
    
    /* Return 9 - 12 value according to number of bits */
    return ((conf & 0x60) >> 5) + 9;
}

/*
 * Checks if conversion is done on all sensors on the line
 */
uint8_t ds_finished(ow_ctrl_t *ow_ctrl)
{
    return ow_read_bit(ow_ctrl);
}
