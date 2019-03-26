#ifndef __GALAPAGOS_KERNEL_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_KERNEL_HPP__


#include <algorithm>
#include <memory>
#include <thread>
#include <queue>
#include <mutex>


#include "galapagos_stream.hpp"



class galapagos_kernel{
   
    private:
        short id;
        std::unique_ptr <std::thread> t;

    //protected:
        //void send(char * buff, unsigned int count, short dest);
        //void send(hls::stream<galapagos_stream_packet> &);
        //std::shared_ptr <galapagos_packet> recv();

    public:
        galapagos_kernel(short id_in);
        galapagos_stream  * in;
        galapagos_stream  * out;
        
        //std::queue <std::shared_ptr <galapagos_packet> > in;
        //std::queue <std::shared_ptr <galapagos_packet> > out;
        std::mutex out_mutex;
        std::mutex in_mutex;
        //void start(void * (func)(hls::stream<galapagos_stream_packet *>, hls::stream<galapagos_stream_packet *>), hls::stream<galapagos_stream_packet> * in, hls::stream<galapagos_stream_packet> * out);
        //void start(void  (*func)(void * args), void * args);
        void start(void (*func)(galapagos_stream*, galapagos_stream*), galapagos_stream* in, galapagos_stream* out);
        void start(void  (*func)());
};


#endif
