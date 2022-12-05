#line 1 "D:/OS & MC tasks/PIC16f877A _COTS/HAL/3-KPD/KPD_program.c"
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/../../../include/std_types.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/../../../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/../../mcal/1-dio/dio_interface.h"
#line 15 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/../../mcal/1-dio/dio_interface.h"
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
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/kpd_config.h"
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/kpd_interface.h"
#line 14 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/kpd_interface.h"
void KPD_VidInit(void);
u8 KPD_u8GetKey(void);
#line 1 "d:/os & mc tasks/pic16f877a _cots/hal/3-kpd/kpd_private.h"
#line 7 "D:/OS & MC tasks/PIC16f877A _COTS/HAL/3-KPD/KPD_program.c"
void KPD_VidInit(void)
{

 DIO_VidSetPinMode( PORT_B ,  PIN_0 , OUTPUT);
 DIO_VidSetPinMode( PORT_B ,  PIN_1 , OUTPUT);
 DIO_VidSetPinMode( PORT_B ,  PIN_2 , OUTPUT);
 DIO_VidSetPinMode( PORT_B ,  PIN_3 , OUTPUT);


 DIO_VidSetPinMode( PORT_B ,  PIN_4 , INPUT_PULLUP);
 DIO_VidSetPinMode( PORT_B ,  PIN_5 , INPUT_PULLUP);
 DIO_VidSetPinMode( PORT_B ,  PIN_6 , INPUT_PULLUP);
 DIO_VidSetPinMode( PORT_B ,  PIN_7 , INPUT_PULLUP);
}

u8 KPD_u8GetKey(void)
{

 u8 Local_KeyPressed =  ((void *)0) ;
 u8 Local_u8KPDArr[ 4 ][ 4 ] =  { {'1', '2', '3', 'A'}, {'4', '5', '6', 'B'}, {'7', '8', '9', 'C'}, {'*', '0', '#', 'D'} } ;
 u8 Local_u8ColumnIdx = 0;
 u8 Local_u8ROWIdx = 0;
 u8 Local_u8State =  404 ;

 u8 Local_u8ColumnArr[] = { PIN_0 ,  PIN_1 ,  PIN_2 ,  PIN_3 };
 u8 Local_u8RowArr[] = { PIN_4 ,  PIN_5 ,  PIN_6 ,  PIN_7 };

 for (Local_u8ColumnIdx = 0; Local_u8ColumnIdx <  4 ; Local_u8ColumnIdx++)
 {
 DIO_VidSetPinValue( PORT_B , Local_u8ColumnArr[Local_u8ColumnIdx], LOW);

 for (Local_u8ROWIdx = 0; Local_u8ROWIdx <  4 ; Local_u8ROWIdx++)
 {
 DIO_VidGetPinValue( PORT_B , Local_u8RowArr[Local_u8ROWIdx], &Local_u8State);

 if (Local_u8State == LOW)
 {
 Local_KeyPressed = Local_u8KPDArr[Local_u8ROWIdx][Local_u8ColumnIdx];

 while (Local_u8State == LOW)
 {
 DIO_VidGetPinValue( PORT_B , Local_u8RowArr[Local_u8ROWIdx], &Local_u8State);
 }

 DIO_VidSetPinValue( PORT_B , Local_u8ColumnArr[Local_u8ColumnIdx], HIGH);

 return Local_KeyPressed;
 }
 }

 DIO_VidSetPinValue( PORT_B , Local_u8ColumnArr[Local_u8ColumnIdx], HIGH);
 }

 return Local_KeyPressed;
}
