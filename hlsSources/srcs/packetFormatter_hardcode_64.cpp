#include <hls_stream.h>
#include "ap_int.h"
#include "ap_cint.h"
#include "ap_utils.h"

#define MAX_WORDS 380
#define NUM_WORDS 25

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
//ap_int <64> reverseEndian64(ap_int <64> X) {
//  ap_int <64> x = X;
//  x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
//  x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
//  x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
//  return x;
//}
//
//
//ap_int <32>  reverseEndian32(ap_int <32> num){
//	ap_int <32> swapped = ((num & 0x000000FF) << 24) | ((num & 0x0000FF00) <<8) | ((num &0x00FF0000) >> 8) | ((num &0xFF000000) >> 24);
//	return swapped;
//
//}
//
//ap_int <16> reverseEndian16(ap_int <16> num){
//	ap_int <16> swapped = ((num & 0x0000FFFF) >> 8) | ((num & 0x0000FFFF) << 8);
//	return swapped;
//
//}


void  packetFormatter_hardcode_64(

		hls::stream <ap_axis_dest> packetIn,
		ap_int <48> eth_dst,
		ap_int <48> eth_src,
//		volatile ap_int <32> * packetHeader0_out,
//		volatile ap_int <32> * packetHeader1_out,
		hls::stream <ap_axis >  packetOut





){

	ap_axis packetHeader0, packetHeader1;
	ap_axis_dest currPayloadIn;
	ap_axis currPayloadOut;


	ap_int <96> eth_dst_src;
	ap_int <112> eth_dst_src_payload;
	eth_dst_src = eth_dst.concat(eth_src);

	//packetHeader0.data = reverseEndian64(eth_dst_src.range(95,32));
	packetHeader0.data = eth_dst_src.range(95,32);

	//*packetHeader0_out = packetHeader0.data;


	ap_int <32> temp = eth_dst_src.range(31,0);
	ap_int <16> temp2 = 0x7400;
	ap_int <48> temp3 = temp.concat(temp2);

	ap_int <1> last = 0;
	ap_uint <16> tdest;

	ap_uint <8> zero = 0x00;
//	ap_uint <16> kern_dst;

	currPayloadIn = packetIn.read();
	ap_wait();
	tdest = currPayloadIn.dest.concat(zero);
	//currPayloadOut.data = reverseEndian64(currPayloadIn.data);
	currPayloadOut.data = currPayloadIn.data;
	currPayloadOut.keep = 0xff;
//	Nariman: I think it has a bug whatif payload be only one packet, then last signal never goes high!
	currPayloadOut.last = currPayloadIn.last;


	//packetHeader1.data = reverseEndian64(temp3.concat(kern_dst));
	packetHeader1.data = temp3.concat(tdest);

	//*packetHeader1_out = packetHeader1.data;
	packetHeader0.keep = 0xff;
	packetHeader1.keep = 0xff;


	packetOut.write(packetHeader0);
	packetOut.write(packetHeader1);
	packetOut.write(currPayloadOut);


	last = currPayloadIn.last;
	while(!last){

		currPayloadIn = packetIn.read();
		//currPayloadOut.data = reverseEndian64(currPayloadIn.data);
		currPayloadOut.data = currPayloadIn.data;
		currPayloadOut.last = currPayloadIn.last;
		currPayloadOut.keep = currPayloadIn.keep;
		packetOut.write(currPayloadOut);
		last = currPayloadOut.last;
	}
}
/*
void  packetFormatter_hardcode(

		hls::stream <ap_axis_dest> packetIn,
		ap_int <48> eth_dst,
		ap_int <48> eth_src,
		ap_int <32> * packetHeader0_out,
		ap_int <32> * packetHeader1_out,
		ap_int <32> * packetHeader2_out,
		ap_int <32> * packetHeader3_out,
		hls::stream <ap_axis >  packetOut





){

	ap_uint <16> payload_size;
	ap_axis packetHeader0, packetHeader1, packetHeader2, packetHeader3;
	ap_axis currPayload;
	ap_axis_dest packetPayload[MAX_WORDS];
	int i = 0;
	ap_int <128> header;
	ap_int <96> eth_dst_src;
	ap_int <112> eth_dst_src_payload;
	eth_dst_src = eth_dst.concat(eth_src);
	int numPackets = 0;


	//ap_wait();
	packetHeader0.packet = reverseEndian32(eth_dst.range(47, 16));

	*packetHeader0_out = packetHeader0.packet;
	//ap_wait();
	ap_int <16> temp = eth_dst.range(15,0);
	//ap_wait();
	//ap_int <16> temp2 = eth_dst_src.range(47,32);
	ap_int <16> temp2 = eth_src.range(47,32);
	ap_int <16> temp3;
	//ap_wait();
	packetHeader1.packet = reverseEndian32(temp.concat(temp2));

	*packetHeader1_out = packetHeader1.packet;

	//ap_wait();

	//packetHeader2.packet = reverseEndian32(eth_dst_src.range(31,0));
	packetHeader2.packet = reverseEndian32(eth_src.range(31,0));
	*packetHeader2_out = packetHeader2.packet;
	packetHeader0.last = 0;
	packetHeader1.last = 0;
	packetHeader2.last = 0;
	packetHeader3.last = 0;

	ap_uint <16> tdest;

	ap_uint <8> zero = 0x00;;
	ap_uint <16> kern_dst;


	packetFormatter_label1:do{
			numPackets++;
			packetPayload[numPackets -1] = packetIn.read();
			tdest = packetPayload[numPackets -1].dest.concat(zero);
			//tdest = 0x01;
			//tdest = 0x0001;
			kern_dst = reverseEndian16(tdest);
			//ap_wait();
			if(packetPayload[numPackets -1].last){

				temp3 = 0x0074;
				//reverseEndian16(((numPackets)<<2) + 16);
				//ap_wait();
				//packetHeader3.packet = kern_dst.concat(temp3);
				packetHeader3.packet = kern_dst.concat(temp3);
				*packetHeader3_out = packetHeader3.packet;
				packetOut.write(packetHeader0);
				packetOut.write(packetHeader1);
				packetOut.write(packetHeader2);
				packetOut.write(packetHeader3);


				for (i=0; i<numPackets; i++){
					currPayload.packet = reverseEndian32(packetPayload[i].packet);
					currPayload.last = packetPayload[i].last;
					packetOut.write(currPayload);

				}

				numPackets=0;

			}



	}while(1);



}

*/
