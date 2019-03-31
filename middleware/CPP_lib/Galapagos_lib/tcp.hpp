#ifndef __TCP_DRIVER_HPP__   // if x.h hasn't been included yet...
#define __TCP_DRIVER_HPP__

#include <sstream>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <boost/asio.hpp>
#include <string>




#include "galapagos_stream.hpp"

using boost::asio::ip::tcp;

#define GALAPAGOS_PORT 7






void recv_server(galapagos::stream *in, galapagos::stream *out, std::mutex * done_mutex, bool * done);

#endif
