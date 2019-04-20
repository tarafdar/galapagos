//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================


#ifndef __GALAPAGOS_NET_TCP_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_NET_TCP_HPP__


#include <cstdlib>
#include <iostream>
#include <thread>
#include <memory>
#include <utility>
#include <boost/asio.hpp>
#include "galapagos_stream.hpp"
#include "galapagos_router.hpp"


#include "galapagos_net_tcp_session.hpp"
#include "galapagos_net_tcp_accept_server.hpp"
#include "galapagos_net_tcp_server_send.hpp"




//https://stackoverflow.com/questions/52146630/is-there-a-way-to-explicitly-destroy-all-handlers-pending-on-a-given-boostasio

typedef struct Hack : boost::asio::io_context { 
    using boost::asio::io_context::shutdown;
} ioc;


using namespace std::chrono_literals;

struct Handler {
        void operator()(boost::system::error_code ec) { std::cout << "Handler invoked: " << ec.message() << std::endl; }
        struct Instance { // logging only unique instance to avoid noise of moved handlers
            Instance()  { std::cout << "Created handler instance"   << std::endl; }
            ~Instance() { std::cout << "Destroyed handler instance" << std::endl; }
        };
        std::unique_ptr<Instance> _instance = std::make_unique<Instance>();
};


namespace galapagos{
    namespace net{
        namespace tcp{
            template<typename T>
            class tcp: public streaming_core<T>{
                public:
                    tcp(short id,
                        short port, 
                        std::vector <std::string> &kernel_info_table, 
                        std::string  & my_address, 
                        galapagos::stream <T>* in, 
                        galapagos::stream <T>* out, 
                        std::mutex * _done_mutex, 
                        bool * _done,
                        bool enabled);
                    void stop();
                    void start();
                    void test();
                private:
                    //boost::asio::io_context io_context;
                    ioc io_context;
                    std::unique_ptr<session_container <T> > sc_ptr;
                    std::unique_ptr<server_send <T> > ss_ptr;
                    std::unique_ptr<accept_server <T> > as_ptr;
                    galapagos::stream<T> * from_node; 
                    galapagos::stream<T> * from_sessions;
                    std::unique_ptr<galapagos::stream <T> > to_sessions;
                    std::unique_ptr <std::thread> t_context;
                    void test_func();
                    void run_context();
                    std::mutex * mutex;
                    bool * done;
                    std::unique_ptr<router_net_out <T> > router_out;
    
            };
        }//tcp namespace
    }//net namespace
}//galapagos namespace





#endif
