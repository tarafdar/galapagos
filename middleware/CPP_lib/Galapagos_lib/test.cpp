#include "galapagos.hpp"

#include <thread>
#include <iostream>


void kern0(std::vector <kern_info> kern_info);
void kern1(std::vector <kern_info> kern_info);


void kern0(std::vector <kern_info> kern_info)
{
	galapagos_kernel kern(0, kern_info);
	
	std::string test = "str";
	kern.send((void *)test.c_str(), test.size(), 1);	
	std::cout << "Kern 0 sent " << test << std::endl;
}




void kern1(std::vector <kern_info> kern_info)
{
	galapagos_kernel kern(1, kern_info);

	galapagos_packet * gp = kern.recv();
	


	std::string test = gp->buffer;
	std::cout << "Kern 1 received " << test << std::endl;
	std::cout << "Target Dest " << gp->dest << std::endl;
	
}



int main(int argc, char ** argv){

	
	kern_info kern;
	kern.kern_type = SW;
	kern.address_vect.push_back("localhost");	
	std::vector <kern_info> kern_info;
	
	//two sw kerns on same device 
	kern_info.push_back(kern);
	kern_info.push_back(kern);

	kern0(kern_info);
	kern1(kern_info);
        //std::thread kern0_t(kern0, kern_info);
        //std::thread kern1_t(kern1, kern_info);

	//kern0_t.detach();
	//kern1_t.detach();
	//kern0_t.join();
	//kern1_t.join();
        	
}
