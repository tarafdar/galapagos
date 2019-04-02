#include "galapagos_net.hpp"

#include <iostream>

//void galapagos::net::accept_handler(const boost::system::error_code &e, std::unique_ptr<boost::asio::ip::tcp::socket> sock_ptr){
//void galapagos::net::accept_handler(const boost::system::error_code &e, std::unique_ptr<boost::asio::ip::tcp::socket> sock_ptr){
//void galapagos::net::accept_handler(std::unique_ptr<boost::asio::ip::tcp::socket> sock_ptr, const boost::system::error_code &e){
//void galapagos::net::accept_handler(std::shared_ptr<boost::asio::ip::tcp::socket> sock_ptr, const boost::system::error_code &e){
//
//    if(!e){
//        boost::asio::ip::tcp::endpoint remote_ep = sock_ptr->remote_endpoint();
//        boost::asio::ip::address remote_ad = remote_ep.address();
//        std::string s = remote_ad.to_string();
//        std::lock_guard <std::mutex> guard(*(sock_mutex[s]));
//        sock_map[s] = std::move(sock_ptr);
//        std::cout << "ACCEPT HANDLER" << std::endl;
//    }
//    
//}


galapagos::net::net(galapagos::stream * _in, galapagos::stream * _out, std::map <std::string, std::vector<short> >  address_map, std::vector<std::string> _kern_info_table, std::mutex * _done_mutex, bool * _done, bool _server_enabled):galapagos::streaming_core::streaming_core(-1){
    
    
    done_mutex = _done_mutex;
    done = _done;
    in = _in;
    out = _out;
    server_enabled=_server_enabled;

    std::map<std::string, std::vector<short> >::iterator it;
    for (it = address_map.begin(); it!=address_map.end(); it++){
//        sock_map[it->first] = nullptr;
        sock_mutex[it->first] = std::make_unique <std::mutex>();
        sock_valid[it->first] = false;
    }

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);
    }


}


void galapagos::net::start(){


    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::recv_server, this));
    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::send_server, this));
    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::socket_listener, this));

}    



void galapagos::net::recv_server(){

    
    while(1){
        {
            std::lock_guard<std::mutex> guard(*done_mutex);
            if(*done)
                break;
        }

        std::map<std::string, bool >::iterator it;

        io_service.run();
        for (it = sock_valid.begin(); it!=sock_valid.end(); it++){
            std::lock_guard <std::mutex> guard(*(sock_mutex[it->first].get()));
            if(it->second){
                std::cout << "ip address in recv server " << it->first << std::endl;
                int avail = sock_vect[sock_map[it->first]]->available();
                if(avail > 0){
                    std::cout << "bytes available " << avail << std::endl;
                    std::unique_ptr <char[]> buffer = std::make_unique<char[]>(avail);
                    boost::system::error_code error;
                    int length = sock_vect[sock_map[it->first]]->read_some(boost::asio::buffer(buffer.get(), avail), error);
                    std::cout << "BYTES READ " << length << std::endl;
                    short * dest_ptr = (short *)buffer.get();
                    std::cout << "dest recv " << dest_ptr[0] << std::endl;
                    out->write(buffer.get(), avail, dest_ptr[0]);

                }

            }


        }
    }

}


void galapagos::net::socket_listener(){

    
   
//    boost::asio::ip::tcp::socket sock(io_service);

    if(server_enabled){
        while(1){
            {
                std::lock_guard<std::mutex> guard(*done_mutex);
                if(*done)
                    break;
            }

        
            {   
                boost::asio::ip::tcp::acceptor a(io_service, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), GALAPAGOS_PORT));
                sock_vect.push_back(std::make_unique< boost::asio::ip::tcp::socket > (io_service));
                int size = sock_vect.size();
                a.accept(*sock_vect[sock_vect.size() -1]);
    

                std::cout << "ACCEPTED" << std::endl;
                boost::asio::ip::tcp::endpoint remote_ep = sock_vect[sock_vect.size() - 1]->remote_endpoint();
                boost::asio::ip::address remote_ad = remote_ep.address();
                std::string s = remote_ad.to_string();
                std::lock_guard <std::mutex> guard(*(sock_mutex[s]));
                sock_valid[s] = true;
                sock_map[s] = size -1;
            }

        }
    }
        
}



void galapagos::net::send_server(){



    bool last_done = false;

    bool set_dest = true;
    short dest;
    size_t size = 0;
    std::vector<ap_uint<PACKET_DATA_LENGTH > > data_vect;


    bool trans = false;
    while(1){
        
        {
            std::lock_guard<std::mutex> guard(*done_mutex);
            if(*done )
                break;
        }

        
        galapagos::stream_packet gps;
        gps.last = 0;


        if(in->try_read(gps)){
            std::cout << "SENDING ON NET" << std::endl;

            size+= (PACKET_DATA_LENGTH)/8;
            data_vect.push_back(gps.data); 
            if(set_dest){
                std::cout << "DEST BEING SET TO " << gps.dest << std::endl;
                dest = gps.dest;
                set_dest = false;
            }
        } 
        
        if(gps.last){
            std::unique_ptr<char[]> data = std::make_unique<char[]>(size + sizeof(short));
            
            memcpy(data.get(), (char *)&dest, sizeof(short));

            char * payload = data.get() + sizeof(short);
            memcpy(payload, data_vect.data(), size);
            std::cout << "DEST IN LAST " << (short *)(data.get())[0] << std::endl;


            boost::asio::ip::tcp::socket * sock_ptr;
            std::string dest_addr = kern_info_table[dest];
            
            //{
                std::lock_guard <std::mutex> guard(*(sock_mutex[dest_addr]));
                //if (sock_valid[dest_addr])
                //    sock_ptr = sock_vect[sock_map[dest_addr]].get();
                //else
                //    sock_ptr = nullptr;
            //}

            std::cout << "GET SOCK PTR" << std::endl;
            if(!sock_valid[dest_addr]){
                std::cout << "IN IF" << std::endl;
                sock_vect.push_back(std::make_unique<boost::asio::ip::tcp::socket>(io_service)); 
                sock_map[dest_addr] = sock_vect.size() -1;
                sock_valid[dest_addr] = true;
                std::ostringstream convert;
                convert << GALAPAGOS_PORT;
                std::string port_str = convert.str();
                boost::asio::ip::tcp::resolver resolver(io_service);
                std::cout << "ABOUT TO CONNECT" << std::endl;
                sock_vect[sock_vect.size()-1]->connect(boost::asio::ip::tcp::endpoint(boost::asio::ip::address::from_string(dest_addr), GALAPAGOS_PORT));
                std::cout << "CONNECTED" << std::endl;
            }

            std::cout << "SENDING ON NET SOCKET" << std::endl;
            boost::asio::write(*(sock_vect[sock_map[dest_addr]]), boost::asio::buffer(data.get(), size + sizeof(short)));
            size = 0;
            set_dest = true;
        }
        

    }
}
