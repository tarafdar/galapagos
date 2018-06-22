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


// IP VLNV: ethz.systems:hls:arp_server:1.0
// IP Revision: 1804061219

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module arp_server_ip (
  myMacAddress_V,
  myIpAddress_V,
  arpDataIn_TVALID,
  arpDataIn_TREADY,
  arpDataIn_TDATA,
  arpDataIn_TKEEP,
  arpDataIn_TLAST,
  arpDataOut_TVALID,
  arpDataOut_TREADY,
  arpDataOut_TDATA,
  arpDataOut_TKEEP,
  arpDataOut_TLAST,
  macIpEncode_req_TVALID,
  macIpEncode_req_TREADY,
  macIpEncode_req_TDATA,
  macIpEncode_rsp_TVALID,
  macIpEncode_rsp_TREADY,
  macIpEncode_rsp_TDATA,
  macLookup_req_TVALID,
  macLookup_req_TREADY,
  macLookup_req_TDATA,
  macLookup_resp_TVALID,
  macLookup_resp_TREADY,
  macLookup_resp_TDATA,
  macUpdate_req_TVALID,
  macUpdate_req_TREADY,
  macUpdate_req_TDATA,
  macUpdate_resp_TVALID,
  macUpdate_resp_TREADY,
  macUpdate_resp_TDATA,
  aclk,
  aresetn
);

input wire [47 : 0] myMacAddress_V;
input wire [31 : 0] myIpAddress_V;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataIn TVALID" *)
input wire arpDataIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataIn TREADY" *)
output wire arpDataIn_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataIn TDATA" *)
input wire [63 : 0] arpDataIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataIn TKEEP" *)
input wire [7 : 0] arpDataIn_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arpDataIn, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataIn TLAST" *)
input wire [0 : 0] arpDataIn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataOut TVALID" *)
output wire arpDataOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataOut TREADY" *)
input wire arpDataOut_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataOut TDATA" *)
output wire [63 : 0] arpDataOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataOut TKEEP" *)
output wire [7 : 0] arpDataOut_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arpDataOut, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arpDataOut TLAST" *)
output wire [0 : 0] arpDataOut_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macIpEncode_req TVALID" *)
input wire macIpEncode_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macIpEncode_req TREADY" *)
output wire macIpEncode_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME macIpEncode_req, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macIpEncode_req TDATA" *)
input wire [31 : 0] macIpEncode_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macIpEncode_rsp TVALID" *)
output wire macIpEncode_rsp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macIpEncode_rsp TREADY" *)
input wire macIpEncode_rsp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME macIpEncode_rsp, TDATA_NUM_BYTES 7, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 56} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macIpEncode_rsp TDATA" *)
output wire [55 : 0] macIpEncode_rsp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macLookup_req TVALID" *)
output wire macLookup_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macLookup_req TREADY" *)
input wire macLookup_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME macLookup_req, TDATA_NUM_BYTES 5, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 40} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macLookup_req TDATA" *)
output wire [39 : 0] macLookup_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macLookup_resp TVALID" *)
input wire macLookup_resp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macLookup_resp TREADY" *)
output wire macLookup_resp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME macLookup_resp, TDATA_NUM_BYTES 7, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 56} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macLookup_resp TDATA" *)
input wire [55 : 0] macLookup_resp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macUpdate_req TVALID" *)
output wire macUpdate_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macUpdate_req TREADY" *)
input wire macUpdate_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME macUpdate_req, TDATA_NUM_BYTES 11, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 88} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macUpdate_req TDATA" *)
output wire [87 : 0] macUpdate_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macUpdate_resp TVALID" *)
input wire macUpdate_resp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macUpdate_resp TREADY" *)
output wire macUpdate_resp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME macUpdate_resp, TDATA_NUM_BYTES 7, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 56} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 macUpdate_resp TDATA" *)
input wire [55 : 0] macUpdate_resp_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF arpDataIn:arpDataOut:macIpEncode_req:macIpEncode_rsp:macLookup_req:macLookup_resp:macUpdate_req:macUpdate_resp, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  arp_server_top inst (
    .myMacAddress_V(myMacAddress_V),
    .myIpAddress_V(myIpAddress_V),
    .arpDataIn_TVALID(arpDataIn_TVALID),
    .arpDataIn_TREADY(arpDataIn_TREADY),
    .arpDataIn_TDATA(arpDataIn_TDATA),
    .arpDataIn_TKEEP(arpDataIn_TKEEP),
    .arpDataIn_TLAST(arpDataIn_TLAST),
    .arpDataOut_TVALID(arpDataOut_TVALID),
    .arpDataOut_TREADY(arpDataOut_TREADY),
    .arpDataOut_TDATA(arpDataOut_TDATA),
    .arpDataOut_TKEEP(arpDataOut_TKEEP),
    .arpDataOut_TLAST(arpDataOut_TLAST),
    .macIpEncode_req_TVALID(macIpEncode_req_TVALID),
    .macIpEncode_req_TREADY(macIpEncode_req_TREADY),
    .macIpEncode_req_TDATA(macIpEncode_req_TDATA),
    .macIpEncode_rsp_TVALID(macIpEncode_rsp_TVALID),
    .macIpEncode_rsp_TREADY(macIpEncode_rsp_TREADY),
    .macIpEncode_rsp_TDATA(macIpEncode_rsp_TDATA),
    .macLookup_req_TVALID(macLookup_req_TVALID),
    .macLookup_req_TREADY(macLookup_req_TREADY),
    .macLookup_req_TDATA(macLookup_req_TDATA),
    .macLookup_resp_TVALID(macLookup_resp_TVALID),
    .macLookup_resp_TREADY(macLookup_resp_TREADY),
    .macLookup_resp_TDATA(macLookup_resp_TDATA),
    .macUpdate_req_TVALID(macUpdate_req_TVALID),
    .macUpdate_req_TREADY(macUpdate_req_TREADY),
    .macUpdate_req_TDATA(macUpdate_req_TDATA),
    .macUpdate_resp_TVALID(macUpdate_resp_TVALID),
    .macUpdate_resp_TREADY(macUpdate_resp_TREADY),
    .macUpdate_resp_TDATA(macUpdate_resp_TDATA),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
