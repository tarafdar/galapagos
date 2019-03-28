#ifndef __GALAPAGOS_KERNEL_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_KERNEL_HPP__

#include <cstddef>
#include <cstring>
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

#include <algorithm>
#include <memory>
#include <thread>
#include <queue>
#include <mutex>

#include "galapagos_packet.h"


class galapagos_kernel{
   
    private:
        std::unique_ptr <std::thread> t;
        hls::stream <galapagos_stream_packet>  * in;
        hls::stream <galapagos_stream_packet>  * out;
    public:
        short id;
        galapagos_kernel(short _id);
        galapagos_kernel(short _id, hls::stream <galapagos_stream_packet> * _in, hls::stream <galapagos_stream_packet> *_out);
        
        void start(void (*func)(hls::stream <galapagos_stream_packet> *, hls::stream <galapagos_stream_packet> *));
        void start(void  (*func)());
        void barrier();
        bool done();
        
};


#endif
