
_main:

;SevenSeg.c,6 :: 		void main()
;SevenSeg.c,8 :: 		u8 i = 0;
	CLRF       main_i_L0+0
;SevenSeg.c,9 :: 		SevenSeg_VidInit(PORT_D);
	MOVLW      3
	MOVWF      FARG_SevenSeg_VidInit_Copy_u8Port+0
	CALL       _SevenSeg_VidInit+0
;SevenSeg.c,11 :: 		while (1)
L_main0:
;SevenSeg.c,13 :: 		for (i = 0; i <= 8; i++)
	CLRF       main_i_L0+0
L_main2:
	MOVF       main_i_L0+0, 0
	SUBLW      8
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;SevenSeg.c,15 :: 		SevenSeg_VidDisplayNumber(PORT_D, i);
	MOVLW      3
	MOVWF      FARG_SevenSeg_VidDisplayNumber_Copy_u8Port+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_SevenSeg_VidDisplayNumber_Copy_u8Number+0
	CALL       _SevenSeg_VidDisplayNumber+0
;SevenSeg.c,16 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;SevenSeg.c,13 :: 		for (i = 0; i <= 8; i++)
	INCF       main_i_L0+0, 1
;SevenSeg.c,17 :: 		}
	GOTO       L_main2
L_main3:
;SevenSeg.c,19 :: 		DIO_VidSetPortValue(PORT_D, 0x40);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      64
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;SevenSeg.c,20 :: 		delay_ms(200);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;SevenSeg.c,21 :: 		DIO_VidSetPortValue(PORT_D, 0x60);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      96
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;SevenSeg.c,22 :: 		delay_ms(200);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;SevenSeg.c,23 :: 		DIO_VidSetPortValue(PORT_D, 0x61);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      97
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;SevenSeg.c,24 :: 		delay_ms(200);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
;SevenSeg.c,25 :: 		DIO_VidSetPortValue(PORT_D, 0x63);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      99
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;SevenSeg.c,26 :: 		delay_ms(200);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;SevenSeg.c,27 :: 		DIO_VidSetPortValue(PORT_D, 0x67);
	MOVLW      3
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVLW      103
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;SevenSeg.c,28 :: 		delay_ms(200);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
;SevenSeg.c,29 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
;SevenSeg.c,30 :: 		}
	GOTO       L_main0
;SevenSeg.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
