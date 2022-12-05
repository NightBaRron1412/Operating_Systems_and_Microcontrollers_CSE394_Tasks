
_main:

;KPD.c,12 :: 		void main()
;KPD.c,14 :: 		u8 Local_u8Password[] = "1234";
	MOVLW      49
	MOVWF      main_Local_u8Password_L0+0
	MOVLW      50
	MOVWF      main_Local_u8Password_L0+1
	MOVLW      51
	MOVWF      main_Local_u8Password_L0+2
	MOVLW      52
	MOVWF      main_Local_u8Password_L0+3
	CLRF       main_Local_u8Password_L0+4
	CLRF       main_Local_u8Tries_L0+0
	MOVLW      255
	MOVWF      main_Local_u8PassStatus_L0+0
;KPD.c,21 :: 		Local_u8PassArr[PASSWORD_LENGTH] = '\0';
	CLRF       main_Local_u8PassArr_L0+4
;KPD.c,23 :: 		KPD_VidInit();
	CALL       _KPD_VidInit+0
;KPD.c,24 :: 		CLCD_VidInit();
	CALL       _CLCD_VidInit+0
;KPD.c,26 :: 		CLCD_VidSendString("Enter Password: ");
	MOVLW      ?lstr1_KPD+0
	MOVWF      FARG_CLCD_VidSendString_Copy_u8Str+0
	CALL       _CLCD_VidSendString+0
;KPD.c,28 :: 		do
L_main0:
;KPD.c,30 :: 		for (i = 0; i < PASSWORD_LENGTH; i++)
	CLRF       main_i_L0+0
L_main3:
	MOVLW      4
	SUBWF      main_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;KPD.c,32 :: 		u8 Local_u8KPDResult = KPD_u8GetKey();
	CALL       _KPD_u8GetKey+0
	MOVF       R0+0, 0
	MOVWF      main_Local_u8KPDResult_L2+0
;KPD.c,34 :: 		if (Local_u8KPDResult != NULL)
	MOVF       R0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;KPD.c,36 :: 		delay_ms(DEBOUNCE_DELAY);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      160
	MOVWF      R12+0
	MOVLW      146
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;KPD.c,37 :: 		Local_u8PassArr[i] = Local_u8KPDResult;
	MOVF       main_i_L0+0, 0
	ADDLW      main_Local_u8PassArr_L0+0
	MOVWF      FSR
	MOVF       main_Local_u8KPDResult_L2+0, 0
	MOVWF      INDF+0
;KPD.c,38 :: 		CLCD_VidGotoXY(1, i);
	MOVLW      1
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8XPos+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8YPos+0
	CALL       _CLCD_VidGotoXY+0
;KPD.c,39 :: 		CLCD_VidSendString("*");
	MOVLW      ?lstr2_KPD+0
	MOVWF      FARG_CLCD_VidSendString_Copy_u8Str+0
	CALL       _CLCD_VidSendString+0
;KPD.c,40 :: 		}
	GOTO       L_main8
L_main6:
;KPD.c,43 :: 		i--;
	DECF       main_i_L0+0, 1
;KPD.c,44 :: 		}
L_main8:
;KPD.c,30 :: 		for (i = 0; i < PASSWORD_LENGTH; i++)
	INCF       main_i_L0+0, 1
;KPD.c,45 :: 		}
	GOTO       L_main3
L_main4:
;KPD.c,47 :: 		for (i = 0; i < PASSWORD_LENGTH; i++)
	CLRF       main_i_L0+0
L_main9:
	MOVLW      4
	SUBWF      main_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;KPD.c,49 :: 		if (Local_u8PassArr[i] != Local_u8Password[i])
	MOVF       main_i_L0+0, 0
	ADDLW      main_Local_u8PassArr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	MOVF       main_i_L0+0, 0
	ADDLW      main_Local_u8Password_L0+0
	MOVWF      FSR
	MOVF       R1+0, 0
	XORWF      INDF+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main12
;KPD.c,51 :: 		Local_u8PassStatus = INVALID;
	MOVLW      255
	MOVWF      main_Local_u8PassStatus_L0+0
;KPD.c,52 :: 		break;
	GOTO       L_main10
;KPD.c,53 :: 		}
L_main12:
;KPD.c,56 :: 		Local_u8PassStatus = VALID;
	MOVLW      1
	MOVWF      main_Local_u8PassStatus_L0+0
;KPD.c,47 :: 		for (i = 0; i < PASSWORD_LENGTH; i++)
	INCF       main_i_L0+0, 1
;KPD.c,58 :: 		}
	GOTO       L_main9
L_main10:
;KPD.c,60 :: 		if (Local_u8PassStatus == VALID)
	MOVF       main_Local_u8PassStatus_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;KPD.c,62 :: 		CLCD_VidDisplayClear();
	CALL       _CLCD_VidDisplayClear+0
;KPD.c,63 :: 		CLCD_VidSendString("Welcome Amir");
	MOVLW      ?lstr3_KPD+0
	MOVWF      FARG_CLCD_VidSendString_Copy_u8Str+0
	CALL       _CLCD_VidSendString+0
;KPD.c,64 :: 		}
	GOTO       L_main15
L_main14:
;KPD.c,67 :: 		Local_u8Tries++;
	INCF       main_Local_u8Tries_L0+0, 1
;KPD.c,68 :: 		CLCD_VidDisplayClear();
	CALL       _CLCD_VidDisplayClear+0
;KPD.c,69 :: 		CLCD_VidSendString("Try again: ");
	MOVLW      ?lstr4_KPD+0
	MOVWF      FARG_CLCD_VidSendString_Copy_u8Str+0
	CALL       _CLCD_VidSendString+0
;KPD.c,70 :: 		}
L_main15:
;KPD.c,71 :: 		if (Local_u8Tries >= MAXIMUM_TRIES_NUMBER)
	MOVLW      3
	SUBWF      main_Local_u8Tries_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main16
;KPD.c,73 :: 		CLCD_VidDisplayClear();
	CALL       _CLCD_VidDisplayClear+0
;KPD.c,74 :: 		CLCD_VidSendString("Too many tries");
	MOVLW      ?lstr5_KPD+0
	MOVWF      FARG_CLCD_VidSendString_Copy_u8Str+0
	CALL       _CLCD_VidSendString+0
;KPD.c,75 :: 		CLCD_VidGotoXY(1, 0);
	MOVLW      1
	MOVWF      FARG_CLCD_VidGotoXY_Copy_u8XPos+0
	CLRF       FARG_CLCD_VidGotoXY_Copy_u8YPos+0
	CALL       _CLCD_VidGotoXY+0
;KPD.c,76 :: 		CLCD_VidSendString("Try again later");
	MOVLW      ?lstr6_KPD+0
	MOVWF      FARG_CLCD_VidSendString_Copy_u8Str+0
	CALL       _CLCD_VidSendString+0
;KPD.c,77 :: 		}
L_main16:
;KPD.c,78 :: 		} while (Local_u8Tries < MAXIMUM_TRIES_NUMBER);
	MOVLW      3
	SUBWF      main_Local_u8Tries_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main0
;KPD.c,80 :: 		while (1)
L_main17:
;KPD.c,82 :: 		}
	GOTO       L_main17
;KPD.c,83 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
