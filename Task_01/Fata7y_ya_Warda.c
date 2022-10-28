#include "../include/Std_Types.h"
#include "../include/Bit_Math.h"
#include "../PIC16f877A _COTS/MCAL/1-DIO/DIO_interface.h"

void main()
{
      u8 i;
      DIO_VidSetPortMode(Port_D, Port_OUTPUT);
      DIO_VidSetPortValue(Port_D, Port_LOW);

      while (1)
      {
            for (i = 0; i < 4; i++)
            {
                  DIO_VidSetPinValue(Port_D, i, HIGH);
                  DIO_VidSetPinValue(Port_D, 7 - i, HIGH);
                  delay_ms(500);
            }

            for (i = 4; i <= 7; i++)
            {
                  DIO_VidSetPinValue(Port_D, i, LOW);
                  DIO_VidSetPinValue(Port_D, 7 - i, LOW);
                  delay_ms(500);
            }
      }
}