################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Startup/startup_ch32v30x_D8C.S 

S_UPPER_DEPS += \
./Startup/startup_ch32v30x_D8C.d 

OBJS += \
./Startup/startup_ch32v30x_D8C.o 

DIR_OBJS += \
./Startup/*.o \

DIR_DEPS += \
./Startup/*.d \

DIR_EXPANDS += \
./Startup/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.S
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -x assembler-with-cpp -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/Startup" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/drivers" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/libcpu" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

