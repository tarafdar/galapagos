//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================


#include "galapagos_net_tcp_session.hpp"


//#define TEST

using namespace galapagos::net::tcp;

template <typename T>
session<T>::session(boost::asio::ip::tcp::socket  _socket, boost::asio::io_context * _io_context)
    :galapagos::streaming_core<T>(-1), socket(std::move(_socket))
{


      s_axis = std::make_unique<galapagos::stream <T> >(); 
      m_axis = std::make_unique<galapagos::stream <T> >(); 

      this->in = s_axis.get();
      this->out = m_axis.get();
      io_context = _io_context;

      
      read = true;   
      write = true;


}


template <typename T>
void session<T>::send(char * data, int size, short dest){



    this->in->write(data, size, dest);
}


template <typename T>
void session<T>::set_id(short _id){
    
    this->id= _id;


}

template <typename T>
void session<T>::start()
{
      std::thread t_read(&session<T>::do_read, this);
      std::thread t_write(&session<T>::do_write, this);
      t_read.detach();
      t_write.detach();
}


template <typename T>
void session<T>::do_read()
{
    int length;
   
    while(read){
       
        socket.wait(boost::asio::ip::tcp::socket::wait_read);
        int avail = socket.available();
        if(avail>0){
            boost::system::error_code error;
            std::unique_ptr<char[]> data = std::make_unique<char[]>(avail);
            length = socket.read_some(boost::asio::buffer(data.get(), avail), error);
            short * dest_ptr = (short *) data.get();

            this->out->write(data.get() + sizeof(short), avail - sizeof(short), dest_ptr[0]);
        }
    }
}


template <typename T>
void session<T>::do_write()
{
    int dest;


    while(write){
        
        std::vector <T> vect_in = this->in->read(&dest);

   
        std::unique_ptr<char[]> data = std::make_unique<char[]>(vect_in.size()*8 + sizeof(short));
        memcpy(data.get(), (char *)&dest, sizeof(short));
        char * payload = data.get() + sizeof(short);
        memcpy(payload, vect_in.data(), vect_in.size()*8);
        boost::asio::write(socket, boost::asio::buffer(data.get(), vect_in.size()*8 + sizeof(short)));
    }

}


template <typename T>
session_container<T>::session_container(
                                          std::vector <std::string> & _kernel_info_table,
                                          std::string & my_address,
                                          bool * _done,
                                          std::mutex * _mutex,
                                          galapagos::router_net_out <T> * _router_out
        ){


    router_out = _router_out;
    std::vector<std::string>::iterator it;

    for(int i=0; i<_kernel_info_table.size(); i++){
        kernel_info_table.push_back(_kernel_info_table[i]);
        if(_kernel_info_table[i] != my_address){
            it=std::find(ip_addrs.begin(), ip_addrs.end(), _kernel_info_table[i]);
            if(it == ip_addrs.end()){
                ip_addrs.push_back(_kernel_info_table[i]);
                ip_addrs_index[_kernel_info_table[i]] = ip_addrs.size() -1;
            }
        }
    }

    router_out->start();
}


template <typename T>
void session_container<T>::start(){
    for(int i=0; i<my_sessions.size(); i++){
        my_sessions[i]->start();
    }


}


template <typename T>
galapagos::net::tcp::session <T> * session_container<T>::add_session(boost::asio::ip::tcp::socket  _socket, boost::asio::io_context * io_context){


    //get mutex
    std::lock_guard <std::mutex> lock(mutex);
    
    std::string ip_addr = _socket.remote_endpoint().address().to_string();
    my_sessions.push_back(std::make_unique<session<T> >(std::move(_socket), io_context));
    my_session_map[ip_addr] = my_sessions.size()-1;

    my_sessions[my_sessions.size()-1]->set_id(ip_addrs_index[ip_addr]);
    router_out->add_socket(my_sessions[my_sessions.size()-1].get());
    my_sessions[my_sessions.size()-1]->start();
    return my_sessions[my_sessions.size()-1].get();

}

template <typename T>
bool session_container<T>::find(std::string _ip_addr){


    std::map<std::string, int>::iterator it;
    it = my_session_map.find(_ip_addr);

    if(it == my_session_map.end())
        return false;
    else 
        return true;

}

template <typename T>
std::string session_container<T>::get_ip_addr(short dest){


    return kernel_info_table[dest];

}


template <typename T>
bool session_container<T>::send(std::string ip_addr, char * data, int size, short dest){


    if(!find(ip_addr))
        return false;

    my_sessions[my_session_map[ip_addr]]->send(data, size, dest);

    return true;
}


template class galapagos::net::tcp::session<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::net::tcp::session<float >;
template class galapagos::net::tcp::session<double >;
template class galapagos::net::tcp::session_container<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::net::tcp::session_container<float >;
template class galapagos::net::tcp::session_container<double >;
