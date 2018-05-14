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


// IP VLNV: xilinx.com:hls:reverseEndian64:1.0
// IP Revision: 1805121524

(* X_CORE_INFO = "reverseEndian64,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "shell_reverseEndian64_0_0,reverseEndian64,{}" *)
(* CORE_GENERATION_INFO = "shell_reverseEndian64_0_0,reverseEndian64,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=reverseEndian64,x_ipVersion=1.0,x_ipCoreRevision=1805121524,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module shell_reverseEndian64_0_0 (
  ap_clk,
  ap_rst_n,
  stream_in_TVALID,
  stream_in_TREADY,
  stream_in_TDATA,
  stream_in_TKEEP,
  stream_in_TLAST,
  stream_out_TVALID,
  stream_out_TREADY,
  stream_out_TDATA,
  stream_out_TKEEP,
  stream_out_TLAST
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_in:stream_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 156250000, PHASE 0.000, CLK_\
DOMAIN bd_01e2_xpcs_0_txusrclk2_out" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TVALID" *)
input wire stream_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TREADY" *)
output wire stream_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDATA" *)
input wire [63 : 0] stream_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TKEEP" *)
input wire [7 : 0] stream_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_in, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {\
} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DO\
MAIN bd_01e2_xpcs_0_txusrclk2_out" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TLAST" *)
input wire [0 : 0] stream_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TVALID" *)
output wire stream_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TREADY" *)
input wire stream_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDATA" *)
output wire [63 : 0] stream_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TKEEP" *)
output wire [7 : 0] stream_out_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency \
{} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_D\
OMAIN bd_01e2_xpcs_0_txusrclk2_out" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TLAST" *)
output wire [0 : 0] stream_out_TLAST;

  reverseEndian64 inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .stream_in_TVALID(stream_in_TVALID),
    .stream_in_TREADY(stream_in_TREADY),
    .stream_in_TDATA(stream_in_TDATA),
    .stream_in_TKEEP(stream_in_TKEEP),
    .stream_in_TLAST(stream_in_TLAST),
    .stream_out_TVALID(stream_out_TVALID),
    .stream_out_TREADY(stream_out_TREADY),
    .stream_out_TDATA(stream_out_TDATA),
    .stream_out_TKEEP(stream_out_TKEEP),
    .stream_out_TLAST(stream_out_TLAST)
  );
endmodule
