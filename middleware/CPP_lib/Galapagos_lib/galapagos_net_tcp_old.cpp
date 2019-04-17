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


session::session(boost::asio::ip::tcp::socket * socket)
    :galapagos::streaming_core(-1)
{

  
      socket_ = socket;
      s_axis_ptr = std::make_unique<galapagos::stream>();
      m_axis_ptr = std::make_unique<galapagos::stream>();

}


void session::set_id(short _id){
    
    id= _id;


}

void session::start()
{
    read = true;   
    write = true;

    std::thread t_read(&session::do_read, this);
    std::thread t_write(&session::do_write, this);
    t_read.detach();
    t_write.detach();
}

//galapagos::stream * session::s_axis(){
//    return s_axis_ptr.get();
//
//}
//  
//galapagos::stream * session::m_axis(){
//    return m_axis_ptr.get();
//
//}


void session::do_read()
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


void session::do_write()
{
    auto self(shared_from_this());
    std::cout << "in write" << std::endl;
    int dest;

    while(write){
        if(vect.size() == 0)
            vect = out->read(&dest);
   
        std::cout << "after try to read" << std::endl;
   
        std::unique_ptr<char[]> data = std::make_unique<char[]>(vect.size()*8 + sizeof(short));
        memcpy(data.get(), (char *)&dest, sizeof(short));
        char * payload = data.get() + sizeof(short);
        memcpy(payload, vect.data(), vect.size()*8);
        boost::asio::write(*(socket_), boost::asio::buffer(data.get(), vect.size()*8 + sizeof(short)));
    }

}


void session_container::session_container(galapagos::stream * in,
                                          galapagos::stream * out,
                                          std::vector <string> kernel_info_table,
                                          std::string my_address
            
        ){



    std::vector<std::string>::iterator it;
    ip_addrs.push_back(my_address);



    //initialize ip_tables;
    for(int i=0; i<kernel_info_table.size(); i++){
        it=std::find(ip_addrs.begin(), ip_addrs.end(), kernel_info_table[i]);
        if(it == ip_addrs.end())
            ip_addrs.push_back(kernel_info_table[i]);
    }

    
    
    //add native interface to routers
    //
    //
    router_in = std::make_unique<galapagos::router_net_in>(ip_addrs);
    router_out = std::make_unique<galapagos::router_net_out>(ip_addrs);
    
    router_in->add_socket(interf);
    router_out->add_socket(interf);
}

void session_container::add_session(boost::asio::ip::tcp::socket * socket){


    //get mutex
    std::lock_guard <std::mutex> lock(*ip_addrs_mutex);
    
    sockets->push_back(std::move(*socket));
    my_sessions.push_back(std::make_shared<session>(&((*sockets)[sockets->size()-1])));
    std::string ip_addr = (*sockets)[sockets->size()-1].remote_endpoint().address().to_string();
    address_map[ip_addr] = my_sessions.size()-1;
    my_sessions[my_sessions.size()-1]->set_id(my_sessions.size());
    router_in->add_kernel(my_sessions[my_sessions.size()-1]);
    router_out->add_kernel(my_sessions[my_sessions.size()-1]);
    my_sessions[my_sessions.size()-1]->start();

}


accept_server::accept_server(boost::asio::io_context& io_context, 
                                                  short port,  
                                                  galapagos::sesssion_container * _sessions)
    : acceptor_(io_context, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port))
{
   
    sessions = _sessions;
    do_accept(); 
      
      
    std::thread t_accept(&accept_server::accept,this);
    t_accept.detach();
}

void accept_server::accept(){

    do_accept();

}



}

void accept_server::do_accept()
{
      std::cout << "IN ACCEPT" << std::endl;
      acceptor_.async_accept(
        [this](boost::system::error_code ec, boost::asio::ip::tcp::socket socket)
        {
          if (!ec)
          {
            sessions->add_session(&socket);
            //sockets->push_back(std::move(socket));
            //my_sessions.push_back(std::make_shared<session>(&((*sockets)[sockets->size()-1])));
            //
            //{
            //    std::lock_guard <std::mutex> lock(*ip_addrs_mutex);
            //    ip_addrs->push_back((*sockets)[sockets->size()-1].remote_endpoint().address());
            //    address_map[(*sockets)[sockets->size()-1].remote_endpoint().address().to_string()] = my_sessions.size()-1;
            //    my_sessions[my_sessions.size()-1]->set_id(ip_addrs.size());
            //    router_ptr->add_kernel(my_sessions[my_sessions.size()-1]);
            //    my_sessions[my_sessions.size()-1]->start();
            //    s_axis->push_back(my_sessions[my_sessions.size() - 1]->s_axis());
            //    m_axis->push_back(my_sessions[my_sessions.size() - 1]->m_axis());
            //}
          }

          do_accept();
        });
}
  


server::server(short port, galapagos::router * router_ptr, bool enabled=true){

    router_ptr = router_ptr_;
    if(enabled){
        as_ptr = std::make_unique<accept_server>(io_context, port, &sockets, &ip_addrs_mutex, &ip_addrs, &s_axis, &m_axis, router_ptr);
    }
    io_context.run();

}
  
void server::send(char * data, int size, boost::asio::ip::address ip_addr, short dest){
    
      std::lock_guard <std::mutex> lock(ip_addrs_mutex);
      bool found = false;
      for(int i=0; i<ip_addrs.size(); i++){
        if(ip_addr == ip_addrs[i]){
            found = true;
            s_axis[i]->write(data, size, dest);
        }

      }
      
      if(!found){
          
          boost::asio::ip::tcp::socket s(io_context);
          boost::asio::ip::tcp::resolver resolver(io_context);
          sessions.add_session(

          sockets.push_back(std::move(s));
          my_sessions.push_back(std::make_shared<session>(&sockets[sockets.size() - 1]));
          my_sessions[my_sessions.size()-1]->set_id(ip_addrs.size());
          router_ptr->add_kernel(my_sessions[my_sessions.size()-1]);
          my_sessions[my_sessions.size()-1]->start();

      }



}


void galapagos::net::tcp::interface::interface(short id_, galapagos::stream * in_, galapagos::stream * out_)
    :galapagos::streaming_core(id_,in_, out_);
{;}



void galapagos::net::tcp::tcp(int num_ports,
                              short port,
                              galapagos::stream * in, 
                              galapagos::stream * out, 
                              std::mutex * _done_mutex, 
                              bool * _done,
                              std::vector <std::string> kern_info_table,
                              bool _server_enabled=true)
                              :router_in(kern_info_table)   
                              :router_out(kern_info_table)   
                              :tcp_server(port, server_enabled, &router)
                              :interf(0, in, out)
{
    
    router_in.add_socket(interf);
    router_out.add_socket(interf);

    it = std::find(ip_addrs.begin(), ip_addrs.end(), _kern_info_table[i]);
    if(it == ip_addrs.end()){
        ip_addrs.push_back(_kern_info_table[i]); 
    }


}


int main(int argc, char* argv[])
{
  try
  {
    if (argc != 2)
    {
      std::cerr << "Usage: async_tcp_echo_server <port>\n";
      return 1;
    }


    galapagos::net::tcp::server s(std::atoi(argv[1]));
    

  }
  catch (std::exception& e)
  {
    std::cerr << "Exception: " << e.what() << "\n";
  }

  return 0;
}
