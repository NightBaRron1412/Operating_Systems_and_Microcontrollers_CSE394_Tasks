#line 1 "D:/OS & MC tasks/PIC16f877A _COTS/MCAL/3-EXTI/EXTI_program.c"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/3-exti/../../../include/std_types.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/mcal/3-exti/../../../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/3-exti/../../../include/bit_math.h"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/3-exti/exti_config.h"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/3-exti/exti_private.h"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/3-exti/exti_interface.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/mcal/3-exti/exti_interface.h"
void EXTI_VidINTInit(void);


void EXTI_VidINTEnable(void);
void EXTI_VidINTDisable(void);


void EXTI_VidRBIEnable(void);
void EXTI_VidRBIDisable(void);


void EXTI_VidINTSetCallBack(void (*Copy_PVCallBack)(void));
void EXTI_VidRBISetCallBack(void (*Copy_PVCallBack)(void));
#line 7 "D:/OS & MC tasks/PIC16f877A _COTS/MCAL/3-EXTI/EXTI_program.c"
static void (*PVINTCallBack)(void) =  ((void *)0) ;
static void (*PVRBICallBack)(void) =  ((void *)0) ;


void EXTI_VidINTInit(void)
{




  ( *((volatile u8 *)0x081) ) &= ~(1 << ( 6 )) ;
#line 24 "D:/OS & MC tasks/PIC16f877A _COTS/MCAL/3-EXTI/EXTI_program.c"
}


void EXTI_VidINTEnable(void)
{
  ( *((volatile u8 *)0x00B) ) |= (1 << ( 4 )) ;
}


void EXTI_VidINTDisable(void)
{
  ( *((volatile u8 *)0x00B) ) &= ~(1 << ( 4 )) ;
}


void EXTI_VidRBIEnable(void)
{
  ( *((volatile u8 *)0x00B) ) |= (1 << ( 3 )) ;
}


void EXTI_VidRBIDisable(void)
{
  ( *((volatile u8 *)0x00B) ) &= ~(1 << ( 3 )) ;
}


void EXTI_VidINTSetCallBack(void (*Copy_PVCallBack)(void))
{
 PVINTCallBack = Copy_PVCallBack;
}


void EXTI_VidRBISetCallBack(void (*Copy_PVCallBack)(void))
{
 PVRBICallBack = Copy_PVCallBack;
}

void interrupt (void)
{
 if (( ((( *((volatile u8 *)0x00B) ) >> ( 1 )) & 0x01 )  == 1) && ( ((( *((volatile u8 *)0x00B) ) >> ( 4 )) & 0x01 )  == 1))
 {
 delay_ms(300);
  ( *((volatile u8 *)0x00B) ) &= ~(1 << ( 1 )) ;
 if (PVINTCallBack !=  ((void *)0) )
 {
 PVINTCallBack();
 }
 }

 else if (( ((( *((volatile u8 *)0x00B) ) >> ( 0 )) & 0x01 )  == 1) && ( ((( *((volatile u8 *)0x00B) ) >> ( 3 )) & 0x01 )  == 1))
 {
  ( *((volatile u8 *)0x00B) ) &= ~(1 << ( 0 )) ;
 if (PVRBICallBack !=  ((void *)0) )
 {
 PVRBICallBack();
 }
 }
}
