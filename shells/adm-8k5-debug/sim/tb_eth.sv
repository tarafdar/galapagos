`timescale 1 ns/ 1ps

//import ethernet::*;

typedef struct packed {
    int data;
    int keep;
    int last;
} flit;

// Struct for packet data (max 23 flits)
typedef struct packed {
    flit [22:0] flit_list;
    int num_flits;
} packet;

import "DPI-C" function void parseJSON(input string jsonFilePath, inout packet extPacketList[], inout int ver, inout int logToFile);



initial begin
    input string jsonFilePath = "../jsonTests/jsonPacketTest_extensive.json";
    inout packet [63:0] extPacketList;
    inout int ver = 1'd0;
    inout int logToFile = 1'd0;
    parseJSON(jsonFilePath, extPacketList, ver, logToFile);
end

// Generate transaction for each flit
initial begin
    #50
    for(int i = 0; i < $size(extPacketList); ++i) {
        for(int j = 0; j < $size(extPacketList[i]); ++j) {
            gen_transaction(i, extPacketList[i][j].data, extPacketList[i][j].keep, extPacketList[i][j].last);
        }
    }
end

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
        stream_in_READY=1;           
        #50
        ethernet_header(.mac_addr_dst(MAC_ADDR_FPGA),
                                  .mac_addr_src(MAC_ADDR_STIM), 
                                  .dst(8'h00)
                                  );
        gen_transaction(.data(64'h0100000100030000), 
                        .keep(8'hff), 
                        .last(1'b0)
                    );
        gen_transaction(.data(64'h5073930200000000), 
                        .keep(8'h0f), 
                        .last(1'b1)
                    );
         
    end
    
    `include "ethernet.sv"
    `include "utility.sv"
endmodule
