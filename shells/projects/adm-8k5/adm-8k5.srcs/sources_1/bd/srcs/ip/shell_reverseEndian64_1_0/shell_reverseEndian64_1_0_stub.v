// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu May  3 12:10:54 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub -rename_top shell_reverseEndian64_1_0 -prefix
//               shell_reverseEndian64_1_0_ shell_reverseEndian64_0_0_stub.v
// Design      : shell_reverseEndian64_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "reverseEndian64,Vivado 2018.1" *)
module shell_reverseEndian64_1_0(ap_clk, ap_rst_n, stream_in_TVALID, 
  stream_in_TREADY, stream_in_TDATA, stream_in_TKEEP, stream_in_TLAST, stream_out_TVALID, 
  stream_out_TREADY, stream_out_TDATA, stream_out_TKEEP, stream_out_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,stream_in_TVALID,stream_in_TREADY,stream_in_TDATA[63:0],stream_in_TKEEP[7:0],stream_in_TLAST[0:0],stream_out_TVALID,stream_out_TREADY,stream_out_TDATA[63:0],stream_out_TKEEP[7:0],stream_out_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input stream_in_TVALID;
  output stream_in_TREADY;
  input [63:0]stream_in_TDATA;
  input [7:0]stream_in_TKEEP;
  input [0:0]stream_in_TLAST;
  output stream_out_TVALID;
  input stream_out_TREADY;
  output [63:0]stream_out_TDATA;
  output [7:0]stream_out_TKEEP;
  output [0:0]stream_out_TLAST;
endmodule
