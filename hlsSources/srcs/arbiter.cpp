//===============================
// AUTHOR     : Naif Tarafdar and Nariman Eskandari
// CREATE DATE     : June 15, 2018
//===============================


//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

struct axis{
	ap_int <64> data;
	ap_uint<8> dest;
	ap_uint<1> last;
	ap_uint<8> keep;
	ap_uint<8> id;
	ap_uint<40> user;
};

//priorities
#define S00 0
#define S01 1

//states
#define WAIT 0
#define STREAM_S00 1 
#define STREAM_S01 2 




void arbiter(
	    hls::stream <axis> & S00_AXIS,
	    hls::stream <axis> & S01_AXIS,
        hls::stream <axis> & M00_AXIS,
        volatile ap_int <2> * state_out
        )

{

#pragma HLS INTERFACE axis port=S00_AXIS
#pragma HLS INTERFACE axis port=S01_AXIS
#pragma HLS INTERFACE axis port=M00_AXIS
//#pragma HLS resource core=AXI4Stream variable=S00_AXIS
//#pragma HLS resource core=AXI4Stream variable=S01_AXIS
//#pragma HLS resource core=AXI4Stream variable=M00_AXIS
//
//#pragma HLS DATA_PACK variable=S00_AXIS
//#pragma HLS DATA_PACK variable=S01_AXIS
//#pragma HLS DATA_PACK variable=M00_AXIS

    axis packet;


#pragma HLS INTERFACE ap_ctrl_none port=return
    static ap_uint <2> state = WAIT;
    static ap_uint <1> priority = S00;
    
    *state_out = state;
    switch (state)
    {
        case WAIT:
            //look at priority
            if (!S00_AXIS.empty() && !S01_AXIS.empty()){
                if(priority == S00){
                    state = STREAM_S00;
                }
                else{ //priority == S01
                    state = STREAM_S01;
                }
            }
            else if(!S00_AXIS.empty()){
                state = STREAM_S00;
            }
            else if(!S01_AXIS.empty()){
                state = STREAM_S01;
            }
            break;

        case STREAM_S00:
            //stream until last
            do{
                packet = S00_AXIS.read();
                M00_AXIS.write(packet);
                if(packet.last){
                    priority = S01;
                    if(!S01_AXIS.empty()){
                        state = STREAM_S01;
                    }
                    else if(!S00_AXIS.empty()){
                        state = STREAM_S00;
                    }
                    else{
                        state = WAIT;
                    }
                }
            }while(!packet.last);
            break;
        
        case STREAM_S01:
            //stream_until_last
            do{
                packet = S01_AXIS.read();
                M00_AXIS.write(packet);
                if(packet.last){
                    priority = S00;
                    if(!S00_AXIS.empty()){
                        state = STREAM_S00;
                    }
                    else if(!S01_AXIS.empty()){
                        state = STREAM_S01;
                    }
                    else{
                        state = WAIT;
                    }
                }
            }while(!packet.last);
            break;


    }

}
