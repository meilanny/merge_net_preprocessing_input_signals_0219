#ifndef SIMPLE_MEAN_REMOVAL_H
#define SIMPLE_MEAN_REMOVAL_H


#define MEAN_RINGBUFFER_SIZE 125 // 750

void fill_buff_initialize(float* input, int num_pck);

float compute_mean(float* array, int size);


void remove_mean(float* sample_1, float* sample_2, float* sample_3, float* sample_4, float* sample_5, float* sample_6, float* sample_7, float* sample_8, int reach_end_flag);

#endif // SIMPLE_MEAN_REMOVAL_H

