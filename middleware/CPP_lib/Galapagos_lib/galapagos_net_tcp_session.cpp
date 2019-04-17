#include "galapagos_net_tcp_session.hpp"


#define TEST

using namespace galapagos::net::tcp;


session::session(boost::asio::ip::tcp::socket  _socket, boost::asio::io_context * _io_context)
    :galapagos::streaming_core(-1), socket(std::move(_socket))
{

      s_axis = std::make_unique<galapagos::stream>(); 
      m_axis = std::make_unique<galapagos::stream>(); 

      in = s_axis.get();
      out = s_axis.get();
      io_context = _io_context;
      //s_axis_ptr = std::make_unique<galapagos::stream>();
      //m_axis_ptr = std::make_unique<galapagos::stream>();

      
      //s_axis_ptr = std::make_unique<galapagos::stream>("session");
      //m_axis_ptr = std::make_unique<galapagos::stream>("session");
      read = true;   
      write = true;

      std::thread t_read(&session::do_read, this);
      std::thread t_write(&session::do_write, this);
      t_read.detach();
      t_write.detach();

}


void session::send(char * data, int size, short dest){

    //std::cout << "in write session , stream name: " << in->name << std::endl;


    in->write(data, size, dest);

//#ifdef TEST
//    if(in->size() != 10)
//        std::cout << "size is " << in->size() << std::endl;
//    assert(in->size() == 10);
//#endif

}


void session::set_id(short _id){
    
    id= _id;


}

void session::start()
{
//    read = true;   
//    write = true;
//
//    std::thread t_read(&session::do_read, this);
//    std::thread t_write(&session::do_write, this);
//    t_read.detach();
//    t_write.detach();
}


void session::do_read()
{
//    auto self(shared_from_this());
    int length;
   
//    io_context->run();
    while(read){
       
        socket.wait(boost::asio::ip::tcp::socket::wait_read);
        int avail = socket.available();
        if(avail>0){
            boost::system::error_code error;
            std::unique_ptr<char[]> data = std::make_unique<char[]>(avail);
//            length = socket.read_some(boost::asio::buffer(data.get(), avail), error);
            length = socket.receive(boost::asio::buffer(data.get(), avail));

#ifdef DEBUG            
            std::cout << "RECEIVED " << length << " AVAILABLE " << avail << std::endl;
#endif
            short * dest_ptr = (short *) data.get();

#ifdef DEBUG
            std::cout << "RECEIVED " << length << " bytes" <<std::endl;
#endif
            out->write(data.get() + sizeof(short), avail - sizeof(short), dest_ptr[0]);
#ifdef DEBUG
            std::cout << "writing in session " << id <<  std::endl;
#endif
        }
    }
}


void session::do_write()
{
//    auto self(shared_from_this());
    //std::cout << "in write" << std::endl;
    int dest;


//    io_context->run();
    while(write){
        
        //std::cout << "before try to read" << std::endl;
        //if(vect.size() > 0)
        std::vector <ap_uint <PACKET_DATA_LENGTH> > vect_in = in->read(&dest);
#ifdef TEST
        if(vect_in.size() != 10)
            std::cout << vect_in.size() << std::endl;
        assert(vect_in.size() == 10);
#endif

     //   std::cout << "after try to read" << std::endl;
   
        std::unique_ptr<char[]> data = std::make_unique<char[]>(vect_in.size()*8 + sizeof(short));
        memcpy(data.get(), (char *)&dest, sizeof(short));
        char * payload = data.get() + sizeof(short);
        memcpy(payload, vect_in.data(), vect.size()*8);
        //std::cout << "before socket  write " << std::endl;
        //
#ifdef TEST
        assert((vect_in.size()*8) + sizeof(short) == 82);
#endif
#ifndef NET_DEBUG

        std::cout << "WRITING TO SOCKET" << std::endl;
        boost::asio::write(socket, boost::asio::buffer(data.get(), vect_in.size()*8 + sizeof(short)));
#else
        std::cout << "FAKE WRITE " << vect_in.size() * 8 << std::endl;
#endif
        //std::cout << "after socket  write " << std::endl;
    }

}


//session_container::session_container(galapagos::stream * to_sessions,
//                                          galapagos::stream * from_sessions,
session_container::session_container(
                                          std::vector <std::string> & _kernel_info_table,
                                          std::string & my_address,
                                          bool * _done,
                                          std::mutex * _mutex
        ){


    //interf = std::make_unique<galapagos::streaming_core>(0, in, out);
    //interf = std::make_unique<galapagos::streaming_core>(0, from_sessions, to_sessions);
    std::vector<std::string>::iterator it;
    //ip_addrs.push_back(my_address);

    //initialize ip_tables;
    for(int i=0; i<_kernel_info_table.size(); i++){
        kernel_info_table.push_back(_kernel_info_table[i]);
        if(_kernel_info_table[i] != my_address){
            it=std::find(ip_addrs.begin(), ip_addrs.end(), _kernel_info_table[i]);
            if(it == ip_addrs.end()){
                ip_addrs.push_back(_kernel_info_table[i]);
                ip_addrs_index[_kernel_info_table[i]] = ip_addrs.size() -1;
//                std::cout << "ADDING IP_ADDRS " << ip_addrs.size() - 1 << std::endl;
            }
        }
    }

//    std::cout << "NUM IP Addrs " << ip_addrs_index.size() << std::endl;
    //add native interface to routers
    //
    //
    //router_in = std::make_unique<galapagos::router_net_in>(ip_addrs);
    //router_out = std::make_unique<galapagos::router_net_out>(ip_addrs);
    //router_in = std::make_unique<galapagos::router_net_in>(_kernel_info_table, to_sessions, _done, _mutex, my_address);
    //router_out = std::make_unique<galapagos::router_net_out>(_kernel_info_table, from_sessions, _done, _mutex, my_address);
   
    //router_in->add_socket(interf.get());
    //router_out->add_socket(interf.get());

//    std::cout << "end of session container" << std::endl;
}


void session_container::start(){
    for(int i=0; i<my_sessions.size(); i++){
        my_sessions[i]->start();
    }
    //router_in->start();
    //router_out->start();


}


void session_container::add_session(boost::asio::ip::tcp::socket  _socket, boost::asio::io_context * io_context){


    //get mutex
    std::lock_guard <std::mutex> lock(mutex);
    
    std::string ip_addr = _socket.remote_endpoint().address().to_string();
    //my_sessions.push_back(std::make_shared<session>(std::move(_socket)));
    //
    my_sessions.push_back(std::make_unique<session>(std::move(_socket), io_context));
    my_session_map[ip_addr] = my_sessions.size()-1;

    my_sessions[my_sessions.size()-1]->set_id(ip_addrs_index[ip_addr]);
    //router_in->add_socket(my_sessions[my_sessions.size()-1].get());
    
    //router_out->add_socket(my_sessions[my_sessions.size()-1].get());
    
    //my_sessions[my_sessions.size()-1]->start();
    //router_in->start();
    //router_out->start();

}

bool session_container::find(std::string _ip_addr){


    std::map<std::string, int>::iterator it;
    it = my_session_map.find(_ip_addr);

    if(it == my_session_map.end())
        return false;
    else 
        return true;

}

std::string session_container::get_ip_addr(short dest){


    return kernel_info_table[dest];

}


bool session_container::send(std::string ip_addr, char * data, int size, short dest){


    if(!find(ip_addr))
        return false;

#ifdef TEST
    assert(size == 80);
    assert(my_session_map[ip_addr] == 0);
    assert(dest == 1);
#endif

    my_sessions[my_session_map[ip_addr]]->send(data, size, dest);

    return true;
}


