################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/GUI/lvgl/src/widgets/lv_arc.c \
../LVGL/GUI/lvgl/src/widgets/lv_bar.c \
../LVGL/GUI/lvgl/src/widgets/lv_btn.c \
../LVGL/GUI/lvgl/src/widgets/lv_btnmatrix.c \
../LVGL/GUI/lvgl/src/widgets/lv_canvas.c \
../LVGL/GUI/lvgl/src/widgets/lv_checkbox.c \
../LVGL/GUI/lvgl/src/widgets/lv_dropdown.c \
../LVGL/GUI/lvgl/src/widgets/lv_img.c \
../LVGL/GUI/lvgl/src/widgets/lv_label.c \
../LVGL/GUI/lvgl/src/widgets/lv_line.c \
../LVGL/GUI/lvgl/src/widgets/lv_objx_templ.c \
../LVGL/GUI/lvgl/src/widgets/lv_roller.c \
../LVGL/GUI/lvgl/src/widgets/lv_slider.c \
../LVGL/GUI/lvgl/src/widgets/lv_switch.c \
../LVGL/GUI/lvgl/src/widgets/lv_table.c \
../LVGL/GUI/lvgl/src/widgets/lv_textarea.c 

C_DEPS += \
./LVGL/GUI/lvgl/src/widgets/lv_arc.d \
./LVGL/GUI/lvgl/src/widgets/lv_bar.d \
./LVGL/GUI/lvgl/src/widgets/lv_btn.d \
./LVGL/GUI/lvgl/src/widgets/lv_btnmatrix.d \
./LVGL/GUI/lvgl/src/widgets/lv_canvas.d \
./LVGL/GUI/lvgl/src/widgets/lv_checkbox.d \
./LVGL/GUI/lvgl/src/widgets/lv_dropdown.d \
./LVGL/GUI/lvgl/src/widgets/lv_img.d \
./LVGL/GUI/lvgl/src/widgets/lv_label.d \
./LVGL/GUI/lvgl/src/widgets/lv_line.d \
./LVGL/GUI/lvgl/src/widgets/lv_objx_templ.d \
./LVGL/GUI/lvgl/src/widgets/lv_roller.d \
./LVGL/GUI/lvgl/src/widgets/lv_slider.d \
./LVGL/GUI/lvgl/src/widgets/lv_switch.d \
./LVGL/GUI/lvgl/src/widgets/lv_table.d \
./LVGL/GUI/lvgl/src/widgets/lv_textarea.d 

OBJS += \
./LVGL/GUI/lvgl/src/widgets/lv_arc.o \
./LVGL/GUI/lvgl/src/widgets/lv_bar.o \
./LVGL/GUI/lvgl/src/widgets/lv_btn.o \
./LVGL/GUI/lvgl/src/widgets/lv_btnmatrix.o \
./LVGL/GUI/lvgl/src/widgets/lv_canvas.o \
./LVGL/GUI/lvgl/src/widgets/lv_checkbox.o \
./LVGL/GUI/lvgl/src/widgets/lv_dropdown.o \
./LVGL/GUI/lvgl/src/widgets/lv_img.o \
./LVGL/GUI/lvgl/src/widgets/lv_label.o \
./LVGL/GUI/lvgl/src/widgets/lv_line.o \
./LVGL/GUI/lvgl/src/widgets/lv_objx_templ.o \
./LVGL/GUI/lvgl/src/widgets/lv_roller.o \
./LVGL/GUI/lvgl/src/widgets/lv_slider.o \
./LVGL/GUI/lvgl/src/widgets/lv_switch.o \
./LVGL/GUI/lvgl/src/widgets/lv_table.o \
./LVGL/GUI/lvgl/src/widgets/lv_textarea.o 

DIR_OBJS += \
./LVGL/GUI/lvgl/src/widgets/*.o \

DIR_DEPS += \
./LVGL/GUI/lvgl/src/widgets/*.d \

DIR_EXPANDS += \
./LVGL/GUI/lvgl/src/widgets/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
LVGL/GUI/lvgl/src/widgets/%.o: ../LVGL/GUI/lvgl/src/widgets/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/threads" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/examples/porting" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/GT911" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LCD" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI_APP" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LED" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

