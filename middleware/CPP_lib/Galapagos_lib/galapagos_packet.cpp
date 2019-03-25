#include "galapagos_packet.hpp"

#include <iostream>

galapagos_packet::galapagos_packet(char * buff, int count, short dest_in){
    buffer = buff;
    size = count;
    dest = dest_in;
}

galapagos_packet::galapagos_packet(const galapagos_packet &gp2){
    buffer = gp2.buffer;
    size = gp2.size;
    dest = gp2.dest;
}

galapagos_packet::~galapagos_packet(){
    std::cout << "in destructor " << std::endl;
//    if(buffer != nullptr)
//    	delete [] buffer;
}

