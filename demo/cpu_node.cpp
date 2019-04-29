
#include <string>
#include <math.h>
#include <thread>
#include <chrono>

#include "galapagos_node.hpp"
#include "argparse.hpp"
#include "kernel.h"


int main(int argc, const char** argv){

    int source = 0;
    int dest = 1;
    std::vector <std::string> kern_info;
   
    ArgumentParser parser;

    parser.addArgument("-s", "--source_ip", 1);
    parser.addArgument("-h", "--hops", 1);

    parser.parse(argc, argv);

    std::string source_ip = parser.retrieve<std::string>("source_ip");

    int hops = std::stoi(parser.retrieve<std::string>("hops"), nullptr, 0);
    kern_info.push_back(source_ip);
    for(int i=0; i<hops; i++)
        kern_info.push_back(source_ip);
    kern_info.push_back(source_ip);

    galapagos::node <ap_uint <PACKET_DATA_LENGTH> > node(kern_info, source_ip);
    node.add_kernel(0, kern_send);
    for(int i=0; i<hops; i++)
        node.add_kernel(i+1, kern_middle);
    node.add_kernel(hops + 1, kern_recv);

    node.start();
    while(1);

}
