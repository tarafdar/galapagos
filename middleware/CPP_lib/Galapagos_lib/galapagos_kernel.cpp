#include "galapagos_kernel.hpp"

std::mutex gp_mutex;
std::vector <galapagos_packet *> gp_ptr;
std::vector <kern_info>  kernel_info_table;

std::mutex local_kerns_mutex;
std::vector <short> local_kerns;


galapagos_kernel::galapagos_kernel(
        short id_in,
        std::vector<kern_info> kernel_info_table_in
        )
{
    id = id_in;
    for(int i=0; i<kernel_info_table_in.size(); i++)
        kernel_info_table.push_back(kernel_info_table_in[i]);
   
    
    {
        std::lock_guard<std::mutex> guard(local_kerns_mutex);
        local_kerns.push_back(id);
    }
 

    //Call constructors for other kernel communication
    //net driver for different nodes
    nd = new net_driver(id);
    
    //Extend to other communication mediums

}

galapagos_kernel::~galapagos_kernel(){

    delete nd;

}

// sends to other kernels
// Checks to see where kernel is
void galapagos_kernel::send(void *buff, unsigned int count, short dest){


    bool found;

    {
        std::lock_guard<std::mutex> guard(local_kerns_mutex);
        found = std::find(local_kerns.begin(), local_kerns.end(), dest) != local_kerns.end();
    }


    //Case 1: different nodes
    if(!found)
    //if(kernel_info_table[dest].address_vect[0] != kernel_info_table[id].address_vect[0])
        nd->send(buff, count, dest);
    //Case 2: same node add to buffer
    else{ 
        galapagos_packet * gp = new galapagos_packet((char *) buff);
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
        for(std::vector<galapagos_packet *>::iterator it = gp_ptr.begin(); it != gp_ptr.end(); it++){
	    	ptr = (*it);
            if(ptr->dest == id){
                it = gp_ptr.erase(it); 
                return ptr; 
            }
        }
    }
}


