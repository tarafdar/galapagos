#include "galapagos_router.hpp"



galapagos_router::galapagos_router(std::vector <std::string>  _kern_info_table, std::string _my_address){
  

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
        //s_axis_stream.push_back(std::make_unique <galapagos_stream> ());
        //m_axis_stream.push_back(std::make_unique <galapagos_stream> ());
        std::queue <galapagos_stream_packet> q;
        s_axis_mutex.push_back(std::make_unique <std::mutex> ());
        m_axis_mutex.push_back(std::make_unique <std::mutex> ());
        s_axis.push_back(q);
        m_axis.push_back(q);
    }
  
    
}


galapagos_router::~galapagos_router(){
    
    t.get()->join();

}

void galapagos_router::add_kernel(galapagos_kernel * _gk){

    ;
    //s_axis[_gk->id] = std::queue <galapagos_stream_packet >;
    //m_axis[_gk->id] = std::make_unique<std::queue <galapagos_stream_packet > >;
    //_gk->in= s_axis[_gk->id].get(); 
    //_gk->out= m_axis[_gk->id].get(); 
    


}



void galapagos_router::start(){
    
    t=std::make_unique<std::thread>(&galapagos_router::route, this); 

}


void galapagos_router::route(){

    
    galapagos_stream_packet gps;
    while(1){
        
        //done set outside
        {
            std::lock_guard<std::mutex> guard(mutex);
            if(_done)
                break;
        }
        for(int i=0; i<m_axis.size(); i++){
            
            std::lock_guard<std::mutex> guard(*(m_axis_mutex[i].get()));
            if(m_axis[i].size() > 0){
                gps = m_axis[i].front();
                assert(gps.dest <= kern_info_table.size());
                
                //local 
                if (kern_info_table[gps.dest] == my_address)
                {
                    
                    if(gps.dest != i){
                        std::lock_guard<std::mutex> guard(*(s_axis_mutex[gps.dest].get()));
                        s_axis[gps.dest].push(gps);
                    }
                    else{
                        s_axis[gps.dest].push(gps);
                    }
                }
                m_axis[i].pop();
            }
        
        }
    }
}

galapagos_stream_packet galapagos_router::read(short id){

    galapagos_stream_packet gps;
    
    assert(id <= s_axis.size());
   
    while(1)
    {
        std::lock_guard<std::mutex> guard(*(s_axis_mutex[id].get()));
        if(s_axis[id].size() > 0){
            gps = s_axis[id].front();
            s_axis[id].pop();
            break;
        }
    }
    return gps;

}

size_t galapagos_router::m_size(short id){
    
    size_t ret;

    
    {
        std::lock_guard<std::mutex> guard(*(m_axis_mutex[id].get()));
        assert(id <= m_axis.size());
        ret = m_axis[id].size();
    }

    return ret;
}

size_t galapagos_router::s_size(short id){
    
    size_t ret;

    
    {
        std::lock_guard<std::mutex> guard(*(s_axis_mutex[id].get()));
        assert(id <= s_axis.size());
        ret = s_axis[id].size();
    }

    return ret;
}

void galapagos_router::write(galapagos_stream_packet gps){

    
    
    {
        std::lock_guard<std::mutex> guard(*(m_axis_mutex[gps.dest].get()));
        assert(gps.dest <= m_axis.size());
        m_axis[gps.dest].push(gps);
    }

}

void galapagos_router::end(){
   
    std::lock_guard<std::mutex> guard(mutex);
    _done = true;

}
