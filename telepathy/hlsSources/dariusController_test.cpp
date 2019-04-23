
//#include "HUM.h"
//#include "MPI.h"
//#include "ap_axi_sdata.h"


#include "galapagos_packet.h"
#include "dariusController.h"


int main()            
{




//    HUM comm_layer(stream_in, stream_out);
    hls::stream<galapagos_stream_packet> stream_in;
    hls::stream<galapagos_stream_packet> stream_out;
    hls::stream<dataMoverCommand_word_t> axis_cmd_mm2s;
    hls::stream<dataMoverCommand_word_t> axis_cmd_s2mm;
    hls::stream<axis_word_dma> axis_mm2s;
    hls::stream<axis_word_dma> axis_s2mm;
    int   darius_driver[DARIUS_DEPTH];


    galapagos_stream_packet gp;
    gp.data = 0; //parameter_dma_address
    gp.last = 0;
    stream_in.write(gp);
    gp.data = 16; //parameter_dma_size
    gp.last = 1;
    stream_in.write(gp);

    for(int i=0; i<2; i++){
        gp.data = 0xdeadbeefdeadbeef;
        if(i==1)
            gp.last = 1;
        else 
            gp.last = 0;
        stream_in.write(gp);
    }

    gp.data = 0x1000; //input_dma_address
    gp.last = 0;
    stream_in.write(gp);
    gp.data = 8; //input_dma_size
    stream_in.write(gp);
    gp.data = 0x2000; //output_dma_address
    gp.last = 0;
    stream_in.write(gp);
    gp.data = 8; //output_dma_size
    gp.last = 1; 
    stream_in.write(gp);
    
    for(int i=0; i<DARIUS_INFO_SIZE; i++){
        gp.data = 0x42;
        if(i==DARIUS_INFO_SIZE -1)
            gp.last = 1;
        else
            gp.last = 0;
        stream_in.write(gp);
    }

    //INIT
    dariusController_raw(stream_in, stream_out,axis_cmd_mm2s, axis_cmd_s2mm, axis_mm2s, axis_s2mm, darius_driver, 0); 

    while(!axis_cmd_s2mm.empty()){
        dataMoverCommand_word_t axis_word_s2mmCommand;
        axis_word_s2mmCommand = axis_cmd_s2mm.read();
        std::cout << "INIT DMA_CMD " << std::hex << axis_word_s2mmCommand.data << std::endl; 
    }
    
    while(!axis_s2mm.empty()){
        axis_word_dma wdma;
        wdma = axis_s2mm.read();
        std::cout << "INIT DMA " << std::hex << wdma.data << std::endl; 
    }


    gp.data = 0;
    gp.last = 1;
    stream_in.write(gp); //cumulative cycle count

    gp.data = 0xfacefacefaceface;
    gp.last = 1;
    stream_in.write(gp); //input dma
    

    //DMA_IN
    dariusController_raw(stream_in, stream_out,axis_cmd_mm2s, axis_cmd_s2mm, axis_mm2s, axis_s2mm, darius_driver, 0); 
    
    while(!axis_cmd_s2mm.empty()){
        dataMoverCommand_word_t axis_word_s2mmCommand;
        axis_word_s2mmCommand = axis_cmd_s2mm.read();
        std::cout << "DMA_CMD IN " << std::hex << axis_word_s2mmCommand.data << std::endl; 
    }
    
    while(!axis_s2mm.empty()){
        axis_word_dma wdma;
        wdma = axis_s2mm.read();
        std::cout << "DMA IN " << std::hex << wdma.data << std::endl; 
    }
    
   
    
    darius_driver[0] = 1;
    
    //RUN DARIUS
    dariusController_raw(stream_in, stream_out,axis_cmd_mm2s, axis_cmd_s2mm, axis_mm2s, axis_s2mm, darius_driver, 0); 
   
    std::cout << "NUM COMMANDS " << std::hex << darius_driver[NUM_COMMANDS_OFFSET/sizeof(int)] << std::endl;
    
    for (int i=0; i<(DARIUS_INFO_SIZE-1); i++)
        std::cout << "COMMAND " << std::hex << darius_driver[COMMAND_OFFSET/sizeof(int) + i] <<std::endl; // command
    
    
    darius_driver[0] = DONE;


    //WAIT_FOR_DARIUS
    dariusController_raw(stream_in, stream_out,axis_cmd_mm2s, axis_cmd_s2mm, axis_mm2s, axis_s2mm, darius_driver, 0); 


    //DMA_OUT
    dariusController_raw(stream_in, stream_out,axis_cmd_mm2s, axis_cmd_s2mm, axis_mm2s, axis_s2mm, darius_driver, 0); 
    
    while(!axis_cmd_mm2s.empty()){
        dataMoverCommand_word_t axis_word_mm2sCommand;
        axis_word_mm2sCommand = axis_cmd_mm2s.read();
        std::cout << "DMA_CMD OUT " << std::hex << axis_word_mm2sCommand.data << std::endl; 
    }
    
   
    while(!stream_out.empty()){
        galapagos_stream_packet gp = stream_out.read();
        std::cout << "FINAL STREAM OUT " << gp.data << std::endl;

    }
    


}

