#include "galapagos_router.hpp"



galapagos::router_node::router_node(std::vector <std::string>  _kern_info_table, std::string _my_address){
  
    done = false;

    my_address = _my_address;
 
    mode_= full;
    std::map<std::string,std::vector<short> >::iterator itr;
    


    int num_ports = 0;

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

        //add all local ports
        if(_kern_info_table[i] == _my_address){
            num_ports++;
            init_ports(num_ports);
        }


    }

    
}


void galapagos::router_node::add_ext_kernel(galapagos::kernel * gk){
    s_axis.push_back(std::make_unique <stream> ());
    m_axis.push_back(std::make_unique <stream> ());
   
    ext_kernels.push_back(gk);
    //ext_kernels.push_back((std::unique_ptr<galapagos::net>)std::make_unique<galapagos::net >(s_axis[s_axis.size() -1].get(),
    //                      m_axis[m_axis.size() -1].get(),
    //                      address_map,
    //                      kern_info_table,
    //                      &mutex,
    //                      &_done,
    //                      enable 
    //                      ));
    ext_kernels[ext_kernels.size() - 1]->start();

    ext_kernels_indices.push_back(s_axis.size() - 1);

}



void galapagos::router_node::add_kernel(galapagos::kernel * _gk){

     add_streaming_core((galapagos::streaming_core *) gk);

}

void galapagos::router_node::start(){



    t=std::make_unique<std::thread>(&galapagos::router::route, this); 
    
    t->detach();
    
}



void galapagos::router_node::route(){

    galapagos::stream_packet gps;

    while(1){
        
        //done set outside
        {
            std::lock_guard<std::mutex> guard(mutex);
            if(_done)
                break;
        }
        for(int i=0; i<m_axis.size(); i++){
            galapagos::stream * stream_ptr = m_axis[i].get();
            if(stream_ptr->try_read(gps)){
                if (kern_info_table[gps.dest] == my_address)
                {
                    //std::cout << "local route" << std::endl;
                    s_axis[gps.dest]->write(gps);
                }
                else{
                    s_axis[ext_kernels_indices[network]]->write(gps);
                }
            }
        }
    }
}


void galapagos::router_node::end(){
   

    // poll through all streams ensuring they are empty
    //while(1){
    //    bool done = true;
    //    for(int i=0; i<m_axis.size(); i++){
    //        if(m_axis[i]->size() > 0)
    //            done = false; 
    //    }
    //    if(done)
    //        break;
    //}
    {
        std::lock_guard<std::mutex> guard(mutex);
        _done = true;
    }


    for(int i=0; i<ext_kernels.size(); i++){
        ext_kernels[i]->barrier();
    }
    
    //while(1){
    //    bool done = true;
    //    for(int i=0; i<s_axis.size(); i++){
    //        if(s_axis[i]->size() > 0)
    //            done = false; 
    //    }
    //    if(done)
    //        break;
    //}

}

