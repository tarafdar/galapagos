//
// async_tcp_echo_server.cpp
// ~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Copyright (c) 2003-2019 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

//#define NET_DEBUG

#include "galapagos_net_tcp_server_send.hpp"

using namespace galapagos::net::tcp;

#define TEST

server_send::server_send(short _port, 
                        boost::asio::io_context * _io_context, 
                        session_container * _sessions,
                        bool * _done,
                        std::mutex * _done_mutex,
                        galapagos::stream * from_node
        
):galapagos::streaming_core(0, from_node, nullptr)

{

    done = _done;
    mutex = _done_mutex;
    port = _port;
    io_context = _io_context;
    sessions = _sessions;

    t_send = std::make_unique<std::thread>(&server_send::send_loop,this);
    t_send->detach();
}



void server_send::send_loop(){

    //io_context->run();
    int dest;
#ifdef DEBUG
    std::cout << "SERVER SEND LOOP " << std::endl;
#endif
    while(1){
        
        {
            std::lock_guard<std::mutex> guard(*mutex);
            if(*done){
                std::cout << "WTF I'M DONE" <<std::endl;
                break;
            }
        }
        

        galapagos::stream_packet gps;

        int data;
        //packet found
        if(in->try_peak(gps)){

            data = (int)gps.data;
            dest = (int)gps.data;
            std::string ip_addr = sessions->get_ip_addr(dest);
#ifdef DEBUG
            std::cout << "SENDING TO IP ADDR " << ip_addr << std::endl; 
#endif
            bool session_found = sessions->find(ip_addr);
            if (!session_found){
//#ifdef NET_DEBUG
                //std::cout << "num in buffer " << in->size() << std::endl;
                //std::cout << "gps.data "  << std::hex <<  data << std::endl;
                //std::cout << "gps.dest "  << std::hex << dest << std::endl;
//#endif
                send_new(ip_addr, dest);

            }
            else{
              std::vector<ap_uint<PACKET_DATA_LENGTH> > data_vect = in->read(&dest);
#ifdef TEST
        assert(data_vect.size() == 10);
#endif
#ifdef DEBUG
              std::cout << "size of send " << data_vect.size() << std::endl;
#endif
              sessions->send(ip_addr, (char *)data_vect.data(), data_vect.size()*8, dest);
              //out->write((char *)data_vect.data(), data_vect.size()*8, dest);

            }


        }
        //std::string ip_addr = sessions->get_ip_addr(dest);
        //bool found = sessions->send(ip_addr, data, size, dest);
        ////std::cout << "before send socket" << std::endl;
        //std::vector<ap_uint<PACKET_DATA_LENGTH> > data_vect = out->read(&dest);
        //std::cout << "got something in the socket" << std::endl;
        //send((char *)data_vect.data(), data_vect.size() * 8, dest);        
        //std::cout << "sent something in the socket socket" << std::endl;

    }

#ifdef DEBUG
    std::cout << "AFTER SERVER SEND LOOP" << std::endl;
#endif
}

  
//void server_send::send(char * data, int size, short dest){
void server_send::send_new(std::string ip_addr, int dest){
    
//#ifdef NET_DEBUG
//                std::cout << "send_new: num in buffer " << std::dec << out->size() << std::endl;
//                std::cout << "send_new: gps.dest "  << std::hex << dest << std::dec << std::endl;
//                std::cout << "send_new: ip_addr "  << ip_addr << std::endl;
//#endif

    
    //std::string ip_addr = sessions->get_ip_addr(dest);
    //bool found = sessions->send(ip_addr, data, size, dest);
      
      
    //  if(!found){
#ifdef DEBUG
          std::cout << "making new socket " << std::endl; 
#endif
          //boost::asio::ip::tcp::socket s(*io_context);
          //boost::asio::ip::tcp::resolver resolver(*io_context);
          boost::asio::ip::tcp::socket s(io_context_local);
          boost::asio::ip::tcp::resolver resolver(io_context_local);
          std::ostringstream convert;
          convert << port;
          std::string port_str = convert.str();
#ifdef DEBUG
          std::cout << "trying to connect to ip addr " << ip_addr << std::endl;
#endif
          bool send_successful = false;

          while(!send_successful){
            try{
#ifndef NET_DEBUG           
              boost::asio::connect(s, resolver.resolve((char *)ip_addr.c_str(), (char *)port_str.c_str()));
#endif

//#ifdef NET_DEBUG
//              std::cout << "after connect "  << std::endl;
//#endif
//#ifdef NET_DEBUG
//#ifdef TEST
//            assert(in->size() == 10);
//#endif
//                std::cout << "send_new2: num in buffer " << std::dec << in->size() << std::endl;
//                std::cout << "send_new2: gps.dest "  << std::hex << dest << std::dec << std::endl;
//                std::cout << "send_new2: ip_addr "  << ip_addr << std::endl;
//#endif
            //std::string test = "hello123hello123";
            //boost::asio::write(s, boost::asio::buffer((char *)test.c_str(), 16));

            //exit(0);
              sessions->add_session(std::move(s), &io_context_local);
//#ifdef TEST
//            assert(in->size() == 10);
//#endif
//#ifdef NET_DEBUG
//                std::cout << "send_new3: num in buffer " << std::dec << out->size() << std::endl;
//                std::cout << "send_new3: gps.dest "  << std::hex << dest << std::dec << std::endl;
//                std::cout << "send_new3: ip_addr "  << ip_addr << std::endl;
//#endif
              std::vector<ap_uint<PACKET_DATA_LENGTH> > data_vect = in->read(&dest);
//              send_successful = true;
//#ifdef NET_DEBUG
//              std::cout << "after read "  << std::endl;
//#endif
              //sessions->send(ip_addr, data, size, dest);
//#ifdef NET_DEBUG
//
#ifdef TEST
            assert(data_vect.size() == 10);
#endif

//              std::cout << "size of send2 " << data_vect.size() << std::endl;
//#endif
              sessions->send(ip_addr, (char *)data_vect.data(), data_vect.size() * 8, dest);
              //out->write((char *)data_vect.data(), data_vect.size()*8, dest);

            }
            catch(const boost::system::system_error& ex){
              send_successful = false;
//#ifdef NET_DEBUG
              std::cout << "exception " << std::endl;
//#endif
            }
         }
     // }

}

