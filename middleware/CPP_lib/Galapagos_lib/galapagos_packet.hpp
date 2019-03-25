#ifndef __GALAPAGOS_PACKET_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_PACKET_HPP__

#include <cstring>

class galapagos_packet{
    public:
        char * buffer;
        short dest;
	int size;
        galapagos_packet(char * buff, int count, short dest_in);
	galapagos_packet(const galapagos_packet &gp2);
        ~galapagos_packet();
};

#endif
