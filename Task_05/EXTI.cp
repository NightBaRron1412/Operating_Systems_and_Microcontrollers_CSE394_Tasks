#line 1 "D:/OS & MC tasks/Task_05/EXTI.c"
#line 1 "d:/os & mc tasks/task_05/../include/std_types.h"
#line 15 "d:/os & mc tasks/task_05/../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/task_05/../include/bit_math.h"
#line 1 "d:/os & mc tasks/task_05/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
#line 15 "d:/os & mc tasks/task_05/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
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
#line 1 "d:/os & mc tasks/task_05/../pic16f877a _cots/mcal/2-gie/gie_interface.h"
#line 15 "d:/os & mc tasks/task_05/../pic16f877a _cots/mcal/2-gie/gie_interface.h"
void GIE_VidEnable();


void GIE_VidDisable();
#line 1 "d:/os & mc tasks/task_05/../pic16f877a _cots/mcal/3-exti/exti_interface.h"
#line 15 "d:/os & mc tasks/task_05/../pic16f877a _cots/mcal/3-exti/exti_interface.h"
void EXTI_VidINTInit(void);


void EXTI_VidINTEnable(void);
void EXTI_VidINTDisable(void);


void EXTI_VidRBIEnable(void);
void EXTI_VidRBIDisable(void);


void EXTI_VidINTSetCallBack(void (*Copy_PVCallBack)(void));
void EXTI_VidRBISetCallBack(void (*Copy_PVCallBack)(void));
#line 7 "D:/OS & MC tasks/Task_05/EXTI.c"
void Blink(void)
{
 u8 i;
 for (i = 0; i < 3; i++)
 {
 DIO_VidSetPortValue(PORT_D, PORT_HIGH);
 delay_ms(250);
 DIO_VidSetPortValue(PORT_D, PORT_LOW);
 delay_ms(250);
 }
}

void main()
{
 DIO_VidSetPinMode(PORT_B, PIN_0, INPUT_PULLUP);
 DIO_VidSetPortMode(PORT_D, PORT_OUTPUT);
 PORTD = 0x00;
 GIE_VidEnable();
 EXTI_VidINTInit();
 EXTI_VidINTEnable();
 EXTI_VidINTSetCallBack(Blink);

 while (1)
 {
 DIO_VidSetPinValue(PORT_D, PIN_6, HIGH);
 delay_ms(250);
 DIO_VidSetPinValue(PORT_D, PIN_6, LOW);
 delay_ms(250);
 DIO_VidSetPinValue(PORT_D, PIN_5, HIGH);
 delay_ms(250);
 DIO_VidSetPinValue(PORT_D, PIN_5, LOW);
 delay_ms(250);
 DIO_VidSetPinValue(PORT_D, PIN_4, HIGH);
 delay_ms(250);
 DIO_VidSetPinValue(PORT_D, PIN_4, LOW);
 delay_ms(250);
 }
}
