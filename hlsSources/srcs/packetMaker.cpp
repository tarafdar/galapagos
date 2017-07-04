
#define NUM_WORDS 25
#include <hls_stream.h>
#include "ap_int.h"

struct ap_axis{
	ap_int <64> packet;
	ap_uint<1> last;
	ap_uint<8> dest;


};


void  packetMaker(


		hls::stream <ap_axis >  packetOut,
		ap_int <32> * id

		//ap_uint <1> * TLAST
		//uint32 * memAddr_fifo



){




	int packet[NUM_WORDS] ={0x06050403, 0x06050201, 0x00030405, 0xABCD5600, 0x17161514, 0x1b1a1918, 0x1f1e1d1c,
			0x23222120, 0x27262524, 0x2b2a2928, 0x2f2e2d2c, 0x33323130, 0x37363534, 0x3b3a3938, 0x3f3e3d3c,
			0x43424140, 0x47464544, 0x4b4a4948, 0x4f4e4d4c, 0x53525150, 0x57565554, 0x5b5a5958, 0x5f5e5d5c,
			0x63626160, 0xFFAACCEE};



	int i;


	struct ap_axis streamPacket;

	//packetOut.write(NUM_WORDS);
	while(1){
	packetMaker_label3:for (i=0; i<NUM_WORDS;i++){
			streamPacket.packet = packet[i];
			streamPacket.dest = 0;

			if(i==NUM_WORDS - 1)
				streamPacket.last = 1;
			else
				streamPacket.last = 0;


			packetOut.write(streamPacket);
	}

	}







}
