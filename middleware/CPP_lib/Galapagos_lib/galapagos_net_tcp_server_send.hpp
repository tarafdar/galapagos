#ifndef __GALAPAGOS_NET_TCP_SERVER_SEND_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_NET_TCP_SERVER_SEND_HPP__

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
            
            class server_send: public streaming_core{
                public:
                    server_send(short _port, boost::asio::io_context * _io_context,
                            session_container * _sessions,
                            bool * _done,
                            std::mutex * _done_mutex,
                            galapagos::stream * from_node
                            );
                    //void send(char * data, int size, short dest);
                    void send_new(std::string ip_addr, int dest);
                private:
                    void send_loop();
                    std::mutex * mutex;
                    bool * done;
                    short port;
                    boost::asio::io_context * io_context;
                    boost::asio::io_context io_context_local;
                    session_container * sessions;

                    std::unique_ptr <std::thread> t_send;



            };

        };
    }//net namespace
}//galapagos namespace





#endif
