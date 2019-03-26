#include "galapagos_stream.hpp"

galapagos_stream::galapagos_stream(hls::stream <galapagos_stream_packet> * _stream){
    stream = _stream;
}


galapagos_stream_packet galapagos_stream::read(){
    
#ifdef CPU    
    std::lock_guard<std::mutex> guard(mutex);
#endif
    return stream->read();
}

void galapagos_stream::write(galapagos_stream_packet gps){
    
#ifdef CPU    
    std::lock_guard<std::mutex> guard(mutex);
#endif
    return stream->write(gps);
}

size_t galapagos_stream::size(){
    
#ifdef CPU    
    std::lock_guard<std::mutex> guard(mutex);
#endif
    return stream->size();
}

