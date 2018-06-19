#include "MPI.h"

#define MEM_INFO_SIZE 4 
#define PARAMETER_MEM_INFO_SIZE 2 
#define MEM_INFO_SIZE 4 
#define DARIUS_INFO_SIZE 3 

#define NUM_COMMANDS_OFFSET 0x60
#define COMMAND_OFFSET 0x70
#define CYCLE_COUNT_OFFSET 0xd0


#define START 0x1
#define DONE  0x6

#define DEPTH 214783648
#define DARIUS_DEPTH 1024

//define states
#define INIT_READ_PARAMETER_MEM_INFO 0
#define INIT_DMA_PARAMETERS 1
#define INIT_READ_DMA_MEM_INFO 2
#define INIT_READ_DARIUS_INFO 3 
#define FORWARD_PASS_0 4 
#define FORWARD_PASS_1 5 
#define FORWARD_PASS_2 6 
#define FORWARD_PASS_3 7 
#define FORWARD_PASS_4 8 

void dariusWrapper(float  mem [DEPTH],            // global memory pointer
                int  darius_driver [DARIUS_DEPTH] //,
                //const int rank       // offset of inputs
                )            // kernel size
{
//Needed for MPI support
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in

// Global memory interface
#pragma HLS INTERFACE ap_bus port=mem
#pragma HLS RESOURCE core=AXI4M variable=mem
#pragma HLS INTERFACE ap_bus port=darius_driver
#pragma AP resource core=AXI4M variable=darius_driver
#pragma HLS INTERFACE ap_ctrl_none port=return 
    
    int rank = id_in;
    int parameter_mem_info[PARAMETER_MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 
    int data_mem_info[MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in, offset in offchip memory to dma_out, size to dma_out} 
    int darius_info[DARIUS_INFO_SIZE]; //{num_commands, command, batch_size} 
    int cumulative_cycle_count[1];
    
    float parameter_mem_info_float[PARAMETER_MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 
    float data_mem_info_float[MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in, offset in offchip memory to dma_out, size to dma_out} 
    float darius_info_float[DARIUS_INFO_SIZE]; //{num_commands, command, batch_size} 
    float cumulative_cycle_count_float[1];
    
      
    //control and parameters from rank 0
    //
    //information on parameters (offset to dma in and size)
    while(!MPI_Recv(parameter_mem_info_float, PARAMETER_MEM_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
    parameter_mem_info[0] = (int) parameter_mem_info_float[0];
    parameter_mem_info[1] = (int) parameter_mem_info_float[1];

    //dma in parameters
    while(!MPI_Recv(mem + parameter_mem_info[0]/sizeof(int), parameter_mem_info[1]/sizeof(int), MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
    
    while(!MPI_Recv(data_mem_info_float, MEM_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
    data_mem_info[0] = (int) data_mem_info_float[0];
    data_mem_info[1] = (int) data_mem_info_float[1];
    data_mem_info[2] = (int) data_mem_info_float[2];
    data_mem_info[3] = (int) data_mem_info_float[3];


    while(!MPI_Recv(darius_info, DARIUS_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
       

    while(1){
        //previous cycle count and data from previous rank
        while(!MPI_Recv(cumulative_cycle_count, 1, MPI_FLOAT, rank - 1,0/*not used*/,MPI_COMM_WORLD/*not used*/));
        cumulative_cycle_count[0] = (int) cumulative_cycle_count_float[0];
        while(!MPI_Recv(mem + data_mem_info[0]/sizeof(float), data_mem_info[1]/sizeof(float), MPI_INT, rank - 1,0/*not used*/,MPI_COMM_WORLD/*not used*/));
        
        //run darius
        darius_driver[NUM_COMMANDS_OFFSET/sizeof(int)] = darius_info[0]; // num_commands
        darius_driver[COMMAND_OFFSET/sizeof(int)] = darius_info[1]; // command
        darius_driver[0] = START; 
        while( darius_driver[0] != DONE);
        
        cumulative_cycle_count[0] += darius_driver[CYCLE_COUNT_OFFSET/sizeof(int)]; // command
        cumulative_cycle_count_float[0] = (float) cumulative_cycle_count[0];
        //send next cycle count and data to next rank    
	    while(!MPI_Send(cumulative_cycle_count_float, 1, MPI_FLOAT, rank + 1, 0 ,MPI_COMM_WORLD));
	    while(!MPI_Send(mem + data_mem_info[2]/sizeof(float), data_mem_info[3]/sizeof(int), MPI_FLOAT, rank + 1, 0 ,MPI_COMM_WORLD));
    }
}

