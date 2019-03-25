#include "galapagos.hpp"

#include <thread>
#include <iostream>


void kern0(std::vector <kern_info> kern_info);
void kern1(std::vector <kern_info> kern_info);



#define NUM 10

void printTest(int * array, int size, int kern){

    std::cout << "Printing Test Kernel Num: " << kern << std::endl;
    for(int i=0; i< size; i++){
        std::cout <<  i << "    " << std::endl;
    } 
    std::cout << "Finished Test Kernel Num: " << kern << std::endl;

}


void kern0(std::vector <kern_info> kern_info)
{
	galapagos_kernel kern(0, kern_info);
	int * test = new int[NUM]; 

	for(int i=0; i<NUM; i++)
	    test[i] = i;
	
	//printTest(test, NUM, 0);
	
	kern.send((void *)test, NUM*sizeof(int), 1);
	std::cout << "Kern 0 sent "  << std::endl;
	
}




void kern1(std::vector <kern_info> kern_info)
{
	galapagos_kernel kern(1, kern_info);
	galapagos_packet * gp = kern.recv();

	int * ptr = (int *)gp->buffer;
	//printTest(ptr, (gp->size)/sizeof(int), 1);
	std::cout << "Kern 1 received "  << std::endl;
	//delete gp;
}



int main(int argc, char ** argv){

	
	kern_info kern;
	kern.kern_type = SW;
	kern.address_vect.push_back("localhost");	
	std::vector <kern_info> kern_info;
	
	kern_info.push_back(kern);
	kern_info.push_back(kern);

	//kern0(kern_info);
	//kern1(kern_info);

	
        std::thread kern0_t(kern0, kern_info);
        std::thread kern1_t(kern1, kern_info);
	
	kern0_t.join();

	kern1_t.join();
        	
}
