//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

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
    template <typename T> 
    class stream{
         
        private:
            
            std::mutex  mutex;
            std::unique_ptr < std::queue <galapagos::stream_packet <T> > > _stream;
            std::condition_variable cv;
        public:
            stream();
            //stream(std::string _name);
            //std::vector<ap_uint<64> > read(size_t *size, short * dest);
            void write(char * buffer, int size, short  dest);
            bool try_read(galapagos::stream_packet<T> &gp);
            bool try_peak(galapagos::stream_packet<T> &gp);
            void write(galapagos::stream_packet <T> gps);
            //std::vector<ap_uint<PACKET_DATA_LENGTH> > read(int * dest);
            std::vector< T > read(int * dest);
            galapagos::stream_packet<T> read();
            bool empty();
            size_t size();
            short id;
            void lock();
            void unlock();
    //        std::string name;
    };
}

//template <typename T> 
//using galapagos_stream = galapagos::stream <T>;
//
typedef galapagos::stream <ap_uint <PACKET_DATA_LENGTH> > galapagos_stream;
typedef galapagos::stream <float> galapagos_stream_float;
typedef galapagos::stream <double> galapagos_stream_double;
#else            


typedef hls::stream <galapagos_stream_packet> galapagos_stream;
typedef hls::stream<galapagos_packet <float> > galapagos_stream_float;
typedef hls::stream<galapagos_packet <double> > galapagos_stream_double;
//template <typename T>
//struct galapagos_stream_float{
//    hls::stream<galapagos_packet <T> > _stream;
//    galapagos_packet <T> read(){
//        return _stream.read();
//    }
//    void write(galapagos_packet <T> gp){
//        _stream.write(gp);
//    }
//    size_t size(){
//        return _stream.size();
//    }
//
//};

//struct galapagos_stream:: public hls::stream<galapagos_packet <T> >  {
//};

//template <typename T> 
//typedef hls::stream <galapagos_packet <T> >  galapagos_stream;

#endif
#endif
