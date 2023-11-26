#include <xc.h> 
#include "config.h"
#include "ADC.h"
#include "LCD.h"

#define R 1000
#define Vin 5
#define invalid_value -100

// Variables declaration
float voltage[11] = {0.1, 0.3, 0.6, 1.1, 1.7, 2.2, 2.9, 3.3, 3.8, 4.4, 4.9}; 	//voltage table
int pressure[11] = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};	//pressure table
uint32_t res[20] = {177, 241, 332, 467, 667, 973, 1188, 1459, 1802, 2238, 2796,3520, 4450, 5670, 7280, 9420, 16180, 28680, 52700, 100000}; //res table
int8_t temp[20] = {100, 90, 80, 70, 60, 50, 45, 40, 35, 30, 25, 20, 15, 10, 5, 0, -10, -20, -30, -40}; 	//temperature table
char display_value[20]; // 20=nr of lcd columns

// Functions prototypes
int interpolate(float x, float x1, float x2, int y1, int y2);
float get_pressure_value(double * ADC_value);
float get_temperature_value(double * ADC_value);
void display_pressure(void);
void display_temperature(void);

void main(void)
{
	 
    init_uC();
	init_ADC();
	init_LCD();
	
    while(1)
    {	
		lcd_clear();
		display_pressure();
		display_temperature();
		__delay_ms(400); 
    }
}

float get_pressure_value(double * ADC_value)
{
    int result = 0;
    double vout = * ADC_value;
		
    if (vout <= 0.3 && vout > 0.1)
    {
        result = interpolate(vout, voltage[0], voltage[1], pressure[0], pressure[1]);
    }  
    else if (vout <= 0.6 && vout > 0.3)
    {
        result = interpolate(vout, voltage[1], voltage[2], pressure[1], pressure[2]);
    }  
    else if (vout <= 1.1 && vout > 0.6)
    {
        result = interpolate(vout, voltage[2], voltage[3], pressure[2], pressure[3]);
    }  
    else if (vout <= 1.7 && vout > 1.1)
    {
        result = interpolate(vout, voltage[3], voltage[4], pressure[3], pressure[4]);
    }  
    else if (vout <= 2.2 && vout > 1.7)
    {
        result = interpolate(vout, voltage[4], voltage[5], pressure[4], pressure[5]);
    }  
    else if  (vout <= 2.9 && vout > 2.2)
    {
        result = interpolate(vout, voltage[5], voltage[6], pressure[5], pressure[6]);
    }  
    else if  (vout <= 3.3 && vout > 2.9)
    {
        result = interpolate(vout, voltage[6], voltage[7], pressure[6], pressure[7]);
    }  
    else if  (vout <= 3.8 && vout > 3.3)
    {
        result = interpolate(vout, voltage[7], voltage[8], pressure[7], pressure[8]);
    }  
    else if  (vout <= 4.4 && vout > 3.8)
    {
        result = interpolate(vout, voltage[8], voltage[9], pressure[8], pressure[9]);
    }  
    else if  (vout <= 4.9 && vout > 4.4)
    {
        result = interpolate(vout, voltage[9], voltage[10], pressure[9], pressure[10]);
    }   
	else{
		result = invalid_value;
	}
	return result;
}

float get_temperature_value(double * ADC_value)
{
    int result = 0;
    double vout = * ADC_value;
    uint32_t Rt=0;
	
    Rt = (R * vout) / (Vin - vout);
    if ( Rt <= 241 && Rt > 177)
    {
        result = interpolate(Rt, res[0], res[1], temp[0], temp[1]);
    }  
    else if ( Rt <= 332 && Rt > 241)
    {
        result = interpolate(Rt, res[1], res[2], temp[1], temp[2]);
    }  
    else if ( Rt <= 467 && Rt > 332)
    {
        result = interpolate(Rt, res[2], res[3], temp[2], temp[3]);
    } 
    else if (Rt <= 667 && Rt > 467)
    {
        result = interpolate(Rt, res[3], res[4], temp[3], temp[4]);
    }  
    else if (Rt <= 973 && Rt > 667)
    {
        result = interpolate(Rt, res[4], res[5], temp[4], temp[5]);
    }  
    else if (Rt <= 1188 && Rt > 973)
    {
        result = interpolate(Rt, res[5], res[6], temp[5], temp[6]);
    }  
    else if (Rt <= 1459 && Rt > 1188)
    {
        result = interpolate(Rt, res[6], res[7], temp[6], temp[7]);
    }  
    else if (Rt <= 1802 && Rt > 1459)
    {
        result = interpolate(Rt, res[7], res[8], temp[7], temp[8]);
    }  
    else if (Rt <= 2238 && Rt > 1802)
    {
        result = interpolate(Rt, res[8], res[9], temp[8], temp[9]);
    }  
    else if (Rt <= 2796 && Rt > 2238)
    {
        result = interpolate(Rt, res[9], res[10], temp[9], temp[10]);
    }  
	else if (Rt <= 3520 && Rt > 2796)
    {
        result = interpolate(Rt, res[10], res[11], temp[10], temp[11]);
    }  
	else if (Rt <= 4450 && Rt > 3520)
    {
        result = interpolate(Rt, res[11], res[12], temp[11], temp[12]);
    }  
	else if (Rt <= 5670 && Rt > 4450)
    {
        result = interpolate(Rt, res[12], res[13], temp[12], temp[13]);
    }  
	else if (Rt <= 7280 && Rt > 5670)
    {
        result = interpolate(Rt, res[13], res[14], temp[13], temp[14]);
    }  
	else if (Rt <= 9420 && Rt > 7280)
    {
        result = interpolate(Rt, res[14], res[15], temp[14], temp[15]);
    }  
	else if (Rt <= 16180 && Rt > 9420)
    {
        result = interpolate(Rt, res[15], res[16], temp[15], temp[16]);
    }  
	else if (Rt <= 28680 && Rt > 16180)
    {
        result = interpolate(Rt, res[16], res[17], temp[16], temp[17]);
    }  
	else if (Rt <= 52700 && Rt > 28680)
    {
        result = interpolate(Rt, res[17], res[18], temp[17], temp[18]);
    }  
	else if (Rt <= 100000 && Rt > 52700)
    {
        result = interpolate(Rt, res[18], res[19], temp[18], temp[19]);
    }  
	else
	{
		result = invalid_value;
	}
    return result;
}

int interpolate(float x, float x1, float x2, int y1, int y2)
{
    return (y1 + (y2 - y1) / (x2 - x1) * (x - x1));  	
}

void display_pressure(void)
{
	int calculated_pressure = 0;
		
	ADC_value[0] = read_adc(0);
	calculated_pressure = get_pressure_value(&ADC_value[0]);
	if (calculated_pressure == invalid_value)
		strcpy(display_value, "P is out of bounds");
	else
		sprintf(display_value, "P = %d bar", calculated_pressure);
	lcd_goto(0x80);	
	lcd_puts(display_value);	
}

void display_temperature(void)
{
	int calculated_temp = 0;
		
	ADC_value[1] = read_adc(1);
	calculated_temp = get_temperature_value(&ADC_value[1]);
	if (calculated_temp == invalid_value)
		strcpy(display_value, "T is out of bounds");
	else
		sprintf(display_value, "T = %d C", calculated_temp);
	lcd_goto(0x94);	
	lcd_puts(display_value);	
}

	