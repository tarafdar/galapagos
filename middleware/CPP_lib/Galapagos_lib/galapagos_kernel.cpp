#include "galapagos_kernel.hpp"

#include <iostream>


galapagos::kernel::kernel(
        short _id,
        galapagos::stream  * _in,
        galapagos::stream  * _out
        ):galapagos::streaming_core::streaming_core(_id, _in, _out)
{;}
    

galapagos::kernel::kernel(
        short _id
        ):galapagos::streaming_core::streaming_core(_id)
{;}


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
        t_vect.push_back(std::make_unique< std::thread>(func));
    }
    else if(func_str != nullptr){ 
        assert(func_str != nullptr);
        //std::cout << "STARTING  2" << std::endl;
        t_vect.push_back(std::make_unique< std::thread>(func_str, in, out));
    }
}    
void galapagos::kernel::start(void (*func)(stream *, stream *)){

    t_vect.push_back(std::make_unique< std::thread>(func, in, out));


}


void galapagos::kernel::barrier(){
   

    for(int i=0; i<t_vect.size(); i++){
        t_vect[i].get()->join();
    }
    galapagos::streaming_core::barrier();

}

void galapagos::kernel::start
    (void (*func)()){

    t_vect.push_back(std::make_unique< std::thread>(func));

}


//bool galapagos::kernel::done(){
//    bool _done = true;
//    for(int i=0; i<t_vect.size(); i++)
//        _done = _done | !t_vect[i].get()->joinable();
//
//    return _done;
//}
//
