#include "config.h"

void init_uC(void)
{
	TRISA =  0b00000011; 				// RA0, RA1 as input
    PORTA =  0b00000000;			    // Reset portA
    TRISD =  0b00000000; 				// PortD as output
}  

