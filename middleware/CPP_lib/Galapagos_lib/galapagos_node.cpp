#include "galapagos_node.hpp"

#define NETWORK

#define TEST

galapagos::node::node(std::vector <std::string>   & _kern_info_table, std::string  & _my_address){
 
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
    my_router = std::make_unique<router_node>(_kern_info_table, _my_address, &done, &mutex, 1); 
#else
    my_router = std::make_unique<router_node>(_kern_info_table, _my_address, &done, &mutex, 0); 

#endif
    

#ifdef NETWORK

#ifdef DEBUG
    std::cout << "MAKING NETWORK " << std::endl;
#endif

#ifdef TEST
    assert(num_local == 1);

#endif

    net_ptr = std::make_unique<galapagos::net::tcp::tcp>(num_local, 8889, _kern_info_table, _my_address, 
                                                    my_router->get_s_axis(num_local), my_router->get_m_axis(num_local), 
                                                    &mutex, &done, true);  
#endif

}



void galapagos::node::add_kernel(short id, void (*func)(stream *, stream *)){

#ifdef DEBUG
    std::cout << "NUM OF KERNELS IS " << kernels.size() << std::endl;
    std::cout << "ADDING KERNEL " << id << std::endl;
#endif
    int index = dest_to_kern_ind[id];
#ifdef DEBUG
    std::cout << "ADDING KERNEL INDEX " << index << std::endl;
#endif
    kernels[index] = std::make_unique<kernel>(id);
    kernels[index]->set_func(func);
    my_router->add_kernel(kernels[index].get(), index);

}

void galapagos::node::add_kernel(short id, void (*func)()){
    int index = dest_to_kern_ind[id];
    kernels[index] = std::make_unique<kernel>(id);
    kernels[index]->set_func(func);
    my_router->add_kernel(kernels[index].get(), index);

}


void galapagos::node::start(){

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
#ifdef DEBUG
            std::cout << "STARTING KERNEL " << i << std::endl;
#endif
        }
    }
    my_router->start();
    net_ptr->start();
}



void galapagos::node::end(){

    //{
    //    std::lock_guard <std::mutex> guard(mutex);
    //    done = true;
    //}
    //

    std::cout << "before kernels barrier " << std::endl;

    for(int i=0; i<kernels.size(); i++){
        std::cout << "barrier for kernel " << kernels[i]->id << std::endl;
        kernels[i]->barrier();
    }
    
#ifdef NETWORK
    std::cout << "before net barrier " << std::endl;
    net_ptr->barrier();
    my_router->drain();
#endif
    {
        std::lock_guard <std::mutex> guard(mutex);
        done = true;
    }
    std::cout << "before end router " << std::endl;
    my_router->end();
    std::cout << "END END END " << std::endl;

}
