#ifndef __NET_HPP__   // if x.h hasn't been included yet...
#define __NET_HPP__

#include <thread>
#include <mutex>
#include <string>

class net_driver{
   
    std::string my_address;

    public:
        net_driver(short id_in);
        void send(void * buff, int count, short dest); 
};

#endif
