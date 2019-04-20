#ifndef __GALAPAGOS_ROUTER_NET_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_ROUTER_NET_HPP__

#include <map>
#include <assert.h>
#include "galapagos_packet.h"
#include "galapagos_stream.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"


namespace galapagos{
template <typename T> 
    class router_net: public router<T>{
        protected:
            std::map <std::string,  int >  address_map;
    	    std::vector < std::string > kern_info_table;
            bool _done;
            std::mutex  mutex;
            std::unique_ptr <std::thread> t;
            stream <T> * ext_port;
            std::map <int, int> dest_to_kern_ind;
            std::vector <bool> s_axis_valid;
            std::vector <stream <T> * > s_axis_ptr;
            std::vector <stream <T> * > m_axis_ptr;
        public:
            router_net(std::vector <std::string>  &_kern_info_table, 
                      stream <T> * ext, 
                      bool * _done, 
                      std::mutex * _mutex,
                      std::string my_address);
            void add_socket(galapagos::streaming_core <T> * _gsc);
            virtual void route() = 0;
            virtual void start() = 0;
            std::vector <std::string> ip_addrs;
            ~router_net(){;}
            //void end();
    };
template <typename T> 
    class router_net_out: public router_net<T>{
        public:
            router_net_out(std::vector <std::string>  &_kern_info_table, stream <T> * from_sessions, bool * _done, std::mutex * _mutex, std::string my_address);
            ~router_net_out(){;}
            void start();
            void route();
    };
}



#endif
