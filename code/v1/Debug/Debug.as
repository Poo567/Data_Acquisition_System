subtitle "Microchip MPLAB XC8 C Compiler v2.45 (Free license) build 20230818022343 Og9 "

pagewidth 120

	opt flic

	processor	16F887
include "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\16f887.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
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
# 54 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
INDF equ 00h ;# 
# 61 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR0 equ 01h ;# 
# 68 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCL equ 02h ;# 
# 75 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
STATUS equ 03h ;# 
# 161 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
FSR equ 04h ;# 
# 168 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTA equ 05h ;# 
# 230 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTB equ 06h ;# 
# 292 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTC equ 07h ;# 
# 354 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTD equ 08h ;# 
# 416 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTE equ 09h ;# 
# 454 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
T1CON equ 010h ;# 
# 767 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR2 equ 011h ;# 
# 774 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
T2CON equ 012h ;# 
# 845 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPCON equ 014h ;# 
# 922 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TXREG equ 019h ;# 
# 1142 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISA equ 085h ;# 
# 1480 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISB equ 086h ;# 
# 1542 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISC equ 087h ;# 
# 1604 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISD equ 088h ;# 
# 1666 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISE equ 089h ;# 
# 1704 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PR2 equ 092h ;# 
# 2050 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
MSK equ 093h ;# 
# 2179 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
WPUB equ 095h ;# 
# 2418 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
IOCB equ 096h ;# 
# 2488 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
VRCON equ 097h ;# 
# 2558 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EECON2 equ 018Dh ;# 
# 54 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
INDF equ 00h ;# 
# 61 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR0 equ 01h ;# 
# 68 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCL equ 02h ;# 
# 75 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
STATUS equ 03h ;# 
# 161 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
FSR equ 04h ;# 
# 168 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTA equ 05h ;# 
# 230 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTB equ 06h ;# 
# 292 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTC equ 07h ;# 
# 354 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTD equ 08h ;# 
# 416 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTE equ 09h ;# 
# 454 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
T1CON equ 010h ;# 
# 767 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR2 equ 011h ;# 
# 774 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
T2CON equ 012h ;# 
# 845 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPCON equ 014h ;# 
# 922 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TXREG equ 019h ;# 
# 1142 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISA equ 085h ;# 
# 1480 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISB equ 086h ;# 
# 1542 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISC equ 087h ;# 
# 1604 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISD equ 088h ;# 
# 1666 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISE equ 089h ;# 
# 1704 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PR2 equ 092h ;# 
# 2050 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
MSK equ 093h ;# 
# 2179 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
WPUB equ 095h ;# 
# 2418 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
IOCB equ 096h ;# 
# 2488 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
VRCON equ 097h ;# 
# 2558 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EECON2 equ 018Dh ;# 
# 54 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
INDF equ 00h ;# 
# 61 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR0 equ 01h ;# 
# 68 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCL equ 02h ;# 
# 75 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
STATUS equ 03h ;# 
# 161 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
FSR equ 04h ;# 
# 168 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTA equ 05h ;# 
# 230 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTB equ 06h ;# 
# 292 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTC equ 07h ;# 
# 354 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTD equ 08h ;# 
# 416 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PORTE equ 09h ;# 
# 454 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
T1CON equ 010h ;# 
# 767 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TMR2 equ 011h ;# 
# 774 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
T2CON equ 012h ;# 
# 845 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPCON equ 014h ;# 
# 922 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TXREG equ 019h ;# 
# 1142 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISA equ 085h ;# 
# 1480 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISB equ 086h ;# 
# 1542 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISC equ 087h ;# 
# 1604 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISD equ 088h ;# 
# 1666 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TRISE equ 089h ;# 
# 1704 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PR2 equ 092h ;# 
# 2050 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
MSK equ 093h ;# 
# 2179 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
WPUB equ 095h ;# 
# 2418 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
IOCB equ 096h ;# 
# 2488 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
VRCON equ 097h ;# 
# 2558 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "D:\aplicatii\Microchip\xc8\v2.45\pic\include\proc\pic16f887.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,___fttol
	FNCALL	_main,_get_pressure_value
	FNCALL	_main,_get_temperature_value
	FNCALL	_main,_init_LCD
	FNCALL	_main,_init_uC
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_read_adc
	FNCALL	_main,_sprintf
	FNCALL	_main,_strcpy
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_read_adc,___ftdiv
	FNCALL	_read_adc,___ftmul
	FNCALL	_init_LCD,_delay_LCD
	FNCALL	_init_LCD,_lcd_clear
	FNCALL	_init_LCD,_lcd_goto
	FNCALL	_init_LCD,_lcd_puts
	FNCALL	_init_LCD,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_write,_delay_LCD
	FNCALL	_get_temperature_value,___awtoft
	FNCALL	_get_temperature_value,___ftdiv
	FNCALL	_get_temperature_value,___ftmul
	FNCALL	_get_temperature_value,___ftsub
	FNCALL	_get_temperature_value,___fttol
	FNCALL	_get_temperature_value,___lltoft
	FNCALL	_get_temperature_value,_interpolate
	FNCALL	___lltoft,___ftpack
	FNCALL	_get_pressure_value,___awtoft
	FNCALL	_get_pressure_value,___ftge
	FNCALL	_get_pressure_value,_interpolate
	FNCALL	_interpolate,___awtoft
	FNCALL	_interpolate,___ftadd
	FNCALL	_interpolate,___ftdiv
	FNCALL	_interpolate,___ftmul
	FNCALL	_interpolate,___ftsub
	FNCALL	_interpolate,___fttol
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	FNCALL	_my_isr,i1___awtoft
	FNCALL	i1___awtoft,i1___ftpack
	FNCALL	intlevel1,_my_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_temp
	global	_res
	global	_voltage
	global	_pressure
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"../main.c"
	line	19

;initializer for _temp
	retlw	064h
	retlw	05Ah
	retlw	050h
	retlw	046h
	retlw	03Ch
	retlw	032h
	retlw	02Dh
	retlw	028h
	retlw	023h
	retlw	01Eh
	retlw	019h
	retlw	014h
	retlw	0Fh
	retlw	0Ah
	retlw	05h
	retlw	low(0)
	retlw	-10
	retlw	-20
	retlw	-30
	retlw	-40
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
	line	18

;initializer for _res
	retlw	0B1h
	retlw	0
	retlw	0
	retlw	0

	retlw	0F1h
	retlw	0
	retlw	0
	retlw	0

	retlw	04Ch
	retlw	01h
	retlw	0
	retlw	0

	retlw	0D3h
	retlw	01h
	retlw	0
	retlw	0

	retlw	09Bh
	retlw	02h
	retlw	0
	retlw	0

	retlw	0CDh
	retlw	03h
	retlw	0
	retlw	0

	retlw	0A4h
	retlw	04h
	retlw	0
	retlw	0

	retlw	0B3h
	retlw	05h
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	07h
	retlw	0
	retlw	0

	retlw	0BEh
	retlw	08h
	retlw	0
	retlw	0

	retlw	0ECh
	retlw	0Ah
	retlw	0
	retlw	0

	retlw	0C0h
	retlw	0Dh
	retlw	0
	retlw	0

	retlw	062h
	retlw	011h
	retlw	0
	retlw	0

	retlw	026h
	retlw	016h
	retlw	0
	retlw	0

	retlw	070h
	retlw	01Ch
	retlw	0
	retlw	0

	retlw	0CCh
	retlw	024h
	retlw	0
	retlw	0

	retlw	034h
	retlw	03Fh
	retlw	0
	retlw	0

	retlw	08h
	retlw	070h
	retlw	0
	retlw	0

	retlw	0DCh
	retlw	0CDh
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	line	16

;initializer for _voltage
	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0x9a
	retlw	0x99
	retlw	0x3e

	retlw	0x9a
	retlw	0x19
	retlw	0x3f

	retlw	0xcd
	retlw	0x8c
	retlw	0x3f

	retlw	0x9a
	retlw	0xd9
	retlw	0x3f

	retlw	0xcd
	retlw	0xc
	retlw	0x40

	retlw	0x9a
	retlw	0x39
	retlw	0x40

	retlw	0x33
	retlw	0x53
	retlw	0x40

	retlw	0x33
	retlw	0x73
	retlw	0x40

	retlw	0xcd
	retlw	0x8c
	retlw	0x40

	retlw	0xcd
	retlw	0x9c
	retlw	0x40

	line	17

;initializer for _pressure
	retlw	low(0)
	retlw	high(0)

	retlw	0Ah
	retlw	0

	retlw	014h
	retlw	0

	retlw	01Eh
	retlw	0

	retlw	028h
	retlw	0

	retlw	032h
	retlw	0

	retlw	03Ch
	retlw	0

	retlw	046h
	retlw	0

	retlw	050h
	retlw	0

	retlw	05Ah
	retlw	0

	retlw	064h
	retlw	0

	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
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
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	358
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

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_adc_result
	global	_ADC_value
	global	_PORTD
_PORTD	set	0x8
	global	_ADRESH
_ADRESH	set	0x1E
	global	_INTCON
_INTCON	set	0xB
	global	_ADCON0
_ADCON0	set	0x1F
	global	_PORTA
_PORTA	set	0x5
	global	_RD4
_RD4	set	0x44
	global	_RD5
_RD5	set	0x45
	global	_GO
_GO	set	0xF9
	global	_ADIF
_ADIF	set	0x66
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISD
_TRISD	set	0x88
	global	_TRISA
_TRISA	set	0x85
	global	_ADIE
_ADIE	set	0x466
	global	_ANSELH
_ANSELH	set	0x189
	global	_ANSEL
_ANSEL	set	0x188
	
STR_1:	
	retlw	80	;'P'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_3:	
	retlw	84	;'T'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_5:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	67	;'C'
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_6:	
	retlw	77	;'M'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_4:	
	retlw	84	;'T'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	0
psect	strings
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTRC_NOCLKOUT"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config MCLRE = "OFF"
	config CP = "OFF"
	config CPD = "OFF"
	config BOREN = "OFF"
	config IESO = "OFF"
	config FCMEN = "OFF"
	config LVP = "OFF"
	config DEBUG = "OFF"
	config BOR4V = "BOR21V"
	config WRT = "HALF"
	file	"Debug.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_adc_result:
       ds      3

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ADC_value:
       ds      6

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"../main.c"
	line	19
_temp:
       ds      20

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"../main.c"
	line	16
_voltage:
       ds      33

psect	dataBANK3
	file	"../main.c"
	line	17
_pressure:
       ds      22

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"../main.c"
	line	18
_res:
       ds      80

	file	"Debug.as"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+55)
	movwf btemp-1
	movlw high(__pidataBANK3)
	movwf btemp
	movlw low(__pidataBANK3)
	movwf btemp+1
	movlw low(__pdataBANK3)
	movwf fsr
	fcall init_ram0
; Initialize objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK2
	movlw low(__pdataBANK2+80)
	movwf btemp-1
	movlw high(__pidataBANK2)
	movwf btemp
	movlw low(__pidataBANK2)
	movwf btemp+1
	movlw low(__pdataBANK2)
	movwf fsr
	fcall init_ram0
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+20)
	movwf btemp-1
	movlw high(__pidataBANK1)
	movwf btemp
	movlw low(__pidataBANK1)
	movwf btemp+1
	movlw low(__pdataBANK1)
	movwf fsr
	fcall init_ram0
	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x0
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x5
	ds	1
	global	?_interpolate
?_interpolate:	; 2 bytes @ 0x6
	global	interpolate@x
interpolate@x:	; 3 bytes @ 0x6
	ds	3
	global	interpolate@x1
interpolate@x1:	; 3 bytes @ 0x9
	ds	3
	global	interpolate@x2
interpolate@x2:	; 3 bytes @ 0xC
	ds	3
	global	interpolate@y1
interpolate@y1:	; 2 bytes @ 0xF
	ds	2
	global	interpolate@y2
interpolate@y2:	; 2 bytes @ 0x11
	ds	2
	global	_interpolate$758
_interpolate$758:	; 3 bytes @ 0x13
	ds	3
	global	?_get_pressure_value
?_get_pressure_value:	; 3 bytes @ 0x16
	global	?_get_temperature_value
?_get_temperature_value:	; 3 bytes @ 0x16
	ds	3
	global	get_pressure_value@ADC_value
get_pressure_value@ADC_value:	; 1 bytes @ 0x19
	global	get_temperature_value@ADC_value
get_temperature_value@ADC_value:	; 1 bytes @ 0x19
	ds	1
	global	get_pressure_value@result
get_pressure_value@result:	; 2 bytes @ 0x1A
	global	get_temperature_value@vout
get_temperature_value@vout:	; 3 bytes @ 0x1A
	ds	2
	global	get_pressure_value@vout
get_pressure_value@vout:	; 3 bytes @ 0x1C
	ds	1
	global	get_temperature_value@result
get_temperature_value@result:	; 2 bytes @ 0x1D
	ds	2
	global	get_temperature_value@Rt
get_temperature_value@Rt:	; 4 bytes @ 0x1F
	ds	4
??_main:	; 1 bytes @ 0x23
	ds	3
	global	main@pressure_str
main@pressure_str:	; 0 bytes @ 0x26
	global	main@temp_str
main@temp_str:	; 0 bytes @ 0x26
	global	_main$756
_main$756:	; 3 bytes @ 0x26
	ds	3
	global	_main$757
_main$757:	; 3 bytes @ 0x29
	ds	3
	global	main@pressure
main@pressure:	; 2 bytes @ 0x2C
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0x2E
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_uC:	; 1 bytes @ 0x0
?_init_LCD:	; 1 bytes @ 0x0
?_lcd_clear:	; 1 bytes @ 0x0
?_lcd_goto:	; 1 bytes @ 0x0
?_lcd_write:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_my_isr:	; 1 bytes @ 0x0
	global	?i1___ftpack
?i1___ftpack:	; 3 bytes @ 0x0
	global	i1___ftpack@arg
i1___ftpack@arg:	; 3 bytes @ 0x0
	ds	3
	global	i1___ftpack@exp
i1___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	i1___ftpack@sign
i1___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??i1___ftpack:	; 1 bytes @ 0x5
	ds	3
	global	?i1___awtoft
?i1___awtoft:	; 3 bytes @ 0x8
	global	i1___awtoft@c
i1___awtoft@c:	; 2 bytes @ 0x8
	ds	3
??i1___awtoft:	; 1 bytes @ 0xB
	global	i1___awtoft@sign
i1___awtoft@sign:	; 1 bytes @ 0xB
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_my_isr:	; 1 bytes @ 0x0
	ds	5
?___ftge:	; 1 bit 
??_init_uC:	; 1 bytes @ 0x5
?_delay_LCD:	; 1 bytes @ 0x5
?_strcpy:	; 2 bytes @ 0x5
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x5
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	global	strcpy@to
strcpy@to:	; 2 bytes @ 0x5
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x5
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x5
	global	delay_LCD@t
delay_LCD@t:	; 4 bytes @ 0x5
	ds	2
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x7
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x7
	ds	1
??_strcpy:	; 1 bytes @ 0x8
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x8
	global	strcpy@cp
strcpy@cp:	; 2 bytes @ 0x8
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x8
	ds	1
??_delay_LCD:	; 1 bytes @ 0x9
??___lwdiv:	; 1 bytes @ 0x9
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x9
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x9
	ds	1
??___ftpack:	; 1 bytes @ 0xA
	ds	1
??___ftge:	; 1 bytes @ 0xB
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xB
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xC
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xC
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xD
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0xD
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xD
	global	delay_LCD@var
delay_LCD@var:	; 4 bytes @ 0xD
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0xD
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xE
	ds	2
??___awtoft:	; 1 bytes @ 0x10
??___lwmod:	; 1 bytes @ 0x10
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x10
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x10
	ds	1
??_lcd_write:	; 1 bytes @ 0x11
??___lltoft:	; 1 bytes @ 0x11
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x11
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x11
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x11
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0x11
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x11
	ds	1
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x12
	ds	1
??_lcd_clear:	; 1 bytes @ 0x13
??_lcd_goto:	; 1 bytes @ 0x13
?_lcd_puts:	; 1 bytes @ 0x13
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x13
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x13
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x13
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x14
	ds	1
??_init_LCD:	; 1 bytes @ 0x15
??_lcd_puts:	; 1 bytes @ 0x15
	ds	1
??_sprintf:	; 1 bytes @ 0x16
	ds	1
??___ftadd:	; 1 bytes @ 0x17
	ds	2
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x19
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1A
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1A
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1B
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1B
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1C
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x1C
	ds	1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x1D
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x1D
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1E
	ds	2
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x20
	ds	3
??___ftsub:	; 1 bytes @ 0x23
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x23
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x23
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x26
	ds	3
??___ftmul:	; 1 bytes @ 0x29
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2C
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2D
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x30
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x31
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x32
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x32
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x35
	ds	3
??___ftdiv:	; 1 bytes @ 0x38
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x3B
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x3C
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x3F
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x40
	ds	1
?_read_adc:	; 1 bytes @ 0x41
	global	?___fttol
?___fttol:	; 4 bytes @ 0x41
	global	read_adc@channel
read_adc@channel:	; 2 bytes @ 0x41
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x41
	ds	2
	global	read_adc@buffer
read_adc@buffer:	; 1 bytes @ 0x43
	ds	1
??_read_adc:	; 1 bytes @ 0x44
	ds	1
??___fttol:	; 1 bytes @ 0x45
	ds	3
??_get_pressure_value:	; 1 bytes @ 0x48
??_get_temperature_value:	; 1 bytes @ 0x48
??_interpolate:	; 1 bytes @ 0x48
;!
;!Data Sizes:
;!    Strings     87
;!    Constant    10
;!    Data        155
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      12
;!    BANK0            80     72      75
;!    BANK1            80     48      74
;!    BANK3            96      0      55
;!    BANK2            96      0      80

;!
;!Pointer List with Targets:
;!
;!    get_pressure_value@ADC_value	PTR  size(1) Largest target is 6
;!		 -> ADC_value(BANK1[6]), 
;!
;!    get_temperature_value@ADC_value	PTR  size(1) Largest target is 6
;!		 -> ADC_value(BANK1[6]), 
;!
;!    lcd_puts@s	PTR unsigned char  size(2) Largest target is 18
;!		 -> main@pressure_str(BANK1[0]), main@temp_str(BANK1[0]), STR_5(CODE[18]), STR_6(CODE[11]), 
;!
;!    read_adc@buffer	PTR  size(1) Largest target is 6
;!		 -> ADC_value(BANK1[6]), 
;!
;!    sp__strcpy	PTR unsigned char  size(2) Largest target is 0
;!		 -> main@temp_str(BANK1[0]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_2(CODE[11]), STR_4(CODE[9]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 0
;!		 -> main@pressure_str(BANK1[0]), main@temp_str(BANK1[0]), 
;!
;!    strcpy@cp	PTR unsigned char  size(2) Largest target is 0
;!		 -> main@temp_str(BANK1[0]), 
;!
;!    strcpy@from	PTR const unsigned char  size(1) Largest target is 19
;!		 -> STR_1(CODE[19]), STR_3(CODE[19]), 
;!
;!    strcpy@to	PTR unsigned char  size(2) Largest target is 0
;!		 -> main@temp_str(BANK1[0]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _my_isr in COMMON
;!
;!    _my_isr->i1___awtoft
;!    i1___awtoft->i1___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___fttol
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _read_adc->___ftdiv
;!    _init_LCD->_lcd_puts
;!    _lcd_puts->_lcd_write
;!    _lcd_goto->_lcd_write
;!    _lcd_clear->_lcd_write
;!    _lcd_write->_delay_LCD
;!    _get_temperature_value->___fttol
;!    ___lltoft->___ftpack
;!    _interpolate->___fttol
;!    ___fttol->___ftdiv
;!    ___ftsub->___ftadd
;!    ___ftadd->___awtoft
;!    ___ftmul->___ftsub
;!    ___ftdiv->___ftmul
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _my_isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_get_temperature_value
;!    _get_temperature_value->_interpolate
;!    _get_pressure_value->_interpolate
;!    _interpolate->___fttol
;!
;!Critical Paths under _my_isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                13    13      0   99293
;!                                             35 BANK1     13    13      0
;!                            ___fttol
;!                 _get_pressure_value
;!              _get_temperature_value
;!                           _init_LCD
;!                            _init_uC
;!                          _lcd_clear
;!                           _lcd_goto
;!                           _lcd_puts
;!                           _read_adc
;!                            _sprintf
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (1) _strcpy                                               5     2      3     287
;!                                              5 BANK0      5     2      3
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             22    17      5    1222
;!                                             17 BANK0     14     9      5
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     265
;!                                             12 BANK0      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     268
;!                                              5 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _read_adc                                             5     2      3    6818
;!                                             65 BANK0      5     2      3
;!                            ___ftdiv
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (1) _init_uC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_LCD                                             0     0      0    3335
;!                          _delay_LCD
;!                          _lcd_clear
;!                           _lcd_goto
;!                           _lcd_puts
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (1) _lcd_puts                                             2     0      2     877
;!                                             19 BANK0      2     0      2
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (1) _lcd_goto                                             1     1      0     642
;!                                             19 BANK0      1     1      0
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            0     0      0     620
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (2) _lcd_write                                            2     2      0     620
;!                                             17 BANK0      2     2      0
;!                          _delay_LCD
;! ---------------------------------------------------------------------------------
;! (3) _delay_LCD                                           12     8      4     576
;!                                              5 BANK0     12     8      4
;! ---------------------------------------------------------------------------------
;! (1) _get_temperature_value                               13    10      3   50391
;!                                             22 BANK1     13    10      3
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                           ___lltoft
;!                        _interpolate
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             5     1      4    6205
;!                                             13 BANK0      5     1      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _get_pressure_value                                   9     6      3   34014
;!                                             22 BANK1      9     6      3
;!                           ___awtoft
;!                             ___ftge
;!                        _interpolate
;! ---------------------------------------------------------------------------------
;! (2) _interpolate                                         16     3     13   27876
;!                                              6 BANK1     16     3     13
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             13     9      4     631
;!                                             65 BANK0      7     3      4
;!                                              0 BANK1      6     6      0
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftsub (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    4369
;!                                             29 BANK0      6     0      6
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             12     6      6    3883
;!                                             17 BANK0     12     6      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             15     9      6    3282
;!                                             35 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;!                            ___ftsub (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    3214
;!                                             50 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                            ___ftsub (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             4     1      3    2821
;!                                             13 BANK0      4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2398
;!                                              5 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               6     0      6    2256
;!                                              5 BANK0      6     0      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _my_isr                                               5     5      0     426
;!                                              0 BANK0      5     5      0
;!                         i1___awtoft
;! ---------------------------------------------------------------------------------
;! (7) i1___awtoft                                           4     1      3     426
;!                                              8 COMMON     4     1      3
;!                         i1___ftpack
;! ---------------------------------------------------------------------------------
;! (8) i1___ftpack                                           8     3      5     309
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!       ___ftadd (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!         ___ftadd (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftsub (ARG)
;!           ___ftadd
;!       ___ftpack (ARG)
;!       ___ftsub (ARG)
;!     ___ftmul (ARG)
;!     ___ftsub (ARG)
;!   _get_pressure_value
;!     ___awtoft
;!     ___ftge
;!     _interpolate
;!       ___awtoft
;!       ___ftadd
;!       ___ftdiv
;!       ___ftmul
;!       ___ftsub
;!       ___fttol
;!       ___lltoft (ARG)
;!         ___ftpack
;!   _get_temperature_value
;!     ___awtoft
;!     ___ftdiv
;!     ___ftmul
;!     ___ftsub
;!     ___fttol
;!     ___lltoft
;!     _interpolate
;!   _init_LCD
;!     _delay_LCD
;!     _lcd_clear
;!       _lcd_write
;!         _delay_LCD
;!     _lcd_goto
;!       _lcd_write
;!     _lcd_puts
;!       _lcd_write
;!     _lcd_write
;!   _init_uC
;!   _lcd_clear
;!   _lcd_goto
;!   _lcd_puts
;!   _read_adc
;!     ___ftdiv
;!     ___ftmul
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!   _strcpy
;!
;! _my_isr (ROOT)
;!   i1___awtoft
;!     i1___ftpack
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      37       9       57.3%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0      50      11       83.3%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     30      4A       7       92.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     48      4B       5       93.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     128      12        0.0%
;!ABS                  0      0     128       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 37 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   46[BANK1 ] int 
;;  pressure        2   44[BANK1 ] int 
;;  temp_str        0   38[BANK1 ] unsigned char [0]
;;  pressure_str    0   38[BANK1 ] unsigned char [0]
;;  Rt_str          0    0        unsigned char [0]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called: 8
;; This function calls:
;;		___fttol
;;		_get_pressure_value
;;		_get_temperature_value
;;		_init_LCD
;;		_init_uC
;;		_lcd_clear
;;		_lcd_goto
;;		_lcd_puts
;;		_read_adc
;;		_sprintf
;;		_strcpy
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../main.c"
	line	37
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	37
	
_main:	
;incstack = 0
	callstack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l2873:	
	line	40
	bsf	status, 5	;RP0=1, select bank1
	clrf	(main@temp)^080h
	clrf	(main@temp+1)^080h
	line	45
	
l2875:	
	fcall	_init_uC
	line	46
	
l2877:	
	fcall	_init_LCD
	line	47
	
l2879:	
	asmopt push
asmopt off
movlw  21
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2)
movlw	75
movwf	((??_main+0)^080h+0+1)
	movlw	189
movwf	((??_main+0)^080h+0)
	u4747:
decfsz	((??_main+0)^080h+0),f
	goto	u4747
	decfsz	((??_main+0)^080h+0+1),f
	goto	u4747
	decfsz	((??_main+0)^080h+0+2),f
	goto	u4747
	nop2
asmopt pop

	line	51
	
l2881:	
	fcall	_lcd_clear
	line	53
	
l2883:	
	movlw	0
	movwf	(read_adc@channel)
	movwf	(read_adc@channel+1)
	movlw	(low(_ADC_value|((0x0)<<8)))&0ffh
	movwf	(read_adc@buffer)
	fcall	_read_adc
	line	54
	
l2885:	
	movlw	(low(_ADC_value|((0x0)<<8)))&0ffh
	fcall	_get_pressure_value
	movf	(0+(?_get_pressure_value))^080h,w
	movwf	(_main$756)^080h
	movf	(1+(?_get_pressure_value))^080h,w
	movwf	(_main$756+1)^080h
	movf	(2+(?_get_pressure_value))^080h,w
	movwf	(_main$756+2)^080h
	
l2887:	
	movf	(_main$756)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$756+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$756+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@pressure+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@pressure)^080h
	line	55
	
l2889:	
		movlw	156
	xorwf	((main@pressure)^080h),w
	skipz
	goto	u4721
	incf	((main@pressure+1)^080h),w
	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l2893
u4720:
	line	56
	
l2891:	
	movlw	low(main@temp_str)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcpy@to)
	movlw	high(main@temp_str)
	movwf	((strcpy@to))+1
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(strcpy@from)
	fcall	_strcpy
	goto	l2895
	line	58
	
l2893:	
	movlw	low(main@pressure_str)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sprintf@sp)
	movlw	high(main@pressure_str)
	movwf	((sprintf@sp))+1
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@pressure+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@pressure)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+03h
	fcall	_sprintf
	line	59
	
l2895:	
	movlw	low(080h)
	fcall	_lcd_goto
	line	60
	
l2897:	
	movlw	low(main@pressure_str)
	movwf	(lcd_puts@s)
	movlw	high(main@pressure_str)
	movwf	((lcd_puts@s))+1
	fcall	_lcd_puts
	line	62
	
l2899:	
	movlw	01h
	movwf	(read_adc@channel)
	movlw	0
	movwf	((read_adc@channel))+1
	movlw	(low(_ADC_value|((0x0)<<8)+03h))&0ffh
	movwf	(read_adc@buffer)
	fcall	_read_adc
	line	63
	
l2901:	
	movlw	(low(_ADC_value|((0x0)<<8)+03h))&0ffh
	fcall	_get_temperature_value
	movf	(0+(?_get_temperature_value))^080h,w
	movwf	(_main$757)^080h
	movf	(1+(?_get_temperature_value))^080h,w
	movwf	(_main$757+1)^080h
	movf	(2+(?_get_temperature_value))^080h,w
	movwf	(_main$757+2)^080h
	
l2903:	
	movf	(_main$757)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$757+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$757+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@temp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@temp)^080h
	line	64
	
l2905:	
		movlw	156
	xorwf	((main@temp)^080h),w
	skipz
	goto	u4731
	incf	((main@temp+1)^080h),w
	btfss	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l2909
u4730:
	line	65
	
l2907:	
	movlw	low(main@temp_str)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcpy@to)
	movlw	high(main@temp_str)
	movwf	((strcpy@to))+1
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	movwf	(strcpy@from)
	fcall	_strcpy
	goto	l2911
	line	67
	
l2909:	
	movlw	low(main@temp_str)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sprintf@sp)
	movlw	high(main@temp_str)
	movwf	((sprintf@sp))+1
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@temp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+03h
	fcall	_sprintf
	line	68
	
l2911:	
	movlw	low(094h)
	fcall	_lcd_goto
	line	69
	
l2913:	
	movlw	low(main@temp_str)
	movwf	(lcd_puts@s)
	movlw	high(main@temp_str)
	movwf	((lcd_puts@s))+1
	fcall	_lcd_puts
	line	70
	
l2915:	
	asmopt push
asmopt off
movlw  5
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2)
movlw	15
movwf	((??_main+0)^080h+0+1)
	movlw	240
movwf	((??_main+0)^080h+0)
	u4757:
decfsz	((??_main+0)^080h+0),f
	goto	u4757
	decfsz	((??_main+0)^080h+0+1),f
	goto	u4757
	decfsz	((??_main+0)^080h+0+2),f
	goto	u4757
	nop
asmopt pop

	goto	l2881
	global	start
	ljmp	start
	callstack 0
	line	72
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 8 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              2    5[BANK0 ] PTR unsigned char 
;;		 -> main@temp_str(0), 
;;  from            1    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(19), STR_1(19), 
;; Auto vars:     Size  Location     Type
;;  cp              2    8[BANK0 ] PTR unsigned char 
;;		 -> main@temp_str(0), 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=3
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\strcpy.c"
	line	8
global __ptext1
__ptext1:	;psect for function _strcpy
psect	text1
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\strcpy.c"
	line	8
	
_strcpy:	
;incstack = 0
	callstack 4
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	18
	
l2113:	
		movf	(strcpy@to),w
	movwf	(strcpy@cp)
movf	(strcpy@to+1),w
	movwf	(strcpy@cp+1)

	line	19
	goto	l2119
	line	20
	
l2115:	
	movlw	01h
	addwf	(strcpy@cp),f
	skipnc
	incf	(strcpy@cp+1),f
	movlw	0
	addwf	(strcpy@cp+1),f
	line	21
	
l2117:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(strcpy@from),f
	line	19
	
l2119:	
	movf	(strcpy@from),w
	movwf	fsr0
	fcall	stringdir
	movwf	btemp+1
	movf	(strcpy@cp),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcpy@cp+1),0
	bcf	status,7
	movf	btemp+1,w
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l2115
u2940:
	line	24
	
l739:	
	return
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8313
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 505 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2   17[BANK0 ] PTR unsigned char 
;;		 -> main@pressure_str(0), main@temp_str(0), 
;;  f               1   19[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(9), STR_2(11), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  val             2   28[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   30[BANK0 ] unsigned char 
;;  prec            1   27[BANK0 ] char 
;;  flag            1   26[BANK0 ] unsigned char 
;;  ap              1   25[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   17[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext2
__ptext2:	;psect for function _sprintf
psect	text2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	505
	
_sprintf:	
;incstack = 0
	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
l2121:	
	movlw	(low(?_sprintf|((0x0)<<8)+03h))&0ffh
	movwf	(sprintf@ap)
	line	553
	goto	l2175
	line	555
	
l2123:	
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l2129
u2950:
	line	558
	
l2125:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1),0
	bcf	status,7
	movf	(sprintf@c),w
	movwf	indf
	
l2127:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	0
	addwf	(sprintf@sp+1),f
	line	559
	goto	l2175
	line	565
	
l2129:	
	clrf	(sprintf@flag)
	line	661
	
l2133:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2177
	xorlw	100^0	; case 100
	skipnz
	goto	l2135
	xorlw	105^100	; case 105
	skipnz
	goto	l2135
	goto	l2175
	asmopt pop

	line	1285
	
l2135:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)
	
l2137:	
	movlw	low(02h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@ap),f
	line	1287
	
l2139:	
	btfss	(sprintf@val+1),7
	goto	u2961
	goto	u2960
u2961:
	goto	l2145
u2960:
	line	1288
	
l2141:	
	movlw	low(03h)
	movwf	btemp+1
	movf	btemp+1,w
	iorwf	(sprintf@flag),f
	line	1289
	
l2143:	
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	line	1331
	
l2145:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1332
	
l2151:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@val+1),w
	skipz
	goto	u2975
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u2975:
	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l2155
u2970:
	goto	l2159
	line	1331
	
l2155:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@c),f
	
l2157:	
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l2151
u2980:
	line	1464
	
l2159:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2165
u2990:
	line	1465
	
l2161:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1),0
	bcf	status,7
	movlw	low(02Dh)
	movwf	indf
	
l2163:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	0
	addwf	(sprintf@sp+1),f
	line	1498
	
l2165:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1500
	goto	l2173
	line	1515
	
l2167:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@val+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(sprintf@val),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1550
	
l2169:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1),0
	bcf	status,7
	movf	(sprintf@c),w
	movwf	indf
	
l2171:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	0
	addwf	(sprintf@sp+1),f
	line	1500
	
l2173:	
	movlw	low(-1)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l2167
u3000:
	line	553
	
l2175:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	(((sprintf@c))),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2123
u3010:
	line	1564
	
l2177:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1),0
	bcf	status,7
	clrf	indf
	line	1567
	
l306:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   12[BANK0 ] unsigned int 
;;  dividend        2   14[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext3
__ptext3:	;psect for function ___lwmod
psect	text3
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 3
; Regs used in ___lwmod: [wreg+status,2+status,0+btemp+1]
	line	12
	
l1949:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l1967
u2550:
	line	13
	
l1951:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l1957
	line	15
	
l1953:	
	movlw	01h
	
u2565:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2565
	line	16
	
l1955:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___lwmod@counter),f
	line	14
	
l1957:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1953
u2570:
	line	19
	
l1959:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2585
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l1963
u2580:
	line	20
	
l1961:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l1963:	
	movlw	01h
	
u2595:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2595
	line	22
	
l1965:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l1959
u2600:
	line	24
	
l1967:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l728:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] unsigned int 
;;  dividend        2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[BANK0 ] unsigned int 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0+btemp+1]
	line	13
	
l1923:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l1925:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l1945
u2480:
	line	15
	
l1927:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l1933
	line	17
	
l1929:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2495
	line	18
	
l1931:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___lwdiv@counter),f
	line	16
	
l1933:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l1929
u2500:
	line	21
	
l1935:	
	movlw	01h
	
u2515:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2515
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2525
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2525:
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l1941
u2520:
	line	23
	
l1937:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l1939:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l1941:	
	movlw	01h
	
u2535:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2535
	line	27
	
l1943:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l1935
u2540:
	line	29
	
l1945:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l718:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 231 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  channel         2   65[BANK0 ] int 
;;  buffer          1   67[BANK0 ] PTR 
;;		 -> ADC_value(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	231
global __ptext5
__ptext5:	;psect for function _read_adc
psect	text5
	file	"../main.c"
	line	231
	
_read_adc:	
;incstack = 0
	callstack 2
; Regs used in _read_adc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	233
	
l2665:	
	movf	(read_adc@channel),w
	movwf	(??_read_adc+0)+0
	movlw	(02h)-1
u4135:
	clrc
	rlf	(??_read_adc+0)+0,f
	addlw	-1
	skipz
	goto	u4135
	clrc
	rlf	(??_read_adc+0)+0,w
	iorwf	(31),w	;volatile
	movwf	(31)	;volatile
	line	234
	
l2667:	
	bsf	(249/8),(249)&7	;volatile
	line	235
	
l2669:	
	asmopt push
asmopt off
movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_read_adc+0)+0+1)
	movlw	47
movwf	((??_read_adc+0)+0)
	u4767:
decfsz	((??_read_adc+0)+0),f
	goto	u4767
	decfsz	((??_read_adc+0)+0+1),f
	goto	u4767
	nop2
asmopt pop

	line	236
	
l2671:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xa0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movf	(_adc_result),w
	movwf	(___ftmul@f2)
	movf	(_adc_result+1),w
	movwf	(___ftmul@f2+1)
	movf	(_adc_result+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(read_adc@buffer),w
	movwf	fsr0
	movf	(0+(?___ftdiv)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?___ftdiv)),w
	movwf	indf
	incf	fsr0,f
	movf	(2+(?___ftdiv)),w
	movwf	indf
	line	237
	
l2673:	
	movlw	low(0E3h)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(31),f	;volatile
	line	238
	
l147:	
	return
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,8313
	global	_init_uC

;; *************** function _init_uC *****************
;; Defined at:
;;		line 74 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	74
global __ptext6
__ptext6:	;psect for function _init_uC
psect	text6
	file	"../main.c"
	line	74
	
_init_uC:	
;incstack = 0
	callstack 4
; Regs used in _init_uC: [wreg+status,2]
	line	76
	
l2007:	
	movlw	low(03h)
	movwf	(133)^080h	;volatile
	line	77
	
l2009:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	78
	
l2011:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	79
	
l2013:	
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	80
	
l2015:	
	movlw	low(03h)
	movwf	(393)^0180h	;volatile
	line	81
	
l2017:	
	movlw	low(080h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	82
	
l2019:	
	movlw	low(041h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	83
	
l2021:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	
l2023:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	84
	
l2025:	
	movf	(11),w	;volatile
	iorlw	0E0h
	movwf	(11)	;volatile
	line	85
	
l77:	
	return
	callstack 0
GLOBAL	__end_of_init_uC
	__end_of_init_uC:
	signat	_init_uC,89
	global	_init_LCD

;; *************** function _init_LCD *****************
;; Defined at:
;;		line 15 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_delay_LCD
;;		_lcd_clear
;;		_lcd_goto
;;		_lcd_puts
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"../LCD.c"
	line	15
global __ptext7
__ptext7:	;psect for function _init_LCD
psect	text7
	file	"../LCD.c"
	line	15
	
_init_LCD:	
;incstack = 0
	callstack 1
; Regs used in _init_LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	17
	
l2027:	
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	07h
	movwf	(delay_LCD@t+1)
	movlw	0D0h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	18
	movlw	low(02Ch)
	fcall	_lcd_write
	line	19
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	20
	fcall	_lcd_clear
	line	21
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0Bh
	movwf	(delay_LCD@t+1)
	movlw	0B8h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	22
	movlw	low(02h)
	fcall	_lcd_write
	line	23
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	07h
	movwf	(delay_LCD@t+1)
	movlw	0D0h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	24
	movlw	low(06h)
	fcall	_lcd_write
	line	25
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	26
	movlw	low(0Ch)
	fcall	_lcd_write
	line	27
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	28
	movlw	low(010h)
	fcall	_lcd_write
	line	29
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	30
	movlw	low(02Ch)
	fcall	_lcd_write
	line	31
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	32
	movlw	low(080h)
	fcall	_lcd_goto
	line	33
	
l2029:	
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_puts@s)
	movlw	80h
	movwf	(lcd_puts@s+1)
	fcall	_lcd_puts
	line	34
	
l2031:	
	movlw	low(094h)
	fcall	_lcd_goto
	line	35
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_puts@s)
	movlw	80h
	movwf	(lcd_puts@s+1)
	fcall	_lcd_puts
	line	36
	
l172:	
	return
	callstack 0
GLOBAL	__end_of_init_LCD
	__end_of_init_LCD:
	signat	_init_LCD,89
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 50 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  s               2   19[BANK0 ] PTR unsigned char 
;;		 -> STR_6(11), STR_5(18), main@pressure_str(0), main@temp_str(0), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;;		_init_LCD
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	50
global __ptext8
__ptext8:	;psect for function _lcd_puts
psect	text8
	file	"../LCD.c"
	line	50
	
_lcd_puts:	
;incstack = 0
	callstack 2
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	52
	
l1879:	
	bsf	(68/8),(68)&7	;volatile
	line	53
	goto	l1885
	line	55
	
l1881:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	line	56
	
l1883:	
	movlw	01h
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	0
	addwf	(lcd_puts@s+1),f
	line	53
	
l1885:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l1881
u2420:
	line	58
	
l184:	
	return
	callstack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4217
	global	_lcd_goto

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 64 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;;		_init_LCD
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext9
__ptext9:	;psect for function _lcd_goto
psect	text9
	file	"../LCD.c"
	line	64
	
_lcd_goto:	
;incstack = 0
	callstack 2
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_goto@pos)
	line	66
	
l1875:	
	bcf	(68/8),(68)&7	;volatile
	line	67
	
l1877:	
	movf	(lcd_goto@pos),w
	fcall	_lcd_write
	line	68
	
l190:	
	return
	callstack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
	signat	_lcd_goto,4217
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 45 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;;		_init_LCD
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	45
global __ptext10
__ptext10:	;psect for function _lcd_clear
psect	text10
	file	"../LCD.c"
	line	45
	
_lcd_clear:	
;incstack = 0
	callstack 2
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l1871:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7	;volatile
	line	48
	
l1873:	
	movlw	low(01h)
	fcall	_lcd_write
	line	49
	
l178:	
	return
	callstack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,89
	global	_lcd_write

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 38 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_delay_LCD
;; This function is called by:
;;		_init_LCD
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	38
global __ptext11
__ptext11:	;psect for function _lcd_write
psect	text11
	file	"../LCD.c"
	line	38
	
_lcd_write:	
;incstack = 0
	callstack 2
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_write@c)
	line	40
	
l1691:	
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2115:
	clrc
	rrf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2115
	movf	(8),w	;volatile
	andlw	0F0h
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	41
	
l1693:	
	bsf	(69/8),(69)&7	;volatile
	
l1695:	
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	01h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	
l1697:	
	bcf	(69/8),(69)&7	;volatile
	line	42
	
l1699:	
	movlw	low(0Fh)
	andwf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movf	(8),w	;volatile
	andlw	0F0h
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	43
	
l1701:	
	bsf	(69/8),(69)&7	;volatile
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	01h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	
l1703:	
	bcf	(69/8),(69)&7	;volatile
	line	44
	
l175:	
	return
	callstack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
	signat	_lcd_write,4217
	global	_delay_LCD

;; *************** function _delay_LCD *****************
;; Defined at:
;;		line 69 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  t               4    5[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  var             4   13[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_LCD
;;		_lcd_write
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	69
global __ptext12
__ptext12:	;psect for function _delay_LCD
psect	text12
	file	"../LCD.c"
	line	69
	
_delay_LCD:	
;incstack = 0
	callstack 2
; Regs used in _delay_LCD: [wreg+status,2+status,0]
	line	72
	
l1611:	
	movlw	high highword(0)
	movwf	(delay_LCD@var+3)
	movlw	low highword(0)
	movwf	(delay_LCD@var+2)
	movlw	high(0)
	movwf	(delay_LCD@var+1)
	movlw	low(0)
	movwf	(delay_LCD@var)

	goto	l1615
	
l1613:	
	movlw	01h
	addwf	(delay_LCD@var),f
	movlw	0
	skipnc
movlw 1
	addwf	(delay_LCD@var+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(delay_LCD@var+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(delay_LCD@var+3),f
	
l1615:	
	movf	(delay_LCD@t),w
	movwf	(??_delay_LCD+0)+0
	movf	(delay_LCD@t+1),w
	movwf	((??_delay_LCD+0)+0+1)
	movf	(delay_LCD@t+2),w
	movwf	((??_delay_LCD+0)+0+2)
	movf	(delay_LCD@t+3),w
	movwf	((??_delay_LCD+0)+0+3)
	movlw	06h
u1855:
	clrc
	rrf	(??_delay_LCD+0)+3,f
	rrf	(??_delay_LCD+0)+2,f
	rrf	(??_delay_LCD+0)+1,f
	rrf	(??_delay_LCD+0)+0,f
u1850:
	addlw	-1
	skipz
	goto	u1855
	movf	3+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var+3),w
	skipz
	goto	u1865
	movf	2+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var+2),w
	skipz
	goto	u1865
	movf	1+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var+1),w
	skipz
	goto	u1865
	movf	0+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var),w
u1865:
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l1613
u1860:
	line	73
	
l196:	
	return
	callstack 0
GLOBAL	__end_of_delay_LCD
	__end_of_delay_LCD:
	signat	_delay_LCD,4217
	global	_get_temperature_value

;; *************** function _get_temperature_value *****************
;; Defined at:
;;		line 137 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  ADC_value       1    wreg     PTR 
;;		 -> ADC_value(6), 
;; Auto vars:     Size  Location     Type
;;  ADC_value       1   25[BANK1 ] PTR 
;;		 -> ADC_value(6), 
;;  Rt              4   31[BANK1 ] unsigned long 
;;  vout            3   26[BANK1 ] unsigned long 
;;  result          2   29[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  3   22[BANK1 ] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___ftsub
;;		___fttol
;;		___lltoft
;;		_interpolate
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	137
global __ptext13
__ptext13:	;psect for function _get_temperature_value
psect	text13
	file	"../main.c"
	line	137
	
_get_temperature_value:	
;incstack = 0
	callstack 0
; Regs used in _get_temperature_value: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	138
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@ADC_value)^080h
	line	139
	
l2745:	
	line	140
	
l2747:	
	movf	(get_temperature_value@ADC_value)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	(get_temperature_value@vout)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_temperature_value@vout+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_temperature_value@vout+2)^080h
	line	141
	
l2749:	
	line	142
	
l2751:	
	movf	(get_temperature_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x7a
	movwf	(___ftmul@f1+1)
	movlw	0x44
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftsub@f1)
	movlw	0xa0
	movwf	(___ftsub@f1+1)
	movlw	0x40
	movwf	(___ftsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftsub)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftsub)),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@Rt+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@Rt+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@Rt+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@Rt)^080h

	line	143
	
l2753:	
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4341
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4341
	movf	(get_temperature_value@Rt+1)^080h,w
	btfss	status,2
	goto	u4341
	movlw	242
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4343
u4343:
	btfsc	status,0
	goto	u4341
	goto	u4340

u4341:
	goto	l2759
u4340:
	
l2755:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4350
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4350
	movf	(get_temperature_value@Rt+1)^080h,w
	btfss	status,2
	goto	u4350
	movlw	178
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4353
u4353:
	btfss	status,0
	goto	u4351
	goto	u4350

u4351:
	goto	l2759
u4350:
	line	145
	
l2757:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(_res+3)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_res+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_res+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_res)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(04h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	(_temp)^080h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+01h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	146
	goto	l2869
	line	147
	
l2759:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4361
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4361
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4363
	movlw	77
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4363
u4363:
	btfsc	status,0
	goto	u4361
	goto	u4360

u4361:
	goto	l2765
u4360:
	
l2761:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4370
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4370
	movf	(get_temperature_value@Rt+1)^080h,w
	btfss	status,2
	goto	u4370
	movlw	242
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4373
u4373:
	btfss	status,0
	goto	u4371
	goto	u4370

u4371:
	goto	l2765
u4370:
	line	149
	
l2763:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(04h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(08h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+01h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+02h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	150
	goto	l2869
	line	151
	
l2765:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4381
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4381
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4383
	movlw	212
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4383
u4383:
	btfsc	status,0
	goto	u4381
	goto	u4380

u4381:
	goto	l2771
u4380:
	
l2767:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4390
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4390
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4393
	movlw	77
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4393
u4393:
	btfss	status,0
	goto	u4391
	goto	u4390

u4391:
	goto	l2771
u4390:
	line	153
	
l2769:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(08h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(0Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+02h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+03h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	154
	goto	l2869
	line	155
	
l2771:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4401
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4401
	movlw	2
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4403
	movlw	156
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4403
u4403:
	btfsc	status,0
	goto	u4401
	goto	u4400

u4401:
	goto	l2777
u4400:
	
l2773:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4410
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4410
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4413
	movlw	212
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4413
u4413:
	btfss	status,0
	goto	u4411
	goto	u4410

u4411:
	goto	l2777
u4410:
	line	157
	
l2775:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(0Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(010h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+03h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+04h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	158
	goto	l2869
	line	159
	
l2777:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4421
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4421
	movlw	3
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4423
	movlw	206
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4423
u4423:
	btfsc	status,0
	goto	u4421
	goto	u4420

u4421:
	goto	l2783
u4420:
	
l2779:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4430
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4430
	movlw	2
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4433
	movlw	156
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4433
u4433:
	btfss	status,0
	goto	u4431
	goto	u4430

u4431:
	goto	l2783
u4430:
	line	161
	
l2781:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(010h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(014h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+04h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+05h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	162
	goto	l2869
	line	163
	
l2783:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4441
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4441
	movlw	4
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4443
	movlw	165
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4443
u4443:
	btfsc	status,0
	goto	u4441
	goto	u4440

u4441:
	goto	l2789
u4440:
	
l2785:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4450
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4450
	movlw	3
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4453
	movlw	206
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4453
u4453:
	btfss	status,0
	goto	u4451
	goto	u4450

u4451:
	goto	l2789
u4450:
	line	165
	
l2787:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(014h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(018h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+05h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+06h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	166
	goto	l2869
	line	167
	
l2789:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4461
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4461
	movlw	5
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4463
	movlw	180
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4463
u4463:
	btfsc	status,0
	goto	u4461
	goto	u4460

u4461:
	goto	l2795
u4460:
	
l2791:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4470
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4470
	movlw	4
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4473
	movlw	165
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4473
u4473:
	btfss	status,0
	goto	u4471
	goto	u4470

u4471:
	goto	l2795
u4470:
	line	169
	
l2793:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(018h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(01Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+06h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+07h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	170
	goto	l2869
	line	171
	
l2795:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4481
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4481
	movlw	7
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4483
	movlw	11
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4483
u4483:
	btfsc	status,0
	goto	u4481
	goto	u4480

u4481:
	goto	l2801
u4480:
	
l2797:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4490
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4490
	movlw	5
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4493
	movlw	180
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4493
u4493:
	btfss	status,0
	goto	u4491
	goto	u4490

u4491:
	goto	l2801
u4490:
	line	173
	
l2799:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(01Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(020h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+07h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+08h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	174
	goto	l2869
	line	175
	
l2801:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4501
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4501
	movlw	8
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4503
	movlw	191
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4503
u4503:
	btfsc	status,0
	goto	u4501
	goto	u4500

u4501:
	goto	l2807
u4500:
	
l2803:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4510
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4510
	movlw	7
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4513
	movlw	11
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4513
u4513:
	btfss	status,0
	goto	u4511
	goto	u4510

u4511:
	goto	l2807
u4510:
	line	177
	
l2805:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(020h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(024h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+08h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+09h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	178
	goto	l2869
	line	179
	
l2807:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4521
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4521
	movlw	10
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4523
	movlw	237
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4523
u4523:
	btfsc	status,0
	goto	u4521
	goto	u4520

u4521:
	goto	l2813
u4520:
	
l2809:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4530
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4530
	movlw	8
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4533
	movlw	191
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4533
u4533:
	btfss	status,0
	goto	u4531
	goto	u4530

u4531:
	goto	l2813
u4530:
	line	181
	
l2811:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(024h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(028h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+09h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+0Ah,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	182
	goto	l2869
	line	183
	
l2813:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4541
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4541
	movlw	13
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4543
	movlw	193
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4543
u4543:
	btfsc	status,0
	goto	u4541
	goto	u4540

u4541:
	goto	l2819
u4540:
	
l2815:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4550
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4550
	movlw	10
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4553
	movlw	237
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4553
u4553:
	btfss	status,0
	goto	u4551
	goto	u4550

u4551:
	goto	l2819
u4550:
	line	185
	
l2817:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(028h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(02Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+0Ah,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+0Bh,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	186
	goto	l2869
	line	187
	
l2819:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4561
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4561
	movlw	17
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4563
	movlw	99
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4563
u4563:
	btfsc	status,0
	goto	u4561
	goto	u4560

u4561:
	goto	l2825
u4560:
	
l2821:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4570
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4570
	movlw	13
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4573
	movlw	193
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4573
u4573:
	btfss	status,0
	goto	u4571
	goto	u4570

u4571:
	goto	l2825
u4570:
	line	189
	
l2823:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(02Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(030h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+0Bh,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+0Ch,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	190
	goto	l2869
	line	191
	
l2825:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4581
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4581
	movlw	22
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4583
	movlw	39
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4583
u4583:
	btfsc	status,0
	goto	u4581
	goto	u4580

u4581:
	goto	l2831
u4580:
	
l2827:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4590
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4590
	movlw	17
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4593
	movlw	99
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4593
u4593:
	btfss	status,0
	goto	u4591
	goto	u4590

u4591:
	goto	l2831
u4590:
	line	193
	
l2829:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(030h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(034h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+0Ch,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+0Dh,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	194
	goto	l2869
	line	195
	
l2831:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4601
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4601
	movlw	28
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4603
	movlw	113
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4603
u4603:
	btfsc	status,0
	goto	u4601
	goto	u4600

u4601:
	goto	l2837
u4600:
	
l2833:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4610
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4610
	movlw	22
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4613
	movlw	39
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4613
u4613:
	btfss	status,0
	goto	u4611
	goto	u4610

u4611:
	goto	l2837
u4610:
	line	197
	
l2835:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(034h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(038h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+0Dh,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+0Eh,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	198
	goto	l2869
	line	199
	
l2837:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4621
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4621
	movlw	36
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4623
	movlw	205
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4623
u4623:
	btfsc	status,0
	goto	u4621
	goto	u4620

u4621:
	goto	l2843
u4620:
	
l2839:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4630
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4630
	movlw	28
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4633
	movlw	113
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4633
u4633:
	btfss	status,0
	goto	u4631
	goto	u4630

u4631:
	goto	l2843
u4630:
	line	201
	
l2841:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(038h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(03Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+0Eh,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+0Fh,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	202
	goto	l2869
	line	203
	
l2843:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4641
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4641
	movlw	63
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4643
	movlw	53
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4643
u4643:
	btfsc	status,0
	goto	u4641
	goto	u4640

u4641:
	goto	l2849
u4640:
	
l2845:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4650
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4650
	movlw	36
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4653
	movlw	205
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4653
u4653:
	btfss	status,0
	goto	u4651
	goto	u4650

u4651:
	goto	l2849
u4650:
	line	205
	
l2847:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(03Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(040h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+0Fh,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+010h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	206
	goto	l2869
	line	207
	
l2849:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4661
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4661
	movlw	112
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4663
	movlw	9
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4663
u4663:
	btfsc	status,0
	goto	u4661
	goto	u4660

u4661:
	goto	l2855
u4660:
	
l2851:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4670
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4670
	movlw	63
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4673
	movlw	53
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4673
u4673:
	btfss	status,0
	goto	u4671
	goto	u4670

u4671:
	goto	l2855
u4670:
	line	209
	
l2853:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(040h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(044h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+010h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+011h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	210
	goto	l2869
	line	211
	
l2855:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4681
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4681
	movlw	205
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4683
	movlw	221
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4683
u4683:
	btfsc	status,0
	goto	u4681
	goto	u4680

u4681:
	goto	l2861
u4680:
	
l2857:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4690
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4690
	movlw	112
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4693
	movlw	9
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4693
u4693:
	btfss	status,0
	goto	u4691
	goto	u4690

u4691:
	goto	l2861
u4690:
	line	213
	
l2859:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(044h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(048h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+011h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+012h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	214
	goto	l2869
	line	215
	
l2861:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4701
	movlw	1
	subwf	(get_temperature_value@Rt+2)^080h,w
	skipz
	goto	u4703
	movlw	134
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4703
	movlw	161
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4703
u4703:
	btfsc	status,0
	goto	u4701
	goto	u4700

u4701:
	goto	l2867
u4700:
	
l2863:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u4710
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u4710
	movlw	205
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u4713
	movlw	221
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u4713
u4713:
	btfss	status,0
	goto	u4711
	goto	u4710

u4711:
	goto	l2867
u4710:
	line	217
	
l2865:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@Rt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x+2)^080h
	movlw	low(048h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(04Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltoft@c)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lltoft@c+3)
	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(interpolate@x2+2)^080h
	movf	0+(_temp)^080h+012h,w
	movwf	(interpolate@y1)^080h
	clrf	(interpolate@y1+1)^080h
	btfsc	(interpolate@y1)^080h,7
	decf	(interpolate@y1+1)^080h,f
	movf	0+(_temp)^080h+013h,w
	movwf	(interpolate@y2)^080h
	clrf	(interpolate@y2+1)^080h
	btfsc	(interpolate@y2)^080h,7
	decf	(interpolate@y2+1)^080h,f
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_temperature_value@result)^080h
	line	218
	goto	l2869
	line	221
	
l2867:	
	movlw	09Ch
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(get_temperature_value@result)^080h
	movlw	0FFh
	movwf	((get_temperature_value@result)^080h)+1
	line	223
	
l2869:	
	movf	(get_temperature_value@result+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_temperature_value@result)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_get_temperature_value)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_get_temperature_value+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_get_temperature_value+2)^080h
	line	224
	
l141:	
	return
	callstack 0
GLOBAL	__end_of_get_temperature_value
	__end_of_get_temperature_value:
	signat	_get_temperature_value,4219
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   13[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_temperature_value
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lltoft.c"
	line	35
global __ptext14
__ptext14:	;psect for function ___lltoft
psect	text14
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lltoft.c"
	line	35
	
___lltoft:	
;incstack = 0
	callstack 2
; Regs used in ___lltoft: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l2653:	
	movlw	low(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l2659
	line	42
	
l2655:	
	movlw	01h
u4115:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u4115

	line	43
	
l2657:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___lltoft@exp),f
	line	41
	
l2659:	
	movlw	high highword(0FF000000h)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l2655
u4120:
	line	45
	
l2661:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	line	46
	
l655:	
	return
	callstack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	_get_pressure_value

;; *************** function _get_pressure_value *****************
;; Defined at:
;;		line 87 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  ADC_value       1    wreg     PTR 
;;		 -> ADC_value(6), 
;; Auto vars:     Size  Location     Type
;;  ADC_value       1   25[BANK1 ] PTR 
;;		 -> ADC_value(6), 
;;  vout            3   28[BANK1 ] PTR 
;;  result          2   26[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  3   22[BANK1 ] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		___awtoft
;;		___ftge
;;		_interpolate
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	87
global __ptext15
__ptext15:	;psect for function _get_pressure_value
psect	text15
	file	"../main.c"
	line	87
	
_get_pressure_value:	
;incstack = 0
	callstack 0
; Regs used in _get_pressure_value: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	88
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@ADC_value)^080h
	line	89
	
l2675:	
	line	90
	
l2677:	
	movf	(get_pressure_value@ADC_value)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	(get_pressure_value@vout)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_pressure_value@vout+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_pressure_value@vout+2)^080h
	line	91
	
l2679:	
	movlw	0x9a
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0x99
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4141
	goto	u4140
u4141:
	goto	l2685
u4140:
	
l2681:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4151
	goto	u4150
u4151:
	goto	l2685
u4150:
	line	93
	
l2683:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_voltage)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@x1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_voltage+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@x1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_voltage+2)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@x1+2)^080h
	movlw	low(03h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_pressure+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_pressure)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+02h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+02h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	94
	goto	l2741
	line	95
	
l2685:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x19
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4161
	goto	u4160
u4161:
	goto	l2691
u4160:
	
l2687:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x99
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4171
	goto	u4170
u4171:
	goto	l2691
u4170:
	line	97
	
l2689:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(03h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(06h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+02h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+02h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+04h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+04h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	98
	goto	l2741
	line	99
	
l2691:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4181
	goto	u4180
u4181:
	goto	l2697
u4180:
	
l2693:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x19
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4191
	goto	u4190
u4191:
	goto	l2697
u4190:
	line	101
	
l2695:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(06h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(09h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+04h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+04h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+06h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+06h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	102
	goto	l2741
	line	103
	
l2697:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0xd9
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4201
	goto	u4200
u4201:
	goto	l2703
u4200:
	
l2699:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4211
	goto	u4210
u4211:
	goto	l2703
u4210:
	line	105
	
l2701:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(09h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(0Ch)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+06h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+06h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+08h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+08h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	106
	goto	l2741
	line	107
	
l2703:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xc
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4221
	goto	u4220
u4221:
	goto	l2709
u4220:
	
l2705:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0xd9
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4231
	goto	u4230
u4231:
	goto	l2709
u4230:
	line	109
	
l2707:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(0Ch)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(0Fh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+08h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+08h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+0Ah,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+0Ah,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	110
	goto	l2741
	line	111
	
l2709:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x39
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4241
	goto	u4240
u4241:
	goto	l2715
u4240:
	
l2711:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xc
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4251
	goto	u4250
u4251:
	goto	l2715
u4250:
	line	113
	
l2713:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(0Fh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(012h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+0Ah,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+0Ah,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+0Ch,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+0Ch,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	114
	goto	l2741
	line	115
	
l2715:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x53
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4261
	goto	u4260
u4261:
	goto	l2721
u4260:
	
l2717:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x39
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4271
	goto	u4270
u4271:
	goto	l2721
u4270:
	line	117
	
l2719:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(012h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(015h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+0Ch,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+0Ch,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+0Eh,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+0Eh,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	118
	goto	l2741
	line	119
	
l2721:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x73
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4281
	goto	u4280
u4281:
	goto	l2727
u4280:
	
l2723:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x53
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4291
	goto	u4290
u4291:
	goto	l2727
u4290:
	line	121
	
l2725:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(015h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(018h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+0Eh,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+0Eh,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+010h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+010h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	122
	goto	l2741
	line	123
	
l2727:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4301
	goto	u4300
u4301:
	goto	l2733
u4300:
	
l2729:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x73
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4311
	goto	u4310
u4311:
	goto	l2733
u4310:
	line	125
	
l2731:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(018h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(01Bh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+010h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+010h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+012h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+012h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	126
	goto	l2741
	line	127
	
l2733:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x9c
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4321
	goto	u4320
u4321:
	goto	l2739
u4320:
	
l2735:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4331
	goto	u4330
u4331:
	goto	l2739
u4330:
	line	129
	
l2737:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout)^080h,w
	movwf	(interpolate@x)^080h
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(interpolate@x+1)^080h
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(interpolate@x+2)^080h
	movlw	low(01Bh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)^080h
	movlw	low(01Eh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+012h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+012h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(_pressure)^0180h+014h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_pressure)^0180h+014h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(interpolate@y2)^080h
	fcall	_interpolate
	movf	(1+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result+1)^080h
	movf	(0+(?_interpolate))^080h,w
	movwf	(get_pressure_value@result)^080h
	line	130
	goto	l2741
	line	132
	
l2739:	
	movlw	09Ch
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	movlw	0FFh
	movwf	((get_pressure_value@result)^080h)+1
	line	134
	
l2741:	
	movf	(get_pressure_value@result+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@result)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_get_pressure_value)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_get_pressure_value+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_get_pressure_value+2)^080h
	line	135
	
l100:	
	return
	callstack 0
GLOBAL	__end_of_get_pressure_value
	__end_of_get_pressure_value:
	signat	_get_pressure_value,4219
	global	_interpolate

;; *************** function _interpolate *****************
;; Defined at:
;;		line 226 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  x               3    6[BANK1 ] float 
;;  x1              3    9[BANK1 ] float 
;;  x2              3   12[BANK1 ] float 
;;  y1              2   15[BANK1 ] int 
;;  y2              2   17[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    6[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0      13       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___ftsub
;;		___fttol
;; This function is called by:
;;		_get_pressure_value
;;		_get_temperature_value
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	226
global __ptext16
__ptext16:	;psect for function _interpolate
psect	text16
	file	"../main.c"
	line	226
	
_interpolate:	
;incstack = 0
	callstack 0
; Regs used in _interpolate: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	228
	
l2649:	
	movf	(interpolate@y1)^080h,w
	subwf	(interpolate@y2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtoft@c)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@y1+1)^080h,w
	skipc
	incf	(interpolate@y1+1)^080h,w
	subwf	(interpolate@y2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftsub)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftsub)),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@x1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(___ftmul@f1)
	movf	(1+(?___ftsub)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?___ftsub)),w
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_interpolate$758)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_interpolate$758+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_interpolate$758+2)^080h
	movf	(interpolate@y1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(interpolate@y1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftadd@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_interpolate$758)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_interpolate$758+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_interpolate$758+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_interpolate+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_interpolate)^080h
	line	229
	
l144:	
	return
	callstack 0
GLOBAL	__end_of_interpolate
	__end_of_interpolate:
	signat	_interpolate,20602
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   65[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    1[BANK1 ] unsigned long 
;;  exp1            1    5[BANK1 ] unsigned char 
;;  sign1           1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   65[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       6       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_get_temperature_value
;;		_interpolate
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
	line	44
global __ptext17
__ptext17:	;psect for function ___fttol
psect	text17
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
	line	44
	
___fttol:	
;incstack = 0
	callstack 2
; Regs used in ___fttol: [wreg+status,2+status,0+btemp+1]
	line	49
	
l2605:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___fttol@exp1)^080h
	movf	(((___fttol@exp1)^080h)),w
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l2611
u4010:
	line	50
	
l2607:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l606
	line	51
	
l2611:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4025:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4020:
	addlw	-1
	skipz
	goto	u4025
	movf	0+(??___fttol+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___fttol@sign1)^080h
	line	52
	
l2613:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2615:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2617:	
	movf	(___fttol@f1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___fttol@lval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(___fttol@f1+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	((___fttol@lval)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(___fttol@f1+2),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	((___fttol@lval)^080h)+2
	clrf	((___fttol@lval)^080h)+3
	line	55
	
l2619:	
	movlw	08Eh
	subwf	(___fttol@exp1)^080h,f
	line	56
	
l2621:	
	btfss	(___fttol@exp1)^080h,7
	goto	u4031
	goto	u4030
u4031:
	goto	l2633
u4030:
	line	57
	
l2623:	
	movf	(___fttol@exp1)^080h,w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4041
	goto	u4040
u4041:
	goto	l2629
u4040:
	goto	l2607
	line	60
	
l2629:	
	movlw	01h
u4055:
	clrc
	rrf	(___fttol@lval+3)^080h,f
	rrf	(___fttol@lval+2)^080h,f
	rrf	(___fttol@lval+1)^080h,f
	rrf	(___fttol@lval)^080h,f
	addlw	-1
	skipz
	goto	u4055

	line	61
	
l2631:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___fttol@exp1)^080h,f
	btfss	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l2629
u4060:
	goto	l2641
	line	63
	
l2633:	
	movlw	low(018h)
	subwf	(___fttol@exp1)^080h,w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l613
u4070:
	goto	l2607
	line	66
	
l2639:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___fttol+0)+0
u4085:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	rlf	(___fttol@lval)^080h,f
	rlf	(___fttol@lval+1)^080h,f
	rlf	(___fttol@lval+2)^080h,f
	rlf	(___fttol@lval+3)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(??___fttol+0)+0
	goto	u4085
	line	67
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(___fttol@exp1)^080h,f
	line	68
	
l613:	
	line	65
	movf	((___fttol@exp1)^080h),w
	btfss	status,2
	goto	u4091
	goto	u4090
u4091:
	goto	l2639
u4090:
	line	70
	
l2641:	
	movf	((___fttol@sign1)^080h),w
	btfsc	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l2645
u4100:
	line	71
	
l2643:	
	comf	(___fttol@lval)^080h,f
	comf	(___fttol@lval+1)^080h,f
	comf	(___fttol@lval+2)^080h,f
	comf	(___fttol@lval+3)^080h,f
	incf	(___fttol@lval)^080h,f
	skipnz
	incf	(___fttol@lval+1)^080h,f
	skipnz
	incf	(___fttol@lval+2)^080h,f
	skipnz
	incf	(___fttol@lval+3)^080h,f
	line	72
	
l2645:	
	movf	(___fttol@lval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___fttol@lval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___fttol@lval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___fttol@lval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)

	line	73
	
l606:	
	return
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   29[BANK0 ] float 
;;  f1              3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   29[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_get_temperature_value
;;		_interpolate
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftsub.c"
	line	17
global __ptext18
__ptext18:	;psect for function ___ftsub
psect	text18
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftsub.c"
	line	17
	
___ftsub:	
;incstack = 0
	callstack 0
; Regs used in ___ftsub: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l2597:	
	movf	(___ftsub@f2+2),w
	iorwf	(___ftsub@f2+1),w
	iorwf	(___ftsub@f2),w
	skipnz
	goto	u4001
	goto	u4000
u4001:
	goto	l2601
u4000:
	line	23
	
l2599:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	25
	
l2601:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	26
	
l602:	
	return
	callstack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   17[BANK0 ] float 
;;  f2              3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   28[BANK0 ] unsigned char 
;;  exp2            1   27[BANK0 ] unsigned char 
;;  sign            1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_interpolate
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
	line	86
global __ptext19
__ptext19:	;psect for function ___ftadd
psect	text19
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
	line	86
	
___ftadd:	
;incstack = 0
	callstack 0
; Regs used in ___ftadd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	90
	
l2409:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	movf	((___ftadd@exp1)),w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l2415
u3570:
	
l2411:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l2419
u3580:
	
l2413:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l2419
u3590:
	line	93
	
l2415:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l539
	line	94
	
l2419:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l542
u3600:
	
l2421:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l2425
u3610:
	
l2423:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l2425
u3620:
	
l542:	
	line	95
	goto	l539
	line	96
	
l2425:	
	movlw	low(06h)
	movwf	(___ftadd@sign)
	line	97
	
l2427:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l543
u3630:
	line	98
	
l2429:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l543:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l544
u3640:
	line	100
	
l2431:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l544:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2433:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2435:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l2449
u3650:
	line	110
	
l2437:	
	movlw	01h
u3665:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3665
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l2439:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3671
	goto	u3670
u3671:
	goto	l2447
u3670:
	
l2441:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l2437
u3680:
	goto	l2447
	line	114
	
l2443:	
	movlw	01h
u3695:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3695

	line	115
	
l2445:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftadd@exp1),f
	line	113
	
l2447:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l2443
u3700:
	goto	l553
	line	117
	
l2449:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l553
u3710:
	line	121
	
l2451:	
	movlw	01h
u3725:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3725
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l2453:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3731
	goto	u3730
u3731:
	goto	l2461
u3730:
	
l2455:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l2451
u3740:
	goto	l2461
	line	125
	
l2457:	
	movlw	01h
u3755:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3755

	line	126
	
l2459:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftadd@exp2),f
	line	124
	
l2461:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l2457
u3760:
	line	129
	
l553:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l2465
u3770:
	line	131
	
l2463:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	line	134
	
l2465:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l2469
u3780:
	line	136
	
l2467:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	139
	
l2469:	
	clrf	(___ftadd@sign)
	line	140
	
l2471:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3791
	addwf	(___ftadd@f2+1),f
u3791:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3792
	addwf	(___ftadd@f2+2),f
u3792:

	line	141
	
l2473:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l2479
u3800:
	line	142
	
l2475:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l2477:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l2479:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l539:	
	return
	callstack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   35[BANK0 ] float 
;;  f2              3   38[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   45[BANK0 ] unsigned um
;;  sign            1   49[BANK0 ] unsigned char 
;;  cntr            1   48[BANK0 ] unsigned char 
;;  exp             1   44[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   35[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_temperature_value
;;		_interpolate
;;		_read_adc
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext20
__ptext20:	;psect for function ___ftmul
psect	text20
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
	line	62
	
___ftmul:	
;incstack = 0
	callstack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	67
	
l2541:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	(((___ftmul@exp))),w
	btfss	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l2547
u3880:
	line	68
	
l2543:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l585
	line	69
	
l2547:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	(((___ftmul@sign))),w
	btfss	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l2553
u3890:
	line	70
	
l2549:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l585
	line	71
	
l2553:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftmul@exp),f
	line	72
	
l2555:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(___ftmul@sign)
	line	73
	
l2557:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	btemp+1
	movf	btemp+1,w
	xorwf	(___ftmul@sign),f
	line	74
	
l2559:	
	movlw	low(080h)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(___ftmul@sign),f
	line	75
	
l2561:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2563:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2565:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2567:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2569:	
	movlw	low(07h)
	movwf	(___ftmul@cntr)
	line	136
	
l2571:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l2575
u3900:
	line	137
	
l2573:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3911
	addwf	(___ftmul@f3_as_product+1),f
u3911:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3912
	addwf	(___ftmul@f3_as_product+2),f
u3912:

	line	138
	
l2575:	
	movlw	01h
u3925:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3925

	line	139
	
l2577:	
	movlw	01h
u3935:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3935
	line	140
	
l2579:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l2571
u3940:
	line	143
	
l2581:	
	movlw	low(09h)
	movwf	(___ftmul@cntr)
	line	145
	
l2583:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l2587
u3950:
	line	146
	
l2585:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3961
	addwf	(___ftmul@f3_as_product+1),f
u3961:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3962
	addwf	(___ftmul@f3_as_product+2),f
u3962:

	line	147
	
l2587:	
	movlw	01h
u3975:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3975

	line	148
	
l2589:	
	movlw	01h
u3985:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3985

	line	149
	
l2591:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l2583
u3990:
	line	156
	
l2593:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	157
	
l585:	
	return
	callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   50[BANK0 ] float 
;;  f1              3   53[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   60[BANK0 ] float 
;;  sign            1   64[BANK0 ] unsigned char 
;;  exp             1   63[BANK0 ] unsigned char 
;;  cntr            1   59[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_temperature_value
;;		_interpolate
;;		_read_adc
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
	line	56
global __ptext21
__ptext21:	;psect for function ___ftdiv
psect	text21
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
	line	56
	
___ftdiv:	
;incstack = 0
	callstack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l2495:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l2501
u3820:
	line	64
	
l2497:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l570
	line	65
	
l2501:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l2507
u3830:
	line	66
	
l2503:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l570
	line	67
	
l2507:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l2509:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l2511:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l2513:	
	movf	0+(___ftdiv@f2)+02h,w
	movwf	btemp+1
	movf	btemp+1,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l2515:	
	movlw	low(080h)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(___ftdiv@sign),f
	line	72
	
l2517:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l2519:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l2521:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l2523:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l2525:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l2527:	
	movlw	01h
u3845:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3845
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3855
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3855
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3855:
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l2533
u3850:
	line	80
	
l2529:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	81
	
l2531:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l2533:	
	movlw	01h
u3865:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3865
	line	84
	
l2535:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l2527
u3870:
	line	85
	
l2537:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l570:	
	return
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   13[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_pressure_value
;;		_get_temperature_value
;;		_interpolate
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
global __ptext22
__ptext22:	;psect for function ___awtoft
psect	text22
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
	
___awtoft:	
;incstack = 0
	callstack 1
; Regs used in ___awtoft: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	36
	
l2483:	
	clrf	(___awtoft@sign)
	line	37
	
l2485:	
	btfss	(___awtoft@c+1),7
	goto	u3811
	goto	u3810
u3811:
	goto	l2491
u3810:
	line	38
	
l2487:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l2489:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l2491:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l512:	
	return
	callstack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    5[BANK0 ] unsigned um
;;  exp             1    8[BANK0 ] unsigned char 
;;  sign            1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    5[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
global __ptext23
__ptext23:	;psect for function ___ftpack
psect	text23
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 2
; Regs used in ___ftpack: [wreg+status,2+status,0+btemp+1]
	line	64
	
l2373:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l2377
u3450:
	
l2375:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l2385
u3460:
	line	65
	
l2377:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l518
	line	67
	
l2381:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftpack@exp),f
	line	68
	
l2383:	
	movlw	01h
u3475:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3475

	line	66
	
l2385:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l2381
u3480:
	goto	l2393
	line	71
	
l2387:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftpack@exp),f
	line	72
	
l2389:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l2391:	
	movlw	01h
u3495:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3495

	line	70
	
l2393:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l2387
u3500:
	goto	l2397
	line	76
	
l2395:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3515:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3515
	line	75
	
l2397:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l529
u3520:
	
l2399:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l2395
u3530:
	
l529:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l530
u3540:
	line	80
	
l2401:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l530:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2403:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3555:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3550:
	addlw	-1
	skipz
	goto	u3555
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2405:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l531
u3560:
	line	84
	
l2407:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l531:	
	line	85
	line	86
	
l518:	
	return
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    5[BANK0 ] float 
;;  ff2             3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_pressure_value
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
	line	4
global __ptext24
__ptext24:	;psect for function ___ftge
psect	text24
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 3
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1891:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l1895
u2430:
	line	7
	
l1893:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l1895:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l1899
u2440:
	line	9
	
l1897:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l1899:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1901:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1903:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2455
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2455
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2455:
	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l1907
u2450:
	
l1905:	
	clrc
	
	goto	l579
	
l1907:	
	setc
	
	line	13
	
l579:	
	return
	callstack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_my_isr

;; *************** function _my_isr *****************
;; Defined at:
;;		line 240 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		i1___awtoft
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	240
global __ptext25
__ptext25:	;psect for function _my_isr
psect	text25
	file	"../main.c"
	line	240
	
_my_isr:	
;incstack = 0
	callstack 0
; Regs used in _my_isr: [wreg+status,2+status,0+btemp+1+pclath+cstack]
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
	movwf	(??_my_isr+2)
	movf	pclath,w
	movwf	(??_my_isr+3)
	movf	btemp+1,w
	movwf	(??_my_isr+4)
	ljmp	_my_isr
psect	text25
	line	242
	
i1l2365:	
	btfss	(102/8),(102)&7	;volatile
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l153
u343_20:
	
i1l2367:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1126/8)^080h,(1126)&7	;volatile
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l153
u344_20:
	line	244
	
i1l2369:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	245
	
i1l2371:	
	movf	(30),w	;volatile
	movwf	(??_my_isr+0)+0
	clrf	(??_my_isr+0)+0+1
	movf	(??_my_isr+0)+0,w
	movwf	(??_my_isr+0)+1
	clrf	(??_my_isr+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_my_isr+0)+0,w
	movwf	(i1___awtoft@c)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_my_isr+0)+0,w
	movwf	1+(i1___awtoft@c)
	fcall	i1___awtoft
	movf	(0+(?i1___awtoft)),w
	movwf	(_adc_result)
	movf	(1+(?i1___awtoft)),w
	movwf	(_adc_result+1)
	movf	(2+(?i1___awtoft)),w
	movwf	(_adc_result+2)
	line	247
	
i1l153:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_my_isr+4),w
	movwf	btemp+1
	movf	(??_my_isr+3),w
	movwf	pclath
	swapf	(??_my_isr+2),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_my_isr
	__end_of_my_isr:
	signat	_my_isr,89
	global	i1___awtoft

;; *************** function i1___awtoft *****************
;; Defined at:
;;		line 32 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_my_isr
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
global __ptext26
__ptext26:	;psect for function i1___awtoft
psect	text26
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
	
i1___awtoft:	
;incstack = 0
	callstack 0
; Regs used in i1___awtoft: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	36
	
i1l2309:	
	clrf	(i1___awtoft@sign)
	line	37
	
i1l2311:	
	btfss	(i1___awtoft@c+1),7
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l2317
u340_20:
	line	38
	
i1l2313:	
	comf	(i1___awtoft@c),f
	comf	(i1___awtoft@c+1),f
	incf	(i1___awtoft@c),f
	skipnz
	incf	(i1___awtoft@c+1),f
	line	39
	
i1l2315:	
	clrf	(i1___awtoft@sign)
	incf	(i1___awtoft@sign),f
	line	41
	
i1l2317:	
	movf	(i1___awtoft@c),w
	movwf	(i1___ftpack@arg)
	movf	(i1___awtoft@c+1),w
	movwf	(i1___ftpack@arg+1)
	clrf	(i1___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(i1___ftpack@exp)
	movf	(i1___awtoft@sign),w
	movwf	(i1___ftpack@sign)
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	movwf	(?i1___awtoft)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___awtoft+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___awtoft+2)
	line	42
	
i1l512:	
	return
	callstack 0
GLOBAL	__end_ofi1___awtoft
	__end_ofi1___awtoft:
	signat	i1___awtoft,4187
	global	i1___ftpack

;; *************** function i1___ftpack *****************
;; Defined at:
;;		line 62 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1___awtoft
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
global __ptext27
__ptext27:	;psect for function i1___ftpack
psect	text27
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
	
i1___ftpack:	
;incstack = 0
	callstack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0+btemp+1]
	line	64
	
i1l1971:	
	movf	((i1___ftpack@exp)),w
	btfsc	status,2
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l1975
u261_20:
	
i1l1973:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l1983
u262_20:
	line	65
	
i1l1975:	
	movlw	0x0
	movwf	(?i1___ftpack)
	movlw	0x0
	movwf	(?i1___ftpack+1)
	movlw	0x0
	movwf	(?i1___ftpack+2)
	goto	i1l518
	line	67
	
i1l1979:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(i1___ftpack@exp),f
	line	68
	
i1l1981:	
	movlw	01h
u263_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u263_25

	line	66
	
i1l1983:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l1979
u264_20:
	goto	i1l1991
	line	71
	
i1l1985:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(i1___ftpack@exp),f
	line	72
	
i1l1987:	
	movlw	01h
	addwf	(i1___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+2),f
	line	73
	
i1l1989:	
	movlw	01h
u265_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u265_25

	line	70
	
i1l1991:	
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l1985
u266_20:
	goto	i1l1995
	line	76
	
i1l1993:	
	movlw	01h
	subwf	(i1___ftpack@exp),f
	line	77
	movlw	01h
u267_25:
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u267_25
	line	75
	
i1l1995:	
	btfsc	(i1___ftpack@arg+1),(15)&7
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l529
u268_20:
	
i1l1997:	
	movlw	low(02h)
	subwf	(i1___ftpack@exp),w
	skipnc
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l1993
u269_20:
	
i1l529:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l530
u270_20:
	line	80
	
i1l1999:	
	movlw	0FFh
	andwf	(i1___ftpack@arg),f
	movlw	07Fh
	andwf	(i1___ftpack@arg+1),f
	movlw	0FFh
	andwf	(i1___ftpack@arg+2),f
	
i1l530:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f

	line	82
	
i1l2001:	
	movf	(i1___ftpack@exp),w
	movwf	((??i1___ftpack+0)+0)
	clrf	((??i1___ftpack+0)+0+1)
	clrf	((??i1___ftpack+0)+0+2)
	movlw	010h
u271_25:
	clrc
	rlf	(??i1___ftpack+0)+0,f
	rlf	(??i1___ftpack+0)+1,f
	rlf	(??i1___ftpack+0)+2,f
u271_20:
	addlw	-1
	skipz
	goto	u271_25
	movf	0+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg),f
	movf	1+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+1),f
	movf	2+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+2),f
	line	83
	
i1l2003:	
	movf	((i1___ftpack@sign)),w
	btfsc	status,2
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l531
u272_20:
	line	84
	
i1l2005:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l531:	
	line	85
	line	86
	
i1l518:	
	return
	callstack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
	signat	i1___ftpack,12379
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
