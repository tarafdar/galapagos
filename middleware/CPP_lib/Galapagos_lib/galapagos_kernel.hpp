#ifndef __GALAPAGOS_KERNEL_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_KERNEL_HPP__

#include "galapagos_globals.hpp"
#include "net_driver.hpp"


template <class address>
class galapagos_kernel{
    short id;
    network_driver * nd;

    public:
        galapagos_kernel(short id_in, std::vector<kernel_info> kernel_info_table);
        send(void *buff, unsigned int count, short dest);
        recv();
        ~galapagos_kernel();
}

#endif
