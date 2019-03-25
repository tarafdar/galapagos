#include "galapagos_kernel.hpp"

#include <iostream>

std::mutex gp_mutex;
std::list <galapagos_packet *> gp_ptr;
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
        local_kerns.push_back(1);
    }
 

    //Call constructors for other kernel communication
    //net driver for different nodes
    //nd = new net_driver(id);
    
    //Extend to other communication mediums

}

galapagos_kernel::~galapagos_kernel(){

    //delete nd;
    //for(int i=0; i< gp_ptr.size(); i++)
    //	delete gp_ptr[i]; 

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
    if(!found){
    //if(kernel_info_table[dest].address_vect[0] != kernel_info_table[id].address_vect[0])
        //nd->send(buff, count, dest);
	exit(0);
    }
    //Case 2: same node add to buffer
    else{ 
        std::lock_guard<std::mutex> guard(gp_mutex);
        gp_ptr.push_back(new galapagos_packet((char *) buff, count, dest));

    }
    //Other cases 


}


// reads buffer populated by other drivers
galapagos_packet * galapagos_kernel::recv(){
    

    galapagos_packet * ptr;
    
    while(1){
        std::lock_guard<std::mutex> guard(gp_mutex);
	int index = 0;
	std::list<galapagos_packet *>::iterator itr = gp_ptr.begin();
	while(gp_ptr.size() > 0){
	    std::advance(itr, index);
	    if((*itr)->dest == id){
	    	ptr = *itr;
		std::cout << "Remaining " << gp_ptr.size() << " galapagos packets" << std::endl;
		//gp_ptr.erase(itr);
		std::cout << "Remaining " << gp_ptr.size() << " galapagos packets" << std::endl;
		//delete *itr;     
	        return ptr;	
	    }
	    index++;
	}

    }
}


