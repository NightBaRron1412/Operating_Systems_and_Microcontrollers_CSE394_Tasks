
_DIO_VidSetPinMode:

;DIO_program.c,10 :: 		void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode)
;DIO_program.c,12 :: 		if (Copy_u8Mode == INPUT)
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode0
;DIO_program.c,14 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinMode1
;DIO_program.c,16 :: 		case (PORT_A):
L_DIO_VidSetPinMode3:
;DIO_program.c,17 :: 		SET_BIT(TRISA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode71:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode72
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode71
L__DIO_VidSetPinMode72:
	MOVF       R0+0, 0
	IORWF      133, 1
;DIO_program.c,18 :: 		break;
	GOTO       L_DIO_VidSetPinMode2
;DIO_program.c,19 :: 		case (PORT_B):
L_DIO_VidSetPinMode4:
;DIO_program.c,20 :: 		switch (Copy_u8Mode)
	GOTO       L_DIO_VidSetPinMode5
;DIO_program.c,22 :: 		case (INPUT_PULLUP):
L_DIO_VidSetPinMode7:
;DIO_program.c,23 :: 		SET_BIT(OPTION_REG, RBPU);
	BSF        129, 7
;DIO_program.c,24 :: 		default:
L_DIO_VidSetPinMode8:
;DIO_program.c,25 :: 		SET_BIT(TRISB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode73:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode74
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode73
L__DIO_VidSetPinMode74:
	MOVF       R0+0, 0
	IORWF      134, 1
;DIO_program.c,26 :: 		break;
	GOTO       L_DIO_VidSetPinMode6
;DIO_program.c,27 :: 		}
L_DIO_VidSetPinMode5:
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode7
	GOTO       L_DIO_VidSetPinMode8
L_DIO_VidSetPinMode6:
;DIO_program.c,28 :: 		break;
	GOTO       L_DIO_VidSetPinMode2
;DIO_program.c,29 :: 		case (PORT_C):
L_DIO_VidSetPinMode9:
;DIO_program.c,30 :: 		SET_BIT(TRISC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode75:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode76
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode75
L__DIO_VidSetPinMode76:
	MOVF       R0+0, 0
	IORWF      135, 1
;DIO_program.c,31 :: 		break;
	GOTO       L_DIO_VidSetPinMode2
;DIO_program.c,32 :: 		case (PORT_D):
L_DIO_VidSetPinMode10:
;DIO_program.c,33 :: 		SET_BIT(TRISD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode77:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode78
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode77
L__DIO_VidSetPinMode78:
	MOVF       R0+0, 0
	IORWF      136, 1
;DIO_program.c,34 :: 		break;
	GOTO       L_DIO_VidSetPinMode2
;DIO_program.c,35 :: 		case (PORT_E):
L_DIO_VidSetPinMode11:
;DIO_program.c,36 :: 		SET_BIT(TRISE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode79:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode80
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode79
L__DIO_VidSetPinMode80:
	MOVF       R0+0, 0
	IORWF      137, 1
;DIO_program.c,37 :: 		break;
	GOTO       L_DIO_VidSetPinMode2
;DIO_program.c,38 :: 		}
L_DIO_VidSetPinMode1:
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode3
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode4
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode9
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode10
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode11
L_DIO_VidSetPinMode2:
;DIO_program.c,39 :: 		}
	GOTO       L_DIO_VidSetPinMode12
L_DIO_VidSetPinMode0:
;DIO_program.c,41 :: 		else if (Copy_u8Mode == OUTPUT)
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode13
;DIO_program.c,43 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinMode14
;DIO_program.c,45 :: 		case (PORT_A):
L_DIO_VidSetPinMode16:
;DIO_program.c,46 :: 		CLR_BIT(TRISA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode81:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode82
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode81
L__DIO_VidSetPinMode82:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      133, 1
;DIO_program.c,47 :: 		break;
	GOTO       L_DIO_VidSetPinMode15
;DIO_program.c,48 :: 		case (PORT_B):
L_DIO_VidSetPinMode17:
;DIO_program.c,49 :: 		CLR_BIT(TRISB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode83:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode84
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode83
L__DIO_VidSetPinMode84:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      134, 1
;DIO_program.c,50 :: 		break;
	GOTO       L_DIO_VidSetPinMode15
;DIO_program.c,51 :: 		case (PORT_C):
L_DIO_VidSetPinMode18:
;DIO_program.c,52 :: 		CLR_BIT(TRISC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode85:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode86
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode85
L__DIO_VidSetPinMode86:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      135, 1
;DIO_program.c,53 :: 		break;
	GOTO       L_DIO_VidSetPinMode15
;DIO_program.c,54 :: 		case (PORT_D):
L_DIO_VidSetPinMode19:
;DIO_program.c,55 :: 		CLR_BIT(TRISD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode87:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode88
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode87
L__DIO_VidSetPinMode88:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      136, 1
;DIO_program.c,56 :: 		break;
	GOTO       L_DIO_VidSetPinMode15
;DIO_program.c,57 :: 		case (PORT_E):
L_DIO_VidSetPinMode20:
;DIO_program.c,58 :: 		CLR_BIT(TRISE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode89:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode90
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode89
L__DIO_VidSetPinMode90:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      137, 1
;DIO_program.c,59 :: 		break;
	GOTO       L_DIO_VidSetPinMode15
;DIO_program.c,60 :: 		}
L_DIO_VidSetPinMode14:
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode16
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode17
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode18
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode19
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode20
L_DIO_VidSetPinMode15:
;DIO_program.c,61 :: 		}
L_DIO_VidSetPinMode13:
L_DIO_VidSetPinMode12:
;DIO_program.c,62 :: 		}
L_end_DIO_VidSetPinMode:
	RETURN
; end of _DIO_VidSetPinMode

_DIO_VidSetPinValue:

;DIO_program.c,65 :: 		void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value)
;DIO_program.c,68 :: 		if (Copy_u8Value == LOW)
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Value+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue21
;DIO_program.c,70 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinValue22
;DIO_program.c,72 :: 		case (PORT_A):
L_DIO_VidSetPinValue24:
;DIO_program.c,73 :: 		CLR_BIT(PORTA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue92:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue93
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue92
L__DIO_VidSetPinValue93:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      5, 1
;DIO_program.c,74 :: 		break;
	GOTO       L_DIO_VidSetPinValue23
;DIO_program.c,75 :: 		case (PORT_B):
L_DIO_VidSetPinValue25:
;DIO_program.c,76 :: 		CLR_BIT(PORTB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue94:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue95
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue94
L__DIO_VidSetPinValue95:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      6, 1
;DIO_program.c,77 :: 		break;
	GOTO       L_DIO_VidSetPinValue23
;DIO_program.c,78 :: 		case (PORT_C):
L_DIO_VidSetPinValue26:
;DIO_program.c,79 :: 		CLR_BIT(PORTC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue96:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue97
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue96
L__DIO_VidSetPinValue97:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      7, 1
;DIO_program.c,80 :: 		break;
	GOTO       L_DIO_VidSetPinValue23
;DIO_program.c,81 :: 		case (PORT_D):
L_DIO_VidSetPinValue27:
;DIO_program.c,82 :: 		CLR_BIT(PORTD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue98:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue99
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue98
L__DIO_VidSetPinValue99:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      8, 1
;DIO_program.c,84 :: 		break;
	GOTO       L_DIO_VidSetPinValue23
;DIO_program.c,85 :: 		case (PORT_E):
L_DIO_VidSetPinValue28:
;DIO_program.c,86 :: 		CLR_BIT(PORTE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue100:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue101
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue100
L__DIO_VidSetPinValue101:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      9, 1
;DIO_program.c,87 :: 		break;
	GOTO       L_DIO_VidSetPinValue23
;DIO_program.c,88 :: 		}
L_DIO_VidSetPinValue22:
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue24
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue25
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue26
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue27
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue28
L_DIO_VidSetPinValue23:
;DIO_program.c,89 :: 		}
	GOTO       L_DIO_VidSetPinValue29
L_DIO_VidSetPinValue21:
;DIO_program.c,91 :: 		else if (Copy_u8Value == HIGH)
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue30
;DIO_program.c,93 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinValue31
;DIO_program.c,95 :: 		case (PORT_A):
L_DIO_VidSetPinValue33:
;DIO_program.c,96 :: 		SET_BIT(PORTA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue102:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue103
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue102
L__DIO_VidSetPinValue103:
	MOVF       R0+0, 0
	IORWF      5, 1
;DIO_program.c,97 :: 		break;
	GOTO       L_DIO_VidSetPinValue32
;DIO_program.c,98 :: 		case (PORT_B):
L_DIO_VidSetPinValue34:
;DIO_program.c,99 :: 		SET_BIT(PORTB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue104:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue105
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue104
L__DIO_VidSetPinValue105:
	MOVF       R0+0, 0
	IORWF      6, 1
;DIO_program.c,100 :: 		break;
	GOTO       L_DIO_VidSetPinValue32
;DIO_program.c,101 :: 		case (PORT_C):
L_DIO_VidSetPinValue35:
;DIO_program.c,102 :: 		SET_BIT(PORTC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue106:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue107
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue106
L__DIO_VidSetPinValue107:
	MOVF       R0+0, 0
	IORWF      7, 1
;DIO_program.c,103 :: 		break;
	GOTO       L_DIO_VidSetPinValue32
;DIO_program.c,104 :: 		case (PORT_D):
L_DIO_VidSetPinValue36:
;DIO_program.c,105 :: 		SET_BIT(PORTD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue108:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue109
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue108
L__DIO_VidSetPinValue109:
	MOVF       R0+0, 0
	IORWF      8, 1
;DIO_program.c,106 :: 		break;
	GOTO       L_DIO_VidSetPinValue32
;DIO_program.c,107 :: 		case (PORT_E):
L_DIO_VidSetPinValue37:
;DIO_program.c,108 :: 		SET_BIT(PORTE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue110:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue111
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue110
L__DIO_VidSetPinValue111:
	MOVF       R0+0, 0
	IORWF      9, 1
;DIO_program.c,109 :: 		break;
	GOTO       L_DIO_VidSetPinValue32
;DIO_program.c,110 :: 		}
L_DIO_VidSetPinValue31:
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue33
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue34
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue35
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue36
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue37
L_DIO_VidSetPinValue32:
;DIO_program.c,111 :: 		}
L_DIO_VidSetPinValue30:
L_DIO_VidSetPinValue29:
;DIO_program.c,112 :: 		}
L_end_DIO_VidSetPinValue:
	RETURN
; end of _DIO_VidSetPinValue

_DIO_u8GetPinValue:

;DIO_program.c,115 :: 		u8 DIO_u8GetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue)
;DIO_program.c,117 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_u8GetPinValue38
;DIO_program.c,119 :: 		case (PORT_A):
L_DIO_u8GetPinValue40:
;DIO_program.c,120 :: 		*Copy_Pu8PinValue = GET_BIT(PORTA, Copy_u8Pin);
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       5, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_u8GetPinValue113:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_u8GetPinValue114
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_u8GetPinValue113
L__DIO_u8GetPinValue114:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_u8GetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,121 :: 		break;
	GOTO       L_DIO_u8GetPinValue39
;DIO_program.c,122 :: 		case (PORT_B):
L_DIO_u8GetPinValue41:
;DIO_program.c,123 :: 		*Copy_Pu8PinValue = GET_BIT(PORTB, Copy_u8Pin);
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       6, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_u8GetPinValue115:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_u8GetPinValue116
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_u8GetPinValue115
L__DIO_u8GetPinValue116:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_u8GetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,124 :: 		break;
	GOTO       L_DIO_u8GetPinValue39
;DIO_program.c,125 :: 		case (PORT_C):
L_DIO_u8GetPinValue42:
;DIO_program.c,126 :: 		*Copy_Pu8PinValue = GET_BIT(PORTC, Copy_u8Pin);
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       7, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_u8GetPinValue117:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_u8GetPinValue118
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_u8GetPinValue117
L__DIO_u8GetPinValue118:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_u8GetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,127 :: 		break;
	GOTO       L_DIO_u8GetPinValue39
;DIO_program.c,128 :: 		case (PORT_D):
L_DIO_u8GetPinValue43:
;DIO_program.c,129 :: 		*Copy_Pu8PinValue = GET_BIT(PORTD, Copy_u8Pin);
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       8, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_u8GetPinValue119:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_u8GetPinValue120
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_u8GetPinValue119
L__DIO_u8GetPinValue120:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_u8GetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,130 :: 		break;
	GOTO       L_DIO_u8GetPinValue39
;DIO_program.c,131 :: 		case (PORT_E):
L_DIO_u8GetPinValue44:
;DIO_program.c,132 :: 		*Copy_Pu8PinValue = GET_BIT(PORTE, Copy_u8Pin);
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       9, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_u8GetPinValue121:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_u8GetPinValue122
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_u8GetPinValue121
L__DIO_u8GetPinValue122:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_u8GetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,133 :: 		break;
	GOTO       L_DIO_u8GetPinValue39
;DIO_program.c,134 :: 		}
L_DIO_u8GetPinValue38:
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_u8GetPinValue40
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_u8GetPinValue41
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_u8GetPinValue42
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_u8GetPinValue43
	MOVF       FARG_DIO_u8GetPinValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_u8GetPinValue44
L_DIO_u8GetPinValue39:
;DIO_program.c,135 :: 		}
L_end_DIO_u8GetPinValue:
	RETURN
; end of _DIO_u8GetPinValue

_DIO_VidSetPortMode:

;DIO_program.c,138 :: 		void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode)
;DIO_program.c,140 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPortMode45
;DIO_program.c,142 :: 		case (PORT_A):
L_DIO_VidSetPortMode47:
;DIO_program.c,143 :: 		TRISA = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      133
;DIO_program.c,144 :: 		break;
	GOTO       L_DIO_VidSetPortMode46
;DIO_program.c,145 :: 		case (PORT_B):
L_DIO_VidSetPortMode48:
;DIO_program.c,146 :: 		switch (Copy_u8Mode)
	GOTO       L_DIO_VidSetPortMode49
;DIO_program.c,148 :: 		case (PORT_INPUT_PULLUP):
L_DIO_VidSetPortMode51:
;DIO_program.c,149 :: 		SET_BIT(OPTION_REG, RBPU);
	BSF        129, 7
;DIO_program.c,150 :: 		default:
L_DIO_VidSetPortMode52:
;DIO_program.c,151 :: 		TRISB = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      134
;DIO_program.c,152 :: 		break;
	GOTO       L_DIO_VidSetPortMode50
;DIO_program.c,153 :: 		}
L_DIO_VidSetPortMode49:
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode51
	GOTO       L_DIO_VidSetPortMode52
L_DIO_VidSetPortMode50:
;DIO_program.c,154 :: 		break;
	GOTO       L_DIO_VidSetPortMode46
;DIO_program.c,155 :: 		case (PORT_C):
L_DIO_VidSetPortMode53:
;DIO_program.c,156 :: 		TRISC = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      135
;DIO_program.c,157 :: 		break;
	GOTO       L_DIO_VidSetPortMode46
;DIO_program.c,158 :: 		case (PORT_D):
L_DIO_VidSetPortMode54:
;DIO_program.c,159 :: 		TRISD = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      136
;DIO_program.c,160 :: 		break;
	GOTO       L_DIO_VidSetPortMode46
;DIO_program.c,161 :: 		case (PORT_E):
L_DIO_VidSetPortMode55:
;DIO_program.c,162 :: 		TRISE = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      137
;DIO_program.c,163 :: 		break;
	GOTO       L_DIO_VidSetPortMode46
;DIO_program.c,164 :: 		}
L_DIO_VidSetPortMode45:
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode47
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode48
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode53
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode54
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode55
L_DIO_VidSetPortMode46:
;DIO_program.c,165 :: 		}
L_end_DIO_VidSetPortMode:
	RETURN
; end of _DIO_VidSetPortMode

_DIO_VidSetPortValue:

;DIO_program.c,167 :: 		void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value)
;DIO_program.c,169 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPortValue56
;DIO_program.c,171 :: 		case (PORT_A):
L_DIO_VidSetPortValue58:
;DIO_program.c,172 :: 		PORTA = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      5
;DIO_program.c,173 :: 		break;
	GOTO       L_DIO_VidSetPortValue57
;DIO_program.c,174 :: 		case (PORT_B):
L_DIO_VidSetPortValue59:
;DIO_program.c,175 :: 		PORTB = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      6
;DIO_program.c,176 :: 		break;
	GOTO       L_DIO_VidSetPortValue57
;DIO_program.c,177 :: 		case (PORT_C):
L_DIO_VidSetPortValue60:
;DIO_program.c,178 :: 		PORTC = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      7
;DIO_program.c,179 :: 		break;
	GOTO       L_DIO_VidSetPortValue57
;DIO_program.c,180 :: 		case (PORT_D):
L_DIO_VidSetPortValue61:
;DIO_program.c,181 :: 		PORTD = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      8
;DIO_program.c,182 :: 		break;
	GOTO       L_DIO_VidSetPortValue57
;DIO_program.c,183 :: 		case (PORT_E):
L_DIO_VidSetPortValue62:
;DIO_program.c,184 :: 		PORTE = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      9
;DIO_program.c,185 :: 		break;
	GOTO       L_DIO_VidSetPortValue57
;DIO_program.c,186 :: 		}
L_DIO_VidSetPortValue56:
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue58
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue59
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue60
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue61
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue62
L_DIO_VidSetPortValue57:
;DIO_program.c,187 :: 		}
L_end_DIO_VidSetPortValue:
	RETURN
; end of _DIO_VidSetPortValue

_DIO_VidGetPortValue:

;DIO_program.c,189 :: 		void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue)
;DIO_program.c,191 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidGetPortValue63
;DIO_program.c,193 :: 		case (PORT_A):
L_DIO_VidGetPortValue65:
;DIO_program.c,194 :: 		*Copy_Pu8PortValue = PORTA;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       5, 0
	MOVWF      INDF+0
;DIO_program.c,195 :: 		break;
	GOTO       L_DIO_VidGetPortValue64
;DIO_program.c,196 :: 		case (PORT_B):
L_DIO_VidGetPortValue66:
;DIO_program.c,197 :: 		*Copy_Pu8PortValue = PORTB;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       6, 0
	MOVWF      INDF+0
;DIO_program.c,198 :: 		break;
	GOTO       L_DIO_VidGetPortValue64
;DIO_program.c,199 :: 		case (PORT_C):
L_DIO_VidGetPortValue67:
;DIO_program.c,200 :: 		*Copy_Pu8PortValue = PORTC;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       7, 0
	MOVWF      INDF+0
;DIO_program.c,201 :: 		break;
	GOTO       L_DIO_VidGetPortValue64
;DIO_program.c,202 :: 		case (PORT_D):
L_DIO_VidGetPortValue68:
;DIO_program.c,203 :: 		*Copy_Pu8PortValue = PORTD;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       8, 0
	MOVWF      INDF+0
;DIO_program.c,204 :: 		break;
	GOTO       L_DIO_VidGetPortValue64
;DIO_program.c,205 :: 		case (PORT_E):
L_DIO_VidGetPortValue69:
;DIO_program.c,206 :: 		*Copy_Pu8PortValue = PORTE;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       9, 0
	MOVWF      INDF+0
;DIO_program.c,207 :: 		break;
	GOTO       L_DIO_VidGetPortValue64
;DIO_program.c,208 :: 		}
L_DIO_VidGetPortValue63:
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue65
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue66
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue67
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue68
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue69
L_DIO_VidGetPortValue64:
;DIO_program.c,209 :: 		}
L_end_DIO_VidGetPortValue:
	RETURN
; end of _DIO_VidGetPortValue
