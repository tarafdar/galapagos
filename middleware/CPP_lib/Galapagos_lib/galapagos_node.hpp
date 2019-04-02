#ifndef __GALAPAGOS_NODE_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_NODE_HPP__

#include <map>
#include <assert.h>
#include "galapagos_packet.h"
#include "galapagos_stream.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"

namespace galapagos{
    class node{
        private:
            std::unique_ptr <galapagos::router> my_router;
            std::vector < std::unique_ptr<galapagos::kernel > > kernels;
    
        public:
            node(std::vector <std::string>  _kern_info_table, std::string _my_address);
            void add_kernel(short id, void (*func)(stream *, stream *));
            void add_kernel(short id, void (*func)());
            void start(bool enable);
            void end();
    };
}



#endif
