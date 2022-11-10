/** @file CLCD_confing.h
 *
 * @brief A header file including functions for CLCD controlling.
 *
 * @author Amir Shetaia
 * @version 1.1
 * @date Nov 06, 2022
 *
 */

#ifndef CLCD_CONFIG_H
#define CLCD_CONFIG_H

/* Mode */
#define CLCD_u8_4BIT 0
#define CLCD_u8_8BIT 1

#define CLCD_u8_MODE CLCD_u8_4BIT

/* Control Port */
#define CLCD_CTRL_PORT PORT_B
#define CLCD_RS_PIN PIN_0
#define CLCD_RW_PIN PIN_1
#define CLCD_EN_PIN PIN_2

/* Data Port */
#define CLCD_DATA_PORT PORT_B

#endif /* CLCD_CONFIG_H */

/*** end of file ***/
