#include "galapagos_packet.hpp"

galapagos_packet::galapagos_packet(int buff_len){
    buffer = new char[buff_len]
}

galapagos_packet::~galapagos_packet(){
    delete [] buffer;
}

