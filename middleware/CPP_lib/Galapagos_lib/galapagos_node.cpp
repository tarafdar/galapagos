#include "galapagos_node.hpp"



galapagos::node::node(std::vector <std::string>  _kern_info_table, std::string _my_address){
  

    my_router = std::make_unique<router>(_kern_info_table, _my_address); 

    for(int i=0; i<_kern_info_table.size(); i++){
        if(_kern_info_table[i] == _my_address)
            kernels.push_back(nullptr);
    }

}



void galapagos::node::add_kernel(short id, void (*func)(stream *, stream *)){
    
    kernels[id] = std::make_unique<kernel>(id);
    kernels[id]->set_func(func);
    my_router->add_kernel(kernels[id].get());

}

void galapagos::node::add_kernel(short id, void (*func)()){
    kernels[id] = std::make_unique<kernel>(id);
    kernels[id]->set_func(func);
    my_router->add_kernel(kernels[id].get());

}


void galapagos::node::start(){
   
    my_router->start();
    for(int i=0; i<kernels.size(); i++){
        kernels[i]->start();
    }

}



void galapagos::node::end(){
    
    for(int i=0; i<kernels.size(); i++){
        kernels[i]->barrier();
    }
    my_router->end();

}
