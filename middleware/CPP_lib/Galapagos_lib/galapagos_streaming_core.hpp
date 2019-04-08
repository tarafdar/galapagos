#ifndef __GALAPAGOS_STREAMING_CORE_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_STREAMING_CORE_HPP__

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
#include <condition_variable>


#include "galapagos_stream.hpp"
#include "galapagos_packet.h"

namespace galapagos {
    class streaming_core{

        public:
            std::vector < std::unique_ptr <std::thread> > t_vect;
            stream  * in;
            stream  * out;
            short id;
            streaming_core(short _id);
            streaming_core(short _id, stream * _in, stream *_out);
            ~streaming_core();        
            virtual void start();
            void barrier();
            bool done();
            
    };
}

#endif
