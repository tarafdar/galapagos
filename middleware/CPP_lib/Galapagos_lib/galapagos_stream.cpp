#include "galapagos_stream.hpp"

galapagos_stream::galapagos_stream(hls::stream <galapagos_stream_packet> * _stream){
    stream = _stream;
}

galapagos_stream::galapagos_stream(){
    stream_ptr = std::make_unique<hls::stream <galapagos_stream_packet> >();
    stream = stream_ptr.get();
}


galapagos_stream_packet galapagos_stream::read(){
    
#ifdef CPU    
    std::lock_guard<std::mutex> guard(mutex);
#endif
    //while(stream->empty());
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

bool galapagos_stream::empty(){
    
#ifdef CPU    
    std::lock_guard<std::mutex> guard(mutex);
#endif
    return stream->empty();
}

