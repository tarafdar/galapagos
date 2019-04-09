
#include "tcp.hpp"




//loops through all sockets to see if there's anything
//void recv_server(){

//listens for new sockets and adds it to list


//checks for available socket, if not makes one and sends
void galapagos::net::send(void * buff, int count, short dest){


    tcp::socket * sock_ptr;
    std::string dest_addr = kernel_info_table[dest].address_vect[0];


    {
        std::lock_guard<std::mutex> guard(map_mutex);
        sock_ptr = address_map[dest_addr]->sock;
    }


    //create new connection
    if(sock_ptr == NULL){
        address_map[dest_addr]->sock = new tcp::socket (io_service);
        std::ostringstream convert;
        convert << GALAPAGOS_PORT;
        std::string port_str = convert.str();
        tcp::resolver resolver(io_service);
        address_map[dest_addr]->sock->connect(boost::asio::ip::tcp::endpoint(boost::asio::ip::address::from_string(dest_addr), GALAPAGOS_PORT));
//	boost::asio::connect(*(address_map[dest_addr]->sock), resolver.resolve(dest_addr, port_str));
    }
    
    boost::asio::write(*(address_map[dest_addr]->sock), boost::asio::buffer(buff, count));

}

