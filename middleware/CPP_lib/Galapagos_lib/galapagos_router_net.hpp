#ifndef __GALAPAGOS_ROUTER_NET_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_ROUTER_NET_HPP__

#include <map>
#include <assert.h>
#include "galapagos_packet.h"
#include "galapagos_stream.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"


namespace galapagos{
    class router_net: public router{
        protected:
            std::map <std::string,  int >  address_map;
    	    std::vector < std::string > kern_info_table;
            bool _done;
            std::mutex  mutex;
            std::unique_ptr <std::thread> t;
            stream * ext_port;
            std::map <int, int> dest_to_kern_ind;
            std::vector <bool> s_axis_valid;
        public:
            router_net(std::vector <std::string>  &_kern_info_table, 
                      stream * ext, 
                      bool * _done, 
                      std::mutex * _mutex,
                      std::string my_address);
            void add_socket(galapagos::streaming_core * _gsc);
            virtual void route() = 0;
            virtual void start() = 0;
            std::vector <std::string> ip_addrs;
            ~router_net(){;}
            //void end();
    };
    class router_net_in: public router_net{
        public:
            router_net_in(std::vector <std::string>  &_kern_info_table, stream * to_sessions, bool * _done, std::mutex * _mutex, std::string my_address);
            ~router_net_in(){;}
            void start();
            void route();
    };
    class router_net_out: public router_net{
        public:
            router_net_out(std::vector <std::string>  &_kern_info_table, stream * from_sessions, bool * _done, std::mutex * _mutex, std::string my_address);
            ~router_net_out(){;}
            void start();
            void route();
    };
}



#endif
