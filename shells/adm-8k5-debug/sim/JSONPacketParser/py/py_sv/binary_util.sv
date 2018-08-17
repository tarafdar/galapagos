`timescale 1 ns/ 1ps

`include "../../svtb/mpi.sv"
`include "../../svtb/utility.sv"

`define SEEK_SET 0
`define SEEK_CUR 1
`define SEEK_END 2

`define OFFSET 8

`define META_ADDR_START 0
`define META_ADDR_END 'h40

`define HEAD_START_ADDR_INDEX 0
`define HEAD_END_ADDR_INDEX   1
`define DATA_START_ADDR_INDEX 2
`define DATA_END_ADDR_INDEX   3
`define WAIT_START_ADDR_INDEX 4
`define WAIT_END_ADDR_INDEX   5

`define RAW_AXI  0
`define ETHERNET 1
`define MPI      2

task automatic open_file(ref int f_id, ref string f_rel_path);
    $display("Opening file...");
    f_id = $fopen(f_rel_path, "rb");
endtask

task automatic close_file(ref int f_id);
    $display("Closing file...");
    $fclose(f_id);
endtask

module bin_stream(
    //input reg [0:0] ack,
    //output reg [0:0] ready_ack,
    input clk,
    // payload
    output reg [63:0] pay_data_out,
    output reg [7:0] pay_keep_out,
    output reg [0:0] pay_last_out,
    // header info
    output reg [47:0] mac_src,
    output reg [47:0] mac_dst,
    output reg [15:0] dst,
    output reg [15:0] dst_rank,
    output reg [7:0] src_rank,
    output reg [7:0] packet_type,
    output reg [31:0] size,
    output reg [7:0] tag,
    output reg [31:0] ip_dst,
    output reg [31:0] ip_src,
    output reg [0:0] last,
    //
    output reg [63:0] curr_header_type,
    output reg [0:0] done
);

    string f_rel_path = "sample_out.bin";
    int f_id, r_status, s_status;
    longint curr_header_pos, curr_data_pos, curr_data_end_pos;
    longint f_size, num_packets, curr_data;
    reg [63:0] pay_data_in;
    reg [7:0] pay_keep_in;
    reg [0:0] pay_last_in;
    reg [7:0] f_data[8];
    reg [63:0] addr[6];
    reg [0:0] ready;
    reg [0:0] valid;

    mpi_interface stream_mpi_tb(
        .clk(clk),
        .stream_out_data(pay_data_out),
        .stream_out_keep(pay_keep_out),
        .stream_out_last(pay_last_out),
        .stream_out_valid(valid),
        .stream_out_ready(ready),
        .stream_in_data(pay_data_in),
        .stream_in_keep(pay_keep_in),
        .stream_in_last(pay_last_in),
        .stream_in_valid(1),
        .stream_in_ready(ready)
    );

    /**
     *  FREAD TASKS
     */
    
    task bin_init();
        r_status = $fread(f_data, f_id);
        f_size = {>>{f_data}};

        r_status = $fread(f_data, f_id);
        num_packets = {>>{f_data}};
    endtask

    task gen_head();
        r_status = $fread(f_data, f_id);
        curr_header_type = {>>{f_data}};

        r_status = $fread(f_data, f_id);
        curr_data_pos = {>>{f_data}};

        r_status = $fread(f_data, f_id);
        curr_data_end_pos = {>>{f_data}};
    endtask

    task eth_head();
        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        mac_src = curr_data[47:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        mac_dst = curr_data[47:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        dst = curr_data[15:0];
    endtask

    task mpi_head();
        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        dst_rank = curr_data[15:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        src_rank = curr_data[7:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        packet_type = curr_data[7:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        size = curr_data[31:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        tag = curr_data[7:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        mac_dst = curr_data[47:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        mac_src = curr_data[47:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        ip_dst = curr_data[31:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        ip_src = curr_data[31:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        last = curr_data[0:0];
    endtask

    task pay_flit();
        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        pay_data_in = curr_data[63:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        pay_keep_in = curr_data[7:0];

        r_status = $fread(f_data, f_id);
        curr_data = {>>{f_data}};
        pay_last_in = curr_data[0:0];
    endtask

    /**
     *  INIT BEGIN
     */

    initial begin
        #30
        done = 0;
        ready = 1;
        open_file(f_id, f_rel_path);
        
        bin_init();
        curr_data_pos = $ftell(f_id);

        // METADATA
        for(int i = 0; curr_data_pos < `META_ADDR_END; ++i) begin
            r_status = $fread(f_data, f_id);
            addr[i] = {>>{f_data}};
            curr_data_pos = $ftell(f_id);
        end

        // DATA & HEADERS
        s_status = $fseek(f_id, addr[`HEAD_START_ADDR_INDEX], `SEEK_SET);
        curr_header_pos = $ftell(f_id);

        while(curr_header_pos < addr[`HEAD_END_ADDR_INDEX]) begin
            gen_head();

            if(curr_header_type == `ETHERNET) begin
                eth_head();
                stream_mpi_tb.write_header_eth(
                    .mac_addr_dst(mac_dst),
                    .mac_addr_src(mac_src),
                    .dst(dst)
                );
            end

            else if(curr_header_type == `MPI) begin
                mpi_head();
                stream_mpi_tb.mpi_send_header(
                    .dst_rank(dst_rank), 
                    .src_rank(src_rank), 
                    .size(size),
                    .mac_addr_dst(mac_dst),
                    .mac_addr_src(mac_src),
                    .ip_addr_dst(ip_dst),
                    .ip_addr_src(ip_src)
                );
            end

            curr_header_pos = $ftell(f_id); // NEXT HEADER
            s_status = $fseek(f_id, curr_data_pos, `SEEK_SET);

            while(curr_data_pos < curr_data_end_pos) begin
                pay_flit();
                stream_mpi_tb.write(
                    .data(pay_data_in),
                    .keep(pay_keep_in),
                    .last(pay_last_in)
                );
                curr_data_pos = $ftell(f_id);
            end

            s_status = $fseek(f_id, curr_header_pos, `SEEK_SET);
        end
        done = 1;
        close_file(f_id);
    end

endmodule