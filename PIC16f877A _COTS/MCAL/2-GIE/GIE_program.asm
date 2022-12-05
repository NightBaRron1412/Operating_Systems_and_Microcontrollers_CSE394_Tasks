
_GIE_VidEnable:

;GIE_program.c,7 :: 		void GIE_VidEnable()
;GIE_program.c,9 :: 		SET_BIT(INTCON, GIE);
	BSF        11, 7
;GIE_program.c,10 :: 		}
L_end_GIE_VidEnable:
	RETURN
; end of _GIE_VidEnable

_GIE_VidDisable:

;GIE_program.c,13 :: 		void GIE_VidDisable()
;GIE_program.c,15 :: 		CLR_BIT(INTCON, GIE);
	BCF        11, 7
;GIE_program.c,16 :: 		}
L_end_GIE_VidDisable:
	RETURN
; end of _GIE_VidDisable
