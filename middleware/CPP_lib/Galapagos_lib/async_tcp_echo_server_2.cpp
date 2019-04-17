//
// async_tcp_echo_server.cpp
// ~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Copyright (c) 2003-2019 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#include <cstdlib>
#include <iostream>
#include <memory>
#include <utility>
#include <boost/asio.hpp>
#include "galapagos_stream.hpp"


using boost::asio::ip::tcp;

class session
  : public std::enable_shared_from_this<session>
{
public:
  session(tcp::socket socket)
    : socket_(std::move(socket)), s_axis(), m_axis()
  {
      read = true;
  }

  void start()
  {
    std::cout << "BEFORE READ " << std::endl;
    do_read();
    std::cout << "AFTER READ " << std::endl;
  //  do_write();
    std::cout << "AFTER WRITE " << std::endl;
  }

private:
  enum { max_length = 1024 };
  char data_[max_length];
  std::vector <ap_uint <PACKET_DATA_LENGTH> > vect;
  tcp::socket socket_;
  galapagos::stream s_axis;
  galapagos::stream m_axis;
  bool read;

  void do_read()
  {
    auto self(shared_from_this());


    while(read){
        
        
        
        socket_.async_read_some(boost::asio::buffer(data_, max_length),
            [this, self](boost::system::error_code ec, std::size_t)
            {
              if (!ec)
              {
                self->read = false;
                std::cout << "reading done" << std::endl;
            //    short * dest_ptr = (short *)(self->data_);
            //    self->s_axis.write((char *)(self->data_) + sizeof(short), max_length - sizeof(short), dest_ptr[0]);
              }
            });
    }
  }

  void do_write()
  {
    auto self(shared_from_this());

    if(vect.size() == 0)
        vect = m_axis.vector_read();
    
    boost::asio::async_write(socket_, boost::asio::buffer(vect.data(),max_length),
        [this, self](boost::system::error_code ec, std::size_t /*length*/)
        {
          if (!ec)
          {
          //  self->vect.clear();
          }
        });

    do_write();
  }

};

class server
{
public:
  server(boost::asio::io_context& io_context, short port)
    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port))
  {
    do_accept();
    std::cout << " after recv" << std::endl;
  }

private:
  void do_accept()
  {
    acceptor_.async_accept(
        [this](boost::system::error_code ec, tcp::socket socket)
        {
          if (!ec)
          {
            std::make_shared<session>(std::move(socket))->start();
          }

          do_accept();
        });
  }

  tcp::acceptor acceptor_;
};

int main(int argc, char* argv[])
{
  try
  {
    if (argc != 2)
    {
      std::cerr << "Usage: async_tcp_echo_server <port>\n";
      return 1;
    }

    boost::asio::io_context io_context;

    server s(io_context, std::atoi(argv[1]));

    io_context.run();
  }
  catch (std::exception& e)
  {
    std::cerr << "Exception: " << e.what() << "\n";
  }

  return 0;
}
