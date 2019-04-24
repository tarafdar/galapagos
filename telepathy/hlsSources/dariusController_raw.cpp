
//#include "HUM.h"
//#include "MPI.h"
//#include "ap_axi_sdata.h"

#include "galapagos_packet.h"
#include "dariusController.h"



void dariusController_raw(
                hls::stream<galapagos_stream_packet> &stream_in, 
                hls::stream<galapagos_stream_packet> &stream_out,
                hls::stream<dataMoverCommand_word_t> &axis_cmd_mm2s,
                hls::stream<dataMoverCommand_word_t> &axis_cmd_s2mm,
                hls::stream<axis_word_dma> &axis_mm2s,
                hls::stream<axis_word_dma> &axis_s2mm,
                int   darius_driver[DARIUS_DEPTH],
                int rank
                )            
{
//Needed for MPI support

#pragma HLS INTERFACE axis port=stream_in
#pragma HLS INTERFACE axis port=stream_out
#pragma HLS INTERFACE axis port=axis_cmd_mm2s
#pragma HLS INTERFACE axis port=axis_cmd_s2mm
#pragma HLS INTERFACE axis port=axis_mm2s
#pragma HLS INTERFACE axis port=axis_s2mm
#pragma HLS INTERFACE m_axi port=darius_driver depth=1024
#pragma HLS INTERFACE s_axilite port=rank



//#pragma HLS INTERFACE ap_ctrl_none port=return 



//    HUM comm_layer(stream_in, stream_out);




    //Variables that need to maintain value across states
    static int parameter_mem_info[PARAMETER_MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 
    static int mem_info[MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in} 
    static int parameter_dma_address; 
    static int parameter_dma_size; 
    static int input_dma_address; 
    static int input_dma_size; 
    static int output_dma_address; 
    static int output_dma_size; 
    
    
    static int data_mem_info[MEM_INFO_SIZE]; //{offset in offchip memory to dma_in, size to dma_in, offset in offchip memory to dma_out, size to dma_out} 
    static int darius_info[DARIUS_INFO_SIZE]; //{num_commands, command, batch_size, num_ranks} 
    static int cumulative_cycle_count;
    static unsigned int batch_size = darius_info[DARIUS_INFO_SIZE - 2];
    static unsigned int num_ranks = darius_info[DARIUS_INFO_SIZE - 1];
    static int prev_rank;
    static int next_rank;


    
    static ap_uint <3> state = INIT;


    switch (state) {
        case INIT:
    //control and parameters from rank 0
    //
    //information on parameters (offset to dma in and size)
            
            for(int i=0; i<PARAMETER_MEM_INFO_SIZE ; i++){
                galapagos_stream_packet gp;
                gp = stream_in.read();
                parameter_mem_info[i] = gp.data;
            }

            parameter_dma_address = parameter_mem_info[0];
            parameter_dma_size = parameter_mem_info[1];
           
            { 
                dataMoverCommand_word_t axis_word_s2mmCommand;
                axis_word_s2mmCommand.data(72,68) = 0; //reserved
                axis_word_s2mmCommand.data(67,64) = 0; //tag not needed
                axis_word_s2mmCommand.data(63,32) = parameter_dma_address/sizeof(int);
                axis_word_s2mmCommand.data[31] = 0; //ddr 
                axis_word_s2mmCommand.data[30] = 1; //eof , since we have size, don't need
                axis_word_s2mmCommand.data(29,24) = 0; //dsa 0
                axis_word_s2mmCommand.data[23] = 1; //incr (1)
                axis_word_s2mmCommand.data(22,0) = parameter_dma_size; //bytes to transfer
                axis_cmd_s2mm.write(axis_word_s2mmCommand);
            }

            //dma in paramters
            for(int i=0; i<(parameter_dma_size/8); i++){
                galapagos_stream_packet gp = stream_in.read();
                axis_word_dma wdma;
                wdma.data = gp.data;
                axis_s2mm.write(wdma);
            }

#ifndef CONTROLLER_ONLY
	    darius_driver[0] = 0; // num_commands
#endif

            //read in info about memory input and output
            //

            for(int i=0; i<MEM_INFO_SIZE; i++){
                galapagos_stream_packet gp;
                gp = stream_in.read();
                data_mem_info[i] = gp.data;
            }
       
            input_dma_address = data_mem_info[0];
            input_dma_size = data_mem_info[1];
            output_dma_address = data_mem_info[2];
            output_dma_size = data_mem_info[3];


	    //num_commands
	    int num_commands;
        {
	        galapagos_stream_packet gp;
	        gp = stream_in.read();
	        num_commands = gp.data;
        }
		
	    //all commands
        for(int i=0; i<num_commands * DARIUS_INFO_SIZE; i++){
            galapagos_stream_packet gp;
            gp = stream_in.read();
            darius_info[i] = gp.data;
        } 
	    
	    //batch_size
        {
	        galapagos_stream_packet gp;
	        gp = stream_in.read();
	        batch_size  = gp.data;
        }
 	    //number of ranks
        {
	        galapagos_stream_packet gp;
	        gp = stream_in.read();
	        num_ranks  = gp.data;
        }
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

            //read cumulative cycle count
            {
                galapagos_stream_packet gp;
                gp = stream_in.read();
                cumulative_cycle_count = gp.data;
            }

            {
                dataMoverCommand_word_t axis_word_s2mmCommand;
                axis_word_s2mmCommand.data(71,68) = 0; //reserved
                axis_word_s2mmCommand.data(67,64) = 0; //tag not needed
                axis_word_s2mmCommand.data(63,32) = input_dma_address/sizeof(int);
                axis_word_s2mmCommand.data[31] = 0; //ddr 
                axis_word_s2mmCommand.data[30] = 1; //eof , since we have size, don't need
                axis_word_s2mmCommand.data(29,24) = 0; //dsa 0
                axis_word_s2mmCommand.data[23] = 1; //incr (1)
                axis_word_s2mmCommand.data(22,0) = input_dma_size; //bytes to transfer
                axis_cmd_s2mm.write(axis_word_s2mmCommand);
            }
            //dma in paramters
            for(int i=0; i<(input_dma_size/8); i++){
                galapagos_stream_packet gp = stream_in.read();
                axis_word_dma wdma;
                wdma.data = gp.data;
                axis_s2mm.write(wdma);
            }
            
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
            
            //write out cumulative cycle count
            cumulative_cycle_count += darius_driver[CYCLE_COUNT_OFFSET/sizeof(int)]; // command
            {
                galapagos_stream_packet gp;
                gp.data = cumulative_cycle_count;
                stream_out.write(gp);
            }
            
            {
                dataMoverCommand_word_t axis_word_mm2sCommand;
                axis_word_mm2sCommand.data(71,68) = 0; //reserved
                axis_word_mm2sCommand.data(67,64) = 0; //tag not needed
                axis_word_mm2sCommand.data(63,32) = output_dma_address/sizeof(int);
                axis_word_mm2sCommand.data[31] = 0; //ddr 
                axis_word_mm2sCommand.data[30] = 1; //eof
                axis_word_mm2sCommand.data(29,24) = 0; //dsa 0
                axis_word_mm2sCommand.data[23] = 1; //incr (1)
                axis_word_mm2sCommand.data(22,0) = output_dma_size; //bytes to transfer
                axis_cmd_mm2s.write(axis_word_mm2sCommand);
            }
            for(int i=0; i<(output_dma_size/8); i++){
                galapagos_stream_packet gp;
                gp.keep = 0xff;
		        gp.dest = next_rank;
                axis_word_dma wdma = axis_mm2s.read();
                gp.data = wdma.data;
                gp.last = wdma.last;
                stream_out.write(gp);
            }
            state = DMA_IN;
            break;
    }
}

