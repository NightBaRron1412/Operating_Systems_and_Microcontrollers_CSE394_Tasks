
_EXTI_VidINTInit:

;EXTI_program.c,11 :: 		void EXTI_VidINTInit(void)
;EXTI_program.c,17 :: 		CLR_BIT(OPTION_REG, INTEDG);
	BCF        129, 6
;EXTI_program.c,24 :: 		}
L_end_EXTI_VidINTInit:
	RETURN
; end of _EXTI_VidINTInit

_EXTI_VidINTEnable:

;EXTI_program.c,27 :: 		void EXTI_VidINTEnable(void)
;EXTI_program.c,29 :: 		SET_BIT(INTCON, INTE);
	BSF        11, 4
;EXTI_program.c,30 :: 		}
L_end_EXTI_VidINTEnable:
	RETURN
; end of _EXTI_VidINTEnable

_EXTI_VidINTDisable:

;EXTI_program.c,33 :: 		void EXTI_VidINTDisable(void)
;EXTI_program.c,35 :: 		CLR_BIT(INTCON, INTE);
	BCF        11, 4
;EXTI_program.c,36 :: 		}
L_end_EXTI_VidINTDisable:
	RETURN
; end of _EXTI_VidINTDisable

_EXTI_VidRBIEnable:

;EXTI_program.c,39 :: 		void EXTI_VidRBIEnable(void)
;EXTI_program.c,41 :: 		SET_BIT(INTCON, RBIE);
	BSF        11, 3
;EXTI_program.c,42 :: 		}
L_end_EXTI_VidRBIEnable:
	RETURN
; end of _EXTI_VidRBIEnable

_EXTI_VidRBIDisable:

;EXTI_program.c,45 :: 		void EXTI_VidRBIDisable(void)
;EXTI_program.c,47 :: 		CLR_BIT(INTCON, RBIE);
	BCF        11, 3
;EXTI_program.c,48 :: 		}
L_end_EXTI_VidRBIDisable:
	RETURN
; end of _EXTI_VidRBIDisable

_EXTI_VidINTSetCallBack:

;EXTI_program.c,51 :: 		void EXTI_VidINTSetCallBack(void (*Copy_PVCallBack)(void))
;EXTI_program.c,53 :: 		PVINTCallBack = Copy_PVCallBack;
	MOVF       FARG_EXTI_VidINTSetCallBack_Copy_PVCallBack+0, 0
	MOVWF      EXTI_program_PVINTCallBack+0
	MOVF       FARG_EXTI_VidINTSetCallBack_Copy_PVCallBack+1, 0
	MOVWF      EXTI_program_PVINTCallBack+1
	MOVF       FARG_EXTI_VidINTSetCallBack_Copy_PVCallBack+2, 0
	MOVWF      EXTI_program_PVINTCallBack+2
	MOVF       FARG_EXTI_VidINTSetCallBack_Copy_PVCallBack+3, 0
;EXTI_program.c,54 :: 		}
L_end_EXTI_VidINTSetCallBack:
	RETURN
; end of _EXTI_VidINTSetCallBack

_EXTI_VidRBISetCallBack:

;EXTI_program.c,57 :: 		void EXTI_VidRBISetCallBack(void (*Copy_PVCallBack)(void))
;EXTI_program.c,59 :: 		PVRBICallBack = Copy_PVCallBack;
	MOVF       FARG_EXTI_VidRBISetCallBack_Copy_PVCallBack+0, 0
	MOVWF      EXTI_program_PVRBICallBack+0
	MOVF       FARG_EXTI_VidRBISetCallBack_Copy_PVCallBack+1, 0
	MOVWF      EXTI_program_PVRBICallBack+1
	MOVF       FARG_EXTI_VidRBISetCallBack_Copy_PVCallBack+2, 0
	MOVWF      EXTI_program_PVRBICallBack+2
	MOVF       FARG_EXTI_VidRBISetCallBack_Copy_PVCallBack+3, 0
;EXTI_program.c,60 :: 		}
L_end_EXTI_VidRBISetCallBack:
	RETURN
; end of _EXTI_VidRBISetCallBack

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;EXTI_program.c,62 :: 		void interrupt (void)
;EXTI_program.c,64 :: 		if ((GET_BIT(INTCON, INTF) == 1) && (GET_BIT(INTCON, INTE) == 1))
	MOVF       11, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVLW      1
	ANDWF      R0+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt2
	MOVF       11, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	RRF        R0+0, 1
	BCF        R0+0, 7
	RRF        R0+0, 1
	BCF        R0+0, 7
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVLW      1
	ANDWF      R0+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt2
L__interrupt11:
;EXTI_program.c,66 :: 		delay_ms(300); /* Debounce */
	MOVLW      7
	MOVWF      R11+0
	MOVLW      23
	MOVWF      R12+0
	MOVLW      106
	MOVWF      R13+0
L_interrupt3:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt3
	DECFSZ     R12+0, 1
	GOTO       L_interrupt3
	DECFSZ     R11+0, 1
	GOTO       L_interrupt3
	NOP
;EXTI_program.c,67 :: 		CLR_BIT(INTCON, INTF);
	BCF        11, 1
;EXTI_program.c,68 :: 		if (PVINTCallBack != NULL)
	MOVF       EXTI_program_PVINTCallBack+0, 0
	MOVWF      R1+0
	MOVF       EXTI_program_PVINTCallBack+1, 0
	MOVWF      R1+1
	MOVF       EXTI_program_PVINTCallBack+2, 0
	MOVWF      R1+2
	MOVF       EXTI_program_PVINTCallBack+3, 0
	MOVWF      R1+3
	MOVLW      0
	MOVWF      R0+0
	XORWF      R1+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt21
	MOVF       R0+0, 0
	XORWF      R1+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt21
	MOVF       R0+0, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt21
	MOVF       R1+0, 0
	XORLW      0
L__interrupt21:
	BTFSC      STATUS+0, 2
	GOTO       L_interrupt4
;EXTI_program.c,70 :: 		PVINTCallBack();
	MOVF       EXTI_program_PVINTCallBack+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       EXTI_program_PVINTCallBack+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoIFC+0
;EXTI_program.c,71 :: 		}
L_interrupt4:
;EXTI_program.c,72 :: 		}
	GOTO       L_interrupt5
L_interrupt2:
;EXTI_program.c,74 :: 		else if ((GET_BIT(INTCON, RBIF) == 1) && (GET_BIT(INTCON, RBIE) == 1))
	MOVF       11, 0
	MOVWF      R0+0
	MOVLW      1
	ANDWF      R0+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt8
	MOVF       11, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	RRF        R0+0, 1
	BCF        R0+0, 7
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVLW      1
	ANDWF      R0+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt8
L__interrupt10:
;EXTI_program.c,76 :: 		CLR_BIT(INTCON, RBIF);
	BCF        11, 0
;EXTI_program.c,77 :: 		if (PVRBICallBack != NULL)
	MOVF       EXTI_program_PVRBICallBack+0, 0
	MOVWF      R1+0
	MOVF       EXTI_program_PVRBICallBack+1, 0
	MOVWF      R1+1
	MOVF       EXTI_program_PVRBICallBack+2, 0
	MOVWF      R1+2
	MOVF       EXTI_program_PVRBICallBack+3, 0
	MOVWF      R1+3
	MOVLW      0
	MOVWF      R0+0
	XORWF      R1+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt22
	MOVF       R0+0, 0
	XORWF      R1+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt22
	MOVF       R0+0, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt22
	MOVF       R1+0, 0
	XORLW      0
L__interrupt22:
	BTFSC      STATUS+0, 2
	GOTO       L_interrupt9
;EXTI_program.c,79 :: 		PVRBICallBack();
	MOVF       EXTI_program_PVRBICallBack+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       EXTI_program_PVRBICallBack+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoIFC+0
;EXTI_program.c,80 :: 		}
L_interrupt9:
;EXTI_program.c,81 :: 		}
L_interrupt8:
L_interrupt5:
;EXTI_program.c,82 :: 		}
L_end_interrupt:
L__interrupt20:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

EXTI_program____?ag:

L_end_EXTI_program___?ag:
	RETURN
; end of EXTI_program____?ag
