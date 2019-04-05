#include "galapagos_stream.hpp"

#ifdef CPU
galapagos::stream::stream(){
    _stream = std::make_unique<std::queue <galapagos::stream_packet> >();
}

galapagos::stream_packet galapagos::stream::read(){
    
    galapagos::stream_packet gps;
    std::unique_lock<std::mutex> lck(mutex);
    while(_stream->empty())   
        cv.wait(lck);
    gps = _stream->front();
    _stream->pop();
    return gps;
}


void galapagos::stream::write(galapagos::stream_packet gps){
   
    {
        std::lock_guard<std::mutex> guard(mutex);
        _stream->push(gps);
    }
    cv.notify_one();

}


bool galapagos::stream::try_read(galapagos::stream_packet& gp){

    std::lock_guard<std::mutex> guard(mutex);
    if(_stream->empty())
        return false;

    gp = std::move(_stream->front());
    _stream->pop();
    return true;
}


size_t galapagos::stream::size(){
    size_t ret; 
    std::lock_guard<std::mutex> guard(mutex);
    ret = _stream->size();
    return ret;
}


bool galapagos::stream::empty(){
    bool ret; 
    std::lock_guard<std::mutex> guard(mutex);
    ret = _stream->empty();
    return ret;
}

//std::vector<ap_uint<64> > galapagos::stream::read(size_t *size, short * dest){
//
//    std::vector<ap_uint<PACKET_DATA_LENGTH> > data_vect;
//    
//    galapagos::stream_packet gps;
//    *size=0;
//    do{
//        gps = read();
//        if(*size == 0)
//            *dest = gps.dest;
//
//        assert(*dest == gps.dest);
//
//        data_vect.push_back(gps.data);
//        *size += PACKET_DATA_LENGTH;
//    }while(!gps.last);
//
//    return data_vect;
//}
//
//std::vector<ap_uint<64> > galapagos::stream::read(size_t *size, short * dest){
//
//    std::vector<ap_uint<PACKET_DATA_LENGTH> > data_vect;
//    
//    galapagos::stream_packet gps;
//    *size=0;
//    bool avail = false;
//    do{
//        avail = try_read(gps);
//        if(avail){
//            if(*size == 0)
//                *dest = gps.dest;
//
//            assert(*dest == gps.dest);
//
//            data_vect.push_back(gps.data);
//            *size += PACKET_DATA_LENGTH;
//        }
//    }while(!gps.last && !avail);
//
//    return data_vect;
//}



std::vector<ap_uint<PACKET_DATA_LENGTH> > galapagos::stream::vector_read(){


    std::vector< ap_uint<PACKET_DATA_LENGTH> > vect;
    ap_uint <1> last = 0;
    galapagos::stream_packet gps;
    while(!last){
        gps = read();
        last = gps.last;
        vect.push_back(gps.data);
    }

    return vect;
}


void galapagos::stream::write(char * buffer, int size, short dest){

    
    ap_uint <PACKET_DATA_LENGTH> * data = (ap_uint <PACKET_DATA_LENGTH> *)buffer;
//    for(int i=0; i<size; i+=(PACKET_DATA_LENGTH/8)){

    std::cout << "NUM GALAPAGOS PACKETS IN RECV " << size/8 << std::endl;
    
    for(int i=0; i<(size/8); i++){
        galapagos::stream_packet gps;
//        std::cout << " IN STREAM WRITE GETTING DATA " << data[i] << std::endl;
        //gps.data = *buffer;
        gps.data = data[i];
        gps.dest = dest;
        if(i!=size-1)
            gps.last = 0;
        else
            gps.last = 1;
        

        //buffer+=(PACKET_DATA_LENGTH/8);
        write(gps);
    }
}
#else

galapagos::stream::stream(hls::stream <galapagos::stream_packet> * __stream){
    stream = __stream;
}

galapagos::stream_packet galapagos::stream::read(){
    return _stream->read();
}

void galapagos::stream::write(galapagos::stream_packet gps){
    
    _stream->write(gps);

}

size_t galapagos::stream::size(){
    size_t ret; 
    ret = _stream->size();
    return ret;
}

size_t galapagos::stream::empty(){
    bool ret; 
    ret = _stream->empty();
    return ret;
}


#endif

