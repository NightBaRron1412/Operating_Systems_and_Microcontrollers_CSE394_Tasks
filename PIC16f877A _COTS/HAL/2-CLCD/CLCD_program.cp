#line 1 "D:/OS & MC tasks/PIC16f877A _COTS/HAL/2-CLCD/CLCD_program.c"
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/2-clcd/../../../include/std_types.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/hal/2-clcd/../../../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/2-clcd/../../mcal/1-dio/dio_interface.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/hal/2-clcd/../../mcal/1-dio/dio_interface.h"
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

} enum_DIO;


void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode);
void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value);
void DIO_VidGetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue);


void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode);
void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value);
void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue);
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/2-clcd/clcd_config.h"
#line 5 "D:/OS & MC tasks/PIC16f877A _COTS/HAL/2-CLCD/CLCD_program.c"
void CLCD_VidSendCommand(u8 Copy_u8Command)
{


 DIO_VidSetPinValue( PORT_D ,  PIN_0 , LOW);


 DIO_VidSetPinValue( PORT_D ,  PIN_1 , LOW);


 DIO_VidSetPortValue( PORT_D , (Copy_u8Command & 0xF0));


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , HIGH);


 delay_ms(2);


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , LOW);


 delay_us(200);


 DIO_VidSetPortValue( PORT_D , ((Copy_u8Command << 4) & 0xF0));


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , HIGH);


 delay_ms(2);


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , LOW);
#line 62 "D:/OS & MC tasks/PIC16f877A _COTS/HAL/2-CLCD/CLCD_program.c"
}

void CLCD_VidSendData(u8 Copy_u8Data)
{


 DIO_VidSetPortValue( PORT_D , Copy_u8Data & 0xF0);


 DIO_VidSetPinValue( PORT_D ,  PIN_0 , HIGH);


 DIO_VidSetPinValue( PORT_D ,  PIN_1 , LOW);


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , HIGH);


 delay_ms(2);


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , LOW);


 delay_us(200);


 DIO_VidSetPortValue( PORT_D , (Copy_u8Data << 4) & 0xF0);


 DIO_VidSetPinValue( PORT_D ,  PIN_0 , HIGH);


 DIO_VidSetPinValue( PORT_D ,  PIN_1 , LOW);


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , HIGH);


 delay_ms(2);


 DIO_VidSetPinValue( PORT_D ,  PIN_2 , LOW);
#line 126 "D:/OS & MC tasks/PIC16f877A _COTS/HAL/2-CLCD/CLCD_program.c"
}

void CLCD_VidInit()
{

 DIO_VidSetPortMode( PORT_D , PORT_OUTPUT);


 DIO_VidSetPinMode( PORT_D , PIN_0, OUTPUT);
 DIO_VidSetPinMode( PORT_D , PIN_1, OUTPUT);
 DIO_VidSetPinMode( PORT_D , PIN_2, OUTPUT);


 delay_ms(40);


 CLCD_VidSendCommand(0b00110011);
 CLCD_VidSendCommand(0b00110010);
 CLCD_VidSendCommand(0b00101100);
#line 153 "D:/OS & MC tasks/PIC16f877A _COTS/HAL/2-CLCD/CLCD_program.c"
 delay_us(49);


 CLCD_VidSendCommand(0b00001100);


 delay_us(49);


 CLCD_VidSendCommand(0b00000001);


 delay_ms(2);
}

void CLCD_VidDisplayClear()
{
 CLCD_VidSendCommand(0b00000001);

 delay_ms(2);
}

void CLCD_VidGotoXY(u8 Copy_u8XPos, u8 Copy_u8YPos)
{

 u8 Local_u8Address = 0;

 if (Copy_u8XPos == 0)
 {
 Local_u8Address = Copy_u8YPos;
 }

 else if (Copy_u8XPos == 1)
 {

 Local_u8Address = 0x40 + Copy_u8YPos;
 }



 CLCD_VidSendCommand(0b010000000 + Local_u8Address);
}

void CLCD_VidCreatSpecialChar(u8 *Copy_u8Pattern, u8 Copy_u8PatternNumber)
{
 u8 i;
 u8 Local_u8CGRAMAddress = 0;


 Local_u8CGRAMAddress = Copy_u8PatternNumber * 8;


 CLCD_VidSendCommand(Local_u8CGRAMAddress + 64);


 for (i = 0; i < 8; i++)
 {
 CLCD_VidSendData(Copy_u8Pattern[i]);
 }
}

void CLCD_VidSendString(u8 *Copy_u8Str)
{

 while (*Copy_u8Str != '\0')
 {
 CLCD_VidSendData(*Copy_u8Str);
 Copy_u8Str++;
 }
}
