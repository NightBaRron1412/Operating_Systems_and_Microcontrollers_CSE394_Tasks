
_CLCD_VidSendCommand:

;CLCD_program.c,5 :: 		void CLCD_VidSendCommand(u8 Copy_u8Command) /* Function to send commands to CLCD */
;CLCD_program.c,8 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RS_PIN, LOW);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,11 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RW_PIN, LOW);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,14 :: 		DIO_VidSetPortValue(CLCD_DATA_PORT, Copy_u8Command);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVF       FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;CLCD_program.c,17 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, HIGH);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,20 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidSendCommand0:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidSendCommand0
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidSendCommand0
	NOP
;CLCD_program.c,23 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, LOW);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,24 :: 		}
L_end_CLCD_VidSendCommand:
	RETURN
; end of _CLCD_VidSendCommand

_CLCD_VidSendData:

;CLCD_program.c,26 :: 		void CLCD_VidSendData(u8 Copy_u8Data) /* Function to send data to CLCD */
;CLCD_program.c,29 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RS_PIN, HIGH);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,32 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RW_PIN, LOW);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,35 :: 		DIO_VidSetPortValue(CLCD_DATA_PORT, Copy_u8Data);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVF       FARG_CLCD_VidSendData_Copy_u8Data+0, 0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;CLCD_program.c,38 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, HIGH);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,41 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidSendData1:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidSendData1
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidSendData1
	NOP
;CLCD_program.c,44 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, LOW);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,45 :: 		}
L_end_CLCD_VidSendData:
	RETURN
; end of _CLCD_VidSendData

_CLCD_VidInit:

;CLCD_program.c,47 :: 		void CLCD_VidInit() /* Function to initialize CLCD */
;CLCD_program.c,50 :: 		DIO_VidSetPortMode(CLCD_DATA_PORT, PORT_OUTPUT);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPortMode+0
;CLCD_program.c,53 :: 		DIO_VidSetPinMode(CLCD_CTRL_PORT, PIN_0, OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;CLCD_program.c,54 :: 		DIO_VidSetPinMode(CLCD_CTRL_PORT, PIN_1, OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;CLCD_program.c,55 :: 		DIO_VidSetPinMode(CLCD_CTRL_PORT, PIN_2, OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;CLCD_program.c,58 :: 		delay_ms(40);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_CLCD_VidInit2:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit2
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidInit2
	NOP
	NOP
;CLCD_program.c,61 :: 		CLCD_VidSendCommand(0b00111111);
	MOVLW      63
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,64 :: 		delay_us(49);
	MOVLW      65
	MOVWF      R13+0
L_CLCD_VidInit3:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit3
;CLCD_program.c,67 :: 		CLCD_VidSendCommand(0b00001100);
	MOVLW      12
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,70 :: 		delay_us(49);
	MOVLW      65
	MOVWF      R13+0
L_CLCD_VidInit4:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit4
;CLCD_program.c,73 :: 		CLCD_VidSendCommand(0b00000001);
	MOVLW      1
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,76 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidInit5:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit5
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidInit5
	NOP
;CLCD_program.c,77 :: 		}
L_end_CLCD_VidInit:
	RETURN
; end of _CLCD_VidInit

_CLCD_VidDisplayClear:

;CLCD_program.c,79 :: 		void CLCD_VidDisplayClear() /* Function to clear display */
;CLCD_program.c,81 :: 		CLCD_VidSendCommand(0b00000001);
	MOVLW      1
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,83 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidDisplayClear6:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidDisplayClear6
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidDisplayClear6
	NOP
;CLCD_program.c,84 :: 		}
L_end_CLCD_VidDisplayClear:
	RETURN
; end of _CLCD_VidDisplayClear

_CLCD_VidGotoXY:

;CLCD_program.c,86 :: 		void CLCD_VidGotoXY(u8 Copy_u8XPos, u8 Copy_u8YPos) /* Function to go to certain position on CLCD */
;CLCD_program.c,89 :: 		u8 Local_u8Address = 0;
	CLRF       CLCD_VidGotoXY_Local_u8Address_L0+0
;CLCD_program.c,91 :: 		if (Copy_u8XPos == 0)
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8XPos+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_CLCD_VidGotoXY7
;CLCD_program.c,93 :: 		Local_u8Address = Copy_u8YPos;
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8YPos+0, 0
	MOVWF      CLCD_VidGotoXY_Local_u8Address_L0+0
;CLCD_program.c,94 :: 		}
	GOTO       L_CLCD_VidGotoXY8
L_CLCD_VidGotoXY7:
;CLCD_program.c,96 :: 		else if (Copy_u8XPos == 1)
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8XPos+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_CLCD_VidGotoXY9
;CLCD_program.c,99 :: 		Local_u8Address = 0x40 + Copy_u8YPos;
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8YPos+0, 0
	ADDLW      64
	MOVWF      CLCD_VidGotoXY_Local_u8Address_L0+0
;CLCD_program.c,100 :: 		}
L_CLCD_VidGotoXY9:
L_CLCD_VidGotoXY8:
;CLCD_program.c,104 :: 		CLCD_VidSendCommand(0b010000000 + Local_u8Address);
	MOVF       CLCD_VidGotoXY_Local_u8Address_L0+0, 0
	ADDLW      128
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,105 :: 		}
L_end_CLCD_VidGotoXY:
	RETURN
; end of _CLCD_VidGotoXY

_CLCD_VidCreatSpecialChar:

;CLCD_program.c,107 :: 		void CLCD_VidCreatSpecialChar(u8 *Copy_u8Pattern, u8 Copy_u8PatternNumber) //Function to write special character on CLCD
;CLCD_program.c,110 :: 		u8 Local_u8CGRAMAddress = 0;
;CLCD_program.c,113 :: 		Local_u8CGRAMAddress = Copy_u8PatternNumber * 8;
	MOVF       FARG_CLCD_VidCreatSpecialChar_Copy_u8PatternNumber+0, 0
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	RLF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	BCF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
	RLF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	BCF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
	RLF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	BCF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
;CLCD_program.c,116 :: 		CLCD_VidSendCommand(Local_u8CGRAMAddress + 64);
	MOVLW      64
	ADDWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,119 :: 		for (i = 0; i < 8; i++)
	CLRF       CLCD_VidCreatSpecialChar_i_L0+0
L_CLCD_VidCreatSpecialChar10:
	MOVLW      8
	SUBWF      CLCD_VidCreatSpecialChar_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_CLCD_VidCreatSpecialChar11
;CLCD_program.c,121 :: 		CLCD_VidSendData(Copy_u8Pattern[i]);
	MOVF       CLCD_VidCreatSpecialChar_i_L0+0, 0
	ADDWF      FARG_CLCD_VidCreatSpecialChar_Copy_u8Pattern+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;CLCD_program.c,119 :: 		for (i = 0; i < 8; i++)
	INCF       CLCD_VidCreatSpecialChar_i_L0+0, 1
;CLCD_program.c,122 :: 		}
	GOTO       L_CLCD_VidCreatSpecialChar10
L_CLCD_VidCreatSpecialChar11:
;CLCD_program.c,123 :: 		}
L_end_CLCD_VidCreatSpecialChar:
	RETURN
; end of _CLCD_VidCreatSpecialChar

_CLCD_VidSendString:

;CLCD_program.c,125 :: 		void CLCD_VidSendString(u8 *Copy_u8Str)
;CLCD_program.c,128 :: 		while (*Copy_u8Str != '\0')
L_CLCD_VidSendString13:
	MOVF       FARG_CLCD_VidSendString_Copy_u8Str+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_CLCD_VidSendString14
;CLCD_program.c,130 :: 		CLCD_VidSendData(*Copy_u8Str);
	MOVF       FARG_CLCD_VidSendString_Copy_u8Str+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;CLCD_program.c,131 :: 		Copy_u8Str++;
	INCF       FARG_CLCD_VidSendString_Copy_u8Str+0, 1
;CLCD_program.c,132 :: 		}
	GOTO       L_CLCD_VidSendString13
L_CLCD_VidSendString14:
;CLCD_program.c,133 :: 		}
L_end_CLCD_VidSendString:
	RETURN
; end of _CLCD_VidSendString
