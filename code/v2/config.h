#ifndef CONFIG_HEADER
#define CONFIG_HEADER

#include <xc.h>
#include <stdio.h>
#include <string.h>

__PROG_CONFIG(1,0x20D4); 	// config. uC 
__PROG_CONFIG(2,0x0000); 	// config. uC 

#define _XTAL_FREQ 8000000

//============================	Pentru LCD =============================== //
#define	LCD_RS RD4			    //*PORTD, PIN4 utilizat pentru a selecta tipul de registru Register Select
#define LCD_EN RD5				//PORTD, PIN 5 utilizat pentru a da enable la LCD
#define LCD_DATA PORTD			//PORTD este utilizat pentru a stocat datele transmise spre LCD
#define	LCD_STROBE()	((LCD_EN = 1), delay_LCD(1), (LCD_EN=0))

void init_uC(void);

#endif

