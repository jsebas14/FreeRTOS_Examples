################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThridParty/SEGGER/SEGGER/SEGGER_RTT.c \
../ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.c \
../ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
../ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./ThridParty/SEGGER/SEGGER/SEGGER_RTT.o \
./ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.o \
./ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./ThridParty/SEGGER/SEGGER/SEGGER_RTT.d \
./ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.d \
./ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
ThridParty/SEGGER/SEGGER/%.o ThridParty/SEGGER/SEGGER/%.su: ../ThridParty/SEGGER/SEGGER/%.c ThridParty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/SEGGER" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
ThridParty/SEGGER/SEGGER/%.o: ../ThridParty/SEGGER/SEGGER/%.S ThridParty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/Config" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThridParty-2f-SEGGER-2f-SEGGER

clean-ThridParty-2f-SEGGER-2f-SEGGER:
	-$(RM) ./ThridParty/SEGGER/SEGGER/SEGGER_RTT.d ./ThridParty/SEGGER/SEGGER/SEGGER_RTT.o ./ThridParty/SEGGER/SEGGER/SEGGER_RTT.su ./ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.d ./ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.o ./ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.su ./ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.d ./ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.o ./ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.su

.PHONY: clean-ThridParty-2f-SEGGER-2f-SEGGER

