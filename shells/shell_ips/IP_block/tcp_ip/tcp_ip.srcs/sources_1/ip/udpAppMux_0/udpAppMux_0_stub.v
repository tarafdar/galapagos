// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 23 19:12:48 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/7v3/tcp_ip/tcp_ip.srcs/sources_1/ip/udpAppMux_0/udpAppMux_0_stub.v
// Design      : udpAppMux_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "udpappmux_top,Vivado 2017.4" *)
module udpAppMux_0(portOpenReplyIn_TVALID, 
  portOpenReplyIn_TREADY, portOpenReplyIn_TDATA, portOpenReplyOutApp_TVALID, 
  portOpenReplyOutApp_TREADY, portOpenReplyOutApp_TDATA, portOpenReplyOutDhcp_TVALID, 
  portOpenReplyOutDhcp_TREADY, portOpenReplyOutDhcp_TDATA, requestPortOpenInApp_TVALID, 
  requestPortOpenInApp_TREADY, requestPortOpenInApp_TDATA, 
  requestPortOpenInDhcp_TVALID, requestPortOpenInDhcp_TREADY, 
  requestPortOpenInDhcp_TDATA, requestPortOpenOut_TVALID, requestPortOpenOut_TREADY, 
  requestPortOpenOut_TDATA, rxDataIn_TVALID, rxDataIn_TREADY, rxDataIn_TDATA, 
  rxDataIn_TKEEP, rxDataIn_TLAST, rxDataOutApp_TVALID, rxDataOutApp_TREADY, 
  rxDataOutApp_TDATA, rxDataOutApp_TKEEP, rxDataOutApp_TLAST, rxDataOutDhcp_TVALID, 
  rxDataOutDhcp_TREADY, rxDataOutDhcp_TDATA, rxDataOutDhcp_TKEEP, rxDataOutDhcp_TLAST, 
  rxMetadataIn_TVALID, rxMetadataIn_TREADY, rxMetadataIn_TDATA, rxMetadataOutApp_TVALID, 
  rxMetadataOutApp_TREADY, rxMetadataOutApp_TDATA, rxMetadataOutDhcp_TVALID, 
  rxMetadataOutDhcp_TREADY, rxMetadataOutDhcp_TDATA, txDataInApp_TVALID, 
  txDataInApp_TREADY, txDataInApp_TDATA, txDataInApp_TKEEP, txDataInApp_TLAST, 
  txDataInDhcp_TVALID, txDataInDhcp_TREADY, txDataInDhcp_TDATA, txDataInDhcp_TKEEP, 
  txDataInDhcp_TLAST, txDataOut_TVALID, txDataOut_TREADY, txDataOut_TDATA, txDataOut_TKEEP, 
  txDataOut_TLAST, txLengthInApp_TVALID, txLengthInApp_TREADY, txLengthInApp_TDATA, 
  txLengthInDhcp_TVALID, txLengthInDhcp_TREADY, txLengthInDhcp_TDATA, txLengthOut_TVALID, 
  txLengthOut_TREADY, txLengthOut_TDATA, txMetadataInApp_TVALID, txMetadataInApp_TREADY, 
  txMetadataInApp_TDATA, txMetadataInDhcp_TVALID, txMetadataInDhcp_TREADY, 
  txMetadataInDhcp_TDATA, txMetadataOut_TVALID, txMetadataOut_TREADY, 
  txMetadataOut_TDATA, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="portOpenReplyIn_TVALID,portOpenReplyIn_TREADY,portOpenReplyIn_TDATA[7:0],portOpenReplyOutApp_TVALID,portOpenReplyOutApp_TREADY,portOpenReplyOutApp_TDATA[7:0],portOpenReplyOutDhcp_TVALID,portOpenReplyOutDhcp_TREADY,portOpenReplyOutDhcp_TDATA[7:0],requestPortOpenInApp_TVALID,requestPortOpenInApp_TREADY,requestPortOpenInApp_TDATA[15:0],requestPortOpenInDhcp_TVALID,requestPortOpenInDhcp_TREADY,requestPortOpenInDhcp_TDATA[15:0],requestPortOpenOut_TVALID,requestPortOpenOut_TREADY,requestPortOpenOut_TDATA[15:0],rxDataIn_TVALID,rxDataIn_TREADY,rxDataIn_TDATA[63:0],rxDataIn_TKEEP[7:0],rxDataIn_TLAST[0:0],rxDataOutApp_TVALID,rxDataOutApp_TREADY,rxDataOutApp_TDATA[63:0],rxDataOutApp_TKEEP[7:0],rxDataOutApp_TLAST[0:0],rxDataOutDhcp_TVALID,rxDataOutDhcp_TREADY,rxDataOutDhcp_TDATA[63:0],rxDataOutDhcp_TKEEP[7:0],rxDataOutDhcp_TLAST[0:0],rxMetadataIn_TVALID,rxMetadataIn_TREADY,rxMetadataIn_TDATA[95:0],rxMetadataOutApp_TVALID,rxMetadataOutApp_TREADY,rxMetadataOutApp_TDATA[95:0],rxMetadataOutDhcp_TVALID,rxMetadataOutDhcp_TREADY,rxMetadataOutDhcp_TDATA[95:0],txDataInApp_TVALID,txDataInApp_TREADY,txDataInApp_TDATA[63:0],txDataInApp_TKEEP[7:0],txDataInApp_TLAST[0:0],txDataInDhcp_TVALID,txDataInDhcp_TREADY,txDataInDhcp_TDATA[63:0],txDataInDhcp_TKEEP[7:0],txDataInDhcp_TLAST[0:0],txDataOut_TVALID,txDataOut_TREADY,txDataOut_TDATA[63:0],txDataOut_TKEEP[7:0],txDataOut_TLAST[0:0],txLengthInApp_TVALID,txLengthInApp_TREADY,txLengthInApp_TDATA[15:0],txLengthInDhcp_TVALID,txLengthInDhcp_TREADY,txLengthInDhcp_TDATA[15:0],txLengthOut_TVALID,txLengthOut_TREADY,txLengthOut_TDATA[15:0],txMetadataInApp_TVALID,txMetadataInApp_TREADY,txMetadataInApp_TDATA[95:0],txMetadataInDhcp_TVALID,txMetadataInDhcp_TREADY,txMetadataInDhcp_TDATA[95:0],txMetadataOut_TVALID,txMetadataOut_TREADY,txMetadataOut_TDATA[95:0],aclk,aresetn" */;
  input portOpenReplyIn_TVALID;
  output portOpenReplyIn_TREADY;
  input [7:0]portOpenReplyIn_TDATA;
  output portOpenReplyOutApp_TVALID;
  input portOpenReplyOutApp_TREADY;
  output [7:0]portOpenReplyOutApp_TDATA;
  output portOpenReplyOutDhcp_TVALID;
  input portOpenReplyOutDhcp_TREADY;
  output [7:0]portOpenReplyOutDhcp_TDATA;
  input requestPortOpenInApp_TVALID;
  output requestPortOpenInApp_TREADY;
  input [15:0]requestPortOpenInApp_TDATA;
  input requestPortOpenInDhcp_TVALID;
  output requestPortOpenInDhcp_TREADY;
  input [15:0]requestPortOpenInDhcp_TDATA;
  output requestPortOpenOut_TVALID;
  input requestPortOpenOut_TREADY;
  output [15:0]requestPortOpenOut_TDATA;
  input rxDataIn_TVALID;
  output rxDataIn_TREADY;
  input [63:0]rxDataIn_TDATA;
  input [7:0]rxDataIn_TKEEP;
  input [0:0]rxDataIn_TLAST;
  output rxDataOutApp_TVALID;
  input rxDataOutApp_TREADY;
  output [63:0]rxDataOutApp_TDATA;
  output [7:0]rxDataOutApp_TKEEP;
  output [0:0]rxDataOutApp_TLAST;
  output rxDataOutDhcp_TVALID;
  input rxDataOutDhcp_TREADY;
  output [63:0]rxDataOutDhcp_TDATA;
  output [7:0]rxDataOutDhcp_TKEEP;
  output [0:0]rxDataOutDhcp_TLAST;
  input rxMetadataIn_TVALID;
  output rxMetadataIn_TREADY;
  input [95:0]rxMetadataIn_TDATA;
  output rxMetadataOutApp_TVALID;
  input rxMetadataOutApp_TREADY;
  output [95:0]rxMetadataOutApp_TDATA;
  output rxMetadataOutDhcp_TVALID;
  input rxMetadataOutDhcp_TREADY;
  output [95:0]rxMetadataOutDhcp_TDATA;
  input txDataInApp_TVALID;
  output txDataInApp_TREADY;
  input [63:0]txDataInApp_TDATA;
  input [7:0]txDataInApp_TKEEP;
  input [0:0]txDataInApp_TLAST;
  input txDataInDhcp_TVALID;
  output txDataInDhcp_TREADY;
  input [63:0]txDataInDhcp_TDATA;
  input [7:0]txDataInDhcp_TKEEP;
  input [0:0]txDataInDhcp_TLAST;
  output txDataOut_TVALID;
  input txDataOut_TREADY;
  output [63:0]txDataOut_TDATA;
  output [7:0]txDataOut_TKEEP;
  output [0:0]txDataOut_TLAST;
  input txLengthInApp_TVALID;
  output txLengthInApp_TREADY;
  input [15:0]txLengthInApp_TDATA;
  input txLengthInDhcp_TVALID;
  output txLengthInDhcp_TREADY;
  input [15:0]txLengthInDhcp_TDATA;
  output txLengthOut_TVALID;
  input txLengthOut_TREADY;
  output [15:0]txLengthOut_TDATA;
  input txMetadataInApp_TVALID;
  output txMetadataInApp_TREADY;
  input [95:0]txMetadataInApp_TDATA;
  input txMetadataInDhcp_TVALID;
  output txMetadataInDhcp_TREADY;
  input [95:0]txMetadataInDhcp_TDATA;
  output txMetadataOut_TVALID;
  input txMetadataOut_TREADY;
  output [95:0]txMetadataOut_TDATA;
  input aclk;
  input aresetn;
endmodule
