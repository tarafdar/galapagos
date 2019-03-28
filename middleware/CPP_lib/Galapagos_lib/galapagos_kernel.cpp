#include "galapagos_kernel.hpp"

#include <iostream>


galapagos::kernel::kernel(
        short _id,
        galapagos::stream  * _in,
        galapagos::stream  * _out
        )
{
    
    id = _id;
    in = _in;
    out = _out;
}

galapagos::kernel::kernel(
        short _id
        )
{
    
    id = _id;
    in = nullptr;
    out = nullptr;
}


void galapagos::kernel::set_func(void (* _func)(stream *, stream *)){

    func_str = _func; 
    func = nullptr;
}
void galapagos::kernel::set_func(void (* _func)()){

    func = _func;
    func_str = nullptr;

}
void galapagos::kernel::start(){

    //std::cout << "STARTING 0" << std::endl;
    if(func_str == nullptr && func != nullptr){
        assert(func != nullptr);
        //std::cout << "STARTING  1" << std::endl;
        t=std::make_unique< std::thread>(func);
    }
    else if(func_str != nullptr){ 
        assert(func_str != nullptr);
        //std::cout << "STARTING  2" << std::endl;
        t=std::make_unique< std::thread>(func_str, in, out);
    }
}    
void galapagos::kernel::start(void (*func)(stream *, stream *)){

    t=std::make_unique< std::thread>(func, in, out);

}


void galapagos::kernel::barrier(){
    
    t.get()->join();

}

void galapagos::kernel::start
    (void (*func)()){

    t=std::make_unique< std::thread>(func);

}


bool galapagos::kernel::done(){
    return !(t.get()->joinable());
}

