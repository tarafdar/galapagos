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




namespace galapagos{
    class stream{
         
        private:
            
    #ifdef CPU
            std::mutex  mutex;
    //        std::queue <galapagos::stream_packet>  * stream;
            std::unique_ptr < std::queue <galapagos::stream_packet> > _stream;
    #else
            hls::stream <galapagos::stream_packet>  * _stream;
    #endif
        public:
    #ifdef CPU
            stream();
            std::mutex * get_mutex();
            size_t size_ns();
            galapagos::stream_packet front();
            galapagos::stream_packet peek_ns();
            void write_ns(galapagos::stream_packet gps);
            void pop_ns();
            std::vector<ap_uint<64> > read(size_t *size, short * dest);
            void write(char * buffer, int size, short  dest);
    #else
            stream(hls::stream <galapagos::stream_packet> * __stream);
    #endif
            void write(galapagos::stream_packet gps);
            galapagos::stream_packet read();
            bool empty();
            size_t size();
    };
}
#endif
