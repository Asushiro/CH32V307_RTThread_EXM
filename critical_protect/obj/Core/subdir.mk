################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/core_riscv.c 

C_DEPS += \
./Core/core_riscv.d 

OBJS += \
./Core/core_riscv.o 

DIR_OBJS += \
./Core/*.o \

DIR_DEPS += \
./Core/*.d \

DIR_EXPANDS += \
./Core/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
Core/%.o: ../Core/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/critical_protect/threads" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

