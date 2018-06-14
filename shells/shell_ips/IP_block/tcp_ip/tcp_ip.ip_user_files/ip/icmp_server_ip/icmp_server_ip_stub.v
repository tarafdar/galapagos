// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr  9 18:03:02 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/icmp_server_ip/icmp_server_ip_stub.v
// Design      : icmp_server_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "icmp_server,Vivado 2017.4" *)
module icmp_server_ip(dataIn_TVALID, dataIn_TREADY, dataIn_TDATA, 
  dataIn_TKEEP, dataIn_TLAST, udpIn_TVALID, udpIn_TREADY, udpIn_TDATA, udpIn_TKEEP, 
  udpIn_TLAST, ttlIn_TVALID, ttlIn_TREADY, ttlIn_TDATA, ttlIn_TKEEP, ttlIn_TLAST, 
  dataOut_TVALID, dataOut_TREADY, dataOut_TDATA, dataOut_TKEEP, dataOut_TLAST, ap_clk, 
  ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="dataIn_TVALID,dataIn_TREADY,dataIn_TDATA[63:0],dataIn_TKEEP[7:0],dataIn_TLAST[0:0],udpIn_TVALID,udpIn_TREADY,udpIn_TDATA[63:0],udpIn_TKEEP[7:0],udpIn_TLAST[0:0],ttlIn_TVALID,ttlIn_TREADY,ttlIn_TDATA[63:0],ttlIn_TKEEP[7:0],ttlIn_TLAST[0:0],dataOut_TVALID,dataOut_TREADY,dataOut_TDATA[63:0],dataOut_TKEEP[7:0],dataOut_TLAST[0:0],ap_clk,ap_rst_n" */;
  input dataIn_TVALID;
  output dataIn_TREADY;
  input [63:0]dataIn_TDATA;
  input [7:0]dataIn_TKEEP;
  input [0:0]dataIn_TLAST;
  input udpIn_TVALID;
  output udpIn_TREADY;
  input [63:0]udpIn_TDATA;
  input [7:0]udpIn_TKEEP;
  input [0:0]udpIn_TLAST;
  input ttlIn_TVALID;
  output ttlIn_TREADY;
  input [63:0]ttlIn_TDATA;
  input [7:0]ttlIn_TKEEP;
  input [0:0]ttlIn_TLAST;
  output dataOut_TVALID;
  input dataOut_TREADY;
  output [63:0]dataOut_TDATA;
  output [7:0]dataOut_TKEEP;
  output [0:0]dataOut_TLAST;
  input ap_clk;
  input ap_rst_n;
endmodule
