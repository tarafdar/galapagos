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

    reg [63:0] out_data;
    reg [7:0] out_keep;
    reg out_last;

    initial begin

        stream_in_READY = 1'b1;           
        #50
        ethernet_header
            (
            .mac_addr_dst(MAC_ADDR_FPGA),
            .mac_addr_src(MAC_ADDR_STIM), 
            .dst(8'h00)
            );
 
    end

    fileIO conv_json
        (
        .out_data(out_data),
        .out_keep(out_keep),
        .out_last(out_last)
        );

    always@(*) begin
        gen_transaction
            (
                .data(out_data),
                .keep(out_keep),
                .last(out_last)
            );
    end

    `include "file_io.sv"
    `include "utility.sv"
    `include "ethernet.sv"

endmodule