
_SevenSeg_VidInit:

;SevenSeg_program.c,6 :: 		void SevenSeg_VidInit(u8 Copy_u8Port)
;SevenSeg_program.c,9 :: 		DIO_VidSetPortMode(Copy_u8Port, Port_OUTPUT);
	MOVF       FARG_SevenSeg_VidInit_Copy_u8Port+0, 0
	MOVWF      FARG_DIO_VidSetPortMode_Copy_u8Port+0
	CLRF       FARG_DIO_VidSetPortMode_Copy_u8Mode+0
	CALL       _DIO_VidSetPortMode+0
;SevenSeg_program.c,10 :: 		}
L_end_SevenSeg_VidInit:
	RETURN
; end of _SevenSeg_VidInit

_SevenSeg_VidDisplayNumber:

;SevenSeg_program.c,12 :: 		void SevenSeg_VidDisplayNumber(u8 Copy_u8Port, u8 Copy_u8Number)
;SevenSeg_program.c,15 :: 		if ((Copy_u8Number >= 0) || (Copy_u8Number < 10))
	MOVLW      0
	SUBWF      FARG_SevenSeg_VidDisplayNumber_Copy_u8Number+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L__SevenSeg_VidDisplayNumber3
	MOVLW      10
	SUBWF      FARG_SevenSeg_VidDisplayNumber_Copy_u8Number+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__SevenSeg_VidDisplayNumber3
	GOTO       L_SevenSeg_VidDisplayNumber2
L__SevenSeg_VidDisplayNumber3:
;SevenSeg_program.c,18 :: 		DIO_VidSetPortValue(Copy_u8Port, SevenSeg_u87SegArray[Copy_u8Number]);
	MOVF       FARG_SevenSeg_VidDisplayNumber_Copy_u8Port+0, 0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Port+0
	MOVF       FARG_SevenSeg_VidDisplayNumber_Copy_u8Number+0, 0
	ADDLW      _SevenSeg_u87SegArray+0
	MOVWF      R0+0
	MOVLW      hi_addr(_SevenSeg_u87SegArray+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_DIO_VidSetPortValue_Copy_u8Value+0
	CALL       _DIO_VidSetPortValue+0
;SevenSeg_program.c,19 :: 		}
L_SevenSeg_VidDisplayNumber2:
;SevenSeg_program.c,20 :: 		}
L_end_SevenSeg_VidDisplayNumber:
	RETURN
; end of _SevenSeg_VidDisplayNumber
