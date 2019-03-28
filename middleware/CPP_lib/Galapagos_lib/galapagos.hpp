#ifndef __GALAPAGOS_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_HPP__

#include <map>
#include "galapagos_kernel.hpp"

class galapagos{
    
    private:
        std::unique_ptr <std::thread> t;
	    std::vector <galapagos_kernel *> gk;
	    std::vector < std::string > kern_info_table;
        std::map <std::string,  std::vector<short> >  address_map;
        std::string my_address;
        void router();
        void route(galapagos_stream_packet gps);
        int num_trans;

    public:
	    galapagos(std::vector <std::string > _kern_info_table, std::string _my_address);
	    galapagos(std::vector <std::string > _kern_info_table, std::string _my_address, int _num);
        void enqueueKernel(galapagos_kernel * _gk);
        void enqueueKernel(galapagos_kernel * _gk,void (*func)());
        void enqueueKernel(galapagos_kernel * _gk, void (*func)(hls::stream<galapagos_stream_packet> *, hls::stream<galapagos_stream_packet> *));
        ~galapagos();
};




#endif
