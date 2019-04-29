#ifndef GALAPAGOS_PACKET_H
#define GALAPAGOS_PACKET_H


#include "hls_stream.h"
#include "ap_int.h"
#include "packet_size.h"



#ifdef CPU

namespace galapagos{
    template <typename T> 
    struct stream_packet {


        //ap_uint <PACKET_DATA_LENGTH> data;
        T data;
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
}

template <typename T> 
using galapagos_packet = galapagos::stream_packet <T>;
typedef galapagos::stream_packet <ap_uint<64> > galapagos_stream_packet;

#else

//typedef struct{
//    
//    //ap_uint <PACKET_DATA_LENGTH> data;
//    double data;
//#ifdef PACKET_DEST_LENGTH  
//    ap_uint <PACKET_DEST_LENGTH> dest;
//#endif   
//#ifdef PACKET_LAST  
//    ap_uint <1> last;
//#endif   
//#ifdef PACKET_ID_LENGTH  
//    ap_uint <PACKET_ID_LENGTH> id;
//#endif   
//#ifdef PACKET_USER_LENGTH  
//    ap_uint <PACKET_USER_LENGTH> user;
//#endif   
//#ifdef PACKET_KEEP_LENGTH  
//     ap_uint <PACKET_KEEP_LENGTH> keep;
//#endif   
//
//
//}galapagos_packet_float;

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



template <typename T> 
struct galapagos_packet{


    //ap_uint <PACKET_DATA_LENGTH> data;
    T data;
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



#endif // if not CPU 



#endif //GUARD
