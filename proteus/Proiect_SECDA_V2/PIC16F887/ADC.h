#ifndef ADC_HEADER
#define ADC_HEADER

#include "config.h"

float ADC_value[2]={0,0}; // ADC first and second channel value
float read_adc(int channel);
void init_ADC();

#endif 

