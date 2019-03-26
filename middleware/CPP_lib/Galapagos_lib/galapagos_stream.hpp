#ifndef __GALAPAGOS_STREAM_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_STREAM_HPP__

#include <cstddef>
#include <cstring>
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"
#include <memory>
#include <mutex>

#include "galapagos_packet.h"





class galapagos_stream{
        
    private:
        hls::stream<galapagos_stream_packet>  * stream;
    public:
#ifdef CPU
        std::mutex  mutex;
#endif
        galapagos_stream(hls::stream <galapagos_stream_packet> * _stream);
        void write(galapagos_stream_packet gps);
        galapagos_stream_packet read();
        size_t size();
};

#endif
