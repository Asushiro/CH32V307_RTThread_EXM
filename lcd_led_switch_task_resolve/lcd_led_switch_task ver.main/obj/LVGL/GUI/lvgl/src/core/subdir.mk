################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/GUI/lvgl/src/core/lv_disp.c \
../LVGL/GUI/lvgl/src/core/lv_event.c \
../LVGL/GUI/lvgl/src/core/lv_group.c \
../LVGL/GUI/lvgl/src/core/lv_indev.c \
../LVGL/GUI/lvgl/src/core/lv_indev_scroll.c \
../LVGL/GUI/lvgl/src/core/lv_obj.c \
../LVGL/GUI/lvgl/src/core/lv_obj_class.c \
../LVGL/GUI/lvgl/src/core/lv_obj_draw.c \
../LVGL/GUI/lvgl/src/core/lv_obj_pos.c \
../LVGL/GUI/lvgl/src/core/lv_obj_scroll.c \
../LVGL/GUI/lvgl/src/core/lv_obj_style.c \
../LVGL/GUI/lvgl/src/core/lv_obj_style_gen.c \
../LVGL/GUI/lvgl/src/core/lv_obj_tree.c \
../LVGL/GUI/lvgl/src/core/lv_refr.c \
../LVGL/GUI/lvgl/src/core/lv_theme.c 

C_DEPS += \
./LVGL/GUI/lvgl/src/core/lv_disp.d \
./LVGL/GUI/lvgl/src/core/lv_event.d \
./LVGL/GUI/lvgl/src/core/lv_group.d \
./LVGL/GUI/lvgl/src/core/lv_indev.d \
./LVGL/GUI/lvgl/src/core/lv_indev_scroll.d \
./LVGL/GUI/lvgl/src/core/lv_obj.d \
./LVGL/GUI/lvgl/src/core/lv_obj_class.d \
./LVGL/GUI/lvgl/src/core/lv_obj_draw.d \
./LVGL/GUI/lvgl/src/core/lv_obj_pos.d \
./LVGL/GUI/lvgl/src/core/lv_obj_scroll.d \
./LVGL/GUI/lvgl/src/core/lv_obj_style.d \
./LVGL/GUI/lvgl/src/core/lv_obj_style_gen.d \
./LVGL/GUI/lvgl/src/core/lv_obj_tree.d \
./LVGL/GUI/lvgl/src/core/lv_refr.d \
./LVGL/GUI/lvgl/src/core/lv_theme.d 

OBJS += \
./LVGL/GUI/lvgl/src/core/lv_disp.o \
./LVGL/GUI/lvgl/src/core/lv_event.o \
./LVGL/GUI/lvgl/src/core/lv_group.o \
./LVGL/GUI/lvgl/src/core/lv_indev.o \
./LVGL/GUI/lvgl/src/core/lv_indev_scroll.o \
./LVGL/GUI/lvgl/src/core/lv_obj.o \
./LVGL/GUI/lvgl/src/core/lv_obj_class.o \
./LVGL/GUI/lvgl/src/core/lv_obj_draw.o \
./LVGL/GUI/lvgl/src/core/lv_obj_pos.o \
./LVGL/GUI/lvgl/src/core/lv_obj_scroll.o \
./LVGL/GUI/lvgl/src/core/lv_obj_style.o \
./LVGL/GUI/lvgl/src/core/lv_obj_style_gen.o \
./LVGL/GUI/lvgl/src/core/lv_obj_tree.o \
./LVGL/GUI/lvgl/src/core/lv_refr.o \
./LVGL/GUI/lvgl/src/core/lv_theme.o 

DIR_OBJS += \
./LVGL/GUI/lvgl/src/core/*.o \

DIR_DEPS += \
./LVGL/GUI/lvgl/src/core/*.d \

DIR_EXPANDS += \
./LVGL/GUI/lvgl/src/core/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
LVGL/GUI/lvgl/src/core/%.o: ../LVGL/GUI/lvgl/src/core/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/threads" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/examples/porting" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/GT911" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LCD" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI_APP" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LED" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

