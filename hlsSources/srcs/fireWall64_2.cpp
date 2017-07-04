#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"




struct ap_axis{

	ap_int <64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
};

#define MAX_PACKETS 1500

void fireWall64_2(
		hls::stream <ap_axis> stream_in,
		hls::stream <ap_axis> stream_out,
		hls::stream <ap_axis> stream_garbage,
		ap_int <1> * match_in
){

	ap_axis packetIn[MAX_PACKETS];
	ap_axis packetOut;
	ap_int <1> last;
	ap_axis packetInDummy;



	ap_axis streamPacket;

	last = 0;

	while(!last){
		streamPacket = stream_in.read();
		if(*match_in)
			stream_out.write(streamPacket);
		else
			stream_garbage.write(streamPacket);

	}
}

/*
void fireWall2(
		hls::stream <ap_axis> stream_in,
		hls::stream <ap_axis> stream_out,
		hls::stream <ap_axis> stream_garbage,
		ap_int <1> * match_in
){

	ap_axis packetIn[MAX_PACKETS];
	ap_axis packetOut;
	ap_int <1> last;
	ap_axis packetInDummy;


	while(1){
		last = 0;
		if(*match_in){
			int numPackets = 0;
			last = 0;
			while(!last){
				numPackets++;
				packetIn[numPackets - 1]= stream_in.read();
				last = packetIn[numPackets - 1].last;
				//stream_out.write(packetIn);
			}
			numPackets--;
			if(last){
				numPackets--;
				for(int i=0; i<numPackets; i++){
					packetOut.data = packetIn[i].data;
					packetOut.dest = packetIn[i].dest;
					if(i== (numPackets - 1))
						packetOut.last = 1;
					else
						packetOut.last = 0;

					stream_out.write(packetOut);


				}
			}
		}
		else{
			while(!last){
				packetInDummy = stream_in.read();
				last = packetInDummy.last;
			}

		}
	}




}
*/
