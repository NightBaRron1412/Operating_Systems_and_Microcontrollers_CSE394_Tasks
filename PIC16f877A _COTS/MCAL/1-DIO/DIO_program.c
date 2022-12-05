/* including the header files */
#include "../../../include/Std_Types.h"
#include "../../../include/Bit_Math.h"
#include "DIO_private.h"
#include "DIO_Config.h"
#include "DIO_interface.h"

/*------------------------------------Pins functions------------------------------------------------*/

/* A function to set the Direction of a pin to either INPUT or OUTPUT */
void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode)
{
    if (Copy_u8Mode == INPUT || Copy_u8Mode == INPUT_PULLUP)
    {
        switch (Copy_u8Port)
        {
        case (PORT_A):
            SET_BIT(TRISA, Copy_u8Pin);
            break;
        case (PORT_B):
            switch (Copy_u8Mode)
            {
            case (INPUT_PULLUP):
                CLR_BIT(OPTION_REG, RBPU);
                SET_BIT(TRISB, Copy_u8Pin);
                break;
            default:
                SET_BIT(OPTION_REG, RBPU);
                SET_BIT(TRISB, Copy_u8Pin);
            }
            break;
        case (PORT_C):
            SET_BIT(TRISC, Copy_u8Pin);
            break;
        case (PORT_D):
            SET_BIT(TRISD, Copy_u8Pin);
            break;
        case (PORT_E):
            SET_BIT(TRISE, Copy_u8Pin);
            break;
        }
    }

    else if (Copy_u8Mode == OUTPUT)
    {
        switch (Copy_u8Port)
        {
        case (PORT_A):
            CLR_BIT(TRISA, Copy_u8Pin);
            break;
        case (PORT_B):
            CLR_BIT(TRISB, Copy_u8Pin);
            break;
        case (PORT_C):
            CLR_BIT(TRISC, Copy_u8Pin);
            break;
        case (PORT_D):
            CLR_BIT(TRISD, Copy_u8Pin);
            break;
        case (PORT_E):
            CLR_BIT(TRISE, Copy_u8Pin);
            break;
        }
    }
}

/* A function to set the Value of a pin to either HIGH or LOW */
void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value)
{

    if (Copy_u8Value == LOW)
    {
        switch (Copy_u8Port)
        {
        case (PORT_A):
            CLR_BIT(PORTA, Copy_u8Pin);
            break;
        case (PORT_B):
            CLR_BIT(PORTB, Copy_u8Pin);
            break;
        case (PORT_C):
            CLR_BIT(PORTC, Copy_u8Pin);
            break;
        case (PORT_D):
            CLR_BIT(PORTD, Copy_u8Pin);

            break;
        case (PORT_E):
            CLR_BIT(PORTE, Copy_u8Pin);
            break;
        }
    }

    else if (Copy_u8Value == HIGH)
    {
        switch (Copy_u8Port)
        {
        case (PORT_A):
            SET_BIT(PORTA, Copy_u8Pin);
            break;
        case (PORT_B):
            SET_BIT(PORTB, Copy_u8Pin);
            break;
        case (PORT_C):
            SET_BIT(PORTC, Copy_u8Pin);
            break;
        case (PORT_D):
            SET_BIT(PORTD, Copy_u8Pin);
            break;
        case (PORT_E):
            SET_BIT(PORTE, Copy_u8Pin);
            break;
        }
    }
}

/* A function to read the current Value of a pin */
void DIO_VidGetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue)
{
    switch (Copy_u8Port)
    {
    case (PORT_A):
        *Copy_Pu8PinValue = GET_BIT(PORTA, Copy_u8Pin);
        break;
    case (PORT_B):
        *Copy_Pu8PinValue = GET_BIT(PORTB, Copy_u8Pin);
        break;
    case (PORT_C):
        *Copy_Pu8PinValue = GET_BIT(PORTC, Copy_u8Pin);
        break;
    case (PORT_D):
        *Copy_Pu8PinValue = GET_BIT(PORTD, Copy_u8Pin);
        break;
    case (PORT_E):
        *Copy_Pu8PinValue = GET_BIT(PORTE, Copy_u8Pin);
        break;
    }
}

/*------------------------------------Ports functions------------------------------------------------*/
void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode)
{
    switch (Copy_u8Port)
    {
    case (PORT_A):
        TRISA = Copy_u8Mode;
        break;
    case (PORT_B):
        switch (Copy_u8Mode)
        {
        case (PORT_INPUT_PULLUP):
            CLR_BIT(OPTION_REG, RBPU);
            TRISB = Copy_u8Mode;
            break;
        default:
            SET_BIT(OPTION_REG, RBPU);
            TRISB = Copy_u8Mode;
            break;
        }
        break;
    case (PORT_C):
        TRISC = Copy_u8Mode;
        break;
    case (PORT_D):
        TRISD = Copy_u8Mode;
        break;
    case (PORT_E):
        TRISE = Copy_u8Mode;
        break;
    }
}

void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value)
{
    switch (Copy_u8Port)
    {
    case (PORT_A):
        PORTA = Copy_u8Value;
        break;
    case (PORT_B):
        PORTB = Copy_u8Value;
        break;
    case (PORT_C):
        PORTC = Copy_u8Value;
        break;
    case (PORT_D):
        PORTD = Copy_u8Value;
        break;
    case (PORT_E):
        PORTE = Copy_u8Value;
        break;
    }
}

void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue)
{
    switch (Copy_u8Port)
    {
    case (PORT_A):
        *Copy_Pu8PortValue = PORTA;
        break;
    case (PORT_B):
        *Copy_Pu8PortValue = PORTB;
        break;
    case (PORT_C):
        *Copy_Pu8PortValue = PORTC;
        break;
    case (PORT_D):
        *Copy_Pu8PortValue = PORTD;
        break;
    case (PORT_E):
        *Copy_Pu8PortValue = PORTE;
        break;
    }
}