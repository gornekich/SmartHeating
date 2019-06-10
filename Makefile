#######################################################################
# Makefile for STM32F1 Discovery board projects

OUTPATH = build
PROJECT = $(OUTPATH)/smart_heat
OPENOCD_SCRIPT_DIR ?= /usr/share/openocd/scripts
HEAP_SIZE = 0x400

################
# Sources

SOURCES_S = core/startup_stm32f103xb.s
SOURCES_C = $(wildcard *.c core/*.c plib/*.c lib/*.c)
SOURCES_RTOS = $(wildcard freertos/*.c freertos/portable/GCC/ARM_CM3/*.c)
SOURCES_RTOS += $(wildcard freertos/portable/MemMang/*.c)
SOURCES_C += $(SOURCES_RTOS)
OBJS = $(SOURCES_S:.s=.o) $(SOURCES_C:.c=.o)

# Includes and Defines

INCLUDES_RTOS = -Ifreertos -Ifreertos/include -Ifreertos/portable/GCC/ARM_CM3
INCLUDES += -I core
INCLUDES += -I plib
INCLUDES += -I lib
INCLUDES += $(INCLUDES_RTOS)

DEFINES = -DSTM32 -DSTM32F1 -DSTM32F103xB -DHEAP_SIZE=$(HEAP_SIZE)

# Compiler/Assembler/Linker/etc

PREFIX = arm-none-eabi

CC = $(PREFIX)-gcc
AS = $(PREFIX)-as
AR = $(PREFIX)-ar
LD = $(PREFIX)-gcc
NM = $(PREFIX)-nm
OBJCOPY = $(PREFIX)-objcopy
OBJDUMP = $(PREFIX)-objdump
READELF = $(PREFIX)-readelf
SIZE = $(PREFIX)-size
GDB = $(PREFIX)-gdb
RM = rm -f
OPENOCD=openocd

# Compiler options

MCUFLAGS = -mcpu=cortex-m3 -mlittle-endian -mfloat-abi=soft -mthumb -specs=nano.specs -specs=nosys.specs

DEBUG_OPTIMIZE_FLAGS = -O0 -ggdb

CFLAGS = -Wall -Wextra #--pedantic
CFLAGS_EXTRA = -nostartfiles -nodefaultlibs -nostdlib\
	       -fdata-sections -ffunction-sections

CFLAGS += $(DEFINES) $(MCUFLAGS) $(DEBUG_OPTIMIZE_FLAGS) $(CFLAGS_EXTRA) $(INCLUDES)

LDFLAGS = -static $(MCUFLAGS) -Wl,--start-group -lgcc -lc -lg -Wl,--end-group\
	  -Wl,--gc-sections -T stm32f103c8tx.ld

.PHONY: all clean flash erase examples

all: dirs $(PROJECT).bin $(PROJECT).asm
dirs: ${OUTPATH}

${OUTPATH}:
	mkdir -p ${OUTPATH}

clean:
	$(RM) $(OBJS) $(PROJECT).elf $(PROJECT).bin $(PROJECT).asm \
	$(EXAMPLES:=.bin) $(EXAMPLES:=.elf) ./examples/*.o ./src/*.o

# Hardware specific

flash: $(PROJECT).bin
	st-flash write $(PROJECT).bin 0x08000000

erase:
	st-flash erase

gdb-server-ocd:
	$(OPENOCD) -f $(OPENOCD_SCRIPT_DIR)/interface/stlink-v2.cfg \
		   -f $(OPENOCD_SCRIPT_DIR)/target/stm32f1x.cfg

gdb-server-st:
	st-util

OPENOCD_P=3333
gdb-openocd: $(PROJECT).elf
	$(GDB) --eval-command="target extended-remote localhost:$(OPENOCD_P)"\
	       --eval-command="monitor halt" $(PROJECT).elf

GDB_P=4242
gdb-st-util: $(PROJECT).elf
	$(GDB) --eval-command="target extended-remote localhost:$(GDB_P)"\
	       --eval-command="monitor halt" $(PROJECT).elf

$(PROJECT).elf: $(OBJS)

%.elf:
	$(LD) $(OBJS) $(LDFLAGS) -o $@
	$(SIZE) -A $@

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@

%.asm: %.elf
	$(OBJDUMP) -dwh $< > $@
