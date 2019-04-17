#include "galapagos_router.hpp"


galapagos::router::router(bool * _done, std::mutex * _mutex){


    done = _done;
    mutex = _mutex;


}



void galapagos::router::init_ports(int num_ports){

    std::stringstream ss;
    for(int i=0; i<num_ports; i++){
        //ss << i;
        //std::string name = "router index: " + ss.str();
        //s_axis.push_back(std::make_unique <stream> (name));
        //m_axis.push_back(std::make_unique <stream> (name));
        s_axis.push_back(std::make_unique <stream> ());
        m_axis.push_back(std::make_unique <stream> ());
    }

}

galapagos::router::router(bool * _done, std::mutex * _mutex, int num_ports){

    done = _done;
    mutex = _mutex;

    std::stringstream ss;
    for(int i=0; i<num_ports; i++){
        //ss << i;
        //std::string name = "router index: " + ss.str();
        //s_axis.push_back(std::make_unique <stream> (name));
        //m_axis.push_back(std::make_unique <stream> (name));
        s_axis.push_back(std::make_unique <stream> ());
        m_axis.push_back(std::make_unique <stream> ());
    }

}

void galapagos::router::add_stream(galapagos::streaming_core * _gsc, int index){

    _gsc->in= s_axis[index].get(); 
    _gsc->out= m_axis[index].get(); 

}

galapagos::stream_packet galapagos::router::read(short id){

    assert(id < s_axis.size());
    return s_axis[id]->read();

}

size_t galapagos::router::m_size(short id){
    
    assert(id < m_axis.size());
    return m_axis[id]->size();
}

size_t galapagos::router::s_size(short id){
    
    assert(id < s_axis.size());
    return s_axis[id]->size();
}

void galapagos::router::write(galapagos::stream_packet gps){

    assert(gps.dest < m_axis.size());
    m_axis[gps.dest]->write(gps);
}

galapagos::stream * galapagos::router::get_s_axis(short id){
    return s_axis[id].get(); 
}

galapagos::stream * galapagos::router::get_m_axis(short id){
    return m_axis[id].get(); 
}

bool galapagos::router::is_done(){

        {
            std::lock_guard<std::mutex> guard(*mutex);
            return *done;
//            if(_done)
//                break;
        }

}
