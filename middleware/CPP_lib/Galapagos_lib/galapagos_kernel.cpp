//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#include "galapagos_kernel.hpp"

#include <iostream>


template <typename T> 
galapagos::kernel<T>::kernel(
        short _id,
        galapagos::stream <T> * _in,
        galapagos::stream <T> * _out
        ):galapagos::streaming_core<T>::streaming_core(_id, _in, _out)
{;}
    

template <typename T> 
galapagos::kernel<T>::kernel(
        short _id
        ):galapagos::streaming_core<T>::streaming_core(_id)
{;}


template <typename T> 
void galapagos::kernel<T>::set_func(void (* _func)(stream <T>*, stream <T>*)){

    func_str = _func; 
    func = nullptr;
}

template <typename T> 
void galapagos::kernel<T>::set_func(void (* _func)()){

    func = _func;
    func_str = nullptr;

}

template <typename T> 
void galapagos::kernel<T>::start(){

    if(func_str == nullptr && func != nullptr){
        assert(func != nullptr);
        this->t_vect.push_back(std::make_unique< std::thread>(func));
    }
    else if(func_str != nullptr){ 
        assert(func_str != nullptr);
        this->t_vect.push_back(std::make_unique< std::thread>(func_str, this->in, this->out));
    }
}    

template <typename T> 
void galapagos::kernel<T>::start(void (*func)(stream <T> *, stream <T> *)){

    this->t_vect.push_back(std::make_unique< std::thread>(func, this->in, this->out));


}


template <typename T> 
void galapagos::kernel<T>::barrier(){
   

    for(int i=0; i<this->t_vect.size(); i++){
        this->t_vect[i].get()->join();
    }
    galapagos::streaming_core<T>::barrier();

}

template <typename T> 
void galapagos::kernel<T>::start
    (void (*func)()){

    this->t_vect.push_back(std::make_unique< std::thread>(func));

}

template class galapagos::kernel<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::kernel<float >;
template class galapagos::kernel<double >;

