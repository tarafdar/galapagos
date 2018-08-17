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
                     output reg stream_in_READY,
                     //header info
                     input [47:0] mac_src,
                     input [47:0] mac_dst,
                     input [15:0] dst,
                     input [15:0] dst_rank,
                     input [7:0] src_rank,
                     input [7:0] packet_type,
                     input [31:0] size,
                     input [7:0] tag,
                     input [31:0] ip_dst,
                     input [31:0] ip_src,
                     input [0:0] last,
                     input [63:0] curr_header_type,
                     input [0:0] done,
                     //output reg [0:0] ack,
                     //input reg [0:0] ready_ack
                    );

    `include "utility.sv"
    `include "mpi.sv"
    //`include "ethernet.sv"

    bit cont;

//    parameter [47:0] MAC_ADDR_FPGA = 48'hfa163e55ca02; 
//    parameter [47:0] MAC_ADDR_STIM = 48'h0cc47a88c047; 
//
//
//    reg [15:0] dst_rank;
//    reg [7:0] src_rank;
//    reg [31:0] size;
//    reg [63:0] trans_num;
//    reg [63:0] data_in_reverse;
    
    mpi_interface stream_mpi(
        .clk(clk),
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

//    ethernet_interface stream_eth(
//        .clk(clk),
//        .stream_out_data(stream_out_DATA),
//        .stream_out_keep(stream_out_KEEP),
//        .stream_out_last(stream_out_LAST),
//        .stream_out_valid(stream_out_VALID),
//        .stream_out_ready(stream_out_READY),
//        .stream_in_data(stream_in_DATA),
//        .stream_in_keep(stream_in_KEEP),
//        .stream_in_last(stream_in_LAST),
//        .stream_in_valid(stream_in_VALID),
//        .stream_in_ready(stream_in_READY) 
//    );
//
//    axi_stream stream_axi(
//         .clk(clk),
//         .data(stream_out_DATA),
//         .dest(),
//         .keep(stream_out_KEEP),
//         .user(),
//         .last(stream_out_LAST),
//         .valid(stream_out_VALID),
//         .ready(stream_in_READY)
//         );

    /*
    ethernet_interface stream_mpi
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
        //stream_mpi = new();
        stream_in_READY = 1;
        #50
//        trans_num = 64'd10;
//        dst_rank = 16'd1;
//        src_rank = 8'd0;
//        size = 16'd2;
        while(done != 1) begin
            cont = 1;
            //ack = 1;
            //#10
            //ack = 0;
            //wait(ready_ack == 1)
            // AXI
            if(curr_header_type == 0) begin
                $display("WRITING AXI");
                stream_mpi.write(
                                .data(stream_in_DATA),
                                .keep(stream_in_KEEP),
                                .last(stream_in_LAST)
                );
            end
            // ETH
            else if(curr_header_type == 1) begin
                $display("WRITING ETH");
                // MAKE HEADER ONLY SEND AT BEGINNING (ONCE)
                stream_mpi.write_header_eth(
                                .mac_addr_dst(mac_dst),
                                .mac_addr_src(mac_src),
                                .dst_rank(dst)
                );
                while(cont == 1) begin
                    stream_mpi.write(
                                    .data(stream_in_DATA),
                                    .keep(stream_in_KEEP),
                                    .last(stream_in_LAST)
                    
                    );
                    if(stream_in_LAST == 1) begin
                        cont = 0;
                    end
                end
            end
            // MPI
            else if(curr_header_type == 2) begin
                $display("WRITING MPI");
                stream_mpi.mpi_send_header(
                                        .dst_rank(dst_rank),
                                        .src_rank(src_rank),
                                        .size(size),
                                        .mac_addr_dst(mac_dst),
                                        .mac_addr_src(mac_src),
                                        .ip_addr_dst(ip_dst),
                                        .ip_addr_src(ip_src)
                                );
                while(cont == 1) begin
                    stream_mpi.write(
                                .data(stream_in_DATA),
                                .keep(stream_in_KEEP),
                                .last(stream_in_LAST)
                                );
                    if(stream_in_LAST == 1) begin
                        cont = 0;
                    end
                end
                stream_mpi.mpi_send_wait_for_done(
                                        .dst_rank(dst_rank),
                                        .src_rank(src_rank),
                                        .mac_addr_dst(mac_dst),
                                        .mac_addr_src(mac_src),
                                        .ip_addr_dst(ip_dst),
                                        .ip_addr_src(ip_src)
                );
            end
        end
    end

endmodule
