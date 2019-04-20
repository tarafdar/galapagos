//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#ifndef __GALAPAGOS_ROUTER_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_ROUTER_HPP__

#include <map>
#include <assert.h>
#include "galapagos_packet.h"
#include "galapagos_stream.hpp"
#include "galapagos_kernel.hpp"



namespace galapagos{
template <typename T> 
    class router{
        protected:
            std::vector <std::unique_ptr <stream <T> >  >  s_axis;
            std::vector <std::unique_ptr <stream <T> >  >  m_axis;
            bool * done;
            std::mutex  * mutex;
            bool is_done();
        public:
            router(){;}
            router(bool * _done, std::mutex * _mutex);
            router(bool * _done, std::mutex * _mutex, int num_ports);
            ~router(){;}
            void add_port(int index);            
            void init_ports(int num_ports);
            void add_stream(streaming_core <T> * _gsc, int index);
            galapagos::stream_packet<T> read(short id);
            size_t m_size(short id);
            size_t s_size(short id);
            void write(galapagos::stream_packet<T> _gps);
            stream<T> * get_s_axis(short id);
            stream<T> * get_m_axis(short id);

            virtual void route() = 0;
            virtual void start() = 0;
    };
}



#endif
