#include "galapagos_net.hpp"

#include <iostream>


galapagos::net::net(galapagos::stream * _in, galapagos::stream * _out, std::map <std::string, std::vector<short> >  address_map, std::vector<std::string> _kern_info_table, std::mutex * _done_mutex, bool * _done):galapagos::streaming_core::streaming_core(-1){
    
    
    done_mutex = _done_mutex;
    done = _done;
    in = _in;
    out = _out;

    std::cout << "IN NET CONSTRUCTOR" << std::endl;
    std::map<std::string, std::vector<short> >::iterator it;
    for (it = address_map.begin(); it!=address_map.end(); it++){
        sock_map[it->first] = nullptr;
        sock_mutex[it->first] = std::make_unique <std::mutex>();
    }

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);
    }


}


void galapagos::net::start(){


    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::recv_server, this));
    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::send_server, this));
    //t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::socket_listener, this));

}    



void galapagos::net::recv_server(){

    
    while(1){
        {
            std::lock_guard<std::mutex> guard(*done_mutex);
            if(*done)
                break;
        }

        std::map<std::string, std::unique_ptr<boost::asio::ip::tcp::socket > >::iterator it;

        io_service.run();
        for (it = sock_map.begin(); it!=sock_map.end(); it++){
            std::cout << "ip addr " << it->first << std::endl;
            std::lock_guard <std::mutex> guard(*(sock_mutex[it->first].get()));
            if(it->second != nullptr){
                int avail = it->second->available();
                if(avail > 0){
                    std::unique_ptr <char[]> buffer = std::make_unique<char[]>(avail);
                    boost::system::error_code error;
                    int length = it->second->read_some(boost::asio::buffer(buffer.get(), avail), error);
                    short * dest_ptr = (short *)buffer.get();
                    out->write(buffer.get(), avail, dest_ptr[0]);

                }

            }


        }
    }

}


void galapagos::net::socket_listener(){

    boost::asio::ip::tcp::acceptor a(io_service, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), GALAPAGOS_PORT));
    
   
//    boost::asio::ip::tcp::socket sock(io_service);
    while(1){
        {
            std::lock_guard<std::mutex> guard(*done_mutex);
            if(*done)
                break;
        }

        
        {
            std::unique_ptr <boost::asio::ip::tcp::socket > sock_ptr = std::make_unique< boost::asio::ip::tcp::socket > (io_service);
            std::string ip_addr = sock_ptr->remote_endpoint().address().to_string();
            std::lock_guard <std::mutex> guard(*(sock_mutex[ip_addr]));
            sock_map[ip_addr] = std::move(sock_ptr);
            a.accept(*(sock_map[ip_addr]));
        }

    }
        
}



void galapagos::net::send_server(){


    while(1){
        {
            std::lock_guard<std::mutex> guard(*done_mutex);
            if(*done)
                break;
        }


        size_t size;
        short dest;
        std::vector<ap_uint<PACKET_DATA_LENGTH > > data_vect   = in->read(&size, &dest);
        std::unique_ptr<char[]> data = std::make_unique<char[]>(size + sizeof(short));
        memcpy(data.get(), (char *)&dest, sizeof(short));
        char * payload = data.get() + sizeof(short);
        memcpy(payload, data_vect.data(), size);


        boost::asio::ip::tcp::socket * sock_ptr;
        std::string dest_addr = kern_info_table[dest];
        
        {
            std::lock_guard <std::mutex> guard(*(sock_mutex[dest_addr]));
            sock_ptr = sock_map[dest_addr].get();
        }


        if(sock_ptr == nullptr){
            sock_map[dest_addr] = std::make_unique<boost::asio::ip::tcp::socket>(io_service); 
            std::ostringstream convert;
            convert << GALAPAGOS_PORT;
            std::string port_str = convert.str();
            boost::asio::ip::tcp::resolver resolver(io_service);
            sock_map[dest_addr]->connect(boost::asio::ip::tcp::endpoint(boost::asio::ip::address::from_string(dest_addr), GALAPAGOS_PORT));
        }

        boost::asio::write(*(sock_map[dest_addr]), boost::asio::buffer(payload, size + sizeof(short)));
    }
}
