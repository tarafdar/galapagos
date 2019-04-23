//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#include "galapagos_streaming_core.hpp"

#include <iostream>


template <typename T> 
galapagos::streaming_core<T>::streaming_core(
        short _id,
        galapagos::stream<T>  * _in,
        galapagos::stream<T>  * _out
        )
{

    id = _id;
    in = _in;
    if(in != nullptr)
        in->id = id;
    out = _out;
}

template <typename T> 
galapagos::streaming_core<T>::streaming_core(
        short _id
        )
{
    
    id = _id;
    in = nullptr;
    out = nullptr;
}

template <typename T> 
galapagos::streaming_core<T>::~streaming_core(){

    ;

}

template <typename T> 
void galapagos::streaming_core<T>::start(){

    ;

}

template <typename T> 
void galapagos::streaming_core<T>::barrier(){

    if(in!=nullptr)
        while(in->size()>0);
    if(out!=nullptr)
        while(out->size()>0);

}

template <typename T> 
bool galapagos::streaming_core<T>::done(){
    bool _done = true;
    for(int i=0; i<t_vect.size(); i++)
        _done = _done | !t_vect[i].get()->joinable();

    return _done;
}

template class galapagos::streaming_core<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::streaming_core<float >;
template class galapagos::streaming_core<double >;
