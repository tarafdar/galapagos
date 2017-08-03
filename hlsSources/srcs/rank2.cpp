#include "ap_int.h"
#include "ap_cint.h"
#include "hls_stream.h"
#include "ap_utils.h"


#define MODULE_RANK 2


#define C_SYNC_ENV_PACKET 0
#define C_CLR2SND_PACKET 1
#define C_DATA_PACKET 2
#define C_ASYNC_ENV_PACKET 3

enum MPI_DATA_TYPE{MPI_INT = 0,MPI_FLOAT,MPI_SHORT,MPI_CHAR};

using namespace hls;


struct envelope{
	ap_uint<8> SRC;
	ap_uint<8> DEST;
	ap_uint<16> NDW;
	ap_uint<3> PKT_TYPE;
	ap_uint<7> not_used;
	ap_uint<22> MSG_SIZE;
	ap_uint<32> TAG;
	ap_uint<32> not_used_2;
};


ap_uint<128> envelope_to_packet(envelope envlp){
	ap_uint<128> packet;
	packet(7,0) = envlp.SRC;
	packet(15,8) = envlp.DEST;
	packet(31,16) = envlp.NDW;
	packet(34,32) = envlp.PKT_TYPE;
	packet(41,35) = envlp.not_used;
	packet(63,42) = envlp.MSG_SIZE;
	packet(95,64) = envlp.TAG;
	packet(127,96) = envlp.not_used_2;
	return packet;
}

envelope packet_to_envelope(ap_uint<128> packet){
	envelope envlp;
	envlp.SRC=packet(7,0);
	envlp.DEST=packet(15,8);
	envlp.NDW=packet(31,16);
	envlp.PKT_TYPE=packet(34,32);
	envlp.not_used=packet(41,35);
	envlp.MSG_SIZE=packet(63,42);
	envlp.TAG=packet(95,64);
	envlp.not_used_2=packet(127,96);
	return envlp;
}

int MPI_Recv(stream<ap_uint<128> > * stream_out,
		stream<ap_uint<128> > * stream_in,
		int * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int source,
		int tag,
		int MPI_Comm,
		int & state_out){

	static enum State {IDLE = 0,CLR2SND_SEND, DATA_RECV_LOOP} state;

//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}

	static envelope envlp;

	switch(state){
	case IDLE:{
		//if(!stream_in->empty()){
			ap_uint<128> recv_pkt;
			recv_pkt = stream_in->read();
			envelope temp;
			envlp = packet_to_envelope(recv_pkt);
			if(envlp.PKT_TYPE == C_SYNC_ENV_PACKET && envlp.DEST == MODULE_RANK){
				state = CLR2SND_SEND;
			}
		//}
	}
	break;
	case CLR2SND_SEND:{
		//if(!stream_out->full()){
			envelope clr2snd;
			clr2snd.DEST = envlp.SRC;
			clr2snd.SRC = envlp.DEST;
			clr2snd.PKT_TYPE = C_CLR2SND_PACKET;
			ap_uint<128> pkt_out;
			pkt_out = envelope_to_packet(clr2snd);
			stream_out->write(pkt_out);
			state = DATA_RECV_LOOP;
		//}
	}
	break;
	case DATA_RECV_LOOP: { // count or message size?
		ap_uint<128> recv_data;
		//if(!stream_in->empty()){
			for(int i = 0 ; i < count ; i+=4){
				recv_data = stream_in->read();
				if(i < count)
					buf[i] = recv_data(31,0);
				if(i+1 < count)
					buf[i+1] = recv_data(63,32);
				if(i+2 < count)
					buf[i+2] = recv_data(95,64);
				if(i+3 < count)
					buf[i+3] = recv_data(127,96);
		//	}
//  			for(int i = 0 ; i < count;i++)
//				std::cout <<" recv : "<< int_buf[i] << std::endl;
		}
		state = IDLE;
	}
	break;
	}
	state_out = state;
}

int MPI_Send(stream<ap_uint<128> > * stream_out,
		stream<ap_uint<128> > * stream_in,
		int * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int dest,
		int tag,
		int MPI_Comm)
{
	static enum State {IDLE = 0,CLR2SND_WAIT, DATA_SEND_LOOP} state;

//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}

	envelope envlp;

	switch(state){
	case IDLE:{
		envlp.SRC = MODULE_RANK;
		envlp.DEST = dest;
		if(dataType == MPI_INT || dataType == MPI_FLOAT){
			envlp.MSG_SIZE = count;
		}
		else if(dataType == MPI_SHORT){
			envlp.MSG_SIZE = count*2;
		}
		else if(dataType == MPI_CHAR){
			envlp.MSG_SIZE = count*4;
		}
		else{
			return -1;
		}
		envlp.NDW = count + 3;
		envlp.PKT_TYPE = C_SYNC_ENV_PACKET;
		envlp.TAG = tag;
		//if(!stream_out->full()){
			ap_uint<128> pkt_out;
			pkt_out = envelope_to_packet(envlp);
			stream_out->write(pkt_out);
			state = CLR2SND_WAIT;
		//}
	}
	break;
	case CLR2SND_WAIT:{
		if(!stream_in->empty()){
			ap_uint<128> recv_pkt;
			recv_pkt = stream_in->read();
			envelope temp;
			temp = packet_to_envelope(recv_pkt);
			if(temp.PKT_TYPE == C_CLR2SND_PACKET){
				state = DATA_SEND_LOOP;
			}
		}
	}
	break;
	case DATA_SEND_LOOP: {
		ap_uint<128> to_send_data;
		for(int i = 0 ; i < count ; i+=4){
			if(i < count)
				to_send_data(31,0) = buf[i];
			if(i+1 < count)
				to_send_data(63,32) = buf[i+1];
			if(i+2 < count)
				to_send_data(95,64) = buf[i+2];
			if(i+3 < count)
				to_send_data(127,96) = buf[i+3];
			stream_out->write(to_send_data);
		}
		state = IDLE;
	}
	break;
	}
}

void recver(stream<ap_uint<128> > * stream_out,
		stream<ap_uint<128> > * stream_in,
		int & out,
		int & state_out){
#pragma HLS INTERFACE ap_none port=state_out
#pragma HLS INTERFACE ap_none port=out
#pragma HLS INTERFACE axis register both port=stream_in
#pragma HLS INTERFACE axis register both port=stream_out

	int recv_array[10];
	MPI_Recv(stream_out,stream_in,recv_array,10,MPI_INT,1,-1,0,state_out);
	for(int i = 0 ; i < 10 ;i++)
		recv_array[i]++;
	out = recv_array[9];
	MPI_Send(stream_out,stream_in,recv_array,10,MPI_INT,1,-1,0);

	MPI_Recv(stream_out,stream_in,recv_array,10,MPI_INT,0,-1,0,state_out);
	for(int i = 0 ; i < 10 ;i++)
			recv_array[i]++;
	out = recv_array[9];
	MPI_Send(stream_out,stream_in,recv_array,10,MPI_INT,0,-1,0);

}
