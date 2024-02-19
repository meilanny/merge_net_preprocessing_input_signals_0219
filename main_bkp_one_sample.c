/*
 * test_template.c
 * Alessio Burrello <alessio.burrello@unibo.it>
 *
 * Copyright (C) 2019-2020 University of Bologna
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. 
 */
// DORY
#define DEFINE_CONSTANTS
#include "mem.h"
#include "network.h"

#include "pmsis.h"
#include "net_utils.h"

// PULP-TrainLib
//#include "net.h"
#include "filter_IIR.h"
#include "simple_mean_removal.h"

#define VERBOSE 1

void application(void * arg) {
/*
    Opening of Filesystem and Ram
*/
  mem_init();
  //network_initialize();
  /*
    Allocating space for input
  */
  void *l2_buffer = pi_l2_malloc(250000); //parameterize,  1386000
  void *output_buffer = pi_l2_malloc(250000); //parameterize,  1386000
  void *filtered_output_buffer = pi_l2_malloc(250000);
  void *quantized_output_buffer = pi_l2_malloc(250000);
  //void *L2_FC_layer_weights_int8 = pi_l2_malloc(weights_size[6]);
  //void *L2_FC_layer_weights_float;

  static float ce_loss;


  if (NULL == l2_buffer) {
#ifdef VERBOSE
    printf("ERROR: L2 buffer allocation failed.");
#endif
    pmsis_exit(-1);
  }
#ifdef VERBOSE
  printf("\nL2 Buffer alloc initial\t@ 0x%08x:\tOk\n", (unsigned int)l2_buffer);
#endif
  //size_t l2_input_size = 15200;
  size_t input_size = 200000; // 1300000; // 1000000
  int initial_dir = 1;

  printf("-----------------------Run Preprocessing-----------------------\n");

  void *ram_input = ram_malloc(input_size);
  size_t offset = load_file_to_ram(ram_input, "Data_20231129_114031_A_S1_MM_1.bin");
  ram_read(l2_buffer, ram_input, input_size);
  printf("\nFirst 16 inputs: \n");
  uint8_t *fp8 = l2_buffer;
  for (int m = 0; m < 16; m++) {
    printf("%02x ",fp8[m]);
  }
  printf("\n");
  printf("Full Size: %d \n", offset);
  printf("Cut input Size: %d \n", input_size);

  int lsb_g1 = 7000700;
  int lsb_g2 = 14000800;
  int lsb_g3 = 20991300;
  int lsb_g4 = 27990100;
  int lsb_g6 = 41994600;
  int lsb_g8 = 55994200;
  int lsb_g12 = 83970500;
  int HEADER_SIZE = 7;
  int bt_pck_size = 32;

  int vscaleFactor = 1000000;
  int tscaleFactor = 1;

  int end_of_data = 0;

  //char *data_recovered;

  for (int i = 0; i < input_size - HEADER_SIZE; i++) {
    if (fp8[i] == 60 && fp8[i+1] == 60 && fp8[i+2] == 62 && fp8[i+3] == 62 \
      && fp8[i+4] == 73 && fp8[i+5] == 69 && fp8[i+6] == 80 && fp8[i+7] == 44) {
      //data_recovered = (char *)(fp8+i);
      end_of_data = i - 1;
      break;
    }
  }

  end_of_data = input_size;

  printf("end_of_data: %d \n", end_of_data);

  int sampleRate = 500;
  int signalGain = 12;
  int n_channels = 8;
  int skipped_output = 1;

  int num_pck = end_of_data / bt_pck_size;

  int32_t *fp32 = output_buffer;
  size_t output_size = num_pck * n_channels; // shape: [num_pck, n_channels]

  for (int i = 0; i < num_pck; i++) {
    for (int j = 0; j < n_channels; j++) {
      fp32[i*n_channels + j] = (int32_t)fp8[i*bt_pck_size + j*3] * 256*256*256 + (int32_t)fp8[i*bt_pck_size + j*3 + 1] * 256*256 \
      + (int32_t)fp8[i*bt_pck_size + j*3 + 2] * 256;
      // inputs also reshaped as: [num_pck, bt_pck_size]
    }
  }

  printf("\nFirst 16 outputs: \n");
  for (int m = 0; m < 16; m++) {
    printf("%d ",fp32[m + skipped_output * n_channels]);
  }
  printf("\n");

  float *flt32 = output_buffer;

  float gain_scaling = 1/(float)lsb_g12;
  for (int i = 0; i < output_size; i++) {
    flt32[i] = fp32[i] / (float)256 * gain_scaling * vscaleFactor;
  }

  printf("\nFirst 16 converted outputs: \n");
  for (int m = 0; m < 16; m++) {
    printf("%f ",flt32[m + skipped_output * n_channels]);
  }
  printf("\n");

  printf("\nFirst 100 converted outputs in Channel 1: \n");
  for (int m = 0; m < 100; m++) {
    printf("%f ",flt32[m * n_channels + skipped_output * n_channels]);
  }
  printf("\n");

  printf("Output Size: %d \n", output_size); // shape: [num_pck, n_channels]

  printf("\nFirst 16 triggers: \n");
  for (int m = 0; m < 16; m++) {
    printf("%d ",fp8[m*bt_pck_size + 31 + skipped_output * bt_pck_size]);
  }
  printf("\n");

  float *flt32_filtered = filtered_output_buffer;  // shape: [n_channels, num_pck-skipped_output], transposed!

  for (int ch = 0; ch < n_channels; ch++) {
    for (int i = 0; i < num_pck - 1; i++) {
      flt32_filtered[ch * (num_pck-1) + i] = flt32[skipped_output * n_channels + i * n_channels + ch];
      if (ch == 0 && i > -1 && i < 200)
        //printf("%f ", sample);
        printf("%f ", flt32_filtered[ch * (num_pck-1) + i]);
    }
  }


  // Currently disabled the filters to guarantee a matched results for quantization, this can be uncommented to use the filters.
  /*

  printf("\nBP filter: \n");
  init_filter();
  //init_filter_notch();
  for (int ch = 0; ch < n_channels; ch++) {
    for (int i = 0; i < num_pck - 1; i++) {
      float sample = flt32[skipped_output * n_channels + i * n_channels + ch];
      float value = IIR6(ch, sample);
      flt32_filtered[ch * (num_pck-1) + i] = value;
      if (ch == 7 && i > -1 && i < 200)
        //printf("%f ", sample);
        printf("%f ", flt32_filtered[ch * (num_pck-1) + i]);
    }
  }

  printf("\n\nNotch filter: \n");
  init_filter_notch();
  for (int ch = 0; ch < n_channels; ch++) {
    for (int i = 0; i < num_pck - 1; i++) {
      float sample = flt32_filtered[ch * (num_pck-1) + i];
      float value = IIRNotch2(ch, sample);
      flt32_filtered[ch * (num_pck-1) + i] = value;
      if (ch == 7 && i > -1 && i < 200)
        //printf("%f ", sample);
        printf("%f ", value);
    }
  }

  printf("\n");
  printf("\n Check 16 filtered outputs: \n");
  for (int m = 10000; m < 10016; m++) {
    printf("%f ", flt32_filtered[m]);
  }
  printf("\n");

  */

  printf("\nRemoving avg. filter: \n");

  fill_buff_initialize(flt32_filtered, num_pck);

  for (int i = 0; i < num_pck - 1 - (int)(MEAN_RINGBUFFER_SIZE/2); i++) {
    remove_mean(flt32_filtered+i, flt32_filtered+(num_pck-1)+i, flt32_filtered+2*(num_pck-1)+i, flt32_filtered+3*(num_pck-1)+i, \
      flt32_filtered+4*(num_pck-1)+i, flt32_filtered+5*(num_pck-1)+i, flt32_filtered+6*(num_pck-1)+i, flt32_filtered+7*(num_pck-1)+i, 0);

    if (i > 99 && i < 200)
      printf("%f ", flt32_filtered[i]);
  }

  printf("\nLast components: \n");

  for (int i = num_pck - 1 - (int)(MEAN_RINGBUFFER_SIZE/2); i < num_pck - 1; i++) {
    remove_mean(flt32_filtered+i, flt32_filtered+(num_pck-1)+i, flt32_filtered+2*(num_pck-1)+i, flt32_filtered+3*(num_pck-1)+i, \
      flt32_filtered+4*(num_pck-1)+i, flt32_filtered+5*(num_pck-1)+i, flt32_filtered+6*(num_pck-1)+i, flt32_filtered+7*(num_pck-1)+i, 1);
    printf("%f ", flt32_filtered[i]);
  }

  printf("\n Quantized outputs: \n");

  printf("\n Output Length: %d \n", (num_pck - 1));

  int *out_p = quantized_output_buffer;
  float eps = 0.7332950830459595;
  float clip_lo = -93.8617706298828125;
  float clip_hi = 93.1284790039062500;
  for (int i = 0; i < n_channels*(num_pck - 1); i++) {
    if (flt32_filtered[i] > clip_hi + 0.0000001)
      flt32_filtered[i] = clip_hi + 0.0000001;
    else if (flt32_filtered[i] < clip_lo)
      flt32_filtered[i] = clip_lo;

    int input_rounded_int = (int)((flt32_filtered[i] - clip_lo) / eps);
    out_p[i] = (int)((input_rounded_int * eps + clip_lo) / eps);

    if (i > 1099 && i < 1200)
      //printf("%f ", sample);
      printf("%d ", out_p[i]);
  }

  printf("\n");


  ram_free(ram_input, input_size);
  
  pi_l2_free(l2_buffer, 250000);
  pi_l2_free(output_buffer, 250000);
  pi_l2_free(filtered_output_buffer, 250000);
  pi_l2_free(quantized_output_buffer, 250000);
  //pi_l2_free(L2_FC_layer_weights_int8, weights_size[6]);


  pmsis_exit(0);
}

int main () {
#ifndef TARGET_CHIP_FAMILY_GAP9
  PMU_set_voltage(1000, 0);
#else
  pi_pmu_voltage_set(PI_PMU_VOLTAGE_DOMAIN_CHIP, PI_PMU_VOLT_800);
#endif
  pi_time_wait_us(10000);
  pi_freq_set(PI_FREQ_DOMAIN_FC, 370000000);
  pi_time_wait_us(10000);
  pi_freq_set(PI_FREQ_DOMAIN_CL, 370000000);
  pi_time_wait_us(10000);
  pi_freq_set(PI_FREQ_DOMAIN_PERIPH, 370000000);
  pi_time_wait_us(10000);


  pmsis_kickoff((void*)application);
  return 0;
}
