################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.o \
./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.o \
./common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.d \
./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.d \
./common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.c common/ThridParty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S common/ThridParty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.c common/ThridParty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.c common/ThridParty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-ThridParty-2f-SEGGER-2f-SEGGER

clean-common-2f-ThridParty-2f-SEGGER-2f-SEGGER:
	-$(RM) ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.d ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.o ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT.su ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.d ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.o ./common/ThridParty/SEGGER/SEGGER/SEGGER_RTT_printf.su ./common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.d ./common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.o ./common/ThridParty/SEGGER/SEGGER/SEGGER_SYSVIEW.su

.PHONY: clean-common-2f-ThridParty-2f-SEGGER-2f-SEGGER

