
#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"
#include "galapagos_router_node.hpp"
#include "galapagos_node.hpp"

int main(){
    int source = 0;
    int dest = 1;
    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);

    galapagos::node <ap_uint <PACKET_DATA_LENGTH> > node(kern_info, my_address);
    node.add_kernel(source, kern0);
    node.add_kernel(dest, kern1);
    node.start();
    node.end();
}
