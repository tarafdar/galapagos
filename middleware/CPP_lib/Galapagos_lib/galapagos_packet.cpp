#include "galapagos_packet.hpp"

#include <iostream>

galapagos_packet::galapagos_packet(char * buff, int count, short dest_in){


    ap_uint <PACKET_DATA_LENGTH> * head = (ap_uint <PACKET_DATA_LENGTH> *)buff;
    buffer = std::make_unique<char>(count);
    memcpy(buffer.get(), buff, count);
    
    size = count;
    dest = dest_in;


    for(int i=0; i<count; i+=PACKET_DATA_LENGTH){
        galapagos_stream_packet gps;
        gps.data = *head;
#ifdef PACKET_DEST_LENGTH  
        gps.dest = dest;
#endif   
#ifdef PACKET_LAST
        if(i<count-PACKET_DATA_LENGTH)
            gps.last = 0;
        else
            gps.last = 1;
        head++;
        stream.write(gps);
#endif   
    }

}

//galapagos_packet::galapagos_packet(const galapagos_packet &gp2){
//    buffer = gp2.buffer;
//    size = gp2.size;
//    dest = gp2.dest;
//}

galapagos_packet::~galapagos_packet(){
//    if(buffer != nullptr)
//    	delete [] buffer;
}

