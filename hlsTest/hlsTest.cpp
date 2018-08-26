//#include "HUM.h"
//#include "ap_axi_sdata.h"

#define MEM_INFO_SIZE 4 
#define PARAMETER_MEM_INFO_SIZE 2  
#define DARIUS_INFO_SIZE 7 // {ind_0 = num_commands, ind_1-4 = command, ind_5 = batch_size, ind_6 = num_ranks}

#define NUM_COMMANDS_OFFSET 0x60
#define COMMAND_OFFSET 0x70
#define CYCLE_COUNT_OFFSET 0xd0


#define START 0x1
#define DONE  0x6

#define DEPTH 2147483648 
#define DARIUS_DEPTH 1024

#define INIT 0
#define DMA_IN 1 
#define RUN_DARIUS 2  
#define WAIT_FOR_DARIUS 3  
#define DMA_OUT 4  

//hls::stream<stream_packet> test_in;                
//hls::stream<stream_packet> test_out;
//hls::stream<stream_packet> *test_in_ptr = &test_in;                
//hls::stream<stream_packet> *test_out_ptr = &test_out;                

void hlsTest(
             float  * mem ,            // global memory pointer
             //   hls::stream<stream_packet> *stream_in,                
             //   hls::stream<stream_packet> *stream_out,
             //   volatile int * state_out
               //const int rank       // offset of inputs
        volatile int * test        
        )            // kernel size
{

    
//Needed for MPI support
//#pragma HLS INTERFACE axis port=stream_in
//#pragma HLS INTERFACE axis port=stream_out

//#pragma HLS INTERFACE m_axi port=mem depth=2147483648
#pragma HLS INTERFACE m_axi port=mem depth=8
//#pragma HLS INTERFACE ap_ctrl_none port=return 
#pragma HLS INTERFACE ap_none port=test

    *test = 42;
    //float parameter_mem_info_float[PARAMETER_MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 

    //float local_mem[10];
    //HUM comm_layer(stream_in, stream_out);

    mem[0] = 42.0;
    mem[1] = mem[0] + 1;
    //while(!comm_layer.recv(parameter_mem_info_float, PARAMETER_MEM_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
    //while(!comm_layer.recv(mem, 2, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
}
