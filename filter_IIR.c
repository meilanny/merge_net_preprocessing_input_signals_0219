#include "filter_IIR.h"
#include "pmsis.h"

int filter_initialized = 0;
int filter_initialized_8 = 0;
int filter_initialized_notch = 0;

float NF[FILTER_ORDER];
float DF[FILTER_ORDER];  

float INF[FILTER_ORDER][N_CHANNELS] = {0};
float OUTF[FILTER_ORDER][N_CHANNELS] = {0};

float NF_Notch[FILTER_ORDER_NOTCH];
float DF_Notch[FILTER_ORDER_NOTCH];  

float INF_Notch[FILTER_ORDER_NOTCH][N_CHANNELS] = {0};
float OUTF_Notch[FILTER_ORDER_NOTCH][N_CHANNELS] = {0};

void iir_load_coeff(filter_types filter_type)
{
    switch(filter_type)
    {
        case FILTER_05_100_500:
            NF[0] =  0.097370660619115;
            NF[1] =  0;  
            NF[2] =  -0.292111981857345;
            NF[3] =  0;
            NF[4] =  0.292111981857345;       
            NF[5] =  0;
            NF[6] =  -0.097370660619115;
            
            DF[0] =  1;
            DF[1] =  -3.572491927808352;
            DF[2] =  5.150069318347765;
            DF[3] =  -4.062855454893695;
            DF[4] =  2.02312119907885;
            DF[5] =  -0.59543104015813;
            DF[6] =  0.057588101186343;
            
            break;

        case NOTCH_50_500:
            NF_Notch[0] =  0.989636175362892;
            NF_Notch[1] =  -1.601264968233611;  
            NF_Notch[2] =  0.989636175362892;
            
            DF_Notch[0] =  1;
            DF_Notch[1] =  -1.601264968233611;
            DF_Notch[2] =  0.979272350725784;
            break;


        case FILTER_1_50_500:
            NF[0] =  0.017191109807913;
            NF[1] =  0;  
            NF[2] = -0.051573329423738;
            NF[3] =  0;
            NF[4] = 0.051573329423738;       
            NF[5] = 0;
            NF[6] = -0.017191109807913;
            
            DF[0] =  1;
            DF[1] =  -4.764804432822384;
            DF[2] =  9.497046782060337;
            DF[3] =  -10.184176520515694;
            DF[4] =  6.222038193995396;
            DF[5] =  -2.055665755921440;
            DF[6] =  0.285562022593089;
            
            break;
		case FILTER_1_40_500:
            NF[0] =  0.00953048321967569;
			NF[1] =  0;  
			NF[2] = -0.0285914496590271;
			NF[3] =  0;
			NF[4] =  0.0285914496590271;  
			NF[5] =  0;
			NF[6] = -0.00953048321967569;     

			DF[0] =  1;
			DF[1] =  -5.0121175348964;
			DF[2] =  10.5059498143747;
			DF[3] =  -11.8143938042749;
			DF[4] =  7.53076182707842;
			DF[5] =  -2.58152803157766;
			DF[6] =  0.37132789227498;
            
            break;
        case FILTER_1_500:
            NF[0] =  0.006005792484924e-11;
            NF[1] =  0.036034754909545e-11;
            NF[2] =  0.090086887273863e-11;
            NF[3] =  0.120115849698485e-11;
            NF[4] =  0.090086887273863e-11;
            NF[5] =  0.036034754909545e-11;
            NF[6] =  0.006005792484924e-11;

            DF[0] =  1.000000000000000;
            DF[1] =  -5.951447334984480;
            DF[2] =  14.758413952404259;
            DF[3] =  -19.519164387201208;
            DF[4] =  14.521482981667386;
            DF[5] =  -5.761891935232461;
            DF[6] =  0.952606723350350;

            break;
        default:
            break;
    }   

    
}

void init_filter()
{
    iir_load_coeff(FILTER_1_50_500);
    filter_initialized = 1;
}

void init_filter_8()
{
    iir_load_coeff(FILTER_05_100_500);
    filter_initialized_8 = 1;
}

void init_filter_notch()
{
    iir_load_coeff(NOTCH_50_500);
    filter_initialized_notch = 1;
}

float IIR8(int channel, float sample)
{
    if(filter_initialized)
    {
        for (int cf2 = 8; cf2 > 0; cf2--)
        {
            INF[cf2][channel] = INF[cf2 - 1][channel];
            OUTF[cf2][channel] = OUTF[cf2 - 1][channel];
            //printf("%f ", INF[cf2][channel]);
            //printf("%f ", OUTF[cf2][channel]);
        }
        //printf("\n");
        INF[0][channel] = sample;
        OUTF[0][channel] = NF[0] * INF[0][channel] + NF[1] * INF[1][channel] + NF[2] * INF[2][channel] + NF[3] * INF[3][channel] + NF[4] * INF[4][channel] + NF[5] * INF[5][channel] + NF[6] * INF[6][channel] + NF[7] * INF[7][channel] + NF[8] * INF[8][channel];
        //printf("%f ", OUTF[0][channel]);
        //printf("\n\n");
        return OUTF[0][channel] = OUTF[0][channel] - DF[1] * OUTF[1][channel] - DF[2] * OUTF[2][channel] - DF[3] * OUTF[3][channel] - DF[4] * OUTF[4][channel] - DF[5] * OUTF[5][channel] - DF[6] * OUTF[6][channel] - DF[7] * OUTF[7][channel] - DF[8] * OUTF[8][channel];
    }
    else
    {
        /* Initialize your filter first */
        while(1);
    }
    
        
}

float IIRNotch2(int channel, float sample)
{
    if(filter_initialized_notch)
    {
        for (int cf2 = 2; cf2 > 0; cf2--)
        {
            INF_Notch[cf2][channel] = INF_Notch[cf2 - 1][channel];
            OUTF_Notch[cf2][channel] = OUTF_Notch[cf2 - 1][channel];
        }
        INF_Notch[0][channel] = sample;
        OUTF_Notch[0][channel] = NF_Notch[0] * INF_Notch[0][channel] + NF_Notch[1] * INF_Notch[1][channel] + NF_Notch[2] * INF_Notch[2][channel];
        return OUTF_Notch[0][channel] = OUTF_Notch[0][channel] - DF_Notch[1] * OUTF_Notch[1][channel] - DF_Notch[2] * OUTF_Notch[2][channel];
    }
    else
    {
        /* Initialize your filter first */
        printf("\n Not initialized Notch! \n");
        while(1);
    }
    
        
}


float IIR6(int channel, float sample)
{
    if(filter_initialized)
    {
        for (int cf2 = 6; cf2 > 0; cf2--)
        {
            INF[cf2][channel] = INF[cf2 - 1][channel];
            OUTF[cf2][channel] = OUTF[cf2 - 1][channel];
        }
        INF[0][channel] = sample;
        OUTF[0][channel] = NF[0] * INF[0][channel] + NF[1] * INF[1][channel] + NF[2] * INF[2][channel] + NF[3] * INF[3][channel] + NF[4] * INF[4][channel] + NF[5] * INF[5][channel] + NF[6] * INF[6][channel];
        return OUTF[0][channel] = OUTF[0][channel] - DF[1] * OUTF[1][channel] - DF[2] * OUTF[2][channel] - DF[3] * OUTF[3][channel] - DF[4] * OUTF[4][channel] - DF[5] * OUTF[5][channel] - DF[6] * OUTF[6][channel];
    }
    else
    {
        /* Initialize your filter first */
        while(1);
    }
    
        
}