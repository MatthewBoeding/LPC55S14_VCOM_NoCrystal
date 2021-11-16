/*
 * Copyright 2016-2021 NXP
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of NXP Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file    USB_VCOM.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "usb_device_interface_0_cic_vcom.h"
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "LPC55S16.h"
#include "fsl_debug_console.h"
#include "usb_device_lpcip3511.h"
#include "fsl_fro_calib.h"
/* TODO: insert other include files here. */

/* TODO: insert other definitions and declarations here. */
#define USB_LPC3511IP_MAX_PHY_ENDPOINT_MASK (0xFFFFu)
#define USB_LPC3511IP_INTSTAT_DEV_INT_MASK   USBHSD_INTSTAT_DEV_INT_MASK
#define USB_DEVICE_SOF_EVENT_ENABLE  1U
#define USB_CDC_VCOM_DIC_BULK_IN_ENDPOINT (3)
#define USB_CDC_VCOM_DIC_BULK_OUT_ENDPOINT (3)
usb_device_control_type_t type;

extern uint8_t cmdReady;

static usb_device_composite_struct_t g_UsbDeviceComposite;

void USB_CrystalLessInit(void)
{
    unsigned int test = fro_calib_Get_Lib_Ver();
    Chip_TIMER_Instance_Freq(CTIMER0, 96000);
    /* enable interrupts */
    USB0->INTEN = USB_LPC3511IP_INTSTAT_DEV_INT_MASK | USB_LPC3511IP_MAX_PHY_ENDPOINT_MASK | USB_INTSTAT_FRAME_INT_MASK;

}
int main(void) {
    /* Init board hardware. */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();
    USB_CrystalLessInit();

#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif
    GPIO_PortInit(GPIO, 1U);
    GPIO_PortToggle(GPIO, 1, 1u << 6);
    /* Force the counter to be placed into memory. */
    volatile static int i = 0 ;
    usb_status_t status;
    /* Enter an infinite loop, just incrementing a counter. */
    while(1) {
    	i++ ;
        /* 'Dummy' NOP to allow source level single stepping of
            tight while() loop */
        __asm volatile ("nop");
        USB_DeviceInterface0CicVcomTask();
    }
    return 0 ;
}
