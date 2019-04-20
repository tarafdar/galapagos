//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#ifndef __KERNEL_HPP__   // if x.h hasn't been included yet...
#define __KERNEL_HPP__


#include <thread>
#include <iostream>
#include "galapagos_stream.hpp"
#include "galapagos_packet.h"

void printTest(int * array, int size, int kern);
void helloWorld();
void kern0(galapagos::stream <ap_uint <PACKET_DATA_LENGTH> > *in, galapagos::stream <ap_uint <PACKET_DATA_LENGTH > > *out);
void kern1(galapagos::stream <ap_uint <PACKET_DATA_LENGTH> > *in, galapagos::stream <ap_uint <PACKET_DATA_LENGTH > > *out);
void kern2(galapagos::stream <ap_uint <PACKET_DATA_LENGTH> > *in, galapagos::stream <ap_uint <PACKET_DATA_LENGTH > > *out, int num);

#define NUM 10


#endif
