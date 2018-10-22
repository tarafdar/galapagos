
//#include "HUM.h"
#include "MPI.h"
#include "ap_axi_sdata.h"


#define CONTROLLER_ONLY

#define MEM_INFO_SIZE 4 
#define PARAMETER_MEM_INFO_SIZE 2  
#define DARIUS_INFO_SIZE 35 // {ind_0 = num_commands, ind_1-32 = command, ind_33 = batch_size, ind_34 = num_ranks}

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

void dariusController(
                //hls::stream<stream_packet> *stream_in,                
                //hls::stream<stream_packet> *stream_out,
                float  mem [DEPTH],            // global memory pointer
                int   darius_driver[DARIUS_DEPTH],
                volatile int * state_out
                //const int rank       // offset of inputs
                )            // kernel size
{
//Needed for MPI support

//#pragma HLS INTERFACE axis port=stream_in
//#pragma HLS INTERFACE axis port=stream_out
//#pragma HLS INTERFACE m_axi port=mem depth=2147483648
//#pragma HLS INTERFACE m_axi port=darius_driver depth=1024

#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in

// Global memory interface
#pragma HLS INTERFACE ap_bus port=mem depth=2147483648
#pragma HLS RESOURCE core=AXI4M variable=mem 
#pragma HLS INTERFACE ap_bus port=darius_driver 
#pragma HLS resource core=AXI4M variable=darius_driver


#pragma HLS INTERFACE ap_ctrl_none port=return 



//    HUM comm_layer(stream_in, stream_out);


    int rank = id_in;


    //Variables that need to maintain value across states
    static int parameter_mem_info[PARAMETER_MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 
    static int data_mem_info[MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in, offset in offchip memory to dma_out, size to dma_out} 
    static int darius_info[DARIUS_INFO_SIZE]; //{num_commands, command, batch_size, num_ranks} 
    static int cumulative_cycle_count[1];
    static unsigned int batch_size = darius_info[DARIUS_INFO_SIZE - 2];
    static unsigned int num_ranks = darius_info[DARIUS_INFO_SIZE - 1];
    static int prev_rank;
    static int next_rank;

 
    //variables that are read in 
    float parameter_mem_info_float[PARAMETER_MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 
    float data_mem_info_float[MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in, offset in offchip memory to dma_out, size to dma_out} 
    float darius_info_float[DARIUS_INFO_SIZE]; //{num_commands, command, batch_size, num_ranks} 
    float cumulative_cycle_count_float[1];
    float local_mem[10];

    
    float size_float[1];
    static ap_uint <3> state = INIT;


    switch (state) {
        case INIT:
    //control and parameters from rank 0
    //
    //information on parameters (offset to dma in and size)
            //while(!MPI_Recv(parameter_mem_info_float, PARAMETER_MEM_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
            while(!MPI_Recv(parameter_mem_info_float, PARAMETER_MEM_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
	    for(int i=0; i< PARAMETER_MEM_INFO_SIZE; i++)
                parameter_mem_info[i] = (int) parameter_mem_info_float[i];
            
	    size_float[0] = parameter_mem_info_float[1];
	
	    //size_float[0] = 2.0f;
	    //float send_float[1];
	    //if(size_float[0] == 8.0f)
	    //        send_float[0] = 42.0f;
	    //else
	    //        send_float[0] = size_float[0];
	    //
	    //while(!MPI_Send(send_float, 1, MPI_FLOAT, 0, 0 ,MPI_COMM_WORLD));
	    


#ifndef CONTROLLER_ONLY
	    darius_driver[0] = 0; // num_commands
#endif
            //dma in parameters
            //while(!MPI_Recv(mem+parameter_mem_info[0]/sizeof(int), parameter_mem_info[1]/sizeof(int), MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
            while(!MPI_Recv(mem+parameter_mem_info[0]/sizeof(int), parameter_mem_info[1]/sizeof(int), MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
            
	    

            //while(!MPI_Recv(data_mem_info_float, MEM_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
            while(!MPI_Recv(data_mem_info_float, MEM_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
            for(int i=0; i< MEM_INFO_SIZE; i++)
                data_mem_info[i] = (int) data_mem_info_float[i];


            //while(!MPI_Recv(darius_info_float, DARIUS_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
            while(!MPI_Recv(darius_info_float, DARIUS_INFO_SIZE, MPI_FLOAT, 0,0/*not used*/,MPI_COMM_WORLD/*not used*/));
            for(int i=0; i< DARIUS_INFO_SIZE; i++)
                darius_info[i] = (int) darius_info_float[i];
     
            batch_size = darius_info[DARIUS_INFO_SIZE - 2];
            num_ranks = darius_info[DARIUS_INFO_SIZE - 1];

            if(rank<=batch_size)
                prev_rank = 0;
            else
                prev_rank = rank - batch_size;

            if(rank>(num_ranks - batch_size))
                next_rank = 0;
            else
                next_rank = rank + batch_size;
            state = DMA_IN;
            break;

        case DMA_IN:
            //previous cycle count and data from previous rank
            //while(!MPI_Recv(cumulative_cycle_count_float, 1, MPI_FLOAT, prev_rank,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
            while(!MPI_Recv(cumulative_cycle_count_float, 1, MPI_FLOAT, prev_rank,0/*not used*/,MPI_COMM_WORLD/*not used*/));
            cumulative_cycle_count[0] = (int) cumulative_cycle_count_float[0];
            //while(!MPI_Recv(mem + data_mem_info[0]/sizeof(float), data_mem_info[1]/sizeof(float), MPI_FLOAT, prev_rank,0/*not used*/,MPI_COMM_WORLD/*not used*/, state_out));
            while(!MPI_Recv(mem + data_mem_info[0]/sizeof(float), data_mem_info[1]/sizeof(float), MPI_FLOAT, prev_rank,0/*not used*/,MPI_COMM_WORLD/*not used*/));
            state = RUN_DARIUS;
            break;

        case RUN_DARIUS:
            //run darius
            darius_driver[NUM_COMMANDS_OFFSET/sizeof(int)] = darius_info[0]; // num_commands
            for (int i=0; i<(DARIUS_INFO_SIZE-1); i++)
                darius_driver[COMMAND_OFFSET/sizeof(int) + i] = darius_info[i+1]; // command
            darius_driver[0] = START;

            state = WAIT_FOR_DARIUS;
            break;
        case WAIT_FOR_DARIUS:
            if(darius_driver[0] == DONE)
                state = DMA_OUT;
            else
                state = WAIT_FOR_DARIUS;
            break;
        
        case DMA_OUT:
            cumulative_cycle_count[0] += darius_driver[CYCLE_COUNT_OFFSET/sizeof(int)]; // command
            cumulative_cycle_count_float[0] = (float) cumulative_cycle_count[0];
            //send next cycle count and data to next rank    
	        while(!MPI_Send(cumulative_cycle_count_float, 1, MPI_FLOAT, next_rank, 0 ,MPI_COMM_WORLD));
	        while(!MPI_Send(mem + data_mem_info[2]/sizeof(float), data_mem_info[3]/sizeof(int), MPI_FLOAT, next_rank, 0 ,MPI_COMM_WORLD));
            state = DMA_IN;
            break;
    }
}

