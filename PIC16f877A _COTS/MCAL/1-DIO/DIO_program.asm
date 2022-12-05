
_DIO_VidSetPinMode:

;DIO_program.c,11 :: 		void DIO_VidSetPinMode(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Mode)
;DIO_program.c,13 :: 		if (Copy_u8Mode == INPUT || Copy_u8Mode == INPUT_PULLUP)
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode72
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode72
	GOTO       L_DIO_VidSetPinMode2
L__DIO_VidSetPinMode72:
;DIO_program.c,15 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinMode3
;DIO_program.c,17 :: 		case (PORT_A):
L_DIO_VidSetPinMode5:
;DIO_program.c,18 :: 		SET_BIT(TRISA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode74:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode75
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode74
L__DIO_VidSetPinMode75:
	MOVF       R0+0, 0
	IORWF      133, 1
;DIO_program.c,19 :: 		break;
	GOTO       L_DIO_VidSetPinMode4
;DIO_program.c,20 :: 		case (PORT_B):
L_DIO_VidSetPinMode6:
;DIO_program.c,21 :: 		switch (Copy_u8Mode)
	GOTO       L_DIO_VidSetPinMode7
;DIO_program.c,23 :: 		case (INPUT_PULLUP):
L_DIO_VidSetPinMode9:
;DIO_program.c,24 :: 		CLR_BIT(OPTION_REG, RBPU);
	BCF        129, 7
;DIO_program.c,25 :: 		SET_BIT(TRISB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode76:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode77
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode76
L__DIO_VidSetPinMode77:
	MOVF       R0+0, 0
	IORWF      134, 1
;DIO_program.c,26 :: 		break;
	GOTO       L_DIO_VidSetPinMode8
;DIO_program.c,27 :: 		default:
L_DIO_VidSetPinMode10:
;DIO_program.c,28 :: 		SET_BIT(OPTION_REG, RBPU);
	BSF        129, 7
;DIO_program.c,29 :: 		SET_BIT(TRISB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode78:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode79
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode78
L__DIO_VidSetPinMode79:
	MOVF       R0+0, 0
	IORWF      134, 1
;DIO_program.c,30 :: 		}
	GOTO       L_DIO_VidSetPinMode8
L_DIO_VidSetPinMode7:
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode9
	GOTO       L_DIO_VidSetPinMode10
L_DIO_VidSetPinMode8:
;DIO_program.c,31 :: 		break;
	GOTO       L_DIO_VidSetPinMode4
;DIO_program.c,32 :: 		case (PORT_C):
L_DIO_VidSetPinMode11:
;DIO_program.c,33 :: 		SET_BIT(TRISC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode80:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode81
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode80
L__DIO_VidSetPinMode81:
	MOVF       R0+0, 0
	IORWF      135, 1
;DIO_program.c,34 :: 		break;
	GOTO       L_DIO_VidSetPinMode4
;DIO_program.c,35 :: 		case (PORT_D):
L_DIO_VidSetPinMode12:
;DIO_program.c,36 :: 		SET_BIT(TRISD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode82:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode83
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode82
L__DIO_VidSetPinMode83:
	MOVF       R0+0, 0
	IORWF      136, 1
;DIO_program.c,37 :: 		break;
	GOTO       L_DIO_VidSetPinMode4
;DIO_program.c,38 :: 		case (PORT_E):
L_DIO_VidSetPinMode13:
;DIO_program.c,39 :: 		SET_BIT(TRISE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode84:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode85
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode84
L__DIO_VidSetPinMode85:
	MOVF       R0+0, 0
	IORWF      137, 1
;DIO_program.c,40 :: 		break;
	GOTO       L_DIO_VidSetPinMode4
;DIO_program.c,41 :: 		}
L_DIO_VidSetPinMode3:
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode5
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode6
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode11
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode12
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode13
L_DIO_VidSetPinMode4:
;DIO_program.c,42 :: 		}
	GOTO       L_DIO_VidSetPinMode14
L_DIO_VidSetPinMode2:
;DIO_program.c,44 :: 		else if (Copy_u8Mode == OUTPUT)
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode15
;DIO_program.c,46 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinMode16
;DIO_program.c,48 :: 		case (PORT_A):
L_DIO_VidSetPinMode18:
;DIO_program.c,49 :: 		CLR_BIT(TRISA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode86:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode87
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode86
L__DIO_VidSetPinMode87:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      133, 1
;DIO_program.c,50 :: 		break;
	GOTO       L_DIO_VidSetPinMode17
;DIO_program.c,51 :: 		case (PORT_B):
L_DIO_VidSetPinMode19:
;DIO_program.c,52 :: 		CLR_BIT(TRISB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode88:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode89
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode88
L__DIO_VidSetPinMode89:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      134, 1
;DIO_program.c,53 :: 		break;
	GOTO       L_DIO_VidSetPinMode17
;DIO_program.c,54 :: 		case (PORT_C):
L_DIO_VidSetPinMode20:
;DIO_program.c,55 :: 		CLR_BIT(TRISC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode90:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode91
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode90
L__DIO_VidSetPinMode91:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      135, 1
;DIO_program.c,56 :: 		break;
	GOTO       L_DIO_VidSetPinMode17
;DIO_program.c,57 :: 		case (PORT_D):
L_DIO_VidSetPinMode21:
;DIO_program.c,58 :: 		CLR_BIT(TRISD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode92:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode93
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode92
L__DIO_VidSetPinMode93:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      136, 1
;DIO_program.c,59 :: 		break;
	GOTO       L_DIO_VidSetPinMode17
;DIO_program.c,60 :: 		case (PORT_E):
L_DIO_VidSetPinMode22:
;DIO_program.c,61 :: 		CLR_BIT(TRISE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinMode94:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinMode95
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinMode94
L__DIO_VidSetPinMode95:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      137, 1
;DIO_program.c,62 :: 		break;
	GOTO       L_DIO_VidSetPinMode17
;DIO_program.c,63 :: 		}
L_DIO_VidSetPinMode16:
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode18
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode19
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode20
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode21
	MOVF       FARG_DIO_VidSetPinMode_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinMode22
L_DIO_VidSetPinMode17:
;DIO_program.c,64 :: 		}
L_DIO_VidSetPinMode15:
L_DIO_VidSetPinMode14:
;DIO_program.c,65 :: 		}
L_end_DIO_VidSetPinMode:
	RETURN
; end of _DIO_VidSetPinMode

_DIO_VidSetPinValue:

;DIO_program.c,68 :: 		void DIO_VidSetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 Copy_u8Value)
;DIO_program.c,71 :: 		if (Copy_u8Value == LOW)
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Value+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue23
;DIO_program.c,73 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinValue24
;DIO_program.c,75 :: 		case (PORT_A):
L_DIO_VidSetPinValue26:
;DIO_program.c,76 :: 		CLR_BIT(PORTA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue97:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue98
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue97
L__DIO_VidSetPinValue98:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      5, 1
;DIO_program.c,77 :: 		break;
	GOTO       L_DIO_VidSetPinValue25
;DIO_program.c,78 :: 		case (PORT_B):
L_DIO_VidSetPinValue27:
;DIO_program.c,79 :: 		CLR_BIT(PORTB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue99:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue100
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue99
L__DIO_VidSetPinValue100:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      6, 1
;DIO_program.c,80 :: 		break;
	GOTO       L_DIO_VidSetPinValue25
;DIO_program.c,81 :: 		case (PORT_C):
L_DIO_VidSetPinValue28:
;DIO_program.c,82 :: 		CLR_BIT(PORTC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue101:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue102
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue101
L__DIO_VidSetPinValue102:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      7, 1
;DIO_program.c,83 :: 		break;
	GOTO       L_DIO_VidSetPinValue25
;DIO_program.c,84 :: 		case (PORT_D):
L_DIO_VidSetPinValue29:
;DIO_program.c,85 :: 		CLR_BIT(PORTD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue103:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue104
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue103
L__DIO_VidSetPinValue104:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      8, 1
;DIO_program.c,87 :: 		break;
	GOTO       L_DIO_VidSetPinValue25
;DIO_program.c,88 :: 		case (PORT_E):
L_DIO_VidSetPinValue30:
;DIO_program.c,89 :: 		CLR_BIT(PORTE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue105:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue106
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue105
L__DIO_VidSetPinValue106:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      9, 1
;DIO_program.c,90 :: 		break;
	GOTO       L_DIO_VidSetPinValue25
;DIO_program.c,91 :: 		}
L_DIO_VidSetPinValue24:
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue26
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue27
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue28
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue29
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue30
L_DIO_VidSetPinValue25:
;DIO_program.c,92 :: 		}
	GOTO       L_DIO_VidSetPinValue31
L_DIO_VidSetPinValue23:
;DIO_program.c,94 :: 		else if (Copy_u8Value == HIGH)
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue32
;DIO_program.c,96 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPinValue33
;DIO_program.c,98 :: 		case (PORT_A):
L_DIO_VidSetPinValue35:
;DIO_program.c,99 :: 		SET_BIT(PORTA, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue107:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue108
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue107
L__DIO_VidSetPinValue108:
	MOVF       R0+0, 0
	IORWF      5, 1
;DIO_program.c,100 :: 		break;
	GOTO       L_DIO_VidSetPinValue34
;DIO_program.c,101 :: 		case (PORT_B):
L_DIO_VidSetPinValue36:
;DIO_program.c,102 :: 		SET_BIT(PORTB, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue109:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue110
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue109
L__DIO_VidSetPinValue110:
	MOVF       R0+0, 0
	IORWF      6, 1
;DIO_program.c,103 :: 		break;
	GOTO       L_DIO_VidSetPinValue34
;DIO_program.c,104 :: 		case (PORT_C):
L_DIO_VidSetPinValue37:
;DIO_program.c,105 :: 		SET_BIT(PORTC, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue111:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue112
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue111
L__DIO_VidSetPinValue112:
	MOVF       R0+0, 0
	IORWF      7, 1
;DIO_program.c,106 :: 		break;
	GOTO       L_DIO_VidSetPinValue34
;DIO_program.c,107 :: 		case (PORT_D):
L_DIO_VidSetPinValue38:
;DIO_program.c,108 :: 		SET_BIT(PORTD, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue113:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue114
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue113
L__DIO_VidSetPinValue114:
	MOVF       R0+0, 0
	IORWF      8, 1
;DIO_program.c,109 :: 		break;
	GOTO       L_DIO_VidSetPinValue34
;DIO_program.c,110 :: 		case (PORT_E):
L_DIO_VidSetPinValue39:
;DIO_program.c,111 :: 		SET_BIT(PORTE, Copy_u8Pin);
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidSetPinValue115:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidSetPinValue116
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__DIO_VidSetPinValue115
L__DIO_VidSetPinValue116:
	MOVF       R0+0, 0
	IORWF      9, 1
;DIO_program.c,112 :: 		break;
	GOTO       L_DIO_VidSetPinValue34
;DIO_program.c,113 :: 		}
L_DIO_VidSetPinValue33:
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue35
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue36
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue37
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue38
	MOVF       FARG_DIO_VidSetPinValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPinValue39
L_DIO_VidSetPinValue34:
;DIO_program.c,114 :: 		}
L_DIO_VidSetPinValue32:
L_DIO_VidSetPinValue31:
;DIO_program.c,115 :: 		}
L_end_DIO_VidSetPinValue:
	RETURN
; end of _DIO_VidSetPinValue

_DIO_VidGetPinValue:

;DIO_program.c,118 :: 		void DIO_VidGetPinValue(u8 Copy_u8Port, u8 Copy_u8Pin, u8 *Copy_Pu8PinValue)
;DIO_program.c,120 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidGetPinValue40
;DIO_program.c,122 :: 		case (PORT_A):
L_DIO_VidGetPinValue42:
;DIO_program.c,123 :: 		*Copy_Pu8PinValue = GET_BIT(PORTA, Copy_u8Pin);
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       5, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidGetPinValue118:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidGetPinValue119
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_VidGetPinValue118
L__DIO_VidGetPinValue119:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_VidGetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,124 :: 		break;
	GOTO       L_DIO_VidGetPinValue41
;DIO_program.c,125 :: 		case (PORT_B):
L_DIO_VidGetPinValue43:
;DIO_program.c,126 :: 		*Copy_Pu8PinValue = GET_BIT(PORTB, Copy_u8Pin);
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       6, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidGetPinValue120:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidGetPinValue121
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_VidGetPinValue120
L__DIO_VidGetPinValue121:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_VidGetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,127 :: 		break;
	GOTO       L_DIO_VidGetPinValue41
;DIO_program.c,128 :: 		case (PORT_C):
L_DIO_VidGetPinValue44:
;DIO_program.c,129 :: 		*Copy_Pu8PinValue = GET_BIT(PORTC, Copy_u8Pin);
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       7, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidGetPinValue122:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidGetPinValue123
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_VidGetPinValue122
L__DIO_VidGetPinValue123:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_VidGetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,130 :: 		break;
	GOTO       L_DIO_VidGetPinValue41
;DIO_program.c,131 :: 		case (PORT_D):
L_DIO_VidGetPinValue45:
;DIO_program.c,132 :: 		*Copy_Pu8PinValue = GET_BIT(PORTD, Copy_u8Pin);
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       8, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidGetPinValue124:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidGetPinValue125
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_VidGetPinValue124
L__DIO_VidGetPinValue125:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_VidGetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,133 :: 		break;
	GOTO       L_DIO_VidGetPinValue41
;DIO_program.c,134 :: 		case (PORT_E):
L_DIO_VidGetPinValue46:
;DIO_program.c,135 :: 		*Copy_Pu8PinValue = GET_BIT(PORTE, Copy_u8Pin);
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Pin+0, 0
	MOVWF      R1+0
	MOVF       9, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__DIO_VidGetPinValue126:
	BTFSC      STATUS+0, 2
	GOTO       L__DIO_VidGetPinValue127
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__DIO_VidGetPinValue126
L__DIO_VidGetPinValue127:
	MOVLW      1
	ANDWF      R0+0, 1
	MOVF       FARG_DIO_VidGetPinValue_Copy_Pu8PinValue+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;DIO_program.c,136 :: 		break;
	GOTO       L_DIO_VidGetPinValue41
;DIO_program.c,137 :: 		}
L_DIO_VidGetPinValue40:
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPinValue42
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPinValue43
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPinValue44
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPinValue45
	MOVF       FARG_DIO_VidGetPinValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPinValue46
L_DIO_VidGetPinValue41:
;DIO_program.c,138 :: 		}
L_end_DIO_VidGetPinValue:
	RETURN
; end of _DIO_VidGetPinValue

_DIO_VidSetPortMode:

;DIO_program.c,141 :: 		void DIO_VidSetPortMode(u8 Copy_u8Port, u8 Copy_u8Mode)
;DIO_program.c,143 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPortMode47
;DIO_program.c,145 :: 		case (PORT_A):
L_DIO_VidSetPortMode49:
;DIO_program.c,146 :: 		TRISA = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      133
;DIO_program.c,147 :: 		break;
	GOTO       L_DIO_VidSetPortMode48
;DIO_program.c,148 :: 		case (PORT_B):
L_DIO_VidSetPortMode50:
;DIO_program.c,149 :: 		switch (Copy_u8Mode)
	GOTO       L_DIO_VidSetPortMode51
;DIO_program.c,151 :: 		case (PORT_INPUT_PULLUP):
L_DIO_VidSetPortMode53:
;DIO_program.c,152 :: 		CLR_BIT(OPTION_REG, RBPU);
	BCF        129, 7
;DIO_program.c,153 :: 		TRISB = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      134
;DIO_program.c,154 :: 		break;
	GOTO       L_DIO_VidSetPortMode52
;DIO_program.c,155 :: 		default:
L_DIO_VidSetPortMode54:
;DIO_program.c,156 :: 		SET_BIT(OPTION_REG, RBPU);
	BSF        129, 7
;DIO_program.c,157 :: 		TRISB = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      134
;DIO_program.c,158 :: 		break;
	GOTO       L_DIO_VidSetPortMode52
;DIO_program.c,159 :: 		}
L_DIO_VidSetPortMode51:
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode53
	GOTO       L_DIO_VidSetPortMode54
L_DIO_VidSetPortMode52:
;DIO_program.c,160 :: 		break;
	GOTO       L_DIO_VidSetPortMode48
;DIO_program.c,161 :: 		case (PORT_C):
L_DIO_VidSetPortMode55:
;DIO_program.c,162 :: 		TRISC = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      135
;DIO_program.c,163 :: 		break;
	GOTO       L_DIO_VidSetPortMode48
;DIO_program.c,164 :: 		case (PORT_D):
L_DIO_VidSetPortMode56:
;DIO_program.c,165 :: 		TRISD = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      136
;DIO_program.c,166 :: 		break;
	GOTO       L_DIO_VidSetPortMode48
;DIO_program.c,167 :: 		case (PORT_E):
L_DIO_VidSetPortMode57:
;DIO_program.c,168 :: 		TRISE = Copy_u8Mode;
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0, 0
	MOVWF      137
;DIO_program.c,169 :: 		break;
	GOTO       L_DIO_VidSetPortMode48
;DIO_program.c,170 :: 		}
L_DIO_VidSetPortMode47:
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode49
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode50
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode55
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode56
	MOVF       FARG_DIO_VidSetPortMode_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortMode57
L_DIO_VidSetPortMode48:
;DIO_program.c,171 :: 		}
L_end_DIO_VidSetPortMode:
	RETURN
; end of _DIO_VidSetPortMode

_DIO_VidSetPortValue:

;DIO_program.c,173 :: 		void DIO_VidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value)
;DIO_program.c,175 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidSetPortValue58
;DIO_program.c,177 :: 		case (PORT_A):
L_DIO_VidSetPortValue60:
;DIO_program.c,178 :: 		PORTA = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      5
;DIO_program.c,179 :: 		break;
	GOTO       L_DIO_VidSetPortValue59
;DIO_program.c,180 :: 		case (PORT_B):
L_DIO_VidSetPortValue61:
;DIO_program.c,181 :: 		PORTB = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      6
;DIO_program.c,182 :: 		break;
	GOTO       L_DIO_VidSetPortValue59
;DIO_program.c,183 :: 		case (PORT_C):
L_DIO_VidSetPortValue62:
;DIO_program.c,184 :: 		PORTC = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      7
;DIO_program.c,185 :: 		break;
	GOTO       L_DIO_VidSetPortValue59
;DIO_program.c,186 :: 		case (PORT_D):
L_DIO_VidSetPortValue63:
;DIO_program.c,187 :: 		PORTD = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      8
;DIO_program.c,188 :: 		break;
	GOTO       L_DIO_VidSetPortValue59
;DIO_program.c,189 :: 		case (PORT_E):
L_DIO_VidSetPortValue64:
;DIO_program.c,190 :: 		PORTE = Copy_u8Value;
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Value+0, 0
	MOVWF      9
;DIO_program.c,191 :: 		break;
	GOTO       L_DIO_VidSetPortValue59
;DIO_program.c,192 :: 		}
L_DIO_VidSetPortValue58:
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue60
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue61
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue62
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue63
	MOVF       FARG_DIO_VidSetPortValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidSetPortValue64
L_DIO_VidSetPortValue59:
;DIO_program.c,193 :: 		}
L_end_DIO_VidSetPortValue:
	RETURN
; end of _DIO_VidSetPortValue

_DIO_VidGetPortValue:

;DIO_program.c,195 :: 		void DIO_VidGetPortValue(u8 Copy_u8Port, u8 *Copy_Pu8PortValue)
;DIO_program.c,197 :: 		switch (Copy_u8Port)
	GOTO       L_DIO_VidGetPortValue65
;DIO_program.c,199 :: 		case (PORT_A):
L_DIO_VidGetPortValue67:
;DIO_program.c,200 :: 		*Copy_Pu8PortValue = PORTA;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       5, 0
	MOVWF      INDF+0
;DIO_program.c,201 :: 		break;
	GOTO       L_DIO_VidGetPortValue66
;DIO_program.c,202 :: 		case (PORT_B):
L_DIO_VidGetPortValue68:
;DIO_program.c,203 :: 		*Copy_Pu8PortValue = PORTB;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       6, 0
	MOVWF      INDF+0
;DIO_program.c,204 :: 		break;
	GOTO       L_DIO_VidGetPortValue66
;DIO_program.c,205 :: 		case (PORT_C):
L_DIO_VidGetPortValue69:
;DIO_program.c,206 :: 		*Copy_Pu8PortValue = PORTC;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       7, 0
	MOVWF      INDF+0
;DIO_program.c,207 :: 		break;
	GOTO       L_DIO_VidGetPortValue66
;DIO_program.c,208 :: 		case (PORT_D):
L_DIO_VidGetPortValue70:
;DIO_program.c,209 :: 		*Copy_Pu8PortValue = PORTD;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       8, 0
	MOVWF      INDF+0
;DIO_program.c,210 :: 		break;
	GOTO       L_DIO_VidGetPortValue66
;DIO_program.c,211 :: 		case (PORT_E):
L_DIO_VidGetPortValue71:
;DIO_program.c,212 :: 		*Copy_Pu8PortValue = PORTE;
	MOVF       FARG_DIO_VidGetPortValue_Copy_Pu8PortValue+0, 0
	MOVWF      FSR
	MOVF       9, 0
	MOVWF      INDF+0
;DIO_program.c,213 :: 		break;
	GOTO       L_DIO_VidGetPortValue66
;DIO_program.c,214 :: 		}
L_DIO_VidGetPortValue65:
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue67
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue68
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue69
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue70
	MOVF       FARG_DIO_VidGetPortValue_Copy_u8Port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_DIO_VidGetPortValue71
L_DIO_VidGetPortValue66:
;DIO_program.c,215 :: 		}
L_end_DIO_VidGetPortValue:
	RETURN
; end of _DIO_VidGetPortValue
