`timescale 1 ns/ 1ps

module mpi_eth_stimulate
                    (
                     input clk,
                     //output reg [63:0] stream_out_DATA,
                     //output reg [7:0] stream_out_KEEP, 
                     //output reg stream_out_LAST,
                     //output reg stream_out_VALID,
                     output [63:0] stream_out_DATA,
                     output [7:0] stream_out_KEEP, 
                     output stream_out_LAST,
                     output stream_out_VALID,
                     input stream_out_READY,
                     input [63:0] stream_in_DATA,
                     input [7:0] stream_in_KEEP, 
                     input stream_in_LAST,
                     input stream_in_VALID,
                     output reg stream_in_READY
                    );

    `include "utility.sv"
    `include "mpi.sv"

    parameter [47:0] MAC_ADDR_FPGA = 48'hfa163e55ca02; 
    parameter [47:0] MAC_ADDR_STIM = 48'h0cc47a88c047; 


    reg [15:0] dst_rank;
    reg [7:0] src_rank;
    reg [31:0] size;
    reg [63:0] trans_num;
    reg [63:0] data_in_reverse;
    
    mpi_interface stream(.clk(clk),
                      .stream_out_data(stream_out_DATA),
                      .stream_out_keep(stream_out_KEEP),
                      .stream_out_last(stream_out_LAST),
                      .stream_out_valid(stream_out_VALID),
                      .stream_out_ready(stream_out_READY),
                      .stream_in_data(stream_in_DATA),
                      .stream_in_keep(stream_in_KEEP),
                      .stream_in_last(stream_in_LAST),
                      .stream_in_valid(stream_in_VALID),
                      .stream_in_ready(stream_in_READY)                      
    
    );
    /*
    ethernet_interface stream
                (.clk(clk),
                 .stream_out_data(stream_out_DATA),
                 .stream_out_keep(stream_out_KEEP),
                 .stream_out_last(stream_out_LAST),
                 .stream_out_valid(stream_out_VALID),
                 .stream_out_ready(stream_out_READY),
    input [63:0] stream_in_data,
    input [7 :0] stream_in_keep,
    input stream_in_last,
    input stream_in_valid,
    input stream_in_ready  
    );
*/


     
    initial begin
        //stream = new();
        stream_in_READY = 1;
        #50
        trans_num = 64'd10;
        dst_rank = 16'd1;
        src_rank = 8'd0;
        size = 16'd2;
    
        stream.mpi_send_header(
                                .dst_rank(dst_rank),
                                .src_rank(src_rank),
                                .size(size),
                                .mac_addr_dst(MAC_ADDR_FPGA),
                                .mac_addr_src(MAC_ADDR_STIM),
                                .ip_addr_dst(32'd0),
                                .ip_addr_src(32'd0)
                        );

      
        repeat(10) begin
            stream.write(
                        .data(64'd13),
                        .keep(8'hff),
                        .last(1'b0)
                        );
        
       end
       
       stream.write(
                    .data(64'd13),
                    .keep(8'hff),
                    .last(1'b1)
                    );
        
       
        $display("before wait for done");
        
        
        stream.mpi_send_wait_for_done(
                                .dst_rank(dst_rank),
                                .src_rank(src_rank),
                                .mac_addr_dst(MAC_ADDR_FPGA),
                                .mac_addr_src(MAC_ADDR_STIM),
                                .ip_addr_dst(32'd0),
                                .ip_addr_src(32'd0)
        );


        

        $display("after wait for done");
        

    end

endmodule
