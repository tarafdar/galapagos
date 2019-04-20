//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#include <string>
#include <math.h>
#include <thread>
#include <chrono>

#include "kernel.hpp"
#include "galapagos_node.hpp"


int main(){

    int source = 0;
    int dest = 1;
    std::vector <std::string> kern_info;

    std::string ten_two = "10.0.0.2";
    std::string ten_one = "10.0.0.1";
    kern_info.push_back(ten_two);
    kern_info.push_back(ten_one);

    galapagos::node <ap_uint <PACKET_DATA_LENGTH> > node(kern_info, ten_one);
    node.add_kernel(dest, kern1);
    node.start();
    while(1);
 //   node_1.start();
 //    node_0.end();
 //   node_1.end();

}
