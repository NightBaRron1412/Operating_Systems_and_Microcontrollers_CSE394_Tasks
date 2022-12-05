#include "../include/Std_Types.h"
#include "../include/Bit_Math.h"
#include "../PIC16f877A _COTS/MCAL/1-DIO/DIO_interface.h"
#include "../PIC16f877A _COTS/MCAL/2-GIE/GIE_interface.h"
#include "../PIC16f877A _COTS/MCAL/3-EXTI/EXTI_interface.h"

void Blink(void)
{
    u8 i;
    for (i = 0; i < 3; i++)
    {
        DIO_VidSetPortValue(PORT_D, PORT_HIGH);
        delay_ms(250);
        DIO_VidSetPortValue(PORT_D, PORT_LOW);
        delay_ms(250);
    }
}

void main()
{
    DIO_VidSetPinMode(PORT_B, PIN_0, INPUT_PULLUP);
    DIO_VidSetPortMode(PORT_D, PORT_OUTPUT);
    PORTD = 0x00;
    GIE_VidEnable();
    EXTI_VidINTInit();
    EXTI_VidINTEnable();
    EXTI_VidINTSetCallBack(Blink);

    while (1)
    {
        DIO_VidSetPinValue(PORT_D, PIN_6, HIGH);
        delay_ms(250);
        DIO_VidSetPinValue(PORT_D, PIN_6, LOW);
        delay_ms(250);
        DIO_VidSetPinValue(PORT_D, PIN_5, HIGH);
        delay_ms(250);
        DIO_VidSetPinValue(PORT_D, PIN_5, LOW);
        delay_ms(250);
        DIO_VidSetPinValue(PORT_D, PIN_4, HIGH);
        delay_ms(250);
        DIO_VidSetPinValue(PORT_D, PIN_4, LOW);
        delay_ms(250);
    }
}