
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
    parser.addArgument("-d", "--dest_ip", '+');

    parser.parse(argc, argv);

    std::string source_ip = parser.retrieve<std::string>("source_ip"); 
    std::vector<std::string > dest_ip = parser.retrieve<std::vector<std::string> >("dest_ip"); 

    kern_info.push_back(source_ip);
    for(int i=0; i<dest_ip.size(); i++)
        kern_info.push_back(dest_ip[i]);
    kern_info.push_back(source_ip);

    galapagos::node <ap_uint <PACKET_DATA_LENGTH> > node(kern_info, source_ip);
    node.add_kernel(0, kern_send);
    node.add_kernel(dest_ip.size() + 1, kern_recv);

    node.start();
    while(1);

}
