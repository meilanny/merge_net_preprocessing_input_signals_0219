#ifndef _IIR_FILTER_H_
#define _IIR_FILTER_H_

typedef enum
{
    FILTER_05_100_500 = 0,
    NOTCH_50_500 = 1,
    FILTER_1_50_500 = 2, 
    FILTER_1_40_500 = 3,
    FILTER_1_500 = 4
}
filter_types;

#define FILTER_ORDER 7
#define FILTER_ORDER_NOTCH 3
#define N_CHANNELS 8

void init_filter();
void init_filter_notch();
float IIR6(int channel, float sample);
float IIR8(int channel, float sample);
float IIRNotch2(int channel, float sample);

#endif