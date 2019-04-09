#ifndef __GALAPAGOS_ROUTER_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_ROUTER_HPP__

#include <map>
#include <assert.h>
#include "galapagos_packet.h"
#include "galapagos_stream.hpp"
#include "galapagos_kernel.hpp"



namespace galapagos{
    class router{
        protected:
            std::vector <std::unique_ptr <stream>  >  s_axis;
            std::vector <std::unique_ptr <stream>  >  m_axis;
            bool _done;
            std::mutex  mutex;
        public:
            router(){;}
            router(int num_ports);
            ~router(){;}
            
            void init_ports(int num_ports);
            void add_stream(streaming_core * _gsc);
            galapagos::stream_packet read(short id);
            size_t m_size(short id);
            size_t s_size(short id);
            void write(galapagos::stream_packet _gps);
            
            virtual void route() = 0;
            virtual void start() = 0;
    };
}



#endif
