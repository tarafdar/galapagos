#ifndef __TCP_DRIVER_HPP__   // if x.h hasn't been included yet...
#define __TCP_DRIVER_HPP__

#include <sstream>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <boost/asio.hpp>
#include <string>


#include "galapagos_globals.hpp"
#include "net_driver.hpp"

using boost::asio::ip::tcp;

#define GALAPAGOS_PORT 7


class map_element{
    public:
        std::vector<short> kern;
        tcp::socket * sock;
        map_element(){sock = NULL;}
        ~map_element(){if(sock != NULL)delete sock;}
};



boost::asio::io_service io_service;
std::map <std::string, map_element *>  address_map;
std::mutex map_mutex;


void socket_listener();
void recv_server();
void recv_packet(char * buffer, int buff_len);

#endif
