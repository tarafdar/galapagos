#include <cstdlib>
#include <cstring>
#include <iostream>
#include "asio.hpp"

#include "tcp_driver.hpp"

net_driver::net_driver(short id){

    //make an address map
    //mapping off address to vector of kerns (inverse of kern map)
    //
    for(int i; i<kernel_info_table.size(); i++){
        std::vector <short> vect;
        address_map[kernel_info_table.address_vect[0]]= vect;    
    }
    for(int i; i<kernel_info_table.size(); i++){
        if(i == id){
            my_address = kernel_info_table[i].address_vect[0];
        }
        map_element me;
        me.kern = i;
        me.sock = NULL;
        address_map[kernel_info_table[i].address_vect[0]].push_back(me);    
    
    }   
    std::thread(net_driver::socket_listener).detach();
    std::thread(net_driver::recv_server).detach();
}


void net_driver::recv_packet(char * buffer){
    
    galapagos_packet * gp = new galapagos_packet;
    gp->buffer = buff + sizeof(short);
    dest_ptr = (short *)buffer;
    gp->dest = dest_ptr[0];
    {
        std::lock_guard<std::mutex> guard(gp_mutex);
        gp_ptr.push_back(gp);
    }

}


//loops through all sockets to see if there's anything
void net_driver::recv_server(tcp::socket sock){

    std::map<string, int>::iterator it;
    
    while(1){
        for ( it = address_map.begin(); it != address_map.end(); it++ ){
            if (it->second.sock != NULL){
                avail = sock.available();
                if(avail > 0){
                    buffer = new char[avail];
                    length = sock.read_some(asio::buffer(buffer), error);
                }
            }
        }
    }

}



//listens for new sockets and adds it to list
void socket_listener(){

    tcp::acceptor a(io_context, tcp::endpoint(tcp::v4(), GALAPAGOS_PORT));
    
   
    tcp::socket sock;
    while(1){
        
        a.accept(sock);
        std::thread(net_driver::tcp_recv_function, a.accept()).detach(); 
        {
            std::lock_guard<std::mutex> guard(map_mutex);
            address_map[sock.remote_endpoint().address().to_string()].sock = &sock;
            std::map<string, int>::iterator it;
            bool all_sockets_connected = true;
            for ( it = address_map.begin(); it != address_map.end(); it++ ){
                if (it->second.sock == NULL){
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
        sock_ptr = address_map[dest_addr].sock;
    }


    //create new connection
    if(sock_ptr == NULL){
        address_map[dest_addr].sock = new tcp::socket (io_context);
        ostringstream convert;
        convert << GALAPAGOS_PORT;
        std::string port_str = convert.str();
        tcp::resolver resolver(io_context);
        asio::connect(*(address_map[dest_addr].sock), resolver.resolve(dest_addr, port_str));
    }
    
    asio::write(*(address_map[dest_addr].sock), asio::buffer(buff, count));

}

