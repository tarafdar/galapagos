//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================


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

#include "galapagos_stream.hpp"
#include "galapagos_streaming_core.hpp"
#include "galapagos_packet.h"

namespace galapagos {
    template <typename T> 
    class kernel: public streaming_core<T>{
   

        private:
            void (*func_str)(stream <T> *, stream <T> *);
            void (*func)();
        public:
            kernel(short _id);
            kernel(short _id, stream <T> * _in, stream <T> * _out);
            ~kernel(){std::cout << "IN KERNEL DESTRUCTOR " << std::endl;}
            void set_func(void (*_func)(stream <T> *, stream <T> *));
            void set_func(void (*_func)());
            
            void start(void (*func)(stream<T> *, stream <T> *));
            void start(void  (*func)());
            void start();
            void barrier();
            
    };
}

#endif
