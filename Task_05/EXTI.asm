
_Blink:

;EXTI.c,7 :: 		void Blink(void)
;EXTI.c,10 :: 		for (i = 0; i < 3; i++)
	CLRF       Blink_i_L0+0
L_Blink0:
	MOVLW      3
	SUBWF      Blink_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Blink1
;EXTI.c,12 :: 		DIO_VidSetPortValue(PORT_D, PORT_HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      255
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;EXTI.c,13 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_Blink3:
	DECFSZ     R13+0, 1
	GOTO       L_Blink3
	DECFSZ     R12+0, 1
	GOTO       L_Blink3
	DECFSZ     R11+0, 1
	GOTO       L_Blink3
	NOP
	NOP
;EXTI.c,14 :: 		DIO_VidSetPortValue(PORT_D, PORT_LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;EXTI.c,15 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_Blink4:
	DECFSZ     R13+0, 1
	GOTO       L_Blink4
	DECFSZ     R12+0, 1
	GOTO       L_Blink4
	DECFSZ     R11+0, 1
	GOTO       L_Blink4
	NOP
	NOP
;EXTI.c,10 :: 		for (i = 0; i < 3; i++)
	INCF       Blink_i_L0+0, 1
;EXTI.c,16 :: 		}
	GOTO       L_Blink0
L_Blink1:
;EXTI.c,17 :: 		}
L_end_Blink:
	RETURN
; end of _Blink

_main:

;EXTI.c,19 :: 		void main()
;EXTI.c,21 :: 		DIO_VidSetPinMode(PORT_B, PIN_0, INPUT_PULLUP);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0
	MOVLW      2
	MOVWF      FARG_DIO_VidSetPinMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPinMode+0
;EXTI.c,22 :: 		DIO_VidSetPortMode(PORT_D, PORT_OUTPUT);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPortMode+0
;EXTI.c,23 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;EXTI.c,24 :: 		GIE_VidEnable();
	CALL       _GIE_VidEnable+0
;EXTI.c,25 :: 		EXTI_VidINTInit();
	CALL       _EXTI_VidINTInit+0
;EXTI.c,26 :: 		EXTI_VidINTEnable();
	CALL       _EXTI_VidINTEnable+0
;EXTI.c,27 :: 		EXTI_VidINTSetCallBack(Blink);
	MOVLW      _Blink+0
	MOVWF      FARG_EXTI_VidINTSetCallBack_Copy_PVCallBack+0
	MOVLW      hi_addr(_Blink+0)
	MOVWF      FARG_EXTI_VidINTSetCallBack_Copy_PVCallBack+1
	MOVLW      0
	MOVWF      FARG_EXTI_VidINTSetCallBack_Copy_PVCallBack+2
	MOVLW      0
	CALL       _EXTI_VidINTSetCallBack+0
;EXTI.c,29 :: 		while (1)
L_main5:
;EXTI.c,31 :: 		DIO_VidSetPinValue(PORT_D, PIN_6, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      6
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;EXTI.c,32 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;EXTI.c,33 :: 		DIO_VidSetPinValue(PORT_D, PIN_6, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      6
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;EXTI.c,34 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;EXTI.c,35 :: 		DIO_VidSetPinValue(PORT_D, PIN_5, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      5
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;EXTI.c,36 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;EXTI.c,37 :: 		DIO_VidSetPinValue(PORT_D, PIN_5, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      5
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;EXTI.c,38 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;EXTI.c,39 :: 		DIO_VidSetPinValue(PORT_D, PIN_4, HIGH);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;EXTI.c,40 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;EXTI.c,41 :: 		DIO_VidSetPinValue(PORT_D, PIN_4, LOW);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;EXTI.c,42 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;EXTI.c,43 :: 		}
	GOTO       L_main5
;EXTI.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
