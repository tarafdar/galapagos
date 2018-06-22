// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module fnr_top (
stream_in_V_TVALID,
stream_in_V_TREADY,
stream_in_V_TDATA,
stream_in_V_TDEST,
stream_in_V_TKEEP,
stream_in_V_TLAST,
stream_in_V_TID,
stream_in_V_TUSER,
stream_out_V_TVALID,
stream_out_V_TREADY,
stream_out_V_TDATA,
stream_out_V_TLAST,
stream_out_V_TKEEP,
stream_out_V_TDEST,
aresetn,
aclk
);

parameter RESET_ACTIVE_LOW = 1;

input stream_in_V_TVALID ;
output stream_in_V_TREADY ;
input [64 - 1:0] stream_in_V_TDATA ;
input [8 - 1:0] stream_in_V_TDEST ;
input [8 - 1:0] stream_in_V_TKEEP ;
input [1 - 1:0] stream_in_V_TLAST ;
input [8 - 1:0] stream_in_V_TID ;
input [40 - 1:0] stream_in_V_TUSER ;


output stream_out_V_TVALID ;
input stream_out_V_TREADY ;
output [64 - 1:0] stream_out_V_TDATA ;
output [1 - 1:0] stream_out_V_TLAST ;
output [8 - 1:0] stream_out_V_TKEEP ;
output [8 - 1:0] stream_out_V_TDEST ;

input aresetn ;

input aclk ;


wire stream_in_V_TVALID;
wire stream_in_V_TREADY;
wire [64 - 1:0] stream_in_V_TDATA;
wire [8 - 1:0] stream_in_V_TDEST;
wire [8 - 1:0] stream_in_V_TKEEP;
wire [1 - 1:0] stream_in_V_TLAST;
wire [8 - 1:0] stream_in_V_TID;
wire [40 - 1:0] stream_in_V_TUSER;


wire stream_out_V_TVALID;
wire stream_out_V_TREADY;
wire [64 - 1:0] stream_out_V_TDATA;
wire [1 - 1:0] stream_out_V_TLAST;
wire [8 - 1:0] stream_out_V_TKEEP;
wire [8 - 1:0] stream_out_V_TDEST;

wire aresetn;


wire [129 - 1:0] sig_FNR_stream_in_V_dout;
wire sig_FNR_stream_in_V_empty_n;
wire sig_FNR_stream_in_V_read;

wire [81 - 1:0] sig_FNR_stream_out_V_din;
wire sig_FNR_stream_out_V_full_n;
wire sig_FNR_stream_out_V_write;

wire sig_FNR_ap_rst;



FNR FNR_U(
    .stream_in_V_dout(sig_FNR_stream_in_V_dout),
    .stream_in_V_empty_n(sig_FNR_stream_in_V_empty_n),
    .stream_in_V_read(sig_FNR_stream_in_V_read),
    .stream_out_V_din(sig_FNR_stream_out_V_din),
    .stream_out_V_full_n(sig_FNR_stream_out_V_full_n),
    .stream_out_V_write(sig_FNR_stream_out_V_write),
    .ap_rst(sig_FNR_ap_rst),
    .ap_clk(aclk)
);

FNR_stream_in_V_if FNR_stream_in_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_in_V_dout(sig_FNR_stream_in_V_dout),
    .stream_in_V_empty_n(sig_FNR_stream_in_V_empty_n),
    .stream_in_V_read(sig_FNR_stream_in_V_read),
    .TVALID(stream_in_V_TVALID),
    .TREADY(stream_in_V_TREADY),
    .TDATA(stream_in_V_TDATA),
    .TDEST(stream_in_V_TDEST),
    .TKEEP(stream_in_V_TKEEP),
    .TLAST(stream_in_V_TLAST),
    .TID(stream_in_V_TID),
    .TUSER(stream_in_V_TUSER));

FNR_stream_out_V_if FNR_stream_out_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_out_V_din(sig_FNR_stream_out_V_din),
    .stream_out_V_full_n(sig_FNR_stream_out_V_full_n),
    .stream_out_V_write(sig_FNR_stream_out_V_write),
    .TVALID(stream_out_V_TVALID),
    .TREADY(stream_out_V_TREADY),
    .TDATA(stream_out_V_TDATA),
    .TLAST(stream_out_V_TLAST),
    .TKEEP(stream_out_V_TKEEP),
    .TDEST(stream_out_V_TDEST));

FNR_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_FNR_ap_rst),
    .din(aresetn));

endmodule
