#include "galapagos_net.hpp"

#include <iostream>


galapagos::net::net(galapagos::stream * _in, galapagos::stream * _out, std::map <std::string, std::vector<short> >  address_map, std::vector<std::string> _kern_info_table, std::mutex * _done_mutex, bool * _done, bool _server_enabled):galapagos::streaming_core::streaming_core(-1){
    
    
    done_mutex = _done_mutex;
    done = _done;
    in = _in;
    out = _out;
    server_enabled=_server_enabled;

    std::map<std::string, std::vector<short> >::iterator it;
    for (it = address_map.begin(); it!=address_map.end(); it++){
        sock_mutex[it->first] = std::make_unique <std::mutex>();
        sock_valid[it->first] = false;
    }

    for(int i=0; i<_kern_info_table.size(); i++){
        kern_info_table.push_back(_kern_info_table[i]);
    }
    acceptor_ = std::make_unique<boost::asio::ip::tcp::acceptor>(io_context, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), GALAPAGOS_PORT));


}


void galapagos::net::start(){

    
    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::recv_server, this));
    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::send_server, this));
    t_vect.push_back(std::make_unique< std::thread>(&galapagos::net::socket_listener, this));
    io_context.run();

}    



void galapagos::net::recv_server(){

   
    int length;

    while(1){
        {
            std::lock_guard<std::mutex> guard(*done_mutex);
            if(*done)
                break;
        }

        std::map<std::string, bool >::iterator it;

        {
            std::lock_guard <std::mutex> guard(mutex);
            for (it = sock_valid.begin(); it!=sock_valid.end(); it++){
                avail = 0;
                if(it->second){
                    assert(sock_vect.size() > sock_map[it->first]);
                    avail = sock_vect[sock_map[it->first]].available();
                    buffer = std::make_unique<char[]>(avail);
                    boost::system::error_code error;
                    if(avail>0){
                        length = sock_vect[sock_map[it->first]].read_some(boost::asio::buffer(buffer.get(), avail), error);
                        sock_vect[sock_map[it->first]].async_read_some(boost::asio::buffer(buffer.get(), avail),
                        [this](boost::system::error_code ec, std::size_t length)
                        {
                          if (!ec)
                          {
                            short * dest_ptr = (short *)buffer.get();
                            out->write(buffer.get() + sizeof(short), avail, dest_ptr[0]);
                          }
                        });
                
                    }
                }
            }
        }
            
    }

}


void galapagos::net::socket_listener(){

    acceptor_->async_accept(
        [this](boost::system::error_code ec, boost::asio::ip::tcp::socket socket)
        {
          if (!ec)
          {
            std::lock_guard <std::mutex> guard(mutex);
            sock_vect.push_back(std::move(socket));
            boost::asio::ip::tcp::endpoint remote_ep = sock_vect[sock_vect.size() -1].remote_endpoint();
            boost::asio::ip::address remote_ad = remote_ep.address();
            std::string s = remote_ad.to_string();
            sock_map[s] = sock_vect.size()-1;
            sock_valid[s] = true;
            std::cout << "ACCEPT HANDLER" << std::endl;
          }

          {
                std::lock_guard<std::mutex> guard(*done_mutex);
                if(*done)
                    return;
          }
          socket_listener();
        
        });


}


void galapagos::net::write_socket(char * data, int size, int dest){

    std::lock_guard <std::mutex> guard(mutex);
    std::string dest_addr = kern_info_table[dest];
   
    int index;

    if(!sock_valid[dest_addr]){
        sock_vect.push_back(boost::asio::ip::tcp::socket(io_context)); 
        sock_map[dest_addr] = sock_vect.size() -1;
        sock_valid[dest_addr] = true;
        std::ostringstream convert;
        convert << GALAPAGOS_PORT;
        std::string port_str = convert.str();
        index = sock_vect.size() - 1;
    }
    else{
        index = sock_map[dest_addr];

    }

    boost::asio::async_write(sock_vect[index], boost::asio::buffer(data, size),
    [this](boost::system::error_code ec)
    {
      write = ec;
    });

    if(!write)
        write_socket(data, size, dest);

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
            std::cout << "SENDING ON NET" << gps.dest << std::endl;

            size+= (PACKET_DATA_LENGTH)/8;
            data_vect.push_back(gps.data); 
            if(set_dest){
              //  std::cout << "DEST BEING SET TO " << gps.dest << std::endl;
                dest = gps.dest;
                set_dest = false;
            }
        } 
        
        if(gps.last){
            std::unique_ptr<char[]> data = std::make_unique<char[]>(size + sizeof(short));
            
            memcpy(data.get(), (char *)&dest, sizeof(short));

            char * payload = data.get() + sizeof(short);
            memcpy(payload, data_vect.data(), size);
            write_socket(data.get(), size, dest);
            //std::cout << "DEST IN LAST " << (short *)(data.get())[0] << std::endl;



            size = 0;
            set_dest = true;
        }
        

    }
}
