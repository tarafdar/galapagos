//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================


#include "galapagos_router_node.hpp"


template <typename T> 
galapagos::router_node<T>::router_node(std::vector <std::string>  _kern_info_table, 
                                    std::string _my_address,
                                    bool * _done,
                                    std::mutex * _mutex,
                                    int num_ext)
                                    :galapagos::router<T>::router(_done, _mutex)
{
  

    my_address = _my_address;

    num_local = 0;

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);

        if(_kern_info_table[i] == _my_address){
            dest_to_kern_ind[i] = num_local;
            num_local++;
        }
    }
   
    galapagos::router<T>::init_ports(num_local+num_ext);
    ext_index = num_local;
    
}


template <typename T> 
void galapagos::router_node<T>::add_ext_stream(galapagos::streaming_core <T> * gsc){
    
   
    ext_streams.push_back(gsc);
    ext_streams[ext_streams.size() - 1]->start();

    ext_streams_indices.push_back(ext_index);
    ext_index++;

}



template <typename T> 
void galapagos::router_node<T>::add_kernel(galapagos::kernel<T> * _gk, int index){

    galapagos::router<T>::add_stream( _gk, index);

}

template <typename T> 
void galapagos::router_node<T>::start(){

    t=std::make_unique<std::thread>(&galapagos::router<T>::route, this); 
    t->detach();
    
}



template <typename T> 
void galapagos::router_node<T>::route(){

    galapagos::stream_packet<T> gps;

    while(1){
        

        if(this->is_done())
            break;
        for(int i=0; i<this->m_axis.size(); i++){
            if(this->m_axis[i]!=nullptr){
                galapagos::stream <T> * stream_ptr = this->m_axis[i].get();
                if(stream_ptr->try_peak(gps)){

                    if (kern_info_table[gps.dest] == my_address)
                    {
                        stream_ptr->try_read(gps);
                        this->s_axis[dest_to_kern_ind[gps.dest]]->write(gps);
                    }
                    else{
                       
                        int dest;
                        std::vector <T> vect = stream_ptr->read(&dest);
                        this->s_axis[ext_streams_indices[0]]->write((char *)vect.data(), vect.size()*8, dest);
                    }
                }
            }
        }
    }

}


template <typename T> 
void galapagos::router_node<T>::end(){


    while(!this->is_done());

}


template <typename T> 
void galapagos::router_node<T>::drain(){


    bool cont = true;
    while(cont){
        cont = false;
        for(int i=0; i<this->s_axis.size(); i++){
            if(this->s_axis[i]->size()>0)
                cont = true;
        }
        for(int i=0; i<this->m_axis.size(); i++){
            if(this->m_axis[i]->size()>0)
                cont = true;
        }
    }


}


template <typename T> 
galapagos::router_node<T>::~router_node(){;}

template class galapagos::router_node<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::router_node<float >;
template class galapagos::router_node<double >;
