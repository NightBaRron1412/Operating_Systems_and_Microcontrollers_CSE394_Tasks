#include "../../../include/Std_Types.h"
#include "../../MCAL/1-DIO/DIO_interface.h"
#include "SevenSeg_interface.h"
#include "SevenSeg_private.h"

void SevenSeg_VidInit(u8 Copy_u8Port)
{
    /* Initialize one 7-Segment of 8 LEDs on specific port */
    DIO_VidSetPortMode(Copy_u8Port, PORT_OUTPUT);
}

void SevenSeg_VidDisplayNumber(u8 Copy_u8Port, u8 Copy_u8Number)
{
    /* Display Number check condition */
    if ((Copy_u8Number >= 0) || (Copy_u8Number < 10))
    {
        /*Display number from seven segment array*/
        DIO_VidSetPortValue(Copy_u8Port, SevenSeg_u87SegArray[Copy_u8Number]);
    }
}