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


// IP VLNV: xilinx.labs:hls:udp:1.41
// IP Revision: 1804061221

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module udp_0 (
  confirmPortStatus_TVALID,
  confirmPortStatus_TREADY,
  confirmPortStatus_TDATA,
  inputPathInData_TVALID,
  inputPathInData_TREADY,
  inputPathInData_TDATA,
  inputPathInData_TKEEP,
  inputPathInData_TLAST,
  inputPathOutputMetadata_TVALID,
  inputPathOutputMetadata_TREADY,
  inputPathOutputMetadata_TDATA,
  inputPathPortUnreachable_TVALID,
  inputPathPortUnreachable_TREADY,
  inputPathPortUnreachable_TDATA,
  inputPathPortUnreachable_TKEEP,
  inputPathPortUnreachable_TLAST,
  inputpathOutData_TVALID,
  inputpathOutData_TREADY,
  inputpathOutData_TDATA,
  inputpathOutData_TKEEP,
  inputpathOutData_TLAST,
  openPort_TVALID,
  openPort_TREADY,
  openPort_TDATA,
  outputPathInData_TVALID,
  outputPathInData_TREADY,
  outputPathInData_TDATA,
  outputPathInData_TKEEP,
  outputPathInData_TLAST,
  outputPathInMetadata_TVALID,
  outputPathInMetadata_TREADY,
  outputPathInMetadata_TDATA,
  outputPathOutData_TVALID,
  outputPathOutData_TREADY,
  outputPathOutData_TDATA,
  outputPathOutData_TKEEP,
  outputPathOutData_TLAST,
  outputpathInLength_TVALID,
  outputpathInLength_TREADY,
  outputpathInLength_TDATA,
  portRelease_TVALID,
  portRelease_TREADY,
  portRelease_TDATA,
  aclk,
  aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 confirmPortStatus TVALID" *)
output wire confirmPortStatus_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 confirmPortStatus TREADY" *)
input wire confirmPortStatus_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME confirmPortStatus, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, \
HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 confirmPortStatus TDATA" *)
output wire [7 : 0] confirmPortStatus_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathInData TVALID" *)
input wire inputPathInData_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathInData TREADY" *)
output wire inputPathInData_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathInData TDATA" *)
input wire [63 : 0] inputPathInData_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathInData TKEEP" *)
input wire [7 : 0] inputPathInData_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inputPathInData, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency \
{} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathInData TLAST" *)
input wire [0 : 0] inputPathInData_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathOutputMetadata TVALID" *)
output wire inputPathOutputMetadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathOutputMetadata TREADY" *)
input wire inputPathOutputMetadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inputPathOutputMetadata, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_T\
STRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathOutputMetadata TDATA" *)
output wire [95 : 0] inputPathOutputMetadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathPortUnreachable TVALID" *)
output wire inputPathPortUnreachable_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathPortUnreachable TREADY" *)
input wire inputPathPortUnreachable_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathPortUnreachable TDATA" *)
output wire [63 : 0] inputPathPortUnreachable_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathPortUnreachable TKEEP" *)
output wire [7 : 0] inputPathPortUnreachable_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inputPathPortUnreachable, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate de\
pendency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputPathPortUnreachable TLAST" *)
output wire [0 : 0] inputPathPortUnreachable_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputpathOutData TVALID" *)
output wire inputpathOutData_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputpathOutData TREADY" *)
input wire inputpathOutData_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputpathOutData TDATA" *)
output wire [63 : 0] inputpathOutData_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputpathOutData TKEEP" *)
output wire [7 : 0] inputpathOutData_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inputpathOutData, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency\
 {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inputpathOutData TLAST" *)
output wire [0 : 0] inputpathOutData_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 openPort TVALID" *)
input wire openPort_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 openPort TREADY" *)
output wire openPort_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME openPort, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} form\
at bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 openPort TDATA" *)
input wire [15 : 0] openPort_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInData TVALID" *)
input wire outputPathInData_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInData TREADY" *)
output wire outputPathInData_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInData TDATA" *)
input wire [63 : 0] outputPathInData_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInData TKEEP" *)
input wire [7 : 0] outputPathInData_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outputPathInData, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency\
 {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInData TLAST" *)
input wire [0 : 0] outputPathInData_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInMetadata TVALID" *)
input wire outputPathInMetadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInMetadata TREADY" *)
output wire outputPathInMetadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outputPathInMetadata, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTR\
B 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathInMetadata TDATA" *)
input wire [95 : 0] outputPathInMetadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathOutData TVALID" *)
output wire outputPathOutData_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathOutData TREADY" *)
input wire outputPathOutData_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathOutData TDATA" *)
output wire [63 : 0] outputPathOutData_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathOutData TKEEP" *)
output wire [7 : 0] outputPathOutData_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outputPathOutData, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependenc\
y {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputPathOutData TLAST" *)
output wire [0 : 0] outputPathOutData_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputpathInLength TVALID" *)
input wire outputpathInLength_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputpathInLength TREADY" *)
output wire outputpathInLength_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outputpathInLength, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen\
cy {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outputpathInLength TDATA" *)
input wire [15 : 0] outputpathInLength_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portRelease TVALID" *)
input wire portRelease_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portRelease TREADY" *)
output wire portRelease_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME portRelease, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} f\
ormat bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 portRelease TDATA" *)
input wire [15 : 0] portRelease_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF confirmPortStatus:inputPathInData:inputPathOutputMetadata:inputPathPortUnreachable:inputpathOutData:openPort:outputPathInData:outputPathInMetadata:outputPathOutData:outputpathInLength:portRelease, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  udp_top inst (
    .confirmPortStatus_TVALID(confirmPortStatus_TVALID),
    .confirmPortStatus_TREADY(confirmPortStatus_TREADY),
    .confirmPortStatus_TDATA(confirmPortStatus_TDATA),
    .inputPathInData_TVALID(inputPathInData_TVALID),
    .inputPathInData_TREADY(inputPathInData_TREADY),
    .inputPathInData_TDATA(inputPathInData_TDATA),
    .inputPathInData_TKEEP(inputPathInData_TKEEP),
    .inputPathInData_TLAST(inputPathInData_TLAST),
    .inputPathOutputMetadata_TVALID(inputPathOutputMetadata_TVALID),
    .inputPathOutputMetadata_TREADY(inputPathOutputMetadata_TREADY),
    .inputPathOutputMetadata_TDATA(inputPathOutputMetadata_TDATA),
    .inputPathPortUnreachable_TVALID(inputPathPortUnreachable_TVALID),
    .inputPathPortUnreachable_TREADY(inputPathPortUnreachable_TREADY),
    .inputPathPortUnreachable_TDATA(inputPathPortUnreachable_TDATA),
    .inputPathPortUnreachable_TKEEP(inputPathPortUnreachable_TKEEP),
    .inputPathPortUnreachable_TLAST(inputPathPortUnreachable_TLAST),
    .inputpathOutData_TVALID(inputpathOutData_TVALID),
    .inputpathOutData_TREADY(inputpathOutData_TREADY),
    .inputpathOutData_TDATA(inputpathOutData_TDATA),
    .inputpathOutData_TKEEP(inputpathOutData_TKEEP),
    .inputpathOutData_TLAST(inputpathOutData_TLAST),
    .openPort_TVALID(openPort_TVALID),
    .openPort_TREADY(openPort_TREADY),
    .openPort_TDATA(openPort_TDATA),
    .outputPathInData_TVALID(outputPathInData_TVALID),
    .outputPathInData_TREADY(outputPathInData_TREADY),
    .outputPathInData_TDATA(outputPathInData_TDATA),
    .outputPathInData_TKEEP(outputPathInData_TKEEP),
    .outputPathInData_TLAST(outputPathInData_TLAST),
    .outputPathInMetadata_TVALID(outputPathInMetadata_TVALID),
    .outputPathInMetadata_TREADY(outputPathInMetadata_TREADY),
    .outputPathInMetadata_TDATA(outputPathInMetadata_TDATA),
    .outputPathOutData_TVALID(outputPathOutData_TVALID),
    .outputPathOutData_TREADY(outputPathOutData_TREADY),
    .outputPathOutData_TDATA(outputPathOutData_TDATA),
    .outputPathOutData_TKEEP(outputPathOutData_TKEEP),
    .outputPathOutData_TLAST(outputPathOutData_TLAST),
    .outputpathInLength_TVALID(outputpathInLength_TVALID),
    .outputpathInLength_TREADY(outputpathInLength_TREADY),
    .outputpathInLength_TDATA(outputpathInLength_TDATA),
    .portRelease_TVALID(portRelease_TVALID),
    .portRelease_TREADY(portRelease_TREADY),
    .portRelease_TDATA(portRelease_TDATA),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
