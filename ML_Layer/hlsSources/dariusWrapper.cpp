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
void dariusWrapper(int * mem,            // global memory pointer
                int * darius_driver,
                const int rank       // offset of inputs
                )            // kernel size
{
//Needed for MPI support
#pragma HLS INTERFACE axis port=stream_out
#pragma HLS INTERFACE axis port=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in

// Global memory interface
#pragma HLS INTERFACE m_axi port=mem depth=2147483648

//Driver for Darius IP
#pragma HLS INTERFACE m_axi port=darius_driver depth=1024
// Bind all control ports to a single bundle
#pragma HLS INTERFACE s_axilite port=rank bundle=CTRL_BUS
#pragma HLS INTERFACE ap_ctrl_none port=return bundle=CTRL_BUS
    
    int parameter_mem_info[PARAMETER_MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 
    int data_mem_info[MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in, offset in offchip memory to dma_out, size to dma_out} 
    int darius_info[DARIUS_INFO_SIZE]; //{num_commands, command} 
   
    int cumulative_cycle_count[1];
    
      
    //control and parameters from rank 0
    while(!MPI_Recv(parameter_mem_info, PARAMETER_MEM_INFO_SIZE, MPI_INT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
    while(!MPI_Recv(mem + parameter_mem_info[0]/sizeof(int), parameter_mem_info[1]/sizeof(int), MPI_INT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
    while(!MPI_Recv(data_mem_info, MEM_INFO_SIZE, MPI_INT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
    while(!MPI_Recv(darius_info, DARIUS_INFO_SIZE, MPI_INT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
       

    while(1){
        //previous cycle count and data from previous rank
        while(!MPI_Recv(cumulative_cycle_count, 1, MPI_INT, rank - 1,0/*not used*/,MPI_COMM_WORLD/*not used*/));
        while(!MPI_Recv(mem + data_mem_info[0]/sizeof(int), data_mem_info[1]/sizeof(int), MPI_INT, rank - 1,0/*not used*/,MPI_COMM_WORLD/*not used*/));
        
        //run darius
        darius_driver[NUM_COMMANDS_OFFSET/sizeof(int)] = darius_info[0]; // num_commands
        darius_driver[COMMAND_OFFSET/sizeof(int)] = darius_info[1]; // command
        darius_driver[0] = START; 
        while( darius_driver[0] != DONE);
        cumulative_cycle_count[0] += darius_driver[CYCLE_COUNT_OFFSET/sizeof(int)]; // command
       
        //send next cycle count and data to next rank    
	    while(!MPI_Send(cumulative_cycle_count, 1, MPI_INT, rank + 1, 0 ,MPI_COMM_WORLD));
	    while(!MPI_Send(mem + data_mem_info[2]/sizeof(int), data_mem_info[3]/sizeof(int), MPI_INT, rank + 1, 0 ,MPI_COMM_WORLD));
    }
}

