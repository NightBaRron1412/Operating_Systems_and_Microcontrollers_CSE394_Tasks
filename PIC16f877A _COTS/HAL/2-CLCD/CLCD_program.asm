
_CLCD_VidSendCommand:

;CLCD_program.c,5 :: 		void CLCD_VidSendCommand(u8 Copy_u8Command) /* Function to send commands to CLCD */
;CLCD_program.c,9 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RS_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,12 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RW_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,15 :: 		DIO_VidSetPortValue(CLCD_DATA_PORT, (Copy_u8Command & 0xF0));
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      240
	ANDWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;CLCD_program.c,18 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,21 :: 		delay_ms(2);
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
;CLCD_program.c,24 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,27 :: 		delay_us(200);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_CLCD_VidSendCommand1:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidSendCommand1
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidSendCommand1
	NOP
;CLCD_program.c,30 :: 		DIO_VidSetPortValue(CLCD_DATA_PORT, ((Copy_u8Command << 4) & 0xF0));
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVF       FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVLW      240
	ANDWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	CALL       _DIO_VidSetPortValue+0
;CLCD_program.c,33 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,36 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidSendCommand2:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidSendCommand2
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidSendCommand2
	NOP
;CLCD_program.c,39 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,62 :: 		}
L_end_CLCD_VidSendCommand:
	RETURN
; end of _CLCD_VidSendCommand

_CLCD_VidSendData:

;CLCD_program.c,64 :: 		void CLCD_VidSendData(u8 Copy_u8Data) /* Function to send data to CLCD */
;CLCD_program.c,68 :: 		DIO_VidSetPortValue(CLCD_DATA_PORT, Copy_u8Data & 0xF0);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      240
	ANDWF      FARG_CLCD_VidSendData_Copy_u8Data+0, 0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;CLCD_program.c,71 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RS_PIN, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,74 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RW_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,77 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,80 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidSendData3:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidSendData3
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidSendData3
	NOP
;CLCD_program.c,83 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,86 :: 		delay_us(200);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_CLCD_VidSendData4:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidSendData4
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidSendData4
	NOP
;CLCD_program.c,89 :: 		DIO_VidSetPortValue(CLCD_DATA_PORT, (Copy_u8Data << 4) & 0xF0);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVF       FARG_CLCD_VidSendData_Copy_u8Data+0, 0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	RLF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	BCF        FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVLW      240
	ANDWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0, 1
	CALL       _DIO_VidSetPortValue+0
;CLCD_program.c,92 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RS_PIN, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,95 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_RW_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,98 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,101 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidSendData5:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidSendData5
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidSendData5
	NOP
;CLCD_program.c,104 :: 		DIO_VidSetPinValue(CLCD_CTRL_PORT, CLCD_EN_PIN, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;CLCD_program.c,126 :: 		}
L_end_CLCD_VidSendData:
	RETURN
; end of _CLCD_VidSendData

_CLCD_VidInit:

;CLCD_program.c,128 :: 		void CLCD_VidInit() /* Function to initialize CLCD */
;CLCD_program.c,131 :: 		DIO_VidSetPortMode(CLCD_DATA_PORT, PORT_OUTPUT);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPortMode+0
;CLCD_program.c,134 :: 		DIO_VidSetPinMode(CLCD_CTRL_PORT, PIN_0, OUTPUT);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;CLCD_program.c,135 :: 		DIO_VidSetPinMode(CLCD_CTRL_PORT, PIN_1, OUTPUT);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;CLCD_program.c,136 :: 		DIO_VidSetPinMode(CLCD_CTRL_PORT, PIN_2, OUTPUT);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;CLCD_program.c,139 :: 		delay_ms(40);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_CLCD_VidInit6:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit6
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidInit6
	NOP
	NOP
;CLCD_program.c,142 :: 		CLCD_VidSendCommand(0b00110011);
	MOVLW      51
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,143 :: 		CLCD_VidSendCommand(0b00110010);
	MOVLW      50
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,144 :: 		CLCD_VidSendCommand(0b00101100);
	MOVLW      44
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,153 :: 		delay_us(49);
	MOVLW      65
	MOVWF      R13+0
L_CLCD_VidInit7:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit7
;CLCD_program.c,156 :: 		CLCD_VidSendCommand(0b00001100);
	MOVLW      12
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,159 :: 		delay_us(49);
	MOVLW      65
	MOVWF      R13+0
L_CLCD_VidInit8:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit8
;CLCD_program.c,162 :: 		CLCD_VidSendCommand(0b00000001);
	MOVLW      1
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,165 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidInit9:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidInit9
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidInit9
	NOP
;CLCD_program.c,166 :: 		}
L_end_CLCD_VidInit:
	RETURN
; end of _CLCD_VidInit

_CLCD_VidDisplayClear:

;CLCD_program.c,168 :: 		void CLCD_VidDisplayClear() /* Function to clear display */
;CLCD_program.c,170 :: 		CLCD_VidSendCommand(0b00000001);
	MOVLW      1
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,172 :: 		delay_ms(2);
	MOVLW      11
	MOVWF      R12+0
	MOVLW      98
	MOVWF      R13+0
L_CLCD_VidDisplayClear10:
	DECFSZ     R13+0, 1
	GOTO       L_CLCD_VidDisplayClear10
	DECFSZ     R12+0, 1
	GOTO       L_CLCD_VidDisplayClear10
	NOP
;CLCD_program.c,173 :: 		}
L_end_CLCD_VidDisplayClear:
	RETURN
; end of _CLCD_VidDisplayClear

_CLCD_VidGotoXY:

;CLCD_program.c,175 :: 		void CLCD_VidGotoXY(u8 Copy_u8XPos, u8 Copy_u8YPos) /* Function to go to certain position on CLCD */
;CLCD_program.c,178 :: 		u8 Local_u8Address = 0;
	CLRF       CLCD_VidGotoXY_Local_u8Address_L0+0
;CLCD_program.c,180 :: 		if (Copy_u8XPos == 0)
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8XPos+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_CLCD_VidGotoXY11
;CLCD_program.c,182 :: 		Local_u8Address = Copy_u8YPos;
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8YPos+0, 0
	MOVWF      CLCD_VidGotoXY_Local_u8Address_L0+0
;CLCD_program.c,183 :: 		}
	GOTO       L_CLCD_VidGotoXY12
L_CLCD_VidGotoXY11:
;CLCD_program.c,185 :: 		else if (Copy_u8XPos == 1)
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8XPos+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_CLCD_VidGotoXY13
;CLCD_program.c,188 :: 		Local_u8Address = 0x40 + Copy_u8YPos;
	MOVF       FARG_CLCD_VidGotoXY_Copy_u8YPos+0, 0
	ADDLW      64
	MOVWF      CLCD_VidGotoXY_Local_u8Address_L0+0
;CLCD_program.c,189 :: 		}
L_CLCD_VidGotoXY13:
L_CLCD_VidGotoXY12:
;CLCD_program.c,193 :: 		CLCD_VidSendCommand(0b010000000 + Local_u8Address);
	MOVF       CLCD_VidGotoXY_Local_u8Address_L0+0, 0
	ADDLW      128
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,194 :: 		}
L_end_CLCD_VidGotoXY:
	RETURN
; end of _CLCD_VidGotoXY

_CLCD_VidCreatSpecialChar:

;CLCD_program.c,196 :: 		void CLCD_VidCreatSpecialChar(u8 *Copy_u8Pattern, u8 Copy_u8PatternNumber) // Function to write special character on CLCD
;CLCD_program.c,199 :: 		u8 Local_u8CGRAMAddress = 0;
;CLCD_program.c,202 :: 		Local_u8CGRAMAddress = Copy_u8PatternNumber * 8;
	MOVF       FARG_CLCD_VidCreatSpecialChar_Copy_u8PatternNumber+0, 0
	MOVWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0
	RLF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	BCF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
	RLF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	BCF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
	RLF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	BCF        FARG_CLCD_VidSendCommand_Copy_u8Command+0, 0
;CLCD_program.c,205 :: 		CLCD_VidSendCommand(Local_u8CGRAMAddress + 64);
	MOVLW      64
	ADDWF      FARG_CLCD_VidSendCommand_Copy_u8Command+0, 1
	CALL       _CLCD_VidSendCommand+0
;CLCD_program.c,208 :: 		for (i = 0; i < 8; i++)
	CLRF       CLCD_VidCreatSpecialChar_i_L0+0
L_CLCD_VidCreatSpecialChar14:
	MOVLW      8
	SUBWF      CLCD_VidCreatSpecialChar_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_CLCD_VidCreatSpecialChar15
;CLCD_program.c,210 :: 		CLCD_VidSendData(Copy_u8Pattern[i]);
	MOVF       CLCD_VidCreatSpecialChar_i_L0+0, 0
	ADDWF      FARG_CLCD_VidCreatSpecialChar_Copy_u8Pattern+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;CLCD_program.c,208 :: 		for (i = 0; i < 8; i++)
	INCF       CLCD_VidCreatSpecialChar_i_L0+0, 1
;CLCD_program.c,211 :: 		}
	GOTO       L_CLCD_VidCreatSpecialChar14
L_CLCD_VidCreatSpecialChar15:
;CLCD_program.c,212 :: 		}
L_end_CLCD_VidCreatSpecialChar:
	RETURN
; end of _CLCD_VidCreatSpecialChar

_CLCD_VidSendString:

;CLCD_program.c,214 :: 		void CLCD_VidSendString(u8 *Copy_u8Str)
;CLCD_program.c,217 :: 		while (*Copy_u8Str != '\0')
L_CLCD_VidSendString17:
	MOVF       FARG_CLCD_VidSendString_Copy_u8Str+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_CLCD_VidSendString18
;CLCD_program.c,219 :: 		CLCD_VidSendData(*Copy_u8Str);
	MOVF       FARG_CLCD_VidSendString_Copy_u8Str+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;CLCD_program.c,220 :: 		Copy_u8Str++;
	INCF       FARG_CLCD_VidSendString_Copy_u8Str+0, 1
;CLCD_program.c,221 :: 		}
	GOTO       L_CLCD_VidSendString17
L_CLCD_VidSendString18:
;CLCD_program.c,222 :: 		}
L_end_CLCD_VidSendString:
	RETURN
; end of _CLCD_VidSendString
