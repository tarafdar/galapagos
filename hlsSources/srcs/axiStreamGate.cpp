#include <hls_stream.h>
#include "ap_int.h"
#include "ap_cint.h"
#include "ap_utils.h"

struct ap_axis{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> keep;

};

void  axiStreamGate(

		hls::stream <ap_axis> packetIn,
		volatile int * programming,
		hls::stream <ap_axis >  packetOut,
		volatile int * programSafe

){

	ap_int <1> last = 0;

	ap_axis packet;


	while(1){
		*programSafe = 0;
		if((*programming == 0)){

			if(!packetIn.empty()){
				do{
					packet = packetIn.read();
					last = packet.last;
					packetOut.write(packet);
				}while(last == 0);

			}
		}
		*programSafe = 1;
		ap_wait();
	}


}
