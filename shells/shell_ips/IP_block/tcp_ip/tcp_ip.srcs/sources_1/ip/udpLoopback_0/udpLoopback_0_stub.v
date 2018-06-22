// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 23 14:58:19 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/hls/tcp_test/tcp_ip/scripts/build/proj2017/tcp_ip.srcs/sources_1/ip/udpLoopback_0/udpLoopback_0_stub.v
// Design      : udpLoopback_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "udploopback_top,Vivado 2017.4" *)
module udpLoopback_0(lbPortOpenReplyIn_TVALID, 
  lbPortOpenReplyIn_TREADY, lbPortOpenReplyIn_TDATA, lbRequestPortOpenOut_TVALID, 
  lbRequestPortOpenOut_TREADY, lbRequestPortOpenOut_TDATA, lbRxDataIn_TVALID, 
  lbRxDataIn_TREADY, lbRxDataIn_TDATA, lbRxDataIn_TKEEP, lbRxDataIn_TLAST, 
  lbRxMetadataIn_TVALID, lbRxMetadataIn_TREADY, lbRxMetadataIn_TDATA, lbTxDataOut_TVALID, 
  lbTxDataOut_TREADY, lbTxDataOut_TDATA, lbTxDataOut_TKEEP, lbTxDataOut_TLAST, 
  lbTxLengthOut_TVALID, lbTxLengthOut_TREADY, lbTxLengthOut_TDATA, 
  lbTxMetadataOut_TVALID, lbTxMetadataOut_TREADY, lbTxMetadataOut_TDATA, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="lbPortOpenReplyIn_TVALID,lbPortOpenReplyIn_TREADY,lbPortOpenReplyIn_TDATA[7:0],lbRequestPortOpenOut_TVALID,lbRequestPortOpenOut_TREADY,lbRequestPortOpenOut_TDATA[15:0],lbRxDataIn_TVALID,lbRxDataIn_TREADY,lbRxDataIn_TDATA[63:0],lbRxDataIn_TKEEP[7:0],lbRxDataIn_TLAST[0:0],lbRxMetadataIn_TVALID,lbRxMetadataIn_TREADY,lbRxMetadataIn_TDATA[95:0],lbTxDataOut_TVALID,lbTxDataOut_TREADY,lbTxDataOut_TDATA[63:0],lbTxDataOut_TKEEP[7:0],lbTxDataOut_TLAST[0:0],lbTxLengthOut_TVALID,lbTxLengthOut_TREADY,lbTxLengthOut_TDATA[15:0],lbTxMetadataOut_TVALID,lbTxMetadataOut_TREADY,lbTxMetadataOut_TDATA[95:0],aclk,aresetn" */;
  input lbPortOpenReplyIn_TVALID;
  output lbPortOpenReplyIn_TREADY;
  input [7:0]lbPortOpenReplyIn_TDATA;
  output lbRequestPortOpenOut_TVALID;
  input lbRequestPortOpenOut_TREADY;
  output [15:0]lbRequestPortOpenOut_TDATA;
  input lbRxDataIn_TVALID;
  output lbRxDataIn_TREADY;
  input [63:0]lbRxDataIn_TDATA;
  input [7:0]lbRxDataIn_TKEEP;
  input [0:0]lbRxDataIn_TLAST;
  input lbRxMetadataIn_TVALID;
  output lbRxMetadataIn_TREADY;
  input [95:0]lbRxMetadataIn_TDATA;
  output lbTxDataOut_TVALID;
  input lbTxDataOut_TREADY;
  output [63:0]lbTxDataOut_TDATA;
  output [7:0]lbTxDataOut_TKEEP;
  output [0:0]lbTxDataOut_TLAST;
  output lbTxLengthOut_TVALID;
  input lbTxLengthOut_TREADY;
  output [15:0]lbTxLengthOut_TDATA;
  output lbTxMetadataOut_TVALID;
  input lbTxMetadataOut_TREADY;
  output [95:0]lbTxMetadataOut_TDATA;
  input aclk;
  input aresetn;
endmodule
