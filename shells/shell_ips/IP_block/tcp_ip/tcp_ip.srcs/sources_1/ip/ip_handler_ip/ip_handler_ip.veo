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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ip_handler_ip your_instance_name (
  .s_axis_raw_TVALID(s_axis_raw_TVALID),    // input wire s_axis_raw_TVALID
  .s_axis_raw_TREADY(s_axis_raw_TREADY),    // output wire s_axis_raw_TREADY
  .s_axis_raw_TDATA(s_axis_raw_TDATA),      // input wire [63 : 0] s_axis_raw_TDATA
  .s_axis_raw_TKEEP(s_axis_raw_TKEEP),      // input wire [7 : 0] s_axis_raw_TKEEP
  .s_axis_raw_TLAST(s_axis_raw_TLAST),      // input wire [0 : 0] s_axis_raw_TLAST
  .m_axis_ARP_TVALID(m_axis_ARP_TVALID),    // output wire m_axis_ARP_TVALID
  .m_axis_ARP_TREADY(m_axis_ARP_TREADY),    // input wire m_axis_ARP_TREADY
  .m_axis_ARP_TDATA(m_axis_ARP_TDATA),      // output wire [63 : 0] m_axis_ARP_TDATA
  .m_axis_ARP_TKEEP(m_axis_ARP_TKEEP),      // output wire [7 : 0] m_axis_ARP_TKEEP
  .m_axis_ARP_TLAST(m_axis_ARP_TLAST),      // output wire [0 : 0] m_axis_ARP_TLAST
  .m_axis_ICMP_TVALID(m_axis_ICMP_TVALID),  // output wire m_axis_ICMP_TVALID
  .m_axis_ICMP_TREADY(m_axis_ICMP_TREADY),  // input wire m_axis_ICMP_TREADY
  .m_axis_ICMP_TDATA(m_axis_ICMP_TDATA),    // output wire [63 : 0] m_axis_ICMP_TDATA
  .m_axis_ICMP_TKEEP(m_axis_ICMP_TKEEP),    // output wire [7 : 0] m_axis_ICMP_TKEEP
  .m_axis_ICMP_TLAST(m_axis_ICMP_TLAST),    // output wire [0 : 0] m_axis_ICMP_TLAST
  .m_axis_UDP_TVALID(m_axis_UDP_TVALID),    // output wire m_axis_UDP_TVALID
  .m_axis_UDP_TREADY(m_axis_UDP_TREADY),    // input wire m_axis_UDP_TREADY
  .m_axis_UDP_TDATA(m_axis_UDP_TDATA),      // output wire [63 : 0] m_axis_UDP_TDATA
  .m_axis_UDP_TKEEP(m_axis_UDP_TKEEP),      // output wire [7 : 0] m_axis_UDP_TKEEP
  .m_axis_UDP_TLAST(m_axis_UDP_TLAST),      // output wire [0 : 0] m_axis_UDP_TLAST
  .m_axis_TCP_TVALID(m_axis_TCP_TVALID),    // output wire m_axis_TCP_TVALID
  .m_axis_TCP_TREADY(m_axis_TCP_TREADY),    // input wire m_axis_TCP_TREADY
  .m_axis_TCP_TDATA(m_axis_TCP_TDATA),      // output wire [63 : 0] m_axis_TCP_TDATA
  .m_axis_TCP_TKEEP(m_axis_TCP_TKEEP),      // output wire [7 : 0] m_axis_TCP_TKEEP
  .m_axis_TCP_TLAST(m_axis_TCP_TLAST),      // output wire [0 : 0] m_axis_TCP_TLAST
  .myIpAddress_V(myIpAddress_V),            // input wire [31 : 0] myIpAddress_V
  .ap_clk(ap_clk),                          // input wire ap_clk
  .ap_rst_n(ap_rst_n)                      // input wire ap_rst_n
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

