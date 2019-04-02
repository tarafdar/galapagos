#ifndef __GALAPAGOS_NET_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_NET_HPP__

#include <sstream>
#include <cstdlib>

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

#include <map>

#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include "galapagos_stream.hpp"
#include "galapagos_streaming_core.hpp"
#include "galapagos_packet.h"


#define GALAPAGOS_PORT 8889

namespace galapagos {
    class net: public streaming_core{
        friend class router;

        private:
            std::map <std::string, int  >  sock_map;
            std::vector < std::unique_ptr <boost::asio::ip::tcp::socket>  >  sock_vect;
            std::map <std::string, bool  >  sock_valid;
            std::map <std::string, std::unique_ptr <std::mutex> >  sock_mutex;
            //std::unique_ptr <std::mutex> done_mutex;
            //std::unique_ptr <bool> done;
            std::mutex * done_mutex;
            bool * done;
            std::unique_ptr <std::thread> t_recv_server;
            std::unique_ptr <std::thread> t_send_server;
            std::unique_ptr <std::thread> t_socket_listener;
            boost::asio::io_service io_service;
            std::mutex map_mutex;
            std::vector <std::string> kern_info_table;
            void recv_server();
            void socket_listener();
            void send_server();
            std::string my_address;
//            void accept_handler(const boost::system::error_code &e, std::unique_ptr<boost::asio::ip::tcp::socket > sock_ptr);
            void accept_handler(std::shared_ptr<boost::asio::ip::tcp::socket> sock_ptr, const boost::system::error_code &e);
            bool server_enabled;
        public:
            net(galapagos::stream * in, galapagos::stream *out, std::map <std::string, std::vector<short> >  address_map, std::vector<std::string> _kern_info_table, std::mutex * _done_mutex, bool * _done, bool _server_enabled);
            void start();
    };

}

#endif
