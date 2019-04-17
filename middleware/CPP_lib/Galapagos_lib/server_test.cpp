#define CATCH_CONFIG_MAIN
#include "catch.hpp"

#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"
#include "galapagos_router_node.hpp"
#include "galapagos_node.hpp"
#include "galapagos_net_tcp.hpp"

//int main(){
TEST_CASE("server"){

    std::vector <std::string> kern_info;
    std::string server_address="10.0.0.1";
    std::string client_address="10.0.0.2";
    kern_info.push_back(server_address);
    kern_info.push_back(client_address);
    
    //galapagos::stream in("to_sessions");
    //galapagos::stream out("from_sessions");
    galapagos::stream in;
    galapagos::stream out;
    std::mutex mutex;
    bool done=false;
    
    std::cout << " in server" << std::endl;
    galapagos::net::tcp::tcp net(0, 8889, kern_info, server_address, &in, &out, &mutex, &done, true);
    net.test();
    net.stop();
    

}

TEST_CASE("server-node"){
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
    node.end();
}

TEST_CASE("client-node"){
    int source = 0;
    int dest = 1;

    std::vector <std::string> kern_info;
    std::string server_address="10.0.0.1";
    std::string client_address="10.0.0.2";
    kern_info.push_back(server_address);
    kern_info.push_back(client_address);
    
    
    galapagos::node node(kern_info, client_address);
    node.add_kernel(dest, kern1);
    node.start();
    node.end();
}


TEST_CASE("client"){

    std::vector <std::string> kern_info;
    std::string server_address="10.0.0.1";
    std::string client_address="10.0.0.2";
    kern_info.push_back(server_address);
    kern_info.push_back(client_address);
    
    //galapagos::stream to_net("to_sessions");
    //galapagos::stream from_net("from_sessions");
    galapagos::stream to_net;
    galapagos::stream from_net;
    std::mutex mutex;
    bool done=false;

    std::string test = "hello123hello123";
    to_net.write((char *)test.c_str(), 16, 0);
    galapagos::net::tcp::tcp net(0, 8889, kern_info, client_address, &to_net, &from_net, &mutex, &done, true);
    {
        std::lock_guard <std::mutex> lock(mutex);
        done=true;
    }
    net.stop();
}

TEST_CASE("rw"){

    galapagos::stream in;
    std::string test = "hello123hello123";
    in.write((char *)test.c_str(), 16, 1);
    int dest;
    std::vector<ap_uint<PACKET_DATA_LENGTH> > out = in.read(&dest);
    std::string ret = (char *)out.data();
    std::cout << " read back " << ret << std::endl;
}
