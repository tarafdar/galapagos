`timescale 1 ns/ 1ps

module mpi_eth_stimulate
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


    reg [15:0] dst_rank;
    reg [7:0] src_rank;
    reg [31:0] size;
    reg [63:0] trans_num;
    reg [63:0] data_in_reverse;

    bit [63:0] wait_sequence;
    initial begin
        stream_in_READY = 1;
        #50
        trans_num = 64'd10;
        dst_rank = 8'd0;
        src_rank = 8'd1;
        size = 16'd2;
        
        ethernet_header(.mac_addr_dst(MAC_ADDR_FPGA),  
                        .mac_addr_src(MAC_ADDR_STIM), 
                        .dst(dst_rank)
                    );
        mpi_send_envelope_header_and_wait(.dst_rank(dst_rank),
                                          .src_rank(src_rank),
                                          .size(size)
                                      );
        //mpi_send_envelope_header_and_wait(trans_num, dst_rank, src_rank, size); //size is num of float
        size = size << 2;
        ethernet_header(.mac_addr_dst(MAC_ADDR_FPGA),  
                        .mac_addr_src(MAC_ADDR_STIM), 
                        .dst(dst_rank)
                    );
        mpi_send_data_header(.dst_rank(dst_rank), 
                             .src_rank(src_rank), 
                             .size(size)
                             );

        
        for(int i = 0; i< 20; i++) 
            gen_transaction(.data(64'd0),
                            .keep(8'hff),
                            .last(1'b0));
        gen_transaction(.data(64'd0),
                        .keep(8'hff),
                        .last(1'b1));

        mpi_send_wait_for_done();
    end

    `include "mpi.sv"
    `include "ethernet.sv"
    `include "utility.sv"

//task mpi_recv(input [63:0] num, input [15:0] dst_rank, input [7:0] src_rank, input [15:0] size);
//
//    waitForEthernetHeader();
//    //wait for the envelope  
//    wait(data_in[31:24] == C_SYNC_ENV_PACKET); 
//    //send clear to send
//    mpi_header(num, src_rank, dst_rank, C_CLR2SND_PACKET, size, 16'd0, 0);
//    gen_transaction(num, 64'd0, 8'hff, 1'b1);
//    waitForEthernetHeader();
//    wait(data_in[31:24] == C_DATA_PACKET); 
//    wait(last_in);
//    mpi_header(num, dst_rank, src_rank, C_DATA_TRANSMISSION_DONE, 16'd0, 16'd0, 0);
//    gen_transaction(num, 64'd0, 8'hff, 1'b1);
//
//endtask
//
//task mpi_send_wait_for_done();
//    
//    waitForEthernetHeader();
//    wait(data_in[31:24] == C_DATA_TRANSMISSION_DONE); 
//
//endtask
//
//
//task mpi_send_data_header(input [63:0] num, input [15:0] dst_rank, input [7:0] src_rank, input [15:0] size);
//    mpi_header(num, dst_rank, src_rank, C_DATA_PACKET, size, 16'd0, 0);
//endtask
//
//
//task mpi_send_envelope_header_and_wait(input [63:0] num, input [15:0] dst_rank, input [7:0] src_rank, input [15:0] size);
//
//    mpi_header(num, dst_rank, src_rank, C_SYNC_ENV_PACKET, size, 16'd0, 0);
//    gen_transaction(num, 64'd0, 8'hff, 1'b1);
//
//    waitForEthernetHeader();
//    //wait for the right clr 2 send  
//    wait(data_in[31:24] == C_CLR2SND_PACKET); 
//endtask
//
//
//task waitForEthernetHeader();
//    
//    wait_sequence = reverseEndian64_data({MAC_ADDR_STIM, MAC_ADDR_FPGA[47:32]});
//    //wait for the right ethernet header
//    wait(data_in == wait_sequence); 
//    //wait for the right ethernet header
//    wait_sequence = reverseEndian64_data({MAC_ADDR_FPGA[31:0],16'h7400,src_rank,8'hxx}); 
//    wait(data_in == wait_sequence); 
//
//
//endtask
//
//
//
//task mpi_header(input [63:0] num, input [15:0] dst_rank, input [7:0] src_rank, input [7:0] packet_type, input [15:0] size, input [7:0] tag, input last_task);
//    ethernet_header(num, dst_rank);
//    data = {8'd1, tag , size ,packet_type, src_rank, dst_rank};
//    keep = 8'hff;
//    last = last_task;
//    wait(ready);
//    valid = 1;
//    #10
//    valid = 0;
//    last = 0;
//    $display("MPI Header %h, Destination RANK: %h, Source RANK %h, Type %h", data, dst_rank, src_rank, packet_type);
//
//
//
//endtask
//
//
//task ethernet_header(input [63:0] num, input [7:0] dest);
//    //send first flit of ethernet header
//    data = reverseEndian64_data({MAC_ADDR_FPGA, MAC_ADDR_STIM[47:32]});
//    keep = 8'hff;
//    last = 0;
//    wait(ready);
//    valid = 1;
//    #10
//    data = reverseEndian64_data({MAC_ADDR_STIM[31:0], 16'h7400, dest, 8'd0});
//    keep = 8'hff;
//    last = 0;
//    wait(ready);
//    valid = 1;
//    #10
//    valid = 0;
//  $display("Transaction %d, dest %h", num, dest);
//endtask
//
//
//
//task gen_transaction(input [63:0] num, input [63:0] data_task, input [7:0] keep_task, input last_task);
//
//  
//  data = data_task;
//  keep = keep_task;
//  last = last_task;
//  wait(ready);
//  valid = 1;
//  #10
//  valid = 0;
//  $display("Transaction %d, Data: %h, keep %h, last %b", num, data_task, keep_task, last_task);
//  
//endtask
//
//
//function bit [63:0] reverseEndian64_data (input [63:0] data_task);
//    bit [63:0] temp;
//    temp = (data_task & 64'h00000000FFFFFFFF) << 32 | (data_task & 64'hFFFFFFFF00000000) >> 32;
//    temp = (temp & 64'h0000FFFF0000FFFF) << 16 | (temp & 64'hFFFF0000FFFF0000) >> 16;
//    reverseEndian64_data = (temp & 64'h00FF00FF00FF00FF) << 8  | (temp & 64'hFF00FF00FF00FF00) >> 8;
//endfunction
//
//function bit[7:0] reverseEndian64_keep(input [7:0] keep_task);
//    bit [7:0] temp ;
//    temp = (keep_task & 8'hF0) >> 4 | (keep_task & 8'h0F) << 4;
//    temp = (temp & 8'hCC) >> 2 | (temp & 8'h33) << 2;
//    reverseEndian64_keep = (temp & 8'hAA) >> 1 | (temp & 8'h55) << 1;
//endfunction

endmodule
