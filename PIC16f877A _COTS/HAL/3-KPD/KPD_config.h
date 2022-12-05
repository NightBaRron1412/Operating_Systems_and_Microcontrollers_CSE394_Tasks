/** @file KPD_config.h
 * 
 * @brief A header file including configurations for KPD controlling. 
 *
 * @author Amir Shetaia
 * @version 1.0
 * @date Dec 4, 2022      
 *
 */

#ifndef KPD_CONFIG_H_
#define KPD_CONFIG_H_

#define ROWS_NUMBER 4
#define COLUMNS_NUMBER 4

#define KPD_U8ARR           \
{                           \
    {'1', '2', '3', 'A'},   \
    {'4', '5', '6', 'B'},   \
    {'7', '8', '9', 'C'},   \
    {'*', '0', '#', 'D'}    \
                            \
}

/* Port MUST contain internal Pull-up resistors */
#define KPD_u8PORT PORT_B

/* The the COLUMN pins  -Output- */
#define KPD_u8COLUMN0_PIN PIN_0
#define KPD_u8COLUMN1_PIN PIN_1
#define KPD_u8COLUMN2_PIN PIN_2
#define KPD_u8COLUMN3_PIN PIN_3

/* The the ROW pins -Input- */

#define KPD_u8ROW0_PIN PIN_4
#define KPD_u8ROW1_PIN PIN_5
#define KPD_u8ROW2_PIN PIN_6
#define KPD_u8ROW3_PIN PIN_7

#endif /* KPD_CONFIG_H */

/*** end of file ***/
