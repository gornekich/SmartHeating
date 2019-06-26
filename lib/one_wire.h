#ifndef _ONEWIRE_H_
#define _ONEWIRE_H_

#include "one_wire_hw.h"

/*
 * OneWire commands
 */
#define OW_CMD_RSCRATCHPAD         0xBE
#define OW_CMD_WSCRATCHPAD         0x4E
#define OW_CMD_CPYSCRATCHPAD       0x48
#define OW_CMD_RECEEPROM           0xB8
#define OW_CMD_RPWRSUPPLY          0xB4
#define OW_CMD_SEARCHROM           0xF0
#define OW_CMD_READROM             0x33
#define OW_CMD_MATCHROM            0x55
#define OW_CMD_SKIPROM             0xCC

/*
 * Typedef for OneWire peripheral control
 */
typedef struct {
    ow_gpio_t ow_gpio;
    uint8_t last_discr;
    uint8_t last_fam_discr;
    uint8_t last_dev_flag;
    uint8_t rom[8];
} ow_ctrl_t;

/*
 * Public functions
 */

/*
 * Init OneWire line
 */
void ow_init(ow_ctrl_t *ow_ctrl);

/*
 * Reset OneWire line
 */
uint32_t ow_reset(ow_ctrl_t *ow_ctrl);

/*
 * Write bit on OneWire line
 */
void ow_write_bit(ow_ctrl_t *ow_ctrl, uint8_t bit);

/*
 * Read bit on OneWire line
 */
uint8_t ow_read_bit(ow_ctrl_t *ow_ctrl);

/*
 * Write byte on OneWire line
 */
void ow_write_byte(ow_ctrl_t *ow_ctrl, uint8_t byte);

/*
 * Read byte on OneWire line
 */
uint8_t ow_read_byte(ow_ctrl_t *ow_ctrl);

/*
 * Reset search parameters on OneWire line
 */
void ow_reset_search(ow_ctrl_t *ow_ctrl);

/*
 * Starts search device on OneWire line
 */
uint8_t ow_start_search(ow_ctrl_t *ow_ctrl);

/*
 * Search next devince on OneWire line
 */
uint8_t ow_search_next(ow_ctrl_t *ow_ctrl);

/*
 * Get ROM devince on OneWire line
 */
void ow_get_full_rom(ow_ctrl_t *ow_ctrl, uint8_t *rom);

/*
 * Select specific device on OneWire line
 */
void ow_select(ow_ctrl_t *ow_ctrl, uint8_t *rom);

/*
 * OneWire CRC calculation function
 */
uint8_t ow_crc8(uint8_t *src, uint8_t len);

#endif //_ONEWIRE_H_
