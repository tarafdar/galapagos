
#include <string>
#include <math.h>
#include <thread>
#include <chrono>

#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"
#include "galapagos_node.hpp"


int main(){

    int source = 0;
    int dest = 1;
    std::string node_0_address = "localhost";
    std::string node_1_address = "192.168.1.106";
    std::vector <std::string> kern_info;
    kern_info.push_back(node_0_address);
    kern_info.push_back(node_1_address);

    galapagos::node node(kern_info, node_1_address);
    node.add_kernel(dest, kern1);
    node.start(true);
    while(1);
 //   node_1.start();
 //    node_0.end();
 //   node_1.end();

}
