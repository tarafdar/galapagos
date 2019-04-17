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
#include <thread>
#include <memory>
#include <utility>
#include <boost/asio.hpp>

#include "galapagos_stream.hpp"

using boost::asio::ip::tcp;


class session
  : public std::enable_shared_from_this<session>
{
public:
  session(tcp::socket * socket)
  {
  
      socket_ = socket;
      s_axis_ptr = std::make_unique<galapagos::stream>();
      m_axis_ptr = std::make_unique<galapagos::stream>();

  }

  void start()
  {
    read = true;   
    write = true;

    std::thread t_read(&session::do_read, this);
    std::thread t_write(&session::do_write, this);
    t_read.detach();
    t_write.detach();
  }

  galapagos::stream * s_axis(){
    return s_axis_ptr.get();

  }
  
  galapagos::stream * m_axis(){
    return m_axis_ptr.get();

  }


private:
  std::unique_ptr<galapagos::stream> s_axis_ptr;
  std::unique_ptr<galapagos::stream> m_axis_ptr;
  void do_read()
  {
    auto self(shared_from_this());
    int length;
    
    while(read){
       
        socket_->wait(boost::asio::ip::tcp::socket::wait_read);
        int avail = socket_->available();
        if(avail>0){
            boost::system::error_code error;
            length = socket_->read_some(boost::asio::buffer(data_, avail), error);
            std::cout << "HI data is " << self->data_ <<  std::endl;
        }
    }
  }
  void do_write()
  {
    auto self(shared_from_this());
    std::cout << "in write" << std::endl;
    int dest;

    while(write){
        if(vect.size() == 0)
            vect = m_axis_ptr->read(&dest);
   
        std::cout << "after try to read" << std::endl;
   
        std::unique_ptr<char[]> data = std::make_unique<char[]>(vect.size()*8 + sizeof(short));
        memcpy(data.get(), (char *)&dest, sizeof(short));
        char * payload = data.get() + sizeof(short);
        memcpy(payload, vect.data(), vect.size()*8);
        boost::asio::write(*(socket_), boost::asio::buffer(data.get(), vect.size()*8 + sizeof(short)));
    }

  }


  tcp::socket * socket_;
  std::mutex * socket_mutex;
  enum { max_length = 1024 };
  char data_[max_length];
  std::vector <ap_uint <PACKET_DATA_LENGTH> > vect;
  bool read;
  bool write;
};

class accept_server
{
public:
  accept_server(boost::asio::io_context& io_context, short port, std::vector<tcp::socket> * sockets_, std::mutex * _ip_addrs_mutex, std::vector <boost::asio::ip::address > * _ip_addrs, std::vector<galapagos::stream *> * s_axis_, std::vector<galapagos::stream *> * m_axis_)
    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port))
  {
   
    ip_addrs = _ip_addrs;
    ip_addrs_mutex = _ip_addrs_mutex;
    s_axis = s_axis_;
    m_axis = m_axis_;
    sockets = sockets_;
    do_accept(); 
      
      
    std::thread t_accept(&accept_server::accept,this);
    t_accept.detach();
  }

private:
  void accept(){

    do_accept();

  }

  void do_accept()
  {
      std::cout << "IN ACCEPT" << std::endl;
      acceptor_.async_accept(
        [this](boost::system::error_code ec, tcp::socket socket)
        {
          if (!ec)
          {
            sockets->push_back(std::move(socket));
            my_sessions.push_back(std::make_shared<session>(&((*sockets)[sockets->size()-1])));
            my_sessions[my_sessions.size()-1]->start();
            
            {
                std::lock_guard <std::mutex> lock(*ip_addrs_mutex);
                ip_addrs->push_back((*sockets)[sockets->size()-1].remote_endpoint().address());
                s_axis->push_back(my_sessions[my_sessions.size() - 1]->s_axis());
                m_axis->push_back(my_sessions[my_sessions.size() - 1]->m_axis());
            }
          }

          do_accept();
        });
  }
  
  std::vector <std::shared_ptr<session> > my_sessions;
  std::vector <galapagos::stream *> * s_axis;
  std::vector <galapagos::stream *> * m_axis;
  std::vector <tcp::socket> * sockets; 
  std::mutex * ip_addrs_mutex;
  std::vector <boost::asio::ip::address > * ip_addrs;
  tcp::acceptor acceptor_;
};


class server
{
public:
  server(short port){
    as_ptr = std::make_unique<accept_server>(io_context, port, &sockets, &ip_addrs_mutex, &ip_addrs, &s_axis, &m_axis);
    io_context.run();

  }
  
  void send(char * data, int size, boost::asio::ip::address ip_addr, short dest){
    
      std::lock_guard <std::mutex> lock(ip_addrs_mutex);
      bool found = false;
      for(int i=0; i<ip_addrs.size(); i++){
        if(ip_addr == ip_addrs[i]){
            found = true;
            s_axis[i]->write(data, size, dest);
        }

      }
      
      if(!found){
          
          tcp::socket s(io_context);
          tcp::resolver resolver(io_context);
          sockets.push_back(std::move(s));
          my_sessions.push_back(std::make_shared<session>(&sockets[sockets.size() - 1]));
          my_sessions[my_sessions.size()-1]->start();


      }



  }


private:
    std::vector <std::shared_ptr<session> > my_sessions;
    boost::asio::io_context io_context;
    std::vector <boost::asio::ip::address > ip_addrs;
    std::mutex  ip_addrs_mutex;
    std::vector <galapagos::stream *> s_axis;
    std::vector <galapagos::stream *> m_axis;
    std::unique_ptr <accept_server> as_ptr;
    std::vector <tcp::socket>  sockets; 



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


    server s(std::atoi(argv[1]));
    

  }
  catch (std::exception& e)
  {
    std::cerr << "Exception: " << e.what() << "\n";
  }

  return 0;
}
