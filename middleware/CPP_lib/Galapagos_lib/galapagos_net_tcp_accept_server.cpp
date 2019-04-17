//
// async_tcp_echo_server.cpp
// ~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Copyright (c) 2003-2019 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//


#include "galapagos_net_tcp_accept_server.hpp"


using namespace galapagos::net::tcp;


accept_server::accept_server(boost::asio::io_context *io_context, 
                                                  short port,  
                                                  session_container * _sessions)
    : acceptor_(*io_context, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port))
{
  
    _io_context = io_context;
    sessions = _sessions;
//    do_accept(); 
      
      
    std::thread t_accept(&accept_server::accept,this);
    t_accept.detach();
}

void accept_server::accept(){

    do_accept();

}

void accept_server::do_accept()
{
      acceptor_.async_accept(
        [this](boost::system::error_code ec, boost::asio::ip::tcp::socket socket)
        {
          if (!ec)
          {
            std::cout << "ACCEPTING SESSION" << std::endl;
            sessions->add_session(std::move(socket), _io_context);
          }

          do_accept();
        });
}
 
