#include "MPI.h"

void sender(stream<stream_packet> * stream_out,
		stream<stream_packet> * stream_in){
#pragma HLS INTERFACE axis register both port=stream_in
#pragma HLS INTERFACE axis register both port=stream_out

	int to_send_array[10];
//section_11:{
//#pragma HLS protocol fixed
	for(int i = 0; i < 10; i++)
		to_send_array[i] = i;


	int state = 0,dest=0;
//}
	while(!MPI_Send(stream_out,stream_in,to_send_array,10,MPI_INT,2,-1,0));
//	MPI_Send(stream_out,stream_in,to_send_array,10,MPI_INT,2,-1,0);
//	wait();
//section_2:{
//#pragma HLS protocol fixed
	while(!MPI_Recv(stream_out,stream_in,to_send_array,10,MPI_INT,2,-1,0));
//}
//	wait();
//section_3:{
//#pragma HLS protocol fixed
	while(!MPI_Send(stream_out,stream_in,to_send_array,10,MPI_INT,3,-1,0));
//}
	//wait();
}


