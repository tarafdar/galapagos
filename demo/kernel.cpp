//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <cstddef>
#include <cstring>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>




#define NUM_INTERMEDIATE_HOPS 1
#define NUM_FLITS 10

#include "galapagos_stream.hpp"
void kern_send(galapagos_stream * in, galapagos_stream  * out)
{
#pragma HLS INTERFACE axis register both port=out
#pragma HLS INTERFACE axis register both port=in

    int num_flits = NUM_FLITS;
    
    galapagos_stream_packet gp;


    for(int j=0; j<num_flits; j++){
        gp.dest = 1; // FIRST
        gp.data = j;
        if(j==(num_flits -1))
            gp.last = 1;
        else
            gp.last = 0;
        out->write(gp);
    }
}

//FINAL RECV RUNNING IN SOFTWARE
void kern_recv(galapagos_stream * in, galapagos_stream  * out)
{
#pragma HLS INTERFACE axis register both port=out
#pragma HLS INTERFACE axis register both port=in
    
    galapagos_stream_packet gp;
    short dest;
    
    dest = gp.dest + 1;

    ap_uint <1> last = 0;
    
    while(!last){
        gp = in->read();
        std::cout << "DATA IS " << gp.data << std::endl << std::flush;
        last = gp.last;
        out->write(gp);

    }
}




void kern_middle(galapagos_stream * in, galapagos_stream  * out)
{
#pragma HLS INTERFACE axis register both port=out
#pragma HLS INTERFACE axis register both port=in
    
    galapagos_stream_packet gp;

    ap_uint <1> last = 0;
    
    while(!last){
        gp = in->read();
        gp.dest = gp.dest + 1;
        last = gp.last;
        out->write(gp);
    }
}
