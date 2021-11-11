################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/USB_VCOM.c \
../source/semihost_hardfault.c \
../source/usb_device_interface_0_cic_vcom.c 

OBJS += \
./source/USB_VCOM.o \
./source/semihost_hardfault.o \
./source/usb_device_interface_0_cic_vcom.o 

C_DEPS += \
./source/USB_VCOM.d \
./source/semihost_hardfault.d \
./source/usb_device_interface_0_cic_vcom.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DUSB_DEVICE_FRO_CAL_LIBRARY_ENABLE=1 -DCPU_LPC55S16JBD100 -DCPU_LPC55S16JBD100_cm33 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\drivers" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\LPC55S16\drivers" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\LPC55S16\mcuxpresso" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\serial_manager" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\uart" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\utilities" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\lists" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\source\lpcip3511" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\include" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\include" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\source" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\osa" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\class\cdc" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\output\source\device\class" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\class" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\output\source\device" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\source\generated" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\phy" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\device" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\CMSIS" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\drivers" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\LPC55S16\drivers" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\serial_manager" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\uart" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\utilities" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\lists" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\source\lpcip3511" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\include" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\include" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\source" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\component\osa" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\class\cdc" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\output\source\device\class" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\source\generated" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\device\class" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\usb\output\source\device" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\device" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\CMSIS" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\board" -I"C:\Users\developer\Documents\MCUXpressoIDE_11.4.0_6224\workspace\USB_VCOM\source" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


