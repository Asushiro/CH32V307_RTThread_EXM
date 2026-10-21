################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################
-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include rtthread/src/subdir.mk
-include rtthread/libcpu/risc-v/common/subdir.mk
-include rtthread/components/finsh/subdir.mk
-include rtthread/components/drivers/serial/subdir.mk
-include rtthread/components/drivers/misc/subdir.mk
-include rtthread/subdir.mk
-include drivers/subdir.mk
-include User/subdir.mk
-include SRC/Startup/subdir.mk
-include SRC/Peripheral/src/subdir.mk
-include SRC/Debug/subdir.mk
-include SRC/Core/subdir.mk
-include LVGL/GUI_APP/subdir.mk
-include LVGL/GUI/lvgl/src/widgets/subdir.mk
-include LVGL/GUI/lvgl/src/misc/subdir.mk
-include LVGL/GUI/lvgl/src/hal/subdir.mk
-include LVGL/GUI/lvgl/src/font/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/win/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/tileview/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/tabview/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/spinner/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/spinbox/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/span/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/msgbox/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/meter/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/menu/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/list/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/led/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/keyboard/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/imgbtn/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/colorwheel/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/chart/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/calendar/subdir.mk
-include LVGL/GUI/lvgl/src/extra/widgets/animimg/subdir.mk
-include LVGL/GUI/lvgl/src/extra/themes/mono/subdir.mk
-include LVGL/GUI/lvgl/src/extra/themes/default/subdir.mk
-include LVGL/GUI/lvgl/src/extra/themes/basic/subdir.mk
-include LVGL/GUI/lvgl/src/extra/others/snapshot/subdir.mk
-include LVGL/GUI/lvgl/src/extra/others/monkey/subdir.mk
-include LVGL/GUI/lvgl/src/extra/others/gridnav/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/sjpg/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/rlottie/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/qrcode/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/png/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/gif/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/fsdrv/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/freetype/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/ffmpeg/subdir.mk
-include LVGL/GUI/lvgl/src/extra/libs/bmp/subdir.mk
-include LVGL/GUI/lvgl/src/extra/layouts/grid/subdir.mk
-include LVGL/GUI/lvgl/src/extra/layouts/flex/subdir.mk
-include LVGL/GUI/lvgl/src/extra/subdir.mk
-include LVGL/GUI/lvgl/src/draw/sw/subdir.mk
-include LVGL/GUI/lvgl/src/draw/stm32_dma2d/subdir.mk
-include LVGL/GUI/lvgl/src/draw/sdl/subdir.mk
-include LVGL/GUI/lvgl/src/draw/nxp_vglite/subdir.mk
-include LVGL/GUI/lvgl/src/draw/nxp_pxp/subdir.mk
-include LVGL/GUI/lvgl/src/draw/subdir.mk
-include LVGL/GUI/lvgl/src/core/subdir.mk
-include LVGL/GUI/lvgl/examples/porting/subdir.mk
-include LVGL/GUI/lvgl/demos/widgets/assets/subdir.mk
-include LVGL/GUI/lvgl/demos/widgets/subdir.mk
-include LVGL/GUI/lvgl/demos/stress/assets/subdir.mk
-include LVGL/GUI/lvgl/demos/stress/subdir.mk
-include LVGL/GUI/lvgl/demos/music/assets/subdir.mk
-include LVGL/GUI/lvgl/demos/music/subdir.mk
-include LVGL/GUI/lvgl/demos/keypad_encoder/subdir.mk
-include LVGL/GUI/lvgl/demos/benchmark/assets/subdir.mk
-include LVGL/GUI/lvgl/demos/benchmark/subdir.mk
-include HAL/LED/subdir.mk
-include HAL/LCD/subdir.mk
-include HAL/GT911/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
lcd_dis.hex \

SECONDARY_LIST += \
lcd_dis.lst \

SECONDARY_SIZE += \
lcd_dis.siz \


# All Target
all: 
	$(MAKE) --no-print-directory main-build 

main-build: lcd_dis.elf secondary-outputs

# Tool invocations
lcd_dis.elf: $(OBJS) $(USER_OBJS_ESCAPE)
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -T "d:\嵌入式系统开发竞赛相关文档\ch32v307\任务练习\rt_thread_exm\lcd_led_switch_task_resolve\lcd_led_switch_task\SRC\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"lcd_dis.map" --specs=nano.specs --specs=nosys.specs -o "lcd_dis.elf" $(OBJS) $(LIBS) -lshlib
lcd_dis.hex: lcd_dis.elf
	@	riscv-none-embed-objcopy -O ihex "lcd_dis.elf" "lcd_dis.hex"
lcd_dis.lst: lcd_dis.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "lcd_dis.elf" > "lcd_dis.lst"
lcd_dis.siz: lcd_dis.elf
	riscv-none-embed-size --format=berkeley "lcd_dis.elf"

# Other Targets
clean:
	-$(RM) $(DIR_OBJS) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE) lcd_dis.elf
	-$(RM) $(DIR_EXPANDS) $(CALLGRAPH_DOT)
	-$(RM) $(DIR_DEPS)
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets