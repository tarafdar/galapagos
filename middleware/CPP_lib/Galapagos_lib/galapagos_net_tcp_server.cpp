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


using namespace galapagos::net::tcp;

tcp(short port, 
              std::vector <std::string> kernel_info_table, 
              std::string my_address, 
              galapagos::stream * in, 
              galapagos::stream * out, 
              std::mutex * _done_mutex, 
              bool * _done,
              bool enabled=true)

{
   
    sc_ptr = std::make_unique<session_container>(kernel_info_table, my_address);
    ss_ptr = std::make_unique<server_send>(port, &io_context, sc_ptr.get()); 
    if(enabled){
        as_ptr = std::make_unique<accept_server>(&io_context, port, sc_ptr.get());
    }
    
    io_context.run();

}


//int main(int argc, char* argv[])
//{
//  try
//  {
//    if (argc != 2)
//    {
//      std::cerr << "Usage: async_tcp_echo_server <port>\n";
//      return 1;
//    }
//
//
//    galapagos::net::tcp::server s(std::atoi(argv[1]));
//    
//
//  }
//  catch (std::exception& e)
//  {
//    std::cerr << "Exception: " << e.what() << "\n";
//  }
//
//  return 0;
//}
