//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================


#include "galapagos_net_tcp.hpp"


template<typename T>
galapagos::net::tcp::tcp<T>::tcp(short _id,
              short port, 
              std::vector <std::string>  &kernel_info_table, 
              std::string  & my_address, 
              galapagos::stream <T> * _from_node, 
              galapagos::stream <T> * _from_sessions, 
              std::mutex * _done_mutex, 
              bool * _done,
              bool enabled):
    galapagos::streaming_core<T>(_id,  _from_node, _from_sessions)

{

    mutex = _done_mutex;
    done = _done;
    from_sessions = _from_sessions;
    router_out = std::make_unique<galapagos::router_net_out<T> >(kernel_info_table, from_sessions, done, mutex, my_address);

    sc_ptr = std::make_unique<galapagos::net::tcp::session_container <T> >(kernel_info_table, my_address, _done, _done_mutex, router_out.get());
    ss_ptr = std::make_unique<galapagos::net::tcp::server_send <T> >(port, &io_context, sc_ptr.get(), _done, _done_mutex, _from_node); 
    if(enabled){
        as_ptr = std::make_unique<galapagos::net::tcp::accept_server <T> >(&io_context, port, sc_ptr.get());
    }
    io_context.run();

}


template<typename T>
void galapagos::net::tcp::tcp<T>::start(){

    ;
}

template<typename T>
void galapagos::net::tcp::tcp<T>::run_context(){

    io_context.run();
}


template<typename T>
void galapagos::net::tcp::tcp<T>::test(){

    
    std::thread test(&galapagos::net::tcp::tcp<T>::test_func, this); 
    test.join();


}

template<typename T>
void galapagos::net::tcp::tcp<T>::test_func(){

    std::vector<T> vect;

    int dest;
    
    if((from_sessions->size() == 0)){
        vect = from_sessions->read(&dest);
        std::cout << "size of test is " << vect.size() << std::endl;
        std::string test = (char *)vect.data();
        std::cout << "test is " << test << std::endl;
    }



}




template<typename T>
void galapagos::net::tcp::tcp<T>::stop(){


    {
        boost::asio::high_resolution_timer tim(io_context, 2s);
        tim.async_wait(Handler{});

        std::this_thread::sleep_for(500ms);

        io_context.stop();
    }
    t_context->join(); 

}


template class galapagos::net::tcp::tcp<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::net::tcp::tcp<float >;
template class galapagos::net::tcp::tcp<double >;
