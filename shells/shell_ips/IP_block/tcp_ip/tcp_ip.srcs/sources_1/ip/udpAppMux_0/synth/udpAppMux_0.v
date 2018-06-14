// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.labs:hls:udpAppMux:1.05
// IP Revision: 1802231037

(* X_CORE_INFO = "udpappmux_top,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "udpAppMux_0,udpappmux_top,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module udpAppMux_0 (
  portOpenReplyIn_TVALID,
  portOpenReplyIn_TREADY,
  portOpenReplyIn_TDATA,
  portOpenReplyOutApp_TVALID,
  portOpenReplyOutApp_TREADY,
  portOpenReplyOutApp_TDATA,
  portOpenReplyOutDhcp_TVALID,
  portOpenReplyOutDhcp_TREADY,
  portOpenReplyOutDhcp_TDATA,
  requestPortOpenInApp_TVALID,
  requestPortOpenInApp_TREADY,
  requestPortOpenInApp_TDATA,
  requestPortOpenInDhcp_TVALID,
  requestPortOpenInDhcp_TREADY,
  requestPortOpenInDhcp_TDATA,
  requestPortOpenOut_TVALID,
  requestPortOpenOut_TREADY,
  requestPortOpenOut_TDATA,
  rxDataIn_TVALID,
  rxDataIn_TREADY,
  rxDataIn_TDATA,
  rxDataIn_TKEEP,
  rxDataIn_TLAST,
  rxDataOutApp_TVALID,
  rxDataOutApp_TREADY,
  rxDataOutApp_TDATA,
  rxDataOutApp_TKEEP,
  rxDataOutApp_TLAST,
  rxDataOutDhcp_TVALID,
  rxDataOutDhcp_TREADY,
  rxDataOutDhcp_TDATA,
  rxDataOutDhcp_TKEEP,
  rxDataOutDhcp_TLAST,
  rxMetadataIn_TVALID,
  rxMetadataIn_TREADY,
  rxMetadataIn_TDATA,
  rxMetadataOutApp_TVALID,
  rxMetadataOutApp_TREADY,
  rxMetadataOutApp_TDATA,
  rxMetadataOutDhcp_TVALID,
  rxMetadataOutDhcp_TREADY,
  rxMetadataOutDhcp_TDATA,
  txDataInApp_TVALID,
  txDataInApp_TREADY,
  txDataInApp_TDATA,
  txDataInApp_TKEEP,
  txDataInApp_TLAST,
  txDataInDhcp_TVALID,
  txDataInDhcp_TREADY,
  txDataInDhcp_TDATA,
  txDataInDhcp_TKEEP,
  txDataInDhcp_TLAST,
  txDataOut_TVALID,
  txDataOut_TREADY,
  txDataOut_TDATA,
  txDataOut_TKEEP,
  txDataOut_TLAST,
  txLengthInApp_TVALID,
  txLengthInApp_TREADY,
  txLengthInApp_TDATA,
  txLengthInDhcp_TVALID,
  txLengthInDhcp_TREADY,
  txLengthInDhcp_TDATA,
  txLengthOut_TVALID,
  txLengthOut_TREADY,
  txLengthOut_TDATA,
  txMetadataInApp_TVALID,
  txMetadataInApp_TREADY,
  txMetadataInApp_TDATA,
  txMetadataInDhcp_TVALID,
  txMetadataInDhcp_TREADY,
  txMetadataInDhcp_TDATA,
  txMetadataOut_TVALID,
  txMetadataOut_TREADY,
  txMetadataOut_TDATA,
  aclk,
  aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyIn TVALID" *)
input wire portOpenReplyIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyIn TREADY" *)
output wire portOpenReplyIn_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME portOpenReplyIn, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyIn TDATA" *)
input wire [7 : 0] portOpenReplyIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyOutApp TVALID" *)
output wire portOpenReplyOutApp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyOutApp TREADY" *)
input wire portOpenReplyOutApp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME portOpenReplyOutApp, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyOutApp TDATA" *)
output wire [7 : 0] portOpenReplyOutApp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyOutDhcp TVALID" *)
output wire portOpenReplyOutDhcp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyOutDhcp TREADY" *)
input wire portOpenReplyOutDhcp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME portOpenReplyOutDhcp, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portOpenReplyOutDhcp TDATA" *)
output wire [7 : 0] portOpenReplyOutDhcp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenInApp TVALID" *)
input wire requestPortOpenInApp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenInApp TREADY" *)
output wire requestPortOpenInApp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME requestPortOpenInApp, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenInApp TDATA" *)
input wire [15 : 0] requestPortOpenInApp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenInDhcp TVALID" *)
input wire requestPortOpenInDhcp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenInDhcp TREADY" *)
output wire requestPortOpenInDhcp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME requestPortOpenInDhcp, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenInDhcp TDATA" *)
input wire [15 : 0] requestPortOpenInDhcp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenOut TVALID" *)
output wire requestPortOpenOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenOut TREADY" *)
input wire requestPortOpenOut_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME requestPortOpenOut, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 requestPortOpenOut TDATA" *)
output wire [15 : 0] requestPortOpenOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataIn TVALID" *)
input wire rxDataIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataIn TREADY" *)
output wire rxDataIn_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataIn TDATA" *)
input wire [63 : 0] rxDataIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataIn TKEEP" *)
input wire [7 : 0] rxDataIn_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rxDataIn, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataIn TLAST" *)
input wire [0 : 0] rxDataIn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutApp TVALID" *)
output wire rxDataOutApp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutApp TREADY" *)
input wire rxDataOutApp_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutApp TDATA" *)
output wire [63 : 0] rxDataOutApp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutApp TKEEP" *)
output wire [7 : 0] rxDataOutApp_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rxDataOutApp, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutApp TLAST" *)
output wire [0 : 0] rxDataOutApp_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutDhcp TVALID" *)
output wire rxDataOutDhcp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutDhcp TREADY" *)
input wire rxDataOutDhcp_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutDhcp TDATA" *)
output wire [63 : 0] rxDataOutDhcp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutDhcp TKEEP" *)
output wire [7 : 0] rxDataOutDhcp_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rxDataOutDhcp, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxDataOutDhcp TLAST" *)
output wire [0 : 0] rxDataOutDhcp_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataIn TVALID" *)
input wire rxMetadataIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataIn TREADY" *)
output wire rxMetadataIn_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rxMetadataIn, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataIn TDATA" *)
input wire [95 : 0] rxMetadataIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataOutApp TVALID" *)
output wire rxMetadataOutApp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataOutApp TREADY" *)
input wire rxMetadataOutApp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rxMetadataOutApp, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataOutApp TDATA" *)
output wire [95 : 0] rxMetadataOutApp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataOutDhcp TVALID" *)
output wire rxMetadataOutDhcp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataOutDhcp TREADY" *)
input wire rxMetadataOutDhcp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rxMetadataOutDhcp, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rxMetadataOutDhcp TDATA" *)
output wire [95 : 0] rxMetadataOutDhcp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInApp TVALID" *)
input wire txDataInApp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInApp TREADY" *)
output wire txDataInApp_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInApp TDATA" *)
input wire [63 : 0] txDataInApp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInApp TKEEP" *)
input wire [7 : 0] txDataInApp_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txDataInApp, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInApp TLAST" *)
input wire [0 : 0] txDataInApp_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInDhcp TVALID" *)
input wire txDataInDhcp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInDhcp TREADY" *)
output wire txDataInDhcp_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInDhcp TDATA" *)
input wire [63 : 0] txDataInDhcp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInDhcp TKEEP" *)
input wire [7 : 0] txDataInDhcp_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txDataInDhcp, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataInDhcp TLAST" *)
input wire [0 : 0] txDataInDhcp_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataOut TVALID" *)
output wire txDataOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataOut TREADY" *)
input wire txDataOut_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataOut TDATA" *)
output wire [63 : 0] txDataOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataOut TKEEP" *)
output wire [7 : 0] txDataOut_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txDataOut, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txDataOut TLAST" *)
output wire [0 : 0] txDataOut_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthInApp TVALID" *)
input wire txLengthInApp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthInApp TREADY" *)
output wire txLengthInApp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txLengthInApp, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthInApp TDATA" *)
input wire [15 : 0] txLengthInApp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthInDhcp TVALID" *)
input wire txLengthInDhcp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthInDhcp TREADY" *)
output wire txLengthInDhcp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txLengthInDhcp, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthInDhcp TDATA" *)
input wire [15 : 0] txLengthInDhcp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthOut TVALID" *)
output wire txLengthOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthOut TREADY" *)
input wire txLengthOut_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txLengthOut, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txLengthOut TDATA" *)
output wire [15 : 0] txLengthOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataInApp TVALID" *)
input wire txMetadataInApp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataInApp TREADY" *)
output wire txMetadataInApp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txMetadataInApp, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataInApp TDATA" *)
input wire [95 : 0] txMetadataInApp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataInDhcp TVALID" *)
input wire txMetadataInDhcp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataInDhcp TREADY" *)
output wire txMetadataInDhcp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txMetadataInDhcp, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataInDhcp TDATA" *)
input wire [95 : 0] txMetadataInDhcp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataOut TVALID" *)
output wire txMetadataOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataOut TREADY" *)
input wire txMetadataOut_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txMetadataOut, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 txMetadataOut TDATA" *)
output wire [95 : 0] txMetadataOut_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF portOpenReplyIn:portOpenReplyOutApp:portOpenReplyOutDhcp:requestPortOpenInApp:requestPortOpenInDhcp:requestPortOpenOut:rxDataIn:rxDataOutApp:rxDataOutDhcp:rxMetadataIn:rxMetadataOutApp:rxMetadataOutDhcp:txDataInApp:txDataInDhcp:txDataOut:txLengthInApp:txLengthInDhcp:txLengthOut:txMetadataInApp:txMetadataInDhcp:txMetadataOut, ASSOCIATED_RESET aresetn" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  udpappmux_top inst (
    .portOpenReplyIn_TVALID(portOpenReplyIn_TVALID),
    .portOpenReplyIn_TREADY(portOpenReplyIn_TREADY),
    .portOpenReplyIn_TDATA(portOpenReplyIn_TDATA),
    .portOpenReplyOutApp_TVALID(portOpenReplyOutApp_TVALID),
    .portOpenReplyOutApp_TREADY(portOpenReplyOutApp_TREADY),
    .portOpenReplyOutApp_TDATA(portOpenReplyOutApp_TDATA),
    .portOpenReplyOutDhcp_TVALID(portOpenReplyOutDhcp_TVALID),
    .portOpenReplyOutDhcp_TREADY(portOpenReplyOutDhcp_TREADY),
    .portOpenReplyOutDhcp_TDATA(portOpenReplyOutDhcp_TDATA),
    .requestPortOpenInApp_TVALID(requestPortOpenInApp_TVALID),
    .requestPortOpenInApp_TREADY(requestPortOpenInApp_TREADY),
    .requestPortOpenInApp_TDATA(requestPortOpenInApp_TDATA),
    .requestPortOpenInDhcp_TVALID(requestPortOpenInDhcp_TVALID),
    .requestPortOpenInDhcp_TREADY(requestPortOpenInDhcp_TREADY),
    .requestPortOpenInDhcp_TDATA(requestPortOpenInDhcp_TDATA),
    .requestPortOpenOut_TVALID(requestPortOpenOut_TVALID),
    .requestPortOpenOut_TREADY(requestPortOpenOut_TREADY),
    .requestPortOpenOut_TDATA(requestPortOpenOut_TDATA),
    .rxDataIn_TVALID(rxDataIn_TVALID),
    .rxDataIn_TREADY(rxDataIn_TREADY),
    .rxDataIn_TDATA(rxDataIn_TDATA),
    .rxDataIn_TKEEP(rxDataIn_TKEEP),
    .rxDataIn_TLAST(rxDataIn_TLAST),
    .rxDataOutApp_TVALID(rxDataOutApp_TVALID),
    .rxDataOutApp_TREADY(rxDataOutApp_TREADY),
    .rxDataOutApp_TDATA(rxDataOutApp_TDATA),
    .rxDataOutApp_TKEEP(rxDataOutApp_TKEEP),
    .rxDataOutApp_TLAST(rxDataOutApp_TLAST),
    .rxDataOutDhcp_TVALID(rxDataOutDhcp_TVALID),
    .rxDataOutDhcp_TREADY(rxDataOutDhcp_TREADY),
    .rxDataOutDhcp_TDATA(rxDataOutDhcp_TDATA),
    .rxDataOutDhcp_TKEEP(rxDataOutDhcp_TKEEP),
    .rxDataOutDhcp_TLAST(rxDataOutDhcp_TLAST),
    .rxMetadataIn_TVALID(rxMetadataIn_TVALID),
    .rxMetadataIn_TREADY(rxMetadataIn_TREADY),
    .rxMetadataIn_TDATA(rxMetadataIn_TDATA),
    .rxMetadataOutApp_TVALID(rxMetadataOutApp_TVALID),
    .rxMetadataOutApp_TREADY(rxMetadataOutApp_TREADY),
    .rxMetadataOutApp_TDATA(rxMetadataOutApp_TDATA),
    .rxMetadataOutDhcp_TVALID(rxMetadataOutDhcp_TVALID),
    .rxMetadataOutDhcp_TREADY(rxMetadataOutDhcp_TREADY),
    .rxMetadataOutDhcp_TDATA(rxMetadataOutDhcp_TDATA),
    .txDataInApp_TVALID(txDataInApp_TVALID),
    .txDataInApp_TREADY(txDataInApp_TREADY),
    .txDataInApp_TDATA(txDataInApp_TDATA),
    .txDataInApp_TKEEP(txDataInApp_TKEEP),
    .txDataInApp_TLAST(txDataInApp_TLAST),
    .txDataInDhcp_TVALID(txDataInDhcp_TVALID),
    .txDataInDhcp_TREADY(txDataInDhcp_TREADY),
    .txDataInDhcp_TDATA(txDataInDhcp_TDATA),
    .txDataInDhcp_TKEEP(txDataInDhcp_TKEEP),
    .txDataInDhcp_TLAST(txDataInDhcp_TLAST),
    .txDataOut_TVALID(txDataOut_TVALID),
    .txDataOut_TREADY(txDataOut_TREADY),
    .txDataOut_TDATA(txDataOut_TDATA),
    .txDataOut_TKEEP(txDataOut_TKEEP),
    .txDataOut_TLAST(txDataOut_TLAST),
    .txLengthInApp_TVALID(txLengthInApp_TVALID),
    .txLengthInApp_TREADY(txLengthInApp_TREADY),
    .txLengthInApp_TDATA(txLengthInApp_TDATA),
    .txLengthInDhcp_TVALID(txLengthInDhcp_TVALID),
    .txLengthInDhcp_TREADY(txLengthInDhcp_TREADY),
    .txLengthInDhcp_TDATA(txLengthInDhcp_TDATA),
    .txLengthOut_TVALID(txLengthOut_TVALID),
    .txLengthOut_TREADY(txLengthOut_TREADY),
    .txLengthOut_TDATA(txLengthOut_TDATA),
    .txMetadataInApp_TVALID(txMetadataInApp_TVALID),
    .txMetadataInApp_TREADY(txMetadataInApp_TREADY),
    .txMetadataInApp_TDATA(txMetadataInApp_TDATA),
    .txMetadataInDhcp_TVALID(txMetadataInDhcp_TVALID),
    .txMetadataInDhcp_TREADY(txMetadataInDhcp_TREADY),
    .txMetadataInDhcp_TDATA(txMetadataInDhcp_TDATA),
    .txMetadataOut_TVALID(txMetadataOut_TVALID),
    .txMetadataOut_TREADY(txMetadataOut_TREADY),
    .txMetadataOut_TDATA(txMetadataOut_TDATA),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
