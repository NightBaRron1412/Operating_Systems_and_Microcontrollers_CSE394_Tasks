/** @file EXTI_interface.h
 *
 * @brief A header file including functions to control EXTI pins
 *
 * @author Amir Shetaia
 * @version 1.0
 * @date Dec 4, 2022
 *
 */

#ifndef EXTI_INTERFACE_H
#define EXTI_INTERFACE_H

/* INT Init */
void EXTI_VidINTInit(void);

/* INT En/Dis */
void EXTI_VidINTEnable(void);
void EXTI_VidINTDisable(void);

/* RBI En/Dis */
void EXTI_VidRBIEnable(void);
void EXTI_VidRBIDisable(void);

/* Set Callback function */
void EXTI_VidINTSetCallBack(void (*Copy_PVCallBack)(void));
void EXTI_VidRBISetCallBack(void (*Copy_PVCallBack)(void));

#endif /* EXTI_INTERFACE_H */

/*** end of file ***/