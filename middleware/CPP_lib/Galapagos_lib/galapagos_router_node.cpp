#include "galapagos_router_node.hpp"

#define TEST

galapagos::router_node::router_node(std::vector <std::string>  _kern_info_table, 
                                    std::string _my_address,
                                    bool * _done,
                                    std::mutex * _mutex,
                                    int num_ext)
                                    :galapagos::router::router(_done, _mutex)
{
  
//    _done = false;

    my_address = _my_address;

    num_local = 0;

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);

        if(_kern_info_table[i] == _my_address){
            dest_to_kern_ind[i] = num_local;
            num_local++;
        }
    }
   
//    int num_ext = 1; //one external port for net
    galapagos::router::init_ports(num_local+num_ext);
    ext_index = num_local;
    
}


void galapagos::router_node::add_ext_stream(galapagos::streaming_core * gsc){
    
    //s_axis.push_back(std::make_unique <stream> ());
    //m_axis.push_back(std::make_unique <stream> ());
   
    ext_streams.push_back(gsc);
    ext_streams[ext_streams.size() - 1]->start();

    //ext_streams_indices.push_back(s_axis.size() - 1);
    ext_streams_indices.push_back(ext_index);
    ext_index++;

}



void galapagos::router_node::add_kernel(galapagos::kernel * _gk, int index){

    galapagos::router::add_stream( _gk, index);

}

void galapagos::router_node::start(){

    t=std::make_unique<std::thread>(&galapagos::router::route, this); 
    t->detach();
    
}



void galapagos::router_node::route(){

    galapagos::stream_packet gps;

    while(1){
        

        if(is_done())
            break;
        //for(int i=0; i<m_axis.size(); i++){
        for(int i=0; i<num_local; i++){
            galapagos::stream * stream_ptr = m_axis[i].get();
            if(stream_ptr->try_peak(gps)){
                //std::cout << "reading stream: " << stream_ptr->name  << std::endl;
#ifdef DEBUG
                std::cout << "stream size: " << stream_ptr->size()  << std::endl;
#endif


#ifdef TEST
                assert(kern_info_table[gps.dest] != my_address);
#endif

                if (kern_info_table[gps.dest] == my_address)
                {
//#ifdef DEBUG
//                    std::cout << "local route to stream: " << std::endl;
//#endif
                    stream_ptr->try_read(gps);
                    s_axis[dest_to_kern_ind[gps.dest]]->write(gps);
                }
                else{
//#ifdef DEBUG
//                    std::cout << "net route to " << ext_streams_indices[0] << std::endl;
//#endif
#ifdef TEST
                assert(ext_streams_indices[0] == 1);
#endif
                   
                    int dest;
                    std::vector <ap_uint <PACKET_DATA_LENGTH> > vect = stream_ptr->read(&dest);
#ifdef TEST
                    assert(vect.size() == 10);
#endif
                    s_axis[ext_streams_indices[0]]->write((char *)vect.data(), vect.size()*8, dest);
                    //s_axis[ext_streams_indices[0]]->write(gps);
                }
            }
        }
    }

#ifdef DEBUG
    std::cout << " after done in route " << std::endl;
#endif
}


void galapagos::router_node::end(){


    while(!is_done());

    //for(int i=0; i<ext_streams.size(); i++){
    //    ext_streams[i]->barrier();
    //}
    

}


void galapagos::router_node::drain(){


    bool cont = true;
    while(cont){
        cont = false;
        for(int i=0; i<s_axis.size(); i++){
            if(s_axis[i]->size()>0)
                cont = true;
        }
        for(int i=0; i<m_axis.size(); i++){
            if(m_axis[i]->size()>0)
                cont = true;
        }
    }

#ifdef DEBUG
    std::cout << " AFTER DRAIN " << std::endl; 
#endif

}


galapagos::router_node::~router_node(){;}
