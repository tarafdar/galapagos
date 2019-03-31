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
    class kernel: public streaming_core{
        friend class router;
   

        private:
            void (*func_str)(stream *, stream *);
            void (*func)();
        public:
            kernel(short _id);
            kernel(short _id, stream * _in, stream * _out);
            void set_func(void (*_func)(stream *, stream *));
            void set_func(void (*_func)());
            
            void start(void (*func)(stream *, stream *));
            void start(void  (*func)());
            void start();
            //void barrier();
            //bool done();
            
    };
}

#endif
