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
#include "galapagos_packet.h"

namespace galapagos {
    class kernel{
        friend class router;
    
        private:
            std::unique_ptr <std::thread> t;
            stream  * in;
            stream  * out;
            void (*func_str)(stream *, stream *);
            void (*func)();
        public:
            short id;
            kernel(short _id);
            kernel(short _id, stream * _in, stream *_out);
            void set_func(void (*_func)(stream *, stream *));
            void set_func(void (*_func)());
            
            void start(void (*func)(stream *, stream *));
            void start(void  (*func)());
            void start();
            void barrier();
            bool done();
            
    };
}

#endif
