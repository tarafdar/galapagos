`timescale 1 ns/ 1ps

//import ethernet::*;

typedef struct {
    int data;
    int keep;
    int last;
} flit;

typedef struct {
    flit flit_list[0:22];
    int num_flits;
} packet;

import "DPI-C" function void parseJSON(input string jsonFilePath, inout packet extPacketList[], inout int ver, inout int logToFile);


module dummy_prj( output reg [63:0] stream_out_DATA,
    output reg [7:0] stream_out_KEEP, 
    output reg stream_out_LAST,
    output reg stream_out_VALID,
    input stream_out_READY,
    input [63:0] stream_in_DATA,
    input [7:0] stream_in_KEEP, 
    input stream_in_LAST,
    input stream_in_VALID,
    output reg stream_in_READY
    ); 

wire stupid_data[63:0];
wire stupid_keep[7:0];
wire stupid_last;
wire stupid_valid;

assign stupid_data = 64'b69;
assign stupid_keep = 8'b255;
assign stupid_last = 1'b1;
assign stupid_valid = 1'b1;
assign stupid_ready = 1'b1;


always @ (*) begin
    stream_out_DATA[63:0] <= stream_in_DATA[63:0];
    stream_out_KEEP[7:0] <= stream_in_KEEP[7:0];
    stream_out_LAST <= stream_in_LAST;
    stream_out_READY <= 1'b1;
end                       


endmodule


module eth_stimulate
                    (
                     output reg [63:0] stream_out_DATA,
                     output reg [7:0] stream_out_KEEP, 
                     output reg stream_out_LAST,
                     output reg stream_out_VALID,
                     input stream_out_READY,
                     input [63:0] stream_in_DATA,
                     input [7:0] stream_in_KEEP, 
                     input stream_in_LAST,
                     input stream_in_VALID,
                     output reg stream_in_READY
                    );


    parameter [47:0] MAC_ADDR_FPGA = 48'hfa163e55ca02; 
    parameter [47:0] MAC_ADDR_STIM = 48'h0cc47a88c047; 


    
    initial begin

//        static string jsonFilePath = "./jsonTests/jsonPacketTest_extensive.json";
//        packet extPacketList[0:63];
//        static int ver = 1'd0;
//        static int logToFile = 1'd0;
//        parseJSON(jsonFilePath, extPacketList, ver, logToFile);
    
        stream_in_READY=1;           
        #50
        ethernet_header(.mac_addr_dst(MAC_ADDR_FPGA),
                                  .mac_addr_src(MAC_ADDR_STIM), 
                                  .dst(8'h00)
                                  );
        
        
       


        /*
        gen_transaction(.data(64'h0100000100030000), 
                        .keep(8'hff), 
                        .last(1'b0)
                    );
        gen_transaction(.data(64'h5073930200000000), 
                        .keep(8'h0f), 
                        .last(1'b1)
                    );
        */

        // Generate a transaction for each flit
//        for(int i = 0; i < 64; ++i) begin
//            for(int j = 0; j < (extPacketList[i].num_flits); ++j) begin
//                gen_transaction(extPacketList[i].flit_list[j].data, extPacketList[i].flit_list[j].keep, extPacketList[i].flit_list[j].last);
//            end
//        end




         
    end

    dummy_prj verilog_for_dummies(
        .stream_out_DATA(stream_out_DATA), 
        .stream_out_KEEP(stream_out_KEEP), 
        .stream_out_LAST(stream_out_LAST),
        .stream_out_VALID(stream_in_VALID), 
//        .stream_in_DATA(stream_in_DATA),
//        .stream_in_KEEP(stream_in_KEEP),
//        .stream_in_LAST(stream_in_LAST),
//        .stream_in_READY(stream_out_READY)
        .stream_in_DATA(stupid_data),
        .stream_in_KEEP(stupid_keep),
        .stream_in_LAST(stupid_last),
        .stream_in_READY(stupid_ready)
    );
    
    `include "ethernet.sv"
    `include "utility.sv"

endmodule
