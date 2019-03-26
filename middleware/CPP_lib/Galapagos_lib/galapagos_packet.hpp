#ifndef __GALAPAGOS_PACKET_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_PACKET_HPP__

#include <cstddef>
#include <cstring>
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"
#include <memory>
#include "galapagos_packet.h"


class galapagos_packet{
    public:
        std::unique_ptr <char> buffer;
        hls::stream<galapagos_stream_packet>  stream;
        
        short dest;
	    int size;
        galapagos_packet(char * buff, int count, short dest_in);
	    //galapagos_packet(const galapagos_packet &gp2);
        ~galapagos_packet();
};

#endif
