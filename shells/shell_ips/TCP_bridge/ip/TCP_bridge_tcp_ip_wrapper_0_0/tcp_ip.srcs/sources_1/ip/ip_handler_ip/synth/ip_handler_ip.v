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


// IP VLNV: ethz.systems:hls:ip_handler:1.2
// IP Revision: 1804061221

(* X_CORE_INFO = "ip_handler,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "ip_handler_ip,ip_handler,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ip_handler_ip (
  s_axis_raw_TVALID,
  s_axis_raw_TREADY,
  s_axis_raw_TDATA,
  s_axis_raw_TKEEP,
  s_axis_raw_TLAST,
  m_axis_ARP_TVALID,
  m_axis_ARP_TREADY,
  m_axis_ARP_TDATA,
  m_axis_ARP_TKEEP,
  m_axis_ARP_TLAST,
  m_axis_ICMP_TVALID,
  m_axis_ICMP_TREADY,
  m_axis_ICMP_TDATA,
  m_axis_ICMP_TKEEP,
  m_axis_ICMP_TLAST,
  m_axis_UDP_TVALID,
  m_axis_UDP_TREADY,
  m_axis_UDP_TDATA,
  m_axis_UDP_TKEEP,
  m_axis_UDP_TLAST,
  m_axis_TCP_TVALID,
  m_axis_TCP_TREADY,
  m_axis_TCP_TDATA,
  m_axis_TCP_TKEEP,
  m_axis_TCP_TLAST,
  myIpAddress_V,
  ap_clk,
  ap_rst_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_raw TVALID" *)
input wire s_axis_raw_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_raw TREADY" *)
output wire s_axis_raw_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_raw TDATA" *)
input wire [63 : 0] s_axis_raw_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_raw TKEEP" *)
input wire [7 : 0] s_axis_raw_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_raw, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immed\
iate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_raw TLAST" *)
input wire [0 : 0] s_axis_raw_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ARP TVALID" *)
output wire m_axis_ARP_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ARP TREADY" *)
input wire m_axis_ARP_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ARP TDATA" *)
output wire [63 : 0] m_axis_ARP_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ARP TKEEP" *)
output wire [7 : 0] m_axis_ARP_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ARP, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immed\
iate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ARP TLAST" *)
output wire [0 : 0] m_axis_ARP_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ICMP TVALID" *)
output wire m_axis_ICMP_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ICMP TREADY" *)
input wire m_axis_ICMP_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ICMP TDATA" *)
output wire [63 : 0] m_axis_ICMP_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ICMP TKEEP" *)
output wire [7 : 0] m_axis_ICMP_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ICMP, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type imme\
diate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ICMP TLAST" *)
output wire [0 : 0] m_axis_ICMP_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_UDP TVALID" *)
output wire m_axis_UDP_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_UDP TREADY" *)
input wire m_axis_UDP_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_UDP TDATA" *)
output wire [63 : 0] m_axis_UDP_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_UDP TKEEP" *)
output wire [7 : 0] m_axis_UDP_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_UDP, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immed\
iate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_UDP TLAST" *)
output wire [0 : 0] m_axis_UDP_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_TCP TVALID" *)
output wire m_axis_TCP_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_TCP TREADY" *)
input wire m_axis_TCP_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_TCP TDATA" *)
output wire [63 : 0] m_axis_TCP_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_TCP TKEEP" *)
output wire [7 : 0] m_axis_TCP_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_TCP, SIGNAL_SET 00011011, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immed\
iate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_TCP TLAST" *)
output wire [0 : 0] m_axis_TCP_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME myIpAddress_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}}\
 value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 myIpAddress_V DATA" *)
input wire [31 : 0] myIpAddress_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axis_raw:m_axis_ARP:m_axis_ICMP:m_axis_UDP:m_axis_TCP, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, F\
REQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;

  ip_handler inst (
    .s_axis_raw_TVALID(s_axis_raw_TVALID),
    .s_axis_raw_TREADY(s_axis_raw_TREADY),
    .s_axis_raw_TDATA(s_axis_raw_TDATA),
    .s_axis_raw_TKEEP(s_axis_raw_TKEEP),
    .s_axis_raw_TLAST(s_axis_raw_TLAST),
    .m_axis_ARP_TVALID(m_axis_ARP_TVALID),
    .m_axis_ARP_TREADY(m_axis_ARP_TREADY),
    .m_axis_ARP_TDATA(m_axis_ARP_TDATA),
    .m_axis_ARP_TKEEP(m_axis_ARP_TKEEP),
    .m_axis_ARP_TLAST(m_axis_ARP_TLAST),
    .m_axis_ICMP_TVALID(m_axis_ICMP_TVALID),
    .m_axis_ICMP_TREADY(m_axis_ICMP_TREADY),
    .m_axis_ICMP_TDATA(m_axis_ICMP_TDATA),
    .m_axis_ICMP_TKEEP(m_axis_ICMP_TKEEP),
    .m_axis_ICMP_TLAST(m_axis_ICMP_TLAST),
    .m_axis_UDP_TVALID(m_axis_UDP_TVALID),
    .m_axis_UDP_TREADY(m_axis_UDP_TREADY),
    .m_axis_UDP_TDATA(m_axis_UDP_TDATA),
    .m_axis_UDP_TKEEP(m_axis_UDP_TKEEP),
    .m_axis_UDP_TLAST(m_axis_UDP_TLAST),
    .m_axis_TCP_TVALID(m_axis_TCP_TVALID),
    .m_axis_TCP_TREADY(m_axis_TCP_TREADY),
    .m_axis_TCP_TDATA(m_axis_TCP_TDATA),
    .m_axis_TCP_TKEEP(m_axis_TCP_TKEEP),
    .m_axis_TCP_TLAST(m_axis_TCP_TLAST),
    .myIpAddress_V(myIpAddress_V),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n)
  );
endmodule
