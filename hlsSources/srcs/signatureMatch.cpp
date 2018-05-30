//#include "signatureMatch.h"
/*
//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

struct ap_axis{

	ap_int <32> data;
	ap_uint<1> last;
};



ap_int <32>  reverseEndian32(ap_int <32> num){
	ap_int <32> swapped = ((num & 0x000000FF) << 24) | ((num & 0x0000FF00) <<8) | ((num &0x00FF0000) >> 8) | ((num &0xFF000000) >> 24);
	return swapped;

}

*/

//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

struct ap_axis{

	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> tkeep;
};



ap_int <32>  reverseEndian32(ap_int <32> num){
	ap_int <32> swapped = ((num & 0x000000FF) << 24) | ((num & 0x0000FF00) <<8) | ((num &0x00FF0000) >> 8) | ((num &0xFF000000) >> 24);
	return swapped;

}

ap_int <64> reverseEndian64(ap_int <64> X) {
  ap_int <64> x = X;
  x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
  x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
  x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
  return x;
}


void signatureMatch(
		hls::stream <ap_axis> * stream_in,
		hls::stream <ap_axis>  * stream_out,
		/*hls::stream <ap_axis>  * counter_out,
		hls::stream <ap_axis> * dataStream,
		hls::stream <ap_axis> * comp_dataStream,
		*/
		ap_int <64> * wordIn,
		ap_int <64> * mask,
		ap_int <64> * pattern,
		volatile ap_int <1> * match_out,
		volatile ap_int <32> *counter_out,
		volatile ap_int <64> *data_out,
		volatile ap_int <64> *comp_data_out
		//ap_int <1> * done
){


	ap_int <1> last = 0;
	last = 0;

	ap_int <1> match = 0;
	*match_out = 0;
	//ap_wait();


	int counter = 0;

	ap_axis packetIn;
	ap_axis packetOut;
	ap_axis counterPacket;
	ap_int <64> data;
	ap_int <64> comp_data;

	ap_axis dataPacket;
	ap_axis compDataPacket;

	//*match_out = 1;

	ap_wait();

	while(1){

		counter = 0;
		ap_wait();
		do{
			packetIn = stream_in->read();
			last = packetIn.last;

			//packetOut.data = reverseEndian64(packetIn.data);

			packetOut.data = packetIn.data;
			packetOut.last = packetIn.last;
			packetOut.tkeep = packetIn.tkeep;
			last = packetIn.last;
			//packetOut.tdest = counter;




			if(*wordIn == counter){
				data = packetOut.data & (*mask);
				comp_data = (*pattern) & (*mask);
				//ap_wait();
				if(data == comp_data){
					match = 1;
				}
				else{
					match = 0;
				}
			}



			*match_out = match;
			stream_out->write(packetOut);
			*data_out = data;
			*comp_data_out = comp_data;

			counter = counter + 1;

		}while(!last);

		if(last){
			counter = 0;
			*counter_out = counter;
		}



	}


}
