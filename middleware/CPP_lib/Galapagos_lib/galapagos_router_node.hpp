#ifndef __GALAPAGOS_ROUTER_NODE_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_ROUTER_NODE_HPP__

#include "galapagos_router.hpp"


enum ext_port{network};


namespace galapagos{
    class router_node: public router{
        private:
            std::map <std::string,  std::vector<short> >  address_map;
    	    std::vector < std::string > kern_info_table;
            std::string my_address;
            //bool _done;
            //std::mutex  mutex;

            //external kernels;
            std::vector <galapagos::streaming_core * > ext_streams;
            std::vector <int > ext_streams_indices;
            std::unique_ptr <std::thread> t;
            int ext_index;
            std::map <int, int> dest_to_kern_ind;
            int num_local;
        public:
            router_node(std::vector <std::string>  _kern_info_table, std::string _my_address, bool * _done, std::mutex *_mutex, int num_ext);
            void route();
            void add_kernel(kernel * _gk, int index);
            void add_ext_stream(galapagos::streaming_core * gsc);
            void start();
            void end();
            void drain();
            ~router_node();
    };
}



#endif
