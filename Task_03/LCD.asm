
_main:

;LCD.c,6 :: 		void main()
;LCD.c,9 :: 		CLCD_VidInit();
	CALL       _CLCD_VidInit+0
;LCD.c,11 :: 		CLCD_VidCreatSpecialChar(stickyMan, 1);
	MOVLW      _stickyMan+0
	MOVWF      FARG_CLCD_VidCreatSpecialChar_Copy_u8Pattern+0
	MOVLW      1
	MOVWF      FARG_CLCD_VidCreatSpecialChar_Copy_u8PatternNumber+0
	CALL       _CLCD_VidCreatSpecialChar+0
;LCD.c,12 :: 		CLCD_VidCreatSpecialChar(stickyMan_handsInverted, 2);
	MOVLW      _stickyMan_handsInverted+0
	MOVWF      FARG_CLCD_VidCreatSpecialChar_Copy_u8Pattern+0
	MOVLW      2
	MOVWF      FARG_CLCD_VidCreatSpecialChar_Copy_u8PatternNumber+0
	CALL       _CLCD_VidCreatSpecialChar+0
;LCD.c,13 :: 		DIO_VidSetPortMode(PORT_B, PORT_OUTPUT);
	MOVLW      1
	MOVWF      FARG_DIO_VidSetPortMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPortMode+0
;LCD.c,14 :: 		while (1)
L_main0:
;LCD.c,16 :: 		u8 i = 0;
	CLRF       main_i_L1+0
	MOVLW      12
	MOVWF      main_j_L1+0
;LCD.c,18 :: 		for (i = 0; i < 15; i += 2)
	CLRF       main_i_L1+0
L_main2:
	MOVLW      15
	SUBWF      main_i_L1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;LCD.c,20 :: 		CLCD_VidDisplayClear();
	CALL       _CLCD_VidDisplayClear+0
;LCD.c,21 :: 		CLCD_VidGotoXY(0, i);
	CLRF       FARG_CLCD_VidGotoXY_Copy_u8XPos+0
	MOVF       main_i_L1+0, 0
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8YPos+0
	CALL       _CLCD_VidGotoXY+0
;LCD.c,22 :: 		CLCD_VidSendData(1);
	MOVLW      1
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;LCD.c,23 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11+0
	MOVLW      23
	MOVWF      R12+0
	MOVLW      106
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;LCD.c,24 :: 		CLCD_VidDisplayClear();
	CALL       _CLCD_VidDisplayClear+0
;LCD.c,25 :: 		CLCD_VidGotoXY(0, i + 1);
	CLRF       FARG_CLCD_VidGotoXY_Copy_u8XPos+0
	INCF       main_i_L1+0, 0
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8YPos+0
	CALL       _CLCD_VidGotoXY+0
;LCD.c,26 :: 		CLCD_VidSendData(2);
	MOVLW      2
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;LCD.c,27 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11+0
	MOVLW      23
	MOVWF      R12+0
	MOVLW      106
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;LCD.c,18 :: 		for (i = 0; i < 15; i += 2)
	MOVLW      2
	ADDWF      main_i_L1+0, 1
;LCD.c,28 :: 		}
	GOTO       L_main2
L_main3:
;LCD.c,29 :: 		for (j = 15; j > 0; j -= 2)
	MOVLW      15
	MOVWF      main_j_L1+0
L_main7:
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_j_L1+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;LCD.c,31 :: 		CLCD_VidDisplayClear();
	CALL       _CLCD_VidDisplayClear+0
;LCD.c,32 :: 		CLCD_VidGotoXY(1, j);
	MOVLW      1
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8XPos+0
	MOVF       main_j_L1+0, 0
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8YPos+0
	CALL       _CLCD_VidGotoXY+0
;LCD.c,33 :: 		CLCD_VidSendData(1);
	MOVLW      1
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;LCD.c,34 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11+0
	MOVLW      23
	MOVWF      R12+0
	MOVLW      106
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
;LCD.c,35 :: 		CLCD_VidDisplayClear();
	CALL       _CLCD_VidDisplayClear+0
;LCD.c,36 :: 		CLCD_VidGotoXY(1, j - 1);
	MOVLW      1
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8XPos+0
	DECF       main_j_L1+0, 0
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8YPos+0
	CALL       _CLCD_VidGotoXY+0
;LCD.c,37 :: 		CLCD_VidSendData(2);
	MOVLW      2
	MOVWF      FARG_CLCD_VidSendData_Copy_u8Data+0
	CALL       _CLCD_VidSendData+0
;LCD.c,38 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11+0
	MOVLW      23
	MOVWF      R12+0
	MOVLW      106
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
;LCD.c,29 :: 		for (j = 15; j > 0; j -= 2)
	MOVLW      2
	SUBWF      main_j_L1+0, 1
;LCD.c,39 :: 		}
	GOTO       L_main7
L_main8:
;LCD.c,40 :: 		}
	GOTO       L_main0
;LCD.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
