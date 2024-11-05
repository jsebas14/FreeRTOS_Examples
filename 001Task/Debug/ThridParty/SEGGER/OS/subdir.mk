################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThridParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./ThridParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./ThridParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
ThridParty/SEGGER/OS/%.o ThridParty/SEGGER/OS/%.su: ../ThridParty/SEGGER/OS/%.c ThridParty/SEGGER/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/SEGGER" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThridParty-2f-SEGGER-2f-OS

clean-ThridParty-2f-SEGGER-2f-OS:
	-$(RM) ./ThridParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d ./ThridParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o ./ThridParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.su

.PHONY: clean-ThridParty-2f-SEGGER-2f-OS

