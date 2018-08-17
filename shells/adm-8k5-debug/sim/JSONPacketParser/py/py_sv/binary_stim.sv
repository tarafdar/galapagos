`timescale 1 ns/ 1ps

`include "binary_util.sv"
//`include "../../svtb/tb_mpi_eth.sv"

module bin_tb();
    
    reg clk;
    reg resetn;

    //reg [0:0] ack;
    //reg [0:0] ready_ack;

    //from stimulus
    reg [7:0] stream_in_KEEP;
    reg stream_in_LAST;
    reg [63:0] stream_in_DATA;
    reg stream_in_VALID;
    reg stream_in_READY;
 
   //from dut 
    reg [7:0] stream_out_KEEP;
    reg stream_out_LAST;
    reg [63:0] stream_out_DATA;
    reg stream_out_VALID;
    reg stream_out_READY;

    //header info
    reg [47:0] mac_src;
    reg [47:0] mac_dst;
    reg [15:0] dst;
    reg [15:0] dst_rank;
    reg [7:0] src_rank;
    reg [7:0] packet_type;
    reg [31:0] size;
    reg [7:0] tag;
    reg [31:0] ip_dst;
    reg [31:0] ip_src;
    reg [0:0] last;

    //
    reg [63:0] curr_header_type;
    reg [0:0] done;

    reg mem_sys_clk_p;
    reg mem_sys_clk_n;
    
    always #10 clk = ~clk;
    always #5 mem_sys_clk_p =~mem_sys_clk_p;
    always #5 mem_sys_clk_n =~mem_sys_clk_n;
    
    initial begin
        resetn = 0;
        clk = 0;
        mem_sys_clk_p = 0;
        mem_sys_clk_n = 1;
        #30 resetn = 1;
    end
    
    // binary_util.sv
    bin_stream stream_binary(
        //.ack(ack),
        //.ready_ack(ready_ack),
        .clk(clk),
        .pay_data_out(stream_out_DATA),
        .pay_keep_out(stream_out_KEEP),
        .pay_last_out(stream_out_LAST),
        .mac_src(mac_src),
        .mac_dst(mac_dst),
        .dst(dst),
        .dst_rank(dst_rank),
        .src_rank(src_rank),
        .packet_type(packet_type),
        .size(size),
        .tag(tag),
        .ip_dst(ip_dst),
        .ip_src(ip_src),
        .last(last),
        .curr_header_type(curr_header_type),
        .done(done)
    );

    /*
    //choose stimulation
    mpi_eth_stimulate stimulus(
        .clk(clk),
        .stream_out_DATA(stream_in_DATA), 
        .stream_out_KEEP(stream_in_KEEP), 
        .stream_out_LAST(stream_in_LAST), 
        .stream_out_VALID(stream_in_VALID), 
        .stream_out_READY(stream_in_READY),
        .stream_in_DATA(stream_out_DATA),
        .stream_in_KEEP(stream_out_KEEP),
        .stream_in_LAST(stream_out_LAST),
        .stream_in_VALID(stream_out_VALID), 
        .stream_in_READY(stream_out_READY),
        //header info
        .mac_src(mac_src),
        .mac_dst(mac_dst),
        .dst(dst),
        .dst_rank(dst_rank),
        .src_rank(src_rank),
        .packet_type(packet_type),
        .size(size),
        .tag(tag),
        .ip_dst(ip_dst),
        .ip_src(ip_src),
        .last(last),
        .curr_header_type(curr_header_type),
        .done(done)
        //.ack(ack),
        //.ready_ack(ready_ack)
    );
    */
/*
   top_sim dut(
        .clk(clk),
        .mem_sys_clk_p(mem_sys_clk_p),
        .mem_sys_clk_n(mem_sys_clk_n),
        .resetn(resetn),
        .keep(stream_in_KEEP),
        .last(stream_in_LAST),
        .data(stream_in_DATA),
        .valid(stream_in_VALID),
        .ready(stream_in_READY),
        .keep_out(stream_out_KEEP),
        .last_out(stream_out_LAST),
        .data_out(stream_out_DATA),
        .valid_out(stream_out_VALID),
        .ready_out(stream_out_READY)
    );
*/

endmodule
