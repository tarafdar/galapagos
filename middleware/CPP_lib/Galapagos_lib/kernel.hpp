
#ifndef __KERNEL_HPP__   // if x.h hasn't been included yet...
#define __KERNEL_HPP__


#include <thread>
#include <iostream>
#include "galapagos_packet.h"

void printTest(int * array, int size, int kern);
void helloWorld();
void kern0(hls::stream<galapagos_stream_packet> *in, hls::stream<galapagos_stream_packet> *out);
void kern1(hls::stream<galapagos_stream_packet> *in, hls::stream<galapagos_stream_packet> *out);
void kern2(hls::stream<galapagos_stream_packet> *in, hls::stream<galapagos_stream_packet> *out, int num);

#define NUM 10


#endif
