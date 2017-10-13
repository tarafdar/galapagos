#include "MPI.h"

void recver(hls::stream<stream_packet> * stream_out,
		hls::stream<stream_packet> * stream_in,
		int & out,
		int & state_out){
#pragma HLS INTERFACE ap_none port=state_out
#pragma HLS INTERFACE ap_none port=out
#pragma HLS INTERFACE axis register both port=stream_in
#pragma HLS INTERFACE axis register both port=stream_out

	int recv_array[10];


	while(!MPI_Recv(stream_out,stream_in,recv_array,10,MPI_INT,1,-1,0));
//	MPI_Recv(stream_out,stream_in,recv_array,10,MPI_INT,1,-1,0,state_out);
//section_11:{
//#pragma HLS protocol fixed
	for(int i = 0 ; i < 10 ;i++){
//		wait();
		int temp = recv_array[i]++;
	}
//}
//section_2:{
//#pragma HLS protocol fixed
	out = recv_array[9];
	while(!MPI_Send(stream_out,stream_in,recv_array,10,MPI_INT,1,-1,0));
//	wait();
//}
//section_3:{
//#pragma HLS protocol fixed
	while(!MPI_Recv(stream_out,stream_in,recv_array,10,MPI_INT,0,-1,0));
	//wait();
//section_31:{
//#pragma HLS protocol fixed
	for(int i = 0 ; i < 10 ;i++)
			recv_array[i]++;
	out = recv_array[9];
//	wait();
//}
//section_4:{
//#pragma HLS protocol fixed
	while(!MPI_Send(stream_out,stream_in,recv_array,10,MPI_INT,0,-1,0));
//	wait();
//}

}
