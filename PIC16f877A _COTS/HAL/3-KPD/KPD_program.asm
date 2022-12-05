
_KPD_VidInit:

;KPD_program.c,7 :: 		void KPD_VidInit(void)
;KPD_program.c,10 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN0_PIN, OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,11 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN1_PIN, OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,12 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN2_PIN, OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,13 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8COLUMN3_PIN, OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,16 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW0_PIN, INPUT_PULLUP);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,17 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW1_PIN, INPUT_PULLUP);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      5
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,18 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW2_PIN, INPUT_PULLUP);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      6
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,19 :: 		DIO_VidSetPinMode(KPD_u8PORT, KPD_u8ROW3_PIN, INPUT_PULLUP);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      7
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;KPD_program.c,20 :: 		}
L_end_KPD_VidInit:
	RETURN
; end of _KPD_VidInit

_KPD_u8GetKey:

;KPD_program.c,22 :: 		u8 KPD_u8GetKey(void)
;KPD_program.c,25 :: 		u8 Local_KeyPressed = NULL;
	CLRF       KPD_u8GetKey_Local_KeyPressed_L0+0
	MOVLW      49
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+0
	MOVLW      50
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+1
	MOVLW      51
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+2
	MOVLW      65
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+3
	MOVLW      52
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+4
	MOVLW      53
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+5
	MOVLW      54
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+6
	MOVLW      66
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+7
	MOVLW      55
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+8
	MOVLW      56
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+9
	MOVLW      57
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+10
	MOVLW      67
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+11
	MOVLW      42
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+12
	MOVLW      48
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+13
	MOVLW      35
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+14
	MOVLW      68
	MOVWF      KPD_u8GetKey_Local_u8KPDArr_L0+15
	CLRF       KPD_u8GetKey_Local_u8ColumnIdx_L0+0
	CLRF       KPD_u8GetKey_Local_u8ROWIdx_L0+0
	MOVLW      148
	MOVWF      KPD_u8GetKey_Local_u8State_L0+0
	CLRF       KPD_u8GetKey_Local_u8ColumnArr_L0+0
	MOVLW      1
	MOVWF      KPD_u8GetKey_Local_u8ColumnArr_L0+1
	MOVLW      2
	MOVWF      KPD_u8GetKey_Local_u8ColumnArr_L0+2
	MOVLW      3
	MOVWF      KPD_u8GetKey_Local_u8ColumnArr_L0+3
	MOVLW      4
	MOVWF      KPD_u8GetKey_Local_u8RowArr_L0+0
	MOVLW      5
	MOVWF      KPD_u8GetKey_Local_u8RowArr_L0+1
	MOVLW      6
	MOVWF      KPD_u8GetKey_Local_u8RowArr_L0+2
	MOVLW      7
	MOVWF      KPD_u8GetKey_Local_u8RowArr_L0+3
;KPD_program.c,34 :: 		for (Local_u8ColumnIdx = 0; Local_u8ColumnIdx < COLUMNS_NUMBER; Local_u8ColumnIdx++) /* Loop through the columns */
	CLRF       KPD_u8GetKey_Local_u8ColumnIdx_L0+0
L_KPD_u8GetKey0:
	MOVLW      4
	SUBWF      KPD_u8GetKey_Local_u8ColumnIdx_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_KPD_u8GetKey1
;KPD_program.c,36 :: 		DIO_VidSetPinValue(KPD_u8PORT, Local_u8ColumnArr[Local_u8ColumnIdx], LOW);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVF       KPD_u8GetKey_Local_u8ColumnIdx_L0+0, 0
	ADDLW      KPD_u8GetKey_Local_u8ColumnArr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;KPD_program.c,38 :: 		for (Local_u8ROWIdx = 0; Local_u8ROWIdx < ROWS_NUMBER; Local_u8ROWIdx++) /* Check each row status */
	CLRF       KPD_u8GetKey_Local_u8ROWIdx_L0+0
L_KPD_u8GetKey3:
	MOVLW      4
	SUBWF      KPD_u8GetKey_Local_u8ROWIdx_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_KPD_u8GetKey4
;KPD_program.c,40 :: 		DIO_VidGetPinValue(KPD_u8PORT, Local_u8RowArr[Local_u8ROWIdx], &Local_u8State); /* Getting the state of row pin */
	MOVLW      1
	MOVWF      FARG_DIO_VidGetPinValue_Copy_u8Port+0
	MOVF       KPD_u8GetKey_Local_u8ROWIdx_L0+0, 0
	ADDLW      KPD_u8GetKey_Local_u8RowArr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_DIO_VidGetPinValue_Copy_u8Pin+0
	MOVLW      KPD_u8GetKey_Local_u8State_L0+0
	MOVWF      FARG_DIO_VidGetPinValue_Copy_Pu8PinValue+0
	CALL       _DIO_VidGetPinValue+0
;KPD_program.c,42 :: 		if (Local_u8State == LOW) /* If row is low then button is pressed */
	MOVF       KPD_u8GetKey_Local_u8State_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_KPD_u8GetKey6
;KPD_program.c,44 :: 		Local_KeyPressed = Local_u8KPDArr[Local_u8ROWIdx][Local_u8ColumnIdx]; /* Storing the pressed key at column & row index */
	MOVF       KPD_u8GetKey_Local_u8ROWIdx_L0+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVLW      KPD_u8GetKey_Local_u8KPDArr_L0+0
	ADDWF      R0+0, 1
	MOVF       KPD_u8GetKey_Local_u8ColumnIdx_L0+0, 0
	ADDWF      R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      KPD_u8GetKey_Local_KeyPressed_L0+0
;KPD_program.c,46 :: 		while (Local_u8State == LOW) /* Waiting for key to be released */
L_KPD_u8GetKey7:
	MOVF       KPD_u8GetKey_Local_u8State_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_KPD_u8GetKey8
;KPD_program.c,48 :: 		DIO_VidGetPinValue(KPD_u8PORT, Local_u8RowArr[Local_u8ROWIdx], &Local_u8State); /* Checking row/key status */
	MOVLW      1
	MOVWF      FARG_DIO_VidGetPinValue_Copy_u8Port+0
	MOVF       KPD_u8GetKey_Local_u8ROWIdx_L0+0, 0
	ADDLW      KPD_u8GetKey_Local_u8RowArr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_DIO_VidGetPinValue_Copy_u8Pin+0
	MOVLW      KPD_u8GetKey_Local_u8State_L0+0
	MOVWF      FARG_DIO_VidGetPinValue_Copy_Pu8PinValue+0
	CALL       _DIO_VidGetPinValue+0
;KPD_program.c,49 :: 		}
	GOTO       L_KPD_u8GetKey7
L_KPD_u8GetKey8:
;KPD_program.c,51 :: 		DIO_VidSetPinValue(KPD_u8PORT, Local_u8ColumnArr[Local_u8ColumnIdx], HIGH); /* Setting column to high after key is released */
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVF       KPD_u8GetKey_Local_u8ColumnIdx_L0+0, 0
	ADDLW      KPD_u8GetKey_Local_u8ColumnArr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;KPD_program.c,53 :: 		return Local_KeyPressed; /* Returning the pressed key */
	MOVF       KPD_u8GetKey_Local_KeyPressed_L0+0, 0
	MOVWF      R0+0
	GOTO       L_end_KPD_u8GetKey
;KPD_program.c,54 :: 		}
L_KPD_u8GetKey6:
;KPD_program.c,38 :: 		for (Local_u8ROWIdx = 0; Local_u8ROWIdx < ROWS_NUMBER; Local_u8ROWIdx++) /* Check each row status */
	INCF       KPD_u8GetKey_Local_u8ROWIdx_L0+0, 1
;KPD_program.c,55 :: 		}
	GOTO       L_KPD_u8GetKey3
L_KPD_u8GetKey4:
;KPD_program.c,57 :: 		DIO_VidSetPinValue(KPD_u8PORT, Local_u8ColumnArr[Local_u8ColumnIdx], HIGH); /* Setting column to high again if no key is pressed */
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVF       KPD_u8GetKey_Local_u8ColumnIdx_L0+0, 0
	ADDLW      KPD_u8GetKey_Local_u8ColumnArr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;KPD_program.c,34 :: 		for (Local_u8ColumnIdx = 0; Local_u8ColumnIdx < COLUMNS_NUMBER; Local_u8ColumnIdx++) /* Loop through the columns */
	INCF       KPD_u8GetKey_Local_u8ColumnIdx_L0+0, 1
;KPD_program.c,58 :: 		}
	GOTO       L_KPD_u8GetKey0
L_KPD_u8GetKey1:
;KPD_program.c,60 :: 		return Local_KeyPressed; /* Returning the pressed key */
	MOVF       KPD_u8GetKey_Local_KeyPressed_L0+0, 0
	MOVWF      R0+0
;KPD_program.c,61 :: 		}
L_end_KPD_u8GetKey:
	RETURN
; end of _KPD_u8GetKey
