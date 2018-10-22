
#include "ap_int.h"

int dummy(
            int control, 
            int * cmd,
            int * ifm,
            int * ofm,
            int * weight
        
        )            // kernel size
{
// Global memory interface
#pragma HLS INTERFACE ap_ctrl_none port=return 
#pragma HLS INTERFACE m_axi port=ifm depth=2147483648
#pragma HLS INTERFACE m_axi port=cmd depth=2147483648
#pragma HLS INTERFACE m_axi port=ofm depth=2147483648
#pragma HLS INTERFACE m_axi port=weight depth=2147483648
#pragma HLS INTERFACE s_axilite port=control bundle=control 
#pragma HLS INTERFACE s_axilite port=return bundle=control
    
    cmd[0] = control;
    ifm[0] = cmd[1];
    ofm[0] = ifm[1];
    weight[0] = ofm[1];
    return weight[1];



}

