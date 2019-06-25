#include "one_wire.h"
#include <string.h>

/*
 * Private functions
 */

/*
 * Privite function for searching devices on OneWire line
 */
static uint8_t ow_search(ow_ctrl_t *ow_ctrl, uint8_t cmd)
{
    uint8_t id_bit_number;
    uint8_t last_zero, rom_byte_number, search_result;
    uint8_t id_bit, cmp_id_bit;
    uint8_t rom_byte_mask, search_direction;

    /* Initialize for search */
    id_bit_number = 1;
    last_zero = 0;
    rom_byte_number = 0;
    rom_byte_mask = 1;
    search_result = 0;

    /* Check if any devices */
    if (!ow_ctrl->last_dev_flag) {
        /* 1-Wire reset */
        if (ow_reset(ow_ctrl)) {
            /* Reset the search */
            ow_ctrl->last_discr = 0;
            ow_ctrl->last_dev_flag= 0;
            ow_ctrl->last_fam_discr = 0;
            return 0;
        }

        /* Issue the search command */
        ow_write_byte(ow_ctrl, cmd);  

        /* Loop to do the search */
        do {
            /* Read a bit and its complement */
            id_bit = ow_read_bit(ow_ctrl);
            cmp_id_bit = ow_read_bit(ow_ctrl);

            /* Check for no devices on 1-wire */
            if ((id_bit == 1) && (cmp_id_bit == 1)) {
                break;
            } else {
                /* All devices coupled have 0 or 1 */
                if (id_bit != cmp_id_bit) {
                    /* Bit write value for search */
                    search_direction = id_bit;
                } else {
                    /* If this discrepancy is before the Last Discrepancy on a previous next then pick the same as last time */
                    if (id_bit_number < ow_ctrl->last_discr) {
                        search_direction = ((ow_ctrl->rom[rom_byte_number] & rom_byte_mask) > 0);
                    } else {
                        /* If equal to last pick 1, if not then pick 0 */
                        search_direction = (id_bit_number == ow_ctrl->last_discr);
                    }
                    
                    /* If 0 was picked then record its position in LastZero */
                    if (search_direction == 0) {
                        last_zero = id_bit_number;

                        /* Check for Last discrepancy in family */
                        if (last_zero < 9) {
                            ow_ctrl->last_fam_discr = last_zero;
                        }
                    }
                }

                /* Set or clear the bit in the ROM byte rom_byte_number with mask rom_byte_mask */
                if (search_direction == 1) {
                    ow_ctrl->rom[rom_byte_number] |= rom_byte_mask;
                } else {
                    ow_ctrl->rom[rom_byte_number] &= ~rom_byte_mask;
                }
                
                /* Serial number search direction write bit */
                ow_write_bit(ow_ctrl, search_direction);

                /* Increment the byte counter id_bit_number and shift the mask rom_byte_mask */
                id_bit_number++;
                rom_byte_mask <<= 1;

                /* If the mask is 0 then go to new SerialNum byte rom_byte_number and reset mask */
                if (rom_byte_mask == 0) {
                    rom_byte_number++;
                    rom_byte_mask = 1;
                }
            }
        /* Loop until through all ROM bytes 0-7 */
        } while (rom_byte_number < 8);

        /* If the search was successful then */
        if (!(id_bit_number < 65)) {
            /* Search successful so set LastDiscrepancy, LastDeviceFlag, search_result */
            ow_ctrl->last_discr = last_zero;

            /* Check for last device */
            if (ow_ctrl->last_discr == 0) {
                ow_ctrl->last_dev_flag = 1;
            }

            search_result = 1;
        }
    }

    /* If no device found then reset counters so next 'search' will be like a first */
    if (!search_result || !ow_ctrl->rom[0]) {
        ow_ctrl->last_discr = 0;
        ow_ctrl->last_dev_flag = 0;
        ow_ctrl->last_fam_discr = 0;
        search_result = 0;
    }

    return search_result;
}


/*
 * Public functions
 */

/*
 * Init OneWire line
 */
void ow_init(ow_ctrl_t *ow_ctrl)
{
    ow_hw_config(&ow_ctrl->ow_gpio);
    return;
}

/*
 * Reset OneWire line
 */
uint32_t ow_reset(ow_ctrl_t *ow_ctrl)
{
    uint32_t presense_pulse;

    /*
     * Perform RESET signal
     */
    ow_set_output(&ow_ctrl->ow_gpio);
    ow_output_low(&ow_ctrl->ow_gpio);
    ow_delay_us(480);
    ow_set_input(&ow_ctrl->ow_gpio);
    ow_delay_us(70);

    /*
     * Check presence pulse
     */
    presense_pulse = ow_read_input(&ow_ctrl->ow_gpio);
    return presense_pulse;
}

/*
 * Write bit on OneWire line
 */
void ow_write_bit(ow_ctrl_t *ow_ctrl, uint8_t bit)
{
    if (bit) {
        ow_set_output(&ow_ctrl->ow_gpio);
        ow_output_low(&ow_ctrl->ow_gpio);
        ow_delay_us(10);
        ow_set_input(&ow_ctrl->ow_gpio);
        ow_delay_us(55);
    }
    else {
        ow_set_output(&ow_ctrl->ow_gpio);
        ow_output_low(&ow_ctrl->ow_gpio);
        ow_delay_us(65);
        ow_set_input(&ow_ctrl->ow_gpio);
        ow_delay_us(5);
    }
    return;
}

/*
 * Read bit on OneWire line
 */
uint8_t ow_read_bit(ow_ctrl_t *ow_ctrl)
{
    uint8_t bit = 0;

    /*
     * Generate read instructure
     */
    ow_set_output(&ow_ctrl->ow_gpio);
    ow_output_low(&ow_ctrl->ow_gpio);
    ow_delay_us(3);
    ow_set_input(&ow_ctrl->ow_gpio);
    ow_delay_us(10);
    /*
     * Read bit
     */
    if (ow_read_input(&ow_ctrl->ow_gpio))
        bit = 1;
    ow_delay_us(50);
    return bit;
}

/*
 * Write byte on OneWire line
 */
void ow_write_byte(ow_ctrl_t *ow_ctrl, uint8_t byte)
{
    uint8_t i = 8;

    while (i--) {
        ow_write_bit(ow_ctrl, byte & 0x01);
        byte >>= 1;
    }
    return;
}

/*
 * Read byte on OneWire line
 */
uint8_t ow_read_byte(ow_ctrl_t *ow_ctrl)
{
    uint8_t i = 8;
    uint8_t byte = 0;

    while (i--) {
        byte >>= 1;
        byte |= (ow_read_bit(ow_ctrl) << 7);
    }
    return byte;
}

/*
 * Reset search parameters on OneWire line
 */
void ow_reset_search(ow_ctrl_t *ow_ctrl)
{
    ow_ctrl->last_discr = 0;
    ow_ctrl->last_dev_flag = 0;
    ow_ctrl->last_fam_discr = 0;
    return;
}

/*
 * Starts search device on OneWire line
 */
uint8_t ow_start_search(ow_ctrl_t *ow_ctrl)
{
    ow_reset_search(ow_ctrl);
    return ow_search(ow_ctrl, OW_CMD_SEARCHROM);
}

/*
 * Search next devince on OneWire line
 */
uint8_t ow_search_next(ow_ctrl_t *ow_ctrl)
{
     return ow_search(ow_ctrl, OW_CMD_SEARCHROM);
}

/*
 * Get ROM devince on OneWire line
 */
void ow_get_full_rom(ow_ctrl_t *ow_ctrl, uint8_t *rom)
{
    memcpy(rom, ow_ctrl->rom, 8);
    return;
}

/*
 * Select specific device on OneWire line
 */
void ow_select(ow_ctrl_t *ow_ctrl, uint8_t *rom)
{
    uint8_t i;
    ow_write_byte(ow_ctrl, OW_CMD_MATCHROM);

    for (i = 0; i < 8; i++) {
        ow_write_byte(ow_ctrl, rom[i]);
    }
    return;
}
