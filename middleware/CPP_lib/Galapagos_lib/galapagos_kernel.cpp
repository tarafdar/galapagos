#include "galapagos_kernel.hpp"

#include <iostream>



galapagos_kernel::galapagos_kernel(
        short _id,
        hls::stream <galapagos_stream_packet>  * _in,
        hls::stream <galapagos_stream_packet>  * _out
        )
{
    
    id = _id;
    in = _in;
    out = _out;
}

galapagos_kernel::galapagos_kernel(
        short _id
        )
{
    
    id = _id;
    in = nullptr;
    out = nullptr;
}



void galapagos_kernel::start(void (*func)(hls::stream <galapagos_stream_packet> *, hls::stream<galapagos_stream_packet> *)){

    t=std::make_unique< std::thread>(func, in, out);

}


void galapagos_kernel::barrier(){
    
    t.get()->join();

}

void galapagos_kernel::start
    (void (*func)()){

    t=std::make_unique< std::thread>(func);

}


bool galapagos_kernel::done(){
    return !(t.get()->joinable());
}













//// sends to other kernels
//// Checks to see where kernel is
//void galapagos_kernel::send(char * buff, unsigned int count, short dest, hls::stream <galapagos_stream_packet> * out){
//
//    std::lock_guard<std::mutex> guard(out_mutex);
//    galapagos_packet gp(buff, count, dest);
//    for(int i=0; i<gp.stream.size(); i++)
//        out->write(gp.stream.read());
//    
//
//}
//
//// sends to other kernels
//// Checks to see where kernel is
//void galapagos_kernel::send(hls::stream <galapagos_stream_packet> * in, hls::stream <galapagos_stream_packet> * out){
//
//    std::lock_guard<std::mutex> guard(out_mutex);
//    for(int i=0; i<in->size(); i++)
//        out->write(in->read());
//    
//
//}
//
//
//
//// reads buffer populated by other drivers
//galapagos_stream_packet <galapagos_packet> galapagos_kernel::recv(){
//
//    std::lock_guard<std::mutex> guard(in_mutex);
//    std::shared_ptr <galapagos_packet> retPtr = in.front();
//    in.pop();
//    return retPtr;
//}
//
