#include "galapagos.hpp"

galapagos::galapagos(std::vector <std::string>  _kern_info_table, std::string _my_address){

    galapagos(_kern_info_table, _my_address, -1);



}
galapagos::galapagos(std::vector <std::string>  _kern_info_table, std::string _my_address, int _num){
  

    my_address = _my_address;
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
        gk.push_back(nullptr);
    }
  

    
    
    t=std::make_unique<std::thread>(&galapagos::router, this); 

}


galapagos::~galapagos(){
    t.get()->join();



}

void galapagos::enqueueKernel(galapagos_kernel * _gk){
    //_gk->galapagos_ptr = this;
    gk[_gk->id] = _gk;

}



void galapagos::enqueueKernel(galapagos_kernel * _gk,
                             void (*func)()){
    //_gk->galapagos_ptr = this;
    gk[_gk->id] = _gk;
    _gk->start(func);

}

void galapagos::enqueueKernel(galapagos_kernel * _gk,
                             void (*func)(hls::stream<galapagos_stream_packet> *, hls::stream<galapagos_stream_packet> *) 
                             ){
    //_gk->galapagos_ptr = this;
    gk[_gk->id] = _gk;
    _gk->start(func);

}



void galapagos::route(galapagos_stream_packet gps){


    //local
    std::cout << "IN ROUTE " <<  kern_info_table[gps.dest]  << " " << my_address << std::endl;
    if (kern_info_table[gps.dest] == my_address){
        assert(gk[gps.dest] != nullptr);
        std::cout << "ROUTING TO " <<  gps.dest << std::endl;
        gk[gps.dest]->in->write(gps);
    }


}

void galapagos::router(){

    galapagos_stream_packet gps;
    ap_uint<1> last=0;    


    bool done = false;
    while(!done){
        for(int i=0; i<gk.size(); i++){
            if(gk[i] == nullptr){
                done = false;
                break;
            }
        }
        done = true;
    }
    

    done = false;

    while(!done){
        done = true;
        for(int i=0; i<gk.size(); i++){
            done = done & gk[i]->done();
            //do{    
            //    if(gk[i]->out->size()>0){
            //        gps = gk[i]->out->read();
            //        route(gps);
            //        std::cout << "ROUTING " << std::endl;
            //    }
            //}while(!gps.last);

        }
    }
}
