

//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

struct ap_axis{

	ap_int <64> data;
	ap_uint<1> last;
	//ap_uint<8> tdest;
	ap_uint<8> tkeep;
};





ap_int <64> reverseEndian64_inline(ap_int <64> X) {
  ap_int <64> x = X;
  x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
  x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
  x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
  return x;
}


void reverseEndian64(
		hls::stream <ap_axis> * stream_in,
		hls::stream <ap_axis>  * stream_out

){




	ap_axis packetIn;
	ap_axis packetOut;



	ap_axis dataPacket;
	ap_axis compDataPacket;


	while(1){

		packetIn = stream_in->read();
		packetOut.data = reverseEndian64_inline(packetIn.data);
		packetOut.last = packetIn.last;
		packetOut.tkeep = packetIn.tkeep;
		stream_out->write(packetOut);

	}
}
