#ifndef __GALAPAGOS_KERNEL_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_KERNEL_HPP__


#include <algorithm>

#include "galapagos_globals.hpp"
//#include "net_driver.hpp"



class galapagos_kernel{
    short id;
    //net_driver * nd;

    public:
        galapagos_kernel(short id_in, std::vector<kern_info> kernel_info_table);
        void send(void *buff, unsigned int count, short dest);
        galapagos_packet * recv();
        ~galapagos_kernel();
};


#endif
