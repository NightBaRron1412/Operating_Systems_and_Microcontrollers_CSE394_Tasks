#include "../../../include/Std_Types.h"
#include "../../../include/Bit_Math.h"
#include "EXTI_config.h"
#include "EXTI_private.h"
#include "EXTI_interface.h"

static void (*PVINTCallBack)(void) = NULL;
static void (*PVRBICallBack)(void) = NULL;

/* INT Init */
void EXTI_VidINTInit(void)
{

/*------------------INT Init-----------------------------*/
#if INT_STATES == INT_FALLING_EDGE

    CLR_BIT(OPTION_REG, INTEDG);

#elif INT_STATES == INT_RISING_EDGE

    SET_BIT(OPTION_REG, INTEDG);

#endif
}

/*------------------INT Enable-----------------------------*/
void EXTI_VidINTEnable(void)
{
    SET_BIT(INTCON, INTE);
}

/*------------------INT Disable-----------------------------*/
void EXTI_VidINTDisable(void)
{
    CLR_BIT(INTCON, INTE);
}

/*------------------RBI <Pin 7:4> Enable-----------------------------*/
void EXTI_VidRBIEnable(void)
{
    SET_BIT(INTCON, RBIE);
}

/*------------------RBI <Pin 7:4> Disable-----------------------------*/
void EXTI_VidRBIDisable(void)
{
    CLR_BIT(INTCON, RBIE);
}

/*------------------INT Set Callback function-----------------------------*/
void EXTI_VidINTSetCallBack(void (*Copy_PVCallBack)(void))
{
    PVINTCallBack = Copy_PVCallBack;
}

/*------------------INT Set Callback function-----------------------------*/
void EXTI_VidRBISetCallBack(void (*Copy_PVCallBack)(void))
{
    PVRBICallBack = Copy_PVCallBack;
}

void interrupt (void)
{
    if ((GET_BIT(INTCON, INTF) == 1) && (GET_BIT(INTCON, INTE) == 1))
    {
        delay_ms(300); /* Debounce */
        CLR_BIT(INTCON, INTF);
        if (PVINTCallBack != NULL)
        {
            PVINTCallBack();
        }
    }

    else if ((GET_BIT(INTCON, RBIF) == 1) && (GET_BIT(INTCON, RBIE) == 1))
    {
        CLR_BIT(INTCON, RBIF);
        if (PVRBICallBack != NULL)
        {
            PVRBICallBack();
        }
    }
}