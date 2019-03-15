#ifndef __TCP_DRIVER_HPP__   // if x.h hasn't been included yet...
#define __TCP_DRIVER_HPP__

using asio::ip::tcp;

#define GALAPAGOS_PORT 7

typedef struct{
    short kern;
    tcp::socket * sock;
}map_element;

asio::io_context io_context;
std::map <std::string, std::vector<short> >  address_map;
std::mutex map_mutex;


socket_listener();
#endif
