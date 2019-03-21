#ifndef __GALAPAGOS_PACKET_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_PACKET_HPP__

class galapagos_packet{
    public:
        char * buffer;
        short dest;
	int size;
        galapagos_packet(char * buff);
        ~galapagos_packet();
};

#endif
