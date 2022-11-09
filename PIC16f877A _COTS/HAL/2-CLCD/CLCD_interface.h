/** @file CLCD_interface.h
 * 
 * @brief A header file including functions for CLCD controlling. 
 *
 * @author Amir Shetaia
 * @version 1.1
 * @date Nov 06, 2022      
 *
 */

#ifndef CLCD_INTERFACE_H
#define CLCD_INTERFACE_H

/*------------------------------Custom characters--------------------------*/

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

/*------------------------------CLCD Funtions--------------------------*/

void CLCD_VidSendCommand(u8 Copy_u8Command);                                /* Function to send commands to CLCD */
void CLCD_VidSendData(u8 Copy_u8Data);                                      /* Function to send data to CLCD */
void CLCD_VidInit();                                                        /* Function to initialize CLCD */
void CLCD_VidGotoXY(u8 Copy_u8XPos, u8 Copy_u8YPos);                        /* Function to go to certain position on CLCD */
void CLCD_VidCreatSpecialChar(u8 *Copy_u8Pattern, u8 Copy_u8PatternNumber); /* Function to write special character on CLCD */
void CLCD_VidDisplayClear();                                                /* Function to clear display */
void CLCD_VidSendString(u8 *Copy_u8Str);                                    /* Function to display string to CLCD */

#endif /* CLCD_INTERFACE_H */

/*** end of file ***/