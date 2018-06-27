//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : July 3, 2017
//===============================
#include <hls_stream.h>
#include "ap_int.h"
#include "ap_cint.h"
#include "ap_utils.h"


struct ap_axis{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> keep;


};

struct ap_axis_dest{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> dest;
	ap_uint<8> keep;


};

void  heartBeat(

		ap_int <48>  eth_address,
		hls::stream <ap_axis >  stream_out





){
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS DATA_PACK variable=stream_out

	ap_int <48>   eth_dst;
	eth_dst = 0xFFFFFFFFFFFF;
	ap_axis packetHeader0, packetHeader1;
	ap_axis_dest currPayloadIn;
	ap_axis currPayloadOut;


	ap_int <96> eth_dst_src;
	ap_int <112> eth_dst_src_payload;
	eth_dst_src = eth_dst.concat(eth_address);

	packetHeader0.data = eth_dst_src.range(95,32);



	ap_int <32> temp = eth_dst_src.range(31,0);
	ap_int <16> temp2 = 0x7400;
	ap_int <48> temp3 = temp.concat(temp2);


	ap_uint <16> tdest = 0x00;




	packetHeader1.data = temp3.concat(tdest);

	packetHeader0.keep = 0xff;
	packetHeader1.keep = 0xff;


	stream_out.write(packetHeader0);
	stream_out.write(packetHeader1);


	currPayloadOut.data = 0xFFFFFFFFFFFFFFFF;
	currPayloadOut.keep = 0xFF;
	currPayloadOut.last = 0x0;
	stream_out.write(currPayloadOut);

	currPayloadOut.data = 0xFFFFFFFFFFFFFFFF;
	currPayloadOut.keep = 0xFF;
	currPayloadOut.last = 0x1;
	stream_out.write(currPayloadOut);

//	Nariman: add this line to stop this module after send a packet!
	while(1);

}
