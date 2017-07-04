


#define NUM_WORDS 25
#include <hls_stream.h>
#include "ap_int.h"

struct ap_axis{
	ap_int <64> packet;
	ap_uint<1> last;
	ap_uint<8> dest;


};


//static int num = 0;

void  roundRobin(

		hls::stream <ap_axis >  packetIn,
		hls::stream <ap_axis >  packetOut,
		ap_int <8> * base,
		ap_int <8> * max
		//ap_uint <1> * TLAST
		//uint32 * memAddr_fifo



){


	ap_axis currPacket;
	ap_axis streamPacket;

	int index = *base;
	while(1){




		currPacket = packetIn.read();
		streamPacket.packet = currPacket.packet;
		streamPacket.dest = index;
		streamPacket.last = currPacket.last;
		if(streamPacket.last == 1){
			if (index == *max)
				index = index + 1;
			else
				index = *base;
		}

		packetOut.write(streamPacket);

	}






}
