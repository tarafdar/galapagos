#include "galapagos_router_net.hpp"

#define TEST

galapagos::router_net::router_net(std::vector <std::string> &  _kern_info_table, stream * ext, bool * _done, std::mutex * _mutex, std::string my_address)
        :galapagos::router(_done, _mutex)
{
  
    //_done = false;
   
    

    ext_port = ext;

    std::vector<std::string>::iterator it;
    std::map<std::string, short >::iterator itr;
    
    //s_axis.push_back(std::make_unique <stream> ());
    //m_axis.push_back(std::make_unique <stream> ());

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);



        if(_kern_info_table[i] != my_address){
            //s_axis.push_back(std::make_unique <stream> (_kern_info_table[i]));
            //m_axis.push_back(std::make_unique <stream> (_kern_info_table[i]));
            it = std::find(ip_addrs.begin(), ip_addrs.end(), _kern_info_table[i]);
            if(it == ip_addrs.end()){
                s_axis.push_back(std::make_unique <stream> ());
                m_axis.push_back(std::make_unique <stream> ());
                s_axis_valid.push_back(false);
                ip_addrs.push_back(_kern_info_table[i]); 
                //address_map[_kern_info_table[i]] = ip_addrs.size() - 1;
                address_map[_kern_info_table[i]] = ip_addrs.size() - 1;
            }
    

        }




    }

    
}

void galapagos::router_net::add_socket(galapagos::streaming_core * _gsc){

//#ifdef DEBUG
//    std::cout << "ADDING _GSC ID " << _gsc->id <<std::endl;
//#endif
    s_axis[_gsc->id]->lock();
    s_axis_valid[_gsc->id] = true;
    _gsc->in= s_axis[_gsc->id].get(); 
    s_axis[_gsc->id]->unlock();
    m_axis[_gsc->id]->lock();
    _gsc->out= m_axis[_gsc->id].get(); 
    m_axis[_gsc->id]->unlock();

//    std::cout << "adding socket " << _gsc->id << std::endl;
}



galapagos::router_net_in::router_net_in(std::vector <std::string> &  _kern_info_tables, stream * to_sessions, bool *_done, std::mutex * _mutex, std::string my_address)
    :galapagos::router_net::router_net(_kern_info_tables, to_sessions,  _done, _mutex, my_address)
{;}

void galapagos::router_net_in::start(){
    t=std::make_unique<std::thread>(&galapagos::router_net_in::route, this); 
    t->detach();
}

void galapagos::router_net_in::route(){


    int s_axis_index = 0;
    galapagos::stream_packet gps;

    while(1){
        
        //done set outside
        //{
        //    std::lock_guard<std::mutex> guard(mutex);
        //    if(_done)
        //        break;
        //}
        //galapagos::stream * stream_ptr = m_axis[0].get();


        //if(stream_ptr->try_read(gps)){
        //    std::string ip_addr = kern_info_table[gps.dest];
        //    int slave_index = address_map[ip_addr];
        //    s_axis[slave_index]->write(gps);
        //}
        if(is_done())
            break;

        if(ext_port->try_peak(gps)){
            std::string ip_addr = kern_info_table[gps.dest];
            int slave_index = address_map[ip_addr];
            
            if(s_axis_valid[slave_index]){
//#ifdef DEBUG
//          std::cout << std::endl << "GPS.DEST: " << gps.dest << std::endl;
//#endif
                int dest;
                std::vector <ap_uint <PACKET_DATA_LENGTH> > vect = ext_port->read(&dest);


#ifdef TEST
                assert(vect.size() == 10);
#endif
                s_axis[slave_index]->write((char *)vect.data(), vect.size()*8, dest);
            }
        }



    }
}

galapagos::router_net_out::router_net_out(std::vector <std::string> &  _kern_info_tables, stream * from_sessions, bool * _done, std::mutex * _mutex, std::string my_address)
    :galapagos::router_net::router_net(_kern_info_tables, from_sessions, _done, _mutex, my_address)
{;}

void galapagos::router_net_out::start(){
    t=std::make_unique<std::thread>(&galapagos::router_net_out::route, this); 
    t->detach();
}

void galapagos::router_net_out::route(){

    galapagos::stream_packet gps;

    while(1){
        //done set outside
        //{
        //    //std::lock_guard<std::mutex> guard(mutex);
        //    //if(_done)
        //    std::lock_guard<std::mutex> guard(*mutex);
        //    if(*done)
        //        break;
        //}
        //

        if(is_done())
            break;
        for(int i=0; i<m_axis.size(); i++){
            
            galapagos::stream * stream_ptr = m_axis[i].get();
            if(stream_ptr->try_peak(gps)){
                int dest;

                std::vector <ap_uint <PACKET_DATA_LENGTH> > vect =  stream_ptr->read(&dest);
                ext_port->write((char *)vect.data(), vect.size()*8, dest);
                //s_axis[0]->write(gps);
                //s_axis[0]->write(gps);
                //std::cout << "s_axis name: " << s_axis[0]->name << std::endl;
                //std::cout << "s_axis size: " << s_axis[0]->size() << std::endl;
                //std::cout << "ext name: " << ext_port->name << std::endl;
                std::cout << "ext size: " << ext_port->size() << std::endl;
            }

        }

    }
}



