//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#include "galapagos_net_tcp_server_send.hpp"

using namespace galapagos::net::tcp;

//#define TEST
template <typename T>
server_send<T>::server_send(short _port, 
                        boost::asio::io_context * _io_context, 
                        session_container <T> * _sessions,
                        bool * _done,
                        std::mutex * _done_mutex,
                        galapagos::stream <T> * from_node
        
):galapagos::streaming_core<T>(0, from_node, nullptr)

{

    done = _done;
    mutex = _done_mutex;
    port = _port;
    io_context = _io_context;
    sessions = _sessions;

    t_send = std::make_unique<std::thread>(&server_send::send_loop,this);
    t_send->detach();
}



template <typename T>
void server_send<T>::send_loop(){

    int dest;
    while(1){
        
        {
            std::lock_guard<std::mutex> guard(*mutex);
            if(*done){
                break;
            }
        }
        

        galapagos::stream_packet<T> gps;

        int data;
        //packet found
        if(this->in != nullptr){
            if(this->in->try_peak(gps)){

                data = (int)gps.data;
                dest = (int)gps.dest;
                std::string ip_addr = sessions->get_ip_addr(dest);
                bool session_found = sessions->find(ip_addr);
                if (!session_found){
                    send_new(ip_addr, dest);

                }
                else{
                  std::vector<T> data_vect = this->in->read(&dest);
                  sessions->send(ip_addr, (char *)data_vect.data(), data_vect.size()*8, dest);

                }


            }
        }

    }

}

  
template <typename T>
void server_send<T>::send_new(std::string ip_addr, int dest){
    
    boost::asio::ip::tcp::socket s(io_context_local);
    boost::asio::ip::tcp::resolver resolver(io_context_local);
    std::ostringstream convert;
    convert << port;
    std::string port_str = convert.str();
    bool send_successful = false;
    
    while(!send_successful){
      try{
        boost::asio::connect(s, resolver.resolve((char *)ip_addr.c_str(), (char *)port_str.c_str()));
        send_successful = true;
        sessions->add_session(std::move(s), &io_context_local);
        std::vector<T> data_vect = this->in->read(&dest);
        sessions->send(ip_addr, (char *)data_vect.data(), data_vect.size() * 8, dest);
    
      }
      catch(const boost::system::system_error& ex){
        send_successful = false;
      }
    }

}

template class galapagos::net::tcp::server_send<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::net::tcp::server_send<float >;
template class galapagos::net::tcp::server_send<double >;
