
#include "simple_mean_removal.h"



float buf_ch1[MEAN_RINGBUFFER_SIZE] = {0};
float buf_ch2[MEAN_RINGBUFFER_SIZE] = {0};
float buf_ch3[MEAN_RINGBUFFER_SIZE] = {0};
float buf_ch4[MEAN_RINGBUFFER_SIZE] = {0};
float buf_ch5[MEAN_RINGBUFFER_SIZE] = {0};
float buf_ch6[MEAN_RINGBUFFER_SIZE] = {0};
float buf_ch7[MEAN_RINGBUFFER_SIZE] = {0};
float buf_ch8[MEAN_RINGBUFFER_SIZE] = {0};

static int ringbuffer_index = 0;

void fill_buff_initialize(float* input, int num_pck) {
    for (int i=0; i<(int)(MEAN_RINGBUFFER_SIZE/2); i++) {
        buf_ch1[i] = input[i];
        buf_ch2[i] = input[i + (num_pck - 1)];
        buf_ch3[i] = input[i + 2*(num_pck - 1)];
        buf_ch4[i] = input[i + 3*(num_pck - 1)];
        buf_ch5[i] = input[i + 4*(num_pck - 1)];
        buf_ch6[i] = input[i + 5*(num_pck - 1)];
        buf_ch7[i] = input[i + 6*(num_pck - 1)];
        buf_ch8[i] = input[i + 7*(num_pck - 1)];
    }
    
    ringbuffer_index = (int)(MEAN_RINGBUFFER_SIZE/2);
}


void remove_mean(float* sample_1, float* sample_2, float* sample_3, float* sample_4, float* sample_5, float* sample_6, float* sample_7, float* sample_8, int reach_end_flag) {
    // Replace the oldest value with the new sample
    if (reach_end_flag == 0) {
        buf_ch1[ringbuffer_index] = *(sample_1+(int)(MEAN_RINGBUFFER_SIZE/2));
        buf_ch2[ringbuffer_index] = *(sample_2+(int)(MEAN_RINGBUFFER_SIZE/2));
        buf_ch3[ringbuffer_index] = *(sample_3+(int)(MEAN_RINGBUFFER_SIZE/2));
        buf_ch4[ringbuffer_index] = *(sample_4+(int)(MEAN_RINGBUFFER_SIZE/2));
        buf_ch5[ringbuffer_index] = *(sample_5+(int)(MEAN_RINGBUFFER_SIZE/2));
        buf_ch6[ringbuffer_index] = *(sample_6+(int)(MEAN_RINGBUFFER_SIZE/2));
        buf_ch7[ringbuffer_index] = *(sample_7+(int)(MEAN_RINGBUFFER_SIZE/2));
        buf_ch8[ringbuffer_index] = *(sample_8+(int)(MEAN_RINGBUFFER_SIZE/2));
    } else {
        buf_ch1[ringbuffer_index] = 0;
        buf_ch2[ringbuffer_index] = 0;
        buf_ch3[ringbuffer_index] = 0;
        buf_ch4[ringbuffer_index] = 0;
        buf_ch5[ringbuffer_index] = 0;
        buf_ch6[ringbuffer_index] = 0;
        buf_ch7[ringbuffer_index] = 0;
        buf_ch8[ringbuffer_index] = 0;
    }

    // Increment the index, wrapping around to the start of the buffer if necessary
    ringbuffer_index = (ringbuffer_index + 1) % MEAN_RINGBUFFER_SIZE;

    // Compute the mean of the buffer
    float mean_ch1 = compute_mean(buf_ch1, MEAN_RINGBUFFER_SIZE);
    float mean_ch2 = compute_mean(buf_ch2, MEAN_RINGBUFFER_SIZE);
    float mean_ch3 = compute_mean(buf_ch3, MEAN_RINGBUFFER_SIZE);
    float mean_ch4 = compute_mean(buf_ch4, MEAN_RINGBUFFER_SIZE);
    float mean_ch5 = compute_mean(buf_ch5, MEAN_RINGBUFFER_SIZE);
    float mean_ch6 = compute_mean(buf_ch6, MEAN_RINGBUFFER_SIZE);
    float mean_ch7 = compute_mean(buf_ch7, MEAN_RINGBUFFER_SIZE);
    float mean_ch8 = compute_mean(buf_ch8, MEAN_RINGBUFFER_SIZE);

     // Subtract the mean from the samples
    *sample_1 -= mean_ch1;
    *sample_2 -= mean_ch2;
    *sample_3 -= mean_ch3;
    *sample_4 -= mean_ch4;
    *sample_5 -= mean_ch5;
    *sample_6 -= mean_ch6;
    *sample_7 -= mean_ch7;
    *sample_8 -= mean_ch8;
    return;
}

float compute_mean(float* array, int size) {
    float sum = 0.0;
    for (int i = 0; i < size; i++) {
        sum += array[i];
    }
    return sum / size;
}


