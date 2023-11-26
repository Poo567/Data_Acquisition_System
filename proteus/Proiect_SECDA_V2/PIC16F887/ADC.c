#include "ADC.h"
#include "config.h"

float read_adc(int channel)
{
	ADCON0 = ADCON0 | (channel << 2);
	GO_nDONE = 1;
	__delay_ms(2);
	while(GO_nDONE);
	float adc_result = ((ADRESH << 8) + ADRESL);
	ADCON0&= ~(0b111 << 2);
	return (5 * adc_result / 1024.0);
}

void init_ADC()
{
	ANSELH  = 0x03;						// RA0(AN0), RA1(AN1) --> analogici
    ADCON1 = 0b10000000;				// ADFM = 1 (Right justified)
    ADCON0 = 0b01000001;				// ADCS1=0, ADCS0=1, CHS3=0, CHS2=0, CHS1=0, CHS0=0, GO/DONE=0, ADON=1
}

