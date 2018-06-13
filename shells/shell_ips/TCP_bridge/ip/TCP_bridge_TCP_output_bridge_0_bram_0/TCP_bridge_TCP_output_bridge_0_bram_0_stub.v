// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Sun Jun 10 23:35:49 2018
// Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/eskand38/IP_package_test/project_1/project_1.srcs/sources_1/bd/TCP_bridge/ip/TCP_bridge_TCP_output_bridge_0_bram_0/TCP_bridge_TCP_output_bridge_0_bram_0_stub.v
// Design      : TCP_bridge_TCP_output_bridge_0_bram_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.1" *)
module TCP_bridge_TCP_output_bridge_0_bram_0(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[31:0],douta[31:0],clkb,enb,web[0:0],addrb[7:0],dinb[31:0],doutb[31:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [7:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
endmodule
