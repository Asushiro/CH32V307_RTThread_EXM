################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c \
../LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c \
../LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c \
../LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c \
../LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c \
../LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c \
../LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c \
../LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c 

C_DEPS += \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.d \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.d \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d \
./LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d \
./LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d \
./LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d 

OBJS += \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.o \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.o \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o \
./LVGL/GUI/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o \
./LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o \
./LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o \
./LVGL/GUI/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o 

DIR_OBJS += \
./LVGL/GUI/lvgl/demos/benchmark/assets/*.o \

DIR_DEPS += \
./LVGL/GUI/lvgl/demos/benchmark/assets/*.d \

DIR_EXPANDS += \
./LVGL/GUI/lvgl/demos/benchmark/assets/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
LVGL/GUI/lvgl/demos/benchmark/assets/%.o: ../LVGL/GUI/lvgl/demos/benchmark/assets/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/threads" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/examples/porting" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/GT911" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LCD" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI_APP" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LED" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

