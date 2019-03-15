#include "galapagos_kernel.hpp"



galapagos_kernel<address>::galapagos_kernel(
        short id_in,
        std::vector<kernel_info> kernel_info_table_in,
        )
{
    id = id_in;
    kernel_info_table = new std::vector<kernel_info>(kernel_info_table_in);
    

    //Call constructors for other kernel communication
    //net driver for different nodes
    nd = new net_driver<address>(id, &gp_mutex, &gp_ptr);
    
    //Extend to other communication mediums

}

galapagos_kernel::~galapagos_kernel(){

    delete nd;

}

// sends to other kernels
// Checks to see where kernel is
int galapagos_kernel::send(void *buff, unsigned int count, short dest){


    //Case 1: different nodes
    if(kernel_info_table[dest].address_vect[0] != kernel_info_table[id].address_vect[0])
        nd->send(buff, count, dest);
    //Case 2: same node add to buffer
    else{ 
        galapagos_packet * gp = new galapagos_packet;
        gp->buffer = buff;
        gp->dest = dest;
        std::lock_guard<std::mutex> guard(gp_mutex);
        gp_ptr.push_back(gp);

    }
    //Other cases 


}


// reads buffer populated by other drivers
galapagos_packet * galapagos_kernel::recv(){
    

    galapagos_packet * ptr;
    
    while(1){
        std::lock_guard<std::mutex> guard(gp_mutex);
        for(list<galapagos_packet *>::iterator it = gp_ptr.begin(); it != gp_ptr.end(); it++){
	    	ptr = (*it).gp_ptr;
            if(ptr->dest == id){
                it = gp_ptr.erase(it); 
                return ptr; 
            }
        }
    }
}


