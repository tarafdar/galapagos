// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:hls:fireWall64:1.0
// IP Revision: 1706301907

(* X_CORE_INFO = "fireWall64,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "pr_fireWall_inst_0,fireWall64,{}" *)
(* CORE_GENERATION_INFO = "pr_fireWall_inst_0,fireWall64,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=fireWall64,x_ipVersion=1.0,x_ipCoreRevision=1706301907,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module pr_fireWall_inst_0 (
  dest_out_V_ap_vld,
  match_out_V_ap_vld,
  ap_clk,
  ap_rst_n,
  eth_address_V,
  stream_in_TVALID,
  stream_in_TREADY,
  stream_in_TDATA,
  stream_in_TLAST,
  stream_out_TVALID,
  stream_out_TREADY,
  stream_out_TDATA,
  stream_out_TLAST,
  stream_out_TDEST,
  observedAddress_out_V,
  dest_out_V,
  match_out_V
);

output wire dest_out_V_ap_vld;
output wire match_out_V_ap_vld;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 eth_address_V DATA" *)
input wire [47 : 0] eth_address_V;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TVALID" *)
input wire stream_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TREADY" *)
output wire stream_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDATA" *)
input wire [63 : 0] stream_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TLAST" *)
input wire [0 : 0] stream_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TVALID" *)
output wire stream_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TREADY" *)
input wire stream_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDATA" *)
output wire [63 : 0] stream_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TLAST" *)
output wire [0 : 0] stream_out_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDEST" *)
output wire [7 : 0] stream_out_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 observedAddress_out_V DATA" *)
input wire [47 : 0] observedAddress_out_V;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_out_V DATA" *)
output wire [15 : 0] dest_out_V;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match_out_V DATA" *)
output wire [0 : 0] match_out_V;

  fireWall64 inst (
    .dest_out_V_ap_vld(dest_out_V_ap_vld),
    .match_out_V_ap_vld(match_out_V_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .eth_address_V(eth_address_V),
    .stream_in_TVALID(stream_in_TVALID),
    .stream_in_TREADY(stream_in_TREADY),
    .stream_in_TDATA(stream_in_TDATA),
    .stream_in_TLAST(stream_in_TLAST),
    .stream_out_TVALID(stream_out_TVALID),
    .stream_out_TREADY(stream_out_TREADY),
    .stream_out_TDATA(stream_out_TDATA),
    .stream_out_TLAST(stream_out_TLAST),
    .stream_out_TDEST(stream_out_TDEST),
    .observedAddress_out_V(observedAddress_out_V),
    .dest_out_V(dest_out_V),
    .match_out_V(match_out_V)
  );
endmodule
