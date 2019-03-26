
#include <string>
#include <math.h>
#include "galapagos_stream.hpp"
#include "galapagos_packet.hpp"
#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos.hpp"

int main(){
    
    int source = 0;
    int dest = 1;

    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);

    //galapagos g(kern_info, my_address, 10);
    galapagos g(kern_info, my_address);
    //

    galapagos_kernel gk(source);
    hls::stream <galapagos_stream_packet> in;
    hls::stream <galapagos_stream_packet> out;
    galapagos_stream gs_in(&in);
    galapagos_stream gs_out(&out);
    g.enqueueKernel(&gk, kern0, &gs_in, &gs_out);
    
    



}
