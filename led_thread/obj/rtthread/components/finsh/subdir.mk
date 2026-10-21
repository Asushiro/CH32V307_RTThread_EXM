################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtthread/components/finsh/cmd.c \
../rtthread/components/finsh/msh.c \
../rtthread/components/finsh/msh_cmd.c \
../rtthread/components/finsh/msh_file.c \
../rtthread/components/finsh/shell.c \
../rtthread/components/finsh/symbol.c 

C_DEPS += \
./rtthread/components/finsh/cmd.d \
./rtthread/components/finsh/msh.d \
./rtthread/components/finsh/msh_cmd.d \
./rtthread/components/finsh/msh_file.d \
./rtthread/components/finsh/shell.d \
./rtthread/components/finsh/symbol.d 

OBJS += \
./rtthread/components/finsh/cmd.o \
./rtthread/components/finsh/msh.o \
./rtthread/components/finsh/msh_cmd.o \
./rtthread/components/finsh/msh_file.o \
./rtthread/components/finsh/shell.o \
./rtthread/components/finsh/symbol.o 

DIR_OBJS += \
./rtthread/components/finsh/*.o \

DIR_DEPS += \
./rtthread/components/finsh/*.d \

DIR_EXPANDS += \
./rtthread/components/finsh/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
rtthread/components/finsh/%.o: ../rtthread/components/finsh/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/led_thread/threads" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

