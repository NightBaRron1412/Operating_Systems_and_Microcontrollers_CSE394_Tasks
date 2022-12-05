#line 1 "D:/OS & MC tasks/Task_04/KPD.c"
#line 1 "d:/os & mc tasks/task_04/../include/std_types.h"
#line 15 "d:/os & mc tasks/task_04/../include/std_types.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef float f32;
typedef double f64;
#line 1 "d:/os & mc tasks/task_04/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
#line 15 "d:/os & mc tasks/task_04/../pic16f877a _cots/mcal/1-dio/dio_interface.h"
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
#line 1 "d:/os & mc tasks/task_04/../pic16f877a _cots/hal/2-clcd/clcd_interface.h"
#line 16 "d:/os & mc tasks/task_04/../pic16f877a _cots/hal/2-clcd/clcd_interface.h"
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
#line 1 "d:/os & mc tasks/task_04/../pic16f877a _cots/hal/3-kpd/kpd_interface.h"
#line 14 "d:/os & mc tasks/task_04/../pic16f877a _cots/hal/3-kpd/kpd_interface.h"
void KPD_VidInit(void);
u8 KPD_u8GetKey(void);
#line 12 "D:/OS & MC tasks/Task_04/KPD.c"
void main()
{
 u8 Local_u8Password[] = "1234";
 u8 Local_u8PassArr[ 4  + 1];
 u8 Local_u8Result;
 u8 Local_u8Tries = 0;
 u8 Local_u8PassStatus =  -1 ;
 u8 i;

 Local_u8PassArr[ 4 ] = '\0';

 KPD_VidInit();
 CLCD_VidInit();

 CLCD_VidSendString("Enter Password: ");

 do
 {
 for (i = 0; i <  4 ; i++)
 {
 u8 Local_u8KPDResult = KPD_u8GetKey();

 if (Local_u8KPDResult !=  ((void *)0) )
 {
 delay_ms( 80 );
 Local_u8PassArr[i] = Local_u8KPDResult;
 CLCD_VidGotoXY(1, i);
 CLCD_VidSendString("*");
 }
 else
 {
 i--;
 }
 }

 for (i = 0; i <  4 ; i++)
 {
 if (Local_u8PassArr[i] != Local_u8Password[i])
 {
 Local_u8PassStatus =  -1 ;
 break;
 }
 else
 {
 Local_u8PassStatus =  1 ;
 }
 }

 if (Local_u8PassStatus ==  1 )
 {
 CLCD_VidDisplayClear();
 CLCD_VidSendString("Welcome Amir");
 }
 else
 {
 Local_u8Tries++;
 CLCD_VidDisplayClear();
 CLCD_VidSendString("Try again: ");
 }
 if (Local_u8Tries >=  3 )
 {
 CLCD_VidDisplayClear();
 CLCD_VidSendString("Too many tries");
 CLCD_VidGotoXY(1, 0);
 CLCD_VidSendString("Try again later");
 }
 } while (Local_u8Tries <  3 );

 while (1)
 {
 }
}
