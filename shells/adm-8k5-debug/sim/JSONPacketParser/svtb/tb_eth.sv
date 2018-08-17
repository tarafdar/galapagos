`timescale 1 ns/ 1ps

//import ethernet::*;


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
