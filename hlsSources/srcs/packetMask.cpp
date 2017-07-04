
#define NUM_WORDS 25
#include <hls_stream.h>
#include "ap_int.h"

struct ap_axis{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> keep;


};


//static int num = 0;

void  packetMask(

		hls::stream <ap_axis >  packetIn,
		hls::stream <ap_axis >  packetOut,
		ap_uint <32> * id

		//ap_uint <1> * TLAST
		//uint32 * memAddr_fifo



){


	ap_axis currPacket;
	ap_axis streamPacket;


	while(1){
		//num = (num + 1) % 4;


		currPacket = packetIn.read();
		//if(num == 0){
		//	streamPacket.packet = currPacket.packet & 0xff;
		//}
		//if(num == 1){
		//	streamPacket.packet = currPacket.packet & 0xff00;
		//}
		//if(num == 2){
		//	streamPacket.packet = currPacket.packet & 0xff0000;
		//}
		//if(num == 3){
		streamPacket.data = currPacket.data & 0xff0000ff;
		//}

		//streamPacket.dest = 0x2;
		streamPacket.last = currPacket.last;
		packetOut.write(streamPacket);

	}






}
