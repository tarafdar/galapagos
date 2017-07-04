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


// IP VLNV: xilinx.com:hls:packetFormatter_hardcode_64:1.0
// IP Revision: 1706301910

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module pr_packetFormatter_inst_4_0 (
  ap_clk,
  ap_rst_n,
  packetIn_TVALID,
  packetIn_TREADY,
  packetIn_TDATA,
  packetIn_TKEEP,
  packetIn_TLAST,
  packetIn_TDEST,
  eth_dst_V,
  eth_src_V,
  packetOut_TVALID,
  packetOut_TREADY,
  packetOut_TDATA,
  packetOut_TKEEP,
  packetOut_TLAST
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TVALID" *)
input wire packetIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TREADY" *)
output wire packetIn_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TDATA" *)
input wire [63 : 0] packetIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TKEEP" *)
input wire [7 : 0] packetIn_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TLAST" *)
input wire [0 : 0] packetIn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TDEST" *)
input wire [7 : 0] packetIn_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 eth_dst_V DATA" *)
input wire [47 : 0] eth_dst_V;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 eth_src_V DATA" *)
input wire [47 : 0] eth_src_V;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TVALID" *)
output wire packetOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TREADY" *)
input wire packetOut_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TDATA" *)
output wire [63 : 0] packetOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TKEEP" *)
output wire [7 : 0] packetOut_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TLAST" *)
output wire [0 : 0] packetOut_TLAST;

  packetFormatter_hardcode_64 inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .packetIn_TVALID(packetIn_TVALID),
    .packetIn_TREADY(packetIn_TREADY),
    .packetIn_TDATA(packetIn_TDATA),
    .packetIn_TKEEP(packetIn_TKEEP),
    .packetIn_TLAST(packetIn_TLAST),
    .packetIn_TDEST(packetIn_TDEST),
    .eth_dst_V(eth_dst_V),
    .eth_src_V(eth_src_V),
    .packetOut_TVALID(packetOut_TVALID),
    .packetOut_TREADY(packetOut_TREADY),
    .packetOut_TDATA(packetOut_TDATA),
    .packetOut_TKEEP(packetOut_TKEEP),
    .packetOut_TLAST(packetOut_TLAST)
  );
endmodule
