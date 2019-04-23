//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#include "galapagos_router_net.hpp"


template <typename T> 
galapagos::router_net<T>::router_net(std::vector <std::string> &  _kern_info_table, stream <T> * ext, bool * _done, std::mutex * _mutex, std::string my_address)
        :galapagos::router<T>(_done, _mutex)
{
    ext_port = ext;

    std::vector<std::string>::iterator it;
    std::map<std::string, short >::iterator itr;
    

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);



        if(_kern_info_table[i] != my_address){
            it = std::find(ip_addrs.begin(), ip_addrs.end(), _kern_info_table[i]);
            if(it == ip_addrs.end()){
                this->s_axis_ptr.push_back(nullptr);
                this->m_axis_ptr.push_back(nullptr);
                ip_addrs.push_back(_kern_info_table[i]); 
                address_map[_kern_info_table[i]] = ip_addrs.size() - 1;
            }

        }

    }
    
}

template <typename T> 
void galapagos::router_net<T>::add_socket(galapagos::streaming_core <T> * _gsc){


    this->s_axis_ptr[_gsc->id] = _gsc->in;
    this->m_axis_ptr[_gsc->id] = _gsc->out;
    
}


template <typename T> 
galapagos::router_net_out<T>::router_net_out(std::vector <std::string> &  _kern_info_tables, stream <T> * from_sessions, bool * _done, std::mutex * _mutex, std::string my_address)
    :galapagos::router_net<T>::router_net(_kern_info_tables, from_sessions, _done, _mutex, my_address)
{;}

template <typename T> 
void galapagos::router_net_out<T>::start(){
    this->t=std::make_unique<std::thread>(&galapagos::router_net_out<T>::route, this); 
    this->t->detach();
}

template <typename T> 
void galapagos::router_net_out<T>::route(){

    galapagos::stream_packet<T> gps;

    while(1){

        if(this->is_done())
            break;
        for(int i=0; i<this->m_axis_ptr.size(); i++){
        
            if(this->m_axis_ptr[i] != nullptr && this->ext_port!= nullptr){
                galapagos::stream <T>* stream_ptr = this->m_axis_ptr[i];
                if(stream_ptr->try_peak(gps)){
                    int dest;

                    std::vector <T> vect =  stream_ptr->read(&dest);
                    this->ext_port->write((char *)vect.data(), vect.size()*8, dest);
                }
            }
        }

    }
}



template class galapagos::router_net<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::router_net<float >;
template class galapagos::router_net<double >;
template class galapagos::router_net_out<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::router_net_out<float >;
template class galapagos::router_net_out<double >;
