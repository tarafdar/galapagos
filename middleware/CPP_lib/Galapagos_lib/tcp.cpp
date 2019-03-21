
#include "tcp.hpp"

net_driver::net_driver(short id){

    //make an address map
    //mapping off address to vector of kerns (inverse of kern map)
    //
    for(int i; i<kernel_info_table.size(); i++){
        if(i == id){
            my_address = kernel_info_table[i].address_vect[0];
        }
        address_map[kernel_info_table[i].address_vect[0]] = new map_element();    

    
    }   
    std::thread(socket_listener).detach();
    std::thread(recv_server).detach();
}


void recv_packet(char * buffer, int buff_len){
    
    galapagos_packet * gp = new galapagos_packet(buffer);
    gp->buffer = buffer + sizeof(short);
    short * dest_ptr = (short *)buffer;
    gp->dest = dest_ptr[0];
    gp->size = buff_len;
    {
        std::lock_guard<std::mutex> guard(gp_mutex);
        gp_ptr.push_back(gp);
    }

}


//loops through all sockets to see if there's anything
void recv_server(){

    std::map<std::string, map_element *>::iterator it;
    
    while(1){
        io_service.run();
        for ( it = address_map.begin(); it != address_map.end(); it++ ){
            if (it->second->sock != NULL){
                int avail = it->second->sock->available();
		boost::system::error_code error;
                if(avail > 0){
                    char * buffer = new char[avail];
                    int length = it->second->sock->read_some(boost::asio::buffer(buffer, avail), error);
		    recv_packet(buffer, length);
                }
            }
        }
    }

}



//listens for new sockets and adds it to list
void socket_listener(){

    boost::asio::ip::tcp::acceptor a(io_service, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), GALAPAGOS_PORT));
    
   
    boost::asio::ip::tcp::socket sock(io_service);
    while(1){
        
        a.accept(sock);
        {
            std::lock_guard<std::mutex> guard(map_mutex);
            address_map[sock.remote_endpoint().address().to_string()]->sock = &sock;
            std::map<std::string, map_element *>::iterator it;
            bool all_sockets_connected = true;
            for ( it = address_map.begin(); it != address_map.end(); it++ ){
                if (it->second->sock == NULL){
                    all_sockets_connected = false;
                }
            }
            //if all sockets connected we can break from listener
            if(all_sockets_connected){
                break;
            }
        }

    }
        
}


//checks for available socket, if not makes one and sends
void net_driver::send(void * buff, int count, short dest){


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

