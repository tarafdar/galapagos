#include "galapagos_packet.hpp"

galapagos_packet::galapagos_packet(char * buff){
    buffer = buff;
}

galapagos_packet::~galapagos_packet(){
    if(buffer != nullptr)
    	delete [] buffer;
}

