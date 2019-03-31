#include "galapagos_streaming_core.hpp"

#include <iostream>


galapagos::streaming_core::streaming_core(
        short _id,
        galapagos::stream  * _in,
        galapagos::stream  * _out
        )
{
    
    id = _id;
    in = _in;
    out = _out;
}

galapagos::streaming_core::streaming_core(
        short _id
        )
{
    
    id = _id;
    in = nullptr;
    out = nullptr;
}

galapagos::streaming_core::~streaming_core(){

    ;

}

void galapagos::streaming_core::start(){

    ;

}

void galapagos::streaming_core::barrier(){
   
    for(int i=0; i<t_vect.size(); i++){
        t_vect[i].get()->join();
    }

}

bool galapagos::streaming_core::done(){
    bool _done = true;
    for(int i=0; i<t_vect.size(); i++)
        _done = _done | !t_vect[i].get()->joinable();

    return _done;
}

