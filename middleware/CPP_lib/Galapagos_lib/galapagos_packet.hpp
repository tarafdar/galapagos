#ifndef __GALAPAGOS_PACKET_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_PACKET_HPP__

class galapagos_packet{
    public:
        char * buffer;
        short dest;
        galapagos_packet(int buff_len);
        ~galapagos_packet();
}

#endif
