################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usb/phy/usb_phy.c 

OBJS += \
./usb/phy/usb_phy.o 

C_DEPS += \
./usb/phy/usb_phy.d 


# Each subdirectory must supply rules for building sources it contributes
usb/phy/%.o: ../usb/phy/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DUSB_DEVICE_FRO_CAL_LIBRARY_ENABLE=1 -DCPU_LPC55S16JBD100 -DCPU_LPC55S16JBD100_cm33 -DSDK_OS_BAREMETAL -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\drivers" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\LPC55S16\drivers" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\LPC55S16\mcuxpresso" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\serial_manager" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\uart" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\utilities" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\lists" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\source\lpcip3511" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\include" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\include" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\source" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\osa" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\class\cdc" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\class" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\source\generated" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\phy" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\device" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\CMSIS" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\drivers" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\LPC55S16\drivers" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\serial_manager" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\uart" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\utilities" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\lists" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\source\lpcip3511" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\include" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\include" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\source" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\component\osa" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\class\cdc" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\source\generated" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\usb\device\class" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\device" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\CMSIS" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\board" -I"C:\Users\mlboe\Documents\GitHub\LPC55S14_VCOM_NoCrystal\source" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


