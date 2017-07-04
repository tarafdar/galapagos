//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

#define MAX_FLITS 200

struct ap_axis{

	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> tkeep;
};





void signatureMatch2(
		hls::stream <ap_axis> * stream_in,
		hls::stream <ap_axis> * stream_out,
		hls::stream <ap_axis> * stream_garbage,
		ap_int <1> * match_in//,
		//volatile ap_int <1> * match_out

){


	ap_int<1> ONE = 1;
	ap_int<1> match = *match_in;

	ap_axis packetIn;
	ap_axis packetOut;
	ap_int <1> last = 0;

	ap_axis packetIn_array[MAX_FLITS];

	int counter = 0;




	while(1){
		last = 0;
		counter = 0;
		//*done = 0;
		ap_wait();
		//*match_out = 0;
		while(!last){
			packetIn = stream_in->read();
			last = packetIn.last;
			packetIn_array[counter] = packetIn;
			counter = counter +1;
			//if(last)
			match = *match_in;
		}


		int index = 0;

		ap_wait();
		for(int i=0; i<counter; i++){
			packetOut.data = packetIn_array[i].data;
			packetOut.last = packetIn_array[i].last;
			packetOut.tkeep = packetIn_array[i].tkeep;
			last = packetOut.last;

			if(match == ONE){
				stream_out->write(packetOut);
			}
			else{
				stream_garbage->write(packetOut);

			}

		}

		ap_wait();
		//*done = 1;
	}
}
