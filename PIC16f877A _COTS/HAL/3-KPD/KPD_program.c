#include "../../../include/Std_Types.h"     /* Includes standard types header */
#include "../../MCAL/1-DIO/DIO_interface.h" /* Including DIO functions to control ports and pins */
#include "KPD_config.h"                     /* Including config header */
#include "KPD_interface.h"                  /* Including KPD functions */
#include "KPD_private.h"

void KPD_VidInit(void)
{
    /* Setting Column pins to output */
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN0_PIN, OUTPUT);
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN1_PIN, OUTPUT);
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN2_PIN, OUTPUT);
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN3_PIN, OUTPUT);

    /* Setting Rows pins to input with internal pull-up enabled */
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW0_PIN, INPUT_PULLUP);
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW1_PIN, INPUT_PULLUP);
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW2_PIN, INPUT_PULLUP);
    DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW3_PIN, INPUT_PULLUP);
}

u8 KPD_u8GetKey(void)
{

    u8 Local_KeyPressed = NULL;
    u8 Local_u8KPDArr[ROWS_NUMBER][COLUMNS_NUMBER] = KPD_U8ARR; /* Keypad array *Can bve customized with config.h file */
    u8 Local_u8ColumnIdx = 0;                                   /* Column index */
    u8 Local_u8ROWIdx = 0;                                      /* Row index */
    u8 Local_u8State = NOT_PRESSED;                             /* Is Key pressed? */

    u8 Local_u8ColumnArr[] = {KPD_u8COLUMN0_PIN, KPD_u8COLUMN1_PIN, KPD_u8COLUMN2_PIN, KPD_u8COLUMN3_PIN};
    u8 Local_u8RowArr[] = {KPD_u8ROW0_PIN, KPD_u8ROW1_PIN, KPD_u8ROW2_PIN, KPD_u8ROW3_PIN};

    for (Local_u8ColumnIdx = 0; Local_u8ColumnIdx < COLUMNS_NUMBER; Local_u8ColumnIdx++) /* Loop through the columns */
    {
        DIO_VidSetPinValue(KPD_u8PORT, Local_u8ColumnArr[Local_u8ColumnIdx], LOW);

        for (Local_u8ROWIdx = 0; Local_u8ROWIdx < ROWS_NUMBER; Local_u8ROWIdx++) /* Check each row status */
        {
            DIO_VidGetPinValue(KPD_u8PORT, Local_u8RowArr[Local_u8ROWIdx], &Local_u8State); /* Getting the state of row pin */

            if (Local_u8State == LOW) /* If row is low then button is pressed */
            {
                Local_KeyPressed = Local_u8KPDArr[Local_u8ROWIdx][Local_u8ColumnIdx]; /* Storing the pressed key at column & row index */

                while (Local_u8State == LOW) /* Waiting for key to be released */
                {
                    DIO_VidGetPinValue(KPD_u8PORT, Local_u8RowArr[Local_u8ROWIdx], &Local_u8State); /* Checking row/key status */
                }

                DIO_VidSetPinValue(KPD_u8PORT, Local_u8ColumnArr[Local_u8ColumnIdx], HIGH); /* Setting column to high after key is released */

                return Local_KeyPressed; /* Returning the pressed key */
            }
        }

        DIO_VidSetPinValue(KPD_u8PORT, Local_u8ColumnArr[Local_u8ColumnIdx], HIGH); /* Setting column to high again if no key is pressed */
    }

    return Local_KeyPressed; /* Returning the pressed key */
}