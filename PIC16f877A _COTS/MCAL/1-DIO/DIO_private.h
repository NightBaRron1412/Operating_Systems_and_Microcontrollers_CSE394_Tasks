/** @file DIO_private.h
 *
 * @brief A header file including memory addresses for PIC16F876A/877A ports registers.
 *
 * @author Amir Shetaia
 * @version 1.0
 * @date Oct 26, 2022
 *
 */

#ifndef DIO_PRIVATE_H
#define DIO_PRIVATE_H

/* Defining PORTA registers addresses */
#define PORTA *((volatile u8 *)0x005)
#define TRISA *((volatile u8 *)0x085)

/* Defining PORTB registers addresses */
#define PORTB *((volatile u8 *)0x006)
#define TRISB *((volatile u8 *)0x086)

/* Defining PORTC registers addresses */
#define PORTC *((volatile u8 *)0x007)
#define TRISC *((volatile u8 *)0x087)

/* Defining PORTD registers addresses */
#define PORTD *((volatile u8 *)0x008)
#define TRISD *((volatile u8 *)0x088)

/* Defining PORTE registers addresses */
#define PORTE *((volatile u8 *)0x009)
#define TRISE *((volatile u8 *)0x089)

/* Defining Option Register address and PORTB PULLUP control pin*/
#define OPTION_REG *((volatile u8 *)0x081)
#define RBPU 7

#endif /* DIO_PRIVATE_H */

/*** end of file ***/