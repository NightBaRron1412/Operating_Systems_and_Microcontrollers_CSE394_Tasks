#line 1 "D:/OS & MC tasks/PIC16f877A _COTS/MCAL/2-GIE/GIE_program.c"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/2-gie/../../../include/std_types.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/mcal/2-gie/../../../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/2-gie/../../../include/bit_math.h"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/2-gie/gie_interface.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/mcal/2-gie/gie_interface.h"
void GIE_VidEnable();


void GIE_VidDisable();
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/2-gie/gie_private.h"
#line 7 "D:/OS & MC tasks/PIC16f877A _COTS/MCAL/2-GIE/GIE_program.c"
void GIE_VidEnable()
{
  ( *((volatile u8 *)0x00B) ) |= (1 << ( 7 )) ;
}


void GIE_VidDisable()
{
  ( *((volatile u8 *)0x00B) ) &= ~(1 << ( 7 )) ;
}
