#include "../include/Std_Types.h"
#include "../PIC16f877A _COTS/MCAL/1-DIO/DIO_interface.h"
#include "../PIC16f877A _COTS/HAL/2-CLCD/CLCD_interface.h"
#include "../PIC16f877A _COTS/HAL/3-KPD/KPD_interface.h"

#define MAXIMUM_TRIES_NUMBER 3
#define PASSWORD_LENGTH 4
#define INVALID -1
#define VALID 1
#define DEBOUNCE_DELAY 80

void main()
{
    u8 Local_u8Password[] = "1234";
    u8 Local_u8PassArr[PASSWORD_LENGTH + 1];
    u8 Local_u8Result;
    u8 Local_u8Tries = 0;
    u8 Local_u8PassStatus = INVALID;
    u8 i;

    Local_u8PassArr[PASSWORD_LENGTH] = '\0';

    KPD_VidInit();
    CLCD_VidInit();

    CLCD_VidSendString("Enter Password: ");

    do
    {
        for (i = 0; i < PASSWORD_LENGTH; i++)
        {
            u8 Local_u8KPDResult = KPD_u8GetKey();

            if (Local_u8KPDResult != NULL)
            {
                delay_ms(DEBOUNCE_DELAY);
                Local_u8PassArr[i] = Local_u8KPDResult;
                CLCD_VidGotoXY(1, i);
                CLCD_VidSendString("*");
            }
            else
            {
                i--;
            }
        }

        for (i = 0; i < PASSWORD_LENGTH; i++)
        {
            if (Local_u8PassArr[i] != Local_u8Password[i])
            {
                Local_u8PassStatus = INVALID;
                break;
            }
            else
            {
                Local_u8PassStatus = VALID;
            }
        }

        if (Local_u8PassStatus == VALID)
        {
            CLCD_VidDisplayClear();
            CLCD_VidSendString("Welcome Amir");
        }
        else
        {
            Local_u8Tries++;
            CLCD_VidDisplayClear();
            CLCD_VidSendString("Try again: ");
        }
        if (Local_u8Tries >= MAXIMUM_TRIES_NUMBER)
        {
            CLCD_VidDisplayClear();
            CLCD_VidSendString("Too many tries");
            CLCD_VidGotoXY(1, 0);
            CLCD_VidSendString("Try again later");
        }
    } while (Local_u8Tries < MAXIMUM_TRIES_NUMBER);

    while (1)
    {
    }
}