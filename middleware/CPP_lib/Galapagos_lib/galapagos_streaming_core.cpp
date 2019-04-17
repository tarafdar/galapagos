#include "galapagos_streaming_core.hpp"

#include <iostream>


galapagos::streaming_core::streaming_core(
        short _id,
        galapagos::stream  * _in,
        galapagos::stream  * _out
        )
{

#ifdef DEBUG
    std::cout << "in constructor of streaming core" << std::endl;
#endif
    id = _id;
    in = _in;
    if(in != nullptr)
        in->id = id;
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

#ifdef DEBUG
    std::cout << "IN BARRIER OF STREAMING CORE" << std::endl;
#endif
    ;
    //for(int i=0; i<t_vect.size(); i++){
    //    t_vect[i].get()->join();
    //}
    //
    if(in!=nullptr)
        while(in->size()>0);
    if(out!=nullptr)
        while(out->size()>0);

    //std::cout << "AT END OF BARRIER STREAMING CORE" << std::endl;
}

bool galapagos::streaming_core::done(){
    bool _done = true;
    for(int i=0; i<t_vect.size(); i++)
        _done = _done | !t_vect[i].get()->joinable();

    return _done;
}

