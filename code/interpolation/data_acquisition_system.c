// Y = Y1 + (Y2 – Y1)/(X2 – X1) * (X - X1)

#include <stdio.h>
#include <stdlib.h>
#define R 1000
#define Vin 5

typedef struct {
   float voltage;
   int pressure;
} first_chracteristic;

typedef struct {
   double res;
   int temp;
} second_chracteristic;

first_chracteristic table1[11]= {{0.1 , 0}, {0.3, 10}, {0.6, 20}, {1.1, 30}, {1.7, 40}, 
                                {2.2, 50}, {2.9, 60}, {3.3, 70}, {3.8, 80}, {4.4, 90}, {4.9, 100}};
                            
second_chracteristic table2[20]= {{177,100}, {241,   90}, {332,   80}, {467,   70}, {667,    60}, 
                                  {973, 50}, {1188,  45}, {1459,  40}, {1802,  35}, {2238,   30},
                                  {2796,25}, {3520,  20}, {4450,  15}, {5670,  10}, {7280,    5}, 
                                  {9420, 0}, {16180,-10}, {28680,-20}, {52700,-30}, {100000,-40}};

int interpolate(float x, float x1, float x2, int y1, int y2);
float get_pressure_value(double * ADC_value);
float get_temperature_value(double * ADC_value);

void main(void)
{
    double ADC_value[2]={3.2, 4.7}; // pressure input, temp input
    printf("Pressure input = %.2lf V, Pressure = %.2f\n", ADC_value[0], get_pressure_value(&ADC_value[0]));
    printf("Temperature input = %.2lf V, Temperature = %.2f", ADC_value[1], get_temperature_value(&ADC_value[1]));
}

float get_pressure_value(double * ADC_value)
{
    int result = 0;
    double voltage = * ADC_value;
    if (voltage <= 0.3 && voltage > 0.1)
    {
        result = interpolate(voltage, table1[0].voltage, table1[1].voltage, table1[0].pressure, table1[1].pressure);
    }  
    else if (voltage <= 0.6 && voltage > 0.3)
    {
        result = interpolate(voltage, table1[1].voltage, table1[2].voltage, table1[1].pressure, table1[2].pressure);
    }  
    else if (voltage <= 1.1 && voltage > 0.6)
    {
        result = interpolate(voltage, table1[2].voltage, table1[3].voltage, table1[2].pressure, table1[3].pressure);
    }  
    else if (voltage <= 1.7 && voltage > 1.1)
    {
        result = interpolate(voltage, table1[3].voltage, table1[4].voltage, table1[3].pressure, table1[4].pressure);
    }  
    else if (voltage <= 2.2 && voltage > 1.7)
    {
        result = interpolate(voltage, table1[4].voltage, table1[5].voltage, table1[4].pressure, table1[5].pressure);
    }  
    else if  (voltage <= 2.9 && voltage > 2.2)
    {
        result = interpolate(voltage, table1[5].voltage, table1[6].voltage, table1[5].pressure, table1[6].pressure);
    }  
    else if  (voltage <= 3.3 && voltage > 2.9)
    {
        result = interpolate(voltage, table1[6].voltage, table1[7].voltage, table1[6].pressure, table1[7].pressure);
    }  
    else if  (voltage <= 3.8 && voltage > 3.3)
    {
        result = interpolate(voltage, table1[7].voltage, table1[8].voltage, table1[7].pressure, table1[8].pressure);
    }  
    else if  (voltage <= 4.4 && voltage > 3.8)
    {
        result = interpolate(voltage, table1[8].voltage, table1[9].voltage, table1[8].pressure, table1[9].pressure);
    }  
    else if  (voltage <= 4.9 && voltage > 4.4)
    {
        result = interpolate(voltage, table1[9].voltage, table1[10].voltage, table1[9].pressure, table1[10].pressure);
    }   
    else
        printf("Value is outside the bound");
    return result;
}

float get_temperature_value(double * ADC_value)
{
    int result = 0;
    double voltage = * ADC_value;
    double Rt;
    Rt = (R * voltage) / (Vin - voltage);
    printf("Resistence value = %.lf Ohmi\n", Rt);
    if ( Rt <= 241 && Rt > 177)
    {
        result = interpolate(Rt, table2[0].res, table2[1].res, table2[0].temp, table2[1].temp);
    }  
    else if ( Rt <= 332 && Rt > 241)
    {
        result = interpolate(Rt, table2[1].res, table2[2].res, table2[1].temp, table2[2].temp);
    }  
    else if ( Rt <= 467 && Rt > 332)
    {
        result = interpolate(Rt, table2[2].res, table2[3].res, table2[2].temp, table2[3].temp);
    } 
    else if (Rt <= 667 && Rt > 467)
    {
        result = interpolate(Rt, table2[3].res, table2[4].res, table2[3].temp, table2[4].temp);
    }  
    else if (Rt <= 973 && Rt > 667)
    {
        result = interpolate(Rt, table2[4].res, table2[5].res, table2[4].temp, table2[5].temp);
    }  
    else if (Rt <= 1188 && Rt > 973)
    {
        result = interpolate(Rt, table2[5].res, table2[6].res, table2[5].temp, table2[6].temp);
    }  
    else if (Rt <= 1459 && Rt > 1188)
    {
        result = interpolate(Rt, table2[6].res, table2[7].res, table2[6].temp, table2[7].temp);
    }  
    else if (Rt <= 1802 && Rt > 1459)
    {
        result = interpolate(Rt, table2[7].res, table2[8].res, table2[7].temp, table2[8].temp);
    }  
    else if (Rt <= 2238 && Rt > 1802)
    {
        result = interpolate(Rt, table2[8].res, table2[9].res, table2[8].temp, table2[9].temp);
    }  
    else if (Rt <= 2796 && Rt > 2238)
    {
        result = interpolate(Rt, table2[9].res, table2[10].res, table2[9].temp, table2[10].temp);
    }  
    else if (Rt <= 3520 && Rt > 2796)
    {
        result = interpolate(Rt, table2[10].res, table2[11].res, table2[10].temp, table2[11].temp);
    }  
    else if (Rt <= 4450 && Rt > 3520)
    {
        result = interpolate(Rt, table2[11].res, table2[12].res, table2[11].temp, table2[12].temp);
    }  
    else if (Rt <= 5670 && Rt > 4450)
    {
        result = interpolate(Rt, table2[12].res, table2[13].res, table2[12].temp, table2[13].temp);
    }  
    else if (Rt <= 7280 && Rt > 5670)
    {
        result = interpolate(Rt, table2[13].res, table2[14].res, table2[13].temp, table2[14].temp);
    }  
    else if (Rt <= 9420 && Rt > 7280)
    {
        result = interpolate(Rt, table2[14].res, table2[15].res, table2[14].temp, table2[15].temp);
    }  
    else if (Rt <= 16180 && Rt > 9420)
    {
        result = interpolate(Rt, table2[15].res, table2[16].res, table2[15].temp, table2[16].temp);
    }  
    else if (Rt <= 28680 && Rt > 16180)
    {
        result = interpolate(Rt, table2[16].res, table2[17].res, table2[16].temp, table2[17].temp);
    }  
    else if (Rt <= 52700 && Rt > 28680)
    {
        result = interpolate(Rt, table2[17].res, table2[18].res, table2[17].temp, table2[18].temp);
    }  
    else if (Rt <= 100000 && Rt > 52700)
    {
        result = interpolate(Rt, table2[18].res, table2[19].res, table2[18].temp, table2[19].temp);
    }  
    else
       printf("Value is out the bound");
    return result;
}

int interpolate(float x, float x1, float x2, int y1, int y2)
{
    return y1 + (y2 - y1) / (x2 - x1) * (x - x1);  
}
