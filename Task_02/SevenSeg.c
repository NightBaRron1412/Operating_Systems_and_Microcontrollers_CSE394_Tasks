#include "../include/Std_Types.h"
#include "../include/Bit_Math.h"
#include "../PIC16f877A _COTS/MCAL/1-DIO/DIO_interface.h"
#include "../PIC16f877A _COTS/HAL/1-SevenSeg/SevenSeg_interface.h"

void main()
{
    u8 i = 0;
    SevenSeg_VidInit(PORT_D);

    while (1)
    {
        for (i = 0; i <= 8; i++)
        {
            SevenSeg_VidDisplayNumber(PORT_D, i);
            delay_ms(1000);
        }

        DIO_VidSetPortValue(PORT_D, 0x40);
        delay_ms(200);
        DIO_VidSetPortValue(PORT_D, 0x60);
        delay_ms(200);
        DIO_VidSetPortValue(PORT_D, 0x61);
        delay_ms(200);
        DIO_VidSetPortValue(PORT_D, 0x63);
        delay_ms(200);
        DIO_VidSetPortValue(PORT_D, 0x67);
        delay_ms(200);
        delay_ms(1000);
    }
}