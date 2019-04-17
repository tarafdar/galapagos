//
// async_tcp_echo_server.cpp
// ~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Copyright (c) 2003-2019 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//


#include "galapagos_net_tcp.hpp"



galapagos::net::tcp::tcp::tcp(short _id,
              short port, 
              std::vector <std::string>  &kernel_info_table, 
              std::string  & my_address, 
              galapagos::stream * _from_node, 
              galapagos::stream * _from_sessions, 
              std::mutex * _done_mutex, 
              bool * _done,
              bool enabled=true):
    galapagos::streaming_core(_id,  _from_node, _from_sessions)

{


    mutex = _done_mutex;
    done = _done;

//    to_sessions = std::make_unique<galapagos::stream>();

//    to_sessions = _to_sessions;
    from_sessions = _from_sessions;
    //sc_ptr = std::make_unique<galapagos::net::tcp::session_container>(to_sessions.get(), from_sessions, kernel_info_table, my_address, _done, _done_mutex);
    sc_ptr = std::make_unique<galapagos::net::tcp::session_container>(kernel_info_table, my_address, _done, _done_mutex);
//
//

 //   router_in = std::make_unique<galapagos::router_net_in>(kernel_info_table, to_sessions.get(), done, mutex, my_address);
 //   router_out = std::make_unique<galapagos::router_net_out>(kernel_info_table, from_sessions, done, mutex, my_address);
    ss_ptr = std::make_unique<galapagos::net::tcp::server_send>(port, &io_context, sc_ptr.get(), _done, _done_mutex, _from_node); 
    //if(enabled){
    //    as_ptr = std::make_unique<galapagos::net::tcp::accept_server>(&io_context, port, sc_ptr.get());
    //}

}


void galapagos::net::tcp::tcp::start(){

//    sc_ptr->start();
    ;
//    t_context = std::thread([&]{ io_context.run(); });
//    t_context = std::make_unique<std::thread>(&galapagos::net::tcp::tcp::run_context, this);
//    test();
//    t_context->detach(); 
//    stop();


}

void galapagos::net::tcp::tcp::run_context(){

#ifdef DEBUG
    std::cout << "context is running " << std::endl;
#endif
    io_context.run();
}


void galapagos::net::tcp::tcp::test(){

    
    std::thread test(&galapagos::net::tcp::tcp::test_func, this); 
    test.join();


}

void galapagos::net::tcp::tcp::test_func(){

    std::vector<ap_uint<PACKET_DATA_LENGTH> > vect;

    int dest;
    //std::cout << "TEST: reading stream: " << from_sessions->name << std::endl;
    //while(1){
    //
    //    {
    //        std::lock_guard<std::mutex> guard(*mutex);
    //        if(*done)
    //            break;
    //    }
        
        if((from_sessions->size() == 0)){
            vect = from_sessions->read(&dest);
            std::cout << "size of test is " << vect.size() << std::endl;
            std::string test = (char *)vect.data();
            std::cout << "test is " << test << std::endl;
        }
    //}



}




void galapagos::net::tcp::tcp::stop(){


    std::cout << "in stop" << std::endl;
    {
        boost::asio::high_resolution_timer tim(io_context, 2s);
        tim.async_wait(Handler{});

        std::this_thread::sleep_for(500ms);

        io_context.stop();
    }
    t_context->join(); 

}
