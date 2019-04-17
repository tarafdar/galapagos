#ifndef __GALAPAGOS_STREAM_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_STREAM_HPP__

#include <cstddef>
#include <cstring>
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

#ifdef CPU
#include <memory>
#include <mutex>
#include <condition_variable>
#endif

#include "galapagos_packet.h"



#ifdef CPU
namespace galapagos{
    class stream{
         
        private:
            
            std::mutex  mutex;
            std::unique_ptr < std::queue <galapagos::stream_packet> > _stream;
            std::condition_variable cv;
        public:
            stream();
            //stream(std::string _name);
            //std::vector<ap_uint<64> > read(size_t *size, short * dest);
            void write(char * buffer, int size, short  dest);
            bool try_read(galapagos::stream_packet &gp);
            bool try_peak(galapagos::stream_packet &gp);
            void write(galapagos::stream_packet gps);
            std::vector<ap_uint<PACKET_DATA_LENGTH> > read(int * dest);
            galapagos::stream_packet read();
            bool empty();
            size_t size();
            short id;
            void lock();
            void unlock();
    //        std::string name;
    };
}
#else            
typedef hls::stream <galapagos::stream_packet>  galapagos::stream;

#endif
#endif
