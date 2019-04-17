#include "galapagos_stream.hpp"


#define TEST

#ifdef CPU
galapagos::stream::stream(){
    _stream = std::make_unique<std::queue <galapagos::stream_packet> >();
//    name = "";
}

//galapagos::stream::stream(std::string _name){
//    _stream = std::make_unique<std::queue <galapagos::stream_packet> >();
//    name = _name;
//}

galapagos::stream_packet galapagos::stream::read(){
    
    galapagos::stream_packet gps;
    //std::unique_lock<std::mutex> lck(mutex);
    //while(_stream->empty())   
    //    cv.wait(lck);
    //gps = std::move(_stream->front());
    ////gps = _stream->front();
    //std::cout <<  "reading1 " << gps.data << std::endl;
    //_stream->pop();
    //return gps;


      std::unique_lock<std::mutex> lock(mutex);
      while (_stream->empty()) {
        cv.wait(lock);
                                  //  This 'while' loop is equal to
      }
      gps = std::move(_stream->front());
      _stream->pop();

#ifdef DEBUG
    std::cout <<  "reading1 " << gps.data << std::endl;
#endif
    return gps;




}


void galapagos::stream::write(galapagos::stream_packet gps){
    
    {
        std::lock_guard<std::mutex> guard(mutex);
        _stream->push(std::move(gps));
#ifdef DEBUG
        std::cout << "writing packet " << gps.data << std::endl;
        std::cout << "size of queue " << _stream->size() <<std::endl;
#endif
        //std::cout << "stream name " << name << std::endl;
    }
    if (gps.last){
        cv.notify_one();
    }






}


bool galapagos::stream::try_read(galapagos::stream_packet& gp){

    std::lock_guard<std::mutex> guard(mutex);
    if(_stream->empty())
        return false;

    gp = std::move(_stream->front());
    _stream->pop();
    return true;
}

bool galapagos::stream::try_peak(galapagos::stream_packet& gp){

    std::lock_guard<std::mutex> guard(mutex);
    if(_stream->empty())
        return false;

    gp = std::move(_stream->front());
    return true;
}

void galapagos::stream::lock(){
    mutex.lock();
}

void galapagos::stream::unlock(){
    mutex.unlock();
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


std::vector<ap_uint<PACKET_DATA_LENGTH> > galapagos::stream::read(int * dest){


    std::vector< ap_uint<PACKET_DATA_LENGTH> > vect;
    ap_uint <1> last = 0;
    galapagos::stream_packet gps;


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

    //
    //{
    //std::lock_guard<std::mutex> guard(mutex);

    ////std::cout << "SIZE IN READ " << size() << std::endl;
    //while(!last){
    //    //gps = read();
    //    gps = _stream->front();
    //    -_stream->pop();
    //    last = gps.last;
    //    vect.push_back(gps.data);
    //}
//#ifdef TEST
//    if(vect.size() != 10){
//        std::cout << "left in buffer " << size() << std::endl;
//        std::cout << "size " << vect.size() << std::endl;
//    }
//    assert(vect.size() == 10);
//#endif

    *dest = gps.dest;
    return vect;
}


void galapagos::stream::write(char * buffer, int size, short dest){

    
//    std::cout << "at begin of write" << std::endl;
    ap_uint <PACKET_DATA_LENGTH> * data = (ap_uint <PACKET_DATA_LENGTH> *)buffer;
//    for(int i=0; i<size; i+=(PACKET_DATA_LENGTH/8)){
    {
    std::lock_guard<std::mutex> guard(mutex);
#ifdef DEBUG
    std::cout << "NUM GALAPAGOS PACKETS IN RECV " << size/8 << std::endl;
#endif
#ifdef TEST
        assert(size == 80);
#endif
    
    for(int i=0; i<(size/8); i++){
        galapagos::stream_packet gps;
//        std::cout << " IN STREAM WRITE GETTING DATA " << data[i] << std::endl;
        //gps.data = *buffer;
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

        //buffer+=(PACKET_DATA_LENGTH/8);
       // write(gps);
      _stream->push(std::move(gps));
    }
    }
    cv.notify_one();
  //  std::cout << "at end of write" << std::endl;
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

