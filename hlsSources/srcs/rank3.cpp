#define MODULE_RANK 3

#include "MPI.h"

void rank3(hls::stream<stream_packet> * stream_out,
		hls::stream<stream_packet> * stream_in,
		int & state_out,
		ap_uint<1> & module_rank,
		int & packet_type){

#pragma HLS INTERFACE axis register both port=stream_in
#pragma HLS INTERFACE axis register both port=stream_out

	int recv_array[10];

	int s,p;
	ap_uint<1> m;

	while(!MPI_Recv(stream_out,stream_in,recv_array,10,MPI_INT,2,-1,0,s,m,p));

	state_out = s;
	module_rank = m;
	packet_type = p;

	for(int i = 0 ; i < 10 ;i++){
		int temp = recv_array[i]++;
	}

	while(!MPI_Send(stream_out,stream_in,recv_array,10,MPI_INT,4,-1,0));

	while(1);
}
