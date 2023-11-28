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
	FNCALL	_main,_display_pressure
	FNCALL	_main,_display_temperature
	FNCALL	_main,_init_ADC
	FNCALL	_main,_init_LCD
	FNCALL	_main,_init_uC
	FNCALL	_init_LCD,_delay_LCD
	FNCALL	_init_LCD,_lcd_clear
	FNCALL	_init_LCD,_lcd_goto
	FNCALL	_init_LCD,_lcd_puts
	FNCALL	_init_LCD,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_display_temperature,___fttol
	FNCALL	_display_temperature,_get_temperature_value
	FNCALL	_display_temperature,_lcd_goto
	FNCALL	_display_temperature,_lcd_puts
	FNCALL	_display_temperature,_read_adc
	FNCALL	_display_temperature,_sprintf
	FNCALL	_display_temperature,_strcpy
	FNCALL	_get_temperature_value,___awtoft
	FNCALL	_get_temperature_value,___ftdiv
	FNCALL	_get_temperature_value,___ftmul
	FNCALL	_get_temperature_value,___ftsub
	FNCALL	_get_temperature_value,___fttol
	FNCALL	_get_temperature_value,___lltoft
	FNCALL	_get_temperature_value,_interpolate
	FNCALL	___lltoft,___ftpack
	FNCALL	_display_pressure,___fttol
	FNCALL	_display_pressure,_get_pressure_value
	FNCALL	_display_pressure,_lcd_goto
	FNCALL	_display_pressure,_lcd_puts
	FNCALL	_display_pressure,_read_adc
	FNCALL	_display_pressure,_sprintf
	FNCALL	_display_pressure,_strcpy
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_read_adc,___awtoft
	FNCALL	_read_adc,___ftdiv
	FNCALL	_read_adc,___ftmul
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_write,_delay_LCD
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
	global	_pressure
	global	_temp
	global	_res
	global	_voltage
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"../main.c"
	line	12

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

	line	14

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
	line	13

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
	line	11

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
	global	_ADC_value
	global	_display_value
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0
_ADCON0	set	0x1F
	global	_PORTA
_PORTA	set	0x5
	global	_PORTD
_PORTD	set	0x8
	global	_GO_nDONE
_GO_nDONE	set	0xF9
	global	_RD4
_RD4	set	0x44
	global	_RD5
_RD5	set	0x45
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISD
_TRISD	set	0x88
	global	_TRISA
_TRISA	set	0x85
	global	_ANSELH
_ANSELH	set	0x189
	
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
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
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
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
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
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ADC_value:
       ds      6

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"../main.c"
	line	12
_pressure:
       ds      22

psect	dataBANK1
	file	"../main.c"
	line	14
_temp:
       ds      20

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_display_value:
       ds      20

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"../main.c"
	line	11
_voltage:
       ds      33

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"../main.c"
	line	13
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
	movlw low(__pdataBANK3+33)
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
	movlw low(__pdataBANK1+42)
	movwf btemp-1
	movlw high(__pidataBANK1)
	movwf btemp
	movlw low(__pidataBANK1)
	movwf btemp+1
	movlw low(__pdataBANK1)
	movwf fsr
	fcall init_ram0
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+014h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
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
	global	get_pressure_value@ADC_value
get_pressure_value@ADC_value:	; 1 bytes @ 0x0
	global	get_temperature_value@ADC_value
get_temperature_value@ADC_value:	; 1 bytes @ 0x0
	ds	1
	global	get_pressure_value@result
get_pressure_value@result:	; 2 bytes @ 0x1
	global	get_temperature_value@vout
get_temperature_value@vout:	; 3 bytes @ 0x1
	ds	2
	global	get_pressure_value@vout
get_pressure_value@vout:	; 3 bytes @ 0x3
	ds	1
	global	get_temperature_value@result
get_temperature_value@result:	; 2 bytes @ 0x4
	ds	2
	global	_display_pressure$755
_display_pressure$755:	; 3 bytes @ 0x6
	global	get_temperature_value@Rt
get_temperature_value@Rt:	; 4 bytes @ 0x6
	ds	3
	global	display_pressure@calculated_pressure
display_pressure@calculated_pressure:	; 2 bytes @ 0x9
	ds	1
	global	_display_temperature$756
_display_temperature$756:	; 3 bytes @ 0xA
	ds	3
	global	display_temperature@calculated_temp
display_temperature@calculated_temp:	; 2 bytes @ 0xD
	ds	2
??_main:	; 1 bytes @ 0xF
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?___ftge:	; 1 bit 
?_init_uC:	; 1 bytes @ 0x0
??_init_uC:	; 1 bytes @ 0x0
?_init_ADC:	; 1 bytes @ 0x0
??_init_ADC:	; 1 bytes @ 0x0
?_init_LCD:	; 1 bytes @ 0x0
?_display_pressure:	; 1 bytes @ 0x0
?_display_temperature:	; 1 bytes @ 0x0
?_strcpy:	; 1 bytes @ 0x0
?_lcd_goto:	; 1 bytes @ 0x0
?_delay_LCD:	; 1 bytes @ 0x0
?_lcd_write:	; 1 bytes @ 0x0
?_lcd_clear:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	delay_LCD@t
delay_LCD@t:	; 4 bytes @ 0x0
	ds	1
??_strcpy:	; 1 bytes @ 0x1
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x1
	ds	1
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_delay_LCD:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 1 bytes @ 0x5
	ds	1
??___ftge:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	delay_LCD@var
delay_LCD@var:	; 4 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
??___awtoft:	; 1 bytes @ 0xB
??___lwmod:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds	1
??_read_adc:	; 1 bytes @ 0xC
??_lcd_write:	; 1 bytes @ 0xC
??___ftsub:	; 1 bytes @ 0xC
??___lltoft:	; 1 bytes @ 0xC
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xC
	ds	1
??_interpolate:	; 1 bytes @ 0xD
??_get_pressure_value:	; 1 bytes @ 0xD
??_get_temperature_value:	; 1 bytes @ 0xD
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0xD
	ds	1
??_display_pressure:	; 1 bytes @ 0xE
??_display_temperature:	; 1 bytes @ 0xE
??_lcd_goto:	; 1 bytes @ 0xE
??_lcd_puts:	; 1 bytes @ 0xE
??_lcd_clear:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_lcd_puts:	; 1 bytes @ 0x0
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x0
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x0
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x0
	ds	2
??_init_LCD:	; 1 bytes @ 0x2
	ds	1
??_sprintf:	; 1 bytes @ 0x3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x3
	ds	3
??___ftadd:	; 1 bytes @ 0x6
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x6
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x8
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x9
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x9
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xA
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xB
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0xB
	ds	1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0xC
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xC
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0xC
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0xF
	ds	3
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x12
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x12
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x15
	ds	3
??___ftmul:	; 1 bytes @ 0x18
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1B
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1C
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1F
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x20
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x21
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x21
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x24
	ds	3
??___ftdiv:	; 1 bytes @ 0x27
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x2A
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x2B
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x2E
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x2F
	ds	1
	global	?_read_adc
?_read_adc:	; 3 bytes @ 0x30
	global	?___fttol
?___fttol:	; 4 bytes @ 0x30
	global	read_adc@channel
read_adc@channel:	; 2 bytes @ 0x30
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x30
	ds	3
	global	read_adc@adc_result
read_adc@adc_result:	; 3 bytes @ 0x33
	ds	1
??___fttol:	; 1 bytes @ 0x34
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x37
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x38
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3C
	ds	1
	global	?_interpolate
?_interpolate:	; 2 bytes @ 0x3D
	global	interpolate@x
interpolate@x:	; 3 bytes @ 0x3D
	ds	3
	global	interpolate@x1
interpolate@x1:	; 3 bytes @ 0x40
	ds	3
	global	interpolate@x2
interpolate@x2:	; 3 bytes @ 0x43
	ds	3
	global	interpolate@y1
interpolate@y1:	; 2 bytes @ 0x46
	ds	2
	global	interpolate@y2
interpolate@y2:	; 2 bytes @ 0x48
	ds	2
	global	_interpolate$754
_interpolate$754:	; 3 bytes @ 0x4A
	ds	3
	global	?_get_pressure_value
?_get_pressure_value:	; 3 bytes @ 0x4D
	global	?_get_temperature_value
?_get_temperature_value:	; 3 bytes @ 0x4D
	ds	3
;!
;!Data Sizes:
;!    Strings     107
;!    Constant    10
;!    Data        155
;!    BSS         26
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     80      80
;!    BANK1            80     18      66
;!    BANK3            96      0      53
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
;!    lcd_puts@s	PTR unsigned char  size(2) Largest target is 20
;!		 -> display_value(BANK3[20]), STR_5(CODE[18]), STR_6(CODE[11]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 20
;!		 -> display_value(BANK3[20]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 21
;!		 -> STR_2(CODE[21]), STR_4(CODE[19]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 20
;!		 -> display_value(BANK3[20]), 
;!
;!    strcpy@cp	PTR unsigned char  size(1) Largest target is 20
;!		 -> display_value(BANK3[20]), 
;!
;!    strcpy@from	PTR const unsigned char  size(1) Largest target is 19
;!		 -> STR_1(CODE[19]), STR_3(CODE[19]), 
;!
;!    strcpy@to	PTR unsigned char  size(1) Largest target is 20
;!		 -> display_value(BANK3[20]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _init_LCD->_lcd_write
;!    _lcd_clear->_lcd_write
;!    _display_temperature->_read_adc
;!    _get_temperature_value->___lltoft
;!    ___lltoft->___ftpack
;!    _display_pressure->_read_adc
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _read_adc->___awtoft
;!    _lcd_puts->_lcd_write
;!    _lcd_goto->_lcd_write
;!    _lcd_write->_delay_LCD
;!    _interpolate->___lltoft
;!    ___fttol->___awtoft
;!    ___ftadd->___awtoft
;!    ___ftmul->___awtoft
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _init_LCD->_lcd_puts
;!    _display_temperature->_get_temperature_value
;!    _get_temperature_value->_interpolate
;!    _display_pressure->_get_pressure_value
;!    _read_adc->___ftdiv
;!    _get_pressure_value->_interpolate
;!    _interpolate->___fttol
;!    ___fttol->___ftdiv
;!    ___ftsub->___ftadd
;!    ___ftmul->___ftsub
;!    ___ftdiv->___ftmul
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_display_temperature
;!    _display_temperature->_get_temperature_value
;!    _display_pressure->_get_pressure_value
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                 3     3      0   93623
;!                                             15 BANK1      3     3      0
;!                   _display_pressure
;!                _display_temperature
;!                           _init_ADC
;!                           _init_LCD
;!                            _init_uC
;! ---------------------------------------------------------------------------------
;! (1) _init_uC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_LCD                                             3     3      0    3335
;!                                              2 BANK0      3     3      0
;!                          _delay_LCD
;!                          _lcd_clear
;!                           _lcd_goto
;!                           _lcd_puts
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (2) _lcd_clear                                            0     0      0     620
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (1) _init_ADC                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _display_temperature                                  5     5      0   51431
;!                                             10 BANK1      5     5      0
;!                            ___fttol
;!              _get_temperature_value
;!                           _lcd_goto
;!                           _lcd_puts
;!                           _read_adc
;!                            _sprintf
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (2) _get_temperature_value                               13    10      3   40263
;!                                             77 BANK0      3     0      3
;!                                              0 BANK1     10    10      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                           ___lltoft
;!                        _interpolate
;! ---------------------------------------------------------------------------------
;! (3) ___lltoft                                             5     1      4    5076
;!                                              8 COMMON     5     1      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _display_pressure                                     5     5      0   38857
;!                                              6 BANK1      5     5      0
;!                            ___fttol
;!                 _get_pressure_value
;!                           _lcd_goto
;!                           _lcd_puts
;!                           _read_adc
;!                            _sprintf
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (3) _strcpy                                               3     2      1     235
;!                                              0 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             21    18      3    1170
;!                                              0 BANK0     13    10      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     265
;!                                              7 COMMON     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              7     3      4     268
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _read_adc                                             8     5      3    7711
;!                                             12 COMMON     2     2      0
;!                                             48 BANK0      6     3      3
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (2) _lcd_puts                                             2     0      2     877
;!                                              0 BANK0      2     0      2
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (2) _lcd_goto                                             1     1      0     642
;!                                              0 BANK0      1     1      0
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (2) _lcd_write                                            2     2      0     620
;!                                             12 COMMON     2     2      0
;!                          _delay_LCD
;! ---------------------------------------------------------------------------------
;! (3) _delay_LCD                                           12     8      4     576
;!                                              0 COMMON    12     8      4
;! ---------------------------------------------------------------------------------
;! (2) _get_pressure_value                                   9     6      3   27689
;!                                             77 BANK0      3     0      3
;!                                              0 BANK1      6     6      0
;!                           ___awtoft
;!                             ___ftge
;!                        _interpolate
;! ---------------------------------------------------------------------------------
;! (3) _interpolate                                         16     3     13   22347
;!                                             61 BANK0     16     3     13
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___fttol                                             13     9      4     464
;!                                             48 BANK0     13     9      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftsub (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftsub                                              6     0      6    3423
;!                                             12 BANK0      6     0      6
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (5) ___ftadd                                             12     6      6    3038
;!                                              0 BANK0     12     6      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    2632
;!                                             18 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;!                            ___ftsub (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             15     9      6    2586
;!                                             33 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                            ___ftsub (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             4     1      3    2342
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1986
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               6     0      6    2256
;!                                              0 COMMON     6     0      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _display_pressure
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!         ___ftadd (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!           ___ftadd (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftsub (ARG)
;!             ___ftadd
;!         ___ftpack (ARG)
;!         ___ftsub (ARG)
;!       ___ftmul (ARG)
;!       ___ftsub (ARG)
;!     _get_pressure_value
;!       ___awtoft
;!       ___ftge
;!       _interpolate
;!         ___awtoft
;!         ___ftadd
;!         ___ftdiv
;!         ___ftmul
;!         ___ftsub
;!         ___fttol
;!         ___lltoft (ARG)
;!           ___ftpack
;!     _lcd_goto
;!       _lcd_write
;!         _delay_LCD
;!     _lcd_puts
;!       _lcd_write
;!     _read_adc
;!       ___awtoft
;!       ___ftdiv
;!       ___ftmul
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!     _strcpy
;!   _display_temperature
;!     ___fttol
;!     _get_temperature_value
;!       ___awtoft
;!       ___ftdiv
;!       ___ftmul
;!       ___ftsub
;!       ___fttol
;!       ___lltoft
;!       _interpolate
;!     _lcd_goto
;!     _lcd_puts
;!     _read_adc
;!     _sprintf
;!     _strcpy
;!   _init_ADC
;!   _init_LCD
;!     _delay_LCD
;!     _lcd_clear
;!       _lcd_write
;!     _lcd_goto
;!     _lcd_puts
;!     _lcd_write
;!   _init_uC
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      35       9       55.2%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0      50      11       83.3%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     12      42       7       82.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     125      12        0.0%
;!ABS                  0      0     125       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 24 in file "../main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_display_pressure
;;		_display_temperature
;;		_init_ADC
;;		_init_LCD
;;		_init_uC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../main.c"
	line	24
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	24
	
_main:	
;incstack = 0
	callstack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	27
	
l2235:	
	fcall	_init_uC
	line	28
	fcall	_init_ADC
	line	29
	
l2237:	
	fcall	_init_LCD
	line	33
	
l2239:	
	fcall	_display_pressure
	line	34
	
l2241:	
	fcall	_display_temperature
	line	35
	
l2243:	
	asmopt push
asmopt off
movlw  3
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2)
movlw	8
movwf	((??_main+0)^080h+0+1)
	movlw	118
movwf	((??_main+0)^080h+0)
	u3177:
decfsz	((??_main+0)^080h+0),f
	goto	u3177
	decfsz	((??_main+0)^080h+0+1),f
	goto	u3177
	decfsz	((??_main+0)^080h+0+2),f
	goto	u3177
	nop
asmopt pop

	goto	l2239
	global	start
	ljmp	start
	callstack 0
	line	37
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_uC

;; *************** function _init_uC *****************
;; Defined at:
;;		line 3 in file "../config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/100
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"../config.c"
	line	3
global __ptext1
__ptext1:	;psect for function _init_uC
psect	text1
	file	"../config.c"
	line	3
	
_init_uC:	
;incstack = 0
	callstack 7
; Regs used in _init_uC: [wreg+status,2]
	line	5
	
l1451:	
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l1453:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	7
	
l1455:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	8
	
l175:	
	return
	callstack 0
GLOBAL	__end_of_init_uC
	__end_of_init_uC:
	signat	_init_uC,89
	global	_init_LCD

;; *************** function _init_LCD *****************
;; Defined at:
;;		line 4 in file "../LCD.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"../LCD.c"
	line	4
global __ptext2
__ptext2:	;psect for function _init_LCD
psect	text2
	file	"../LCD.c"
	line	4
	
_init_LCD:	
;incstack = 0
	callstack 4
; Regs used in _init_LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l2191:	
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	07h
	movwf	(delay_LCD@t+1)
	movlw	0D0h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	7
	movlw	low(02Ch)
	fcall	_lcd_write
	line	8
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	9
	fcall	_lcd_clear
	line	10
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0Bh
	movwf	(delay_LCD@t+1)
	movlw	0B8h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	11
	movlw	low(02h)
	fcall	_lcd_write
	line	12
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	07h
	movwf	(delay_LCD@t+1)
	movlw	0D0h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	13
	movlw	low(06h)
	fcall	_lcd_write
	line	14
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	15
	movlw	low(0Ch)
	fcall	_lcd_write
	line	16
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	17
	movlw	low(010h)
	fcall	_lcd_write
	line	18
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	19
	movlw	low(02Ch)
	fcall	_lcd_write
	line	20
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	064h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	line	21
	movlw	low(080h)
	fcall	_lcd_goto
	line	22
	
l2193:	
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_puts@s)
	movlw	80h
	movwf	(lcd_puts@s+1)
	fcall	_lcd_puts
	line	23
	
l2195:	
	movlw	low(094h)
	fcall	_lcd_goto
	line	24
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	movwf	(lcd_puts@s)
	movlw	80h
	movwf	(lcd_puts@s+1)
	fcall	_lcd_puts
	line	25
	
l2197:	
	asmopt push
asmopt off
movlw  21
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_init_LCD+0)+0+2)
movlw	75
movwf	((??_init_LCD+0)+0+1)
	movlw	189
movwf	((??_init_LCD+0)+0)
	u3187:
decfsz	((??_init_LCD+0)+0),f
	goto	u3187
	decfsz	((??_init_LCD+0)+0+1),f
	goto	u3187
	decfsz	((??_init_LCD+0)+0+2),f
	goto	u3187
	nop2
asmopt pop

	line	26
	
l142:	
	return
	callstack 0
GLOBAL	__end_of_init_LCD
	__end_of_init_LCD:
	signat	_init_LCD,89
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 35 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_init_LCD
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	35
global __ptext3
__ptext3:	;psect for function _lcd_clear
psect	text3
	file	"../LCD.c"
	line	35
	
_lcd_clear:	
;incstack = 0
	callstack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l2187:	
	bcf	(68/8),(68)&7	;volatile
	line	38
	
l2189:	
	movlw	low(01h)
	fcall	_lcd_write
	line	39
	
l148:	
	return
	callstack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,89
	global	_init_ADC

;; *************** function _init_ADC *****************
;; Defined at:
;;		line 15 in file "../ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"../ADC.c"
	line	15
global __ptext4
__ptext4:	;psect for function _init_ADC
psect	text4
	file	"../ADC.c"
	line	15
	
_init_ADC:	
;incstack = 0
	callstack 7
; Regs used in _init_ADC: [wreg]
	line	17
	
l1457:	
	movlw	low(03h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(393)^0180h	;volatile
	line	18
	movlw	low(080h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	19
	movlw	low(041h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	20
	
l200:	
	return
	callstack 0
GLOBAL	__end_of_init_ADC
	__end_of_init_ADC:
	signat	_init_ADC,89
	global	_display_temperature

;; *************** function _display_temperature *****************
;; Defined at:
;;		line 199 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  calculated_t    2   13[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___fttol
;;		_get_temperature_value
;;		_lcd_goto
;;		_lcd_puts
;;		_read_adc
;;		_sprintf
;;		_strcpy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	199
global __ptext5
__ptext5:	;psect for function _display_temperature
psect	text5
	file	"../main.c"
	line	199
	
_display_temperature:	
;incstack = 0
	callstack 2
; Regs used in _display_temperature: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	201
	
l2217:	
	line	203
	
l2219:	
	movlw	01h
	movwf	(read_adc@channel)
	movlw	0
	movwf	((read_adc@channel))+1
	fcall	_read_adc
	movf	(0+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_ADC_value)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(_ADC_value)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	2+(_ADC_value)^080h+03h
	line	204
	
l2221:	
	movlw	(low(_ADC_value|((0x0)<<8)+03h))&0ffh
	fcall	_get_temperature_value
	movf	(0+(?_get_temperature_value)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_display_temperature$756)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_get_temperature_value)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_display_temperature$756+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_get_temperature_value)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_display_temperature$756+2)^080h
	
l2223:	
	movf	(_display_temperature$756)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_display_temperature$756+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_display_temperature$756+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(display_temperature@calculated_temp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(display_temperature@calculated_temp)^080h
	line	205
	
l2225:	
		movlw	156
	xorwf	((display_temperature@calculated_temp)^080h),w
	skipz
	goto	u3161
	incf	((display_temperature@calculated_temp+1)^080h),w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l2229
u3160:
	line	206
	
l2227:	
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	movwf	(strcpy@from)
	movlw	(low(_display_value|((0x1)<<8)))&0ffh
	fcall	_strcpy
	goto	l2231
	line	208
	
l2229:	
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(display_temperature@calculated_temp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(display_temperature@calculated_temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	movlw	(low(_display_value|((0x1)<<8)))&0ffh
	fcall	_sprintf
	line	209
	
l2231:	
	movlw	low(094h)
	fcall	_lcd_goto
	line	210
	
l2233:	
	movlw	(low(_display_value|((0x1)<<8))&0ffh)
	movwf	(lcd_puts@s)
	movlw	(0x1)
	movwf	(lcd_puts@s+1)
	fcall	_lcd_puts
	line	211
	
l121:	
	return
	callstack 0
GLOBAL	__end_of_display_temperature
	__end_of_display_temperature:
	signat	_display_temperature,89
	global	_get_temperature_value

;; *************** function _get_temperature_value *****************
;; Defined at:
;;		line 90 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  ADC_value       1    wreg     PTR 
;;		 -> ADC_value(6), 
;; Auto vars:     Size  Location     Type
;;  ADC_value       1    0[BANK1 ] PTR 
;;		 -> ADC_value(6), 
;;  Rt              4    6[BANK1 ] unsigned long 
;;  vout            3    1[BANK1 ] unsigned long 
;;  result          2    4[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  3   77[BANK0 ] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3      10       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___ftsub
;;		___fttol
;;		___lltoft
;;		_interpolate
;; This function is called by:
;;		_display_temperature
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	90
global __ptext6
__ptext6:	;psect for function _get_temperature_value
psect	text6
	file	"../main.c"
	line	90
	
_get_temperature_value:	
;incstack = 0
	callstack 2
; Regs used in _get_temperature_value: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	movwf	(get_temperature_value@ADC_value)^080h
	line	92
	
l1967:	
	line	93
	
l1969:	
	movf	(get_temperature_value@ADC_value)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(get_temperature_value@vout)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_temperature_value@vout+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_temperature_value@vout+2)^080h
	line	94
	
l1971:	
	line	96
	
l1973:	
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

	line	97
	
l1975:	
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2661
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2661
	movf	(get_temperature_value@Rt+1)^080h,w
	btfss	status,2
	goto	u2661
	movlw	242
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2663
u2663:
	btfsc	status,0
	goto	u2661
	goto	u2660

u2661:
	goto	l1981
u2660:
	
l1977:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2670
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2670
	movf	(get_temperature_value@Rt+1)^080h,w
	btfss	status,2
	goto	u2670
	movlw	178
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2673
u2673:
	btfss	status,0
	goto	u2671
	goto	u2670

u2671:
	goto	l1981
u2670:
	line	99
	
l1979:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_res+3)^0100h,w
	movwf	(___lltoft@c+3)
	movf	(_res+2)^0100h,w
	movwf	(___lltoft@c+2)
	movf	(_res+1)^0100h,w
	movwf	(___lltoft@c+1)
	movf	(_res)^0100h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(04h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+01h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	100
	goto	l2091
	line	101
	
l1981:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2681
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2681
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2683
	movlw	77
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2683
u2683:
	btfsc	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l1987
u2680:
	
l1983:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2690
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2690
	movf	(get_temperature_value@Rt+1)^080h,w
	btfss	status,2
	goto	u2690
	movlw	242
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2693
u2693:
	btfss	status,0
	goto	u2691
	goto	u2690

u2691:
	goto	l1987
u2690:
	line	103
	
l1985:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(04h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(08h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+01h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	104
	goto	l2091
	line	105
	
l1987:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2701
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2701
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2703
	movlw	212
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2703
u2703:
	btfsc	status,0
	goto	u2701
	goto	u2700

u2701:
	goto	l1993
u2700:
	
l1989:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2710
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2710
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2713
	movlw	77
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2713
u2713:
	btfss	status,0
	goto	u2711
	goto	u2710

u2711:
	goto	l1993
u2710:
	line	107
	
l1991:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(08h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(0Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+03h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	108
	goto	l2091
	line	109
	
l1993:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2721
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2721
	movlw	2
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2723
	movlw	156
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2723
u2723:
	btfsc	status,0
	goto	u2721
	goto	u2720

u2721:
	goto	l1999
u2720:
	
l1995:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2730
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2730
	movlw	1
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2733
	movlw	212
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2733
u2733:
	btfss	status,0
	goto	u2731
	goto	u2730

u2731:
	goto	l1999
u2730:
	line	111
	
l1997:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(0Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(010h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+03h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	112
	goto	l2091
	line	113
	
l1999:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2741
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2741
	movlw	3
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2743
	movlw	206
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2743
u2743:
	btfsc	status,0
	goto	u2741
	goto	u2740

u2741:
	goto	l2005
u2740:
	
l2001:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2750
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2750
	movlw	2
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2753
	movlw	156
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2753
u2753:
	btfss	status,0
	goto	u2751
	goto	u2750

u2751:
	goto	l2005
u2750:
	line	115
	
l2003:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(010h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(014h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+05h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	116
	goto	l2091
	line	117
	
l2005:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2761
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2761
	movlw	4
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2763
	movlw	165
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2763
u2763:
	btfsc	status,0
	goto	u2761
	goto	u2760

u2761:
	goto	l2011
u2760:
	
l2007:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2770
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2770
	movlw	3
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2773
	movlw	206
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2773
u2773:
	btfss	status,0
	goto	u2771
	goto	u2770

u2771:
	goto	l2011
u2770:
	line	119
	
l2009:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(014h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(018h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+05h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	120
	goto	l2091
	line	121
	
l2011:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2781
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2781
	movlw	5
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2783
	movlw	180
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2783
u2783:
	btfsc	status,0
	goto	u2781
	goto	u2780

u2781:
	goto	l2017
u2780:
	
l2013:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2790
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2790
	movlw	4
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2793
	movlw	165
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2793
u2793:
	btfss	status,0
	goto	u2791
	goto	u2790

u2791:
	goto	l2017
u2790:
	line	123
	
l2015:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(018h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(01Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+07h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	124
	goto	l2091
	line	125
	
l2017:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2801
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2801
	movlw	7
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2803
	movlw	11
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2803
u2803:
	btfsc	status,0
	goto	u2801
	goto	u2800

u2801:
	goto	l2023
u2800:
	
l2019:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2810
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2810
	movlw	5
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2813
	movlw	180
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2813
u2813:
	btfss	status,0
	goto	u2811
	goto	u2810

u2811:
	goto	l2023
u2810:
	line	127
	
l2021:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(01Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(020h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+07h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	128
	goto	l2091
	line	129
	
l2023:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2821
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2821
	movlw	8
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2823
	movlw	191
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2823
u2823:
	btfsc	status,0
	goto	u2821
	goto	u2820

u2821:
	goto	l2029
u2820:
	
l2025:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2830
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2830
	movlw	7
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2833
	movlw	11
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2833
u2833:
	btfss	status,0
	goto	u2831
	goto	u2830

u2831:
	goto	l2029
u2830:
	line	131
	
l2027:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(020h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(024h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+09h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	132
	goto	l2091
	line	133
	
l2029:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2841
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2841
	movlw	10
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2843
	movlw	237
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2843
u2843:
	btfsc	status,0
	goto	u2841
	goto	u2840

u2841:
	goto	l2035
u2840:
	
l2031:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2850
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2850
	movlw	8
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2853
	movlw	191
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2853
u2853:
	btfss	status,0
	goto	u2851
	goto	u2850

u2851:
	goto	l2035
u2850:
	line	135
	
l2033:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(024h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(028h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+09h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	136
	goto	l2091
	line	137
	
l2035:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2861
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2861
	movlw	13
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2863
	movlw	193
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2863
u2863:
	btfsc	status,0
	goto	u2861
	goto	u2860

u2861:
	goto	l2041
u2860:
	
l2037:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2870
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2870
	movlw	10
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2873
	movlw	237
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2873
u2873:
	btfss	status,0
	goto	u2871
	goto	u2870

u2871:
	goto	l2041
u2870:
	line	139
	
l2039:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(028h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(02Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Bh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	140
	goto	l2091
	line	141
	
l2041:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2881
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2881
	movlw	17
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2883
	movlw	99
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2883
u2883:
	btfsc	status,0
	goto	u2881
	goto	u2880

u2881:
	goto	l2047
u2880:
	
l2043:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2890
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2890
	movlw	13
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2893
	movlw	193
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2893
u2893:
	btfss	status,0
	goto	u2891
	goto	u2890

u2891:
	goto	l2047
u2890:
	line	143
	
l2045:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(02Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(030h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Bh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	144
	goto	l2091
	line	145
	
l2047:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2901
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2901
	movlw	22
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2903
	movlw	39
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2903
u2903:
	btfsc	status,0
	goto	u2901
	goto	u2900

u2901:
	goto	l2053
u2900:
	
l2049:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2910
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2910
	movlw	17
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2913
	movlw	99
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2913
u2913:
	btfss	status,0
	goto	u2911
	goto	u2910

u2911:
	goto	l2053
u2910:
	line	147
	
l2051:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(030h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(034h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Dh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	148
	goto	l2091
	line	149
	
l2053:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2921
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2921
	movlw	28
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2923
	movlw	113
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2923
u2923:
	btfsc	status,0
	goto	u2921
	goto	u2920

u2921:
	goto	l2059
u2920:
	
l2055:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2930
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2930
	movlw	22
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2933
	movlw	39
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2933
u2933:
	btfss	status,0
	goto	u2931
	goto	u2930

u2931:
	goto	l2059
u2930:
	line	151
	
l2057:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(034h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(038h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Dh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Eh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	152
	goto	l2091
	line	153
	
l2059:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2941
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2941
	movlw	36
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2943
	movlw	205
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2943
u2943:
	btfsc	status,0
	goto	u2941
	goto	u2940

u2941:
	goto	l2065
u2940:
	
l2061:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2950
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2950
	movlw	28
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2953
	movlw	113
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2953
u2953:
	btfss	status,0
	goto	u2951
	goto	u2950

u2951:
	goto	l2065
u2950:
	line	155
	
l2063:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(038h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(03Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Eh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Fh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	156
	goto	l2091
	line	157
	
l2065:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2961
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2961
	movlw	63
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2963
	movlw	53
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2963
u2963:
	btfsc	status,0
	goto	u2961
	goto	u2960

u2961:
	goto	l2071
u2960:
	
l2067:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2970
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2970
	movlw	36
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2973
	movlw	205
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2973
u2973:
	btfss	status,0
	goto	u2971
	goto	u2970

u2971:
	goto	l2071
u2970:
	line	159
	
l2069:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(03Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(040h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+0Fh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+010h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	160
	goto	l2091
	line	161
	
l2071:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2981
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2981
	movlw	112
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2983
	movlw	9
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2983
u2983:
	btfsc	status,0
	goto	u2981
	goto	u2980

u2981:
	goto	l2077
u2980:
	
l2073:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u2990
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u2990
	movlw	63
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u2993
	movlw	53
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u2993
u2993:
	btfss	status,0
	goto	u2991
	goto	u2990

u2991:
	goto	l2077
u2990:
	line	163
	
l2075:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(040h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(044h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+010h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+011h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	164
	goto	l2091
	line	165
	
l2077:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u3001
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u3001
	movlw	205
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u3003
	movlw	221
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u3003
u3003:
	btfsc	status,0
	goto	u3001
	goto	u3000

u3001:
	goto	l2083
u3000:
	
l2079:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u3010
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u3010
	movlw	112
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u3013
	movlw	9
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u3013
u3013:
	btfss	status,0
	goto	u3011
	goto	u3010

u3011:
	goto	l2083
u3010:
	line	167
	
l2081:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(044h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(048h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+011h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	168
	goto	l2091
	line	169
	
l2083:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u3021
	movlw	1
	subwf	(get_temperature_value@Rt+2)^080h,w
	skipz
	goto	u3023
	movlw	134
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u3023
	movlw	161
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u3023
u3023:
	btfsc	status,0
	goto	u3021
	goto	u3020

u3021:
	goto	l2089
u3020:
	
l2085:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(get_temperature_value@Rt+3)^080h,w
	btfss	status,2
	goto	u3030
	movf	(get_temperature_value@Rt+2)^080h,w
	btfss	status,2
	goto	u3030
	movlw	205
	subwf	(get_temperature_value@Rt+1)^080h,w
	skipz
	goto	u3033
	movlw	221
	subwf	(get_temperature_value@Rt)^080h,w
	skipz
	goto	u3033
u3033:
	btfss	status,0
	goto	u3031
	goto	u3030

u3031:
	goto	l2089
u3030:
	line	171
	
l2087:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(get_temperature_value@Rt+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(get_temperature_value@Rt+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(get_temperature_value@Rt+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(get_temperature_value@Rt)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x+2)
	movlw	low(048h)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x1+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x1+2)
	movlw	low(04Ch)
	addlw	low(_res|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x2)
	movf	(1+(?___lltoft)),w
	movwf	(interpolate@x2+1)
	movf	(2+(?___lltoft)),w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	clrf	(interpolate@y1+1)
	btfsc	(interpolate@y1),7
	decf	(interpolate@y1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_temp)^080h+013h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	clrf	(interpolate@y2+1)
	btfsc	(interpolate@y2),7
	decf	(interpolate@y2+1),f
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_temperature_value@result)^080h
	line	172
	goto	l2091
	line	175
	
l2089:	
	movlw	09Ch
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(get_temperature_value@result)^080h
	movlw	0FFh
	movwf	((get_temperature_value@result)^080h)+1
	line	177
	
l2091:	
	movf	(get_temperature_value@result+1)^080h,w
	movwf	(___awtoft@c+1)
	movf	(get_temperature_value@result)^080h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_get_temperature_value)
	movf	(1+(?___awtoft)),w
	movwf	(?_get_temperature_value+1)
	movf	(2+(?___awtoft)),w
	movwf	(?_get_temperature_value+2)
	line	178
	
l108:	
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
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_temperature_value
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lltoft.c"
	line	35
global __ptext7
__ptext7:	;psect for function ___lltoft
psect	text7
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lltoft.c"
	line	35
	
___lltoft:	
;incstack = 0
	callstack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l1837:	
	movlw	low(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l1843
	line	42
	
l1839:	
	movlw	01h
u2315:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u2315

	line	43
	
l1841:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___lltoft@exp),f
	line	41
	
l1843:	
	movlw	high highword(0FF000000h)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l1839
u2320:
	line	45
	
l1845:	
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
	
l659:	
	return
	callstack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	_display_pressure

;; *************** function _display_pressure *****************
;; Defined at:
;;		line 185 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  calculated_p    2    9[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___fttol
;;		_get_pressure_value
;;		_lcd_goto
;;		_lcd_puts
;;		_read_adc
;;		_sprintf
;;		_strcpy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	185
global __ptext8
__ptext8:	;psect for function _display_pressure
psect	text8
	file	"../main.c"
	line	185
	
_display_pressure:	
;incstack = 0
	callstack 2
; Regs used in _display_pressure: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	187
	
l2199:	
	line	189
	
l2201:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_adc@channel)
	movwf	(read_adc@channel+1)
	fcall	_read_adc
	movf	(0+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_ADC_value)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_ADC_value+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_read_adc)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_ADC_value+2)^080h
	line	190
	
l2203:	
	movlw	(low(_ADC_value|((0x0)<<8)))&0ffh
	fcall	_get_pressure_value
	movf	(0+(?_get_pressure_value)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_display_pressure$755)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_get_pressure_value)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_display_pressure$755+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_get_pressure_value)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_display_pressure$755+2)^080h
	
l2205:	
	movf	(_display_pressure$755)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_display_pressure$755+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_display_pressure$755+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(display_pressure@calculated_pressure+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(display_pressure@calculated_pressure)^080h
	line	191
	
l2207:	
		movlw	156
	xorwf	((display_pressure@calculated_pressure)^080h),w
	skipz
	goto	u3151
	incf	((display_pressure@calculated_pressure+1)^080h),w
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l2211
u3150:
	line	192
	
l2209:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(strcpy@from)
	movlw	(low(_display_value|((0x1)<<8)))&0ffh
	fcall	_strcpy
	goto	l2213
	line	194
	
l2211:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(display_pressure@calculated_pressure+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(display_pressure@calculated_pressure)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	movlw	(low(_display_value|((0x1)<<8)))&0ffh
	fcall	_sprintf
	line	195
	
l2213:	
	movlw	low(080h)
	fcall	_lcd_goto
	line	196
	
l2215:	
	movlw	(low(_display_value|((0x1)<<8))&0ffh)
	movwf	(lcd_puts@s)
	movlw	(0x1)
	movwf	(lcd_puts@s+1)
	fcall	_lcd_puts
	line	197
	
l116:	
	return
	callstack 0
GLOBAL	__end_of_display_pressure
	__end_of_display_pressure:
	signat	_display_pressure,89
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 8 in file "D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> display_value(20), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> STR_3(19), STR_1(19), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> display_value(20), 
;;  cp              1    1[COMMON] PTR unsigned char 
;;		 -> display_value(20), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : B00/900
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_pressure
;;		_display_temperature
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=3
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\strcpy.c"
	line	8
global __ptext9
__ptext9:	;psect for function _strcpy
psect	text9
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\strcpy.c"
	line	8
	
_strcpy:	
;incstack = 0
	callstack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	movwf	(strcpy@to)
	line	18
	
l2109:	
	movf	(strcpy@to),w
	movwf	(strcpy@cp)
	line	19
	goto	l2113
	line	20
	
l2111:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(strcpy@cp),f
	line	21
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(strcpy@from),f
	line	19
	
l2113:	
	movf	(strcpy@from),w
	movwf	fsr0
	fcall	stringdir
	movwf	btemp+1
	movf	(strcpy@cp),w
	movwf	fsr0
	movf	btemp+1,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l2111
u3060:
	line	24
	
l743:	
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
;;  sp              1    wreg     PTR unsigned char 
;;		 -> display_value(20), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(19), STR_2(21), 
;; Auto vars:     Size  Location     Type
;;  sp              1   11[BANK0 ] PTR unsigned char 
;;		 -> display_value(20), 
;;  tmpval          4    0        struct .
;;  val             2    9[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   12[BANK0 ] unsigned char 
;;  prec            1    8[BANK0 ] char 
;;  flag            1    7[BANK0 ] unsigned char 
;;  ap              1    6[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_display_pressure
;;		_display_temperature
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext10
__ptext10:	;psect for function _sprintf
psect	text10
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	505
	
_sprintf:	
;incstack = 0
	callstack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(sprintf@sp)
	line	550
	
l2115:	
	movlw	(low(?_sprintf|((0x0)<<8)+01h))&0ffh
	movwf	(sprintf@ap)
	line	553
	goto	l2169
	line	555
	
l2117:	
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2123
u3070:
	line	558
	
l2119:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2121:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@sp),f
	line	559
	goto	l2169
	line	565
	
l2123:	
	clrf	(sprintf@flag)
	line	661
	
l2127:	
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
	goto	l2171
	xorlw	100^0	; case 100
	skipnz
	goto	l2129
	xorlw	105^100	; case 105
	skipnz
	goto	l2129
	goto	l2169
	asmopt pop

	line	1285
	
l2129:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)
	
l2131:	
	movlw	low(02h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@ap),f
	line	1287
	
l2133:	
	btfss	(sprintf@val+1),7
	goto	u3081
	goto	u3080
u3081:
	goto	l2139
u3080:
	line	1288
	
l2135:	
	movlw	low(03h)
	movwf	btemp+1
	movf	btemp+1,w
	iorwf	(sprintf@flag),f
	line	1289
	
l2137:	
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	line	1331
	
l2139:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1332
	
l2145:	
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
	goto	u3095
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u3095:
	skipnc
	goto	u3091
	goto	u3090
u3091:
	goto	l2149
u3090:
	goto	l2153
	line	1331
	
l2149:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@c),f
	
l2151:	
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l2145
u3100:
	line	1464
	
l2153:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l2159
u3110:
	line	1465
	
l2155:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	low(02Dh)
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2157:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@sp),f
	line	1498
	
l2159:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1500
	goto	l2167
	line	1515
	
l2161:	
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
	
l2163:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2165:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@sp),f
	line	1500
	
l2167:	
	movlw	low(-1)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2161
u3120:
	line	553
	
l2169:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	(((sprintf@c))),w
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l2117
u3130:
	line	1564
	
l2171:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	1567
	
l310:	
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
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext11
__ptext11:	;psect for function ___lwmod
psect	text11
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 5
; Regs used in ___lwmod: [wreg+status,2+status,0+btemp+1]
	line	12
	
l1875:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l1893
u2400:
	line	13
	
l1877:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l1883
	line	15
	
l1879:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2415
	line	16
	
l1881:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___lwmod@counter),f
	line	14
	
l1883:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l1879
u2420:
	line	19
	
l1885:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2435
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2435:
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l1889
u2430:
	line	20
	
l1887:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l1889:	
	movlw	01h
	
u2445:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2445
	line	22
	
l1891:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l1885
u2450:
	line	24
	
l1893:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l732:	
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
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext12
__ptext12:	;psect for function ___lwdiv
psect	text12
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0+btemp+1]
	line	13
	
l1849:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l1851:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l1871
u2330:
	line	15
	
l1853:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l1859
	line	17
	
l1855:	
	movlw	01h
	
u2345:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2345
	line	18
	
l1857:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___lwdiv@counter),f
	line	16
	
l1859:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1855
u2350:
	line	21
	
l1861:	
	movlw	01h
	
u2365:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2365
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2375
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l1867
u2370:
	line	23
	
l1863:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l1865:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l1867:	
	movlw	01h
	
u2385:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2385
	line	27
	
l1869:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l1861
u2390:
	line	29
	
l1871:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l722:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 4 in file "../ADC.c"
;; Parameters:    Size  Location     Type
;;  channel         2   48[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  adc_result      3   51[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_display_pressure
;;		_display_temperature
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"../ADC.c"
	line	4
global __ptext13
__ptext13:	;psect for function _read_adc
psect	text13
	file	"../ADC.c"
	line	4
	
_read_adc:	
;incstack = 0
	callstack 4
; Regs used in _read_adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l2095:	
	movf	(read_adc@channel),w
	movwf	(??_read_adc+0)+0
	movlw	(02h)-1
u3045:
	clrc
	rlf	(??_read_adc+0)+0,f
	addlw	-1
	skipz
	goto	u3045
	clrc
	rlf	(??_read_adc+0)+0,w
	iorwf	(31),w	;volatile
	movwf	(31)	;volatile
	line	7
	
l2097:	
	bsf	(249/8),(249)&7	;volatile
	line	8
	
l2099:	
	asmopt push
asmopt off
movlw	6
movwf	((??_read_adc+0)+0+1)
	movlw	48
movwf	((??_read_adc+0)+0)
	u3197:
decfsz	((??_read_adc+0)+0),f
	goto	u3197
	decfsz	((??_read_adc+0)+0+1),f
	goto	u3197
	nop
asmopt pop

	line	9
	
l194:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7	;volatile
	goto	u3051
	goto	u3050
u3051:
	goto	l194
u3050:
	line	10
	
l2101:	
	movf	(30),w	;volatile
	movwf	(??_read_adc+0)+0
	clrf	(??_read_adc+0)+0+1
	movf	(??_read_adc+0)+0,w
	movwf	(??_read_adc+0)+1
	clrf	(??_read_adc+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_read_adc+0)+0,w
	movwf	(___awtoft@c)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_read_adc+0)+0,w
	movwf	1+(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_adc@adc_result)
	movf	(1+(?___awtoft)),w
	movwf	(read_adc@adc_result+1)
	movf	(2+(?___awtoft)),w
	movwf	(read_adc@adc_result+2)
	line	11
	
l2103:	
	movlw	low(0E3h)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(31),f	;volatile
	line	12
	
l2105:	
	movlw	0x0
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
	movf	(read_adc@adc_result),w
	movwf	(___ftmul@f2)
	movf	(read_adc@adc_result+1),w
	movwf	(___ftmul@f2+1)
	movf	(read_adc@adc_result+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(?_read_adc)
	movf	(1+(?___ftdiv)),w
	movwf	(?_read_adc+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_read_adc+2)
	line	13
	
l197:	
	return
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4219
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 40 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  s               2    0[BANK0 ] PTR unsigned char 
;;		 -> STR_6(11), STR_5(18), display_value(20), 
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_display_pressure
;;		_display_temperature
;;		_init_LCD
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"../LCD.c"
	line	40
global __ptext14
__ptext14:	;psect for function _lcd_puts
psect	text14
	file	"../LCD.c"
	line	40
	
_lcd_puts:	
;incstack = 0
	callstack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	42
	
l2179:	
	bsf	(68/8),(68)&7	;volatile
	line	43
	goto	l2185
	line	45
	
l2181:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	line	46
	
l2183:	
	movlw	01h
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	0
	addwf	(lcd_puts@s+1),f
	line	43
	
l2185:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l2181
u3140:
	line	48
	
l154:	
	return
	callstack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4217
	global	_lcd_goto

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 54 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_display_pressure
;;		_display_temperature
;;		_init_LCD
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	54
global __ptext15
__ptext15:	;psect for function _lcd_goto
psect	text15
	file	"../LCD.c"
	line	54
	
_lcd_goto:	
;incstack = 0
	callstack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(lcd_goto@pos)
	line	56
	
l2175:	
	bcf	(68/8),(68)&7	;volatile
	line	57
	
l2177:	
	movf	(lcd_goto@pos),w
	fcall	_lcd_write
	line	58
	
l160:	
	return
	callstack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
	signat	_lcd_goto,4217
	global	_lcd_write

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 28 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   13[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_delay_LCD
;; This function is called by:
;;		_init_LCD
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext16
__ptext16:	;psect for function _lcd_write
psect	text16
	file	"../LCD.c"
	line	28
	
_lcd_write:	
;incstack = 0
	callstack 5
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_write@c)
	line	30
	
l1803:	
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2275:
	clrc
	rrf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2275
	movf	(8),w	;volatile
	andlw	0F0h
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	31
	
l1805:	
	bsf	(69/8),(69)&7	;volatile
	
l1807:	
	movlw	0
	movwf	(delay_LCD@t+3)
	movlw	0
	movwf	(delay_LCD@t+2)
	movlw	0
	movwf	(delay_LCD@t+1)
	movlw	01h
	movwf	(delay_LCD@t)

	fcall	_delay_LCD
	
l1809:	
	bcf	(69/8),(69)&7	;volatile
	line	32
	
l1811:	
	movlw	low(0Fh)
	andwf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movf	(8),w	;volatile
	andlw	0F0h
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	33
	
l1813:	
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
	
l1815:	
	bcf	(69/8),(69)&7	;volatile
	line	34
	
l145:	
	return
	callstack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
	signat	_lcd_write,4217
	global	_delay_LCD

;; *************** function _delay_LCD *****************
;; Defined at:
;;		line 59 in file "../LCD.c"
;; Parameters:    Size  Location     Type
;;  t               4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  var             4    8[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_LCD
;;		_lcd_write
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext17
__ptext17:	;psect for function _delay_LCD
psect	text17
	file	"../LCD.c"
	line	59
	
_delay_LCD:	
;incstack = 0
	callstack 5
; Regs used in _delay_LCD: [wreg+status,2+status,0]
	line	62
	
l1627:	
	movlw	high highword(0)
	movwf	(delay_LCD@var+3)
	movlw	low highword(0)
	movwf	(delay_LCD@var+2)
	movlw	high(0)
	movwf	(delay_LCD@var+1)
	movlw	low(0)
	movwf	(delay_LCD@var)

	goto	l1631
	
l1629:	
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
	
l1631:	
	movf	(delay_LCD@t),w
	movwf	(??_delay_LCD+0)+0
	movf	(delay_LCD@t+1),w
	movwf	((??_delay_LCD+0)+0+1)
	movf	(delay_LCD@t+2),w
	movwf	((??_delay_LCD+0)+0+2)
	movf	(delay_LCD@t+3),w
	movwf	((??_delay_LCD+0)+0+3)
	movlw	06h
u1955:
	clrc
	rrf	(??_delay_LCD+0)+3,f
	rrf	(??_delay_LCD+0)+2,f
	rrf	(??_delay_LCD+0)+1,f
	rrf	(??_delay_LCD+0)+0,f
u1950:
	addlw	-1
	skipz
	goto	u1955
	movf	3+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var+3),w
	skipz
	goto	u1965
	movf	2+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var+2),w
	skipz
	goto	u1965
	movf	1+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var+1),w
	skipz
	goto	u1965
	movf	0+(??_delay_LCD+0)+0,w
	subwf	(delay_LCD@var),w
u1965:
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l1629
u1960:
	line	63
	
l166:	
	return
	callstack 0
GLOBAL	__end_of_delay_LCD
	__end_of_delay_LCD:
	signat	_delay_LCD,4217
	global	_get_pressure_value

;; *************** function _get_pressure_value *****************
;; Defined at:
;;		line 39 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  ADC_value       1    wreg     PTR 
;;		 -> ADC_value(6), 
;; Auto vars:     Size  Location     Type
;;  ADC_value       1    0[BANK1 ] PTR 
;;		 -> ADC_value(6), 
;;  vout            3    3[BANK1 ] PTR 
;;  result          2    1[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  3   77[BANK0 ] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       6       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___awtoft
;;		___ftge
;;		_interpolate
;; This function is called by:
;;		_display_pressure
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	39
global __ptext18
__ptext18:	;psect for function _get_pressure_value
psect	text18
	file	"../main.c"
	line	39
	
_get_pressure_value:	
;incstack = 0
	callstack 2
; Regs used in _get_pressure_value: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	movwf	(get_pressure_value@ADC_value)^080h
	line	41
	
l1897:	
	line	42
	
l1899:	
	movf	(get_pressure_value@ADC_value)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(get_pressure_value@vout)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_pressure_value@vout+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(get_pressure_value@vout+2)^080h
	line	44
	
l1901:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x99
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2461
	goto	u2460
u2461:
	goto	l1907
u2460:
	
l1903:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2471
	goto	u2470
u2471:
	goto	l1907
u2470:
	line	46
	
l1905:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_voltage)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_voltage+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_voltage+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(interpolate@x1+2)
	movlw	low(03h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pressure+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pressure)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	47
	goto	l1963
	line	48
	
l1907:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x19
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2481
	goto	u2480
u2481:
	goto	l1913
u2480:
	
l1909:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x99
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2491
	goto	u2490
u2491:
	goto	l1913
u2490:
	line	50
	
l1911:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(03h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(06h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	51
	goto	l1963
	line	52
	
l1913:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2501
	goto	u2500
u2501:
	goto	l1919
u2500:
	
l1915:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x19
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2511
	goto	u2510
u2511:
	goto	l1919
u2510:
	line	54
	
l1917:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(06h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(09h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	55
	goto	l1963
	line	56
	
l1919:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0xd9
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2521
	goto	u2520
u2521:
	goto	l1925
u2520:
	
l1921:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2531
	goto	u2530
u2531:
	goto	l1925
u2530:
	line	58
	
l1923:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(09h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(0Ch)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	59
	goto	l1963
	line	60
	
l1925:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xc
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2541
	goto	u2540
u2541:
	goto	l1931
u2540:
	
l1927:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0xd9
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2551
	goto	u2550
u2551:
	goto	l1931
u2550:
	line	62
	
l1929:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(0Ch)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(0Fh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	63
	goto	l1963
	line	64
	
l1931:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x39
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2561
	goto	u2560
u2561:
	goto	l1937
u2560:
	
l1933:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xc
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2571
	goto	u2570
u2571:
	goto	l1937
u2570:
	line	66
	
l1935:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(0Fh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(012h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	67
	goto	l1963
	line	68
	
l1937:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x53
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2581
	goto	u2580
u2581:
	goto	l1943
u2580:
	
l1939:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x39
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2591
	goto	u2590
u2591:
	goto	l1943
u2590:
	line	70
	
l1941:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(012h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(015h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+0Eh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+0Eh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	71
	goto	l1963
	line	72
	
l1943:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x73
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2601
	goto	u2600
u2601:
	goto	l1949
u2600:
	
l1945:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x53
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2611
	goto	u2610
u2611:
	goto	l1949
u2610:
	line	74
	
l1947:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(015h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(018h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+0Eh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+0Eh,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+010h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+010h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	75
	goto	l1963
	line	76
	
l1949:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2621
	goto	u2620
u2621:
	goto	l1955
u2620:
	
l1951:	
	movlw	0x33
	movwf	(___ftge@ff1)
	movlw	0x73
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2631
	goto	u2630
u2631:
	goto	l1955
u2630:
	line	78
	
l1953:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(018h)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(01Bh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+010h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+010h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	79
	goto	l1963
	line	80
	
l1955:	
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff1)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x1f
	movwf	(___ftge@ff2)
	movlw	0x9d
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2641
	goto	u2640
u2641:
	goto	l1961
u2640:
	
l1957:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(get_pressure_value@vout)^080h,w
	movwf	(___ftge@ff2)
	movf	(get_pressure_value@vout+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(get_pressure_value@vout+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2651
	goto	u2650
u2651:
	goto	l1961
u2650:
	line	82
	
l1959:	
	movf	(get_pressure_value@vout)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(get_pressure_value@vout+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@x+2)
	movlw	low(01Bh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(interpolate@x1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x1+2)
	movlw	low(01Eh)
	addlw	low(_voltage|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(interpolate@x2)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(interpolate@x2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+012h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y1)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(_pressure)^080h+014h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_pressure)^080h+014h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interpolate@y2)
	fcall	_interpolate
	movf	(1+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_interpolate)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(get_pressure_value@result)^080h
	line	83
	goto	l1963
	line	85
	
l1961:	
	movlw	09Ch
	movwf	(get_pressure_value@result)^080h
	movlw	0FFh
	movwf	((get_pressure_value@result)^080h)+1
	line	87
	
l1963:	
	movf	(get_pressure_value@result+1)^080h,w
	movwf	(___awtoft@c+1)
	movf	(get_pressure_value@result)^080h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_get_pressure_value)
	movf	(1+(?___awtoft)),w
	movwf	(?_get_pressure_value+1)
	movf	(2+(?___awtoft)),w
	movwf	(?_get_pressure_value+2)
	line	88
	
l67:	
	return
	callstack 0
GLOBAL	__end_of_get_pressure_value
	__end_of_get_pressure_value:
	signat	_get_pressure_value,4219
	global	_interpolate

;; *************** function _interpolate *****************
;; Defined at:
;;		line 180 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  x               3   61[BANK0 ] float 
;;  x1              3   64[BANK0 ] float 
;;  x2              3   67[BANK0 ] float 
;;  y1              2   70[BANK0 ] int 
;;  y2              2   72[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   61[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      13       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	180
global __ptext19
__ptext19:	;psect for function _interpolate
psect	text19
	file	"../main.c"
	line	180
	
_interpolate:	
;incstack = 0
	callstack 2
; Regs used in _interpolate: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	182
	
l1799:	
	movf	(interpolate@y1),w
	subwf	(interpolate@y2),w
	movwf	(___awtoft@c)
	movf	(interpolate@y1+1),w
	skipc
	incf	(interpolate@y1+1),w
	subwf	(interpolate@y2+1),w
	movwf	1+(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f1+2)
	movf	(interpolate@x2),w
	movwf	(___ftsub@f1)
	movf	(interpolate@x2+1),w
	movwf	(___ftsub@f1+1)
	movf	(interpolate@x2+2),w
	movwf	(___ftsub@f1+2)
	movf	(interpolate@x1),w
	movwf	(___ftsub@f2)
	movf	(interpolate@x1+1),w
	movwf	(___ftsub@f2+1)
	movf	(interpolate@x1+2),w
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
	movf	(interpolate@x),w
	movwf	(___ftsub@f1)
	movf	(interpolate@x+1),w
	movwf	(___ftsub@f1+1)
	movf	(interpolate@x+2),w
	movwf	(___ftsub@f1+2)
	movf	(interpolate@x1),w
	movwf	(___ftsub@f2)
	movf	(interpolate@x1+1),w
	movwf	(___ftsub@f2+1)
	movf	(interpolate@x1+2),w
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
	movwf	(_interpolate$754)
	movf	(1+(?___ftmul)),w
	movwf	(_interpolate$754+1)
	movf	(2+(?___ftmul)),w
	movwf	(_interpolate$754+2)
	movf	(interpolate@y1+1),w
	movwf	(___awtoft@c+1)
	movf	(interpolate@y1),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftadd@f2+2)
	movf	(_interpolate$754),w
	movwf	(___ftadd@f1)
	movf	(_interpolate$754+1),w
	movwf	(___ftadd@f1+1)
	movf	(_interpolate$754+2),w
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
	movwf	(?_interpolate+1)
	movf	(0+(?___fttol)),w
	movwf	(?_interpolate)
	line	183
	
l111:	
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
;;  f1              3   48[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   56[BANK0 ] unsigned long 
;;  exp1            1   60[BANK0 ] unsigned char 
;;  sign1           1   55[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   48[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_temperature_value
;;		_interpolate
;;		_display_pressure
;;		_display_temperature
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
	line	44
global __ptext20
__ptext20:	;psect for function ___fttol
psect	text20
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
	line	44
	
___fttol:	
;incstack = 0
	callstack 4
; Regs used in ___fttol: [wreg+status,2+status,0+btemp+1]
	line	49
	
l1755:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	(((___fttol@exp1))),w
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l1761
u2170:
	line	50
	
l1757:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l610
	line	51
	
l1761:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2185:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2180:
	addlw	-1
	skipz
	goto	u2185
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1763:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1765:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1767:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1769:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1771:	
	btfss	(___fttol@exp1),7
	goto	u2191
	goto	u2190
u2191:
	goto	l1783
u2190:
	line	57
	
l1773:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l1779
u2200:
	goto	l1757
	line	60
	
l1779:	
	movlw	01h
u2215:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2215

	line	61
	
l1781:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l1779
u2220:
	goto	l1791
	line	63
	
l1783:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l617
u2230:
	goto	l1757
	line	66
	
l1789:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2245:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2245
	line	67
	movlw	01h
	subwf	(___fttol@exp1),f
	line	68
	
l617:	
	line	65
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l1789
u2250:
	line	70
	
l1791:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l1795
u2260:
	line	71
	
l1793:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l1795:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l610:	
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
;;  f2              3   12[BANK0 ] float 
;;  f1              3   15[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   12[BANK0 ] float 
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_get_temperature_value
;;		_interpolate
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftsub.c"
	line	17
global __ptext21
__ptext21:	;psect for function ___ftsub
psect	text21
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftsub.c"
	line	17
	
___ftsub:	
;incstack = 0
	callstack 2
; Regs used in ___ftsub: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l1747:	
	movf	(___ftsub@f2+2),w
	iorwf	(___ftsub@f2+1),w
	iorwf	(___ftsub@f2),w
	skipnz
	goto	u2161
	goto	u2160
u2161:
	goto	l1751
u2160:
	line	23
	
l1749:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	25
	
l1751:	
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
	
l606:	
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
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   11[BANK0 ] unsigned char 
;;  exp2            1   10[BANK0 ] unsigned char 
;;  sign            1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_interpolate
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
	line	86
global __ptext22
__ptext22:	;psect for function ___ftadd
psect	text22
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
	line	86
	
___ftadd:	
;incstack = 0
	callstack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	90
	
l1553:	
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
	goto	u1711
	goto	u1710
u1711:
	goto	l1559
u1710:
	
l1555:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1721
	goto	u1720
u1721:
	goto	l1563
u1720:
	
l1557:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l1563
u1730:
	line	93
	
l1559:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l543
	line	94
	
l1563:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l546
u1740:
	
l1565:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1751
	goto	u1750
u1751:
	goto	l1569
u1750:
	
l1567:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1761
	goto	u1760
u1761:
	goto	l1569
u1760:
	
l546:	
	line	95
	goto	l543
	line	96
	
l1569:	
	movlw	low(06h)
	movwf	(___ftadd@sign)
	line	97
	
l1571:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l547
u1770:
	line	98
	
l1573:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l547:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l548
u1780:
	line	100
	
l1575:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l548:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1577:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1579:	
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
	goto	u1791
	goto	u1790
u1791:
	goto	l1593
u1790:
	line	110
	
l1581:	
	movlw	01h
u1805:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1805
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l1583:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1811
	goto	u1810
u1811:
	goto	l1591
u1810:
	
l1585:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l1581
u1820:
	goto	l1591
	line	114
	
l1587:	
	movlw	01h
u1835:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1835

	line	115
	
l1589:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftadd@exp1),f
	line	113
	
l1591:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l1587
u1840:
	goto	l557
	line	117
	
l1593:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1851
	goto	u1850
u1851:
	goto	l557
u1850:
	line	121
	
l1595:	
	movlw	01h
u1865:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1865
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l1597:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1871
	goto	u1870
u1871:
	goto	l1605
u1870:
	
l1599:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l1595
u1880:
	goto	l1605
	line	125
	
l1601:	
	movlw	01h
u1895:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1895

	line	126
	
l1603:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftadd@exp2),f
	line	124
	
l1605:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l1601
u1900:
	line	129
	
l557:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l1609
u1910:
	line	131
	
l1607:	
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
	
l1609:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l1613
u1920:
	line	136
	
l1611:	
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
	
l1613:	
	clrf	(___ftadd@sign)
	line	140
	
l1615:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1931
	addwf	(___ftadd@f2+1),f
u1931:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1932
	addwf	(___ftadd@f2+2),f
u1932:

	line	141
	
l1617:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1941
	goto	u1940
u1941:
	goto	l1623
u1940:
	line	142
	
l1619:	
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
	
l1621:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l1623:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l543:	
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
;;  f1              3   18[BANK0 ] float 
;;  f2              3   21[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   28[BANK0 ] unsigned um
;;  sign            1   32[BANK0 ] unsigned char 
;;  cntr            1   31[BANK0 ] unsigned char 
;;  exp             1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   18[BANK0 ] float 
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_temperature_value
;;		_interpolate
;;		_read_adc
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext23
__ptext23:	;psect for function ___ftmul
psect	text23
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
	line	62
	
___ftmul:	
;incstack = 0
	callstack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	67
	
l1691:	
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
	goto	u2041
	goto	u2040
u2041:
	goto	l1697
u2040:
	line	68
	
l1693:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l589
	line	69
	
l1697:	
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
	goto	u2051
	goto	u2050
u2051:
	goto	l1703
u2050:
	line	70
	
l1699:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l589
	line	71
	
l1703:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftmul@exp),f
	line	72
	
l1705:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(___ftmul@sign)
	line	73
	
l1707:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	btemp+1
	movf	btemp+1,w
	xorwf	(___ftmul@sign),f
	line	74
	
l1709:	
	movlw	low(080h)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(___ftmul@sign),f
	line	75
	
l1711:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1713:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1715:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1717:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1719:	
	movlw	low(07h)
	movwf	(___ftmul@cntr)
	line	136
	
l1721:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2061
	goto	u2060
u2061:
	goto	l1725
u2060:
	line	137
	
l1723:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2071
	addwf	(___ftmul@f3_as_product+1),f
u2071:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2072
	addwf	(___ftmul@f3_as_product+2),f
u2072:

	line	138
	
l1725:	
	movlw	01h
u2085:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2085

	line	139
	
l1727:	
	movlw	01h
u2095:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2095
	line	140
	
l1729:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l1721
u2100:
	line	143
	
l1731:	
	movlw	low(09h)
	movwf	(___ftmul@cntr)
	line	145
	
l1733:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2111
	goto	u2110
u2111:
	goto	l1737
u2110:
	line	146
	
l1735:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2121
	addwf	(___ftmul@f3_as_product+1),f
u2121:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2122
	addwf	(___ftmul@f3_as_product+2),f
u2122:

	line	147
	
l1737:	
	movlw	01h
u2135:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2135

	line	148
	
l1739:	
	movlw	01h
u2145:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2145

	line	149
	
l1741:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l1733
u2150:
	line	156
	
l1743:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	157
	
l589:	
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
;;  f2              3   33[BANK0 ] float 
;;  f1              3   36[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   43[BANK0 ] float 
;;  sign            1   47[BANK0 ] unsigned char 
;;  exp             1   46[BANK0 ] unsigned char 
;;  cntr            1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   33[BANK0 ] float 
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_temperature_value
;;		_interpolate
;;		_read_adc
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
	line	56
global __ptext24
__ptext24:	;psect for function ___ftdiv
psect	text24
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
	line	56
	
___ftdiv:	
;incstack = 0
	callstack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l1645:	
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
	goto	u1981
	goto	u1980
u1981:
	goto	l1651
u1980:
	line	64
	
l1647:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l574
	line	65
	
l1651:	
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
	goto	u1991
	goto	u1990
u1991:
	goto	l1657
u1990:
	line	66
	
l1653:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l574
	line	67
	
l1657:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l1659:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1661:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l1663:	
	movf	0+(___ftdiv@f2)+02h,w
	movwf	btemp+1
	movf	btemp+1,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l1665:	
	movlw	low(080h)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(___ftdiv@sign),f
	line	72
	
l1667:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l1669:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1671:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l1673:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l1675:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l1677:	
	movlw	01h
u2005:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2005
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2015
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2015
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2015:
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l1683
u2010:
	line	80
	
l1679:	
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
	
l1681:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l1683:	
	movlw	01h
u2025:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2025
	line	84
	
l1685:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l1677
u2030:
	line	85
	
l1687:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l574:	
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
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_pressure_value
;;		_get_temperature_value
;;		_interpolate
;;		_read_adc
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
global __ptext25
__ptext25:	;psect for function ___awtoft
psect	text25
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
	
___awtoft:	
;incstack = 0
	callstack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	36
	
l1633:	
	clrf	(___awtoft@sign)
	line	37
	
l1635:	
	btfss	(___awtoft@c+1),7
	goto	u1971
	goto	u1970
u1971:
	goto	l1641
u1970:
	line	38
	
l1637:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1639:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l1641:	
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
	
l516:	
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
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
global __ptext26
__ptext26:	;psect for function ___ftpack
psect	text26
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 4
; Regs used in ___ftpack: [wreg+status,2+status,0+btemp+1]
	line	64
	
l1517:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l1521
u1590:
	
l1519:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l1529
u1600:
	line	65
	
l1521:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l522
	line	67
	
l1525:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftpack@exp),f
	line	68
	
l1527:	
	movlw	01h
u1615:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1615

	line	66
	
l1529:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l1525
u1620:
	goto	l1537
	line	71
	
l1531:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___ftpack@exp),f
	line	72
	
l1533:	
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
	
l1535:	
	movlw	01h
u1635:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1635

	line	70
	
l1537:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l1531
u1640:
	goto	l1541
	line	76
	
l1539:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1655:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1655
	line	75
	
l1541:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l533
u1660:
	
l1543:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u1671
	goto	u1670
u1671:
	goto	l1539
u1670:
	
l533:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l534
u1680:
	line	80
	
l1545:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l534:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1547:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1695:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1690:
	addlw	-1
	skipz
	goto	u1695
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1549:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l535
u1700:
	line	84
	
l1551:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l535:	
	line	85
	line	86
	
l522:	
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
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_pressure_value
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
	line	4
global __ptext27
__ptext27:	;psect for function ___ftge
psect	text27
	file	"D:\aplicatii\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1817:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1821
u2280:
	line	7
	
l1819:	
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
	
l1821:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1825
u2290:
	line	9
	
l1823:	
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
	
l1825:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1827:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1829:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2305
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2305
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2305:
	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l1833
u2300:
	
l1831:	
	clrc
	
	goto	l583
	
l1833:	
	setc
	
	line	13
	
l583:	
	return
	callstack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
