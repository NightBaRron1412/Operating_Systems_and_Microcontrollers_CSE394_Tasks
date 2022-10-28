#line 1 "D:/OS for MCs tasks/Task_01/Fata7y_ya_Warda.c"
#line 1 "d:/os for mcs tasks/task_01/../include/std_types.h"
#line 15 "d:/os for mcs tasks/task_01/../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os for mcs tasks/task_01/../include/bit_math.h"
#line 1 "d:/os for mcs tasks/task_01/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
#line 14 "d:/os for mcs tasks/task_01/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
typedef enum
{

 OUTPUT,
 INPUT,
 Port_INPUT = 0xff,
 Port_OUTPUT = 0x00,
 Port_A,
 Port_B,
 Port_C,
 Port_D,
 Port_E,
 LOW = 0,
 HIGH,
 Port_HIGH = 0xff,
 Port_LOW = 0x00,
 Pin_0 = 0,
 Pin_1,
 Pin_2,
 Pin_3,
 Pin_4,
 Pin_5,
 Pin_6,
 Pin_7

} enut_DIO;


void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode);
void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value);
void DIO_VidGetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue);


void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode);
void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value);
void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue);
#line 5 "D:/OS for MCs tasks/Task_01/Fata7y_ya_Warda.c"
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
