//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#include "galapagos_router.hpp"


template <typename T> 
galapagos::router<T>::router(bool * _done, std::mutex * _mutex){


    done = _done;
    mutex = _mutex;


}



template <typename T> 
void galapagos::router<T>::init_ports(int num_ports){

    std::stringstream ss;
    for(int i=0; i<num_ports; i++){
        s_axis.push_back(nullptr);
        m_axis.push_back(nullptr);
    }

}

template <typename T> 
galapagos::router<T>::router(bool * _done, std::mutex * _mutex, int num_ports){

    done = _done;
    mutex = _mutex;

    std::stringstream ss;
    for(int i=0; i<num_ports; i++){
        s_axis.push_back(nullptr);
        m_axis.push_back(nullptr);
    }

}

template <typename T> 
void galapagos::router<T>::add_port(int index){
    
    s_axis[index] = std::make_unique <stream<T> > ();
    m_axis[index] = std::make_unique <stream<T> > ();



}


template <typename T> 
void galapagos::router<T>::add_stream(galapagos::streaming_core <T> * _gsc, int index){
    s_axis[index] = std::make_unique <galapagos::stream <T> > ();
    m_axis[index] = std::make_unique <galapagos::stream <T> > ();

    _gsc->in= s_axis[index].get(); 
    _gsc->out= m_axis[index].get(); 

}

template <typename T> 
galapagos::stream_packet<T> galapagos::router<T>::read(short id){

    assert(id < s_axis.size());
    return s_axis[id]->read();

}

template <typename T> 
size_t galapagos::router<T>::m_size(short id){
    
    assert(id < m_axis.size());
    return m_axis[id]->size();
}

template <typename T> 
size_t galapagos::router<T>::s_size(short id){

    
    assert(id < s_axis.size());
    return s_axis[id]->size();
}

template <typename T> 
void galapagos::router<T>::write(galapagos::stream_packet<T> gps){

    assert(gps.dest < m_axis.size());
    m_axis[gps.dest]->write(gps);
}

template <typename T> 
galapagos::stream<T> * galapagos::router<T>::get_s_axis(short id){
    return s_axis[id].get(); 
}

template <typename T> 
galapagos::stream<T> * galapagos::router<T>::get_m_axis(short id){
    return m_axis[id].get(); 
}

template <typename T> 
bool galapagos::router<T>::is_done(){

        {
            std::lock_guard<std::mutex> guard(*mutex);
            return *done;
        }

}

template class galapagos::router<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::router<float >;
template class galapagos::router<double >;
