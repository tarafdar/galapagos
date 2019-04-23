//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#include "galapagos_node.hpp"

#define NETWORK

//#define TEST

template<typename T>
galapagos::node<T>::node(std::vector <std::string>   & _kern_info_table, std::string  & _my_address){
 
    done = false;

    int num_local = 0;
    for(int i=0; i<_kern_info_table.size(); i++){
        //if(_kern_info_table[i] == _my_address)
        if(_kern_info_table[i] == _my_address){
            kernels.push_back(nullptr);
            dest_to_kern_ind[i] = kernels.size() - 1;
            num_local++;
        }
    }

#ifdef NETWORK
    // 1 external for network
    my_router = std::make_unique<router_node<T> >(_kern_info_table, _my_address, &done, &mutex, 1); 
#else
    my_router = std::make_unique<router_node<T> >(_kern_info_table, _my_address, &done, &mutex, 0); 

#endif
    

#ifdef NETWORK
    my_router->add_port(num_local);
    net_ptr = std::make_unique<galapagos::net::tcp::tcp<T> >(num_local, 8889, _kern_info_table, _my_address, 
                                                    my_router->get_s_axis(num_local), my_router->get_m_axis(num_local), 
                                                    &mutex, &done, true);  
#endif

}


template<typename T>
void galapagos::node<T>::add_kernel(short id, void (*func)(stream <T> *, stream <T> *)){

    int index = dest_to_kern_ind[id];
    kernels[index] = std::make_unique<kernel<T> >(id);
    kernels[index]->set_func(func);
    my_router->add_kernel(kernels[index].get(), index);

}

template<typename T>
void galapagos::node<T>::add_kernel(short id, void (*func)()){
    int index = dest_to_kern_ind[id];
    kernels[index] = std::make_unique<kernel<T> >(id);
    kernels[index]->set_func(func);
    my_router->add_kernel(kernels[index].get(), index);

}


template<typename T>
void galapagos::node<T>::start(){

    {
        std::lock_guard <std::mutex> guard(mutex);
        done = false;
    
    }

#ifdef NETWORK
    my_router->add_ext_stream(net_ptr.get());
#endif
    for(int i=0; i<kernels.size(); i++){
        if(kernels[i] != nullptr){
            kernels[i]->start();
        }
    }
    my_router->start();
    net_ptr->start();
}



template<typename T>
void galapagos::node<T>::end(){


    for(int i=0; i<kernels.size(); i++){
        kernels[i]->barrier();
    }
    
#ifdef NETWORK
    net_ptr->barrier();
    my_router->drain();
#endif
    {
        std::lock_guard <std::mutex> guard(mutex);
        done = true;
    }
    my_router->end();

}
template class galapagos::node<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::node<float >;
template class galapagos::node<double >;
