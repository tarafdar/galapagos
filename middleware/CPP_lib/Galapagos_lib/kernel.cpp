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

void kern0(galapagos::stream *in, galapagos::stream *out)
{
    std::cout << "in kernel write " << std::endl;

    kern2(in, out, 10);
	
}




void kern1(galapagos::stream *in, galapagos::stream *out)
{
    int count = 10;
    

    int i=0;

    std::cout << "in kernel read " << std::endl;

    for(int i=0; i<count; i++){
        galapagos::stream_packet gps = in->read();
        std::cout << "SIZE IS " << in->size() << std::endl << std::flush;
        std::cout << "DATA IS " << gps.data << std::endl << std::flush;
        //std::cout << "DATA IS " << i << std::endl;


    }



}



void kern2(galapagos::stream *in, galapagos::stream *out, int num){

    int count = num;
    int dest = 1;

    for(int i=0; i<count; i++){
        galapagos::stream_packet gps;
        gps.data = i;
        gps.dest = 1;
        if(i < count - 1)
            gps.last = 0;
        else
            gps.last = 1;


        std::cout << "WRITING " << gps.data << std::endl;
        std::cout << "LAST " << gps.last << std::endl;
        out->write(gps);
    }

    //std::cout << "FINISHED WRITING" << std::endl;

	//kern->send((std::shared_ptr <char>)test, NUM*sizeof(int), 1);


}
