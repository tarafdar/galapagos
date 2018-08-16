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
        
        $display("prepare 1st transaction");
        stream.mpi_send_header(
                              .dst_rank(dst_rank),
                              .src_rank(src_rank),
                              .size(size),
                              .mac_addr_dst(MAC_ADDR_FPGA),
                              .mac_addr_src(MAC_ADDR_STIM),
                              .ip_addr_dst(32'd0),
                              .ip_addr_src(32'd0)
                              );

        // higher  32 bits: size (bytes) in mem to dma_in
        // lower 32 bits: offset in mem to dma_in
        // example: dma_in at offset 0, prepare to dma_in 8 bytes
        // data: (hex) 41000000 (float 8 in hex) 00000000
                        
        stream.write(
                    .data({32'h41000000, 32'd0}),
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
        
       /* 
        stream.mpi_recv(
                     .dst_rank(src_rank),
                     .src_rank(dst_rank), 
                     .size(16'd1),
                     .mac_addr_dst(MAC_ADDR_STIM),
                     .mac_addr_src(MAC_ADDR_FPGA),
                     .ip_addr_dst(32'd0),
                     .ip_addr_src(32'd0)
                 
                 );
         */
        
        $display("prepare 2nd transaction");
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
        $display("second before stream write");
        // send 8 bytes data
        stream.write(
                    .data(64'hdeadbeefdeadbeef),
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
        
        /*
        $display("prepare 3rd transaction");
        size = 16'd4;
        stream.mpi_send_header(
                              .dst_rank(dst_rank),
                              .src_rank(src_rank),
                              .size(size),
                              .mac_addr_dst(MAC_ADDR_FPGA),
                              .mac_addr_src(MAC_ADDR_STIM),
                              .ip_addr_dst(32'd0),
                              .ip_addr_src(32'd0)
                              );                
        // setup mem offset, size for input image dma_in and output feature map dma_out, payload 4 floats
        // 1st flit: higher 32 bits: offset in mem to dma_in
        //           lower  32 bits: size (bytes) in mem to dma_in
        // 2nd flit: higher 32 bits: offset in mem to dma_out
        //           lower  32 bits: size (bytes) in mem to dma_out
        // example: dma_in at offset 0x00001000, prepare to dma_in 8 bytes as input image
        //          payload: (hex) 0000000008
        // example: dma_out at offset 0x00005000, prepare to dma_out 8 bytes as output feature map
        //          payload: (hex) 00005000 00000008              
        stream.write(
                    .data(64'h0000100000000008),
                    .keep(8'hff),
                    .last(1'b0)
                    );
        stream.write(
                    .data(64'h0000500000000008),
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
        
        $display("prepare 4th transaction");
        size = 16'd35;
        stream.mpi_send_header(
                              .dst_rank(dst_rank),
                              .src_rank(src_rank),
                              .size(size),
                              .mac_addr_dst(MAC_ADDR_FPGA),
                              .mac_addr_src(MAC_ADDR_STIM),
                              .ip_addr_dst(32'd0),
                              .ip_addr_src(32'd0)
                              );
        // send 140 bytes = 128 bytes command and 4 bytes (floats) set up, total 17.5 flits
        repeat (18) begin
        stream.write(
                    .data(64'h0000000100000008),
                    .keep(8'hff),
                    .last(1'b0)
                    );        
        end
        stream.write(
                    .data(64'h0000000100000008),
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
        */                                                                                                                                    
    end

endmodule