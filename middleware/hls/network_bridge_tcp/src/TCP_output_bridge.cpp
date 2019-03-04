/************************************************
Copyright (c) 2016, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, 
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, 
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation 
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors 
may be used to endorse or promote products derived from this software 
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, 
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.// Copyright (c) 2015 Xilinx, Inc.
************************************************/


#include "galapagos_packet.h"
#include "echo_server_application.hpp"

using namespace hls;

#define DATA 1
#define ENVLP 0

#define C_SYNC_ENV_PACKET 0
#define C_CLR2SND_PACKET 1
#define C_DATA_PACKET 2
#define C_ASYNC_ENV_PACKET 3

#define PORT 7

#define ENVLP_SIZE 8

#define EMPTY 1000 


ap_uint<32> ip_table[256];

//struct ap_axis{
//
//	ap_int <64> data;
//	ap_uint <16> dest;
//	ap_uint<1> last;
//	ap_uint <8> keep;
//};

void sessionID_table_steaming(stream<ap_uint<16> >& firewal_read_dest,
							  stream<ap_uint<16> >& firewal_read_sid,
							  stream<ap_uint<16> >& firewal_write_dest,
							  stream<ap_uint<16> >& firewal_write_sid,
							  stream<ap_uint<16> >& client_read_dest,
							  stream<ap_uint<16> >& client_read_sid,
							  stream<ap_uint<16> >& client_write_dest,
							  stream<ap_uint<16> >& client_write_sid
	)
{
#pragma HLS PIPELINE II=1	
	//static bool init = 0;
	static ap_uint<32> sessionID_table[256] = {
#include "mem.init"
	};

	// if(!init){
	// 	for(int i = 0 ; i < 256 ;i++){
	// 		sessionID_table[i] = EMPTY;
	// 	}
	// 	init = 1;
	// }

	if(!firewal_read_dest.empty())
		firewal_read_sid.write(sessionID_table[firewal_read_dest.read()]);
	else if(!firewal_write_dest.empty() && !firewal_write_sid.empty())
		sessionID_table[firewal_write_dest.read()] = firewal_write_sid.read();
	else if(!client_read_dest.empty())
		client_read_sid.write(sessionID_table[client_read_dest.read()]);
	else if(!client_write_dest.empty() && !client_write_sid.empty())
		sessionID_table[client_write_dest.read()] = client_write_sid.read();
}


void open_port(	stream<ap_uint<16> >& listenPort,
				stream<bool>& listenPortStatus,
				stream<appNotification>& notifications,
				stream<appReadRequest>& readRequest)
{
#pragma HLS PIPELINE II=1

	static bool listenDone = false;
	static bool waitPortStatus = false;

	appNotification notification;

	// Open/Listen on Port at startup
	if (!listenDone && !waitPortStatus)
	{
#ifndef __SYNTHESIS__
		listenPort.write(11213);
#else
		//listenPort.write(11213);
		listenPort.write(7);
#endif
		waitPortStatus = true;
	}
	// Check if listening on Port was successful, otherwise try again
	else if (waitPortStatus && !listenPortStatus.empty())
	{
		listenPortStatus.read(listenDone);
		waitPortStatus = false;
	}

	// Receive notifications, about new data which is available
	if (!notifications.empty())
	{
		notifications.read(notification);
		std::cout << notification.ipAddress << "\t" << notification.dstPort << std::endl;
		if (notification.length != 0)
		{
			readRequest.write(appReadRequest(notification.sessionID, notification.length));
			//lenghtFifo.write(notification.length);
		}
	}
}

void firewall(	stream<ap_uint<16> >& rxMetaData,
				stream<axiWord>& rxData,
				stream<galapagos_packet>& stream_out,
				stream<ap_uint<16> >& firewal_read_dest,
				stream<ap_uint<16> >& firewal_read_sid,
				stream<ap_uint<16> >& firewal_write_dest,
				stream<ap_uint<16> >& firewal_write_sid
			)
{
#pragma HLS PIPELINE II=1


	// Reads new data from memory and writes it into fifo
	// Read & write metadata only once per package
	static ap_uint<3> ksvs_fsmState = 0;
//#pragma HLS DEPENDENCE variable=ksvs_fsmState inter false
	appNotification notification;

	static ap_uint<16> sessionID;
//#pragma HLS DEPENDENCE variable=sessionID inter false

	static axiWord currWord;
	ap_uint<16> dest;
	static galapagos_packet packet;
	static ap_uint<8> src;


	// Receive notifications, about new data which is available
	// if (!notifications.empty())
	// {
	// 	notifications.read(notification);
	// 	std::cout << notification.ipAddress << "\t" << notification.dstPort << std::endl;
	// 	if (notification.length != 0)
	// 	{
	// 		readRequest.write(appReadRequest(notification.sessionID, notification.length));
	// 		//lenghtFifo.write(notification.length);
	// 	}
	// }

	switch (ksvs_fsmState)
	{
	case 0:
		if (!rxMetaData.empty()){
			rxMetaData.read(sessionID);
			ksvs_fsmState = 1;
		}
		break;
	case 1:
		if (!rxData.empty())
		{
			currWord=rxData.read();
			packet.data = currWord.data;
			packet.last = currWord.last;
			packet.keep = currWord.keep;
			packet.dest = currWord.data(7,0);

			stream_out.write(packet);
			
			src = currWord.data(15,8);

			firewal_read_dest.write(src);
			ksvs_fsmState = 4;
		}
		break;
	case 4:
		if(!firewal_read_sid.empty()){
			if(firewal_read_sid.read() == EMPTY)
				ksvs_fsmState = 2;
			else
				ksvs_fsmState = 3;
		}
		break;
	case 2:{
			firewal_write_dest.write(src); 
			firewal_write_sid.write(sessionID);
			if (packet.last){
				ksvs_fsmState = 0;
			}
			else{
				ksvs_fsmState = 3;
			}
		}
		break;
	case 3:{
			if (packet.last){
				ksvs_fsmState = 0;
			}
			else if(!rxData.empty()){
				currWord = rxData.read();
				packet.data = currWord.data;
				packet.last = currWord.last;
				packet.keep = currWord.keep;
				packet.dest = currWord.data(7,0);
				stream_out.write(packet);
				ksvs_fsmState = 3;
			}
		}
		break;
	}
}


void client(	stream<galapagos_packet>& stream_in,
				stream<ap_int<17> >& txStatus,
				stream<appTxMeta>& txMetaData,
				stream<axiWord>& txData,
				stream<ap_uint<32> >& ip_fifo,
				stream<ap_uint<16> >& sessionID_fifo,
				//ap_uint<16> & sid_debug,
				stream<ap_uint<16> >& client_read_dest,
				stream<ap_uint<16> >& client_read_sid,
				stream<ap_uint<16> >& client_write_dest,
				stream<ap_uint<16> >& client_write_sid
				// int sessionID_table[256],
				// ap_uint<32> ip_table[256]
				)
{
#pragma HLS PIPELINE II=1

	// Reads new data from memory and writes it into fifo
	// Read & write metadata only once per package
	static ap_uint<3> esac_fsmState = 0;
//#pragma HLS DEPENDENCE variable=esac_fsmState inter false

	//static ap_uint<16> ksvc_length;

	static ap_uint<16> sessionID;
//#pragma HLS DEPENDENCE variable=sessionID inter false
	ap_uint<16> length;
	axiWord currWord;
	static galapagos_packet packet;
//	#pragma HLS DEPENDENCE variable=packet inter false

	//static ap_uint<16> dest_size[256];

	switch (esac_fsmState)
	{
		case 0:
			if (!stream_in.empty())
			{
				packet = stream_in.read();

				client_read_dest.write(packet.dest);
				esac_fsmState = 4;
			}
			break;
		case 4:
			if(!client_read_sid.empty()){
				sessionID = client_read_sid.read();
				//sid_debug = sid;
				if(sessionID == EMPTY){
					ip_fifo.write(ip_table[packet.dest]);
					esac_fsmState = 1;
				}
				else{
					// ap_uint<16> size;
					// if(packet.data(31,24) != C_DATA_PACKET){
					// 	size = ENVLP_SIZE;
					// 	// dest_size[packet.dest] = packet.data(47,32);
					// 	txMetaData.write(appTxMeta(sid,size));
					// }
					// else{
					// 	size = packet.data(47,32);
					// 	size += ENVLP_SIZE;
					// 	txMetaData.write(appTxMeta(sid,size));
					// }
					// esac_fsmState = 2;
					esac_fsmState = 5;
				}
			}
			break;
		case 1:
			if(!sessionID_fifo.empty()){
				//ap_uint<16> size;
				sessionID = sessionID_fifo.read();
				// if(packet.data(31,24) != C_DATA_PACKET){
				// 	size = ENVLP_SIZE;
				// 	//dest_size[packet.dest] = packet.data(47,32);
				// 	txMetaData.write(appTxMeta(sid,size));
					
				// }
				// else{
				// 	size = packet.data(47,32);
				// 	size += ENVLP_SIZE;
				// 	txMetaData.write(appTxMeta(sid,size));
				// }

				client_write_sid.write(sessionID);
				client_write_dest.write(packet.dest);

				// sessionID_table[packet.dest] = sid;
				//esac_fsmState = 2;
				esac_fsmState = 5;
			}
			break;
		case 5:{
				ap_uint<16> size;
				if(packet.data(23,16) != C_DATA_PACKET){
					size = ENVLP_SIZE;
					// dest_size[packet.dest] = packet.data(47,32);
					txMetaData.write(appTxMeta(sessionID,size));
				}
				else{
					size = packet.data(47,24);
					size += ENVLP_SIZE;
					txMetaData.write(appTxMeta(sessionID,size));
				}
				esac_fsmState = 6;
			}
			break;
		case 6:{
				if(!txStatus.empty()){
				ap_int<17> tx_not_busy = txStatus.read();
					if(tx_not_busy < 0){
						esac_fsmState = 5;
					}
					else{
						esac_fsmState = 2;
					}
				}
			}
			break;
		case 2:{
				currWord.data = packet.data;
				currWord.last = packet.last;
				currWord.keep = packet.keep;
				txData.write(currWord);
				if (currWord.last){
					esac_fsmState = 0;
				}
				else{
					esac_fsmState = 3;
				}
			}
			break;
		case 3:{
			if (!stream_in.empty())
			{
				stream_in.read(packet);
				currWord.data = packet.data;
				currWord.last = packet.last;
				currWord.keep = packet.keep;
				txData.write(currWord);
				if (currWord.last){
					esac_fsmState = 0;
				}
			}
			break;
		}
	}

	// if(!txStatus.empty())
	// 	txStatus.read();

}

void open_connections(stream<ap_uint<32> >& ip_fifo,stream<ipTuple>& openConnection, stream<openStatus>& openConStatus,
			stream<ap_uint<16> >& closeConnection, stream<ap_uint<16> >& sessionID_fifo
			)
{
	#pragma HLS PIPELINE II=1

	openStatus newConn;
	ipTuple tuple;
	static bool wait_for_connection = 0;

	if(!ip_fifo.empty() && !wait_for_connection){
		tuple.ip_address = ip_fifo.read();
		tuple.ip_port = PORT;
		openConnection.write(tuple);
		wait_for_connection = 1;
	}
	else if (wait_for_connection && !openConStatus.empty())
	{
		openConStatus.read(newConn);
		wait_for_connection = 0;
		sessionID_fifo.write(newConn.sessionID);
	}
}

void TCP_output_bridge(stream<galapagos_packet>& stream_in,
						stream<appTxMeta>& txMetaData,
						stream<ipTuple>& openConnection,
						stream<openStatus>& openConStatus,
						stream<ap_uint<16> >& closeConnection,
						stream<axiWord> & txData,
						stream<ap_int<17> >& txStatus,
						stream<ap_uint<16> >& listenPort,
						stream<bool>& listenPortStatus,
						stream<appNotification>& notifications,
						stream<appReadRequest>& readRequest,
						stream<ap_uint<16> >& rxMetaData,
						stream<axiWord>& rxData,
						stream<galapagos_packet>& stream_out
						)
{


#pragma HLS resource core=AXI4Stream variable=listenPort metadata="-bus_bundle m_axis_listen_port"
#pragma HLS resource core=AXI4Stream variable=listenPortStatus metadata="-bus_bundle s_axis_listen_port_status"

#pragma HLS resource core=AXI4Stream variable=notifications metadata="-bus_bundle s_axis_notifications"
#pragma HLS resource core=AXI4Stream variable=readRequest metadata="-bus_bundle m_axis_read_package"
#pragma HLS DATA_PACK variable=notifications
#pragma HLS DATA_PACK variable=readRequest

#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS DATA_PACK variable=stream_out

#pragma HLS resource core=AXI4Stream variable=rxMetaData metadata="-bus_bundle s_axis_rx_metadata"
#pragma HLS resource core=AXI4Stream variable=rxData metadata="-bus_bundle s_axis_rx_data"
#pragma HLS DATA_PACK variable=rxData

	#pragma HLS DATAFLOW
	#pragma HLS INTERFACE ap_ctrl_none port=return
	//#pragma HLS PIPELINE II=1

#pragma HLS resource core=AXI4Stream variable=openConnection metadata="-bus_bundle m_axis_open_connection"
#pragma HLS resource core=AXI4Stream variable=openConStatus metadata="-bus_bundle s_axis_open_status"
#pragma HLS DATA_PACK variable=openConnection
#pragma HLS DATA_PACK variable=openConStatus
#pragma HLS resource core=AXI4Stream variable=closeConnection metadata="-bus_bundle m_axis_close_connection"
#pragma HLS resource core=AXI4Stream variable=txMetaData metadata="-bus_bundle m_axis_tx_metadata"
#pragma HLS resource core=AXI4Stream variable=txData metadata="-bus_bundle m_axis_tx_data"
#pragma HLS resource core=AXI4Stream variable=txStatus metadata="-bus_bundle s_axis_tx_status"
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable=txMetaData
#pragma HLS DATA_PACK variable=txData
#pragma HLS DATA_PACK variable=stream_in

	static stream<ap_uint<16> >		esa_sessionidFifo("esa_sessionidFifo");
	static stream<ap_uint<16> >		esa_lengthFifo("esa_lengthFifo");
	static stream<ap_uint<32> >			ip_fifo("ip_fifo");
	static stream<ap_uint<16> >			sessionID_fifo("sessionID_fifo");


	static stream<ap_uint<16> > firewal_read_dest;
	static stream<ap_uint<16> > firewal_read_sid;
	static stream<ap_uint<16> > firewal_write_dest;
	static stream<ap_uint<16> > firewal_write_sid;
	static stream<ap_uint<16> > client_read_dest;
	static stream<ap_uint<16> > client_read_sid;
	static stream<ap_uint<16> > client_write_dest;
	static stream<ap_uint<16> > client_write_sid;



#pragma HLS stream variable=esa_sessionidFifo depth=64
#pragma HLS stream variable=esa_lengthFifo depth=64
#pragma HLS stream variable=ip_fifo depth=256
#pragma HLS stream variable=sessionID_fifo depth=256



#pragma HLS stream variable=firewal_read_dest depth=256
#pragma HLS stream variable=firewal_read_sid depth=256
#pragma HLS stream variable=firewal_write_dest depth=256
#pragma HLS stream variable=firewal_write_sid depth=256
#pragma HLS stream variable=client_read_dest depth=256
#pragma HLS stream variable=client_read_sid depth=256
#pragma HLS stream variable=client_write_dest depth=256
#pragma HLS stream variable=client_write_sid depth=256
//#pragma HLS DATA_PACK variable=kvs_dataFifo

	// static ap_uint<1> init = 0;
	// if(!init){
	// 	for(int i = 0 ; i < 256 ;i++){
	// 		sessionID_table[i] = sessionID_table_in[i];
	// 		ip_table[i] = ip_table_in[i];
	// 	}
	// 	init = 1;
	// }

	client(stream_in,txStatus, txMetaData, txData,ip_fifo,sessionID_fifo,client_read_dest,client_read_sid,client_write_dest,client_write_sid);
	open_connections(ip_fifo,openConnection, openConStatus, closeConnection,sessionID_fifo);
	open_port(listenPort, listenPortStatus,notifications, readRequest);
	firewall(rxMetaData, rxData, stream_out,firewal_read_dest,firewal_read_sid,firewal_write_dest,firewal_write_sid);

	sessionID_table_steaming(firewal_read_dest,firewal_read_sid,firewal_write_dest,firewal_write_sid,
		client_read_dest,client_read_sid,client_write_dest,client_write_sid);

	// server(rxMetaData, rxData, esa_sessionidFifo, esa_dataFifo);
	// open_port(listenPort, listenPortStatus, notifications, readRequest, esa_lengthFifo);
	// dummy(openConnection, openConStatus, closeConnection, txStatus);


}
