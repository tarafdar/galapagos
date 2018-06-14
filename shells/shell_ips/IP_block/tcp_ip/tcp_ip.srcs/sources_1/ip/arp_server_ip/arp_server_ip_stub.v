// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr  9 18:02:58 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/arp_server_ip/arp_server_ip_stub.v
// Design      : arp_server_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "arp_server_top,Vivado 2017.4" *)
module arp_server_ip(myMacAddress_V, myIpAddress_V, 
  arpDataIn_TVALID, arpDataIn_TREADY, arpDataIn_TDATA, arpDataIn_TKEEP, arpDataIn_TLAST, 
  arpDataOut_TVALID, arpDataOut_TREADY, arpDataOut_TDATA, arpDataOut_TKEEP, 
  arpDataOut_TLAST, macIpEncode_req_TVALID, macIpEncode_req_TREADY, 
  macIpEncode_req_TDATA, macIpEncode_rsp_TVALID, macIpEncode_rsp_TREADY, 
  macIpEncode_rsp_TDATA, macLookup_req_TVALID, macLookup_req_TREADY, macLookup_req_TDATA, 
  macLookup_resp_TVALID, macLookup_resp_TREADY, macLookup_resp_TDATA, 
  macUpdate_req_TVALID, macUpdate_req_TREADY, macUpdate_req_TDATA, macUpdate_resp_TVALID, 
  macUpdate_resp_TREADY, macUpdate_resp_TDATA, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="myMacAddress_V[47:0],myIpAddress_V[31:0],arpDataIn_TVALID,arpDataIn_TREADY,arpDataIn_TDATA[63:0],arpDataIn_TKEEP[7:0],arpDataIn_TLAST[0:0],arpDataOut_TVALID,arpDataOut_TREADY,arpDataOut_TDATA[63:0],arpDataOut_TKEEP[7:0],arpDataOut_TLAST[0:0],macIpEncode_req_TVALID,macIpEncode_req_TREADY,macIpEncode_req_TDATA[31:0],macIpEncode_rsp_TVALID,macIpEncode_rsp_TREADY,macIpEncode_rsp_TDATA[55:0],macLookup_req_TVALID,macLookup_req_TREADY,macLookup_req_TDATA[39:0],macLookup_resp_TVALID,macLookup_resp_TREADY,macLookup_resp_TDATA[55:0],macUpdate_req_TVALID,macUpdate_req_TREADY,macUpdate_req_TDATA[87:0],macUpdate_resp_TVALID,macUpdate_resp_TREADY,macUpdate_resp_TDATA[55:0],aclk,aresetn" */;
  input [47:0]myMacAddress_V;
  input [31:0]myIpAddress_V;
  input arpDataIn_TVALID;
  output arpDataIn_TREADY;
  input [63:0]arpDataIn_TDATA;
  input [7:0]arpDataIn_TKEEP;
  input [0:0]arpDataIn_TLAST;
  output arpDataOut_TVALID;
  input arpDataOut_TREADY;
  output [63:0]arpDataOut_TDATA;
  output [7:0]arpDataOut_TKEEP;
  output [0:0]arpDataOut_TLAST;
  input macIpEncode_req_TVALID;
  output macIpEncode_req_TREADY;
  input [31:0]macIpEncode_req_TDATA;
  output macIpEncode_rsp_TVALID;
  input macIpEncode_rsp_TREADY;
  output [55:0]macIpEncode_rsp_TDATA;
  output macLookup_req_TVALID;
  input macLookup_req_TREADY;
  output [39:0]macLookup_req_TDATA;
  input macLookup_resp_TVALID;
  output macLookup_resp_TREADY;
  input [55:0]macLookup_resp_TDATA;
  output macUpdate_req_TVALID;
  input macUpdate_req_TREADY;
  output [87:0]macUpdate_req_TDATA;
  input macUpdate_resp_TVALID;
  output macUpdate_resp_TREADY;
  input [55:0]macUpdate_resp_TDATA;
  input aclk;
  input aresetn;
endmodule
