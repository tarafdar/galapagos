#ifndef GALAPAGOS_PACKET_H
#define GALAPAGOS_PACKET_H


#include "hls_stream.h"
#include "ap_int.h"
#include "packet_size.h"


struct galapagos_stream_packet {


    ap_uint <PACKET_DATA_LENGTH> data;
#ifdef PACKET_DEST_LENGTH  
    ap_uint <PACKET_DEST_LENGTH> dest;
#endif   
#ifdef PACKET_LAST  
    ap_uint <1> last;
#endif   
#ifdef PACKET_ID_LENGTH  
    ap_uint <PACKET_ID_LENGTH> id;
#endif   
#ifdef PACKET_USER_LENGTH  
    ap_uint <PACKET_USER_LENGTH> user;
#endif   
#ifdef PACKET_KEEP_LENGTH  
    ap_uint <PACKET_KEEP_LENGTH> keep;
#endif   



};


#endif
