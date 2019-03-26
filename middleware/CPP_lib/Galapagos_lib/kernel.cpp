#include "kernel.hpp"


void printTest(int * array, int size, int kern){

    std::cout << "Printing Test Kernel Num: " << kern << std::endl;
    for(int i=0; i< size; i++){
        std::cout <<  i << "    " << std::endl;
    } 
    std::cout << "Finished Test Kernel Num: " << kern << std::endl;

}


void helloWorld(){

    std::cout << "hello world" << std::endl;


}

void kern0(galapagos_stream *in, galapagos_stream *out)
{
	
    int count = 10;
    int dest = 1;

    for(int i=0; i<count; i++){
        galapagos_stream_packet gps;
        gps.data = count;
        gps.dest = 1;
        if(i < count - 1)
            gps.last = 0;
        else
            gps.last = 1;


        out->write(gps);
    }


	//kern->send((std::shared_ptr <char>)test, NUM*sizeof(int), 1);
	
}




void kern1(galapagos_stream *in, galapagos_stream *out)
{
    int count = 10;
    

    int recv = 0;
    


    while(recv < (count - 1)){
        for(int i=0; i<in->size(); i++){
            galapagos_stream_packet gps = in->read();
            std::cout << "DATA IS " << gps.data << std::endl;
            recv++;
        }
    }





    //galapagos_packet * gp = kern->recv();

	//int * ptr = (int *)gp->buffer;
	////printTest(ptr, (gp->size)/sizeof(int), 1);
	//std::cout << "Kern 1 received "  << std::endl;
	////delete gp;
}



