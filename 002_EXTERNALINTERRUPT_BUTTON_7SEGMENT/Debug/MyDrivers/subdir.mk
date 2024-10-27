################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/Display_Driver.c 

OBJS += \
./MyDrivers/Display_Driver.o 

C_DEPS += \
./MyDrivers/Display_Driver.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/%.o MyDrivers/%.su MyDrivers/%.cyclo: ../MyDrivers/%.c MyDrivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../MyDrivers -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers

clean-MyDrivers:
	-$(RM) ./MyDrivers/Display_Driver.cyclo ./MyDrivers/Display_Driver.d ./MyDrivers/Display_Driver.o ./MyDrivers/Display_Driver.su

.PHONY: clean-MyDrivers

