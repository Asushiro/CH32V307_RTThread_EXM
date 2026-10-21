################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_arc.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_bg.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_composite.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_img.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_label.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_line.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_mask.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_rect.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_utils.c 

C_DEPS += \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_arc.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_bg.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_composite.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_img.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_label.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_line.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_mask.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_polygon.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_rect.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_utils.d 

OBJS += \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_arc.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_bg.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_composite.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_img.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_label.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_line.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_mask.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_polygon.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_rect.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./LVGL/GUI/lvgl/src/draw/sdl/lv_draw_sdl_utils.o 

DIR_OBJS += \
./LVGL/GUI/lvgl/src/draw/sdl/*.o \

DIR_DEPS += \
./LVGL/GUI/lvgl/src/draw/sdl/*.d \

DIR_EXPANDS += \
./LVGL/GUI/lvgl/src/draw/sdl/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
LVGL/GUI/lvgl/src/draw/sdl/%.o: ../LVGL/GUI/lvgl/src/draw/sdl/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/threads" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/examples/porting" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/GT911" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LCD" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI_APP" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LED" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

