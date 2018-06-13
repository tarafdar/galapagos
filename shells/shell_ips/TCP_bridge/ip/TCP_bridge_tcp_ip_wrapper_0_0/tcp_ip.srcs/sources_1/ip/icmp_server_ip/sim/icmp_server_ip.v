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


// IP VLNV: xilinx.labs:hls:icmp_server:1.67
// IP Revision: 1804061221

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module icmp_server_ip (
  dataIn_TVALID,
  dataIn_TREADY,
  dataIn_TDATA,
  dataIn_TKEEP,
  dataIn_TLAST,
  udpIn_TVALID,
  udpIn_TREADY,
  udpIn_TDATA,
  udpIn_TKEEP,
  udpIn_TLAST,
  ttlIn_TVALID,
  ttlIn_TREADY,
  ttlIn_TDATA,
  ttlIn_TKEEP,
  ttlIn_TLAST,
  dataOut_TVALID,
  dataOut_TREADY,
  dataOut_TDATA,
  dataOut_TKEEP,
  dataOut_TLAST,
  ap_clk,
  ap_rst_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataIn TVALID" *)
input wire dataIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataIn TREADY" *)
output wire dataIn_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataIn TDATA" *)
input wire [63 : 0] dataIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataIn TKEEP" *)
input wire [7 : 0] dataIn_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dataIn, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate\
 dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataIn TLAST" *)
input wire [0 : 0] dataIn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 udpIn TVALID" *)
input wire udpIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 udpIn TREADY" *)
output wire udpIn_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 udpIn TDATA" *)
input wire [63 : 0] udpIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 udpIn TKEEP" *)
input wire [7 : 0] udpIn_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME udpIn, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate \
dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 udpIn TLAST" *)
input wire [0 : 0] udpIn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ttlIn TVALID" *)
input wire ttlIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ttlIn TREADY" *)
output wire ttlIn_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ttlIn TDATA" *)
input wire [63 : 0] ttlIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ttlIn TKEEP" *)
input wire [7 : 0] ttlIn_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ttlIn, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate \
dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ttlIn TLAST" *)
input wire [0 : 0] ttlIn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataOut TVALID" *)
output wire dataOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataOut TREADY" *)
input wire dataOut_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataOut TDATA" *)
output wire [63 : 0] dataOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataOut TKEEP" *)
output wire [7 : 0] dataOut_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dataOut, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediat\
e dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dataOut TLAST" *)
output wire [0 : 0] dataOut_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF dataIn:udpIn:ttlIn:dataOut, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;

  icmp_server inst (
    .dataIn_TVALID(dataIn_TVALID),
    .dataIn_TREADY(dataIn_TREADY),
    .dataIn_TDATA(dataIn_TDATA),
    .dataIn_TKEEP(dataIn_TKEEP),
    .dataIn_TLAST(dataIn_TLAST),
    .udpIn_TVALID(udpIn_TVALID),
    .udpIn_TREADY(udpIn_TREADY),
    .udpIn_TDATA(udpIn_TDATA),
    .udpIn_TKEEP(udpIn_TKEEP),
    .udpIn_TLAST(udpIn_TLAST),
    .ttlIn_TVALID(ttlIn_TVALID),
    .ttlIn_TREADY(ttlIn_TREADY),
    .ttlIn_TDATA(ttlIn_TDATA),
    .ttlIn_TKEEP(ttlIn_TKEEP),
    .ttlIn_TLAST(ttlIn_TLAST),
    .dataOut_TVALID(dataOut_TVALID),
    .dataOut_TREADY(dataOut_TREADY),
    .dataOut_TDATA(dataOut_TDATA),
    .dataOut_TKEEP(dataOut_TKEEP),
    .dataOut_TLAST(dataOut_TLAST),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n)
  );
endmodule
