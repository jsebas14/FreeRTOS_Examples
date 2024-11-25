################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.c 

OBJS += \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.o \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.o \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.o 

C_DEPS += \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.d \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.d \
./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c common/ThridParty/SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.c common/ThridParty/SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.c common/ThridParty/SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.c common/ThridParty/SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-ThridParty-2f-SEGGER-2f-SEGGER-2f-Syscalls

clean-common-2f-ThridParty-2f-SEGGER-2f-SEGGER-2f-Syscalls:
	-$(RM) ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.su ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.d ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.o ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_IAR.su ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.d ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.o ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_KEIL.su ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.d ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.o ./common/ThridParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_SES.su

.PHONY: clean-common-2f-ThridParty-2f-SEGGER-2f-SEGGER-2f-Syscalls

