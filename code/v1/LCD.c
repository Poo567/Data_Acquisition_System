#include <xc.h>

#define	LCD_RS RD4
#define LCD_EN RD5
#define LCD_DATA PORTD
#define	LCD_STROBE()	((LCD_EN = 1), delay_LCD(1), (LCD_EN=0))

void lcd_write(unsigned char c);
void lcd_clear(void);
void lcd_goto(unsigned char pos);
void lcd_puts(char * s);
void lcd_putch(char c);
void delay_LCD(unsigned long t);

void init_LCD(void)
{
    delay_LCD(2000);
    lcd_write(0x2C);
    delay_LCD(100);
    lcd_clear();	
	delay_LCD(3000);
    lcd_write(0x02);
    delay_LCD(2000);
    lcd_write(0x06);
    delay_LCD(100);
    lcd_write(0x0C);
    delay_LCD(100);
    lcd_write(0x10);
    delay_LCD(100);
    lcd_write(0x2C);
    delay_LCD(100);	
	lcd_goto(0x80);	
	lcd_puts("Proiect SCDA 2023");	
	lcd_goto(0x94);	
	lcd_puts("Macari Ion");	
}

void lcd_write(unsigned char c)
{
    LCD_DATA = (LCD_DATA & 0xF0) | (c >> 4);
	LCD_STROBE();
    LCD_DATA = (LCD_DATA & 0xF0) | ( c & 0x0F );
	LCD_STROBE();
}
void lcd_clear(void)
{
	LCD_RS = 0;
	lcd_write(0x01);
}
void lcd_puts( char * s)
{
	LCD_RS = 1;	// write characters	
	while((*s)!=0)
	{
		lcd_write(*s);
		s++;
	}
}
void lcd_putch(char c)
{
	LCD_RS = 1;	// write characters	
	lcd_write( c );
}
void lcd_goto(unsigned char pos)
{
	LCD_RS = 0;
	lcd_write(pos);
}
void delay_LCD(unsigned long t)
{
    unsigned long var;
    for(var=0; var < t>>6; var++);	
} 
