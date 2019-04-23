//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================


#include "galapagos_stream.hpp"



#ifdef CPU
template <typename T> 
galapagos::stream<T>::stream(){
    _stream = std::make_unique<std::queue <galapagos::stream_packet <T> > >();
}


template <typename T> 
galapagos::stream_packet <T> galapagos::stream<T>::read(){
    
    galapagos::stream_packet <T> gps;

      std::unique_lock<std::mutex> lock(mutex);
      while (_stream->empty()) {
        cv.wait(lock);
                                  //  This 'while' loop is equal to
      }
      gps = std::move(_stream->front());
      _stream->pop();

    return gps;
}


template <typename T> 
void galapagos::stream<T>::write(galapagos::stream_packet <T> gps){
    
    {
        std::lock_guard<std::mutex> guard(mutex);
        _stream->push(std::move(gps));
    }
    if (gps.last){
        cv.notify_one();
    }

}


template <typename T> 
bool galapagos::stream<T>::try_read(galapagos::stream_packet<T> & gp){

    std::lock_guard<std::mutex> guard(mutex);
    if(_stream->empty())
        return false;

    gp = std::move(_stream->front());
    _stream->pop();
    return true;
}

template <typename T> 
bool galapagos::stream<T>::try_peak(galapagos::stream_packet<T>& gp){

    std::lock_guard<std::mutex> guard(mutex);
    if(_stream->empty())
        return false;

    gp = std::move(_stream->front());
    return true;
}

template <typename T> 
void galapagos::stream<T>::lock(){
    mutex.lock();
}

template <typename T> 
void galapagos::stream<T>::unlock(){
    mutex.unlock();
}

template <typename T> 
size_t galapagos::stream<T>::size(){
    size_t ret; 
    std::lock_guard<std::mutex> guard(mutex);
    ret = _stream->size();
    return ret;
}


template <typename T> 
bool galapagos::stream<T>::empty(){
    bool ret; 
    std::lock_guard<std::mutex> guard(mutex);
    ret = _stream->empty();
    return ret;
}


template <typename T> 
std::vector< T > galapagos::stream<T>::read(int * dest){


    std::vector< T > vect;
    ap_uint <1> last = 0;
    galapagos::stream_packet <T> gps;


    while(!last){
      std::unique_lock<std::mutex> lock(mutex);
      while (_stream->empty()) {
        cv.wait(lock);
      }
      gps = std::move(_stream->front());
      _stream->pop();
      last = gps.last;
      vect.push_back(gps.data);
    }


    *dest = gps.dest;
    return vect;
}


template <typename T> 
void galapagos::stream<T>::write(char * buffer, int size, short dest){

    
    T * data = (T *)buffer;
    {
    std::lock_guard<std::mutex> guard(mutex);
#ifdef DEBUG
    std::cout << "NUM GALAPAGOS PACKETS IN RECV " << size/8 << std::endl;
#endif
#ifdef TEST
        assert(size == 80);
#endif
    
    for(int i=0; i<(size/8); i++){
        galapagos::stream_packet <T> gps;
        gps.data = data[i];
        gps.dest = dest;
        if(i!=((size/8)-1))
            gps.last = 0;
        else{
            gps.last = 1;
#ifdef TEST
        assert(i == 9);
#endif


#ifdef DEBUG
            std::cout<< " writing last" << std::endl;
#endif
        }

      _stream->push(std::move(gps));
    }
    }
    cv.notify_one();
}
#else

template <typename T> 
galapagos::stream<T>::stream(hls::stream <galapagos::stream_packet <T> > * __stream){
    stream = __stream;
}

template <typename T> 
galapagos::stream_packet<T> galapagos::stream<T>::read(){
    return _stream->read();
}

template <typename T> 
void galapagos::stream<T>::write(galapagos::stream_packet<T> gps){
   
    _stream->write(gps);

}

template <typename T> 
size_t galapagos::stream<T>::size(){
    size_t ret; 
    ret = _stream->size();
    return ret;
}

template <typename T> 
size_t galapagos::stream<T>::empty(){
    bool ret; 
    ret = _stream->empty();
    return ret;
}


#endif

template class galapagos::stream<ap_uint <PACKET_DATA_LENGTH > >;
template class galapagos::stream<float >;
template class galapagos::stream<double >;
