/** @file DIO_interface.h
 *
 * @brief A header file including functions for DIO controlling.
 *
 * @author Amir Shetaia
 * @version 1.0
 * @date Oct 26, 2022
 *
 */

#ifndef DIO_INTERFACE_H
#define DIO_INTERFACE_H

/* An enum to store pins, ports and states definitions */
typedef enum
{

    OUTPUT,                   /* 0    */
    INPUT,                    /* 1    */
    INPUT_PULLUP,             /* 2    */
    PORT_OUTPUT = 0x00,       /* 0x00 */
    PORT_INPUT = 0xff,        /* 0xff */
    PORT_INPUT_PULLUP = 0xff, /* 0xff */
    LOW = 0,                  /* 0    */
    HIGH,                     /* 1    */
    PORT_LOW = 0x00,          /* 0x00 */
    PORT_HIGH = 0xff,         /* 0xff */
    PORT_A = 0,               /* 0    */
    PORT_B,                   /* 1    */
    PORT_C,                   /* 2    */
    PORT_D,                   /* 3    */
    PORT_E,                   /* 4    */
    PIN_0 = 0,                /* 0    */
    PIN_1,                    /* 1    */
    PIN_2,                    /* 2    */
    PIN_3,                    /* 3    */
    PIN_4,                    /* 4    */
    PIN_5,                    /* 5    */
    PIN_6,                    /* 6    */
    PIN_7                     /* 7    */

} enut_DIO;

/*------------------------------------Pins functions------------------------------------------------*/
void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode);
void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value);
void DIO_VidGetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue);

/*------------------------------------Ports functions------------------------------------------------*/
void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode);
void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value);
void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue);

#endif /* DIO_INTERFACE_H */

/*** end of file ***/