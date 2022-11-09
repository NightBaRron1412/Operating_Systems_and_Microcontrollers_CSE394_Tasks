#line 1 "D:/OS & MC tasks/Task_03/LCD.c"
#line 1 "d:/os & mc tasks/task_03/../include/std_types.h"
#line 15 "d:/os & mc tasks/task_03/../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/task_03/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
#line 15 "d:/os & mc tasks/task_03/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
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
#line 1 "d:/os & mc tasks/task_03/../pic16f877a _cots/hal/2-clcd/clcd_interface.h"
#line 16 "d:/os & mc tasks/task_03/../pic16f877a _cots/hal/2-clcd/clcd_interface.h"
u8 stickyMan[] = {
 0x0E,
 0x0A,
 0x0E,
 0x05,
 0x0E,
 0x14,
 0x04,
 0x0A};

u8 stickyMan_handsInverted[] = {
 0x0E,
 0x0A,
 0x0E,
 0x14,
 0x0E,
 0x05,
 0x04,
 0x0A};



void CLCD_VidSendCommand(u8 Copy_u8Command);
void CLCD_VidSendData(u8 Copy_u8Data);
void CLCD_VidInit();
void CLCD_VidGotoXY(u8 Copy_u8XPos, u8 Copy_u8YPos);
void CLCD_VidCreatSpecialChar(u8 *Copy_u8Pattern, u8 Copy_u8PatternNumber);
void CLCD_VidDisplayClear();
void CLCD_VidSendString(u8 *Copy_u8Str);
#line 1 "d:/os & mc tasks/task_03/../pic16f877a _cots/hal/2-clcd/clcd_config.h"
#line 7 "D:/OS & MC tasks/Task_03/LCD.c"
void main()
{

 CLCD_VidCreatSpecialChar(stickyMan, 1);
 CLCD_VidCreatSpecialChar(stickyMan_handsInverted, 2);

 CLCD_VidInit();
 while (1)
 {
 u8 i = 0;
 s8 j = 12;
 for (i = 0; i < 12; i += 2)
 {
 CLCD_VidDisplayClear();
 CLCD_VidGotoXY(0, i);
 CLCD_VidSendData(1);
 delay_ms(200);
 CLCD_VidDisplayClear();
 CLCD_VidGotoXY(0, i + 1);
 CLCD_VidSendData(2);
 delay_ms(200);
 }
 for (j = 12; j > 0; j -= 2)
 {
 CLCD_VidDisplayClear();
 CLCD_VidGotoXY(1, j);
 CLCD_VidSendData(1);
 delay_ms(200);
 CLCD_VidDisplayClear();
 CLCD_VidGotoXY(1, j - 1);
 CLCD_VidSendData(2);
 delay_ms(200);
 }
 }
}
