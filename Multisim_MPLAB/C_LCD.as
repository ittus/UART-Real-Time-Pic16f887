opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	dw 0xFFF9 & 0xFFF7 & 0xFFEF & 0xFFFF & 0xFFBF & 0xFF7F & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_uart_init
	FNCALL	_main,_enable_interrupt
	FNCALL	_main,_displayToLCD
	FNCALL	_displayToLCD,_lcd_clear
	FNCALL	_displayToLCD,_sprintf
	FNCALL	_displayToLCD,_lcd_puts
	FNCALL	_displayToLCD,_uart_puts
	FNCALL	_lcd_puts,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	_lcd_clear,_lcd_put_byte
	FNCALL	_lcd_clear,_lcd_busy
	FNCALL	_enable_interrupt,_set_counter
	FNCALL	_uart_puts,_uart_putc
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNROOT	_main
	FNCALL	_inter_func,i1_set_counter
	FNCALL	_inter_func,_uart_gets
	FNCALL	_inter_func,_strcmp
	FNCALL	_inter_func,i1_lcd_clear
	FNCALL	_inter_func,i1_uart_puts
	FNCALL	_inter_func,i1_lcd_puts
	FNCALL	_inter_func,i1___wmul
	FNCALL	i1_lcd_puts,i1_lcd_putc
	FNCALL	i1_lcd_putc,i1_lcd_put_byte
	FNCALL	i1_lcd_putc,i1_lcd_busy
	FNCALL	i1_lcd_putc,i1_lcd_gotoxy
	FNCALL	i1_lcd_putc,i1_isprint
	FNCALL	i1_lcd_clear,i1_lcd_put_byte
	FNCALL	i1_lcd_clear,i1_lcd_busy
	FNCALL	i1_lcd_gotoxy,i1_lcd_put_byte
	FNCALL	i1_lcd_gotoxy,i1_lcd_busy
	FNCALL	i1_uart_puts,i1_uart_putc
	FNCALL	_uart_gets,_uart_getc
	FNCALL	intlevel1,_inter_func
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_hour
	global	_minute
	global	_second
	global	_RCREG
_RCREG	set	26
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RCIF
_RCIF	set	101
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_SREN
_SREN	set	197
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1OSCEN
_T1OSCEN	set	131
	global	_T1SYNC
_T1SYNC	set	130
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
	global	_TRISD3
_TRISD3	set	1091
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_TXIE
_TXIE	set	1124
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_1:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	10
	retlw	0
psect	strings
	
STR_3:	
	retlw	73	;'I'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	102	;'f'
	retlw	56	;'8'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	10
	retlw	0
psect	strings
	
STR_4:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_2:	
	retlw	112	;'p'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	102	;'f'
	retlw	56	;'8'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	63	;'?'
	retlw	0
psect	strings
	file	"C_LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_hour:
       ds      2

_minute:
       ds      2

_second:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	displayToLCD@temp
displayToLCD@temp:	; 8 bytes @ 0x0
	ds	8
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_uart_gets
?_uart_gets:	; 0 bytes @ 0x0
	global	??_uart_gets
??_uart_gets:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_set_counter
?_set_counter:	; 0 bytes @ 0x0
	global	?_enable_interrupt
?_enable_interrupt:	; 0 bytes @ 0x0
	global	?_inter_func
?_inter_func:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_uart_putc
?_uart_putc:	; 0 bytes @ 0x0
	global	??_uart_getc
??_uart_getc:	; 0 bytes @ 0x0
	global	?i1_set_counter
?i1_set_counter:	; 0 bytes @ 0x0
	global	??i1_set_counter
??i1_set_counter:	; 0 bytes @ 0x0
	global	??i1_lcd_busy
??i1_lcd_busy:	; 0 bytes @ 0x0
	global	?i1_lcd_put_byte
?i1_lcd_put_byte:	; 0 bytes @ 0x0
	global	?i1_lcd_putc
?i1_lcd_putc:	; 0 bytes @ 0x0
	global	?i1_lcd_puts
?i1_lcd_puts:	; 0 bytes @ 0x0
	global	?i1_lcd_clear
?i1_lcd_clear:	; 0 bytes @ 0x0
	global	?i1_uart_putc
?i1_uart_putc:	; 0 bytes @ 0x0
	global	??i1_uart_putc
??i1_uart_putc:	; 0 bytes @ 0x0
	global	?i1_uart_puts
?i1_uart_puts:	; 0 bytes @ 0x0
	global	?i1_isprint
?i1_isprint:	; 1 bit 
	global	??i1_isprint
??i1_isprint:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?_uart_getc
?_uart_getc:	; 1 bytes @ 0x0
	global	?i1_lcd_busy
?i1_lcd_busy:	; 1 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	?i1___wmul
?i1___wmul:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	global	i1lcd_put_byte@b
i1lcd_put_byte@b:	; 1 bytes @ 0x0
	global	i1uart_putc@c
i1uart_putc@c:	; 1 bytes @ 0x0
	global	i1_isprint$4894
i1_isprint$4894:	; 1 bytes @ 0x0
	global	i1___wmul@multiplier
i1___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
	global	??i1_lcd_put_byte
??i1_lcd_put_byte:	; 0 bytes @ 0x1
	global	??i1_uart_puts
??i1_uart_puts:	; 0 bytes @ 0x1
	global	uart_gets@s
uart_gets@s:	; 1 bytes @ 0x1
	global	i1lcd_busy@busy
i1lcd_busy@busy:	; 1 bytes @ 0x1
	global	i1uart_puts@s
i1uart_puts@s:	; 1 bytes @ 0x1
	global	i1isprint@c
i1isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	i1___wmul@multiplicand
i1___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	i1lcd_put_byte@rs
i1lcd_put_byte@rs:	; 1 bytes @ 0x3
	ds	1
	global	??i1___wmul
??i1___wmul:	; 0 bytes @ 0x4
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	global	i1lcd_put_byte@temp
i1lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	i1___wmul@product
i1___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	?i1_lcd_gotoxy
?i1_lcd_gotoxy:	; 0 bytes @ 0x5
	global	??i1_lcd_clear
??i1_lcd_clear:	; 0 bytes @ 0x5
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x5
	global	i1lcd_gotoxy@row
i1lcd_gotoxy@row:	; 1 bytes @ 0x5
	ds	1
	global	??i1_lcd_gotoxy
??i1_lcd_gotoxy:	; 0 bytes @ 0x6
	ds	1
	global	i1lcd_gotoxy@col
i1lcd_gotoxy@col:	; 1 bytes @ 0x7
	ds	1
	global	i1lcd_gotoxy@address
i1lcd_gotoxy@address:	; 1 bytes @ 0x8
	ds	1
	global	??i1_lcd_putc
??i1_lcd_putc:	; 0 bytes @ 0x9
	ds	1
	global	i1lcd_putc@c
i1lcd_putc@c:	; 1 bytes @ 0xA
	ds	1
	global	??i1_lcd_puts
??i1_lcd_puts:	; 0 bytes @ 0xB
	global	i1lcd_puts@s
i1lcd_puts@s:	; 1 bytes @ 0xB
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_inter_func
??_inter_func:	; 0 bytes @ 0x0
	ds	6
	global	inter_func@input
inter_func@input:	; 8 bytes @ 0x6
	ds	8
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0xE
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0xE
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0xE
	global	??_isprint
??_isprint:	; 0 bytes @ 0xE
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0xE
	global	??_set_counter
??_set_counter:	; 0 bytes @ 0xE
	global	??_enable_interrupt
??_enable_interrupt:	; 0 bytes @ 0xE
	global	??_uart_putc
??_uart_putc:	; 0 bytes @ 0xE
	global	?___wmul
?___wmul:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0xE
	global	uart_putc@c
uart_putc@c:	; 1 bytes @ 0xE
	global	_isdigit$4891
_isdigit$4891:	; 1 bytes @ 0xE
	global	_isprint$4894
_isprint$4894:	; 1 bytes @ 0xE
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0xE
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xE
	ds	1
	global	?_uart_puts
?_uart_puts:	; 0 bytes @ 0xF
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0xF
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0xF
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0xF
	global	isprint@c
isprint@c:	; 1 bytes @ 0xF
	global	uart_puts@s
uart_puts@s:	; 2 bytes @ 0xF
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x10
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x10
	ds	1
	global	??_uart_puts
??_uart_puts:	; 0 bytes @ 0x11
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x11
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x12
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x12
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x12
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x12
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x13
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x13
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x13
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x13
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x13
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x14
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x14
	ds	1
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x15
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x16
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x16
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x16
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x17
	ds	1
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x18
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x18
	ds	1
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x19
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x19
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x1A
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x1B
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1B
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x1C
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x1C
	ds	7
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x23
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x26
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x27
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x28
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x2C
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x2D
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x2F
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x30
	ds	1
	global	?_displayToLCD
?_displayToLCD:	; 0 bytes @ 0x31
	global	displayToLCD@h1
displayToLCD@h1:	; 2 bytes @ 0x31
	ds	2
	global	displayToLCD@m1
displayToLCD@m1:	; 2 bytes @ 0x33
	ds	2
	global	displayToLCD@s1
displayToLCD@s1:	; 2 bytes @ 0x35
	ds	2
	global	??_displayToLCD
??_displayToLCD:	; 0 bytes @ 0x37
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x38
	ds	3
;;Data sizes: Strings 53, constant 10, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80     59      65
;; BANK1           80      8       8
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___wmul	unsigned int  size(1) Largest target is 0
;;
;; i1lcd_puts@s	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_4(CODE[13]), 
;;
;; i1uart_puts@s	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_3(CODE[13]), 
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_strcmp	int  size(1) Largest target is 0
;;
;; strcmp@s2	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[11]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 8
;;		 -> inter_func@input(BANK0[8]), 
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_1(CODE[16]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 8
;;		 -> displayToLCD@temp(BANK1[8]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S4373$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; uart_gets@s	PTR unsigned char  size(1) Largest target is 8
;;		 -> inter_func@input(BANK0[8]), 
;;
;; uart_puts@s	PTR const unsigned char  size(2) Largest target is 13
;;		 -> STR_3(CODE[13]), displayToLCD@temp(BANK1[8]), 
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 13
;;		 -> STR_4(CODE[13]), displayToLCD@temp(BANK1[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _inter_func in COMMON
;;
;;   _inter_func->i1_lcd_puts
;;   i1_lcd_puts->i1_lcd_putc
;;   i1_lcd_putc->i1_lcd_gotoxy
;;   i1_lcd_clear->i1_lcd_put_byte
;;   i1_lcd_gotoxy->i1_lcd_put_byte
;;   i1_uart_puts->i1_uart_putc
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_displayToLCD
;;   _displayToLCD->_sprintf
;;   _lcd_puts->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   _lcd_clear->_lcd_put_byte
;;   _uart_puts->_uart_putc
;;   _sprintf->___lwmod
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _inter_func in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_displayToLCD
;;
;; Critical Paths under _inter_func in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _inter_func in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _inter_func in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    4132
;;                                             56 BANK0      3     3      0
;;                           _lcd_init
;;                          _uart_init
;;                   _enable_interrupt
;;                       _displayToLCD
;; ---------------------------------------------------------------------------------
;; (1) _displayToLCD                                        15     9      6    3785
;;                                             49 BANK0      7     1      6
;;                                              0 BANK1      8     8      0
;;                          _lcd_clear
;;                            _sprintf
;;                           _lcd_puts
;;                          _uart_puts
;; ---------------------------------------------------------------------------------
;; (2) _lcd_puts                                             2     0      2    1053
;;                                             25 BANK0      2     0      2
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             2     2      0     988
;;                                             23 BANK0      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           4     3      1     449
;;                                             19 BANK0      4     3      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     347
;;                                             19 BANK0      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            0     0      0     347
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      34
;;                                             14 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     313
;;                                             14 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (1) _enable_interrupt                                     0     0      0       0
;;                        _set_counter
;; ---------------------------------------------------------------------------------
;; (2) _uart_puts                                            2     0      2      96
;;                                             15 BANK0      2     0      2
;;                          _uart_putc
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             21    14      7    2029
;;                                             28 BANK0     21    14      7
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              6     2      4     232
;;                                             22 BANK0      6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     241
;;                                             14 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4     136
;;                                             14 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      99
;;                                             14 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _uart_putc                                            1     1      0      31
;;                                             14 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      99
;;                                             14 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _set_counter                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _inter_func                                          14    14      0    4941
;;                                              0 BANK0     14    14      0
;;                      i1_set_counter
;;                          _uart_gets
;;                             _strcmp
;;                        i1_lcd_clear
;;                        i1_uart_puts
;;                         i1_lcd_puts
;;                           i1___wmul
;; ---------------------------------------------------------------------------------
;; (7) i1_lcd_puts                                           1     1      0    2954
;;                                             11 COMMON     1     1      0
;;                         i1_lcd_putc
;; ---------------------------------------------------------------------------------
;; (8) i1_lcd_putc                                           2     2      0    2773
;;                                              9 COMMON     2     2      0
;;                     i1_lcd_put_byte
;;                         i1_lcd_busy
;;                       i1_lcd_gotoxy
;;                          i1_isprint
;; ---------------------------------------------------------------------------------
;; (7) i1_lcd_clear                                          0     0      0     978
;;                     i1_lcd_put_byte
;;                         i1_lcd_busy
;; ---------------------------------------------------------------------------------
;; (9) i1_lcd_gotoxy                                         4     3      1    1257
;;                                              5 COMMON     4     3      1
;;                     i1_lcd_put_byte
;;                         i1_lcd_busy
;; ---------------------------------------------------------------------------------
;; (7) i1_uart_puts                                          1     1      0     269
;;                                              1 COMMON     1     1      0
;;                        i1_uart_putc
;; ---------------------------------------------------------------------------------
;; (10) i1_lcd_put_byte                                      5     4      1     885
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (10) i1_lcd_busy                                          2     2      0      93
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (7) _uart_gets                                            3     3      0      67
;;                                              0 COMMON     2     2      0
;;                          _uart_getc
;; ---------------------------------------------------------------------------------
;; (7) i1___wmul                                             6     2      4     300
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (9) i1_isprint                                            2     2      0     274
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (8) i1_uart_putc                                          1     1      0      88
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (7) i1_set_counter                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (8) _uart_getc                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (8) _strcmp                                               6     4      2      89
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 10
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _uart_init
;;   _enable_interrupt
;;     _set_counter
;;   _displayToLCD
;;     _lcd_clear
;;       _lcd_put_byte
;;       _lcd_busy
;;     _sprintf
;;       _isdigit
;;       ___wmul
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;     _lcd_puts
;;       _lcd_putc
;;         _lcd_put_byte
;;         _lcd_busy
;;         _lcd_gotoxy
;;           _lcd_put_byte
;;           _lcd_busy
;;         _isprint
;;     _uart_puts
;;       _uart_putc
;;
;; _inter_func (ROOT)
;;   i1_set_counter
;;   _uart_gets
;;     _uart_getc
;;   _strcmp
;;   i1_lcd_clear
;;     i1_lcd_put_byte
;;     i1_lcd_busy
;;   i1_uart_puts
;;     i1_uart_putc
;;   i1_lcd_puts
;;     i1_lcd_putc
;;       i1_lcd_put_byte
;;       i1_lcd_busy
;;       i1_lcd_gotoxy
;;         i1_lcd_put_byte
;;         i1_lcd_busy
;;       i1_isprint
;;   i1___wmul
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       F       2        0.0%
;;ABS                  0      0      55       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3B      41       5       81.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      8       8       7       10.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      64      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 74 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_lcd_init
;;		_uart_init
;;		_enable_interrupt
;;		_displayToLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	line	74
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l7419:	
;C_LCD.c: 75: lcd_init();
	fcall	_lcd_init
	line	76
;C_LCD.c: 76: uart_init();
	fcall	_uart_init
	line	77
;C_LCD.c: 77: enable_interrupt();
	fcall	_enable_interrupt
	goto	l7421
	line	78
;C_LCD.c: 78: while(1){
	
l1068:	
	line	79
	
l7421:	
;C_LCD.c: 79: displayToLCD(hour,minute,second);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hour+1),w
	clrf	(?_displayToLCD+1)
	addwf	(?_displayToLCD+1)
	movf	(_hour),w
	clrf	(?_displayToLCD)
	addwf	(?_displayToLCD)

	movf	(_minute+1),w
	clrf	1+(?_displayToLCD)+02h
	addwf	1+(?_displayToLCD)+02h
	movf	(_minute),w
	clrf	0+(?_displayToLCD)+02h
	addwf	0+(?_displayToLCD)+02h

	movf	(_second+1),w
	clrf	1+(?_displayToLCD)+04h
	addwf	1+(?_displayToLCD)+04h
	movf	(_second),w
	clrf	0+(?_displayToLCD)+04h
	addwf	0+(?_displayToLCD)+04h

	fcall	_displayToLCD
	line	80
	
l7423:	
;C_LCD.c: 80: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u5817:
	decfsz	((??_main+0)+0),f
	goto	u5817
	decfsz	((??_main+0)+0+1),f
	goto	u5817
	decfsz	((??_main+0)+0+2),f
	goto	u5817
	nop2
opt asmopt_on

	goto	l7421
	line	81
	
l1069:	
	line	78
	goto	l7421
	
l1070:	
	line	82
	
l1071:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_displayToLCD
psect	text1134,local,class=CODE,delta=2
global __ptext1134
__ptext1134:

;; *************** function _displayToLCD *****************
;; Defined at:
;;		line 10 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
;; Parameters:    Size  Location     Type
;;  h1              2   49[BANK0 ] int 
;;  m1              2   51[BANK0 ] int 
;;  s1              2   53[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  temp            8    0[BANK1 ] unsigned char [8]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       8       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       8       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_lcd_clear
;;		_sprintf
;;		_lcd_puts
;;		_uart_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1134
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	line	10
	global	__size_of_displayToLCD
	__size_of_displayToLCD	equ	__end_of_displayToLCD-_displayToLCD
	
_displayToLCD:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _displayToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	11
	
l7411:	
;C_LCD.c: 11: lcd_clear();
	fcall	_lcd_clear
	line	13
	
l7413:	
;C_LCD.c: 12: char temp[8];
;C_LCD.c: 13: sprintf(temp,"%02d:%02d:%02d\n",h1,m1,s1);
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayToLCD+0)+0
	movf	(??_displayToLCD+0)+0,w
	movwf	(?_sprintf)
	movf	(displayToLCD@h1+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(displayToLCD@h1),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(displayToLCD@m1+1),w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(displayToLCD@m1),w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movf	(displayToLCD@s1+1),w
	clrf	1+(?_sprintf)+05h
	addwf	1+(?_sprintf)+05h
	movf	(displayToLCD@s1),w
	clrf	0+(?_sprintf)+05h
	addwf	0+(?_sprintf)+05h

	movlw	(displayToLCD@temp)&0ffh
	fcall	_sprintf
	line	14
	
l7415:	
;C_LCD.c: 14: lcd_puts(temp);
	movlw	(displayToLCD@temp&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	15
	
l7417:	
;C_LCD.c: 15: uart_puts(temp);
	movlw	(displayToLCD@temp&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_uart_puts)
	movlw	(0x1/2)
	movwf	(?_uart_puts+1)
	fcall	_uart_puts
	line	16
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_displayToLCD
	__end_of_displayToLCD:
;; =============== function _displayToLCD ends ============

	signat	_displayToLCD,12408
	global	_lcd_puts
psect	text1135,local,class=CODE,delta=2
global __ptext1135
__ptext1135:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 175 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2   25[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(13), displayToLCD@temp(8), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_displayToLCD
;; This function uses a non-reentrant model
;;
psect	text1135
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	175
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	176
	
l7403:	
;lcd.c: 176: while(*s){
	goto	l7409
	
l2165:	
	line	177
	
l7405:	
;lcd.c: 177: lcd_putc(*s++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_putc
	
l7407:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	high(01h)
	addwf	(lcd_puts@s+1),f
	goto	l7409
	line	178
	
l2164:	
	line	176
	
l7409:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u5801
	goto	u5800
u5801:
	goto	l7405
u5800:
	goto	l2167
	
l2166:	
	line	179
	
l2167:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_putc
psect	text1136,local,class=CODE,delta=2
global __ptext1136
__ptext1136:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_lcd_puts
;; This function uses a non-reentrant model
;;
psect	text1136
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_putc@c)
	line	144
	
l7385:	
;lcd.c: 144: switch(c){
	goto	l7401
	line	145
;lcd.c: 145: case '\f':
	
l2142:	
	line	146
	
l7387:	
;lcd.c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd.c: 147: while(lcd_busy());
	goto	l7389
	
l2144:	
	goto	l7389
	
l2143:	
	
l7389:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5771
	goto	u5770
u5771:
	goto	l7389
u5770:
	goto	l2153
	
l2145:	
	line	148
;lcd.c: 148: break;
	goto	l2153
	line	149
;lcd.c: 149: case '\n':
	
l2147:	
	line	150
	
l7391:	
;lcd.c: 150: lcd_gotoxy(0, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	bsf	status,0
	rlf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd.c: 151: break;
	goto	l2153
	line	152
;lcd.c: 152: default:
	
l2148:	
	line	153
	
l7393:	
;lcd.c: 153: if(isprint(c)){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u5781
	goto	u5780
u5781:
	goto	l2153
u5780:
	line	154
	
l7395:	
;lcd.c: 154: lcd_put_byte(1, c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_putc@c),w
	movwf	(??_lcd_putc+0)+0
	movf	(??_lcd_putc+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd.c: 155: while(lcd_busy());
	goto	l7397
	
l2151:	
	goto	l7397
	
l2150:	
	
l7397:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5791
	goto	u5790
u5791:
	goto	l7397
u5790:
	goto	l2153
	
l2152:	
	goto	l2153
	line	156
	
l2149:	
	line	157
;lcd.c: 156: }
;lcd.c: 157: break;
	goto	l2153
	line	158
	
l7399:	
;lcd.c: 158: }
	goto	l2153
	line	144
	
l2141:	
	
l7401:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_putc@c),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	10^0	; case 10
	skipnz
	goto	l7391
	xorlw	12^10	; case 12
	skipnz
	goto	l7387
	goto	l7393
	opt asmopt_on

	line	158
	
l2146:	
	line	159
	
l2153:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_gotoxy
psect	text1137,local,class=CODE,delta=2
global __ptext1137
__ptext1137:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1   19[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1   21[BANK0 ] unsigned char 
;;  address         1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1137
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@col)
	
l7375:	
;lcd.c: 163: unsigned char address;
;lcd.c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u5750
	goto	l2156
u5750:
	line	166
	
l7377:	
;lcd.c: 166: address=0x40;
	movlw	(040h)
	movwf	(??_lcd_gotoxy+0)+0
	movf	(??_lcd_gotoxy+0)+0,w
	movwf	(lcd_gotoxy@address)
	goto	l7379
	line	167
	
l2156:	
	line	168
;lcd.c: 167: else
;lcd.c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	goto	l7379
	
l2157:	
	line	170
	
l7379:	
;lcd.c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	movwf	(??_lcd_gotoxy+0)+0
	movf	(??_lcd_gotoxy+0)+0,w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l7381:	
;lcd.c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(??_lcd_gotoxy+0)+0
	movf	(??_lcd_gotoxy+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd.c: 172: while(lcd_busy());
	goto	l7383
	
l2159:	
	goto	l7383
	
l2158:	
	
l7383:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5761
	goto	u5760
u5761:
	goto	l7383
u5760:
	goto	l2161
	
l2160:	
	line	173
	
l2161:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text1138,local,class=CODE,delta=2
global __ptext1138
__ptext1138:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1138
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 1
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l7337:	
;lcd.c: 6: unsigned char i;
;lcd.c: 7: TRISD3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1091/8)^080h,(1091)&7
	line	8
;lcd.c: 8: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	9
;lcd.c: 9: TRISD2 = 0;
	bcf	(1090/8)^080h,(1090)&7
	line	10
;lcd.c: 10: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	11
;lcd.c: 11: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	12
;lcd.c: 12: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	13
;lcd.c: 13: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	14
;lcd.c: 14: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	15
;lcd.c: 15: RD1 = 0;
	bcf	(65/8),(65)&7
	line	16
;lcd.c: 16: RD2 = 0;
	bcf	(66/8),(66)&7
	line	18
	
l7339:	
;lcd.c: 18: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5827:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5827
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5827
	nop2
opt asmopt_on

	line	21
	
l7341:	
;lcd.c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l7343:	
;lcd.c: 22: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5837:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5837
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5837
	nop2
opt asmopt_on

	line	23
;lcd.c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l7345:	
;lcd.c: 24: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5847:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5847
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5847
	nop2
opt asmopt_on

	line	25
	
l7347:	
;lcd.c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	26
;lcd.c: 26: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5857:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5857
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5857
	nop2
opt asmopt_on

	line	27
;lcd.c: 27: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5867:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5867
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5867
	nop2
opt asmopt_on

	line	28
;lcd.c: 28: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5877:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5877
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5877
	nop2
opt asmopt_on

	line	30
;lcd.c: 30: while(lcd_busy());
	goto	l7349
	
l2107:	
	goto	l7349
	
l2106:	
	
l7349:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5681
	goto	u5680
u5681:
	goto	l7349
u5680:
	goto	l7351
	
l2108:	
	line	31
	
l7351:	
;lcd.c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd.c: 32: while(lcd_busy());
	goto	l7353
	
l2110:	
	goto	l7353
	
l2109:	
	
l7353:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5691
	goto	u5690
u5691:
	goto	l7353
u5690:
	goto	l7355
	
l2111:	
	line	34
	
l7355:	
;lcd.c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd.c: 35: while(lcd_busy());
	goto	l7357
	
l2113:	
	goto	l7357
	
l2112:	
	
l7357:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5701
	goto	u5700
u5701:
	goto	l7357
u5700:
	goto	l7359
	
l2114:	
	line	36
	
l7359:	
;lcd.c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd.c: 37: while(lcd_busy());
	goto	l7361
	
l2116:	
	goto	l7361
	
l2115:	
	
l7361:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5711
	goto	u5710
u5711:
	goto	l7361
u5710:
	goto	l7363
	
l2117:	
	line	39
	
l7363:	
;lcd.c: 39: lcd_put_byte(0,0x01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd.c: 40: while(lcd_busy());
	goto	l7365
	
l2119:	
	goto	l7365
	
l2118:	
	
l7365:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5721
	goto	u5720
u5721:
	goto	l7365
u5720:
	goto	l7367
	
l2120:	
	line	41
	
l7367:	
;lcd.c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd.c: 42: while(lcd_busy());
	goto	l7369
	
l2122:	
	goto	l7369
	
l2121:	
	
l7369:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5731
	goto	u5730
u5731:
	goto	l7369
u5730:
	goto	l7371
	
l2123:	
	line	43
	
l7371:	
;lcd.c: 43: lcd_put_byte(0,0x01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd.c: 44: while(lcd_busy());
	goto	l7373
	
l2125:	
	goto	l7373
	
l2124:	
	
l7373:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5741
	goto	u5740
u5741:
	goto	l7373
u5740:
	goto	l2127
	
l2126:	
	line	45
	
l2127:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_clear
psect	text1139,local,class=CODE,delta=2
global __ptext1139
__ptext1139:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 182 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_displayToLCD
;; This function uses a non-reentrant model
;;
psect	text1139
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	182
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 0
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	183
	
l7333:	
;lcd.c: 183: lcd_put_byte(0,0x01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	184
;lcd.c: 184: while(lcd_busy());
	goto	l7335
	
l2171:	
	goto	l7335
	
l2170:	
	
l7335:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5671
	goto	u5670
u5671:
	goto	l7335
u5670:
	goto	l2173
	
l2172:	
	line	185
	
l2173:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_busy
psect	text1140,local,class=CODE,delta=2
global __ptext1140
__ptext1140:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;;		_lcd_clear
;; This function uses a non-reentrant model
;;
psect	text1140
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l7319:	
;lcd.c: 48: unsigned char busy;
;lcd.c: 50: TRISD4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1092/8)^080h,(1092)&7
	line	51
;lcd.c: 51: TRISD5 = 1;
	bsf	(1093/8)^080h,(1093)&7
	line	52
;lcd.c: 52: TRISD6 = 1;
	bsf	(1094/8)^080h,(1094)&7
	line	53
;lcd.c: 53: TRISD7 = 1;
	bsf	(1095/8)^080h,(1095)&7
	line	55
;lcd.c: 55: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	56
;lcd.c: 56: RD1 = 0;
	bcf	(65/8),(65)&7
	line	57
	
l7321:	
;lcd.c: 57: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5887:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5887
	clrwdt
opt asmopt_on

	line	58
	
l7323:	
;lcd.c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd.c: 59: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5897:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5897
	clrwdt
opt asmopt_on

	line	61
;lcd.c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	movwf	(??_lcd_busy+0)+0
	movf	(??_lcd_busy+0)+0,w
	movwf	(lcd_busy@busy)
	line	63
	
l7325:	
;lcd.c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd.c: 64: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5907:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5907
	clrwdt
opt asmopt_on

	line	65
	
l7327:	
;lcd.c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd.c: 66: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5917:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5917
	clrwdt
opt asmopt_on

	line	67
	
l7329:	
;lcd.c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd.c: 70: return busy;
	movf	(lcd_busy@busy),w
	goto	l2130
	
l7331:	
	line	71
	
l2130:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text1141,local,class=CODE,delta=2
global __ptext1141
__ptext1141:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1   14[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1   17[BANK0 ] unsigned char 
;;  temp            1   18[BANK0 ] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;;		_lcd_clear
;; This function uses a non-reentrant model
;;
psect	text1141
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_put_byte@rs)
	
l7283:	
;lcd.c: 107: BYTE_VAL temp;
;lcd.c: 109: TRISD4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1092/8)^080h,(1092)&7
	line	110
;lcd.c: 110: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	111
;lcd.c: 111: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	112
;lcd.c: 112: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	114
;lcd.c: 114: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	115
	
l7285:	
;lcd.c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u5500
	goto	l7289
u5500:
	
l7287:	
	bsf	(65/8),(65)&7
	goto	l7289
	
l2137:	
	line	117
	
l7289:	
;lcd.c: 117: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5927:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5927
	clrwdt
opt asmopt_on

	line	118
	
l7291:	
;lcd.c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd.c: 119: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5937:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5937
	clrwdt
opt asmopt_on

	line	120
	
l7293:	
;lcd.c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd.c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(??_lcd_put_byte+0)+0
	movf	(??_lcd_put_byte+0)+0,w
	movwf	(lcd_put_byte@temp)
	line	125
	
l7295:	
;lcd.c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5511
	goto	u5510
	
u5511:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u5524
u5510:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u5524:
	line	126
	
l7297:	
;lcd.c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5531
	goto	u5530
	
u5531:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u5544
u5530:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u5544:
	line	127
	
l7299:	
;lcd.c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5551
	goto	u5550
	
u5551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u5564
u5550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u5564:
	line	128
	
l7301:	
;lcd.c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5571
	goto	u5570
	
u5571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u5584
u5570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u5584:
	line	129
;lcd.c: 129: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5947:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5947
	clrwdt
opt asmopt_on

	line	130
	
l7303:	
;lcd.c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd.c: 131: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5957:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5957
	clrwdt
opt asmopt_on

	line	132
	
l7305:	
;lcd.c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l7307:	
;lcd.c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5591
	goto	u5590
	
u5591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u5604
u5590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u5604:
	line	135
	
l7309:	
;lcd.c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5611
	goto	u5610
	
u5611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u5624
u5610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u5624:
	line	136
	
l7311:	
;lcd.c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5631
	goto	u5630
	
u5631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u5644
u5630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u5644:
	line	137
	
l7313:	
;lcd.c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5651
	goto	u5650
	
u5651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u5664
u5650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u5664:
	line	138
;lcd.c: 138: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5967:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5967
	clrwdt
opt asmopt_on

	line	139
	
l7315:	
;lcd.c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd.c: 140: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5977:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5977
	clrwdt
opt asmopt_on

	line	141
	
l7317:	
;lcd.c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2138:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	_enable_interrupt
psect	text1142,local,class=CODE,delta=2
global __ptext1142
__ptext1142:

;; *************** function _enable_interrupt *****************
;; Defined at:
;;		line 22 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_set_counter
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1142
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	line	22
	global	__size_of_enable_interrupt
	__size_of_enable_interrupt	equ	__end_of_enable_interrupt-_enable_interrupt
	
_enable_interrupt:	
	opt	stack 1
; Regs used in _enable_interrupt: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l6761:	
;C_LCD.c: 23: GIE = 1;
	bsf	(95/8),(95)&7
	line	24
;C_LCD.c: 24: PEIE = 1;
	bsf	(94/8),(94)&7
	line	25
;C_LCD.c: 25: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	28
;C_LCD.c: 28: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	29
;C_LCD.c: 29: TMR1CS = 1;
	bsf	(129/8),(129)&7
	line	30
;C_LCD.c: 30: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	31
;C_LCD.c: 31: T1OSCEN = 1;
	bsf	(131/8),(131)&7
	line	32
;C_LCD.c: 32: T1CKPS0 = 0;
	bcf	(132/8),(132)&7
	line	33
;C_LCD.c: 33: T1CKPS1 = 0;
	bcf	(133/8),(133)&7
	line	34
;C_LCD.c: 34: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	35
;C_LCD.c: 35: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	36
	
l6763:	
;C_LCD.c: 36: set_counter();
	fcall	_set_counter
	line	37
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_enable_interrupt
	__end_of_enable_interrupt:
;; =============== function _enable_interrupt ends ============

	signat	_enable_interrupt,88
	global	_uart_puts
psect	text1143,local,class=CODE,delta=2
global __ptext1143
__ptext1143:

;; *************** function _uart_puts *****************
;; Defined at:
;;		line 112 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
;; Parameters:    Size  Location     Type
;;  s               2   15[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(13), displayToLCD@temp(8), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_uart_putc
;; This function is called by:
;;		_displayToLCD
;; This function uses a non-reentrant model
;;
psect	text1143
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
	line	112
	global	__size_of_uart_puts
	__size_of_uart_puts	equ	__end_of_uart_puts-_uart_puts
	
_uart_puts:	
;; using string table level
	opt	stack 1
; Regs used in _uart_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	113
	
l7275:	
;uart.c: 113: while(*s != '\0'){
	goto	l7281
	
l3208:	
	line	114
	
l7277:	
;uart.c: 114: uart_putc(*s);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(uart_puts@s+1),w
	movwf	btemp+1
	movf	(uart_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_uart_putc
	line	115
	
l7279:	
;uart.c: 115: s++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(uart_puts@s),f
	skipnc
	incf	(uart_puts@s+1),f
	movlw	high(01h)
	addwf	(uart_puts@s+1),f
	goto	l7281
	line	116
	
l3207:	
	line	113
	
l7281:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(uart_puts@s+1),w
	movwf	btemp+1
	movf	(uart_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u5491
	goto	u5490
u5491:
	goto	l7277
u5490:
	goto	l3210
	
l3209:	
	line	117
	
l3210:	
	return
	opt stack 0
GLOBAL	__end_of_uart_puts
	__end_of_uart_puts:
;; =============== function _uart_puts ends ============

	signat	_uart_puts,4216
	global	_sprintf
psect	text1144,local,class=CODE,delta=2
global __ptext1144
__ptext1144:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> displayToLCD@temp(8), 
;;  f               1   28[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  sp              1   47[BANK0 ] PTR unsigned char 
;;		 -> displayToLCD@temp(8), 
;;  _val            4   40[BANK0 ] struct .
;;  width           2   45[BANK0 ] int 
;;  c               1   48[BANK0 ] char 
;;  flag            1   44[BANK0 ] unsigned char 
;;  prec            1   39[BANK0 ] char 
;;  ap              1   38[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   28[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       7       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_displayToLCD
;; This function uses a non-reentrant model
;;
psect	text1144
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;; using string table level
	opt	stack 1
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	
l7163:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l7269
	
l3239:	
	line	542
	
l7165:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u5301
	goto	u5300
u5301:
	goto	l7171
u5300:
	line	545
	
l7167:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7169:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l7269
	line	547
	
l3240:	
	line	550
	
l7171:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	552
	
l7173:	
	clrf	(sprintf@flag)
	goto	l7179
	line	554
	
l3241:	
	line	555
	goto	l7179
	line	583
	
l3243:	
	line	584
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	585
	
l7175:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	586
	goto	l7179
	line	588
	
l7177:	
	goto	l7181
	line	555
	
l3242:	
	
l7179:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l3243
	goto	l7181
	opt asmopt_on

	line	588
	
l3245:	
	line	589
	goto	l7181
	line	590
	
l3244:	
	goto	l7179
	
l3246:	
	line	601
	
l7181:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u5311
	goto	u5310
u5311:
	goto	l7193
u5310:
	line	602
	
l7183:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l7185
	line	603
	
l3248:	
	line	604
	
l7185:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@width+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(sprintf@width),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	movwf	(sprintf@width)
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@width)
	
l7187:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	605
	
l7189:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5321
	goto	u5320
u5321:
	goto	l7185
u5320:
	goto	l7193
	
l3249:	
	goto	l7193
	line	611
	
l3247:	
	line	638
	goto	l7193
	line	640
	
l3251:	
	line	641
	goto	l7271
	line	700
	
l3253:	
	goto	l7195
	line	701
	
l3254:	
	line	702
	goto	l7195
	line	805
	
l3256:	
	line	816
	goto	l7269
	line	825
	
l7191:	
	goto	l7195
	line	638
	
l3250:	
	
l7193:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l7271
	xorlw	100^0	; case 100
	skipnz
	goto	l7195
	xorlw	105^100	; case 105
	skipnz
	goto	l7195
	goto	l7269
	opt asmopt_on

	line	825
	
l3255:	
	line	1254
	
l7195:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l7197:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1256
	
l7199:	
	btfss	(sprintf@_val+1),7
	goto	u5331
	goto	u5330
u5331:
	goto	l7205
u5330:
	line	1257
	
l7201:	
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1258
	
l7203:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l7205
	line	1259
	
l3257:	
	line	1300
	
l7205:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l7207:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l7211
u5340:
	goto	l7219
	
l7209:	
	goto	l7219
	line	1301
	
l3258:	
	
l7211:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u5355
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u5355:
	skipnc
	goto	u5351
	goto	u5350
u5351:
	goto	l7215
u5350:
	goto	l7219
	line	1302
	
l7213:	
	goto	l7219
	
l3260:	
	line	1300
	
l7215:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l7217:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l7211
u5360:
	goto	l7219
	
l3259:	
	line	1340
	
l7219:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u5371
	goto	u5370
u5371:
	goto	l3261
u5370:
	
l7221:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l3261
u5380:
	line	1341
	
l7223:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l3261:	
	line	1376
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u5395
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u5395:

	skipnc
	goto	u5391
	goto	u5390
u5391:
	goto	l7227
u5390:
	line	1377
	
l7225:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l7229
	line	1378
	
l3262:	
	line	1379
	
l7227:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l7229
	
l3263:	
	line	1382
	
l7229:	
	btfss	(sprintf@flag),(2)&7
	goto	u5401
	goto	u5400
u5401:
	goto	l7245
u5400:
	line	1387
	
l7231:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u5411
	goto	u5410
u5411:
	goto	l7237
u5410:
	line	1388
	
l7233:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7235:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l7237
	
l3265:	
	line	1410
	
l7237:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u5421
	goto	u5420
u5421:
	goto	l7259
u5420:
	goto	l7239
	line	1411
	
l3267:	
	line	1412
	
l7239:	
	movlw	(030h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7241:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1413
	
l7243:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u5431
	goto	u5430
u5431:
	goto	l7239
u5430:
	goto	l7259
	
l3268:	
	goto	l7259
	
l3266:	
	line	1415
	goto	l7259
	
l3264:	
	line	1423
	
l7245:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u5441
	goto	u5440
u5441:
	goto	l7253
u5440:
	goto	l7247
	line	1424
	
l3271:	
	line	1425
	
l7247:	
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7249:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1426
	
l7251:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u5451
	goto	u5450
u5451:
	goto	l7247
u5450:
	goto	l7253
	
l3272:	
	goto	l7253
	
l3270:	
	line	1433
	
l7253:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u5461
	goto	u5460
u5461:
	goto	l7259
u5460:
	line	1434
	
l7255:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7257:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l7259
	
l3273:	
	goto	l7259
	line	1464
	
l3269:	
	line	1467
	
l7259:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l7267
	
l3275:	
	line	1484
	
l7261:	
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1516
	
l7263:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l7265:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l7267
	line	1517
	
l3274:	
	line	1469
	
l7267:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u5471
	goto	u5470
u5471:
	goto	l7261
u5470:
	goto	l7269
	
l3276:	
	goto	l7269
	line	1525
	
l3238:	
	line	540
	
l7269:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u5481
	goto	u5480
u5481:
	goto	l7165
u5480:
	goto	l7271
	
l3277:	
	goto	l7271
	line	1527
	
l3252:	
	line	1530
	
l7271:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l3278
	line	1532
	
l7273:	
	line	1533
;	Return value of _sprintf is never used
	
l3278:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	___lwmod
psect	text1145,local,class=CODE,delta=2
global __ptext1145
__ptext1145:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   22[BANK0 ] unsigned int 
;;  dividend        2   24[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   22[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1145
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 0
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l7027:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u4961
	goto	u4960
u4961:
	goto	l7045
u4960:
	line	9
	
l7029:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l7035
	
l4303:	
	line	11
	
l7031:	
	movlw	01h
	
u4975:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4975
	line	12
	
l7033:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l7035
	line	13
	
l4302:	
	line	10
	
l7035:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l7031
u4980:
	goto	l7037
	
l4304:	
	goto	l7037
	line	14
	
l4305:	
	line	15
	
l7037:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4995
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4995:
	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l7041
u4990:
	line	16
	
l7039:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l7041
	
l4306:	
	line	17
	
l7041:	
	movlw	01h
	
u5005:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u5005
	line	18
	
l7043:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l7037
u5010:
	goto	l7045
	
l4307:	
	goto	l7045
	line	19
	
l4301:	
	line	20
	
l7045:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l4308
	
l7047:	
	line	21
	
l4308:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1146,local,class=CODE,delta=2
global __ptext1146
__ptext1146:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   14[BANK0 ] unsigned int 
;;  dividend        2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   20[BANK0 ] unsigned int 
;;  counter         1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1146
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 0
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l7001:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l7003:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4891
	goto	u4890
u4891:
	goto	l7023
u4890:
	line	11
	
l7005:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l7011
	
l4293:	
	line	13
	
l7007:	
	movlw	01h
	
u4905:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4905
	line	14
	
l7009:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l7011
	line	15
	
l4292:	
	line	12
	
l7011:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l7007
u4910:
	goto	l7013
	
l4294:	
	goto	l7013
	line	16
	
l4295:	
	line	17
	
l7013:	
	movlw	01h
	
u4925:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4925
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4935
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4935:
	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l7019
u4930:
	line	19
	
l7015:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l7017:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l7019
	line	21
	
l4296:	
	line	22
	
l7019:	
	movlw	01h
	
u4945:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4945
	line	23
	
l7021:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4951
	goto	u4950
u4951:
	goto	l7013
u4950:
	goto	l7023
	
l4297:	
	goto	l7023
	line	24
	
l4291:	
	line	25
	
l7023:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l4298
	
l7025:	
	line	26
	
l4298:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text1147,local,class=CODE,delta=2
global __ptext1147
__ptext1147:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   14[BANK0 ] unsigned int 
;;  multiplicand    2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   18[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1147
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 0
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6989:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l6991
	line	6
	
l4285:	
	line	7
	
l6991:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l4286
u4850:
	line	8
	
l6993:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l4286:	
	line	9
	movlw	01h
	
u4865:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u4865
	line	10
	
l6995:	
	movlw	01h
	
u4875:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u4875
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l6991
u4880:
	goto	l6997
	
l4287:	
	line	12
	
l6997:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l4288
	
l6999:	
	line	13
	
l4288:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text1148,local,class=CODE,delta=2
global __ptext1148
__ptext1148:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1148
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 0
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l6977:	
	clrf	(_isdigit$4891)
	
l6979:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u4831
	goto	u4830
u4831:
	goto	l6985
u4830:
	
l6981:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l6985
u4840:
	
l6983:	
	clrf	(_isdigit$4891)
	bsf	status,0
	rlf	(_isdigit$4891),f
	goto	l6985
	
l4262:	
	
l6985:	
	rrf	(_isdigit$4891),w
	
	goto	l4263
	
l6987:	
	line	15
	
l4263:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_uart_putc
psect	text1149,local,class=CODE,delta=2
global __ptext1149
__ptext1149:

;; *************** function _uart_putc *****************
;; Defined at:
;;		line 107 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_puts
;; This function uses a non-reentrant model
;;
psect	text1149
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
	line	107
	global	__size_of_uart_putc
	__size_of_uart_putc	equ	__end_of_uart_putc-_uart_putc
	
_uart_putc:	
	opt	stack 0
; Regs used in _uart_putc: [wreg]
;uart_putc@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uart_putc@c)
	line	108
	
l6973:	
;uart.c: 108: while(!TXIF);
	goto	l3201
	
l3202:	
	
l3201:	
	btfss	(100/8),(100)&7
	goto	u4821
	goto	u4820
u4821:
	goto	l3201
u4820:
	goto	l6975
	
l3203:	
	line	109
	
l6975:	
;uart.c: 109: TXREG = c;
	movf	(uart_putc@c),w
	movwf	(25)	;volatile
	line	110
	
l3204:	
	return
	opt stack 0
GLOBAL	__end_of_uart_putc
	__end_of_uart_putc:
;; =============== function _uart_putc ends ============

	signat	_uart_putc,4216
	global	_isprint
psect	text1150,local,class=CODE,delta=2
global __ptext1150
__ptext1150:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1150
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isprint@c)
	line	14
	
l6961:	
	clrf	(_isprint$4894)
	
l6963:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u4801
	goto	u4800
u4801:
	goto	l6969
u4800:
	
l6965:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l6969
u4810:
	
l6967:	
	clrf	(_isprint$4894)
	bsf	status,0
	rlf	(_isprint$4894),f
	goto	l6969
	
l4267:	
	
l6969:	
	rrf	(_isprint$4894),w
	
	goto	l4268
	
l6971:	
	line	15
	
l4268:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_uart_init
psect	text1151,local,class=CODE,delta=2
global __ptext1151
__ptext1151:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 5 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1151
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
	line	5
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 2
; Regs used in _uart_init: [wreg]
	line	89
	
l6389:	
;uart.c: 89: SPBRG=(4000000/(16UL * 9600))-1;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	90
	
l6391:	
;uart.c: 90: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	93
	
l6393:	
;uart.c: 93: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	line	94
	
l6395:	
;uart.c: 94: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	95
	
l6397:	
;uart.c: 95: CREN=1;
	bsf	(196/8),(196)&7
	line	96
	
l6399:	
;uart.c: 96: SREN=0;
	bcf	(197/8),(197)&7
	line	97
	
l6401:	
;uart.c: 97: TXIE=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7
	line	98
	
l6403:	
;uart.c: 98: RCIE=0;
	bcf	(1125/8)^080h,(1125)&7
	line	99
	
l6405:	
;uart.c: 99: TX9=0;
	bcf	(1222/8)^080h,(1222)&7
	line	100
	
l6407:	
;uart.c: 100: RX9=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	101
	
l6409:	
;uart.c: 101: TXEN=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1221/8)^080h,(1221)&7
	line	102
	
l6411:	
;uart.c: 102: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	103
	
l6413:	
;uart.c: 103: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	104
	
l6415:	
;uart.c: 104: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	105
	
l3198:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_set_counter
psect	text1152,local,class=CODE,delta=2
global __ptext1152
__ptext1152:

;; *************** function _set_counter *****************
;; Defined at:
;;		line 18 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_enable_interrupt
;; This function uses a non-reentrant model
;;
psect	text1152
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	line	18
	global	__size_of_set_counter
	__size_of_set_counter	equ	__end_of_set_counter-_set_counter
	
_set_counter:	
	opt	stack 1
; Regs used in _set_counter: [wreg+status,2]
	line	19
	
l6323:	
;C_LCD.c: 19: TMR1H = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	20
	
l6325:	
;C_LCD.c: 20: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	21
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_set_counter
	__end_of_set_counter:
;; =============== function _set_counter ends ============

	signat	_set_counter,88
	global	_inter_func
psect	text1153,local,class=CODE,delta=2
global __ptext1153
__ptext1153:

;; *************** function _inter_func *****************
;; Defined at:
;;		line 39 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  input           8    6[BANK0 ] unsigned char [8]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		i1_set_counter
;;		_uart_gets
;;		_strcmp
;;		i1_lcd_clear
;;		i1_uart_puts
;;		i1_lcd_puts
;;		i1___wmul
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1153
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	line	39
	global	__size_of_inter_func
	__size_of_inter_func	equ	__end_of_inter_func-_inter_func
	
_inter_func:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _inter_func: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_inter_func+2)
	movf	fsr0,w
	movwf	(??_inter_func+3)
	movf	pclath,w
	movwf	(??_inter_func+4)
	movf	btemp+1,w
	movwf	(??_inter_func+5)
	ljmp	_inter_func
psect	text1153
	line	40
	
i1l6919:	
;C_LCD.c: 40: if(TMR1IE && TMR1IF){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u472_21
	goto	u472_20
u472_21:
	goto	i1l6945
u472_20:
	
i1l6921:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u473_21
	goto	u473_20
u473_21:
	goto	i1l6945
u473_20:
	line	42
	
i1l6923:	
;C_LCD.c: 42: second = second + 1;
	movf	(_second),w
	addlw	low(01h)
	movwf	(_second)
	movf	(_second+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_second)
	line	43
	
i1l6925:	
;C_LCD.c: 43: if(second > 59){
	movf	(_second+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u474_25
	movlw	low(03Ch)
	subwf	(_second),w
u474_25:

	skipc
	goto	u474_21
	goto	u474_20
u474_21:
	goto	i1l6941
u474_20:
	line	44
	
i1l6927:	
;C_LCD.c: 44: second = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_second)
	clrf	(_second+1)
	line	45
	
i1l6929:	
;C_LCD.c: 45: minute = minute + 1;
	movf	(_minute),w
	addlw	low(01h)
	movwf	(_minute)
	movf	(_minute+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_minute)
	line	46
	
i1l6931:	
;C_LCD.c: 46: if(minute > 59){
	movf	(_minute+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u475_25
	movlw	low(03Ch)
	subwf	(_minute),w
u475_25:

	skipc
	goto	u475_21
	goto	u475_20
u475_21:
	goto	i1l6941
u475_20:
	line	47
	
i1l6933:	
;C_LCD.c: 47: minute = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_minute)
	clrf	(_minute+1)
	line	48
	
i1l6935:	
;C_LCD.c: 48: hour = hour + 1;
	movf	(_hour),w
	addlw	low(01h)
	movwf	(_hour)
	movf	(_hour+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_hour)
	line	49
	
i1l6937:	
;C_LCD.c: 49: if(hour > 23){
	movf	(_hour+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(018h))^80h
	subwf	btemp+1,w
	skipz
	goto	u476_25
	movlw	low(018h)
	subwf	(_hour),w
u476_25:

	skipc
	goto	u476_21
	goto	u476_20
u476_21:
	goto	i1l6941
u476_20:
	line	50
	
i1l6939:	
;C_LCD.c: 50: hour = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_hour)
	clrf	(_hour+1)
	goto	i1l6941
	line	51
	
i1l1061:	
	goto	i1l6941
	line	52
	
i1l1060:	
	goto	i1l6941
	line	53
	
i1l1059:	
	line	54
	
i1l6941:	
;C_LCD.c: 51: }
;C_LCD.c: 52: }
;C_LCD.c: 53: }
;C_LCD.c: 54: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	55
	
i1l6943:	
;C_LCD.c: 55: set_counter();
	fcall	i1_set_counter
	goto	i1l6945
	line	56
	
i1l1058:	
	line	59
	
i1l6945:	
;C_LCD.c: 56: }
;C_LCD.c: 58: char input[8];
;C_LCD.c: 59: if(RCIE && RCIF){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u477_21
	goto	u477_20
u477_21:
	goto	i1l1065
u477_20:
	
i1l6947:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u478_21
	goto	u478_20
u478_21:
	goto	i1l1065
u478_20:
	line	61
	
i1l6949:	
;C_LCD.c: 61: uart_gets(&input);
	movlw	(inter_func@input)&0ffh
	fcall	_uart_gets
	line	62
;C_LCD.c: 62: if(strcmp(input,"pic16f887?") == 0){
	movlw	((STR_2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_inter_func+0)+0
	movf	(??_inter_func+0)+0,w
	movwf	(?_strcmp)
	movlw	(inter_func@input)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u479_21
	goto	u479_20
u479_21:
	goto	i1l6957
u479_20:
	line	63
	
i1l6951:	
;C_LCD.c: 63: lcd_clear();
	fcall	i1_lcd_clear
	line	64
	
i1l6953:	
;C_LCD.c: 64: uart_puts("I am 16f887\n");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	i1_uart_puts
	line	65
	
i1l6955:	
;C_LCD.c: 65: lcd_puts("Connecting..");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	i1_lcd_puts
	line	66
;C_LCD.c: 66: }else{
	goto	i1l6959
	
i1l1063:	
	line	67
	
i1l6957:	
;C_LCD.c: 67: hour = (input[0]-'0')*10 + input[1]-'0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(inter_func@input),w
	addlw	low(0FFD0h)
	movwf	(?i1___wmul)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((?i1___wmul))+1
	movlw	low(0Ah)
	movwf	0+(?i1___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?i1___wmul)+02h)+1
	fcall	i1___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(inter_func@input)+01h,w
	addwf	(0+(?i1___wmul)),w
	movwf	(??_inter_func+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?i1___wmul)),w
	movwf	1+(??_inter_func+0)+0
	movf	0+(??_inter_func+0)+0,w
	addlw	low(0FFD0h)
	movwf	(_hour)
	movf	1+(??_inter_func+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(_hour)
	line	68
;C_LCD.c: 68: minute = (input[3]-'0')*10 + input[4]-'0';
	movf	0+(inter_func@input)+03h,w
	addlw	low(0FFD0h)
	movwf	(?i1___wmul)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((?i1___wmul))+1
	movlw	low(0Ah)
	movwf	0+(?i1___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?i1___wmul)+02h)+1
	fcall	i1___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(inter_func@input)+04h,w
	addwf	(0+(?i1___wmul)),w
	movwf	(??_inter_func+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?i1___wmul)),w
	movwf	1+(??_inter_func+0)+0
	movf	0+(??_inter_func+0)+0,w
	addlw	low(0FFD0h)
	movwf	(_minute)
	movf	1+(??_inter_func+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(_minute)
	line	69
;C_LCD.c: 69: second = (input[6]-'0')*10 + input[7]-'0';
	movf	0+(inter_func@input)+06h,w
	addlw	low(0FFD0h)
	movwf	(?i1___wmul)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((?i1___wmul))+1
	movlw	low(0Ah)
	movwf	0+(?i1___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?i1___wmul)+02h)+1
	fcall	i1___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(inter_func@input)+07h,w
	addwf	(0+(?i1___wmul)),w
	movwf	(??_inter_func+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?i1___wmul)),w
	movwf	1+(??_inter_func+0)+0
	movf	0+(??_inter_func+0)+0,w
	addlw	low(0FFD0h)
	movwf	(_second)
	movf	1+(??_inter_func+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(_second)
	goto	i1l6959
	line	70
	
i1l1064:	
	line	71
	
i1l6959:	
;C_LCD.c: 70: }
;C_LCD.c: 71: RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	goto	i1l1065
	line	72
	
i1l1062:	
	line	73
	
i1l1065:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_inter_func+5),w
	movwf	btemp+1
	movf	(??_inter_func+4),w
	movwf	pclath
	movf	(??_inter_func+3),w
	movwf	fsr0
	swapf	(??_inter_func+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_inter_func
	__end_of_inter_func:
;; =============== function _inter_func ends ============

	signat	_inter_func,88
	global	i1_lcd_puts
psect	text1154,local,class=CODE,delta=2
global __ptext1154
__ptext1154:

;; *************** function i1_lcd_puts *****************
;; Defined at:
;;		line 175 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  lcd_puts        1    wreg     PTR const unsigned char 
;;		 -> STR_4(13), 
;; Auto vars:     Size  Location     Type
;;  lcd_puts        1   11[COMMON] PTR const unsigned char 
;;		 -> STR_4(13), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		i1_lcd_putc
;; This function is called by:
;;		_inter_func
;; This function uses a non-reentrant model
;;
psect	text1154
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	175
	global	__size_ofi1_lcd_puts
	__size_ofi1_lcd_puts	equ	__end_ofi1_lcd_puts-i1_lcd_puts
	
i1_lcd_puts:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;i1lcd_puts@s stored from wreg
	movwf	(i1lcd_puts@s)
	line	176
	
i1l7127:	
;lcd.c: 176: while(*s){
	goto	i1l7133
	
i1l2165:	
	line	177
	
i1l7129:	
;lcd.c: 177: lcd_putc(*s++);
	movf	(i1lcd_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	i1_lcd_putc
	
i1l7131:	
	movlw	low(01h)
	addwf	(i1lcd_puts@s),f
	skipnc
	incf	(i1lcd_puts@s+1),f
	movlw	high(01h)
	addwf	(i1lcd_puts@s+1),f
	goto	i1l7133
	line	178
	
i1l2164:	
	line	176
	
i1l7133:	
	movf	(i1lcd_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u524_21
	goto	u524_20
u524_21:
	goto	i1l7129
u524_20:
	goto	i1l2167
	
i1l2166:	
	line	179
	
i1l2167:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_puts
	__end_ofi1_lcd_puts:
;; =============== function i1_lcd_puts ends ============

	signat	i1_lcd_puts,88
	global	i1_lcd_putc
psect	text1155,local,class=CODE,delta=2
global __ptext1155
__ptext1155:

;; *************** function i1_lcd_putc *****************
;; Defined at:
;;		line 143 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  lcd_putc        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lcd_putc        1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_lcd_put_byte
;;		i1_lcd_busy
;;		i1_lcd_gotoxy
;;		i1_isprint
;; This function is called by:
;;		i1_lcd_puts
;; This function uses a non-reentrant model
;;
psect	text1155
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	143
	global	__size_ofi1_lcd_putc
	__size_ofi1_lcd_putc	equ	__end_ofi1_lcd_putc-i1_lcd_putc
	
i1_lcd_putc:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;i1lcd_putc@c stored from wreg
	movwf	(i1lcd_putc@c)
	line	144
	
i1l7099:	
;lcd.c: 144: switch(c){
	goto	i1l7115
	line	145
;lcd.c: 145: case '\f':
	
i1l2142:	
	line	146
	
i1l7101:	
;lcd.c: 146: lcd_put_byte(0, 1);
	clrf	(?i1_lcd_put_byte)
	bsf	status,0
	rlf	(?i1_lcd_put_byte),f
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	147
;lcd.c: 147: while(lcd_busy());
	goto	i1l7103
	
i1l2144:	
	goto	i1l7103
	
i1l2143:	
	
i1l7103:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u519_21
	goto	u519_20
u519_21:
	goto	i1l7103
u519_20:
	goto	i1l2153
	
i1l2145:	
	line	148
;lcd.c: 148: break;
	goto	i1l2153
	line	149
;lcd.c: 149: case '\n':
	
i1l2147:	
	line	150
	
i1l7105:	
;lcd.c: 150: lcd_gotoxy(0, 1);
	clrf	(?i1_lcd_gotoxy)
	bsf	status,0
	rlf	(?i1_lcd_gotoxy),f
	movlw	(0)
	fcall	i1_lcd_gotoxy
	line	151
;lcd.c: 151: break;
	goto	i1l2153
	line	152
;lcd.c: 152: default:
	
i1l2148:	
	line	153
	
i1l7107:	
;lcd.c: 153: if(isprint(c)){
	movf	(i1lcd_putc@c),w
	fcall	i1_isprint
	btfss	status,0
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l2153
u520_20:
	line	154
	
i1l7109:	
;lcd.c: 154: lcd_put_byte(1, c);
	movf	(i1lcd_putc@c),w
	movwf	(??i1_lcd_putc+0)+0
	movf	(??i1_lcd_putc+0)+0,w
	movwf	(?i1_lcd_put_byte)
	movlw	(01h)
	fcall	i1_lcd_put_byte
	line	155
;lcd.c: 155: while(lcd_busy());
	goto	i1l7111
	
i1l2151:	
	goto	i1l7111
	
i1l2150:	
	
i1l7111:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l7111
u521_20:
	goto	i1l2153
	
i1l2152:	
	goto	i1l2153
	line	156
	
i1l2149:	
	line	157
;lcd.c: 156: }
;lcd.c: 157: break;
	goto	i1l2153
	line	158
	
i1l7113:	
;lcd.c: 158: }
	goto	i1l2153
	line	144
	
i1l2141:	
	
i1l7115:	
	movf	(i1lcd_putc@c),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	10^0	; case 10
	skipnz
	goto	i1l7105
	xorlw	12^10	; case 12
	skipnz
	goto	i1l7101
	goto	i1l7107
	opt asmopt_on

	line	158
	
i1l2146:	
	line	159
	
i1l2153:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_putc
	__end_ofi1_lcd_putc:
;; =============== function i1_lcd_putc ends ============

	signat	i1_lcd_putc,88
	global	i1_lcd_clear
psect	text1156,local,class=CODE,delta=2
global __ptext1156
__ptext1156:

;; *************** function i1_lcd_clear *****************
;; Defined at:
;;		line 182 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_lcd_put_byte
;;		i1_lcd_busy
;; This function is called by:
;;		_inter_func
;; This function uses a non-reentrant model
;;
psect	text1156
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	182
	global	__size_ofi1_lcd_clear
	__size_ofi1_lcd_clear	equ	__end_ofi1_lcd_clear-i1_lcd_clear
	
i1_lcd_clear:	
	opt	stack 0
; Regs used in i1_lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	183
	
i1l7135:	
;lcd.c: 183: lcd_put_byte(0,0x01);
	clrf	(?i1_lcd_put_byte)
	bsf	status,0
	rlf	(?i1_lcd_put_byte),f
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	184
;lcd.c: 184: while(lcd_busy());
	goto	i1l7137
	
i1l2171:	
	goto	i1l7137
	
i1l2170:	
	
i1l7137:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u525_21
	goto	u525_20
u525_21:
	goto	i1l7137
u525_20:
	goto	i1l2173
	
i1l2172:	
	line	185
	
i1l2173:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_clear
	__end_ofi1_lcd_clear:
;; =============== function i1_lcd_clear ends ============

	signat	i1_lcd_clear,88
	global	i1_lcd_gotoxy
psect	text1157,local,class=CODE,delta=2
global __ptext1157
__ptext1157:

;; *************** function i1_lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  lcd_gotoxy      1    wreg     unsigned char 
;;  lcd_gotoxy      1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lcd_gotoxy      1    7[COMMON] unsigned char 
;;  lcd_gotoxy      1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_lcd_put_byte
;;		i1_lcd_busy
;; This function is called by:
;;		i1_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1157
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	162
	global	__size_ofi1_lcd_gotoxy
	__size_ofi1_lcd_gotoxy	equ	__end_ofi1_lcd_gotoxy-i1_lcd_gotoxy
	
i1_lcd_gotoxy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;i1lcd_gotoxy@col stored from wreg
	line	165
	movwf	(i1lcd_gotoxy@col)
	
i1l7117:	
;lcd.c: 163: unsigned char address;
;lcd.c: 165: if(row!=0)
	movf	(i1lcd_gotoxy@row),w
	skipz
	goto	u522_20
	goto	i1l2156
u522_20:
	line	166
	
i1l7119:	
;lcd.c: 166: address=0x40;
	movlw	(040h)
	movwf	(??i1_lcd_gotoxy+0)+0
	movf	(??i1_lcd_gotoxy+0)+0,w
	movwf	(i1lcd_gotoxy@address)
	goto	i1l7121
	line	167
	
i1l2156:	
	line	168
;lcd.c: 167: else
;lcd.c: 168: address=0;
	clrf	(i1lcd_gotoxy@address)
	goto	i1l7121
	
i1l2157:	
	line	170
	
i1l7121:	
;lcd.c: 170: address += col;
	movf	(i1lcd_gotoxy@col),w
	movwf	(??i1_lcd_gotoxy+0)+0
	movf	(??i1_lcd_gotoxy+0)+0,w
	addwf	(i1lcd_gotoxy@address),f
	line	171
	
i1l7123:	
;lcd.c: 171: lcd_put_byte(0,0x80|address);
	movf	(i1lcd_gotoxy@address),w
	iorlw	080h
	movwf	(??i1_lcd_gotoxy+0)+0
	movf	(??i1_lcd_gotoxy+0)+0,w
	movwf	(?i1_lcd_put_byte)
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	172
;lcd.c: 172: while(lcd_busy());
	goto	i1l7125
	
i1l2159:	
	goto	i1l7125
	
i1l2158:	
	
i1l7125:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u523_21
	goto	u523_20
u523_21:
	goto	i1l7125
u523_20:
	goto	i1l2161
	
i1l2160:	
	line	173
	
i1l2161:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_gotoxy
	__end_ofi1_lcd_gotoxy:
;; =============== function i1_lcd_gotoxy ends ============

	signat	i1_lcd_gotoxy,88
	global	i1_uart_puts
psect	text1158,local,class=CODE,delta=2
global __ptext1158
__ptext1158:

;; *************** function i1_uart_puts *****************
;; Defined at:
;;		line 112 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
;; Parameters:    Size  Location     Type
;;  uart_puts       1    wreg     PTR const unsigned char 
;;		 -> STR_3(13), 
;; Auto vars:     Size  Location     Type
;;  uart_puts       1    1[COMMON] PTR const unsigned char 
;;		 -> STR_3(13), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_uart_putc
;; This function is called by:
;;		_inter_func
;; This function uses a non-reentrant model
;;
psect	text1158
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
	line	112
	global	__size_ofi1_uart_puts
	__size_ofi1_uart_puts	equ	__end_ofi1_uart_puts-i1_uart_puts
	
i1_uart_puts:	
;; using string table level
	opt	stack 1
; Regs used in i1_uart_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;i1uart_puts@s stored from wreg
	movwf	(i1uart_puts@s)
	line	113
	
i1l7143:	
;uart.c: 113: while(*s != '\0'){
	goto	i1l7149
	
i1l3208:	
	line	114
	
i1l7145:	
;uart.c: 114: uart_putc(*s);
	movf	(i1uart_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1uart_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	i1_uart_putc
	line	115
	
i1l7147:	
;uart.c: 115: s++;
	movlw	low(01h)
	addwf	(i1uart_puts@s),f
	skipnc
	incf	(i1uart_puts@s+1),f
	movlw	high(01h)
	addwf	(i1uart_puts@s+1),f
	goto	i1l7149
	line	116
	
i1l3207:	
	line	113
	
i1l7149:	
	movf	(i1uart_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1uart_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u527_21
	goto	u527_20
u527_21:
	goto	i1l7145
u527_20:
	goto	i1l3210
	
i1l3209:	
	line	117
	
i1l3210:	
	return
	opt stack 0
GLOBAL	__end_ofi1_uart_puts
	__end_ofi1_uart_puts:
;; =============== function i1_uart_puts ends ============

	signat	i1_uart_puts,88
	global	i1_lcd_put_byte
psect	text1159,local,class=CODE,delta=2
global __ptext1159
__ptext1159:

;; *************** function i1_lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  lcd_put_byte    1    wreg     unsigned char 
;;  lcd_put_byte    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lcd_put_byte    1    3[COMMON] unsigned char 
;;  lcd_put_byte    1    4[COMMON] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_lcd_putc
;;		i1_lcd_gotoxy
;;		i1_lcd_clear
;; This function uses a non-reentrant model
;;
psect	text1159
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	106
	global	__size_ofi1_lcd_put_byte
	__size_ofi1_lcd_put_byte	equ	__end_ofi1_lcd_put_byte-i1_lcd_put_byte
	
i1_lcd_put_byte:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_lcd_put_byte: [wreg+status,2+status,0]
;i1lcd_put_byte@rs stored from wreg
	line	109
	movwf	(i1lcd_put_byte@rs)
	
i1l7063:	
;lcd.c: 107: BYTE_VAL temp;
;lcd.c: 109: TRISD4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1092/8)^080h,(1092)&7
	line	110
;lcd.c: 110: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	111
;lcd.c: 111: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	112
;lcd.c: 112: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	114
;lcd.c: 114: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	115
	
i1l7065:	
;lcd.c: 115: if(rs) RD1 = 1;
	movf	(i1lcd_put_byte@rs),w
	skipz
	goto	u502_20
	goto	i1l7069
u502_20:
	
i1l7067:	
	bsf	(65/8),(65)&7
	goto	i1l7069
	
i1l2137:	
	line	117
	
i1l7069:	
;lcd.c: 117: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_put_byte+0)+0,f
u598_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u598_27
	clrwdt
opt asmopt_on

	line	118
	
i1l7071:	
;lcd.c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd.c: 119: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_put_byte+0)+0,f
u599_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u599_27
	clrwdt
opt asmopt_on

	line	120
	
i1l7073:	
;lcd.c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd.c: 122: temp.Val = b;
	movf	(i1lcd_put_byte@b),w
	movwf	(??i1_lcd_put_byte+0)+0
	movf	(??i1_lcd_put_byte+0)+0,w
	movwf	(i1lcd_put_byte@temp)
	line	125
	
i1l7075:	
;lcd.c: 125: RD4 = temp.bits.b4;
	swapf	(i1lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u503_21
	goto	u503_20
	
u503_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u504_24
u503_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u504_24:
	line	126
	
i1l7077:	
;lcd.c: 126: RD5 = temp.bits.b5;
	swapf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u505_21
	goto	u505_20
	
u505_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u506_24
u505_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u506_24:
	line	127
	
i1l7079:	
;lcd.c: 127: RD6 = temp.bits.b6;
	swapf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,f
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u507_21
	goto	u507_20
	
u507_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u508_24
u507_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u508_24:
	line	128
	
i1l7081:	
;lcd.c: 128: RD7 = temp.bits.b7;
	rlf	(i1lcd_put_byte@temp),w
	rlf	(i1lcd_put_byte@temp),w
	andlw	1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u509_21
	goto	u509_20
	
u509_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u510_24
u509_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u510_24:
	line	129
;lcd.c: 129: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_put_byte+0)+0,f
u600_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u600_27
	clrwdt
opt asmopt_on

	line	130
	
i1l7083:	
;lcd.c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd.c: 131: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_put_byte+0)+0,f
u601_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u601_27
	clrwdt
opt asmopt_on

	line	132
	
i1l7085:	
;lcd.c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
i1l7087:	
;lcd.c: 134: RD4 = temp.bits.b0;
	movf	(i1lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u511_21
	goto	u511_20
	
u511_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u512_24
u511_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u512_24:
	line	135
	
i1l7089:	
;lcd.c: 135: RD5 = temp.bits.b1;
	rrf	(i1lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u513_21
	goto	u513_20
	
u513_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u514_24
u513_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u514_24:
	line	136
	
i1l7091:	
;lcd.c: 136: RD6 = temp.bits.b2;
	rrf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u515_21
	goto	u515_20
	
u515_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u516_24
u515_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u516_24:
	line	137
	
i1l7093:	
;lcd.c: 137: RD7 = temp.bits.b3;
	rrf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,f
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u517_21
	goto	u517_20
	
u517_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u518_24
u517_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u518_24:
	line	138
;lcd.c: 138: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_put_byte+0)+0,f
u602_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u602_27
	clrwdt
opt asmopt_on

	line	139
	
i1l7095:	
;lcd.c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd.c: 140: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_put_byte+0)+0,f
u603_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u603_27
	clrwdt
opt asmopt_on

	line	141
	
i1l7097:	
;lcd.c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
i1l2138:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_put_byte
	__end_ofi1_lcd_put_byte:
;; =============== function i1_lcd_put_byte ends ============

	signat	i1_lcd_put_byte,88
	global	i1_lcd_busy
psect	text1160,local,class=CODE,delta=2
global __ptext1160
__ptext1160:

;; *************** function i1_lcd_busy *****************
;; Defined at:
;;		line 47 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lcd_busy        1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_lcd_putc
;;		i1_lcd_gotoxy
;;		i1_lcd_clear
;; This function uses a non-reentrant model
;;
psect	text1160
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\lcd.c"
	line	47
	global	__size_ofi1_lcd_busy
	__size_ofi1_lcd_busy	equ	__end_ofi1_lcd_busy-i1_lcd_busy
	
i1_lcd_busy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_lcd_busy: [wreg]
	line	50
	
i1l7049:	
;lcd.c: 48: unsigned char busy;
;lcd.c: 50: TRISD4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1092/8)^080h,(1092)&7
	line	51
;lcd.c: 51: TRISD5 = 1;
	bsf	(1093/8)^080h,(1093)&7
	line	52
;lcd.c: 52: TRISD6 = 1;
	bsf	(1094/8)^080h,(1094)&7
	line	53
;lcd.c: 53: TRISD7 = 1;
	bsf	(1095/8)^080h,(1095)&7
	line	55
;lcd.c: 55: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	56
;lcd.c: 56: RD1 = 0;
	bcf	(65/8),(65)&7
	line	57
	
i1l7051:	
;lcd.c: 57: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_busy+0)+0,f
u604_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u604_27
	clrwdt
opt asmopt_on

	line	58
	
i1l7053:	
;lcd.c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd.c: 59: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_busy+0)+0,f
u605_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u605_27
	clrwdt
opt asmopt_on

	line	61
;lcd.c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	movwf	(??i1_lcd_busy+0)+0
	movf	(??i1_lcd_busy+0)+0,w
	movwf	(i1lcd_busy@busy)
	line	63
	
i1l7055:	
;lcd.c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd.c: 64: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_busy+0)+0,f
u606_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u606_27
	clrwdt
opt asmopt_on

	line	65
	
i1l7057:	
;lcd.c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd.c: 66: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??i1_lcd_busy+0)+0,f
u607_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u607_27
	clrwdt
opt asmopt_on

	line	67
	
i1l7059:	
;lcd.c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd.c: 70: return busy;
	movf	(i1lcd_busy@busy),w
	goto	i1l2130
	
i1l7061:	
	line	71
	
i1l2130:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_busy
	__end_ofi1_lcd_busy:
;; =============== function i1_lcd_busy ends ============

	signat	i1_lcd_busy,89
	global	_uart_gets
psect	text1161,local,class=CODE,delta=2
global __ptext1161
__ptext1161:

;; *************** function _uart_gets *****************
;; Defined at:
;;		line 126 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR unsigned char 
;;		 -> inter_func@input(8), 
;; Auto vars:     Size  Location     Type
;;  s               1    1[COMMON] PTR unsigned char 
;;		 -> inter_func@input(8), 
;;  g               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_getc
;; This function is called by:
;;		_inter_func
;; This function uses a non-reentrant model
;;
psect	text1161
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
	line	126
	global	__size_of_uart_gets
	__size_of_uart_gets	equ	__end_of_uart_gets-_uart_gets
	
_uart_gets:	
	opt	stack 0
; Regs used in _uart_gets: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;uart_gets@s stored from wreg
	line	128
	movwf	(uart_gets@s)
	
i1l6371:	
;uart.c: 127: char g;
;uart.c: 128: *s = uart_getc();
	fcall	_uart_getc
	movwf	(??_uart_gets+0)+0
	movf	(uart_gets@s),w
	movwf	fsr0
	movf	(??_uart_gets+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	129
;uart.c: 129: while(*s!='\0'){
	goto	i1l6377
	
i1l3225:	
	line	130
	
i1l6373:	
;uart.c: 130: s++;
	movlw	(01h)
	movwf	(??_uart_gets+0)+0
	movf	(??_uart_gets+0)+0,w
	addwf	(uart_gets@s),f
	line	131
	
i1l6375:	
;uart.c: 131: *s = uart_getc();
	fcall	_uart_getc
	movwf	(??_uart_gets+0)+0
	movf	(uart_gets@s),w
	movwf	fsr0
	movf	(??_uart_gets+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	i1l6377
	line	132
	
i1l3224:	
	line	129
	
i1l6377:	
	movf	(uart_gets@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l6373
u363_20:
	goto	i1l3227
	
i1l3226:	
	line	133
	
i1l3227:	
	return
	opt stack 0
GLOBAL	__end_of_uart_gets
	__end_of_uart_gets:
;; =============== function _uart_gets ends ============

	signat	_uart_gets,4216
	global	i1___wmul
psect	text1162,local,class=CODE,delta=2
global __ptext1162
__ptext1162:

;; *************** function i1___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  __wmul          2    0[COMMON] unsigned int 
;;  __wmul          2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __wmul          2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_inter_func
;; This function uses a non-reentrant model
;;
psect	text1162
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_ofi1___wmul
	__size_ofi1___wmul	equ	__end_ofi1___wmul-i1___wmul
	
i1___wmul:	
	opt	stack 1
; Regs used in i1___wmul: [wreg+status,2+status,0]
	line	4
	
i1l6629:	
	clrf	(i1___wmul@product)
	clrf	(i1___wmul@product+1)
	goto	i1l6631
	line	6
	
i1l4285:	
	line	7
	
i1l6631:	
	btfss	(i1___wmul@multiplier),(0)&7
	goto	u417_21
	goto	u417_20
u417_21:
	goto	i1l4286
u417_20:
	line	8
	
i1l6633:	
	movf	(i1___wmul@multiplicand),w
	addwf	(i1___wmul@product),f
	skipnc
	incf	(i1___wmul@product+1),f
	movf	(i1___wmul@multiplicand+1),w
	addwf	(i1___wmul@product+1),f
	
i1l4286:	
	line	9
	movlw	01h
	
u418_25:
	clrc
	rlf	(i1___wmul@multiplicand),f
	rlf	(i1___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u418_25
	line	10
	
i1l6635:	
	movlw	01h
	
u419_25:
	clrc
	rrf	(i1___wmul@multiplier+1),f
	rrf	(i1___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u419_25
	line	11
	movf	((i1___wmul@multiplier+1)),w
	iorwf	((i1___wmul@multiplier)),w
	skipz
	goto	u420_21
	goto	u420_20
u420_21:
	goto	i1l6631
u420_20:
	goto	i1l6637
	
i1l4287:	
	line	12
	
i1l6637:	
	movf	(i1___wmul@product+1),w
	clrf	(?i1___wmul+1)
	addwf	(?i1___wmul+1)
	movf	(i1___wmul@product),w
	clrf	(?i1___wmul)
	addwf	(?i1___wmul)

	goto	i1l4288
	
i1l6639:	
	line	13
	
i1l4288:	
	return
	opt stack 0
GLOBAL	__end_ofi1___wmul
	__end_ofi1___wmul:
;; =============== function i1___wmul ends ============

	signat	i1___wmul,90
	global	i1_isprint
psect	text1163,local,class=CODE,delta=2
global __ptext1163
__ptext1163:

;; *************** function i1_isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  isprint         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  isprint         1    1[COMMON] unsigned char 
;;  isprint         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1163
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\isprint.c"
	global	__size_ofi1_isprint
	__size_ofi1_isprint	equ	__end_ofi1_isprint-i1_isprint
	
i1_isprint:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_isprint: [wreg+status,2+status,0]
;i1isprint@c stored from wreg
	movwf	(i1isprint@c)
	line	14
	
i1l7151:	
	clrf	(i1_isprint$4894)
	
i1l7153:	
	movlw	(07Fh)
	subwf	(i1isprint@c),w
	skipnc
	goto	u528_21
	goto	u528_20
u528_21:
	goto	i1l7159
u528_20:
	
i1l7155:	
	movlw	(020h)
	subwf	(i1isprint@c),w
	skipc
	goto	u529_21
	goto	u529_20
u529_21:
	goto	i1l7159
u529_20:
	
i1l7157:	
	clrf	(i1_isprint$4894)
	bsf	status,0
	rlf	(i1_isprint$4894),f
	goto	i1l7159
	
i1l4267:	
	
i1l7159:	
	rrf	(i1_isprint$4894),w
	
	goto	i1l4268
	
i1l7161:	
	line	15
	
i1l4268:	
	return
	opt stack 0
GLOBAL	__end_ofi1_isprint
	__end_ofi1_isprint:
;; =============== function i1_isprint ends ============

	signat	i1_isprint,88
	global	i1_uart_putc
psect	text1164,local,class=CODE,delta=2
global __ptext1164
__ptext1164:

;; *************** function i1_uart_putc *****************
;; Defined at:
;;		line 107 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
;; Parameters:    Size  Location     Type
;;  uart_putc       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uart_putc       1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_uart_puts
;; This function uses a non-reentrant model
;;
psect	text1164
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
	line	107
	global	__size_ofi1_uart_putc
	__size_ofi1_uart_putc	equ	__end_ofi1_uart_putc-i1_uart_putc
	
i1_uart_putc:	
	opt	stack 0
; Regs used in i1_uart_putc: [wreg]
;i1uart_putc@c stored from wreg
	movwf	(i1uart_putc@c)
	line	108
	
i1l7139:	
;uart.c: 108: while(!TXIF);
	goto	i1l3201
	
i1l3202:	
	
i1l3201:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u526_21
	goto	u526_20
u526_21:
	goto	i1l3201
u526_20:
	goto	i1l7141
	
i1l3203:	
	line	109
	
i1l7141:	
;uart.c: 109: TXREG = c;
	movf	(i1uart_putc@c),w
	movwf	(25)	;volatile
	line	110
	
i1l3204:	
	return
	opt stack 0
GLOBAL	__end_ofi1_uart_putc
	__end_ofi1_uart_putc:
;; =============== function i1_uart_putc ends ============

	signat	i1_uart_putc,88
	global	i1_set_counter
psect	text1165,local,class=CODE,delta=2
global __ptext1165
__ptext1165:

;; *************** function i1_set_counter *****************
;; Defined at:
;;		line 18 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_inter_func
;; This function uses a non-reentrant model
;;
psect	text1165
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\C_LCD.c"
	line	18
	global	__size_ofi1_set_counter
	__size_ofi1_set_counter	equ	__end_ofi1_set_counter-i1_set_counter
	
i1_set_counter:	
	opt	stack 1
; Regs used in i1_set_counter: [wreg+status,2]
	line	19
	
i1l6511:	
;C_LCD.c: 19: TMR1H = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	20
	
i1l6513:	
;C_LCD.c: 20: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	21
	
i1l1052:	
	return
	opt stack 0
GLOBAL	__end_ofi1_set_counter
	__end_ofi1_set_counter:
;; =============== function i1_set_counter ends ============

	signat	i1_set_counter,88
	global	_uart_getc
psect	text1166,local,class=CODE,delta=2
global __ptext1166
__ptext1166:

;; *************** function _uart_getc *****************
;; Defined at:
;;		line 118 in file "Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_gets
;; This function uses a non-reentrant model
;;
psect	text1166
	file	"Z:\Users\ittus\Studying\FU\Fall 2014\ESH201\Assignment 2\uart.c"
	line	118
	global	__size_of_uart_getc
	__size_of_uart_getc	equ	__end_of_uart_getc-_uart_getc
	
_uart_getc:	
	opt	stack 0
; Regs used in _uart_getc: [wreg]
	line	119
	
i1l6433:	
;uart.c: 119: while(!RCIF);
	goto	i1l3213
	
i1l3214:	
	
i1l3213:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l3213
u369_20:
	goto	i1l6435
	
i1l3215:	
	line	120
	
i1l6435:	
;uart.c: 120: return RCREG;
	movf	(26),w	;volatile
	goto	i1l3216
	
i1l6437:	
	line	121
	
i1l3216:	
	return
	opt stack 0
GLOBAL	__end_of_uart_getc
	__end_of_uart_getc:
;; =============== function _uart_getc ends ============

	signat	_uart_getc,89
	global	_strcmp
psect	text1167,local,class=CODE,delta=2
global __ptext1167
__ptext1167:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> inter_func@input(8), 
;;  s2              1    0[COMMON] PTR const unsigned char 
;;		 -> STR_2(11), 
;; Auto vars:     Size  Location     Type
;;  s1              1    5[COMMON] PTR const unsigned char 
;;		 -> inter_func@input(8), 
;;  r               1    4[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_inter_func
;; This function uses a non-reentrant model
;;
psect	text1167
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
;; using string table level
	opt	stack 1
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0+pclath]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
i1l6379:	
	goto	i1l6381
	
i1l4272:	
	line	38
	goto	i1l6381
	
i1l4271:	
	line	37
	
i1l6381:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movlw	01h
	addwf	(strcmp@s2),f
	movlw	-01h
	addwf	(strcmp@s2),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	addlw	1
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+1)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l6385
u364_20:
	
i1l6383:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	movf	indf,f
	skipz
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l6381
u365_20:
	goto	i1l6385
	
i1l4274:	
	goto	i1l6385
	
i1l4275:	
	line	39
	
i1l6385:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	i1l4276
	
i1l6387:	
	line	40
	
i1l4276:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
psect	text1168,local,class=CODE,delta=2
global __ptext1168
__ptext1168:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
