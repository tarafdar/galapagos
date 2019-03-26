#include "galapagos.hpp"

galapagos::galapagos(std::vector <std::string>  _kern_info_table, std::string _my_address){

    galapagos(_kern_info_table, _my_address, -1);



}
galapagos::galapagos(std::vector <std::string>  _kern_info_table, std::string _my_address, int _num){
   
    int num_trans = _num; 
    
    std::map<std::string,std::vector<short> >::iterator itr;

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);
        itr = address_map.find(_kern_info_table[i]);
        if(itr != address_map.end()){
            std::vector <short> vect ={i};
            address_map[_kern_info_table[i]] = vect;
        }
        else{
            address_map[_kern_info_table[i]].push_back(i);
        }
    }
  

    
    
    t=std::make_unique<std::thread>(&galapagos::router, this); 
    t.get()->detach();

}


void galapagos::enqueueKernel(galapagos_kernel * _gk,
                             void (*func)()){
    //_gk->galapagos_ptr = this;
    gk.push_back(_gk);
    _gk->start(func);

}

void galapagos::enqueueKernel(galapagos_kernel * _gk,
                             void (*func)(galapagos_stream*, galapagos_stream*), 
                             galapagos_stream* in, galapagos_stream* out){
    //_gk->galapagos_ptr = this;
    gk.push_back(_gk);
    _gk->start(func, in, out);

}



void galapagos::route(galapagos_stream_packet gps){


    //local
    if (kern_info_table[gps.dest] == my_address){
        gk[gps.dest]->in->write(gps);
    }


}

void galapagos::router(){

    galapagos_stream_packet gps;
    ap_uint<1> last=0;    
    int count = 0;


    while(num_trans < 0 || count < num_trans){
        for(int i=0; i<gk.size(); i++){
            do{    
                if(gk[i]->out->size()>0){
                    gps = gk[i]->out->read();
                    route(gps);
                    count++;
                }
            }while(!gps.last);

        }
    }
}
