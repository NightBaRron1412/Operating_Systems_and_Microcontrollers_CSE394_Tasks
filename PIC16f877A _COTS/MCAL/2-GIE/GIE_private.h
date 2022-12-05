/** @file DIO_private.h
 * 
 * @brief A header file including memory addresses for GIE prot and BIT number. 
 *
 * @author Amir Shetaia
 * @version 1.0
 * @date Dec 4, 2022      
 *
 */

#ifndef GIE_PRIVATE_H
#define GIE_PRIVATE_H

/* Defining INTCON REGISTER address and GIE bit*/
#define INTCON *((volatile u8 *)0x00B)
#define GIE 7

#endif /* GIE_PRIVATE_H */

/*** end of file ***/