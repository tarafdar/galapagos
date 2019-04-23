#ifndef DARIUS_CONTROLLER_HPP 
#define DARIUS_CONTROLLER_HPP


#define MEM_INFO_SIZE 4 
#define PARAMETER_MEM_INFO_SIZE 2  
//#define DARIUS_INFO_SIZE 35 // {ind_0 = num_commands, ind_1-32 = command, ind_33 = batch_size, ind_34 = num_ranks}
#define DARIUS_INFO_SIZE 16 // {ind_0 = num_commands, ind_1-32 = command, ind_33 = batch_size, ind_34 = num_ranks}

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

struct dataMoverCommand_word_t{
    ap_uint<72> data;
};


typedef struct{
    ap_uint<64> data;
    ap_uint<1> last;
} axis_word_dma;




void dariusController_raw(
                hls::stream<galapagos_stream_packet> &stream_in, 
                hls::stream<galapagos_stream_packet> &stream_out,
                hls::stream<dataMoverCommand_word_t> &axis_cmd_mm2s,
                hls::stream<dataMoverCommand_word_t> &axis_cmd_s2mm,
                hls::stream<axis_word_dma> &axis_mm2s,
                hls::stream<axis_word_dma> &axis_s2mm,
                int   darius_driver[DARIUS_DEPTH],
                const int rank
                ); 


#endif
