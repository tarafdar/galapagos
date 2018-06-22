#include <hls_stream.h>
#include "ap_int.h"
#include "ap_cint.h"
#include "ap_utils.h"


struct ap_axis_dest{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> dest;
	ap_uint<8> keep;


};

void  virtToPhys(

		hls::stream <ap_axis_dest> packetIn,
		ap_int <48> eth_src,
		hls::stream <ap_axis_dest>  packetOut,
        ap_uint<8> paddr
){

	ap_axis_dest packet;
	last = currPayloadIn.last;
	while(!last){

	    packet = packetIn.read();
        packet.dest = paddr;
        packetOut.write(packet);
	}
}
