#ifndef __NET_HPP__   // if x.h hasn't been included yet...
#define __NET_HPP__


class net_driver{
   
    std::string my_address;
    recv_packet();
    recv_server();

    public:
        net_driver(short id_in);
        send(void * buff, int count, short dest); 
}

#endif
