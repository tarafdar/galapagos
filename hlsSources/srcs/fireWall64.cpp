#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

struct ap_axis_in{

	ap_int <64> data;
	ap_uint<1> last;
};

struct ap_axis_out{

	ap_int <64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
};

ap_int <32>  reverseEndian32(ap_int <32> num){
	ap_int <32> swapped = ((num & 0x000000FF) << 24) | ((num & 0x0000FF00) <<8) | ((num &0x00FF0000) >> 8) | ((num &0xFF000000) >> 24);
	return swapped;

}

//ap_int <64> reverseEndian64(ap_int <64> X) {
//  ap_int <64> x = X;
//  x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
//  x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
//  x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
//  return x;
//}


void fireWall64(
		ap_uint <48> * eth_address,
		hls::stream <ap_axis_in> stream_in,
		hls::stream <ap_axis_out> stream_out,
		ap_uint <48> * observedAddress_out,

		ap_uint <16> * dest_out,
		ap_int <1> * match_out
){

	//ap_uint <48> eth_address = 0x010203040506;

	ap_int <64> header[2];

	ap_axis_in packetIn;
	ap_axis_out packetOut;

	ap_int <48> observedAddress;


	ap_int <1> last;
	ap_int <1> match;

	ap_uint <16> dest;
	//ap_uint <32> dest_tmp;

	//ap_int <16> top2bytes;
	//ap_int <32> bottom4bytes;
	while(1){

		//Get the header
		for(int i=0; i<2; i++){
			packetIn= stream_in.read();
			header[i] = packetIn.data;
		}



		// Get the destination MAC address



		//observedAddress = reverseEndian64(header[0].range(63,16));
		observedAddress = header[0].range(63,16);


		//top2bytes = ((header[1] & 0x0000FFFF) >> 8) | ((header[1] & 0x0000FFFF) << 8);
		//bottom4bytes = ((header[0] & 0x000000FF) << 24) | ((header[0] & 0x0000FF00) <<8) | ((header[0] &0x00FF0000) >> 8) | ((header[0] &0xFF000000) >> 24);
		//bottom4bytes = reverseEndian32(header[0]);
		//observedAddress = bottom4bytes.concat(top2bytes);
		//*observedAddress_out = observedAddress;

		ap_wait();
		//Compare the destination MAC address in the Packet to the one MAC address in the firewall
		if(observedAddress == *eth_address){
			match = 1;
		}
		else{
			match = 0;
		}


		*match_out = match;

		//dest_tmp = reverseEndian64(header[1].range(15,0));
		//dest = reverseEndian64(header[1].range(15,0));
		dest = header[1].range(15,0);
		//dest_tmp = dest_tmp >> 16;
		//dest = dest_tmp.range(15,0);
		//dest = (dest >> 8) | (dest << 8);

		*dest_out = dest;




		last = 0;
		while(!last ){
			packetIn = stream_in.read();
			packetOut.last = packetIn.last;
			//packetOut.data = reverseEndian64(packetIn.data);
			packetOut.data = packetIn.data;
			packetOut.dest = dest;
			last = packetIn.last;
			stream_out.write(packetOut);

		}



	}

}
