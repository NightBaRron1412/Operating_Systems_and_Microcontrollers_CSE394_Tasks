
_main:

;Fata7y_ya_Warda.c,5 :: 		void main()
;Fata7y_ya_Warda.c,8 :: 		DIO_VidSetPortMode(Port_D, Port_OUTPUT);
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPortMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPortMode+0
;Fata7y_ya_Warda.c,9 :: 		DIO_VidSetPortValue(Port_D, Port_LOW);
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;Fata7y_ya_Warda.c,11 :: 		while (1)
L_main0:
;Fata7y_ya_Warda.c,13 :: 		for (i = 0; i < 4; i++)
	CLRF       main_i_L0+0
L_main2:
	MOVLW      4
	SUBWF      main_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;Fata7y_ya_Warda.c,15 :: 		DIO_VidSetPinValue(Port_D, i, HIGH);
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;Fata7y_ya_Warda.c,16 :: 		DIO_VidSetPinValue(Port_D, 7 - i, HIGH);
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVF       main_i_L0+0, 0
	SUBLW      7
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;Fata7y_ya_Warda.c,17 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Fata7y_ya_Warda.c,13 :: 		for (i = 0; i < 4; i++)
	INCF       main_i_L0+0, 1
;Fata7y_ya_Warda.c,18 :: 		}
	GOTO       L_main2
L_main3:
;Fata7y_ya_Warda.c,20 :: 		for (i = 4; i <= 7; i++)
	MOVLW      4
	MOVWF      main_i_L0+0
L_main6:
	MOVF       main_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;Fata7y_ya_Warda.c,22 :: 		DIO_VidSetPinValue(Port_D, i, LOW);
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;Fata7y_ya_Warda.c,23 :: 		DIO_VidSetPinValue(Port_D, 7 - i, LOW);
	MOVLW      4
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Port+0
	MOVF       main_i_L0+0, 0
	SUBLW      7
	MOVWF      FARG_DIO_VidSetPinValue_Copy_u8Pin+0
	CLRF       FARG_DIO_VidSetPinValue_Copy_u8Value+0
	CALL       _DIO_VidSetPinValue+0
;Fata7y_ya_Warda.c,24 :: 		delay_ms(500);
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
;Fata7y_ya_Warda.c,20 :: 		for (i = 4; i <= 7; i++)
	INCF       main_i_L0+0, 1
;Fata7y_ya_Warda.c,25 :: 		}
	GOTO       L_main6
L_main7:
;Fata7y_ya_Warda.c,26 :: 		}
	GOTO       L_main0
;Fata7y_ya_Warda.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
