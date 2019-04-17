#ifndef __GALAPAGOS_NET_TCP_SESSION_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_NET_TCP_SESSION_HPP__

#include <cstdlib>
#include <iostream>
#include <thread>
#include <memory>
#include <utility>
#include <boost/asio.hpp>
#include "galapagos_stream.hpp"
#include "galapagos_streaming_core.hpp"
#include "galapagos_router_net.hpp"

namespace galapagos{
    namespace net{
        namespace tcp{
            
            //class session: public std::enable_shared_from_this<session>,  public streaming_core
            class session: public streaming_core
            {
            public:
                session(boost::asio::ip::tcp::socket _socket, boost::asio::io_context * _io_context);
                ~session(){socket.close();}
                void start();
                void send(char * data, int size, short dest);
                void set_id(short _id);
            private:
//                std::unique_ptr<stream> s_axis_ptr;
//                std::unique_ptr<stream> m_axis_ptr;
                void do_read();
                void do_write();
                enum { max_length = 1024 };
                char data_[max_length];
                std::vector <ap_uint <PACKET_DATA_LENGTH> > vect;
                bool read;
                bool write;
                boost::asio::ip::tcp::socket socket;
                boost::asio::io_context * io_context;
                std::unique_ptr <galapagos::stream> s_axis;
                std::unique_ptr <galapagos::stream> m_axis;
            };

            class session_container {
                public:
                    session_container(
                                      std::vector <std::string> & _kernel_info_table,
                                      std::string  & my_address,
                                      bool * _done,
                                      std::mutex * _mutex
                                      );
                    void add_session(boost::asio::ip::tcp::socket _socket, boost::asio::io_context * io_context);
                    std::string get_ip_addr(short dest);
                    bool send(std::string ip_addr, char * data, int size, short dest);
                    bool find(std::string _ip_addr);
                    void start();
                private:
                    std::mutex  mutex;
                    //std::vector <std::shared_ptr<session> > my_sessions;
                    std::vector <std::unique_ptr<session> > my_sessions;
                    std::vector<std::string>ip_addrs;
                    std::map<std::string, int>ip_addrs_index;
                    std::map<std::string, int>my_session_map;
                    std::vector <boost::asio::ip::tcp::socket>  sockets; 
                    std::vector <galapagos::stream *> s_axis;
                    std::vector <galapagos::stream *> m_axis;
                    //std::unique_ptr<router_net_in> router_in;
                    router_net_in * router_in;
                    std::unique_ptr<router_net_out> router_out;
                    std::vector <std::string> kernel_info_table;
                    std::unique_ptr<streaming_core> interf;



            };
            
        
        }//tcp namespace
    }//net namespace
}//galapagos namespace





#endif
