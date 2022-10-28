#line 1 "D:/OS for MCs tasks/PIC16f877A _COTS/HAL/1-SevenSeg/SevenSeg_program.c"
#line 1 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/../../../include/std_types.h"
#line 15 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/../../../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/../../mcal/1-dio/dio_interface.h"
#line 15 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/../../mcal/1-dio/dio_interface.h"
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
#line 1 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/sevenseg_interface.h"
#line 14 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/sevenseg_interface.h"
void SevenSeg_VidInit(u8 Copy_u8Port);
void SevenSeg_VidDisplayNumber(u8 Copy_u8Port, u8 Copy_u8Number);
#line 1 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/sevenseg_private.h"
#line 9 "d:/os for mcs tasks/pic16f877a _cots/hal/1-sevenseg/sevenseg_private.h"
const u8 SevenSeg_u87SegArray[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
#line 6 "D:/OS for MCs tasks/PIC16f877A _COTS/HAL/1-SevenSeg/SevenSeg_program.c"
void SevenSeg_VidInit(u8 Copy_u8Port)
{

 DIO_VidSetPortMode(Copy_u8Port, Port_OUTPUT);
}

void SevenSeg_VidDisplayNumber(u8 Copy_u8Port, u8 Copy_u8Number)
{

 if ((Copy_u8Number >= 0) || (Copy_u8Number < 10))
 {

 DIO_VidSetPortValue(Copy_u8Port, SevenSeg_u87SegArray[Copy_u8Number]);
 }
}
