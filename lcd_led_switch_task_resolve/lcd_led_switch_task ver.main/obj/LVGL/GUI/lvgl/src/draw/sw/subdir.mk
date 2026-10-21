################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_blend.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_dither.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_gradient.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_img.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_line.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_polygon.c \
../LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_rect.c 

C_DEPS += \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_blend.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_dither.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_gradient.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_img.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_line.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_polygon.d \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_rect.d 

OBJS += \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_blend.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_dither.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_gradient.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_img.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_line.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_polygon.o \
./LVGL/GUI/lvgl/src/draw/sw/lv_draw_sw_rect.o 

DIR_OBJS += \
./LVGL/GUI/lvgl/src/draw/sw/*.o \

DIR_DEPS += \
./LVGL/GUI/lvgl/src/draw/sw/*.d \

DIR_EXPANDS += \
./LVGL/GUI/lvgl/src/draw/sw/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
LVGL/GUI/lvgl/src/draw/sw/%.o: ../LVGL/GUI/lvgl/src/draw/sw/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/threads" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/examples/porting" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/GT911" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LCD" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI_APP" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LED" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

