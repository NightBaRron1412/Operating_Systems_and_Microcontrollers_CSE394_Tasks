#line 1 "D:/OS & MC tasks/PIC16f877A _COTS/MCAL/1-DIO/DIO_program.c"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/1-dio/../../../include/std_types.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/mcal/1-dio/../../../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/1-dio/../../../include/bit_math.h"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/1-dio/dio_private.h"
#line 1 "d:/os & mc tasks/pic16f877a _cots/mcal/1-dio/dio_interface.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/mcal/1-dio/dio_interface.h"
typedef enum
{

 OUTPUT,
 INPUT,
 INPUT_PULLUP,
 PORT_OUTPUT = 0x00,
 PORT_INPUT = 0xff,
 PORT_INPUT_PULLUP = 0xff,
 LOW = 0,
 HIGH,
 PORT_LOW = 0x00,
 PORT_HIGH = 0xff,
 PORT_A = 0,
 PORT_B,
 PORT_C,
 PORT_D,
 PORT_E,
 PIN_0 = 0,
 PIN_1,
 PIN_2,
 PIN_3,
 PIN_4,
 PIN_5,
 PIN_6,
 PIN_7

} enut_DIO;


void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode);
void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value);
void DIO_VidGetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue);


void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode);
void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value);
void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue);
#line 10 "D:/OS & MC tasks/PIC16f877A _COTS/MCAL/1-DIO/DIO_program.c"
void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode)
{
 if (Copy_u8Mode == INPUT)
 {
 switch (Copy_u8Port)
 {
 case (PORT_A):
  ( *((volatile u8 *)0x085) ) |= (1 << (Copy_u8Pin)) ;
 break;
 case (PORT_B):
 switch (Copy_u8Mode)
 {
 case (INPUT_PULLUP):
  ( *((volatile u8 *)0x081) ) |= (1 << ( 7 )) ;
 default:
  ( *((volatile u8 *)0x086) ) |= (1 << (Copy_u8Pin)) ;
 break;
 }
 case (PORT_C):
  ( *((volatile u8 *)0x087) ) |= (1 << (Copy_u8Pin)) ;
 break;
 case (PORT_D):
  ( *((volatile u8 *)0x088) ) |= (1 << (Copy_u8Pin)) ;
 break;
 case (PORT_E):
  ( *((volatile u8 *)0x089) ) |= (1 << (Copy_u8Pin)) ;
 break;
 }
 }

 else if (Copy_u8Mode == OUTPUT)
 {
 switch (Copy_u8Port)
 {
 case (PORT_A):
  ( *((volatile u8 *)0x085) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 case (PORT_B):
  ( *((volatile u8 *)0x086) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 case (PORT_C):
  ( *((volatile u8 *)0x087) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 case (PORT_D):
  ( *((volatile u8 *)0x088) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 case (PORT_E):
  ( *((volatile u8 *)0x089) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 }
 }
}


void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value)
{

 if (Copy_u8Value == LOW)
 {
 switch (Copy_u8Port)
 {
 case (PORT_A):
  ( *((volatile u8 *)0x005) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 case (PORT_B):
  ( *((volatile u8 *)0x006) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 case (PORT_C):
  ( *((volatile u8 *)0x007) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 case (PORT_D):
  ( *((volatile u8 *)0x008) ) &= ~(1 << (Copy_u8Pin)) ;

 break;
 case (PORT_E):
  ( *((volatile u8 *)0x009) ) &= ~(1 << (Copy_u8Pin)) ;
 break;
 }
 }

 else if (Copy_u8Value == HIGH)
 {
 switch (Copy_u8Port)
 {
 case (PORT_A):
  ( *((volatile u8 *)0x005) ) |= (1 << (Copy_u8Pin)) ;
 break;
 case (PORT_B):
  ( *((volatile u8 *)0x006) ) |= (1 << (Copy_u8Pin)) ;
 break;
 case (PORT_C):
  ( *((volatile u8 *)0x007) ) |= (1 << (Copy_u8Pin)) ;
 break;
 case (PORT_D):
  ( *((volatile u8 *)0x008) ) |= (1 << (Copy_u8Pin)) ;
 break;
 case (PORT_E):
  ( *((volatile u8 *)0x009) ) |= (1 << (Copy_u8Pin)) ;
 break;
 }
 }
}


u8 DIO_u8GetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue)
{
 switch (Copy_u8Port)
 {
 case (PORT_A):
 *Copy_Pu8PinValue =  ((( *((volatile u8 *)0x005) ) >> (Copy_u8Pin)) & 0x01 ) ;
 break;
 case (PORT_B):
 *Copy_Pu8PinValue =  ((( *((volatile u8 *)0x006) ) >> (Copy_u8Pin)) & 0x01 ) ;
 break;
 case (PORT_C):
 *Copy_Pu8PinValue =  ((( *((volatile u8 *)0x007) ) >> (Copy_u8Pin)) & 0x01 ) ;
 break;
 case (PORT_D):
 *Copy_Pu8PinValue =  ((( *((volatile u8 *)0x008) ) >> (Copy_u8Pin)) & 0x01 ) ;
 break;
 case (PORT_E):
 *Copy_Pu8PinValue =  ((( *((volatile u8 *)0x009) ) >> (Copy_u8Pin)) & 0x01 ) ;
 break;
 }
}


void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode)
{
 switch (Copy_u8Port)
 {
 case (PORT_A):
  *((volatile u8 *)0x085)  = Copy_u8Mode;
 break;
 case (PORT_B):
 switch (Copy_u8Mode)
 {
 case (PORT_INPUT_PULLUP):
  ( *((volatile u8 *)0x081) ) |= (1 << ( 7 )) ;
 default:
  *((volatile u8 *)0x086)  = Copy_u8Mode;
 break;
 }
 case (PORT_C):
  *((volatile u8 *)0x087)  = Copy_u8Mode;
 break;
 case (PORT_D):
  *((volatile u8 *)0x088)  = Copy_u8Mode;
 break;
 case (PORT_E):
  *((volatile u8 *)0x089)  = Copy_u8Mode;
 break;
 }
}

void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value)
{
 switch (Copy_u8Port)
 {
 case (PORT_A):
  *((volatile u8 *)0x005)  = Copy_u8Value;
 break;
 case (PORT_B):
  *((volatile u8 *)0x006)  = Copy_u8Value;
 break;
 case (PORT_C):
  *((volatile u8 *)0x007)  = Copy_u8Value;
 break;
 case (PORT_D):
  *((volatile u8 *)0x008)  = Copy_u8Value;
 break;
 case (PORT_E):
  *((volatile u8 *)0x009)  = Copy_u8Value;
 break;
 }
}

void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue)
{
 switch (Copy_u8Port)
 {
 case (PORT_A):
 *Copy_Pu8PortValue =  *((volatile u8 *)0x005) ;
 break;
 case (PORT_B):
 *Copy_Pu8PortValue =  *((volatile u8 *)0x006) ;
 break;
 case (PORT_C):
 *Copy_Pu8PortValue =  *((volatile u8 *)0x007) ;
 break;
 case (PORT_D):
 *Copy_Pu8PortValue =  *((volatile u8 *)0x008) ;
 break;
 case (PORT_E):
 *Copy_Pu8PortValue =  *((volatile u8 *)0x009) ;
 break;
 }
}
