#include "galapagos.h"

void hlsTest(
             float  * mem ,            // global memory pointer
             hls::stream<galapagos_packet> *stream_in,                
             hls::stream<galapagos_packet> *stream_out
        )            
{

    
#pragma HLS INTERFACE axis port=stream_in
#pragma HLS INTERFACE axis port=stream_out
#pragma HLS INTERFACE m_axi port=mem depth=8

    galapagos_packet stream_packet;

    stream_out->write(stream_in->read());

    stream_packet = stream_in->read();

    int mem_addr;
    if(stream_packet.data == STREAM)
        stream_out->write(stream_in->read());
    else{
        stream_packet = stream_in->read();
        mem_addr = stream_packet.data;
        int offset = 0;
        while(!stream_packet.last){
            stream_packet = stream_in->read();
            mem[mem_addr + offset] = stream_packet.data;
        }
    }
}
