opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	16F1784
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
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTA equ 0Ch ;# 
# 485 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTB equ 0Dh ;# 
# 554 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTC equ 0Eh ;# 
# 623 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTD equ 0Fh ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTE equ 010h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR1 equ 011h ;# 
# 798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR2 equ 012h ;# 
# 859 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR3 equ 013h ;# 
# 879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR4 equ 014h ;# 
# 929 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR0 equ 015h ;# 
# 948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1 equ 016h ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1L equ 016h ;# 
# 973 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1H equ 017h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T1CON equ 018h ;# 
# 1063 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T1GCON equ 019h ;# 
# 1132 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR2 equ 01Ah ;# 
# 1151 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PR2 equ 01Bh ;# 
# 1170 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T2CON equ 01Ch ;# 
# 1240 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISA equ 08Ch ;# 
# 1309 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISB equ 08Dh ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISC equ 08Eh ;# 
# 1447 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISD equ 08Fh ;# 
# 1516 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISE equ 090h ;# 
# 1561 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE1 equ 091h ;# 
# 1622 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE2 equ 092h ;# 
# 1683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE3 equ 093h ;# 
# 1703 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE4 equ 094h ;# 
# 1762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPTION_REG equ 095h ;# 
# 1844 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCON equ 096h ;# 
# 1900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WDTCON equ 097h ;# 
# 1958 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCTUNE equ 098h ;# 
# 2015 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCCON equ 099h ;# 
# 2086 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCSTAT equ 09Ah ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRES equ 09Bh ;# 
# 2153 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRESL equ 09Bh ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRESH equ 09Ch ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON0 equ 09Dh ;# 
# 2285 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON1 equ 09Eh ;# 
# 2356 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON2 equ 09Fh ;# 
# 2431 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATA equ 010Ch ;# 
# 2500 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATB equ 010Dh ;# 
# 2569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATC equ 010Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATD equ 010Fh ;# 
# 2707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATE equ 0110h ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM1CON0 equ 0111h ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM1CON1 equ 0112h ;# 
# 2882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM2CON0 equ 0113h ;# 
# 2943 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM2CON1 equ 0114h ;# 
# 3018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CMOUT equ 0115h ;# 
# 3055 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BORCON equ 0116h ;# 
# 3087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FVRCON equ 0117h ;# 
# 3162 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
DACCON0 equ 0118h ;# 
# 3222 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
DACCON1 equ 0119h ;# 
# 3291 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM4CON0 equ 011Ah ;# 
# 3352 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM4CON1 equ 011Bh ;# 
# 3427 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON2 equ 011Ch ;# 
# 3446 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON1 equ 011Dh ;# 
# 3451 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON0 equ 011Dh ;# 
# 3455 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON equ 011Dh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM3CON0 equ 011Eh ;# 
# 3686 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM3CON1 equ 011Fh ;# 
# 3761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELA equ 018Ch ;# 
# 3825 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELB equ 018Dh ;# 
# 3888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELD equ 018Fh ;# 
# 3927 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELE equ 0190h ;# 
# 3966 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADR equ 0191h ;# 
# 3972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADRL equ 0191h ;# 
# 3991 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADRH equ 0192h ;# 
# 4010 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDAT equ 0193h ;# 
# 4016 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATL equ 0193h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATA equ 0193h ;# 
# 4053 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATH equ 0194h ;# 
# 4072 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EECON1 equ 0195h ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EECON2 equ 0196h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
VREGCON equ 0197h ;# 
# 4172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RC1REG equ 0199h ;# 
# 4177 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCREG equ 0199h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCREG1 equ 0199h ;# 
# 4225 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TX1REG equ 019Ah ;# 
# 4230 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXREG1 equ 019Ah ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXREG equ 019Ah ;# 
# 4278 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRG equ 019Bh ;# 
# 4284 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRGL equ 019Bh ;# 
# 4289 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRG equ 019Bh ;# 
# 4293 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRG1 equ 019Bh ;# 
# 4297 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGL equ 019Bh ;# 
# 4353 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRGH equ 019Ch ;# 
# 4358 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGH equ 019Ch ;# 
# 4362 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGH1 equ 019Ch ;# 
# 4406 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RC1STA equ 019Dh ;# 
# 4411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCSTA1 equ 019Dh ;# 
# 4415 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCSTA equ 019Dh ;# 
# 4585 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TX1STA equ 019Eh ;# 
# 4590 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXSTA1 equ 019Eh ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXSTA equ 019Eh ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUD1CON equ 019Fh ;# 
# 4769 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCON1 equ 019Fh ;# 
# 4773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCTL1 equ 019Fh ;# 
# 4777 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCON equ 019Fh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCTL equ 019Fh ;# 
# 5009 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUA equ 020Ch ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUB equ 020Dh ;# 
# 5147 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUC equ 020Eh ;# 
# 5216 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUD equ 020Fh ;# 
# 5285 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUE equ 0210h ;# 
# 5330 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1BUF equ 0211h ;# 
# 5335 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPBUF equ 0211h ;# 
# 5583 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1ADD equ 0212h ;# 
# 5588 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPADD equ 0212h ;# 
# 5836 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1MSK equ 0213h ;# 
# 5841 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPMSK equ 0213h ;# 
# 6089 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1STAT equ 0214h ;# 
# 6094 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPSTAT equ 0214h ;# 
# 6210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON1 equ 0215h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON equ 0215h ;# 
# 6219 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON1 equ 0215h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON equ 0215h ;# 
# 6479 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON2 equ 0216h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON2 equ 0216h ;# 
# 6600 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON3 equ 0217h ;# 
# 6605 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON3 equ 0217h ;# 
# 6721 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONA equ 028Ch ;# 
# 6790 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONB equ 028Dh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONC equ 028Eh ;# 
# 6928 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCOND equ 028Fh ;# 
# 6997 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONE equ 0290h ;# 
# 7036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1 equ 0291h ;# 
# 7042 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1L equ 0291h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1H equ 0292h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP1CON equ 0293h ;# 
# 7143 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2 equ 0298h ;# 
# 7149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2L equ 0298h ;# 
# 7168 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2H equ 0299h ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP2CON equ 029Ah ;# 
# 7250 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONA equ 030Ch ;# 
# 7319 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONB equ 030Dh ;# 
# 7388 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONC equ 030Eh ;# 
# 7457 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCOND equ 030Fh ;# 
# 7526 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONE equ 0310h ;# 
# 7565 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3 equ 0311h ;# 
# 7571 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3L equ 0311h ;# 
# 7590 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3H equ 0312h ;# 
# 7609 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP3CON equ 0313h ;# 
# 7672 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLA equ 038Ch ;# 
# 7741 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLB equ 038Dh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLC equ 038Eh ;# 
# 7879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLD equ 038Fh ;# 
# 7948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLE equ 0390h ;# 
# 7993 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAP equ 0391h ;# 
# 8062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAN equ 0392h ;# 
# 8131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAF equ 0393h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBP equ 0394h ;# 
# 8269 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBN equ 0395h ;# 
# 8338 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBF equ 0396h ;# 
# 8407 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCP equ 0397h ;# 
# 8476 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCN equ 0398h ;# 
# 8545 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCF equ 0399h ;# 
# 8614 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEP equ 039Dh ;# 
# 8634 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEN equ 039Eh ;# 
# 8654 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEF equ 039Fh ;# 
# 8674 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA1CON equ 0511h ;# 
# 8755 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA2CON equ 0513h ;# 
# 8836 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA3CON equ 0515h ;# 
# 8917 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CLKRCON equ 051Ah ;# 
# 8992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1CON equ 0811h ;# 
# 9061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1MDL equ 0812h ;# 
# 9125 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1SYNC equ 0813h ;# 
# 9175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1CLK equ 0814h ;# 
# 9228 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1OEN equ 0815h ;# 
# 9277 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1POL equ 0816h ;# 
# 9332 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLNK equ 0817h ;# 
# 9385 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1REBS equ 0818h ;# 
# 9430 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1FEBS equ 0819h ;# 
# 9475 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHS equ 081Ah ;# 
# 9525 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCS equ 081Bh ;# 
# 9575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRS equ 081Ch ;# 
# 9625 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDC equ 081Dh ;# 
# 9663 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDL equ 081Eh ;# 
# 9712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDS equ 081Fh ;# 
# 9757 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1INT equ 0820h ;# 
# 9818 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PH equ 0821h ;# 
# 9824 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHL equ 0821h ;# 
# 9885 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHH equ 0822h ;# 
# 9946 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DC equ 0823h ;# 
# 9952 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCL equ 0823h ;# 
# 10013 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCH equ 0824h ;# 
# 10074 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PR equ 0825h ;# 
# 10080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRL equ 0825h ;# 
# 10141 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRH equ 0826h ;# 
# 10202 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMR equ 0827h ;# 
# 10208 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMRL equ 0827h ;# 
# 10269 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMRH equ 0828h ;# 
# 10330 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DBR equ 0829h ;# 
# 10391 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DBF equ 082Ah ;# 
# 10452 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLKR equ 082Bh ;# 
# 10513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLKF equ 082Ch ;# 
# 10574 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1FFA equ 082Dh ;# 
# 10611 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1STR0 equ 082Eh ;# 
# 10660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1STR1 equ 082Fh ;# 
# 10692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2CON equ 0831h ;# 
# 10761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2MDL equ 0832h ;# 
# 10825 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2SYNC equ 0833h ;# 
# 10875 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2CLK equ 0834h ;# 
# 10928 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2OEN equ 0835h ;# 
# 10953 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2POL equ 0836h ;# 
# 10985 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLNK equ 0837h ;# 
# 11038 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2REBS equ 0838h ;# 
# 11083 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2FEBS equ 0839h ;# 
# 11128 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHS equ 083Ah ;# 
# 11178 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCS equ 083Bh ;# 
# 11228 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRS equ 083Ch ;# 
# 11278 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDC equ 083Dh ;# 
# 11316 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDL equ 083Eh ;# 
# 11341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDS equ 083Fh ;# 
# 11386 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2INT equ 0840h ;# 
# 11447 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PH equ 0841h ;# 
# 11453 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHL equ 0841h ;# 
# 11514 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHH equ 0842h ;# 
# 11575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DC equ 0843h ;# 
# 11581 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCL equ 0843h ;# 
# 11642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCH equ 0844h ;# 
# 11703 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PR equ 0845h ;# 
# 11709 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRL equ 0845h ;# 
# 11770 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRH equ 0846h ;# 
# 11831 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMR equ 0847h ;# 
# 11837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMRL equ 0847h ;# 
# 11898 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMRH equ 0848h ;# 
# 11959 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DBR equ 0849h ;# 
# 12020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DBF equ 084Ah ;# 
# 12081 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLKR equ 084Bh ;# 
# 12142 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLKF equ 084Ch ;# 
# 12203 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2FFA equ 084Dh ;# 
# 12240 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2STR0 equ 084Eh ;# 
# 12265 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2STR1 equ 084Fh ;# 
# 12297 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3CON equ 0851h ;# 
# 12366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3MDL equ 0852h ;# 
# 12430 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3SYNC equ 0853h ;# 
# 12480 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3CLK equ 0854h ;# 
# 12533 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3OEN equ 0855h ;# 
# 12582 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3POL equ 0856h ;# 
# 12637 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLNK equ 0857h ;# 
# 12690 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3REBS equ 0858h ;# 
# 12735 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3FEBS equ 0859h ;# 
# 12780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHS equ 085Ah ;# 
# 12830 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCS equ 085Bh ;# 
# 12880 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRS equ 085Ch ;# 
# 12930 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDC equ 085Dh ;# 
# 12968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDL equ 085Eh ;# 
# 13017 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDS equ 085Fh ;# 
# 13062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3INT equ 0860h ;# 
# 13123 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PH equ 0861h ;# 
# 13129 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHL equ 0861h ;# 
# 13190 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHH equ 0862h ;# 
# 13251 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DC equ 0863h ;# 
# 13257 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCL equ 0863h ;# 
# 13318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCH equ 0864h ;# 
# 13379 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PR equ 0865h ;# 
# 13385 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRL equ 0865h ;# 
# 13446 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRH equ 0866h ;# 
# 13507 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMR equ 0867h ;# 
# 13513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMRL equ 0867h ;# 
# 13574 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMRH equ 0868h ;# 
# 13635 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DBR equ 0869h ;# 
# 13696 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DBF equ 086Ah ;# 
# 13757 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLKR equ 086Bh ;# 
# 13818 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLKF equ 086Ch ;# 
# 13879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3FFA equ 086Dh ;# 
# 13916 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3STR0 equ 086Eh ;# 
# 13965 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3STR1 equ 086Fh ;# 
# 13997 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STATUS_SHAD equ 0FE4h ;# 
# 14028 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WREG_SHAD equ 0FE5h ;# 
# 14047 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BSR_SHAD equ 0FE6h ;# 
# 14066 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCLATH_SHAD equ 0FE7h ;# 
# 14085 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0L_SHAD equ 0FE8h ;# 
# 14104 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0H_SHAD equ 0FE9h ;# 
# 14123 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1L_SHAD equ 0FEAh ;# 
# 14142 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1H_SHAD equ 0FEBh ;# 
# 14161 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STKPTR equ 0FEDh ;# 
# 14180 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TOSL equ 0FEEh ;# 
# 14199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TOSH equ 0FEFh ;# 
# 192 "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
psect eeprom_data,class=EEDATA,delta=2,space=3,noexec ;# 
# 192 "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
db 0xAB,0x20,0x15,0x03,0x24,0x01,0xFF,0xFF ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTA equ 0Ch ;# 
# 485 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTB equ 0Dh ;# 
# 554 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTC equ 0Eh ;# 
# 623 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTD equ 0Fh ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTE equ 010h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR1 equ 011h ;# 
# 798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR2 equ 012h ;# 
# 859 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR3 equ 013h ;# 
# 879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR4 equ 014h ;# 
# 929 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR0 equ 015h ;# 
# 948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1 equ 016h ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1L equ 016h ;# 
# 973 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1H equ 017h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T1CON equ 018h ;# 
# 1063 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T1GCON equ 019h ;# 
# 1132 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR2 equ 01Ah ;# 
# 1151 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PR2 equ 01Bh ;# 
# 1170 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T2CON equ 01Ch ;# 
# 1240 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISA equ 08Ch ;# 
# 1309 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISB equ 08Dh ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISC equ 08Eh ;# 
# 1447 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISD equ 08Fh ;# 
# 1516 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISE equ 090h ;# 
# 1561 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE1 equ 091h ;# 
# 1622 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE2 equ 092h ;# 
# 1683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE3 equ 093h ;# 
# 1703 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE4 equ 094h ;# 
# 1762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPTION_REG equ 095h ;# 
# 1844 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCON equ 096h ;# 
# 1900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WDTCON equ 097h ;# 
# 1958 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCTUNE equ 098h ;# 
# 2015 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCCON equ 099h ;# 
# 2086 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCSTAT equ 09Ah ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRES equ 09Bh ;# 
# 2153 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRESL equ 09Bh ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRESH equ 09Ch ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON0 equ 09Dh ;# 
# 2285 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON1 equ 09Eh ;# 
# 2356 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON2 equ 09Fh ;# 
# 2431 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATA equ 010Ch ;# 
# 2500 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATB equ 010Dh ;# 
# 2569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATC equ 010Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATD equ 010Fh ;# 
# 2707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATE equ 0110h ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM1CON0 equ 0111h ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM1CON1 equ 0112h ;# 
# 2882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM2CON0 equ 0113h ;# 
# 2943 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM2CON1 equ 0114h ;# 
# 3018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CMOUT equ 0115h ;# 
# 3055 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BORCON equ 0116h ;# 
# 3087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FVRCON equ 0117h ;# 
# 3162 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
DACCON0 equ 0118h ;# 
# 3222 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
DACCON1 equ 0119h ;# 
# 3291 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM4CON0 equ 011Ah ;# 
# 3352 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM4CON1 equ 011Bh ;# 
# 3427 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON2 equ 011Ch ;# 
# 3446 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON1 equ 011Dh ;# 
# 3451 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON0 equ 011Dh ;# 
# 3455 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON equ 011Dh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM3CON0 equ 011Eh ;# 
# 3686 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM3CON1 equ 011Fh ;# 
# 3761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELA equ 018Ch ;# 
# 3825 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELB equ 018Dh ;# 
# 3888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELD equ 018Fh ;# 
# 3927 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELE equ 0190h ;# 
# 3966 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADR equ 0191h ;# 
# 3972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADRL equ 0191h ;# 
# 3991 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADRH equ 0192h ;# 
# 4010 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDAT equ 0193h ;# 
# 4016 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATL equ 0193h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATA equ 0193h ;# 
# 4053 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATH equ 0194h ;# 
# 4072 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EECON1 equ 0195h ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EECON2 equ 0196h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
VREGCON equ 0197h ;# 
# 4172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RC1REG equ 0199h ;# 
# 4177 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCREG equ 0199h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCREG1 equ 0199h ;# 
# 4225 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TX1REG equ 019Ah ;# 
# 4230 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXREG1 equ 019Ah ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXREG equ 019Ah ;# 
# 4278 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRG equ 019Bh ;# 
# 4284 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRGL equ 019Bh ;# 
# 4289 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRG equ 019Bh ;# 
# 4293 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRG1 equ 019Bh ;# 
# 4297 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGL equ 019Bh ;# 
# 4353 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRGH equ 019Ch ;# 
# 4358 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGH equ 019Ch ;# 
# 4362 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGH1 equ 019Ch ;# 
# 4406 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RC1STA equ 019Dh ;# 
# 4411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCSTA1 equ 019Dh ;# 
# 4415 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCSTA equ 019Dh ;# 
# 4585 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TX1STA equ 019Eh ;# 
# 4590 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXSTA1 equ 019Eh ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXSTA equ 019Eh ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUD1CON equ 019Fh ;# 
# 4769 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCON1 equ 019Fh ;# 
# 4773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCTL1 equ 019Fh ;# 
# 4777 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCON equ 019Fh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCTL equ 019Fh ;# 
# 5009 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUA equ 020Ch ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUB equ 020Dh ;# 
# 5147 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUC equ 020Eh ;# 
# 5216 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUD equ 020Fh ;# 
# 5285 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUE equ 0210h ;# 
# 5330 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1BUF equ 0211h ;# 
# 5335 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPBUF equ 0211h ;# 
# 5583 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1ADD equ 0212h ;# 
# 5588 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPADD equ 0212h ;# 
# 5836 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1MSK equ 0213h ;# 
# 5841 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPMSK equ 0213h ;# 
# 6089 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1STAT equ 0214h ;# 
# 6094 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPSTAT equ 0214h ;# 
# 6210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON1 equ 0215h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON equ 0215h ;# 
# 6219 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON1 equ 0215h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON equ 0215h ;# 
# 6479 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON2 equ 0216h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON2 equ 0216h ;# 
# 6600 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON3 equ 0217h ;# 
# 6605 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON3 equ 0217h ;# 
# 6721 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONA equ 028Ch ;# 
# 6790 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONB equ 028Dh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONC equ 028Eh ;# 
# 6928 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCOND equ 028Fh ;# 
# 6997 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONE equ 0290h ;# 
# 7036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1 equ 0291h ;# 
# 7042 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1L equ 0291h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1H equ 0292h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP1CON equ 0293h ;# 
# 7143 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2 equ 0298h ;# 
# 7149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2L equ 0298h ;# 
# 7168 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2H equ 0299h ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP2CON equ 029Ah ;# 
# 7250 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONA equ 030Ch ;# 
# 7319 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONB equ 030Dh ;# 
# 7388 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONC equ 030Eh ;# 
# 7457 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCOND equ 030Fh ;# 
# 7526 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONE equ 0310h ;# 
# 7565 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3 equ 0311h ;# 
# 7571 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3L equ 0311h ;# 
# 7590 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3H equ 0312h ;# 
# 7609 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP3CON equ 0313h ;# 
# 7672 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLA equ 038Ch ;# 
# 7741 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLB equ 038Dh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLC equ 038Eh ;# 
# 7879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLD equ 038Fh ;# 
# 7948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLE equ 0390h ;# 
# 7993 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAP equ 0391h ;# 
# 8062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAN equ 0392h ;# 
# 8131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAF equ 0393h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBP equ 0394h ;# 
# 8269 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBN equ 0395h ;# 
# 8338 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBF equ 0396h ;# 
# 8407 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCP equ 0397h ;# 
# 8476 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCN equ 0398h ;# 
# 8545 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCF equ 0399h ;# 
# 8614 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEP equ 039Dh ;# 
# 8634 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEN equ 039Eh ;# 
# 8654 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEF equ 039Fh ;# 
# 8674 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA1CON equ 0511h ;# 
# 8755 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA2CON equ 0513h ;# 
# 8836 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA3CON equ 0515h ;# 
# 8917 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CLKRCON equ 051Ah ;# 
# 8992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1CON equ 0811h ;# 
# 9061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1MDL equ 0812h ;# 
# 9125 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1SYNC equ 0813h ;# 
# 9175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1CLK equ 0814h ;# 
# 9228 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1OEN equ 0815h ;# 
# 9277 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1POL equ 0816h ;# 
# 9332 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLNK equ 0817h ;# 
# 9385 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1REBS equ 0818h ;# 
# 9430 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1FEBS equ 0819h ;# 
# 9475 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHS equ 081Ah ;# 
# 9525 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCS equ 081Bh ;# 
# 9575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRS equ 081Ch ;# 
# 9625 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDC equ 081Dh ;# 
# 9663 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDL equ 081Eh ;# 
# 9712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDS equ 081Fh ;# 
# 9757 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1INT equ 0820h ;# 
# 9818 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PH equ 0821h ;# 
# 9824 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHL equ 0821h ;# 
# 9885 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHH equ 0822h ;# 
# 9946 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DC equ 0823h ;# 
# 9952 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCL equ 0823h ;# 
# 10013 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCH equ 0824h ;# 
# 10074 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PR equ 0825h ;# 
# 10080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRL equ 0825h ;# 
# 10141 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRH equ 0826h ;# 
# 10202 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMR equ 0827h ;# 
# 10208 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMRL equ 0827h ;# 
# 10269 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMRH equ 0828h ;# 
# 10330 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DBR equ 0829h ;# 
# 10391 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DBF equ 082Ah ;# 
# 10452 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLKR equ 082Bh ;# 
# 10513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLKF equ 082Ch ;# 
# 10574 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1FFA equ 082Dh ;# 
# 10611 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1STR0 equ 082Eh ;# 
# 10660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1STR1 equ 082Fh ;# 
# 10692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2CON equ 0831h ;# 
# 10761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2MDL equ 0832h ;# 
# 10825 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2SYNC equ 0833h ;# 
# 10875 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2CLK equ 0834h ;# 
# 10928 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2OEN equ 0835h ;# 
# 10953 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2POL equ 0836h ;# 
# 10985 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLNK equ 0837h ;# 
# 11038 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2REBS equ 0838h ;# 
# 11083 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2FEBS equ 0839h ;# 
# 11128 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHS equ 083Ah ;# 
# 11178 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCS equ 083Bh ;# 
# 11228 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRS equ 083Ch ;# 
# 11278 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDC equ 083Dh ;# 
# 11316 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDL equ 083Eh ;# 
# 11341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDS equ 083Fh ;# 
# 11386 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2INT equ 0840h ;# 
# 11447 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PH equ 0841h ;# 
# 11453 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHL equ 0841h ;# 
# 11514 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHH equ 0842h ;# 
# 11575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DC equ 0843h ;# 
# 11581 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCL equ 0843h ;# 
# 11642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCH equ 0844h ;# 
# 11703 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PR equ 0845h ;# 
# 11709 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRL equ 0845h ;# 
# 11770 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRH equ 0846h ;# 
# 11831 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMR equ 0847h ;# 
# 11837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMRL equ 0847h ;# 
# 11898 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMRH equ 0848h ;# 
# 11959 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DBR equ 0849h ;# 
# 12020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DBF equ 084Ah ;# 
# 12081 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLKR equ 084Bh ;# 
# 12142 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLKF equ 084Ch ;# 
# 12203 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2FFA equ 084Dh ;# 
# 12240 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2STR0 equ 084Eh ;# 
# 12265 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2STR1 equ 084Fh ;# 
# 12297 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3CON equ 0851h ;# 
# 12366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3MDL equ 0852h ;# 
# 12430 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3SYNC equ 0853h ;# 
# 12480 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3CLK equ 0854h ;# 
# 12533 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3OEN equ 0855h ;# 
# 12582 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3POL equ 0856h ;# 
# 12637 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLNK equ 0857h ;# 
# 12690 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3REBS equ 0858h ;# 
# 12735 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3FEBS equ 0859h ;# 
# 12780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHS equ 085Ah ;# 
# 12830 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCS equ 085Bh ;# 
# 12880 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRS equ 085Ch ;# 
# 12930 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDC equ 085Dh ;# 
# 12968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDL equ 085Eh ;# 
# 13017 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDS equ 085Fh ;# 
# 13062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3INT equ 0860h ;# 
# 13123 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PH equ 0861h ;# 
# 13129 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHL equ 0861h ;# 
# 13190 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHH equ 0862h ;# 
# 13251 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DC equ 0863h ;# 
# 13257 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCL equ 0863h ;# 
# 13318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCH equ 0864h ;# 
# 13379 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PR equ 0865h ;# 
# 13385 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRL equ 0865h ;# 
# 13446 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRH equ 0866h ;# 
# 13507 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMR equ 0867h ;# 
# 13513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMRL equ 0867h ;# 
# 13574 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMRH equ 0868h ;# 
# 13635 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DBR equ 0869h ;# 
# 13696 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DBF equ 086Ah ;# 
# 13757 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLKR equ 086Bh ;# 
# 13818 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLKF equ 086Ch ;# 
# 13879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3FFA equ 086Dh ;# 
# 13916 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3STR0 equ 086Eh ;# 
# 13965 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3STR1 equ 086Fh ;# 
# 13997 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STATUS_SHAD equ 0FE4h ;# 
# 14028 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WREG_SHAD equ 0FE5h ;# 
# 14047 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BSR_SHAD equ 0FE6h ;# 
# 14066 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCLATH_SHAD equ 0FE7h ;# 
# 14085 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0L_SHAD equ 0FE8h ;# 
# 14104 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0H_SHAD equ 0FE9h ;# 
# 14123 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1L_SHAD equ 0FEAh ;# 
# 14142 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1H_SHAD equ 0FEBh ;# 
# 14161 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STKPTR equ 0FEDh ;# 
# 14180 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TOSL equ 0FEEh ;# 
# 14199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTA equ 0Ch ;# 
# 485 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTB equ 0Dh ;# 
# 554 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTC equ 0Eh ;# 
# 623 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTD equ 0Fh ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PORTE equ 010h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR1 equ 011h ;# 
# 798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR2 equ 012h ;# 
# 859 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR3 equ 013h ;# 
# 879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIR4 equ 014h ;# 
# 929 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR0 equ 015h ;# 
# 948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1 equ 016h ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1L equ 016h ;# 
# 973 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR1H equ 017h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T1CON equ 018h ;# 
# 1063 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T1GCON equ 019h ;# 
# 1132 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TMR2 equ 01Ah ;# 
# 1151 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PR2 equ 01Bh ;# 
# 1170 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
T2CON equ 01Ch ;# 
# 1240 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISA equ 08Ch ;# 
# 1309 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISB equ 08Dh ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISC equ 08Eh ;# 
# 1447 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISD equ 08Fh ;# 
# 1516 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TRISE equ 090h ;# 
# 1561 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE1 equ 091h ;# 
# 1622 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE2 equ 092h ;# 
# 1683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE3 equ 093h ;# 
# 1703 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PIE4 equ 094h ;# 
# 1762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPTION_REG equ 095h ;# 
# 1844 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCON equ 096h ;# 
# 1900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WDTCON equ 097h ;# 
# 1958 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCTUNE equ 098h ;# 
# 2015 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCCON equ 099h ;# 
# 2086 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OSCSTAT equ 09Ah ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRES equ 09Bh ;# 
# 2153 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRESL equ 09Bh ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADRESH equ 09Ch ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON0 equ 09Dh ;# 
# 2285 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON1 equ 09Eh ;# 
# 2356 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ADCON2 equ 09Fh ;# 
# 2431 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATA equ 010Ch ;# 
# 2500 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATB equ 010Dh ;# 
# 2569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATC equ 010Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATD equ 010Fh ;# 
# 2707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
LATE equ 0110h ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM1CON0 equ 0111h ;# 
# 2807 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM1CON1 equ 0112h ;# 
# 2882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM2CON0 equ 0113h ;# 
# 2943 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM2CON1 equ 0114h ;# 
# 3018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CMOUT equ 0115h ;# 
# 3055 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BORCON equ 0116h ;# 
# 3087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FVRCON equ 0117h ;# 
# 3162 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
DACCON0 equ 0118h ;# 
# 3222 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
DACCON1 equ 0119h ;# 
# 3291 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM4CON0 equ 011Ah ;# 
# 3352 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM4CON1 equ 011Bh ;# 
# 3427 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON2 equ 011Ch ;# 
# 3446 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON1 equ 011Dh ;# 
# 3451 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON0 equ 011Dh ;# 
# 3455 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
APFCON equ 011Dh ;# 
# 3625 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM3CON0 equ 011Eh ;# 
# 3686 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CM3CON1 equ 011Fh ;# 
# 3761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELA equ 018Ch ;# 
# 3825 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELB equ 018Dh ;# 
# 3888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELD equ 018Fh ;# 
# 3927 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ANSELE equ 0190h ;# 
# 3966 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADR equ 0191h ;# 
# 3972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADRL equ 0191h ;# 
# 3991 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEADRH equ 0192h ;# 
# 4010 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDAT equ 0193h ;# 
# 4016 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATL equ 0193h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATA equ 0193h ;# 
# 4053 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EEDATH equ 0194h ;# 
# 4072 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EECON1 equ 0195h ;# 
# 4133 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
EECON2 equ 0196h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
VREGCON equ 0197h ;# 
# 4172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RC1REG equ 0199h ;# 
# 4177 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCREG equ 0199h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCREG1 equ 0199h ;# 
# 4225 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TX1REG equ 019Ah ;# 
# 4230 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXREG1 equ 019Ah ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXREG equ 019Ah ;# 
# 4278 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRG equ 019Bh ;# 
# 4284 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRGL equ 019Bh ;# 
# 4289 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRG equ 019Bh ;# 
# 4293 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRG1 equ 019Bh ;# 
# 4297 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGL equ 019Bh ;# 
# 4353 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SP1BRGH equ 019Ch ;# 
# 4358 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGH equ 019Ch ;# 
# 4362 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SPBRGH1 equ 019Ch ;# 
# 4406 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RC1STA equ 019Dh ;# 
# 4411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCSTA1 equ 019Dh ;# 
# 4415 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
RCSTA equ 019Dh ;# 
# 4585 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TX1STA equ 019Eh ;# 
# 4590 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXSTA1 equ 019Eh ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TXSTA equ 019Eh ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUD1CON equ 019Fh ;# 
# 4769 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCON1 equ 019Fh ;# 
# 4773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCTL1 equ 019Fh ;# 
# 4777 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCON equ 019Fh ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BAUDCTL equ 019Fh ;# 
# 5009 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUA equ 020Ch ;# 
# 5078 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUB equ 020Dh ;# 
# 5147 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUC equ 020Eh ;# 
# 5216 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUD equ 020Fh ;# 
# 5285 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WPUE equ 0210h ;# 
# 5330 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1BUF equ 0211h ;# 
# 5335 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPBUF equ 0211h ;# 
# 5583 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1ADD equ 0212h ;# 
# 5588 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPADD equ 0212h ;# 
# 5836 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1MSK equ 0213h ;# 
# 5841 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPMSK equ 0213h ;# 
# 6089 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1STAT equ 0214h ;# 
# 6094 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPSTAT equ 0214h ;# 
# 6210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON1 equ 0215h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON equ 0215h ;# 
# 6219 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON1 equ 0215h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON equ 0215h ;# 
# 6479 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON2 equ 0216h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON2 equ 0216h ;# 
# 6600 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSP1CON3 equ 0217h ;# 
# 6605 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SSPCON3 equ 0217h ;# 
# 6721 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONA equ 028Ch ;# 
# 6790 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONB equ 028Dh ;# 
# 6859 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONC equ 028Eh ;# 
# 6928 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCOND equ 028Fh ;# 
# 6997 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
ODCONE equ 0290h ;# 
# 7036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1 equ 0291h ;# 
# 7042 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1L equ 0291h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR1H equ 0292h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP1CON equ 0293h ;# 
# 7143 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2 equ 0298h ;# 
# 7149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2L equ 0298h ;# 
# 7168 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR2H equ 0299h ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP2CON equ 029Ah ;# 
# 7250 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONA equ 030Ch ;# 
# 7319 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONB equ 030Dh ;# 
# 7388 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONC equ 030Eh ;# 
# 7457 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCOND equ 030Fh ;# 
# 7526 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
SLRCONE equ 0310h ;# 
# 7565 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3 equ 0311h ;# 
# 7571 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3L equ 0311h ;# 
# 7590 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCPR3H equ 0312h ;# 
# 7609 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CCP3CON equ 0313h ;# 
# 7672 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLA equ 038Ch ;# 
# 7741 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLB equ 038Dh ;# 
# 7810 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLC equ 038Eh ;# 
# 7879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLD equ 038Fh ;# 
# 7948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
INLVLE equ 0390h ;# 
# 7993 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAP equ 0391h ;# 
# 8062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAN equ 0392h ;# 
# 8131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCAF equ 0393h ;# 
# 8200 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBP equ 0394h ;# 
# 8269 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBN equ 0395h ;# 
# 8338 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCBF equ 0396h ;# 
# 8407 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCP equ 0397h ;# 
# 8476 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCN equ 0398h ;# 
# 8545 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCCF equ 0399h ;# 
# 8614 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEP equ 039Dh ;# 
# 8634 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEN equ 039Eh ;# 
# 8654 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
IOCEF equ 039Fh ;# 
# 8674 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA1CON equ 0511h ;# 
# 8755 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA2CON equ 0513h ;# 
# 8836 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
OPA3CON equ 0515h ;# 
# 8917 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
CLKRCON equ 051Ah ;# 
# 8992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1CON equ 0811h ;# 
# 9061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1MDL equ 0812h ;# 
# 9125 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1SYNC equ 0813h ;# 
# 9175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1CLK equ 0814h ;# 
# 9228 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1OEN equ 0815h ;# 
# 9277 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1POL equ 0816h ;# 
# 9332 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLNK equ 0817h ;# 
# 9385 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1REBS equ 0818h ;# 
# 9430 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1FEBS equ 0819h ;# 
# 9475 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHS equ 081Ah ;# 
# 9525 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCS equ 081Bh ;# 
# 9575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRS equ 081Ch ;# 
# 9625 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDC equ 081Dh ;# 
# 9663 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDL equ 081Eh ;# 
# 9712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1ASDS equ 081Fh ;# 
# 9757 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1INT equ 0820h ;# 
# 9818 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PH equ 0821h ;# 
# 9824 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHL equ 0821h ;# 
# 9885 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PHH equ 0822h ;# 
# 9946 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DC equ 0823h ;# 
# 9952 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCL equ 0823h ;# 
# 10013 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DCH equ 0824h ;# 
# 10074 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PR equ 0825h ;# 
# 10080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRL equ 0825h ;# 
# 10141 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1PRH equ 0826h ;# 
# 10202 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMR equ 0827h ;# 
# 10208 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMRL equ 0827h ;# 
# 10269 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1TMRH equ 0828h ;# 
# 10330 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DBR equ 0829h ;# 
# 10391 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1DBF equ 082Ah ;# 
# 10452 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLKR equ 082Bh ;# 
# 10513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1BLKF equ 082Ch ;# 
# 10574 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1FFA equ 082Dh ;# 
# 10611 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1STR0 equ 082Eh ;# 
# 10660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC1STR1 equ 082Fh ;# 
# 10692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2CON equ 0831h ;# 
# 10761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2MDL equ 0832h ;# 
# 10825 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2SYNC equ 0833h ;# 
# 10875 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2CLK equ 0834h ;# 
# 10928 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2OEN equ 0835h ;# 
# 10953 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2POL equ 0836h ;# 
# 10985 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLNK equ 0837h ;# 
# 11038 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2REBS equ 0838h ;# 
# 11083 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2FEBS equ 0839h ;# 
# 11128 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHS equ 083Ah ;# 
# 11178 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCS equ 083Bh ;# 
# 11228 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRS equ 083Ch ;# 
# 11278 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDC equ 083Dh ;# 
# 11316 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDL equ 083Eh ;# 
# 11341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2ASDS equ 083Fh ;# 
# 11386 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2INT equ 0840h ;# 
# 11447 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PH equ 0841h ;# 
# 11453 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHL equ 0841h ;# 
# 11514 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PHH equ 0842h ;# 
# 11575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DC equ 0843h ;# 
# 11581 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCL equ 0843h ;# 
# 11642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DCH equ 0844h ;# 
# 11703 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PR equ 0845h ;# 
# 11709 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRL equ 0845h ;# 
# 11770 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2PRH equ 0846h ;# 
# 11831 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMR equ 0847h ;# 
# 11837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMRL equ 0847h ;# 
# 11898 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2TMRH equ 0848h ;# 
# 11959 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DBR equ 0849h ;# 
# 12020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2DBF equ 084Ah ;# 
# 12081 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLKR equ 084Bh ;# 
# 12142 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2BLKF equ 084Ch ;# 
# 12203 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2FFA equ 084Dh ;# 
# 12240 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2STR0 equ 084Eh ;# 
# 12265 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC2STR1 equ 084Fh ;# 
# 12297 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3CON equ 0851h ;# 
# 12366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3MDL equ 0852h ;# 
# 12430 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3SYNC equ 0853h ;# 
# 12480 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3CLK equ 0854h ;# 
# 12533 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3OEN equ 0855h ;# 
# 12582 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3POL equ 0856h ;# 
# 12637 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLNK equ 0857h ;# 
# 12690 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3REBS equ 0858h ;# 
# 12735 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3FEBS equ 0859h ;# 
# 12780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHS equ 085Ah ;# 
# 12830 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCS equ 085Bh ;# 
# 12880 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRS equ 085Ch ;# 
# 12930 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDC equ 085Dh ;# 
# 12968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDL equ 085Eh ;# 
# 13017 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3ASDS equ 085Fh ;# 
# 13062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3INT equ 0860h ;# 
# 13123 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PH equ 0861h ;# 
# 13129 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHL equ 0861h ;# 
# 13190 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PHH equ 0862h ;# 
# 13251 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DC equ 0863h ;# 
# 13257 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCL equ 0863h ;# 
# 13318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DCH equ 0864h ;# 
# 13379 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PR equ 0865h ;# 
# 13385 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRL equ 0865h ;# 
# 13446 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3PRH equ 0866h ;# 
# 13507 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMR equ 0867h ;# 
# 13513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMRL equ 0867h ;# 
# 13574 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3TMRH equ 0868h ;# 
# 13635 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DBR equ 0869h ;# 
# 13696 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3DBF equ 086Ah ;# 
# 13757 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLKR equ 086Bh ;# 
# 13818 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3BLKF equ 086Ch ;# 
# 13879 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3FFA equ 086Dh ;# 
# 13916 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3STR0 equ 086Eh ;# 
# 13965 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PSMC3STR1 equ 086Fh ;# 
# 13997 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STATUS_SHAD equ 0FE4h ;# 
# 14028 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
WREG_SHAD equ 0FE5h ;# 
# 14047 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
BSR_SHAD equ 0FE6h ;# 
# 14066 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
PCLATH_SHAD equ 0FE7h ;# 
# 14085 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0L_SHAD equ 0FE8h ;# 
# 14104 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR0H_SHAD equ 0FE9h ;# 
# 14123 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1L_SHAD equ 0FEAh ;# 
# 14142 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
FSR1H_SHAD equ 0FEBh ;# 
# 14161 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
STKPTR equ 0FEDh ;# 
# 14180 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TOSL equ 0FEEh ;# 
# 14199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f1784.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_ADC_Func
	FNCALL	_main,_Change_Func
	FNCALL	_main,_Check_Hand_Status
	FNCALL	_main,_Check_Motor_Status
	FNCALL	_main,_Check_Status
	FNCALL	_main,_Error_Mode_Func
	FNCALL	_main,_LED2_FLASH
	FNCALL	_main,_LED3_FLASH
	FNCALL	_main,_Output_ECU
	FNCALL	_main,_T1G_RPM_Init
	FNCALL	_main,_T2_Start
	FNCALL	_Error_Mode_Func,_ADC_Func
	FNCALL	_Error_Mode_Func,_Error_Exit_Func
	FNCALL	_Error_Mode_Func,_Motor1_F
	FNCALL	_Error_Mode_Func,_Motor1_R
	FNCALL	_Error_Mode_Func,_Motor2_F
	FNCALL	_Error_Mode_Func,_Motor2_R
	FNCALL	_Check_Hand_Status,_Delay_128msec
	FNCALL	_Change_Func,_ADC_Func
	FNCALL	_Change_Func,_Error_Exit_Func
	FNCALL	_Change_Func,_Motor1_F
	FNCALL	_Change_Func,_Motor1_R
	FNCALL	_Change_Func,_Motor2_F
	FNCALL	_Change_Func,_Motor2_R
	FNCALL	_Error_Exit_Func,_Motor1_S
	FNCALL	_Error_Exit_Func,_Motor2_S
	FNCALL	_ADC_Func,_FVR_Test
	FNCALL	_ADC_Func,_Init_ADC
	FNROOT	_main
	FNCALL	intlevel1,_ISRs
	global	intlevel1
	FNROOT	intlevel1
	global	_Pull_5S_CNT
	global	__1S_CNT
	global	__5S_CNT
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	225

;initializer for _Pull_5S_CNT
	retlw	027h
	line	362

;initializer for __1S_CNT
	retlw	08h
	line	363

;initializer for __5S_CNT
	retlw	08h
	global	_ADC_Cnt
	global	_Gear_Status_NEW
	global	_Gear_Status_OLD
	global	_Motor_Temp
	global	_Voltage_Error
	global	_j
	global	_ADC_Val
	global	_ADC_Data
	global	_DelayTime_Count
	global	_FVR_Data
	global	_LED13_Count
	global	_LED1_Count
	global	_LED2_Count
	global	_Normal_Data
	global	_PAC1710
	global	_PRM_NEW
	global	_RPM_OLD
	global	_RPM_VAL
	global	_Back_Error
	global	_Error_Flag
	global	_Error_Mode
	global	_Front_Error
	global	_Handback_Error
	global	_Motor_Back_Status
	global	_Motor_Front_Status
	global	_Motor_Remove
	global	_Moving_Status
	global	_Over_Speed_Error
	global	_Pull
	global	_Pull_Count
	global	_Pull_Error
	global	_RPM_Flag
	global	_RPM_Zero
	global	_Runt
	global	_Special
	global	_TD_CNT
	global	_TD_OLD_Status
	global	_TD_Temp
	global	_Work_status
	global	_i
	global	_LED3_Count
	global	_INTCON
_INTCON	set	0xB
	global	_PORTA
_PORTA	set	0xC
	global	_PORTC
_PORTC	set	0xE
	global	_PORTD
_PORTD	set	0xF
	global	_PORTE
_PORTE	set	0x10
	global	_PR2
_PR2	set	0x1B
	global	_T1CON
_T1CON	set	0x18
	global	_T1GCON
_T1GCON	set	0x19
	global	_T2CON
_T2CON	set	0x1C
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_TMR2
_TMR2	set	0x1A
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RA0
_RA0	set	0x60
	global	_RA1
_RA1	set	0x61
	global	_RA3
_RA3	set	0x63
	global	_RB5
_RB5	set	0x6D
	global	_RC1
_RC1	set	0x71
	global	_RC2
_RC2	set	0x72
	global	_RC3
_RC3	set	0x73
	global	_RC4
_RC4	set	0x74
	global	_SSP1IF
_SSP1IF	set	0x8B
	global	_T1GGO
_T1GGO	set	0xCB
	global	_TMR1GIF
_TMR1GIF	set	0x8F
	global	_TMR1ON
_TMR1ON	set	0xC0
	global	_TMR2IF
_TMR2IF	set	0x89
	global	_TMR2ON
_TMR2ON	set	0xE2
	global	_ADCON0
_ADCON0	set	0x9D
	global	_ADCON1
_ADCON1	set	0x9E
	global	_ADCON2
_ADCON2	set	0x9F
	global	_ADRESH
_ADRESH	set	0x9C
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISC
_TRISC	set	0x8E
	global	_TRISD
_TRISD	set	0x8F
	global	_TRISE
_TRISE	set	0x90
	global	_GO_nDONE
_GO_nDONE	set	0x4E9
	global	_HFIOFR
_HFIOFR	set	0x4D4
	global	_INTEDG
_INTEDG	set	0x4AE
	global	_TMR1GIE
_TMR1GIE	set	0x48F
	global	_TMR2IE
_TMR2IE	set	0x489
	global	_TRISC3
_TRISC3	set	0x473
	global	_TRISC4
_TRISC4	set	0x474
	global	_FVRCON
_FVRCON	set	0x117
	global	_LATA
_LATA	set	0x10C
	global	_LATB
_LATB	set	0x10D
	global	_LATBbits
_LATBbits	set	0x10D
	global	_LATC
_LATC	set	0x10E
	global	_LATD
_LATD	set	0x10F
	global	_LATA2
_LATA2	set	0x862
	global	_LATA4
_LATA4	set	0x864
	global	_LATA6
_LATA6	set	0x866
	global	_LATA7
_LATA7	set	0x867
	global	_LATC7
_LATC7	set	0x877
	global	_LATD6
_LATD6	set	0x87E
	global	_LATD7
_LATD7	set	0x87F
	global	_LATE0
_LATE0	set	0x880
	global	_LATE1
_LATE1	set	0x881
	global	_LATE2
_LATE2	set	0x882
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_ANSELD
_ANSELD	set	0x18F
	global	_ANSELE
_ANSELE	set	0x190
	global	_SSPADD
_SSPADD	set	0x212
	global	_SSPBUF
_SSPBUF	set	0x211
	global	_SSPCON1
_SSPCON1	set	0x215
	global	_SSPCON2
_SSPCON2	set	0x216
	global	_SSPCON2bits
_SSPCON2bits	set	0x216
	global	_SSPCON3
_SSPCON3	set	0x217
	global	_SSPSTAT
_SSPSTAT	set	0x214
	global	_ACKDT
_ACKDT	set	0x10B5
	global	_ACKEN
_ACKEN	set	0x10B4
	global	_BF
_BF	set	0x10A0
	global	_PEN
_PEN	set	0x10B2
	global	_RCEN
_RCEN	set	0x10B3
	global	_RSEN
_RSEN	set	0x10B1
	global	_R_nW
_R_nW	set	0x10A2
	global	_SEN
_SEN	set	0x10B0
	global	_WCOL
_WCOL	set	0x10AF
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_BORV$HI
__CFG_BORV$HI equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_WRT$ALL
__CFG_WRT$ALL equ 0x0
global __CFG_PLLEN$OFF
__CFG_PLLEN$OFF equ 0x0
	file	"TGB_Motor_Ver2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_ADC_Cnt:
       ds      1

_Gear_Status_NEW:
       ds      1

_Gear_Status_OLD:
       ds      1

_Motor_Temp:
       ds      1

_Voltage_Error:
       ds      1

_j:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_ADC_Val:
       ds      4

_ADC_Data:
       ds      2

_DelayTime_Count:
       ds      2

_FVR_Data:
       ds      2

_Init_Final:
       ds      2

_Init_Flag:
       ds      2

_LED13_Count:
       ds      2

_LED1_Count:
       ds      2

_LED2_Count:
       ds      2

_Normal_Data:
       ds      2

_PAC1710:
       ds      2

_PRM_NEW:
       ds      2

_RPM_OLD:
       ds      2

_RPM_VAL:
       ds      2

_ADC_Temp:
       ds      1

_Back_Error:
       ds      1

_Error_Flag:
       ds      1

_Error_Mode:
       ds      1

_Front_Error:
       ds      1

_Handback_Error:
       ds      1

_Motor_Back_Status:
       ds      1

_Motor_Front_Status:
       ds      1

_Motor_OLD_Status:
       ds      1

_Motor_Remove:
       ds      1

_Motor_Status_Now:
       ds      1

_Moving_Status:
       ds      1

_Now_Status:
       ds      1

_OLD_Motor_2WDLOCK_Gear:
       ds      1

_OLD_Motor_2WD_Gear:
       ds      1

_OLD_Motor_4WDLOCK_Gear:
       ds      1

_OLD_Motor_4WD_Gear:
       ds      1

_Over_Speed_Error:
       ds      1

_Pull:
       ds      1

_Pull_Count:
       ds      1

_Pull_Error:
       ds      1

_Pull_Timer_Star:
       ds      1

_RPM_Flag:
       ds      1

_RPM_Speed_Error:
       ds      1

_RPM_Zero:
       ds      1

_Runt:
       ds      1

_Special:
       ds      1

_TD_CNT:
       ds      1

_TD_OLD_Status:
       ds      1

_TD_Temp:
       ds      1

_UnderVoltage_Error:
       ds      1

_Work_status:
       ds      1

_i:
       ds      1

_k:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	225
_Pull_5S_CNT:
       ds      1

psect	dataBANK0
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	362
__1S_CNT:
       ds      1

psect	dataBANK0
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	363
__5S_CNT:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_LED3_Count:
       ds      2

__5S_Status_Temp:
       ds      2

_temp:
       ds      2

	file	"TGB_Motor_Ver2.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	040h
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlb 1	; select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlb 0	; select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_main:	; 0 bytes @ 0x0
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_T1G_RPM_Init:	; 0 bytes @ 0x0
?_T2_Start:	; 0 bytes @ 0x0
?_Check_Motor_Status:	; 0 bytes @ 0x0
?_Check_Hand_Status:	; 0 bytes @ 0x0
?_ADC_Func:	; 0 bytes @ 0x0
?_Check_Status:	; 0 bytes @ 0x0
?_Output_ECU:	; 0 bytes @ 0x0
?_Motor1_S:	; 0 bytes @ 0x0
?_Motor2_S:	; 0 bytes @ 0x0
?_Motor1_F:	; 0 bytes @ 0x0
?_Motor2_R:	; 0 bytes @ 0x0
?_Motor1_R:	; 0 bytes @ 0x0
?_Motor2_F:	; 0 bytes @ 0x0
?_ISRs:	; 0 bytes @ 0x0
??_ISRs:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_Error_Exit_Func:	; 0 bytes @ 0x0
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_T1G_RPM_Init:	; 0 bytes @ 0x0
??_T2_Start:	; 0 bytes @ 0x0
??_Check_Motor_Status:	; 0 bytes @ 0x0
?_LED3_FLASH:	; 0 bytes @ 0x0
?_LED2_FLASH:	; 0 bytes @ 0x0
??_Check_Status:	; 0 bytes @ 0x0
??_Output_ECU:	; 0 bytes @ 0x0
?_Delay_128msec:	; 0 bytes @ 0x0
??_Motor1_S:	; 0 bytes @ 0x0
??_Motor2_S:	; 0 bytes @ 0x0
??_Motor1_F:	; 0 bytes @ 0x0
??_Motor2_R:	; 0 bytes @ 0x0
??_Motor1_R:	; 0 bytes @ 0x0
??_Motor2_F:	; 0 bytes @ 0x0
??_Error_Exit_Func:	; 0 bytes @ 0x0
	global	?_Init_ADC
?_Init_ADC:	; 2 bytes @ 0x0
	global	?_FVR_Test
?_FVR_Test:	; 2 bytes @ 0x0
	global	Delay_128msec@Time
Delay_128msec@Time:	; 2 bytes @ 0x0
	global	LED2_FLASH@Time
LED2_FLASH@Time:	; 2 bytes @ 0x0
	global	LED3_FLASH@Time
LED3_FLASH@Time:	; 2 bytes @ 0x0
	ds	2
??_Check_Hand_Status:	; 0 bytes @ 0x2
??_LED3_FLASH:	; 0 bytes @ 0x2
??_LED2_FLASH:	; 0 bytes @ 0x2
??_Delay_128msec:	; 0 bytes @ 0x2
??_Init_ADC:	; 0 bytes @ 0x2
??_FVR_Test:	; 0 bytes @ 0x2
	ds	1
	global	Check_Hand_Status@k
Check_Hand_Status@k:	; 1 bytes @ 0x3
	ds	1
	global	Check_Hand_Status@Loop
Check_Hand_Status@Loop:	; 1 bytes @ 0x4
	ds	6
??_ADC_Func:	; 0 bytes @ 0xA
?_Error_Mode_Func:	; 0 bytes @ 0xA
?_Change_Func:	; 0 bytes @ 0xA
	global	Change_Func@Status
Change_Func@Status:	; 1 bytes @ 0xA
	global	Error_Mode_Func@Status
Error_Mode_Func@Status:	; 1 bytes @ 0xA
	ds	1
??_Error_Mode_Func:	; 0 bytes @ 0xB
??_Change_Func:	; 0 bytes @ 0xB
	ds	1
	global	Change_Func@Goto
Change_Func@Goto:	; 1 bytes @ 0xC
	global	Error_Mode_Func@Goto
Error_Mode_Func@Goto:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        3
;!    BSS         76
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      12
;!    BANK0            80     13      80
;!    BANK1            80      1       7
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISRs in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Change_Func
;!    _main->_Error_Mode_Func
;!    _Check_Hand_Status->_Delay_128msec
;!    _ADC_Func->_FVR_Test
;!    _ADC_Func->_Init_ADC
;!
;!Critical Paths under _ISRs in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISRs in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISRs in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISRs in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ISRs in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ISRs in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _ISRs in BANK6
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    1009
;!                                              0 BANK1      1     1      0
;!                           _ADC_Func
;!                        _Change_Func
;!                  _Check_Hand_Status
;!                 _Check_Motor_Status
;!                       _Check_Status
;!                    _Error_Mode_Func
;!                         _LED2_FLASH
;!                         _LED3_FLASH
;!                         _Output_ECU
;!                       _T1G_RPM_Init
;!                           _T2_Start
;! ---------------------------------------------------------------------------------
;! (1) _T2_Start                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _T1G_RPM_Init                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Output_ECU                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LED3_FLASH                                           2     0      2      96
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _LED2_FLASH                                           2     0      2      96
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _Error_Mode_Func                                      3     2      1     322
;!                                             10 BANK0      3     2      1
;!                           _ADC_Func
;!                    _Error_Exit_Func
;!                           _Motor1_F
;!                           _Motor1_R
;!                           _Motor2_F
;!                           _Motor2_R
;! ---------------------------------------------------------------------------------
;! (1) _Check_Status                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Check_Motor_Status                                   2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Check_Hand_Status                                    3     3      0     173
;!                                              2 BANK0      3     3      0
;!                      _Delay_128msec
;! ---------------------------------------------------------------------------------
;! (2) _Delay_128msec                                        2     0      2      96
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _Change_Func                                          3     2      1     322
;!                                             10 BANK0      3     2      1
;!                           _ADC_Func
;!                    _Error_Exit_Func
;!                           _Motor1_F
;!                           _Motor1_R
;!                           _Motor2_F
;!                           _Motor2_R
;! ---------------------------------------------------------------------------------
;! (2) _Motor2_R                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Motor2_F                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Motor1_R                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Motor1_F                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Error_Exit_Func                                      0     0      0       0
;!                           _Motor1_S
;!                           _Motor2_S
;! ---------------------------------------------------------------------------------
;! (3) _Motor2_S                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Motor1_S                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Func                                             0     0      0       0
;!                           _FVR_Test
;!                           _Init_ADC
;! ---------------------------------------------------------------------------------
;! (3) _Init_ADC                                            10     8      2       0
;!                                              0 BANK0     10     8      2
;! ---------------------------------------------------------------------------------
;! (3) _FVR_Test                                            10     8      2       0
;!                                              0 BANK0     10     8      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISRs                                                 6     6      0       0
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Func
;!     _FVR_Test
;!     _Init_ADC
;!   _Change_Func
;!     _ADC_Func
;!       _FVR_Test
;!       _Init_ADC
;!     _Error_Exit_Func
;!       _Motor1_S
;!       _Motor2_S
;!     _Motor1_F
;!     _Motor1_R
;!     _Motor2_F
;!     _Motor2_R
;!   _Check_Hand_Status
;!     _Delay_128msec
;!   _Check_Motor_Status
;!   _Check_Status
;!   _Error_Mode_Func
;!     _ADC_Func
;!       _FVR_Test
;!       _Init_ADC
;!     _Error_Exit_Func
;!       _Motor1_S
;!       _Motor2_S
;!     _Motor1_F
;!     _Motor1_R
;!     _Motor2_F
;!     _Motor2_R
;!   _LED2_FLASH
;!   _LED3_FLASH
;!   _Output_ECU
;!   _T1G_RPM_Init
;!   _T2_Start
;!
;! _ISRs (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      6       C       2       85.7%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      63       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      D      50       6      100.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      1       7       8        8.8%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BANK5               50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITBANK6            10      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6               10      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!DATA                 0      0      63      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 547 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       1       0       0       0       0       0
;;      Totals:         0       0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_Func
;;		_Change_Func
;;		_Check_Hand_Status
;;		_Check_Motor_Status
;;		_Check_Status
;;		_Error_Mode_Func
;;		_LED2_FLASH
;;		_LED3_FLASH
;;		_Output_ECU
;;		_T1G_RPM_Init
;;		_T2_Start
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	547
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	547
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 12
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	549
	
l4699:	
;Main.c: 549: OSCCON = 0x70 ;
	movlw	low(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	551
;Main.c: 551: while(!HFIOFR);
	goto	l268
	
l269:	
	
l268:	
	btfss	(1236/8)^080h,(1236)&7	;volatile
	goto	u5221
	goto	u5220
u5221:
	goto	l268
u5220:
	goto	l4701
	
l270:	
	line	555
	
l4701:	
;Main.c: 555: ANSELA = 0b00010000 ;
	movlw	low(010h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	556
	
l4703:	
;Main.c: 556: ANSELB = 0x00 ;
	clrf	(397)^0180h	;volatile
	line	557
	
l4705:	
;Main.c: 557: ANSELD = 0x00 ;
	clrf	(399)^0180h	;volatile
	line	558
	
l4707:	
;Main.c: 558: ANSELE = 0x00 ;
	clrf	(400)^0180h	;volatile
	line	560
	
l4709:	
;Main.c: 560: LATA = 0;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	561
	
l4711:	
;Main.c: 561: LATB = 0;
	clrf	(269)^0100h	;volatile
	line	562
	
l4713:	
;Main.c: 562: LATC = 0;
	clrf	(270)^0100h	;volatile
	line	563
	
l4715:	
;Main.c: 563: LATD = 0;
	clrf	(271)^0100h	;volatile
	line	566
	
l4717:	
;Main.c: 566: TRISA = 0b00101011;
	movlw	low(02Bh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	567
	
l4719:	
;Main.c: 567: TRISB = 0b00100001;
	movlw	low(021h)
	movwf	(141)^080h	;volatile
	line	569
	
l4721:	
;Main.c: 569: TRISC = 0b01001111;
	movlw	low(04Fh)
	movwf	(142)^080h	;volatile
	line	574
	
l4723:	
;Main.c: 574: TRISD = 0b00110011;
	movlw	low(033h)
	movwf	(143)^080h	;volatile
	line	578
	
l4725:	
;Main.c: 578: TRISE = 0b00000000;
	clrf	(144)^080h	;volatile
	line	580
;Main.c: 580: INTCON = 0b11000000;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	581
	
l4727:	
;Main.c: 581: T1G_RPM_Init();
	fcall	_T1G_RPM_Init
	line	584
	
l4729:	
;Main.c: 584: T2CON = 0b01111011;
	movlw	low(07Bh)
	movlb 0	; select bank0
	movwf	(28)	;volatile
	line	585
	
l4731:	
;Main.c: 585: TMR2IF = 0;
	bcf	(137/8),(137)&7	;volatile
	line	586
	
l4733:	
;Main.c: 586: TMR2IE = 1;
	movlb 1	; select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	587
	
l4735:	
;Main.c: 587: TMR2 = 0;
	movlb 0	; select bank0
	clrf	(26)	;volatile
	line	588
	
l4737:	
;Main.c: 588: PR2 = 250 - 1;
	movlw	low(0F9h)
	movwf	(27)	;volatile
	line	589
	
l4739:	
;Main.c: 589: T2_Start();
	fcall	_T2_Start
	line	591
	
l4741:	
;Main.c: 591: INTEDG = 0;
	movlb 1	; select bank1
	bcf	(1198/8)^080h,(1198)&7	;volatile
	line	593
	
l4743:	
;Main.c: 593: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	594
	
l4745:	
;Main.c: 594: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	622
	
l4747:	
;Main.c: 622: Check_Motor_Status();
	fcall	_Check_Motor_Status
	line	623
	
l4749:	
;Main.c: 623: Check_Hand_Status();
	fcall	_Check_Hand_Status
	line	624
;Main.c: 624: switch(Gear_Status_NEW)
	goto	l4759
	line	626
;Main.c: 625: {
;Main.c: 626: case 0b00010010:
	
l272:	
	line	627
;Main.c: 627: LATE2 = 0; LATE1 = 1; LATE0 = 1;
	movlb 2	; select bank2
	bcf	(2178/8)^0100h,(2178)&7	;volatile
	bsf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	628
	
l4751:	
;Main.c: 628: Handback_Error = 0;
	movlb 0	; select bank0
	clrf	(_Handback_Error)
	line	629
;Main.c: 629: break;
	goto	l4761
	line	630
;Main.c: 630: case 0b00000011:
	
l274:	
	line	631
;Main.c: 631: LATE2 = 1; LATE1 = 0; LATE0 = 1;
	movlb 2	; select bank2
	bsf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	632
	
l4753:	
;Main.c: 632: Handback_Error = 0;
	movlb 0	; select bank0
	clrf	(_Handback_Error)
	line	633
;Main.c: 633: break;
	goto	l4761
	line	634
;Main.c: 634: case 0b00010001:
	
l275:	
	line	635
;Main.c: 635: LATE2 = 0; LATE1 = 0; LATE0 = 1;
	movlb 2	; select bank2
	bcf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	636
	
l4755:	
;Main.c: 636: Handback_Error = 0;
	movlb 0	; select bank0
	clrf	(_Handback_Error)
	line	637
;Main.c: 637: break;
	goto	l4761
	line	638
;Main.c: 638: case 0b00100011:
	
l276:	
	line	639
;Main.c: 639: LATE2 = 1; LATE1 = 0; LATE0 = 0;
	movlb 2	; select bank2
	bsf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bcf	(2176/8)^0100h,(2176)&7	;volatile
	line	640
	
l4757:	
;Main.c: 640: Handback_Error = 0;
	movlb 0	; select bank0
	clrf	(_Handback_Error)
	line	641
;Main.c: 641: break;
	goto	l4761
	line	642
;Main.c: 642: default:
	
l277:	
	line	643
;Main.c: 643: Handback_Error = 1;
	movlb 0	; select bank0
	clrf	(_Handback_Error)
	incf	(_Handback_Error),f
	line	644
;Main.c: 644: }
	goto	l4761
	line	624
	
l271:	
	
l4759:	
	movf	(_Gear_Status_NEW),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 3 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           75     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l274
	xorlw	17^3	; case 17
	skipnz
	goto	l275
	xorlw	18^17	; case 18
	skipnz
	goto	l272
	xorlw	35^18	; case 35
	skipnz
	goto	l276
	goto	l277
	opt asmopt_on

	line	644
	
l273:	
	line	646
	
l4761:	
;Main.c: 646: if( Error_Mode == 1)
	movlb 0	; select bank0
		decf	((_Error_Mode)),w
	btfss	status,2
	goto	u5231
	goto	u5230
u5231:
	goto	l4767
u5230:
	line	650
	
l4763:	
;Main.c: 647: {
;Main.c: 650: Special = 1;
	clrf	(_Special)
	incf	(_Special),f
	line	652
	
l4765:	
;Main.c: 652: Gear_Status_NEW = 0b00100011;
	movlw	low(023h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(_Gear_Status_NEW)
	goto	l4767
	line	653
	
l278:	
	goto	l4767
	line	662
;Main.c: 653: }
;Main.c: 662: while(1)
	
l279:	
	line	665
	
l4767:	
;Main.c: 663: {
;Main.c: 665: if (Special == 1)
	movlb 0	; select bank0
		decf	((_Special)),w
	btfss	status,2
	goto	u5241
	goto	u5240
u5241:
	goto	l4771
u5240:
	line	667
	
l4769:	
;Main.c: 666: {
;Main.c: 667: Special = 0;
	clrf	(_Special)
	line	668
;Main.c: 668: }
	goto	l4773
	line	669
	
l280:	
	line	671
	
l4771:	
;Main.c: 669: else
;Main.c: 670: {
;Main.c: 671: Check_Hand_Status();
	fcall	_Check_Hand_Status
	line	672
;Main.c: 672: Check_Motor_Status();
	fcall	_Check_Motor_Status
	goto	l4773
	line	673
	
l281:	
	line	675
	
l4773:	
;Main.c: 673: }
;Main.c: 675: ADC_Func();
	fcall	_ADC_Func
	line	676
	
l4775:	
;Main.c: 676: if( (RB5 == 1 && RPM_Zero ==1)||(RB5 == 0 && RPM_Zero ==1))
	movlb 0	; select bank0
	btfss	(109/8),(109)&7	;volatile
	goto	u5251
	goto	u5250
u5251:
	goto	l286
u5250:
	
l4777:	
		decf	((_RPM_Zero)),w
	btfsc	status,2
	goto	u5261
	goto	u5260
u5261:
	goto	l4781
u5260:
	
l286:	
	btfsc	(109/8),(109)&7	;volatile
	goto	u5271
	goto	u5270
u5271:
	goto	l4783
u5270:
	
l4779:	
		decf	((_RPM_Zero)),w
	btfss	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l4783
u5280:
	goto	l4781
	
l284:	
	line	677
	
l4781:	
;Main.c: 677: Over_Speed_Error = 0;
	clrf	(_Over_Speed_Error)
	goto	l4783
	
l282:	
	line	688
	
l4783:	
;Main.c: 688: if(RPM_Zero == 1 || Over_Speed_Error == 1)
		decf	((_RPM_Zero)),w
	btfsc	status,2
	goto	u5291
	goto	u5290
u5291:
	goto	l4787
u5290:
	
l4785:	
		decf	((_Over_Speed_Error)),w
	btfss	status,2
	goto	u5301
	goto	u5300
u5301:
	goto	l287
u5300:
	goto	l4787
	
l289:	
	line	690
	
l4787:	
;Main.c: 689: {
;Main.c: 690: LED3_FLASH(3);
	movlw	03h
	movwf	(LED3_FLASH@Time)
	movlw	0
	movwf	((LED3_FLASH@Time))+1
	fcall	_LED3_FLASH
	line	691
;Main.c: 691: }
	goto	l4789
	line	692
	
l287:	
	line	694
;Main.c: 692: else
;Main.c: 693: {
;Main.c: 694: LATD7 = 0;
	movlb 2	; select bank2
	bcf	(2175/8)^0100h,(2175)&7	;volatile
	goto	l4789
	line	695
	
l290:	
	line	709
	
l4789:	
;Main.c: 695: }
;Main.c: 709: if((Error_Mode == 1)|| (Handback_Error == 1)) { LED2_FLASH(1); } else{ LATD6 = 0; }
	movlb 0	; select bank0
		decf	((_Error_Mode)),w
	btfsc	status,2
	goto	u5311
	goto	u5310
u5311:
	goto	l4793
u5310:
	
l4791:	
		decf	((_Handback_Error)),w
	btfss	status,2
	goto	u5321
	goto	u5320
u5321:
	goto	l291
u5320:
	goto	l4793
	
l293:	
	
l4793:	
	movlw	01h
	movwf	(LED2_FLASH@Time)
	movlw	0
	movwf	((LED2_FLASH@Time))+1
	fcall	_LED2_FLASH
	goto	l4795
	
l291:	
	movlb 2	; select bank2
	bcf	(2174/8)^0100h,(2174)&7	;volatile
	goto	l4795
	
l294:	
	line	710
	
l4795:	
;Main.c: 710: if(Voltage_Error == 1) { LATC7 = 1; } else{ LATC7 = 0; }
		decf	((_Voltage_Error)),w
	btfss	status,2
	goto	u5331
	goto	u5330
u5331:
	goto	l295
u5330:
	
l4797:	
	movlb 2	; select bank2
	bsf	(2167/8)^0100h,(2167)&7	;volatile
	goto	l4801
	
l295:	
	movlb 2	; select bank2
	bcf	(2167/8)^0100h,(2167)&7	;volatile
	goto	l4801
	
l296:	
	line	716
;Main.c: 716: while( Voltage_Error == 1)
	goto	l4801
	
l298:	
	line	718
	
l4799:	
;Main.c: 717: {
;Main.c: 718: ADC_Func();
	fcall	_ADC_Func
	goto	l4801
	line	719
	
l297:	
	line	716
	
l4801:	
		decf	((_Voltage_Error)),w
	btfsc	status,2
	goto	u5341
	goto	u5340
u5341:
	goto	l4799
u5340:
	goto	l4803
	
l299:	
	line	721
	
l4803:	
;Main.c: 719: }
;Main.c: 721: if(((RPM_Flag > 4)&&(Voltage_Error == 0))||((RB5 == 0) && (Voltage_Error == 0)&& (Over_Speed_Error ==0))||((RB5 == 1) && (Voltage_Error == 0)&& (Over_Speed_Error ==0)))
	movlw	low(05h)
	movlb 0	; select bank0
	subwf	(_RPM_Flag),w
	skipc
	goto	u5351
	goto	u5350
u5351:
	goto	l304
u5350:
	
l4805:	
	movf	((_Voltage_Error)),w
	btfsc	status,2
	goto	u5361
	goto	u5360
u5361:
	goto	l4815
u5360:
	
l304:	
	btfsc	(109/8),(109)&7	;volatile
	goto	u5371
	goto	u5370
u5371:
	goto	l306
u5370:
	
l4807:	
	movf	((_Voltage_Error)),w
	btfss	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l306
u5380:
	
l4809:	
	movf	((_Over_Speed_Error)),w
	btfsc	status,2
	goto	u5391
	goto	u5390
u5391:
	goto	l4815
u5390:
	
l306:	
	btfss	(109/8),(109)&7	;volatile
	goto	u5401
	goto	u5400
u5401:
	goto	l4767
u5400:
	
l4811:	
	movf	((_Voltage_Error)),w
	btfss	status,2
	goto	u5411
	goto	u5410
u5411:
	goto	l4767
u5410:
	
l4813:	
	movf	((_Over_Speed_Error)),w
	btfss	status,2
	goto	u5421
	goto	u5420
u5421:
	goto	l4767
u5420:
	goto	l4815
	
l302:	
	line	723
	
l4815:	
;Main.c: 722: {
;Main.c: 723: if(Pull_Error == 1 && Pull_Count < 3)
		decf	((_Pull_Error)),w
	btfss	status,2
	goto	u5431
	goto	u5430
u5431:
	goto	l307
u5430:
	
l4817:	
	movlw	low(03h)
	subwf	(_Pull_Count),w
	skipnc
	goto	u5441
	goto	u5440
u5441:
	goto	l307
u5440:
	line	724
	
l4819:	
;Main.c: 724: { if( Pull ==1)
		decf	((_Pull)),w
	btfss	status,2
	goto	u5451
	goto	u5450
u5451:
	goto	l307
u5450:
	line	726
	
l4821:	
;Main.c: 725: {
;Main.c: 726: Pull_Count ++;
	movlw	low(01h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	addwf	(_Pull_Count),f
	line	727
;Main.c: 727: switch(Gear_Status_OLD)
	goto	l4833
	line	729
;Main.c: 728: {
;Main.c: 729: case 0b00010010:
	
l310:	
	line	730
	
l4823:	
;Main.c: 730: Error_Mode_Func(0b00010010,0b10100100);
	movlw	low(0A4h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Error_Mode_Func@Status)
	movlw	low(012h)
	fcall	_Error_Mode_Func
	line	731
;Main.c: 731: break;
	goto	l4835
	line	732
;Main.c: 732: case 0b00000011:
	
l312:	
	line	733
	
l4825:	
;Main.c: 733: Error_Mode_Func(0b00000011,0b10000100);
	movlw	low(084h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Error_Mode_Func@Status)
	movlw	low(03h)
	fcall	_Error_Mode_Func
	line	734
;Main.c: 734: break;
	goto	l4835
	line	735
;Main.c: 735: case 0b00010001:
	
l313:	
	line	736
	
l4827:	
;Main.c: 736: Error_Mode_Func(0b00010001,0b00100100);
	movlw	low(024h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Error_Mode_Func@Status)
	movlw	low(011h)
	fcall	_Error_Mode_Func
	line	737
;Main.c: 737: break;
	goto	l4835
	line	738
;Main.c: 738: case 0b00100011:
	
l314:	
	line	739
	
l4829:	
;Main.c: 739: Error_Mode_Func(0b00100011,0b10000010);
	movlw	low(082h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Error_Mode_Func@Status)
	movlw	low(023h)
	fcall	_Error_Mode_Func
	line	740
;Main.c: 740: break;
	goto	l4835
	line	741
	
l4831:	
;Main.c: 741: }
	goto	l4835
	line	727
	
l309:	
	
l4833:	
	movf	(_Gear_Status_OLD),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 3 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           75     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l4825
	xorlw	17^3	; case 17
	skipnz
	goto	l4827
	xorlw	18^17	; case 18
	skipnz
	goto	l4823
	xorlw	35^18	; case 35
	skipnz
	goto	l4829
	goto	l4835
	opt asmopt_on

	line	741
	
l311:	
	line	742
	
l4835:	
;Main.c: 742: Pull_5S_CNT = 39;
	movlw	low(027h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(_Pull_5S_CNT)
	goto	l307
	line	743
	
l308:	
	line	745
	
l307:	
	line	746
;Main.c: 743: }
;Main.c: 745: }
;Main.c: 746: if (Gear_Status_NEW != Gear_Status_OLD)
	movf	(_Gear_Status_NEW),w
	xorwf	(_Gear_Status_OLD),w
	skipnz
	goto	u5461
	goto	u5460
u5461:
	goto	l4855
u5460:
	line	747
	
l4837:	
;Main.c: 747: { Pull_Error = 0;
	clrf	(_Pull_Error)
	line	748
;Main.c: 748: Pull_Count = 0;
	clrf	(_Pull_Count)
	line	749
	
l4839:	
;Main.c: 749: Pull_5S_CNT = 39;
	movlw	low(027h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(_Pull_5S_CNT)
	line	750
;Main.c: 750: switch(Gear_Status_NEW)
	goto	l4851
	line	752
;Main.c: 751: {
;Main.c: 752: case 0b00010010:
	
l317:	
	line	753
;Main.c: 753: LATE2 = 0; LATE1 = 1; LATE0 = 1;
	movlb 2	; select bank2
	bcf	(2178/8)^0100h,(2178)&7	;volatile
	bsf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	754
	
l4841:	
;Main.c: 754: Change_Func(0b00010010,0b10100100);
	movlw	low(0A4h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Change_Func@Status)
	movlw	low(012h)
	fcall	_Change_Func
	line	755
;Main.c: 755: break;
	goto	l4853
	line	757
;Main.c: 757: case 0b00000011:
	
l319:	
	line	758
;Main.c: 758: LATE2 = 1; LATE1 = 0; LATE0 = 1;
	movlb 2	; select bank2
	bsf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	759
	
l4843:	
;Main.c: 759: Change_Func(0b00000011,0b10000100);
	movlw	low(084h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Change_Func@Status)
	movlw	low(03h)
	fcall	_Change_Func
	line	760
;Main.c: 760: break;
	goto	l4853
	line	762
;Main.c: 762: case 0b00010001:
	
l320:	
	line	763
;Main.c: 763: LATE2 = 0; LATE1 = 0; LATE0 = 1;
	movlb 2	; select bank2
	bcf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	764
	
l4845:	
;Main.c: 764: Change_Func(0b00010001,0b00100100);
	movlw	low(024h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Change_Func@Status)
	movlw	low(011h)
	fcall	_Change_Func
	line	765
;Main.c: 765: break;
	goto	l4853
	line	767
;Main.c: 767: case 0b00100011:
	
l321:	
	line	768
;Main.c: 768: LATE2 = 1; LATE1 = 0; LATE0 = 0;
	movlb 2	; select bank2
	bsf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bcf	(2176/8)^0100h,(2176)&7	;volatile
	line	769
	
l4847:	
;Main.c: 769: Change_Func(0b00100011,0b10000010);
	movlw	low(082h)
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movlb 0	; select bank0
	movwf	(Change_Func@Status)
	movlw	low(023h)
	fcall	_Change_Func
	line	770
;Main.c: 770: break;
	goto	l4853
	line	773
	
l4849:	
;Main.c: 773: }
	goto	l4853
	line	750
	
l316:	
	
l4851:	
	movf	(_Gear_Status_NEW),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 3 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           75     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l319
	xorlw	17^3	; case 17
	skipnz
	goto	l320
	xorlw	18^17	; case 18
	skipnz
	goto	l317
	xorlw	35^18	; case 35
	skipnz
	goto	l321
	goto	l4853
	opt asmopt_on

	line	773
	
l318:	
	line	776
	
l4853:	
;Main.c: 776: Gear_Status_OLD = Gear_Status_NEW;
	movf	(_Gear_Status_NEW),w
	movlb 1	; select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(_Gear_Status_OLD)
	goto	l4855
	line	777
	
l315:	
	line	778
	
l4855:	
;Main.c: 777: }
;Main.c: 778: Check_Status();
	fcall	_Check_Status
	line	779
	
l4857:	
;Main.c: 779: Output_ECU();
	fcall	_Output_ECU
	goto	l4767
	line	781
	
l300:	
	goto	l4767
	line	790
	
l322:	
	line	662
	goto	l4767
	
l323:	
	line	791
	
l324:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_T2_Start

;; *************** function _T2_Start *****************
;; Defined at:
;;		line 1172 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	1172
global __ptext1
__ptext1:	;psect for function _T2_Start
psect	text1
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1172
	global	__size_of_T2_Start
	__size_of_T2_Start	equ	__end_of_T2_Start-_T2_Start
	
_T2_Start:	
;incstack = 0
	opt	stack 14
; Regs used in _T2_Start: [status,2]
	line	1174
	
l4113:	
;Main.c: 1174: TMR2 = 0;
	movlb 0	; select bank0
	clrf	(26)	;volatile
	line	1175
	
l4115:	
;Main.c: 1175: TMR2IF = 0;
	bcf	(137/8),(137)&7	;volatile
	line	1176
	
l4117:	
;Main.c: 1176: TMR2ON = 1;
	bsf	(226/8),(226)&7	;volatile
	line	1177
	
l450:	
	return
	opt stack 0
GLOBAL	__end_of_T2_Start
	__end_of_T2_Start:
	signat	_T2_Start,88
	global	_T1G_RPM_Init

;; *************** function _T1G_RPM_Init *****************
;; Defined at:
;;		line 1193 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	1193
global __ptext2
__ptext2:	;psect for function _T1G_RPM_Init
psect	text2
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1193
	global	__size_of_T1G_RPM_Init
	__size_of_T1G_RPM_Init	equ	__end_of_T1G_RPM_Init-_T1G_RPM_Init
	
_T1G_RPM_Init:	
;incstack = 0
	opt	stack 14
; Regs used in _T1G_RPM_Init: [wreg+status,2]
	line	1195
	
l4099:	
;Main.c: 1195: T1CON = 0b00010000;
	movlw	low(010h)
	movlb 0	; select bank0
	movwf	(24)	;volatile
	line	1196
;Main.c: 1196: T1GCON = 0b11110000;
	movlw	low(0F0h)
	movwf	(25)	;volatile
	line	1197
	
l4101:	
;Main.c: 1197: TMR1H = 0;
	clrf	(23)	;volatile
	line	1198
	
l4103:	
;Main.c: 1198: TMR1L = 0;
	clrf	(22)	;volatile
	line	1199
	
l4105:	
;Main.c: 1199: TMR1GIF = 0;
	bcf	(143/8),(143)&7	;volatile
	line	1200
	
l4107:	
;Main.c: 1200: TMR1GIE = 1;
	movlb 1	; select bank1
	bsf	(1167/8)^080h,(1167)&7	;volatile
	line	1201
	
l4109:	
;Main.c: 1201: TMR1ON = 1;
	movlb 0	; select bank0
	bsf	(192/8),(192)&7	;volatile
	line	1202
	
l4111:	
;Main.c: 1202: T1GGO = 1;
	bsf	(203/8),(203)&7	;volatile
	line	1203
	
l456:	
	return
	opt stack 0
GLOBAL	__end_of_T1G_RPM_Init
	__end_of_T1G_RPM_Init:
	signat	_T1G_RPM_Init,88
	global	_Output_ECU

;; *************** function _Output_ECU *****************
;; Defined at:
;;		line 1734 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	1734
global __ptext3
__ptext3:	;psect for function _Output_ECU
psect	text3
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1734
	global	__size_of_Output_ECU
	__size_of_Output_ECU	equ	__end_of_Output_ECU-_Output_ECU
	
_Output_ECU:	
;incstack = 0
	opt	stack 14
; Regs used in _Output_ECU: [wreg-fsr0h+status,2+status,0]
	line	1738
	
l4691:	
;Main.c: 1738: if( Handback_Error == 1)
	movlb 0	; select bank0
		decf	((_Handback_Error)),w
	btfss	status,2
	goto	u5211
	goto	u5210
u5211:
	goto	l4697
u5210:
	line	1740
	
l4693:	
;Main.c: 1739: {
;Main.c: 1740: LATE2 = 1; LATE1 = 1; LATE0 = 1;
	movlb 2	; select bank2
	bsf	(2178/8)^0100h,(2178)&7	;volatile
	bsf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	1741
;Main.c: 1741: }
	goto	l662
	line	1764
	
l654:	
	line	1766
;Main.c: 1764: else
;Main.c: 1765: {
;Main.c: 1766: switch(Moving_Status)
	goto	l4697
	line	1768
;Main.c: 1767: {
;Main.c: 1768: case 0b10000010 :
	
l657:	
	line	1769
;Main.c: 1769: LATE2 = 1; LATE1 = 0; LATE0 = 0;
	movlb 2	; select bank2
	bsf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bcf	(2176/8)^0100h,(2176)&7	;volatile
	line	1770
;Main.c: 1770: break;
	goto	l662
	line	1771
;Main.c: 1771: case 0b10000100 :
	
l659:	
	line	1772
;Main.c: 1772: LATE2 = 1; LATE1 = 0; LATE0 = 1;
	movlb 2	; select bank2
	bsf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	1773
;Main.c: 1773: break;
	goto	l662
	line	1774
;Main.c: 1774: case 0b00100100 :
	
l660:	
	line	1775
;Main.c: 1775: LATE2 = 0; LATE1 = 0; LATE0 = 1;
	movlb 2	; select bank2
	bcf	(2178/8)^0100h,(2178)&7	;volatile
	bcf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	1776
;Main.c: 1776: break;
	goto	l662
	line	1777
;Main.c: 1777: case 0b10100100 :
	
l661:	
	line	1778
;Main.c: 1778: LATE2 = 0; LATE1 = 1; LATE0 = 1;
	movlb 2	; select bank2
	bcf	(2178/8)^0100h,(2178)&7	;volatile
	bsf	(2177/8)^0100h,(2177)&7	;volatile
	bsf	(2176/8)^0100h,(2176)&7	;volatile
	line	1779
;Main.c: 1779: break;
	goto	l662
	line	1780
	
l4695:	
;Main.c: 1780: }
	goto	l662
	line	1766
	
l656:	
	
l4697:	
	movlb 0	; select bank0
	movf	(_Moving_Status),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 36 to 164
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	36^0	; case 36
	skipnz
	goto	l660
	xorlw	130^36	; case 130
	skipnz
	goto	l657
	xorlw	132^130	; case 132
	skipnz
	goto	l659
	xorlw	164^132	; case 164
	skipnz
	goto	l661
	goto	l662
	opt asmopt_on

	line	1780
	
l658:	
	goto	l662
	line	1781
	
l655:	
	line	1784
	
l662:	
	return
	opt stack 0
GLOBAL	__end_of_Output_ECU
	__end_of_Output_ECU:
	signat	_Output_ECU,88
	global	_LED3_FLASH

;; *************** function _LED3_FLASH *****************
;; Defined at:
;;		line 1455 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;  Time            2    0[BANK0 ] unsigned int 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	1455
global __ptext4
__ptext4:	;psect for function _LED3_FLASH
psect	text4
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1455
	global	__size_of_LED3_FLASH
	__size_of_LED3_FLASH	equ	__end_of_LED3_FLASH-_LED3_FLASH
	
_LED3_FLASH:	
;incstack = 0
	opt	stack 14
; Regs used in _LED3_FLASH: [wreg+status,2]
	line	1457
	
l4225:	
;Main.c: 1457: if(LED13_Count >= Time)
	movlb 0	; select bank0
	movf	(LED3_FLASH@Time+1),w
	subwf	(_LED13_Count+1),w
	skipz
	goto	u4405
	movf	(LED3_FLASH@Time),w
	subwf	(_LED13_Count),w
u4405:
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l549
u4400:
	line	1458
	
l4227:	
;Main.c: 1458: { LED13_Count =0;
	clrf	(_LED13_Count)
	clrf	(_LED13_Count+1)
	line	1459
	
l4229:	
;Main.c: 1459: LATD7 =!LATD7;
	movlw	1<<((2175)&7)
	movlb 2	; select bank2
	xorwf	((2175)/8)^0100h,f
	goto	l549
	line	1460
	
l548:	
	line	1461
	
l549:	
	return
	opt stack 0
GLOBAL	__end_of_LED3_FLASH
	__end_of_LED3_FLASH:
	signat	_LED3_FLASH,4216
	global	_LED2_FLASH

;; *************** function _LED2_FLASH *****************
;; Defined at:
;;		line 1439 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;  Time            2    0[BANK0 ] unsigned int 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	1439
global __ptext5
__ptext5:	;psect for function _LED2_FLASH
psect	text5
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1439
	global	__size_of_LED2_FLASH
	__size_of_LED2_FLASH	equ	__end_of_LED2_FLASH-_LED2_FLASH
	
_LED2_FLASH:	
;incstack = 0
	opt	stack 14
; Regs used in _LED2_FLASH: [wreg+status,2]
	line	1445
	
l4231:	
;Main.c: 1445: if(LED2_Count >= Time)
	movlb 0	; select bank0
	movf	(LED2_FLASH@Time+1),w
	subwf	(_LED2_Count+1),w
	skipz
	goto	u4415
	movf	(LED2_FLASH@Time),w
	subwf	(_LED2_Count),w
u4415:
	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l545
u4410:
	line	1446
	
l4233:	
;Main.c: 1446: { LED2_Count =0;
	clrf	(_LED2_Count)
	clrf	(_LED2_Count+1)
	line	1447
	
l4235:	
;Main.c: 1447: LATD6 =!LATD6;
	movlw	1<<((2174)&7)
	movlb 2	; select bank2
	xorwf	((2174)/8)^0100h,f
	goto	l545
	line	1448
	
l544:	
	line	1449
	
l545:	
	return
	opt stack 0
GLOBAL	__end_of_LED2_FLASH
	__end_of_LED2_FLASH:
	signat	_LED2_FLASH,4216
	global	_Error_Mode_Func

;; *************** function _Error_Mode_Func *****************
;; Defined at:
;;		line 1208 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;  Goto            1    wreg     unsigned char 
;;  Status          1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Goto            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       1       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Func
;;		_Error_Exit_Func
;;		_Motor1_F
;;		_Motor1_R
;;		_Motor2_F
;;		_Motor2_R
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	1208
global __ptext6
__ptext6:	;psect for function _Error_Mode_Func
psect	text6
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1208
	global	__size_of_Error_Mode_Func
	__size_of_Error_Mode_Func	equ	__end_of_Error_Mode_Func-_Error_Mode_Func
	
_Error_Mode_Func:	
;incstack = 0
	opt	stack 12
; Regs used in _Error_Mode_Func: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Error_Mode_Func@Goto stored from wreg
	movlb 0	; select bank0
	movwf	(Error_Mode_Func@Goto)
	line	1211
	
l4237:	
;Main.c: 1211: Moving_Status = Status;
	movf	(Error_Mode_Func@Status),w
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	movwf	(_Moving_Status)
	line	1212
;Main.c: 1212: _5S_CNT = 8;
	movlw	low(08h)
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1213
	
l4239:	
;Main.c: 1213: Work_status = 1;
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1214
	
l4241:	
;Main.c: 1214: ADC_Func();
	fcall	_ADC_Func
	line	1215
	
l4243:	
;Main.c: 1215: Front_Error = 0 ;
	movlb 0	; select bank0
	clrf	(_Front_Error)
	line	1216
	
l4245:	
;Main.c: 1216: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1229
;Main.c: 1229: switch(Goto)
	goto	l4453
	line	1231
;Main.c: 1230: {
;Main.c: 1231: case 0b00010010 :
	
l460:	
	line	1234
;Main.c: 1234: LATA4 = 1;
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7	;volatile
	line	1235
;Main.c: 1235: while((RA1 == 1) && (Front_Error == 0) )
	goto	l4255
	
l462:	
	line	1237
	
l4247:	
;Main.c: 1236: {
;Main.c: 1237: Motor1_F();
	fcall	_Motor1_F
	line	1238
	
l4249:	
;Main.c: 1238: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l4255
u4420:
	line	1240
	
l4251:	
;Main.c: 1239: {
;Main.c: 1240: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	1241
	
l4253:	
;Main.c: 1241: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4255
	line	1242
	
l463:	
	goto	l4255
	line	1243
	
l461:	
	line	1235
	
l4255:	
	movlb 0	; select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u4431
	goto	u4430
u4431:
	goto	l4259
u4430:
	
l4257:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l4247
u4440:
	goto	l4259
	
l465:	
	goto	l4259
	
l466:	
	line	1244
	
l4259:	
;Main.c: 1242: }
;Main.c: 1243: }
;Main.c: 1244: Front_Error = 0 ;
	clrf	(_Front_Error)
	line	1245
	
l4261:	
;Main.c: 1245: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1250
	
l4263:	
;Main.c: 1250: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1251
	
l4265:	
;Main.c: 1251: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1252
	
l4267:	
;Main.c: 1252: _5S_CNT = 8;
	movlw	low(08h)
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1254
;Main.c: 1254: while((RC1 == 1) && (Back_Error == 0) )
	goto	l4277
	
l468:	
	line	1256
	
l4269:	
;Main.c: 1255: {
;Main.c: 1256: Motor2_R();
	fcall	_Motor2_R
	line	1257
	
l4271:	
;Main.c: 1257: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l4277
u4450:
	line	1259
	
l4273:	
;Main.c: 1258: {
;Main.c: 1259: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	1260
	
l4275:	
;Main.c: 1260: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4277
	line	1261
	
l469:	
	goto	l4277
	line	1262
	
l467:	
	line	1254
	
l4277:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u4461
	goto	u4460
u4461:
	goto	l4281
u4460:
	
l4279:	
	movf	((_Back_Error)),w
	btfsc	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l4269
u4470:
	goto	l4281
	
l471:	
	goto	l4281
	
l472:	
	line	1263
	
l4281:	
;Main.c: 1261: }
;Main.c: 1262: }
;Main.c: 1263: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1264
	
l4283:	
;Main.c: 1264: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1265
;Main.c: 1265: break;
	goto	l531
	line	1266
;Main.c: 1266: case 0b00010001:
	
l474:	
	line	1269
;Main.c: 1269: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	1270
	
l4285:	
;Main.c: 1270: if(( Gear_Status_OLD == 0b00010010) || (Motor_Remove == 1))
		movlw	18
	xorwf	((_Gear_Status_OLD)),w
	btfsc	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l4289
u4480:
	
l4287:	
	movlb 0	; select bank0
		decf	((_Motor_Remove)),w
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l4311
u4490:
	goto	l4289
	
l477:	
	line	1272
	
l4289:	
;Main.c: 1271: {
;Main.c: 1272: for(i = 0 ; i < 2 ; i++)
	movlb 0	; select bank0
	clrf	(_i)
	
l4291:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4501
	goto	u4500
u4501:
	goto	l4303
u4500:
	goto	l4311
	
l4293:	
	goto	l4311
	line	1273
	
l478:	
	line	1274
;Main.c: 1273: {
;Main.c: 1274: while((RA3 == 1) && (Front_Error == 0))
	goto	l4303
	
l481:	
	line	1275
	
l4295:	
;Main.c: 1275: { Motor1_R();
	fcall	_Motor1_R
	line	1276
	
l4297:	
;Main.c: 1276: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l4303
u4510:
	line	1278
	
l4299:	
;Main.c: 1277: {
;Main.c: 1278: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	1279
	
l4301:	
;Main.c: 1279: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4303
	line	1280
	
l482:	
	goto	l4303
	line	1281
	
l480:	
	line	1274
	
l4303:	
	movlb 0	; select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u4521
	goto	u4520
u4521:
	goto	l4307
u4520:
	
l4305:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l4295
u4530:
	goto	l4307
	
l484:	
	goto	l4307
	
l485:	
	line	1272
	
l4307:	
	movlw	low(01h)
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	addwf	(_i),f
	
l4309:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l4303
u4540:
	goto	l4311
	
l479:	
	goto	l4311
	line	1285
	
l475:	
	line	1286
	
l4311:	
;Main.c: 1280: }
;Main.c: 1281: }
;Main.c: 1283: }
;Main.c: 1285: }
;Main.c: 1286: if((Gear_Status_OLD == 0b00000011) || (Gear_Status_OLD == 0b00100011) || (Motor_Remove == 1))
		movlw	3
	xorwf	((_Gear_Status_OLD)),w
	btfsc	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l4317
u4550:
	
l4313:	
		movlw	35
	xorwf	((_Gear_Status_OLD)),w
	btfsc	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l4317
u4560:
	
l4315:	
		decf	((_Motor_Remove)),w
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l4339
u4570:
	goto	l4317
	
l488:	
	line	1288
	
l4317:	
;Main.c: 1287: {
;Main.c: 1288: for(i = 0 ; i < 2 ; i++)
	clrf	(_i)
	
l4319:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l4331
u4580:
	goto	l4339
	
l4321:	
	goto	l4339
	line	1289
	
l489:	
	line	1290
;Main.c: 1289: {
;Main.c: 1290: while((RA3 == 1) && (Front_Error == 0))
	goto	l4331
	
l492:	
	line	1291
	
l4323:	
;Main.c: 1291: { Motor1_F();
	fcall	_Motor1_F
	line	1292
	
l4325:	
;Main.c: 1292: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l4331
u4590:
	line	1294
	
l4327:	
;Main.c: 1293: {
;Main.c: 1294: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	1295
	
l4329:	
;Main.c: 1295: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4331
	line	1296
	
l493:	
	goto	l4331
	line	1297
	
l491:	
	line	1290
	
l4331:	
	movlb 0	; select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u4601
	goto	u4600
u4601:
	goto	l4335
u4600:
	
l4333:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l4323
u4610:
	goto	l4335
	
l495:	
	goto	l4335
	
l496:	
	line	1288
	
l4335:	
	movlw	low(01h)
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	addwf	(_i),f
	
l4337:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l4331
u4620:
	goto	l4339
	
l490:	
	goto	l4339
	line	1300
	
l486:	
	line	1301
	
l4339:	
;Main.c: 1296: }
;Main.c: 1297: }
;Main.c: 1299: }
;Main.c: 1300: }
;Main.c: 1301: Front_Error = 0 ;
	clrf	(_Front_Error)
	line	1302
	
l4341:	
;Main.c: 1302: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1309
	
l4343:	
;Main.c: 1309: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1310
	
l4345:	
;Main.c: 1310: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1311
	
l4347:	
;Main.c: 1311: _5S_CNT = 8;
	movlw	low(08h)
	movlb 0	; select bank0
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1313
;Main.c: 1313: while((RC1 == 1) && (Back_Error == 0) )
	goto	l4357
	
l498:	
	line	1315
	
l4349:	
;Main.c: 1314: {
;Main.c: 1315: Motor2_R();
	fcall	_Motor2_R
	line	1316
	
l4351:	
;Main.c: 1316: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l4357
u4630:
	line	1318
	
l4353:	
;Main.c: 1317: {
;Main.c: 1318: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	1319
	
l4355:	
;Main.c: 1319: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4357
	line	1320
	
l499:	
	goto	l4357
	line	1321
	
l497:	
	line	1313
	
l4357:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u4641
	goto	u4640
u4641:
	goto	l4361
u4640:
	
l4359:	
	movf	((_Back_Error)),w
	btfsc	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l4349
u4650:
	goto	l4361
	
l501:	
	goto	l4361
	
l502:	
	line	1322
	
l4361:	
;Main.c: 1320: }
;Main.c: 1321: }
;Main.c: 1322: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1323
	
l4363:	
;Main.c: 1323: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1326
;Main.c: 1326: break;
	goto	l531
	line	1328
;Main.c: 1328: case 0b00000011 :
	
l503:	
	line	1332
;Main.c: 1332: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	1333
;Main.c: 1333: while((RA1 == 1) && (Front_Error == 0) )
	goto	l4373
	
l505:	
	line	1335
	
l4365:	
;Main.c: 1334: {
;Main.c: 1335: Motor1_R();
	fcall	_Motor1_R
	line	1336
	
l4367:	
;Main.c: 1336: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l4373
u4660:
	line	1338
	
l4369:	
;Main.c: 1337: {
;Main.c: 1338: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	1339
	
l4371:	
;Main.c: 1339: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4373
	line	1340
	
l506:	
	goto	l4373
	line	1341
	
l504:	
	line	1333
	
l4373:	
	movlb 0	; select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u4671
	goto	u4670
u4671:
	goto	l4377
u4670:
	
l4375:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l4365
u4680:
	goto	l4377
	
l508:	
	goto	l4377
	
l509:	
	line	1342
	
l4377:	
;Main.c: 1340: }
;Main.c: 1341: }
;Main.c: 1342: Front_Error = 0 ;
	clrf	(_Front_Error)
	line	1343
	
l4379:	
;Main.c: 1343: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1349
	
l4381:	
;Main.c: 1349: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1350
	
l4383:	
;Main.c: 1350: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1351
	
l4385:	
;Main.c: 1351: _5S_CNT = 8;
	movlw	low(08h)
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1352
;Main.c: 1352: while((RC1 == 1) && (Back_Error == 0) )
	goto	l4395
	
l511:	
	line	1353
	
l4387:	
;Main.c: 1353: { Motor2_R();
	fcall	_Motor2_R
	line	1354
	
l4389:	
;Main.c: 1354: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l4395
u4690:
	line	1356
	
l4391:	
;Main.c: 1355: {
;Main.c: 1356: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	1357
	
l4393:	
;Main.c: 1357: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4395
	line	1358
	
l512:	
	goto	l4395
	line	1359
	
l510:	
	line	1352
	
l4395:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u4701
	goto	u4700
u4701:
	goto	l4399
u4700:
	
l4397:	
	movf	((_Back_Error)),w
	btfsc	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l4387
u4710:
	goto	l4399
	
l514:	
	goto	l4399
	
l515:	
	line	1360
	
l4399:	
;Main.c: 1358: }
;Main.c: 1359: }
;Main.c: 1360: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1361
	
l4401:	
;Main.c: 1361: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1363
;Main.c: 1363: break;
	goto	l531
	line	1364
;Main.c: 1364: case 0b00100011:
	
l516:	
	line	1367
;Main.c: 1367: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	1368
;Main.c: 1368: while((Front_Error == 0) && (RA1 == 1))
	goto	l4411
	
l518:	
	line	1370
	
l4403:	
;Main.c: 1369: {
;Main.c: 1370: Motor1_R();
	fcall	_Motor1_R
	line	1371
	
l4405:	
;Main.c: 1371: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l4411
u4720:
	line	1373
	
l4407:	
;Main.c: 1372: {
;Main.c: 1373: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	1374
	
l4409:	
;Main.c: 1374: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4411
	line	1375
	
l519:	
	goto	l4411
	line	1376
	
l517:	
	line	1368
	
l4411:	
	movlb 0	; select bank0
	movf	((_Front_Error)),w
	btfss	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l4415
u4730:
	
l4413:	
	btfsc	(97/8),(97)&7	;volatile
	goto	u4741
	goto	u4740
u4741:
	goto	l4403
u4740:
	goto	l4415
	
l521:	
	goto	l4415
	
l522:	
	line	1377
	
l4415:	
;Main.c: 1375: }
;Main.c: 1376: }
;Main.c: 1377: Front_Error = 0 ;
	clrf	(_Front_Error)
	line	1378
	
l4417:	
;Main.c: 1378: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1383
	
l4419:	
;Main.c: 1383: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1384
	
l4421:	
;Main.c: 1384: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1385
	
l4423:	
;Main.c: 1385: _5S_CNT = 8;
	movlw	low(08h)
	movlb 0	; select bank0
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1386
	
l4425:	
;Main.c: 1386: for(i = 0 ; i < 2 ; i++)
	clrf	(_i)
	
l4427:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4751
	goto	u4750
u4751:
	goto	l4439
u4750:
	goto	l4447
	
l4429:	
	goto	l4447
	line	1387
	
l523:	
	line	1388
;Main.c: 1387: {
;Main.c: 1388: while( (Back_Error == 0) && (RC2 == 1))
	goto	l4439
	
l526:	
	line	1389
	
l4431:	
;Main.c: 1389: { Motor2_F();
	fcall	_Motor2_F
	line	1390
	
l4433:	
;Main.c: 1390: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l4439
u4760:
	line	1392
	
l4435:	
;Main.c: 1391: {
;Main.c: 1392: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	1393
	
l4437:	
;Main.c: 1393: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4439
	line	1394
	
l527:	
	goto	l4439
	line	1395
	
l525:	
	line	1388
	
l4439:	
	movlb 0	; select bank0
	movf	((_Back_Error)),w
	btfss	status,2
	goto	u4771
	goto	u4770
u4771:
	goto	l4443
u4770:
	
l4441:	
	btfsc	(114/8),(114)&7	;volatile
	goto	u4781
	goto	u4780
u4781:
	goto	l4431
u4780:
	goto	l4443
	
l529:	
	goto	l4443
	
l530:	
	line	1386
	
l4443:	
	movlw	low(01h)
	movwf	(??_Error_Mode_Func+0)+0
	movf	(??_Error_Mode_Func+0)+0,w
	addwf	(_i),f
	
l4445:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l4439
u4790:
	goto	l4447
	
l524:	
	line	1397
	
l4447:	
;Main.c: 1394: }
;Main.c: 1395: }
;Main.c: 1396: }
;Main.c: 1397: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1398
	
l4449:	
;Main.c: 1398: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1400
;Main.c: 1400: break;
	goto	l531
	line	1401
	
l4451:	
;Main.c: 1401: }
	goto	l531
	line	1229
	
l459:	
	
l4453:	
	movlb 0	; select bank0
	movf	(Error_Mode_Func@Goto),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 3 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           75     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l503
	xorlw	17^3	; case 17
	skipnz
	goto	l474
	xorlw	18^17	; case 18
	skipnz
	goto	l460
	xorlw	35^18	; case 35
	skipnz
	goto	l516
	goto	l531
	opt asmopt_on

	line	1401
	
l473:	
	line	1404
	
l531:	
	return
	opt stack 0
GLOBAL	__end_of_Error_Mode_Func
	__end_of_Error_Mode_Func:
	signat	_Error_Mode_Func,8312
	global	_Check_Status

;; *************** function _Check_Status *****************
;; Defined at:
;;		line 835 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	835
global __ptext7
__ptext7:	;psect for function _Check_Status
psect	text7
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	835
	global	__size_of_Check_Status
	__size_of_Check_Status	equ	__end_of_Check_Status-_Check_Status
	
_Check_Status:	
;incstack = 0
	opt	stack 14
; Regs used in _Check_Status: [wreg-fsr0h+status,2+status,0]
	line	838
	
l4669:	
;Main.c: 838: switch(Gear_Status_NEW)
	goto	l4689
	line	840
;Main.c: 839: {
;Main.c: 840: case 0b00010010:
	
l343:	
	line	841
	
l4671:	
;Main.c: 841: if((Motor_Temp == 0b10100100) && (Motor_Remove == 0))
		movlw	164
	xorwf	((_Motor_Temp)),w
	btfss	status,2
	goto	u5161
	goto	u5160
u5161:
	goto	l353
u5160:
	
l4673:	
	movlb 0	; select bank0
	movf	((_Motor_Remove)),w
	btfss	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l353
u5170:
	line	843
	
l4675:	
;Main.c: 842: {
;Main.c: 843: Error_Mode = 0;
	clrf	(_Error_Mode)
	line	844
;Main.c: 844: Pull_Error = 0;
	clrf	(_Pull_Error)
	goto	l353
	line	845
	
l344:	
	line	846
;Main.c: 845: }
;Main.c: 846: break;
	goto	l353
	line	847
;Main.c: 847: case 0b00000011:
	
l346:	
	line	848
	
l4677:	
;Main.c: 848: if(Motor_Temp == 0b10000100 )
		movlw	132
	xorwf	((_Motor_Temp)),w
	btfss	status,2
	goto	u5181
	goto	u5180
u5181:
	goto	l353
u5180:
	line	850
	
l4679:	
;Main.c: 849: {
;Main.c: 850: Error_Mode = 0;
	movlb 0	; select bank0
	clrf	(_Error_Mode)
	line	851
;Main.c: 851: Pull_Error = 0;
	clrf	(_Pull_Error)
	goto	l353
	line	852
	
l347:	
	line	853
;Main.c: 852: }
;Main.c: 853: break;
	goto	l353
	line	854
;Main.c: 854: case 0b00010001:
	
l348:	
	line	855
	
l4681:	
;Main.c: 855: if(Motor_Temp == 0b00100100 )
		movlw	36
	xorwf	((_Motor_Temp)),w
	btfss	status,2
	goto	u5191
	goto	u5190
u5191:
	goto	l353
u5190:
	line	857
	
l4683:	
;Main.c: 856: {
;Main.c: 857: Error_Mode = 0;
	movlb 0	; select bank0
	clrf	(_Error_Mode)
	line	858
;Main.c: 858: Pull_Error = 0;
	clrf	(_Pull_Error)
	goto	l353
	line	859
	
l349:	
	line	860
;Main.c: 859: }
;Main.c: 860: break;
	goto	l353
	line	861
;Main.c: 861: case 0b00100011:
	
l350:	
	line	862
	
l4685:	
;Main.c: 862: if(Motor_Temp == 0b10000010 )
		movlw	130
	xorwf	((_Motor_Temp)),w
	btfss	status,2
	goto	u5201
	goto	u5200
u5201:
	goto	l353
u5200:
	line	864
	
l4687:	
;Main.c: 863: {
;Main.c: 864: Error_Mode = 0;
	movlb 0	; select bank0
	clrf	(_Error_Mode)
	line	865
;Main.c: 865: Pull_Error = 0;
	clrf	(_Pull_Error)
	goto	l353
	line	866
	
l351:	
	line	867
;Main.c: 866: }
;Main.c: 867: break;
	goto	l353
	line	868
;Main.c: 868: default :
	
l352:	
	line	869
;Main.c: 869: Error_Mode = 1;
	movlb 0	; select bank0
	clrf	(_Error_Mode)
	incf	(_Error_Mode),f
	line	870
;Main.c: 870: Pull_Error = 1;
	clrf	(_Pull_Error)
	incf	(_Pull_Error),f
	line	875
;Main.c: 875: }
	goto	l353
	line	838
	
l342:	
	
l4689:	
	movf	(_Gear_Status_NEW),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 3 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           75     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l4677
	xorlw	17^3	; case 17
	skipnz
	goto	l4681
	xorlw	18^17	; case 18
	skipnz
	goto	l4671
	xorlw	35^18	; case 35
	skipnz
	goto	l4685
	goto	l352
	opt asmopt_on

	line	875
	
l345:	
	line	879
	
l353:	
	return
	opt stack 0
GLOBAL	__end_of_Check_Status
	__end_of_Check_Status:
	signat	_Check_Status,88
	global	_Check_Motor_Status

;; *************** function _Check_Motor_Status *****************
;; Defined at:
;;		line 1662 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	1662
global __ptext8
__ptext8:	;psect for function _Check_Motor_Status
psect	text8
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1662
	global	__size_of_Check_Motor_Status
	__size_of_Check_Motor_Status	equ	__end_of_Check_Motor_Status-_Check_Motor_Status
	
_Check_Motor_Status:	
;incstack = 0
	opt	stack 14
; Regs used in _Check_Motor_Status: [wreg-fsr0h+status,2+status,0]
	line	1668
	
l4119:	
;Main.c: 1668: Motor_Temp = 0;
	clrf	(_Motor_Temp)
	line	1670
	
l4121:	
;Main.c: 1670: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	1671
	
l4123:	
;Main.c: 1671: LATA7 = 1;
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1672
;Main.c: 1672: for(i = 0 ; i < 200 ; i++);
	movlb 0	; select bank0
	clrf	(_i)
	
l4125:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l4129
u4260:
	goto	l4133
	
l4127:	
	goto	l4133
	
l634:	
	
l4129:	
	movlw	low(01h)
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	addwf	(_i),f
	
l4131:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4271
	goto	u4270
u4271:
	goto	l4129
u4270:
	goto	l4133
	
l635:	
	line	1673
	
l4133:	
;Main.c: 1673: for(i = 0 ; i < 200 ; i++);
	clrf	(_i)
	
l4135:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l4139
u4280:
	goto	l4143
	
l4137:	
	goto	l4143
	
l636:	
	
l4139:	
	movlw	low(01h)
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	addwf	(_i),f
	
l4141:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l4139
u4290:
	goto	l4143
	
l637:	
	line	1674
	
l4143:	
;Main.c: 1674: Motor_Front_Status = PORTA & 0x0B;
	movf	(12),w	;volatile
	andlw	0Bh
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	movwf	(_Motor_Front_Status)
	line	1675
;Main.c: 1675: Motor_Back_Status = PORTC & 0x07;
	movf	(14),w	;volatile
	andlw	07h
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	movwf	(_Motor_Back_Status)
	line	1676
	
l4145:	
;Main.c: 1676: Motor_Temp =((Motor_Front_Status << 4)|( Motor_Back_Status));
	movf	(_Motor_Front_Status),w
	movwf	(??_Check_Motor_Status+0)+0
	movlw	(04h)-1
u4305:
	lslf	(??_Check_Motor_Status+0)+0,f
	addlw	-1
	skipz
	goto	u4305
	lslf	(??_Check_Motor_Status+0)+0,w
	iorwf	(_Motor_Back_Status),w
	movwf	(??_Check_Motor_Status+1)+0
	movf	(??_Check_Motor_Status+1)+0,w
	movwf	(_Motor_Temp)
	line	1683
	
l4147:	
;Main.c: 1683: LATA2 = 0;
	movlb 2	; select bank2
	bcf	(2146/8)^0100h,(2146)&7	;volatile
	line	1684
	
l4149:	
;Main.c: 1684: LATA7 = 0;
	bcf	(2151/8)^0100h,(2151)&7	;volatile
	line	1685
;Main.c: 1685: switch( Motor_Temp )
	goto	l4197
	line	1687
;Main.c: 1686: {
;Main.c: 1687: case 0b10000010 :
	
l639:	
	line	1688
	
l4151:	
;Main.c: 1688: Gear_Status_OLD = 0b00100011;
	movlw	low(023h)
	movlb 0	; select bank0
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	movwf	(_Gear_Status_OLD)
	line	1689
	
l4153:	
;Main.c: 1689: Error_Mode = 0;
	clrf	(_Error_Mode)
	line	1690
;Main.c: 1690: break;
	goto	l651
	line	1691
;Main.c: 1691: case 0b10000100 :
	
l641:	
	line	1692
	
l4155:	
;Main.c: 1692: Gear_Status_OLD = 0b00000011;
	movlw	low(03h)
	movlb 0	; select bank0
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	movwf	(_Gear_Status_OLD)
	line	1693
	
l4157:	
;Main.c: 1693: Error_Mode = 0;
	clrf	(_Error_Mode)
	line	1694
;Main.c: 1694: break;
	goto	l651
	line	1695
;Main.c: 1695: case 0b00100100 :
	
l642:	
	line	1696
	
l4159:	
;Main.c: 1696: Gear_Status_OLD = 0b00010001;
	movlw	low(011h)
	movlb 0	; select bank0
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	movwf	(_Gear_Status_OLD)
	line	1697
	
l4161:	
;Main.c: 1697: Error_Mode = 0;
	clrf	(_Error_Mode)
	line	1698
;Main.c: 1698: break;
	goto	l651
	line	1700
;Main.c: 1700: case 0b10100100 :
	
l643:	
	line	1701
;Main.c: 1701: LATA4 = 1;
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7	;volatile
	line	1702
	
l4163:	
;Main.c: 1702: for(i = 0 ; i < 200 ; i++);
	movlb 0	; select bank0
	clrf	(_i)
	
l4165:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l4169
u4310:
	goto	l4173
	
l4167:	
	goto	l4173
	
l644:	
	
l4169:	
	movlw	low(01h)
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	addwf	(_i),f
	
l4171:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l4169
u4320:
	goto	l4173
	
l645:	
	line	1703
	
l4173:	
;Main.c: 1703: for(i = 0 ; i < 200 ; i++);
	clrf	(_i)
	
l4175:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l4179
u4330:
	goto	l4183
	
l4177:	
	goto	l4183
	
l646:	
	
l4179:	
	movlw	low(01h)
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	addwf	(_i),f
	
l4181:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l4179
u4340:
	goto	l4183
	
l647:	
	line	1704
	
l4183:	
;Main.c: 1704: Motor_Front_Status = PORTA & 0x0B;
	movf	(12),w	;volatile
	andlw	0Bh
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	movwf	(_Motor_Front_Status)
	line	1705
	
l4185:	
;Main.c: 1705: if( Motor_Front_Status == 0x03)
		movlw	3
	xorwf	((_Motor_Front_Status)),w
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l4189
u4350:
	line	1706
	
l4187:	
;Main.c: 1706: { Error_Mode = 1;
	clrf	(_Error_Mode)
	incf	(_Error_Mode),f
	line	1707
;Main.c: 1707: Motor_Remove = 1;
	clrf	(_Motor_Remove)
	incf	(_Motor_Remove),f
	line	1708
;Main.c: 1708: }
	goto	l4195
	line	1709
	
l648:	
	line	1711
	
l4189:	
;Main.c: 1709: else
;Main.c: 1710: {
;Main.c: 1711: Motor_Remove = 0;
	clrf	(_Motor_Remove)
	line	1712
	
l4191:	
;Main.c: 1712: Gear_Status_OLD = 0b00010010;
	movlw	low(012h)
	movwf	(??_Check_Motor_Status+0)+0
	movf	(??_Check_Motor_Status+0)+0,w
	movwf	(_Gear_Status_OLD)
	line	1713
	
l4193:	
;Main.c: 1713: Error_Mode = 0;
	clrf	(_Error_Mode)
	goto	l4195
	line	1714
	
l649:	
	line	1715
	
l4195:	
;Main.c: 1714: }
;Main.c: 1715: LATA4 = 0;
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7	;volatile
	line	1716
;Main.c: 1716: break;
	goto	l651
	line	1718
;Main.c: 1718: default:
	
l650:	
	line	1719
;Main.c: 1719: Error_Mode = 1;
	movlb 0	; select bank0
	clrf	(_Error_Mode)
	incf	(_Error_Mode),f
	line	1723
;Main.c: 1723: }
	goto	l651
	line	1685
	
l638:	
	
l4197:	
	movf	(_Motor_Temp),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 36 to 164
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	36^0	; case 36
	skipnz
	goto	l4159
	xorlw	130^36	; case 130
	skipnz
	goto	l4151
	xorlw	132^130	; case 132
	skipnz
	goto	l4155
	xorlw	164^132	; case 164
	skipnz
	goto	l643
	goto	l650
	opt asmopt_on

	line	1723
	
l640:	
	line	1728
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of_Check_Motor_Status
	__end_of_Check_Motor_Status:
	signat	_Check_Motor_Status,88
	global	_Check_Hand_Status

;; *************** function _Check_Hand_Status *****************
;; Defined at:
;;		line 798 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Loop            1    4[BANK0 ] unsigned char 
;;  k               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_128msec
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	798
global __ptext9
__ptext9:	;psect for function _Check_Hand_Status
psect	text9
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	798
	global	__size_of_Check_Hand_Status
	__size_of_Check_Hand_Status	equ	__end_of_Check_Hand_Status-_Check_Hand_Status
	
_Check_Hand_Status:	
;incstack = 0
	opt	stack 13
; Regs used in _Check_Hand_Status: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	800
	
l4199:	
;Main.c: 800: unsigned char Loop = 1, k = 3;
	movlb 0	; select bank0
	clrf	(Check_Hand_Status@Loop)
	incf	(Check_Hand_Status@Loop),f
	
l4201:	
	movlw	low(03h)
	movwf	(??_Check_Hand_Status+0)+0
	movf	(??_Check_Hand_Status+0)+0,w
	movwf	(Check_Hand_Status@k)
	goto	l4203
	line	801
;Main.c: 801: do
	
l327:	
	line	802
	
l4203:	
;Main.c: 802: { Delay_128msec(1);
	movlw	01h
	movwf	(Delay_128msec@Time)
	movlw	0
	movwf	((Delay_128msec@Time))+1
	fcall	_Delay_128msec
	line	803
	
l4205:	
;Main.c: 803: Gear_Status_NEW = PORTD & 0b00110011;
	movlb 0	; select bank0
	movf	(15),w	;volatile
	andlw	033h
	movwf	(??_Check_Hand_Status+0)+0
	movf	(??_Check_Hand_Status+0)+0,w
	movwf	(_Gear_Status_NEW)
	line	804
	
l4207:	
;Main.c: 804: if(Gear_Status_NEW == 0b00110010)
		movlw	50
	xorwf	((_Gear_Status_NEW)),w
	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l4211
u4360:
	line	805
	
l4209:	
;Main.c: 805: Gear_Status_NEW = 0b00010010;
	movlw	low(012h)
	movwf	(??_Check_Hand_Status+0)+0
	movf	(??_Check_Hand_Status+0)+0,w
	movwf	(_Gear_Status_NEW)
	goto	l4211
	
l328:	
	line	806
	
l4211:	
;Main.c: 806: if(Gear_Status_NEW == 0b00110001)
		movlw	49
	xorwf	((_Gear_Status_NEW)),w
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l4221
u4370:
	line	807
	
l4213:	
;Main.c: 807: Gear_Status_NEW = 0b00010001;
	movlw	low(011h)
	movwf	(??_Check_Hand_Status+0)+0
	movf	(??_Check_Hand_Status+0)+0,w
	movwf	(_Gear_Status_NEW)
	goto	l4221
	
l329:	
	line	809
;Main.c: 809: switch(Gear_Status_NEW)
	goto	l4221
	line	811
;Main.c: 810: {
;Main.c: 811: case 0b00010010:
	
l331:	
	goto	l4215
	line	812
	
l332:	
	goto	l4215
	line	813
	
l333:	
	goto	l4215
	line	814
	
l334:	
	line	815
	
l4215:	
;Main.c: 812: case 0b00000011:
;Main.c: 813: case 0b00010001:
;Main.c: 814: case 0b00100011:
;Main.c: 815: Handback_Error = 0;
	clrf	(_Handback_Error)
	line	816
;Main.c: 816: Loop = 0;
	clrf	(Check_Hand_Status@Loop)
	line	817
;Main.c: 817: break;
	goto	l4223
	line	818
;Main.c: 818: default:
	
l336:	
	line	819
;Main.c: 819: Handback_Error = 1;
	clrf	(_Handback_Error)
	incf	(_Handback_Error),f
	line	820
	
l4217:	
;Main.c: 820: k--;
	movlw	01h
	subwf	(Check_Hand_Status@k),f
	line	821
;Main.c: 821: if( k== 0)
	movf	((Check_Hand_Status@k)),w
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l4223
u4380:
	line	823
	
l4219:	
;Main.c: 822: {
;Main.c: 823: Loop = 0;
	clrf	(Check_Hand_Status@Loop)
	goto	l4223
	line	824
	
l337:	
	line	826
;Main.c: 824: }
;Main.c: 826: }
	goto	l4223
	line	809
	
l330:	
	
l4221:	
	movf	(_Gear_Status_NEW),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 3 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           75     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l4215
	xorlw	17^3	; case 17
	skipnz
	goto	l4215
	xorlw	18^17	; case 18
	skipnz
	goto	l4215
	xorlw	35^18	; case 35
	skipnz
	goto	l4215
	goto	l336
	opt asmopt_on

	line	826
	
l335:	
	line	828
	
l4223:	
;Main.c: 827: }
;Main.c: 828: while(Loop == 1);
		decf	((Check_Hand_Status@Loop)),w
	btfsc	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l4203
u4390:
	goto	l339
	
l338:	
	line	830
	
l339:	
	return
	opt stack 0
GLOBAL	__end_of_Check_Hand_Status
	__end_of_Check_Hand_Status:
	signat	_Check_Hand_Status,88
	global	_Delay_128msec

;; *************** function _Delay_128msec *****************
;; Defined at:
;;		line 1411 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;  Time            2    0[BANK0 ] unsigned int 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Check_Hand_Status
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	1411
global __ptext10
__ptext10:	;psect for function _Delay_128msec
psect	text10
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1411
	global	__size_of_Delay_128msec
	__size_of_Delay_128msec	equ	__end_of_Delay_128msec-_Delay_128msec
	
_Delay_128msec:	
;incstack = 0
	opt	stack 13
; Regs used in _Delay_128msec: [wreg+status,2]
	line	1413
	
l4065:	
;Main.c: 1413: DelayTime_Count=0;
	movlb 0	; select bank0
	clrf	(_DelayTime_Count)
	clrf	(_DelayTime_Count+1)
	line	1414
;Main.c: 1414: while(DelayTime_Count < Time );
	goto	l4067
	
l535:	
	goto	l4067
	
l534:	
	
l4067:	
	movf	(Delay_128msec@Time+1),w
	subwf	(_DelayTime_Count+1),w
	skipz
	goto	u4255
	movf	(Delay_128msec@Time),w
	subwf	(_DelayTime_Count),w
u4255:
	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l4067
u4250:
	goto	l537
	
l536:	
	line	1418
	
l537:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_128msec
	__end_of_Delay_128msec:
	signat	_Delay_128msec,4216
	global	_Change_Func

;; *************** function _Change_Func *****************
;; Defined at:
;;		line 902 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;  Goto            1    wreg     unsigned char 
;;  Status          1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Goto            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       1       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Func
;;		_Error_Exit_Func
;;		_Motor1_F
;;		_Motor1_R
;;		_Motor2_F
;;		_Motor2_R
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	902
global __ptext11
__ptext11:	;psect for function _Change_Func
psect	text11
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	902
	global	__size_of_Change_Func
	__size_of_Change_Func	equ	__end_of_Change_Func-_Change_Func
	
_Change_Func:	
;incstack = 0
	opt	stack 12
; Regs used in _Change_Func: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Change_Func@Goto stored from wreg
	movlb 0	; select bank0
	movwf	(Change_Func@Goto)
	line	905
	
l4455:	
;Main.c: 905: Moving_Status = Status;
	movf	(Change_Func@Status),w
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	movwf	(_Moving_Status)
	line	906
;Main.c: 906: _5S_CNT = 8;
	movlw	low(08h)
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	movwf	(__5S_CNT)
	line	907
	
l4457:	
;Main.c: 907: Work_status = 1;
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	908
	
l4459:	
;Main.c: 908: ADC_Func();
	fcall	_ADC_Func
	line	909
	
l4461:	
;Main.c: 909: Front_Error = 0 ;
	movlb 0	; select bank0
	clrf	(_Front_Error)
	line	910
	
l4463:	
;Main.c: 910: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	923
;Main.c: 923: switch(Goto)
	goto	l4667
	line	925
;Main.c: 924: {
;Main.c: 925: case 0b00010010 :
	
l360:	
	line	928
;Main.c: 928: LATA4 = 1;
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7	;volatile
	line	929
;Main.c: 929: while((RA1 == 1) && (Front_Error == 0) )
	goto	l4473
	
l362:	
	line	931
	
l4465:	
;Main.c: 930: {
;Main.c: 931: Motor1_F();
	fcall	_Motor1_F
	line	932
	
l4467:	
;Main.c: 932: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l4473
u4800:
	line	934
	
l4469:	
;Main.c: 933: {
;Main.c: 934: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	935
	
l4471:	
;Main.c: 935: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4473
	line	936
	
l363:	
	goto	l4473
	line	937
	
l361:	
	line	929
	
l4473:	
	movlb 0	; select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u4811
	goto	u4810
u4811:
	goto	l4477
u4810:
	
l4475:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l4465
u4820:
	goto	l4477
	
l365:	
	goto	l4477
	
l366:	
	line	938
	
l4477:	
;Main.c: 936: }
;Main.c: 937: }
;Main.c: 938: Front_Error = 0 ;
	clrf	(_Front_Error)
	line	939
	
l4479:	
;Main.c: 939: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	944
	
l4481:	
;Main.c: 944: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	945
	
l4483:	
;Main.c: 945: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	946
	
l4485:	
;Main.c: 946: _5S_CNT = 8;
	movlw	low(08h)
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	movwf	(__5S_CNT)
	line	950
;Main.c: 950: while((RC1 == 1) && (Back_Error == 0) )
	goto	l4495
	
l368:	
	line	952
	
l4487:	
;Main.c: 951: {
;Main.c: 952: Motor2_R();
	fcall	_Motor2_R
	line	953
	
l4489:	
;Main.c: 953: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l4495
u4830:
	line	955
	
l4491:	
;Main.c: 954: {
;Main.c: 955: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	956
	
l4493:	
;Main.c: 956: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4495
	line	957
	
l369:	
	goto	l4495
	line	958
	
l367:	
	line	950
	
l4495:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u4841
	goto	u4840
u4841:
	goto	l4499
u4840:
	
l4497:	
	movf	((_Back_Error)),w
	btfsc	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l4487
u4850:
	goto	l4499
	
l371:	
	goto	l4499
	
l372:	
	line	960
	
l4499:	
;Main.c: 957: }
;Main.c: 958: }
;Main.c: 960: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	961
	
l4501:	
;Main.c: 961: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	962
;Main.c: 962: break;
	goto	l429
	line	963
;Main.c: 963: case 0b00010001:
	
l374:	
	line	966
;Main.c: 966: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	967
	
l4503:	
;Main.c: 967: if( Gear_Status_OLD == 0b00010010 )
		movlw	18
	xorwf	((_Gear_Status_OLD)),w
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l4527
u4860:
	line	969
	
l4505:	
;Main.c: 968: {
;Main.c: 969: for(i = 0 ; i < 2 ; i++)
	movlb 0	; select bank0
	clrf	(_i)
	
l4507:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4871
	goto	u4870
u4871:
	goto	l4519
u4870:
	goto	l4527
	
l4509:	
	goto	l4527
	line	970
	
l376:	
	line	971
;Main.c: 970: {
;Main.c: 971: while((RA3 == 1) && (Front_Error == 0))
	goto	l4519
	
l379:	
	line	972
	
l4511:	
;Main.c: 972: { Motor1_R();
	fcall	_Motor1_R
	line	973
	
l4513:	
;Main.c: 973: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l4519
u4880:
	line	975
	
l4515:	
;Main.c: 974: {
;Main.c: 975: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	976
	
l4517:	
;Main.c: 976: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4519
	line	977
	
l380:	
	goto	l4519
	line	978
	
l378:	
	line	971
	
l4519:	
	movlb 0	; select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u4891
	goto	u4890
u4891:
	goto	l4523
u4890:
	
l4521:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l4511
u4900:
	goto	l4523
	
l382:	
	goto	l4523
	
l383:	
	line	969
	
l4523:	
	movlw	low(01h)
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	addwf	(_i),f
	
l4525:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l4519
u4910:
	goto	l4527
	
l377:	
	goto	l4527
	line	982
	
l375:	
	line	983
	
l4527:	
;Main.c: 977: }
;Main.c: 978: }
;Main.c: 980: }
;Main.c: 982: }
;Main.c: 983: if((Gear_Status_OLD == 0b00000011) || (Gear_Status_OLD == 0b00100011) )
		movlw	3
	xorwf	((_Gear_Status_OLD)),w
	btfsc	status,2
	goto	u4921
	goto	u4920
u4921:
	goto	l4531
u4920:
	
l4529:	
		movlw	35
	xorwf	((_Gear_Status_OLD)),w
	btfss	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l4553
u4930:
	goto	l4531
	
l386:	
	line	985
	
l4531:	
;Main.c: 984: {
;Main.c: 985: for(i = 0 ; i < 2 ; i++)
	movlb 0	; select bank0
	clrf	(_i)
	
l4533:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4941
	goto	u4940
u4941:
	goto	l4545
u4940:
	goto	l4553
	
l4535:	
	goto	l4553
	line	986
	
l387:	
	line	987
;Main.c: 986: {
;Main.c: 987: while((RA3 == 1) && (Front_Error == 0))
	goto	l4545
	
l390:	
	line	988
	
l4537:	
;Main.c: 988: { Motor1_F();
	fcall	_Motor1_F
	line	989
	
l4539:	
;Main.c: 989: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4951
	goto	u4950
u4951:
	goto	l4545
u4950:
	line	991
	
l4541:	
;Main.c: 990: {
;Main.c: 991: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	992
	
l4543:	
;Main.c: 992: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4545
	line	993
	
l391:	
	goto	l4545
	line	994
	
l389:	
	line	987
	
l4545:	
	movlb 0	; select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u4961
	goto	u4960
u4961:
	goto	l4549
u4960:
	
l4547:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u4971
	goto	u4970
u4971:
	goto	l4537
u4970:
	goto	l4549
	
l393:	
	goto	l4549
	
l394:	
	line	985
	
l4549:	
	movlw	low(01h)
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	addwf	(_i),f
	
l4551:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u4981
	goto	u4980
u4981:
	goto	l4545
u4980:
	goto	l4553
	
l388:	
	goto	l4553
	line	997
	
l384:	
	line	998
	
l4553:	
;Main.c: 993: }
;Main.c: 994: }
;Main.c: 996: }
;Main.c: 997: }
;Main.c: 998: Front_Error = 0 ;
	movlb 0	; select bank0
	clrf	(_Front_Error)
	line	999
	
l4555:	
;Main.c: 999: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1006
	
l4557:	
;Main.c: 1006: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1007
	
l4559:	
;Main.c: 1007: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1008
	
l4561:	
;Main.c: 1008: _5S_CNT = 8;
	movlw	low(08h)
	movlb 0	; select bank0
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1012
;Main.c: 1012: while((RC1 == 1) && (Back_Error == 0) )
	goto	l4571
	
l396:	
	line	1014
	
l4563:	
;Main.c: 1013: {
;Main.c: 1014: Motor2_R();
	fcall	_Motor2_R
	line	1015
	
l4565:	
;Main.c: 1015: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l4571
u4990:
	line	1017
	
l4567:	
;Main.c: 1016: {
;Main.c: 1017: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	1018
	
l4569:	
;Main.c: 1018: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4571
	line	1019
	
l397:	
	goto	l4571
	line	1020
	
l395:	
	line	1012
	
l4571:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u5001
	goto	u5000
u5001:
	goto	l4575
u5000:
	
l4573:	
	movf	((_Back_Error)),w
	btfsc	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l4563
u5010:
	goto	l4575
	
l399:	
	goto	l4575
	
l400:	
	line	1022
	
l4575:	
;Main.c: 1019: }
;Main.c: 1020: }
;Main.c: 1022: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1023
	
l4577:	
;Main.c: 1023: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1026
;Main.c: 1026: break;
	goto	l429
	line	1028
;Main.c: 1028: case 0b00000011 :
	
l401:	
	line	1032
;Main.c: 1032: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	1033
;Main.c: 1033: while((RA1 == 1) && (Front_Error == 0) )
	goto	l4587
	
l403:	
	line	1035
	
l4579:	
;Main.c: 1034: {
;Main.c: 1035: Motor1_R();
	fcall	_Motor1_R
	line	1036
	
l4581:	
;Main.c: 1036: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l4587
u5020:
	line	1038
	
l4583:	
;Main.c: 1037: {
;Main.c: 1038: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	1039
	
l4585:	
;Main.c: 1039: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4587
	line	1040
	
l404:	
	goto	l4587
	line	1041
	
l402:	
	line	1033
	
l4587:	
	movlb 0	; select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u5031
	goto	u5030
u5031:
	goto	l4591
u5030:
	
l4589:	
	movf	((_Front_Error)),w
	btfsc	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l4579
u5040:
	goto	l4591
	
l406:	
	goto	l4591
	
l407:	
	line	1042
	
l4591:	
;Main.c: 1040: }
;Main.c: 1041: }
;Main.c: 1042: Front_Error = 0 ;
	clrf	(_Front_Error)
	line	1043
	
l4593:	
;Main.c: 1043: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1049
	
l4595:	
;Main.c: 1049: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1050
	
l4597:	
;Main.c: 1050: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1051
	
l4599:	
;Main.c: 1051: _5S_CNT = 8;
	movlw	low(08h)
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1054
;Main.c: 1054: while((RC1 == 1) && (Back_Error == 0) )
	goto	l4609
	
l409:	
	line	1055
	
l4601:	
;Main.c: 1055: { Motor2_R();
	fcall	_Motor2_R
	line	1056
	
l4603:	
;Main.c: 1056: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u5051
	goto	u5050
u5051:
	goto	l4609
u5050:
	line	1058
	
l4605:	
;Main.c: 1057: {
;Main.c: 1058: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	1059
	
l4607:	
;Main.c: 1059: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4609
	line	1060
	
l410:	
	goto	l4609
	line	1061
	
l408:	
	line	1054
	
l4609:	
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u5061
	goto	u5060
u5061:
	goto	l4613
u5060:
	
l4611:	
	movf	((_Back_Error)),w
	btfsc	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l4601
u5070:
	goto	l4613
	
l412:	
	goto	l4613
	
l413:	
	line	1063
	
l4613:	
;Main.c: 1060: }
;Main.c: 1061: }
;Main.c: 1063: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1064
	
l4615:	
;Main.c: 1064: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1066
;Main.c: 1066: break;
	goto	l429
	line	1067
;Main.c: 1067: case 0b00100011:
	
l414:	
	line	1070
;Main.c: 1070: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	1071
;Main.c: 1071: while((Front_Error == 0) && (RA1 == 1))
	goto	l4625
	
l416:	
	line	1073
	
l4617:	
;Main.c: 1072: {
;Main.c: 1073: Motor1_R();
	fcall	_Motor1_R
	line	1074
	
l4619:	
;Main.c: 1074: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l4625
u5080:
	line	1076
	
l4621:	
;Main.c: 1075: {
;Main.c: 1076: Front_Error = 1 ;
	clrf	(_Front_Error)
	incf	(_Front_Error),f
	line	1077
	
l4623:	
;Main.c: 1077: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4625
	line	1078
	
l417:	
	goto	l4625
	line	1079
	
l415:	
	line	1071
	
l4625:	
	movlb 0	; select bank0
	movf	((_Front_Error)),w
	btfss	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l4629
u5090:
	
l4627:	
	btfsc	(97/8),(97)&7	;volatile
	goto	u5101
	goto	u5100
u5101:
	goto	l4617
u5100:
	goto	l4629
	
l419:	
	goto	l4629
	
l420:	
	line	1080
	
l4629:	
;Main.c: 1078: }
;Main.c: 1079: }
;Main.c: 1080: Front_Error = 0 ;
	clrf	(_Front_Error)
	line	1081
	
l4631:	
;Main.c: 1081: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1086
	
l4633:	
;Main.c: 1086: Work_status = 1;
	movlb 0	; select bank0
	clrf	(_Work_status)
	incf	(_Work_status),f
	line	1087
	
l4635:	
;Main.c: 1087: LATA7 = 1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	line	1088
	
l4637:	
;Main.c: 1088: _5S_CNT = 8;
	movlw	low(08h)
	movlb 0	; select bank0
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	movwf	(__5S_CNT)
	line	1089
	
l4639:	
;Main.c: 1089: for(i = 0 ; i < 2 ; i++)
	clrf	(_i)
	
l4641:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u5111
	goto	u5110
u5111:
	goto	l4653
u5110:
	goto	l4661
	
l4643:	
	goto	l4661
	line	1090
	
l421:	
	line	1091
;Main.c: 1090: {
;Main.c: 1091: while( (Back_Error == 0) && (RC2 == 1))
	goto	l4653
	
l424:	
	line	1092
	
l4645:	
;Main.c: 1092: { Motor2_F();
	fcall	_Motor2_F
	line	1093
	
l4647:	
;Main.c: 1093: if (Error_Flag == 1 )
	movlb 0	; select bank0
		decf	((_Error_Flag)),w
	btfss	status,2
	goto	u5121
	goto	u5120
u5121:
	goto	l4653
u5120:
	line	1095
	
l4649:	
;Main.c: 1094: {
;Main.c: 1095: Back_Error = 1 ;
	clrf	(_Back_Error)
	incf	(_Back_Error),f
	line	1096
	
l4651:	
;Main.c: 1096: Error_Exit_Func();
	fcall	_Error_Exit_Func
	goto	l4653
	line	1097
	
l425:	
	goto	l4653
	line	1098
	
l423:	
	line	1091
	
l4653:	
	movlb 0	; select bank0
	movf	((_Back_Error)),w
	btfss	status,2
	goto	u5131
	goto	u5130
u5131:
	goto	l4657
u5130:
	
l4655:	
	btfsc	(114/8),(114)&7	;volatile
	goto	u5141
	goto	u5140
u5141:
	goto	l4645
u5140:
	goto	l4657
	
l427:	
	goto	l4657
	
l428:	
	line	1089
	
l4657:	
	movlw	low(01h)
	movwf	(??_Change_Func+0)+0
	movf	(??_Change_Func+0)+0,w
	addwf	(_i),f
	
l4659:	
	movlw	low(02h)
	subwf	(_i),w
	skipc
	goto	u5151
	goto	u5150
u5151:
	goto	l4653
u5150:
	goto	l4661
	
l422:	
	line	1100
	
l4661:	
;Main.c: 1097: }
;Main.c: 1098: }
;Main.c: 1099: }
;Main.c: 1100: Back_Error = 0 ;
	clrf	(_Back_Error)
	line	1101
	
l4663:	
;Main.c: 1101: Error_Exit_Func();
	fcall	_Error_Exit_Func
	line	1103
;Main.c: 1103: break;
	goto	l429
	line	1104
	
l4665:	
;Main.c: 1104: }
	goto	l429
	line	923
	
l359:	
	
l4667:	
	movlb 0	; select bank0
	movf	(Change_Func@Goto),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 3 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           75     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l401
	xorlw	17^3	; case 17
	skipnz
	goto	l374
	xorlw	18^17	; case 18
	skipnz
	goto	l360
	xorlw	35^18	; case 35
	skipnz
	goto	l414
	goto	l429
	opt asmopt_on

	line	1104
	
l373:	
	line	1107
	
l429:	
	return
	opt stack 0
GLOBAL	__end_of_Change_Func
	__end_of_Change_Func:
	signat	_Change_Func,8312
	global	_Motor2_R

;; *************** function _Motor2_R *****************
;; Defined at:
;;		line 1153 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Change_Func
;;		_Error_Mode_Func
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	1153
global __ptext12
__ptext12:	;psect for function _Motor2_R
psect	text12
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1153
	global	__size_of_Motor2_R
	__size_of_Motor2_R	equ	__end_of_Motor2_R-_Motor2_R
	
_Motor2_R:	
;incstack = 0
	opt	stack 13
; Regs used in _Motor2_R: [wreg+status,2]
	line	1155
	
l4087:	
;Main.c: 1155: LATB = LATB & 0b11100001;
	movlb 2	; select bank2
	movf	(269)^0100h,w	;volatile
	andlw	0E1h
	movwf	(269)^0100h	;volatile
	line	1156
	
l4089:	
;Main.c: 1156: LATBbits.LATB1 = 1;
	bsf	(269)^0100h,1	;volatile
	line	1157
	
l444:	
	return
	opt stack 0
GLOBAL	__end_of_Motor2_R
	__end_of_Motor2_R:
	signat	_Motor2_R,88
	global	_Motor2_F

;; *************** function _Motor2_F *****************
;; Defined at:
;;		line 1143 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Change_Func
;;		_Error_Mode_Func
;;		_Back_Position
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	1143
global __ptext13
__ptext13:	;psect for function _Motor2_F
psect	text13
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1143
	global	__size_of_Motor2_F
	__size_of_Motor2_F	equ	__end_of_Motor2_F-_Motor2_F
	
_Motor2_F:	
;incstack = 0
	opt	stack 13
; Regs used in _Motor2_F: [wreg+status,2]
	line	1145
	
l4095:	
;Main.c: 1145: LATB = LATB & 0b11100001;
	movlb 2	; select bank2
	movf	(269)^0100h,w	;volatile
	andlw	0E1h
	movwf	(269)^0100h	;volatile
	line	1146
	
l4097:	
;Main.c: 1146: LATBbits.LATB2 = 1;
	bsf	(269)^0100h,2	;volatile
	line	1147
	
l441:	
	return
	opt stack 0
GLOBAL	__end_of_Motor2_F
	__end_of_Motor2_F:
	signat	_Motor2_F,88
	global	_Motor1_R

;; *************** function _Motor1_R *****************
;; Defined at:
;;		line 1124 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Change_Func
;;		_Error_Mode_Func
;;		_Front_Position
;;		__2WD_Position
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	1124
global __ptext14
__ptext14:	;psect for function _Motor1_R
psect	text14
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1124
	global	__size_of_Motor1_R
	__size_of_Motor1_R	equ	__end_of_Motor1_R-_Motor1_R
	
_Motor1_R:	
;incstack = 0
	opt	stack 13
; Regs used in _Motor1_R: [wreg+status,2]
	line	1126
	
l4091:	
;Main.c: 1126: LATB = LATB & 0b11100001;
	movlb 2	; select bank2
	movf	(269)^0100h,w	;volatile
	andlw	0E1h
	movwf	(269)^0100h	;volatile
	line	1127
	
l4093:	
;Main.c: 1127: LATBbits.LATB3 = 1;
	bsf	(269)^0100h,3	;volatile
	line	1128
	
l435:	
	return
	opt stack 0
GLOBAL	__end_of_Motor1_R
	__end_of_Motor1_R:
	signat	_Motor1_R,88
	global	_Motor1_F

;; *************** function _Motor1_F *****************
;; Defined at:
;;		line 1114 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Change_Func
;;		_Error_Mode_Func
;;		_Front_Position
;;		__4WDL_Position
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	1114
global __ptext15
__ptext15:	;psect for function _Motor1_F
psect	text15
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1114
	global	__size_of_Motor1_F
	__size_of_Motor1_F	equ	__end_of_Motor1_F-_Motor1_F
	
_Motor1_F:	
;incstack = 0
	opt	stack 13
; Regs used in _Motor1_F: [wreg+status,2]
	line	1116
	
l4083:	
;Main.c: 1116: LATB = LATB & 0b11100001;
	movlb 2	; select bank2
	movf	(269)^0100h,w	;volatile
	andlw	0E1h
	movwf	(269)^0100h	;volatile
	line	1117
	
l4085:	
;Main.c: 1117: LATBbits.LATB4 = 1;
	bsf	(269)^0100h,4	;volatile
	line	1118
	
l432:	
	return
	opt stack 0
GLOBAL	__end_of_Motor1_F
	__end_of_Motor1_F:
	signat	_Motor1_F,88
	global	_Error_Exit_Func

;; *************** function _Error_Exit_Func *****************
;; Defined at:
;;		line 884 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Motor1_S
;;		_Motor2_S
;; This function is called by:
;;		_Change_Func
;;		_Error_Mode_Func
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	884
global __ptext16
__ptext16:	;psect for function _Error_Exit_Func
psect	text16
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	884
	global	__size_of_Error_Exit_Func
	__size_of_Error_Exit_Func	equ	__end_of_Error_Exit_Func-_Error_Exit_Func
	
_Error_Exit_Func:	
;incstack = 0
	opt	stack 12
; Regs used in _Error_Exit_Func: [wreg+status,2+status,0+pclath+cstack]
	line	886
	
l4069:	
;Main.c: 886: Motor1_S();
	fcall	_Motor1_S
	line	887
;Main.c: 887: Motor2_S();
	fcall	_Motor2_S
	line	888
	
l4071:	
;Main.c: 888: LATA4 = 0;
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7	;volatile
	line	889
	
l4073:	
;Main.c: 889: LATA2 = 0;
	bcf	(2146/8)^0100h,(2146)&7	;volatile
	line	890
	
l4075:	
;Main.c: 890: LATA6 = 0;
	bcf	(2150/8)^0100h,(2150)&7	;volatile
	line	891
	
l4077:	
;Main.c: 891: LATA7 = 0;
	bcf	(2151/8)^0100h,(2151)&7	;volatile
	line	892
	
l4079:	
;Main.c: 892: Work_status = 0;
	movlb 0	; select bank0
	clrf	(_Work_status)
	line	895
	
l4081:	
;Main.c: 895: Error_Flag =0;
	clrf	(_Error_Flag)
	line	897
	
l356:	
	return
	opt stack 0
GLOBAL	__end_of_Error_Exit_Func
	__end_of_Error_Exit_Func:
	signat	_Error_Exit_Func,88
	global	_Motor2_S

;; *************** function _Motor2_S *****************
;; Defined at:
;;		line 1163 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Error_Exit_Func
;;		_Back_Position
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	1163
global __ptext17
__ptext17:	;psect for function _Motor2_S
psect	text17
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1163
	global	__size_of_Motor2_S
	__size_of_Motor2_S	equ	__end_of_Motor2_S-_Motor2_S
	
_Motor2_S:	
;incstack = 0
	opt	stack 12
; Regs used in _Motor2_S: [wreg+status,2]
	line	1165
	
l3941:	
;Main.c: 1165: LATB = LATB & 0b11100001;
	movlb 2	; select bank2
	movf	(269)^0100h,w	;volatile
	andlw	0E1h
	movwf	(269)^0100h	;volatile
	line	1166
	
l447:	
	return
	opt stack 0
GLOBAL	__end_of_Motor2_S
	__end_of_Motor2_S:
	signat	_Motor2_S,88
	global	_Motor1_S

;; *************** function _Motor1_S *****************
;; Defined at:
;;		line 1134 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Error_Exit_Func
;;		_Front_Position
;;		__2WD_Position
;;		__4WDL_Position
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	1134
global __ptext18
__ptext18:	;psect for function _Motor1_S
psect	text18
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	1134
	global	__size_of_Motor1_S
	__size_of_Motor1_S	equ	__end_of_Motor1_S-_Motor1_S
	
_Motor1_S:	
;incstack = 0
	opt	stack 12
; Regs used in _Motor1_S: [wreg+status,2]
	line	1136
	
l3939:	
;Main.c: 1136: LATB = LATB & 0b11100001;
	movlb 2	; select bank2
	movf	(269)^0100h,w	;volatile
	andlw	0E1h
	movwf	(269)^0100h	;volatile
	line	1137
	
l438:	
	return
	opt stack 0
GLOBAL	__end_of_Motor1_S
	__end_of_Motor1_S:
	signat	_Motor1_S,88
	global	_ADC_Func

;; *************** function _ADC_Func *****************
;; Defined at:
;;		line 82 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_FVR_Test
;;		_Init_ADC
;; This function is called by:
;;		_main
;;		_Change_Func
;;		_Error_Mode_Func
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\ADC.c"
	line	82
global __ptext19
__ptext19:	;psect for function _ADC_Func
psect	text19
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\ADC.c"
	line	82
	global	__size_of_ADC_Func
	__size_of_ADC_Func	equ	__end_of_ADC_Func-_ADC_Func
	
_ADC_Func:	
;incstack = 0
	opt	stack 12
; Regs used in _ADC_Func: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	84
	
l4051:	
;ADC.c: 84: FVR_Data = FVR_Test();
	fcall	_FVR_Test
	movlb 0	; select bank0
	movf	(1+(?_FVR_Test)),w
	movwf	(_FVR_Data+1)
	movf	(0+(?_FVR_Test)),w
	movwf	(_FVR_Data)
	line	86
;ADC.c: 86: Normal_Data = Init_ADC();
	fcall	_Init_ADC
	movlb 0	; select bank0
	movf	(1+(?_Init_ADC)),w
	movwf	(_Normal_Data+1)
	movf	(0+(?_Init_ADC)),w
	movwf	(_Normal_Data)
	line	87
	
l4053:	
;ADC.c: 87: if ((FVR_Data > 0x35) || (Normal_Data < 0x6C))
	movlw	0
	subwf	(_FVR_Data+1),w
	movlw	036h
	skipnz
	subwf	(_FVR_Data),w
	skipnc
	goto	u4211
	goto	u4210
u4211:
	goto	l828
u4210:
	
l4055:	
	movlw	0
	subwf	(_Normal_Data+1),w
	movlw	06Ch
	skipnz
	subwf	(_Normal_Data),w
	skipnc
	goto	u4221
	goto	u4220
u4221:
	goto	l4057
u4220:
	
l828:	
	line	93
;ADC.c: 88: {
;ADC.c: 93: Voltage_Error = 1;
	clrf	(_Voltage_Error)
	incf	(_Voltage_Error),f
	line	94
;ADC.c: 94: }
	goto	l833
	line	95
	
l826:	
	
l4057:	
;ADC.c: 95: else if(FVR_Data <= 0x35)
	movlw	0
	subwf	(_FVR_Data+1),w
	movlw	036h
	skipnz
	subwf	(_FVR_Data),w
	skipnc
	goto	u4231
	goto	u4230
u4231:
	goto	l833
u4230:
	line	97
	
l4059:	
;ADC.c: 96: {
;ADC.c: 97: if (Normal_Data > 0xC8)
	movlw	0
	subwf	(_Normal_Data+1),w
	movlw	0C9h
	skipnz
	subwf	(_Normal_Data),w
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l4063
u4240:
	line	103
	
l4061:	
;ADC.c: 98: {
;ADC.c: 103: Voltage_Error = 1;
	clrf	(_Voltage_Error)
	incf	(_Voltage_Error),f
	line	104
;ADC.c: 104: }
	goto	l833
	line	105
	
l831:	
	line	106
	
l4063:	
;ADC.c: 105: else
;ADC.c: 106: Voltage_Error = 0;
	clrf	(_Voltage_Error)
	goto	l833
	
l832:	
	goto	l833
	line	108
	
l830:	
	goto	l833
	line	138
	
l829:	
	
l833:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Func
	__end_of_ADC_Func:
	signat	_ADC_Func,88
	global	_Init_ADC

;; *************** function _Init_ADC *****************
;; Defined at:
;;		line 27 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       8       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_Func
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	27
global __ptext20
__ptext20:	;psect for function _Init_ADC
psect	text20
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\ADC.c"
	line	27
	global	__size_of_Init_ADC
	__size_of_Init_ADC	equ	__end_of_Init_ADC-_Init_ADC
	
_Init_ADC:	
;incstack = 0
	opt	stack 12
; Regs used in _Init_ADC: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	31
	
l3943:	
;ADC.c: 31: ADCON0 = 0b10010001;
	movlw	low(091h)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	32
;ADC.c: 32: ADCON1 = 0b01110000;
	movlw	low(070h)
	movwf	(158)^080h	;volatile
	line	33
;ADC.c: 33: ADCON2 = 0xFF;
	movlw	low(0FFh)
	movwf	(159)^080h	;volatile
	line	34
	
l3945:	
;ADC.c: 34: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	35
	
l3947:	
;ADC.c: 35: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	36
	
l3949:	
;ADC.c: 36: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	37
	
l3951:	
;ADC.c: 37: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	38
	
l3953:	
;ADC.c: 38: for(j = 0 ; j < 4 ; j++)
	clrf	(_j)
	
l3955:	
	movlw	low(04h)
	subwf	(_j),w
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l3959
u4050:
	goto	l3991
	
l3957:	
	goto	l3991
	line	39
	
l800:	
	line	40
	
l3959:	
;ADC.c: 39: {
;ADC.c: 40: for(i = 0 ; i < 200 ; i++);
	movlb 0	; select bank0
	clrf	(_i)
	
l3961:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l3965
u4060:
	goto	l3969
	
l3963:	
	goto	l3969
	
l802:	
	
l3965:	
	movlw	low(01h)
	movwf	(??_Init_ADC+0)+0
	movf	(??_Init_ADC+0)+0,w
	addwf	(_i),f
	
l3967:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l3965
u4070:
	goto	l3969
	
l803:	
	line	41
	
l3969:	
;ADC.c: 41: for(i = 0 ; i < 200 ; i++);
	clrf	(_i)
	
l3971:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4081
	goto	u4080
u4081:
	goto	l3975
u4080:
	goto	l805
	
l3973:	
	goto	l805
	
l804:	
	
l3975:	
	movlw	low(01h)
	movwf	(??_Init_ADC+0)+0
	movf	(??_Init_ADC+0)+0,w
	addwf	(_i),f
	
l3977:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l3975
u4090:
	
l805:	
	line	42
;ADC.c: 42: GO_nDONE = 1;
	movlb 1	; select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	43
;ADC.c: 43: while(GO_nDONE == 1);
	goto	l806
	
l807:	
	
l806:	
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u4101
	goto	u4100
u4101:
	goto	l806
u4100:
	goto	l3979
	
l808:	
	line	45
	
l3979:	
;ADC.c: 45: ADC_Val[ADC_Cnt++] = ADRESH;
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Init_ADC+0)+0
	movf	(_ADC_Cnt),w
	addlw	low(_ADC_Val|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Init_ADC+0)+0,w
	movwf	indf1
	
l3981:	
	movlw	low(01h)
	movwf	(??_Init_ADC+0)+0
	movf	(??_Init_ADC+0)+0,w
	addwf	(_ADC_Cnt),f
	line	46
	
l3983:	
;ADC.c: 46: if(ADC_Cnt == 4) ADC_Cnt = 0;
		movlw	4
	xorwf	((_ADC_Cnt)),w
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l3987
u4110:
	
l3985:	
	clrf	(_ADC_Cnt)
	goto	l3987
	
l809:	
	line	38
	
l3987:	
	movlw	low(01h)
	movwf	(??_Init_ADC+0)+0
	movf	(??_Init_ADC+0)+0,w
	addwf	(_j),f
	
l3989:	
	movlw	low(04h)
	subwf	(_j),w
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l3959
u4120:
	goto	l3991
	
l801:	
	line	49
	
l3991:	
;ADC.c: 47: }
;ADC.c: 49: ADC_Data = ADC_Val[0] + ADC_Val[1] + ADC_Val[2] + ADC_Val[3];
	movlb 0	; select bank0
	movf	0+(_ADC_Val)+03h,w
	movwf	(??_Init_ADC+0)+0
	clrf	(??_Init_ADC+0)+0+1
	movf	0+(_ADC_Val)+02h,w
	movwf	(??_Init_ADC+2)+0
	clrf	(??_Init_ADC+2)+0+1
	movf	(_ADC_Val),w
	addwf	0+(_ADC_Val)+01h,w
	movwf	(??_Init_ADC+4)+0
	clrf	(??_Init_ADC+4)+0+1
	rlf	1+(??_Init_ADC+4)+0,f
	
	movf	0+(??_Init_ADC+2)+0,w
	addwf	0+(??_Init_ADC+4)+0,w
	movwf	(??_Init_ADC+6)+0
	movf	1+(??_Init_ADC+2)+0,w
	addwfc	1+(??_Init_ADC+4)+0,w
	movwf	1+(??_Init_ADC+6)+0
	movf	0+(??_Init_ADC+0)+0,w
	addwf	0+(??_Init_ADC+6)+0,w
	movwf	(_ADC_Data)
	movf	1+(??_Init_ADC+0)+0,w
	addwfc	1+(??_Init_ADC+6)+0,w
	movwf	1+(_ADC_Data)
	line	50
;ADC.c: 50: ADC_Data = ADC_Data >> 2;
	movf	(_ADC_Data+1),w
	movwf	(??_Init_ADC+0)+0+1
	movf	(_ADC_Data),w
	movwf	(??_Init_ADC+0)+0
	lsrf	(??_Init_ADC+0)+1,f
	rrf	(??_Init_ADC+0)+0,f
	lsrf	(??_Init_ADC+0)+1,f
	rrf	(??_Init_ADC+0)+0,f
	movf	0+(??_Init_ADC+0)+0,w
	movwf	(_ADC_Data)
	movf	1+(??_Init_ADC+0)+0,w
	movwf	(_ADC_Data+1)
	line	51
	
l3993:	
;ADC.c: 51: return ADC_Data;
	movf	(_ADC_Data+1),w
	movwf	(?_Init_ADC+1)
	movf	(_ADC_Data),w
	movwf	(?_Init_ADC)
	goto	l810
	
l3995:	
	line	52
	
l810:	
	return
	opt stack 0
GLOBAL	__end_of_Init_ADC
	__end_of_Init_ADC:
	signat	_Init_ADC,90
	global	_FVR_Test

;; *************** function _FVR_Test *****************
;; Defined at:
;;		line 54 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       8       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_Func
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	54
global __ptext21
__ptext21:	;psect for function _FVR_Test
psect	text21
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\ADC.c"
	line	54
	global	__size_of_FVR_Test
	__size_of_FVR_Test	equ	__end_of_FVR_Test-_FVR_Test
	
_FVR_Test:	
;incstack = 0
	opt	stack 12
; Regs used in _FVR_Test: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	56
	
l3997:	
;ADC.c: 56: ADCON0 = 0b11111101;
	movlw	low(0FDh)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	57
;ADC.c: 57: ADCON1 = 0b01110000;
	movlw	low(070h)
	movwf	(158)^080h	;volatile
	line	58
;ADC.c: 58: ADCON2 = 0xFF;
	movlw	low(0FFh)
	movwf	(159)^080h	;volatile
	line	59
;ADC.c: 59: FVRCON = 0b11000001 ;
	movlw	low(0C1h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	60
	
l3999:	
;ADC.c: 60: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	61
	
l4001:	
;ADC.c: 61: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	62
	
l4003:	
;ADC.c: 62: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	63
	
l4005:	
;ADC.c: 63: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	66
	
l4007:	
;ADC.c: 66: for(j = 0 ; j < 4 ; j++)
	clrf	(_j)
	
l4009:	
	movlw	low(04h)
	subwf	(_j),w
	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l4013
u4130:
	goto	l4045
	
l4011:	
	goto	l4045
	line	67
	
l813:	
	line	68
	
l4013:	
;ADC.c: 67: {
;ADC.c: 68: for(i = 0 ; i < 200 ; i++);
	movlb 0	; select bank0
	clrf	(_i)
	
l4015:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4141
	goto	u4140
u4141:
	goto	l4019
u4140:
	goto	l4023
	
l4017:	
	goto	l4023
	
l815:	
	
l4019:	
	movlw	low(01h)
	movwf	(??_FVR_Test+0)+0
	movf	(??_FVR_Test+0)+0,w
	addwf	(_i),f
	
l4021:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l4019
u4150:
	goto	l4023
	
l816:	
	line	69
	
l4023:	
;ADC.c: 69: for(i = 0 ; i < 200 ; i++);
	clrf	(_i)
	
l4025:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l4029
u4160:
	goto	l818
	
l4027:	
	goto	l818
	
l817:	
	
l4029:	
	movlw	low(01h)
	movwf	(??_FVR_Test+0)+0
	movf	(??_FVR_Test+0)+0,w
	addwf	(_i),f
	
l4031:	
	movlw	low(0C8h)
	subwf	(_i),w
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l4029
u4170:
	
l818:	
	line	70
;ADC.c: 70: GO_nDONE = 1;
	movlb 1	; select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	71
;ADC.c: 71: while(GO_nDONE == 1);
	goto	l819
	
l820:	
	
l819:	
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u4181
	goto	u4180
u4181:
	goto	l819
u4180:
	goto	l4033
	
l821:	
	line	73
	
l4033:	
;ADC.c: 73: ADC_Val[ADC_Cnt++] = ADRESH;
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_FVR_Test+0)+0
	movf	(_ADC_Cnt),w
	addlw	low(_ADC_Val|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_FVR_Test+0)+0,w
	movwf	indf1
	
l4035:	
	movlw	low(01h)
	movwf	(??_FVR_Test+0)+0
	movf	(??_FVR_Test+0)+0,w
	addwf	(_ADC_Cnt),f
	line	74
	
l4037:	
;ADC.c: 74: if(ADC_Cnt == 4) ADC_Cnt = 0;
		movlw	4
	xorwf	((_ADC_Cnt)),w
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l4041
u4190:
	
l4039:	
	clrf	(_ADC_Cnt)
	goto	l4041
	
l822:	
	line	66
	
l4041:	
	movlw	low(01h)
	movwf	(??_FVR_Test+0)+0
	movf	(??_FVR_Test+0)+0,w
	addwf	(_j),f
	
l4043:	
	movlw	low(04h)
	subwf	(_j),w
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l4013
u4200:
	goto	l4045
	
l814:	
	line	76
	
l4045:	
;ADC.c: 75: }
;ADC.c: 76: ADC_Data = ADC_Val[0] + ADC_Val[1] + ADC_Val[2] + ADC_Val[3];
	movlb 0	; select bank0
	movf	0+(_ADC_Val)+03h,w
	movwf	(??_FVR_Test+0)+0
	clrf	(??_FVR_Test+0)+0+1
	movf	0+(_ADC_Val)+02h,w
	movwf	(??_FVR_Test+2)+0
	clrf	(??_FVR_Test+2)+0+1
	movf	(_ADC_Val),w
	addwf	0+(_ADC_Val)+01h,w
	movwf	(??_FVR_Test+4)+0
	clrf	(??_FVR_Test+4)+0+1
	rlf	1+(??_FVR_Test+4)+0,f
	
	movf	0+(??_FVR_Test+2)+0,w
	addwf	0+(??_FVR_Test+4)+0,w
	movwf	(??_FVR_Test+6)+0
	movf	1+(??_FVR_Test+2)+0,w
	addwfc	1+(??_FVR_Test+4)+0,w
	movwf	1+(??_FVR_Test+6)+0
	movf	0+(??_FVR_Test+0)+0,w
	addwf	0+(??_FVR_Test+6)+0,w
	movwf	(_ADC_Data)
	movf	1+(??_FVR_Test+0)+0,w
	addwfc	1+(??_FVR_Test+6)+0,w
	movwf	1+(_ADC_Data)
	line	77
;ADC.c: 77: ADC_Data = ADC_Data >> 2;
	movf	(_ADC_Data+1),w
	movwf	(??_FVR_Test+0)+0+1
	movf	(_ADC_Data),w
	movwf	(??_FVR_Test+0)+0
	lsrf	(??_FVR_Test+0)+1,f
	rrf	(??_FVR_Test+0)+0,f
	lsrf	(??_FVR_Test+0)+1,f
	rrf	(??_FVR_Test+0)+0,f
	movf	0+(??_FVR_Test+0)+0,w
	movwf	(_ADC_Data)
	movf	1+(??_FVR_Test+0)+0,w
	movwf	(_ADC_Data+1)
	line	78
	
l4047:	
;ADC.c: 78: return ADC_Data;
	movf	(_ADC_Data+1),w
	movwf	(?_FVR_Test+1)
	movf	(_ADC_Data),w
	movwf	(?_FVR_Test)
	goto	l823
	
l4049:	
	line	80
	
l823:	
	return
	opt stack 0
GLOBAL	__end_of_FVR_Test
	__end_of_FVR_Test:
	signat	_FVR_Test,90
	global	_ISRs

;; *************** function _ISRs *****************
;; Defined at:
;;		line 421 in file "C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"C:\Users\grantsu\Desktop\ARC\differential-TGB\Main.c"
	line	421
	global	__size_of_ISRs
	__size_of_ISRs	equ	__end_of_ISRs-_ISRs
	
_ISRs:	
;incstack = 0
	opt	stack 12
; Regs used in _ISRs: [wreg+status,2+status,0]
psect	intentry
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISRs+5)
	line	423
	
i1l3431:	
;Main.c: 423: if(INTF & INTE)
	movlw	1
	btfss	(89/8),(89)&7	;volatile
	andlw	0
	btfss	(92/8),(92)&7	;volatile
	andlw	0
	btfss	wreg,0
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l3435
u327_20:
	line	425
	
i1l3433:	
;Main.c: 424: {
;Main.c: 425: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	goto	i1l3435
	line	426
	
i1l251:	
	line	428
	
i1l3435:	
;Main.c: 426: }
;Main.c: 428: if (TMR1GIF & TMR1GIE)
	movlw	1
	btfss	(143/8),(143)&7	;volatile
	andlw	0
	movlb 1	; select bank1
	btfss	(1167/8)^080h,(1167)&7	;volatile
	andlw	0
	btfss	wreg,0
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l3459
u328_20:
	line	430
	
i1l3437:	
;Main.c: 429: {
;Main.c: 430: TMR1GIF = 0;
	movlb 0	; select bank0
	bcf	(143/8),(143)&7	;volatile
	line	431
	
i1l3439:	
;Main.c: 431: PRM_NEW = TMR1L;
	movf	(22),w	;volatile
	movwf	(??_ISRs+0)+0
	clrf	(??_ISRs+0)+0+1
	movf	0+(??_ISRs+0)+0,w
	movwf	(_PRM_NEW)
	movf	1+(??_ISRs+0)+0,w
	movwf	(_PRM_NEW+1)
	line	432
	
i1l3441:	
;Main.c: 432: PRM_NEW = PRM_NEW + ((unsigned int)TMR1H << 8);
	movf	(23),w	;volatile
	movwf	(??_ISRs+0)+0
	clrf	(??_ISRs+0)+0+1
	movf	(??_ISRs+0)+0,w
	movwf	(??_ISRs+0)+1
	clrf	(??_ISRs+0)+0
	movf	(_PRM_NEW),w
	addwf	0+(??_ISRs+0)+0,w
	movwf	(??_ISRs+3)+0
	movf	(_PRM_NEW+1),w
	addwfc	1+(??_ISRs+0)+0,w
	movwf	1+(??_ISRs+3)+0
	movf	0+(??_ISRs+3)+0,w
	movwf	(_PRM_NEW)
	movf	1+(??_ISRs+3)+0,w
	movwf	(_PRM_NEW+1)
	line	435
	
i1l3443:	
;Main.c: 435: _1S_CNT = 8;
	movlw	low(08h)
	movwf	(??_ISRs+0)+0
	movf	(??_ISRs+0)+0,w
	movwf	(__1S_CNT)
	line	437
;Main.c: 437: RPM_VAL = PRM_NEW - RPM_OLD;
	comf	(_RPM_OLD),w
	movwf	(??_ISRs+0)+0
	comf	(_RPM_OLD+1),w
	movwf	((??_ISRs+0)+0+1)
	incf	(??_ISRs+0)+0,f
	skipnz
	incf	((??_ISRs+0)+0+1),f
	movf	(_PRM_NEW),w
	addwf	0+(??_ISRs+0)+0,w
	movwf	(_RPM_VAL)
	movf	(_PRM_NEW+1),w
	addwfc	1+(??_ISRs+0)+0,w
	movwf	1+(_RPM_VAL)
	line	438
	
i1l3445:	
;Main.c: 438: RPM_OLD = PRM_NEW;
	movf	(_PRM_NEW+1),w
	movwf	(_RPM_OLD+1)
	movf	(_PRM_NEW),w
	movwf	(_RPM_OLD)
	line	440
	
i1l3447:	
;Main.c: 440: if (RPM_VAL > 0x927C)
	movlw	092h
	subwf	(_RPM_VAL+1),w
	movlw	07Dh
	skipnz
	subwf	(_RPM_VAL),w
	skipc
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l3455
u329_20:
	line	441
	
i1l3449:	
;Main.c: 441: { if (RPM_Flag < 100)
	movlw	low(064h)
	subwf	(_RPM_Flag),w
	skipnc
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l3453
u330_20:
	line	442
	
i1l3451:	
;Main.c: 442: RPM_Flag++;
	movlw	low(01h)
	movwf	(??_ISRs+0)+0
	movf	(??_ISRs+0)+0,w
	addwf	(_RPM_Flag),f
	goto	i1l3453
	
i1l254:	
	line	443
	
i1l3453:	
;Main.c: 443: Over_Speed_Error = 0;
	clrf	(_Over_Speed_Error)
	line	445
;Main.c: 445: }
	goto	i1l3459
	line	446
	
i1l253:	
	line	448
	
i1l3455:	
;Main.c: 446: else
;Main.c: 447: {
;Main.c: 448: RPM_Flag = 0;
	clrf	(_RPM_Flag)
	line	449
	
i1l3457:	
;Main.c: 449: Over_Speed_Error = 1;
	clrf	(_Over_Speed_Error)
	incf	(_Over_Speed_Error),f
	goto	i1l3459
	line	451
	
i1l255:	
	goto	i1l3459
	line	453
	
i1l252:	
	line	461
	
i1l3459:	
;Main.c: 451: }
;Main.c: 453: }
;Main.c: 461: if(TMR2IF & TMR2IE)
	movlw	1
	movlb 0	; select bank0
	btfss	(137/8),(137)&7	;volatile
	andlw	0
	movlb 1	; select bank1
	btfss	(1161/8)^080h,(1161)&7	;volatile
	andlw	0
	btfss	wreg,0
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l265
u331_20:
	line	463
	
i1l3461:	
;Main.c: 462: {
;Main.c: 463: TMR2IF = 0;
	movlb 0	; select bank0
	bcf	(137/8),(137)&7	;volatile
	line	464
;Main.c: 464: T1GGO = 1;
	bsf	(203/8),(203)&7	;volatile
	line	480
	
i1l3463:	
;Main.c: 480: if (_1S_CNT == 0)
	movf	((__1S_CNT)),w
	btfss	status,2
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l3467
u332_20:
	line	484
	
i1l3465:	
;Main.c: 481: {
;Main.c: 484: RPM_Zero = 1 ;
	clrf	(_RPM_Zero)
	incf	(_RPM_Zero),f
	line	486
;Main.c: 486: }
	goto	i1l3471
	line	487
	
i1l257:	
	line	488
	
i1l3467:	
;Main.c: 487: else
;Main.c: 488: { _1S_CNT--;
	movlw	01h
	subwf	(__1S_CNT),f
	line	489
	
i1l3469:	
;Main.c: 489: RPM_Zero = 0 ;
	clrf	(_RPM_Zero)
	goto	i1l3471
	line	491
	
i1l258:	
	line	496
	
i1l3471:	
;Main.c: 491: }
;Main.c: 496: if (Work_status == 1)
		decf	((_Work_status)),w
	btfss	status,2
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l259
u333_20:
	line	498
	
i1l3473:	
;Main.c: 497: {
;Main.c: 498: if (_5S_CNT == 0)
	movf	((__5S_CNT)),w
	btfss	status,2
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l3477
u334_20:
	line	500
	
i1l3475:	
;Main.c: 499: {
;Main.c: 500: Error_Flag = 1;
	clrf	(_Error_Flag)
	incf	(_Error_Flag),f
	line	502
;Main.c: 502: Error_Mode = 1;
	clrf	(_Error_Mode)
	incf	(_Error_Mode),f
	line	503
;Main.c: 503: Pull_Error = 1;
	clrf	(_Pull_Error)
	incf	(_Pull_Error),f
	line	505
;Main.c: 505: }
	goto	i1l259
	line	506
	
i1l260:	
	line	507
	
i1l3477:	
;Main.c: 506: else
;Main.c: 507: { _5S_CNT--;
	movlw	01h
	subwf	(__5S_CNT),f
	goto	i1l259
	line	509
	
i1l261:	
	line	510
	
i1l259:	
	line	514
;Main.c: 509: }
;Main.c: 510: }
;Main.c: 514: if (Pull_Error == 1)
		decf	((_Pull_Error)),w
	btfss	status,2
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l3487
u335_20:
	line	516
	
i1l3479:	
;Main.c: 515: {
;Main.c: 516: if (Pull_5S_CNT == 0)
	movf	((_Pull_5S_CNT)),w
	btfss	status,2
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l3483
u336_20:
	line	518
	
i1l3481:	
;Main.c: 517: {
;Main.c: 518: Pull = 1;
	clrf	(_Pull)
	incf	(_Pull),f
	line	519
;Main.c: 519: }
	goto	i1l3487
	line	520
	
i1l263:	
	line	522
	
i1l3483:	
;Main.c: 520: else
;Main.c: 521: {
;Main.c: 522: Pull_5S_CNT--;
	movlw	01h
	subwf	(_Pull_5S_CNT),f
	line	523
	
i1l3485:	
;Main.c: 523: Pull = 0;
	clrf	(_Pull)
	goto	i1l3487
	line	526
	
i1l264:	
	goto	i1l3487
	line	528
	
i1l262:	
	line	529
	
i1l3487:	
;Main.c: 526: }
;Main.c: 528: }
;Main.c: 529: DelayTime_Count ++;
	movlw	01h
	addwf	(_DelayTime_Count),f
	movlw	0
	addwfc	(_DelayTime_Count+1),f
	line	530
	
i1l3489:	
;Main.c: 530: LED1_Count ++;
	movlw	01h
	addwf	(_LED1_Count),f
	movlw	0
	addwfc	(_LED1_Count+1),f
	line	531
	
i1l3491:	
;Main.c: 531: LED2_Count ++;
	movlw	01h
	addwf	(_LED2_Count),f
	movlw	0
	addwfc	(_LED2_Count+1),f
	line	532
	
i1l3493:	
;Main.c: 532: LED3_Count ++;
	movlw	01h
	movlb 1	; select bank1
	addwf	(_LED3_Count)^080h,f
	movlw	0
	addwfc	(_LED3_Count+1)^080h,f
	line	533
	
i1l3495:	
;Main.c: 533: LED13_Count ++;
	movlw	01h
	movlb 0	; select bank0
	addwf	(_LED13_Count),f
	movlw	0
	addwfc	(_LED13_Count+1),f
	goto	i1l265
	line	534
	
i1l256:	
	line	536
	
i1l265:	
	movf	(??_ISRs+5),w
	movlb 0	; select bank0
	movwf	btemp+1
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	opt stack 0
GLOBAL	__end_of_ISRs
	__end_of_ISRs:
	signat	_ISRs,88
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	int$flags
	int$flags	set btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
