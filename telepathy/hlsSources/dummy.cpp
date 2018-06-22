
#include "ap_int.h"

void dummy(
            volatile int * out,
            int * mem
        
        )            // kernel size
{
// Global memory interface
#pragma HLS INTERFACE ap_ctrl_none port=return 
#pragma HLS INTERFACE m_axi port=mem depth=2147483648
    
    static ap_uint<1> state = 0;
    if(state == 0){
        *out = mem[42];
        state = 1;
    }
    else
        *out = 0;


}

