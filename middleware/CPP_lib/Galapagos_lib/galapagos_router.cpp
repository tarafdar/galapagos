#include "galapagos_router.hpp"



galapagos::router::router(std::vector <std::string>  _kern_info_table, std::string _my_address){
  
    _done = false;

    my_address = _my_address;
   
    std::map<std::string,std::vector<short> >::iterator itr;

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);
        itr = address_map.find(_kern_info_table[i]);
        if(itr != address_map.end()){
            std::vector <short> vect ={i};
            address_map[_kern_info_table[i]] = vect;
        }
        else{
            address_map[_kern_info_table[i]].push_back(i);
        }
        s_axis.push_back(std::make_unique <stream> ());
        m_axis.push_back(std::make_unique <stream> ());
    }
    
}


galapagos::router::~router(){
    
  ;
   // t.get()->join();

}

void galapagos::router::add_kernel(kernel * _gk){

    _gk->in= s_axis[_gk->id].get(); 
    _gk->out= m_axis[_gk->id].get(); 

}

void galapagos::router::start(){
   
    t=std::make_unique<std::thread>(&galapagos::router::route, this); 
    t->detach();
}


void galapagos::router::route(){

    galapagos::stream_packet gps;
    while(1){
        
        //done set outside
        {
            std::lock_guard<std::mutex> guard(mutex);
            if(_done)
                break;
        }
        for(int i=0; i<m_axis.size(); i++){
            std::lock_guard<std::mutex> guard(*(m_axis[i]->get_mutex()));
            
            if(m_axis[i]->size_ns() > 0){
                gps = m_axis[i]->peek_ns();
                assert(gps.dest <= kern_info_table.size());
               
                //local 
                if (kern_info_table[gps.dest] == my_address)
                {
                    if(gps.dest != i){
                        s_axis[gps.dest]->write(gps);
                    }
                    else{
                        s_axis[gps.dest]->write_ns(gps);
                    }
                }
                m_axis[i]->pop_ns();
            }
        
        }
    }
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

void galapagos::router::end(){
   
    std::lock_guard<std::mutex> guard(mutex);
    _done = true;

}
