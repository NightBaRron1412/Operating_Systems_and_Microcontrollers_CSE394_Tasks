#include "../../../include/Std_Types.h"
#include "../../../include/Bit_Math.h"
#include "GIE_interface.h" /* Including header file for GIE Enable/Disable funtions */
#include "GIE_private.h"   /* Including header file including memory addresses for GIE prot and BIT number */

/* GIE enable */
void GIE_VidEnable()
{
    SET_BIT(INTCON, GIE);
}

/* GIE disable */
void GIE_VidDisable()
{
    CLR_BIT(INTCON, GIE);
}
