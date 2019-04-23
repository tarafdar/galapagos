//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================


#include "galapagos_net_tcp_accept_server.hpp"


using namespace galapagos::net::tcp;

template<typename T>
accept_server<T>::accept_server(boost::asio::io_context *io_context, 
                                                  short port,  
                                                  session_container<T> * _sessions
                                                  )
    : acceptor_(*io_context, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port))
{
  
    _io_context = io_context;
    sessions = _sessions;
      
      
    std::thread t_accept(&accept_server<T>::accept,this);
    t_accept.detach();
}

template<typename T>
void accept_server<T>::accept(){

    do_accept();

}

template<typename T>
void accept_server<T>::do_accept()
{

    for(;;)
    {
            sessions->add_session(acceptor_.accept(), _io_context);

    }

//TODO: add async mode

#ifdef ASYNC 
      acceptor_.async_accept(
        [this](boost::system::error_code ec, boost::asio::ip::tcp::socket socket)
        {
          if (!ec)
          {
            galapagos::net::tcp::session * sess = sessions->add_session(std::move(socket), _io_context);
          }

          do_accept();
        });
#endif
}
 
template class galapagos::net::tcp::accept_server<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::net::tcp::accept_server<float >;
template class galapagos::net::tcp::accept_server<double >;
