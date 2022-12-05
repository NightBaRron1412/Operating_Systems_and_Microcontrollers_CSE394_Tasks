/** @file EXTI_private.h
 * 
 * @brief A header file including Ports and Bits numbers for EXTI
 *
 * @author Amir Shetaia
 * @version 1.0
 * @date Dec 4, 2022       
 *
 */

#ifndef EXTI_PRIVATE_H
#define EXTI_PRIVATE_H

/* External interrupts options  */
#define EXTI_DISABLE 0
#define INT_FALLING_EDGE 1
#define INT_RISING_EDGE 2
#define PORTB_INTCON_ONCHANGE 3

/* Defining Option Register address and INTEDG bit*/
#define OPTION_REG *((volatile u8 *)0x081)
#define INTEDG 6

/* Defining INTCON REGISTER address and EXTI related bits*/
#define INTCON *((volatile u8 *)0x00B)
#define INTE 4
#define RBIE 3
#define INTF 1
#define RBIF 0


#endif /* EXTI_PRIVATE_H */

/*** end of file ***/