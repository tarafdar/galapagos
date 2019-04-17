#ifndef __GALAPAGOS_NET_TCP_ACCEPT_SERVER_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_NET_TCP_ACCEPT_SERVER_HPP

#include <cstdlib>
#include <iostream>
#include <thread>
#include <memory>
#include <utility>
#include <boost/asio.hpp>
#include "galapagos_stream.hpp"
#include "galapagos_router.hpp"

#include "galapagos_net_tcp_session.hpp"

namespace galapagos{
    namespace net{
        namespace tcp{

            class accept_server{
                public:
                    accept_server(boost::asio::io_context * io_context, 
                                  short port,  
                                  session_container * _sessions);
                private:
                    void accept();
                    void do_accept();
                    boost::asio::ip::tcp::acceptor acceptor_;
                    session_container * sessions;
                    boost::asio::io_context * _io_context;
            };

        }//tcp namespace
    }//net namespace
}//galapagos namespace





#endif
