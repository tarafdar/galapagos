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


// IP VLNV: xilinx.com:hls:TCP_output_bridge:1.0
// IP Revision: 1806121957

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module TCP_bridge_TCP_output_bridge_0_0 (
  ip_table_V_Clk_A,
  ip_table_V_Rst_A,
  ip_table_V_EN_A,
  ip_table_V_WEN_A,
  ip_table_V_Addr_A,
  ip_table_V_Dout_A,
  ip_table_V_Din_A,
  ip_table_V_Clk_B,
  ip_table_V_Rst_B,
  ip_table_V_EN_B,
  ip_table_V_WEN_B,
  ip_table_V_Addr_B,
  ip_table_V_Dout_B,
  ip_table_V_Din_B,
  m_axis_listen_port_TVALID,
  m_axis_listen_port_TREADY,
  m_axis_listen_port_TDATA,
  m_axis_open_connection_TVALID,
  m_axis_open_connection_TREADY,
  m_axis_open_connection_TDATA,
  m_axis_read_package_TVALID,
  m_axis_read_package_TREADY,
  m_axis_read_package_TDATA,
  m_axis_tx_data_TVALID,
  m_axis_tx_data_TREADY,
  m_axis_tx_data_TDATA,
  m_axis_tx_data_TKEEP,
  m_axis_tx_data_TLAST,
  m_axis_tx_metadata_TVALID,
  m_axis_tx_metadata_TREADY,
  m_axis_tx_metadata_TDATA,
  s_axis_listen_port_status_TVALID,
  s_axis_listen_port_status_TREADY,
  s_axis_listen_port_status_TDATA,
  s_axis_notifications_TVALID,
  s_axis_notifications_TREADY,
  s_axis_notifications_TDATA,
  s_axis_open_status_TVALID,
  s_axis_open_status_TREADY,
  s_axis_open_status_TDATA,
  s_axis_rx_data_TVALID,
  s_axis_rx_data_TREADY,
  s_axis_rx_data_TDATA,
  s_axis_rx_data_TKEEP,
  s_axis_rx_data_TLAST,
  s_axis_rx_metadata_TVALID,
  s_axis_rx_metadata_TREADY,
  s_axis_rx_metadata_TDATA,
  s_axis_tx_status_TVALID,
  s_axis_tx_status_TREADY,
  s_axis_tx_status_TDATA,
  stream_in_V_TVALID,
  stream_in_V_TREADY,
  stream_in_V_TDATA,
  stream_in_V_TDEST,
  stream_in_V_TLAST,
  stream_in_V_TKEEP,
  stream_out_V_TVALID,
  stream_out_V_TREADY,
  stream_out_V_TDATA,
  stream_out_V_TDEST,
  stream_out_V_TLAST,
  stream_out_V_TKEEP,
  aclk,
  aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA CLK" *)
output wire ip_table_V_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA RST" *)
output wire ip_table_V_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA EN" *)
output wire ip_table_V_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA WE" *)
output wire [3 : 0] ip_table_V_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA ADDR" *)
output wire [31 : 0] ip_table_V_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA DIN" *)
output wire [31 : 0] ip_table_V_Dout_A;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ip_table_V_PORTA, MEM_WIDTH 32, MEM_SIZE 1024, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA DOUT" *)
input wire [31 : 0] ip_table_V_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB CLK" *)
output wire ip_table_V_Clk_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB RST" *)
output wire ip_table_V_Rst_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB EN" *)
output wire ip_table_V_EN_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB WE" *)
output wire [3 : 0] ip_table_V_WEN_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB ADDR" *)
output wire [31 : 0] ip_table_V_Addr_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB DIN" *)
output wire [31 : 0] ip_table_V_Dout_B;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ip_table_V_PORTB, MEM_WIDTH 32, MEM_SIZE 1024, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB DOUT" *)
input wire [31 : 0] ip_table_V_Din_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port TVALID" *)
output wire m_axis_listen_port_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port TREADY" *)
input wire m_axis_listen_port_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_listen_port, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen\
cy {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port TDATA" *)
output wire [15 : 0] m_axis_listen_port_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_connection TVALID" *)
output wire m_axis_open_connection_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_connection TREADY" *)
input wire m_axis_open_connection_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_open_connection, TDATA_NUM_BYTES 6, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA_WIDTH 48}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TR\
EADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_connection TDATA" *)
output wire [47 : 0] m_axis_open_connection_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_read_package TVALID" *)
output wire m_axis_read_package_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_read_package TREADY" *)
input wire m_axis_read_package_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_read_package, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA_WIDTH 32}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREAD\
Y 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_read_package TDATA" *)
output wire [31 : 0] m_axis_read_package_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TVALID" *)
output wire m_axis_tx_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TREADY" *)
input wire m_axis_tx_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TDATA" *)
output wire [63 : 0] m_axis_tx_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TKEEP" *)
output wire [7 : 0] m_axis_tx_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {\
} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TLAST" *)
output wire [0 : 0] m_axis_tx_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TVALID" *)
output wire m_axis_tx_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TREADY" *)
input wire m_axis_tx_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_metadata, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA_WIDTH 32}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY\
 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TDATA" *)
output wire [31 : 0] m_axis_tx_metadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TVALID" *)
input wire s_axis_listen_port_status_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TREADY" *)
output wire s_axis_listen_port_status_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_listen_port_status, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TDATA" *)
input wire [7 : 0] s_axis_listen_port_status_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_notifications TVALID" *)
input wire s_axis_notifications_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_notifications TREADY" *)
output wire s_axis_notifications_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_notifications, TDATA_NUM_BYTES 11, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_notifications TDATA" *)
input wire [87 : 0] s_axis_notifications_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_status TVALID" *)
input wire s_axis_open_status_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_status TREADY" *)
output wire s_axis_open_status_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_open_status, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_status TDATA" *)
input wire [23 : 0] s_axis_open_status_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TVALID" *)
input wire s_axis_rx_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TREADY" *)
output wire s_axis_rx_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TDATA" *)
input wire [63 : 0] s_axis_rx_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TKEEP" *)
input wire [7 : 0] s_axis_rx_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TLAST" *)
input wire [0 : 0] s_axis_rx_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TVALID" *)
input wire s_axis_rx_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TREADY" *)
output wire s_axis_rx_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx_metadata, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TDATA" *)
input wire [15 : 0] s_axis_rx_metadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_status TVALID" *)
input wire s_axis_tx_status_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_status TREADY" *)
output wire s_axis_tx_status_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_status, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_status TDATA" *)
input wire [23 : 0] s_axis_tx_status_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in_V TVALID" *)
input wire stream_in_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in_V TREADY" *)
output wire stream_in_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in_V TDATA" *)
input wire [63 : 0] stream_in_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in_V TDEST" *)
input wire [15 : 0] stream_in_V_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in_V TLAST" *)
input wire [0 : 0] stream_in_V_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_in_V, TDATA_NUM_BYTES 8, TDEST_WIDTH 16, TUSER_WIDTH 0, LAYERED_METADATA undef, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in_V TKEEP" *)
input wire [7 : 0] stream_in_V_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TVALID" *)
output wire stream_out_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TREADY" *)
input wire stream_out_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TDATA" *)
output wire [63 : 0] stream_out_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TDEST" *)
output wire [15 : 0] stream_out_V_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TLAST" *)
output wire [0 : 0] stream_out_V_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out_V, TDATA_NUM_BYTES 8, TDEST_WIDTH 16, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediat\
e dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TKEEP" *)
output wire [7 : 0] stream_out_V_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_listen_port:m_axis_open_connection:m_axis_read_package:m_axis_tx_data:m_axis_tx_metadata:s_axis_listen_port_status:s_axis_notifications:s_axis_open_status:s_axis_rx_data:s_axis_rx_metadata:s_axis_tx_status:stream_in_V:stream_out_V, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  tcp_output_bridge_top inst (
    .ip_table_V_Clk_A(ip_table_V_Clk_A),
    .ip_table_V_Rst_A(ip_table_V_Rst_A),
    .ip_table_V_EN_A(ip_table_V_EN_A),
    .ip_table_V_WEN_A(ip_table_V_WEN_A),
    .ip_table_V_Addr_A(ip_table_V_Addr_A),
    .ip_table_V_Dout_A(ip_table_V_Dout_A),
    .ip_table_V_Din_A(ip_table_V_Din_A),
    .ip_table_V_Clk_B(ip_table_V_Clk_B),
    .ip_table_V_Rst_B(ip_table_V_Rst_B),
    .ip_table_V_EN_B(ip_table_V_EN_B),
    .ip_table_V_WEN_B(ip_table_V_WEN_B),
    .ip_table_V_Addr_B(ip_table_V_Addr_B),
    .ip_table_V_Dout_B(ip_table_V_Dout_B),
    .ip_table_V_Din_B(ip_table_V_Din_B),
    .m_axis_listen_port_TVALID(m_axis_listen_port_TVALID),
    .m_axis_listen_port_TREADY(m_axis_listen_port_TREADY),
    .m_axis_listen_port_TDATA(m_axis_listen_port_TDATA),
    .m_axis_open_connection_TVALID(m_axis_open_connection_TVALID),
    .m_axis_open_connection_TREADY(m_axis_open_connection_TREADY),
    .m_axis_open_connection_TDATA(m_axis_open_connection_TDATA),
    .m_axis_read_package_TVALID(m_axis_read_package_TVALID),
    .m_axis_read_package_TREADY(m_axis_read_package_TREADY),
    .m_axis_read_package_TDATA(m_axis_read_package_TDATA),
    .m_axis_tx_data_TVALID(m_axis_tx_data_TVALID),
    .m_axis_tx_data_TREADY(m_axis_tx_data_TREADY),
    .m_axis_tx_data_TDATA(m_axis_tx_data_TDATA),
    .m_axis_tx_data_TKEEP(m_axis_tx_data_TKEEP),
    .m_axis_tx_data_TLAST(m_axis_tx_data_TLAST),
    .m_axis_tx_metadata_TVALID(m_axis_tx_metadata_TVALID),
    .m_axis_tx_metadata_TREADY(m_axis_tx_metadata_TREADY),
    .m_axis_tx_metadata_TDATA(m_axis_tx_metadata_TDATA),
    .s_axis_listen_port_status_TVALID(s_axis_listen_port_status_TVALID),
    .s_axis_listen_port_status_TREADY(s_axis_listen_port_status_TREADY),
    .s_axis_listen_port_status_TDATA(s_axis_listen_port_status_TDATA),
    .s_axis_notifications_TVALID(s_axis_notifications_TVALID),
    .s_axis_notifications_TREADY(s_axis_notifications_TREADY),
    .s_axis_notifications_TDATA(s_axis_notifications_TDATA),
    .s_axis_open_status_TVALID(s_axis_open_status_TVALID),
    .s_axis_open_status_TREADY(s_axis_open_status_TREADY),
    .s_axis_open_status_TDATA(s_axis_open_status_TDATA),
    .s_axis_rx_data_TVALID(s_axis_rx_data_TVALID),
    .s_axis_rx_data_TREADY(s_axis_rx_data_TREADY),
    .s_axis_rx_data_TDATA(s_axis_rx_data_TDATA),
    .s_axis_rx_data_TKEEP(s_axis_rx_data_TKEEP),
    .s_axis_rx_data_TLAST(s_axis_rx_data_TLAST),
    .s_axis_rx_metadata_TVALID(s_axis_rx_metadata_TVALID),
    .s_axis_rx_metadata_TREADY(s_axis_rx_metadata_TREADY),
    .s_axis_rx_metadata_TDATA(s_axis_rx_metadata_TDATA),
    .s_axis_tx_status_TVALID(s_axis_tx_status_TVALID),
    .s_axis_tx_status_TREADY(s_axis_tx_status_TREADY),
    .s_axis_tx_status_TDATA(s_axis_tx_status_TDATA),
    .stream_in_V_TVALID(stream_in_V_TVALID),
    .stream_in_V_TREADY(stream_in_V_TREADY),
    .stream_in_V_TDATA(stream_in_V_TDATA),
    .stream_in_V_TDEST(stream_in_V_TDEST),
    .stream_in_V_TLAST(stream_in_V_TLAST),
    .stream_in_V_TKEEP(stream_in_V_TKEEP),
    .stream_out_V_TVALID(stream_out_V_TVALID),
    .stream_out_V_TREADY(stream_out_V_TREADY),
    .stream_out_V_TDATA(stream_out_V_TDATA),
    .stream_out_V_TDEST(stream_out_V_TDEST),
    .stream_out_V_TLAST(stream_out_V_TLAST),
    .stream_out_V_TKEEP(stream_out_V_TKEEP),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
