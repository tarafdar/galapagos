
#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"
#include "galapagos_router_node.hpp"
#include "galapagos_node.hpp"
#include "galapagos_net_tcp.hpp"


int main(){

    int source = 0;
    int dest = 1;

    std::vector <std::string> kern_info;
    std::string server_address="10.0.0.1";
    std::string client_address="10.0.0.2";
    kern_info.push_back(server_address);
    kern_info.push_back(client_address);
    
    
    galapagos::node node(kern_info, server_address);
    node.add_kernel(source, kern0);
    node.start();
//    node.end();
    while(1);


}
