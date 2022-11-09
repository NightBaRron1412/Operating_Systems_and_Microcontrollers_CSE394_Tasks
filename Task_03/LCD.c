#include "../include/Std_Types.h"
#include "../PIC16f877A _COTS/MCAL/1-DIO/DIO_interface.h"
#include "../PIC16f877A _COTS/HAL/2-CLCD/CLCD_interface.h"
#include "../PIC16f877A _COTS/HAL/2-CLCD/CLCD_config.h"


void main()
{

    CLCD_VidCreatSpecialChar(stickyMan, 1);
    CLCD_VidCreatSpecialChar(stickyMan_handsInverted, 2);

    CLCD_VidInit();
    while (1)
    {
    u8 i = 0;
    s8 j = 12;
        for (i = 0; i < 12; i += 2)
        {
            CLCD_VidDisplayClear();
            CLCD_VidGotoXY(0, i);
            CLCD_VidSendData(1);
            delay_ms(200);
            CLCD_VidDisplayClear();
            CLCD_VidGotoXY(0, i + 1);
            CLCD_VidSendData(2);
            delay_ms(200);
        }
        for (j = 12; j > 0; j -= 2)
        {
            CLCD_VidDisplayClear();
            CLCD_VidGotoXY(1, j);
            CLCD_VidSendData(1);
            delay_ms(200);
            CLCD_VidDisplayClear();
            CLCD_VidGotoXY(1, j - 1);
            CLCD_VidSendData(2);
            delay_ms(200);
        }
    }
}