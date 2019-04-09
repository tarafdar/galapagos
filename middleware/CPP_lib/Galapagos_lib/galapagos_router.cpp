#include "galapagos_router.hpp"




void galapagos::router::init_ports(int num_ports){

    for(int i=0; i<num_ports; i++){
        s_axis.push_back(std::make_unique <stream> ());
        m_axis.push_back(std::make_unique <stream> ());
    }

}

galapagos::router::router(int num_ports){

    for(int i=0; i<num_ports; i++){
        s_axis.push_back(std::make_unique <stream> ());
        m_axis.push_back(std::make_unique <stream> ());
    }

}

void galapagos::router::add_stream(galapagos::streaming_core * _gsc){

    _gsc->in= s_axis[_gsc->id].get(); 
    _gsc->out= m_axis[_gsc->id].get(); 

}

galapagos::stream_packet galapagos::router::read(short id){

    assert(id <= s_axis.size());
    return s_axis[id]->read();

}

size_t galapagos::router::m_size(short id){
    
    assert(id <= m_axis.size());
    return m_axis[id]->size();
}

size_t galapagos::router::s_size(short id){
    
    assert(id <= s_axis.size());
    return s_axis[id]->size();
}

void galapagos::router::write(galapagos::stream_packet gps){

    assert(gps.dest <= m_axis.size());
    m_axis[gps.dest]->write(gps);
}
