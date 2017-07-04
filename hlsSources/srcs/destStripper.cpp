#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"


struct ap_axis{
	ap_int <48> data;
	ap_uint<8> dest;
};


void destStripper(

		ap_uint <48> * destMAC_out,
		hls::stream <ap_axis> destMAC_in
){


	ap_axis currWord;

	while(1){
		currWord = destMAC_in.read();
		*destMAC_out = currWord.data;

	}


}
