// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr  9 18:03:25 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/udp_0/udp_0_stub.v
// Design      : udp_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "udp_top,Vivado 2017.4" *)
module udp_0(confirmPortStatus_TVALID, 
  confirmPortStatus_TREADY, confirmPortStatus_TDATA, inputPathInData_TVALID, 
  inputPathInData_TREADY, inputPathInData_TDATA, inputPathInData_TKEEP, 
  inputPathInData_TLAST, inputPathOutputMetadata_TVALID, 
  inputPathOutputMetadata_TREADY, inputPathOutputMetadata_TDATA, 
  inputPathPortUnreachable_TVALID, inputPathPortUnreachable_TREADY, 
  inputPathPortUnreachable_TDATA, inputPathPortUnreachable_TKEEP, 
  inputPathPortUnreachable_TLAST, inputpathOutData_TVALID, inputpathOutData_TREADY, 
  inputpathOutData_TDATA, inputpathOutData_TKEEP, inputpathOutData_TLAST, 
  openPort_TVALID, openPort_TREADY, openPort_TDATA, outputPathInData_TVALID, 
  outputPathInData_TREADY, outputPathInData_TDATA, outputPathInData_TKEEP, 
  outputPathInData_TLAST, outputPathInMetadata_TVALID, outputPathInMetadata_TREADY, 
  outputPathInMetadata_TDATA, outputPathOutData_TVALID, outputPathOutData_TREADY, 
  outputPathOutData_TDATA, outputPathOutData_TKEEP, outputPathOutData_TLAST, 
  outputpathInLength_TVALID, outputpathInLength_TREADY, outputpathInLength_TDATA, 
  portRelease_TVALID, portRelease_TREADY, portRelease_TDATA, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="confirmPortStatus_TVALID,confirmPortStatus_TREADY,confirmPortStatus_TDATA[7:0],inputPathInData_TVALID,inputPathInData_TREADY,inputPathInData_TDATA[63:0],inputPathInData_TKEEP[7:0],inputPathInData_TLAST[0:0],inputPathOutputMetadata_TVALID,inputPathOutputMetadata_TREADY,inputPathOutputMetadata_TDATA[95:0],inputPathPortUnreachable_TVALID,inputPathPortUnreachable_TREADY,inputPathPortUnreachable_TDATA[63:0],inputPathPortUnreachable_TKEEP[7:0],inputPathPortUnreachable_TLAST[0:0],inputpathOutData_TVALID,inputpathOutData_TREADY,inputpathOutData_TDATA[63:0],inputpathOutData_TKEEP[7:0],inputpathOutData_TLAST[0:0],openPort_TVALID,openPort_TREADY,openPort_TDATA[15:0],outputPathInData_TVALID,outputPathInData_TREADY,outputPathInData_TDATA[63:0],outputPathInData_TKEEP[7:0],outputPathInData_TLAST[0:0],outputPathInMetadata_TVALID,outputPathInMetadata_TREADY,outputPathInMetadata_TDATA[95:0],outputPathOutData_TVALID,outputPathOutData_TREADY,outputPathOutData_TDATA[63:0],outputPathOutData_TKEEP[7:0],outputPathOutData_TLAST[0:0],outputpathInLength_TVALID,outputpathInLength_TREADY,outputpathInLength_TDATA[15:0],portRelease_TVALID,portRelease_TREADY,portRelease_TDATA[15:0],aclk,aresetn" */;
  output confirmPortStatus_TVALID;
  input confirmPortStatus_TREADY;
  output [7:0]confirmPortStatus_TDATA;
  input inputPathInData_TVALID;
  output inputPathInData_TREADY;
  input [63:0]inputPathInData_TDATA;
  input [7:0]inputPathInData_TKEEP;
  input [0:0]inputPathInData_TLAST;
  output inputPathOutputMetadata_TVALID;
  input inputPathOutputMetadata_TREADY;
  output [95:0]inputPathOutputMetadata_TDATA;
  output inputPathPortUnreachable_TVALID;
  input inputPathPortUnreachable_TREADY;
  output [63:0]inputPathPortUnreachable_TDATA;
  output [7:0]inputPathPortUnreachable_TKEEP;
  output [0:0]inputPathPortUnreachable_TLAST;
  output inputpathOutData_TVALID;
  input inputpathOutData_TREADY;
  output [63:0]inputpathOutData_TDATA;
  output [7:0]inputpathOutData_TKEEP;
  output [0:0]inputpathOutData_TLAST;
  input openPort_TVALID;
  output openPort_TREADY;
  input [15:0]openPort_TDATA;
  input outputPathInData_TVALID;
  output outputPathInData_TREADY;
  input [63:0]outputPathInData_TDATA;
  input [7:0]outputPathInData_TKEEP;
  input [0:0]outputPathInData_TLAST;
  input outputPathInMetadata_TVALID;
  output outputPathInMetadata_TREADY;
  input [95:0]outputPathInMetadata_TDATA;
  output outputPathOutData_TVALID;
  input outputPathOutData_TREADY;
  output [63:0]outputPathOutData_TDATA;
  output [7:0]outputPathOutData_TKEEP;
  output [0:0]outputPathOutData_TLAST;
  input outputpathInLength_TVALID;
  output outputpathInLength_TREADY;
  input [15:0]outputpathInLength_TDATA;
  input portRelease_TVALID;
  output portRelease_TREADY;
  input [15:0]portRelease_TDATA;
  input aclk;
  input aresetn;
endmodule
