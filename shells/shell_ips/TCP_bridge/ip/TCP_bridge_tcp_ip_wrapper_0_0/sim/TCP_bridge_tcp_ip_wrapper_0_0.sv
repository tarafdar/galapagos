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


// IP VLNV: dlyma.org:dlyma:tcp_ip_wrapper:1.4
// IP Revision: 45

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module TCP_bridge_tcp_ip_wrapper_0_0 (
  aclk,
  aresetn,
  myMacAddress,
  myIpAddress,
  myGateway,
  mySubnet,
  regSessionCount,
  relSessionCount,
  AXI_M_Stream_TVALID,
  AXI_M_Stream_TREADY,
  AXI_M_Stream_TDATA,
  AXI_M_Stream_TKEEP,
  AXI_M_Stream_TLAST,
  AXI_S_Stream_TVALID,
  AXI_S_Stream_TREADY,
  AXI_S_Stream_TDATA,
  AXI_S_Stream_TKEEP,
  AXI_S_Stream_TLAST,
  m_axis_listen_port_status_TVALID,
  m_axis_listen_port_status_TREADY,
  m_axis_listen_port_status_TDATA,
  m_axis_notifications_TVALID,
  m_axis_notifications_TREADY,
  m_axis_notifications_TDATA,
  m_axis_open_status_TVALID,
  m_axis_open_status_TREADY,
  m_axis_open_status_TDATA,
  m_axis_rx_data_TVALID,
  m_axis_rx_data_TREADY,
  m_axis_rx_data_TDATA,
  m_axis_rx_data_TKEEP,
  m_axis_rx_data_TLAST,
  m_axis_rx_metadata_TVALID,
  m_axis_rx_metadata_TREADY,
  m_axis_rx_metadata_TDATA,
  m_axis_tx_status_TVALID,
  m_axis_tx_status_TREADY,
  m_axis_tx_status_TDATA,
  s_axis_listen_port_TVALID,
  s_axis_listen_port_TREADY,
  s_axis_listen_port_TDATA,
  s_axis_close_connection_TVALID,
  s_axis_close_connection_TREADY,
  s_axis_close_connection_TDATA,
  s_axis_open_connection_TVALID,
  s_axis_open_connection_TREADY,
  s_axis_open_connection_TDATA,
  s_axis_read_package_TVALID,
  s_axis_read_package_TREADY,
  s_axis_read_package_TDATA,
  s_axis_tx_data_TVALID,
  s_axis_tx_data_TREADY,
  s_axis_tx_data_TDATA,
  s_axis_tx_data_TKEEP,
  s_axis_tx_data_TLAST,
  s_axis_tx_metadata_TVALID,
  s_axis_tx_metadata_TREADY,
  s_axis_tx_metadata_TDATA,
  M00_AXI_AWID,
  M00_AXI_AWADDR,
  M00_AXI_AWLEN,
  M00_AXI_AWSIZE,
  M00_AXI_AWBURST,
  M00_AXI_AWLOCK,
  M00_AXI_AWCACHE,
  M00_AXI_AWPROT,
  M00_AXI_AWQOS,
  M00_AXI_AWVALID,
  M00_AXI_AWREADY,
  M00_AXI_WDATA,
  M00_AXI_WSTRB,
  M00_AXI_WLAST,
  M00_AXI_WVALID,
  M00_AXI_WREADY,
  M00_AXI_BID,
  M00_AXI_BRESP,
  M00_AXI_BVALID,
  M00_AXI_BREADY,
  M00_AXI_ARID,
  M00_AXI_ARADDR,
  M00_AXI_ARLEN,
  M00_AXI_ARSIZE,
  M00_AXI_ARBURST,
  M00_AXI_ARLOCK,
  M00_AXI_ARCACHE,
  M00_AXI_ARPROT,
  M00_AXI_ARQOS,
  M00_AXI_ARVALID,
  M00_AXI_ARREADY,
  M00_AXI_RID,
  M00_AXI_RDATA,
  M00_AXI_RRESP,
  M00_AXI_RLAST,
  M00_AXI_RVALID,
  M00_AXI_RREADY
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M00_AXI:AXI_M_Stream:AXI_S_Stream:app2udp:app2udpTxLengthOut_V_V:app2udpTxMetadataOut_V:app2udp_requestPortOpenOut_V:m_axis_listen_port_status:m_axis_notifications:m_axis_open_status:m_axis_rx_data:m_axis_rx_metadata:m_axis_tx_status:s_axis_close_connection:s_axis_listen_port:s_axis_open_connection:s_axis_read_package:s_axis_tx_data:s_axis_tx_metadata:udp2appRxDataIn:udp2appRxMetadataIn_V:udp2app_portOpenReplyIn_V_V, ASSOCIATED_RESET aresetn, FREQ_HZ 1000\
00000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire [47 : 0] myMacAddress;
input wire [31 : 0] myIpAddress;
input wire [31 : 0] myGateway;
input wire [31 : 0] mySubnet;
output wire [15 : 0] regSessionCount;
output wire [15 : 0] relSessionCount;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_M_Stream TVALID" *)
output wire AXI_M_Stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_M_Stream TREADY" *)
input wire AXI_M_Stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_M_Stream TDATA" *)
output wire [63 : 0] AXI_M_Stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_M_Stream TKEEP" *)
output wire [7 : 0] AXI_M_Stream_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_M_Stream, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_M_Stream TLAST" *)
output wire AXI_M_Stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_S_Stream TVALID" *)
input wire AXI_S_Stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_S_Stream TREADY" *)
output wire AXI_S_Stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_S_Stream TDATA" *)
input wire [63 : 0] AXI_S_Stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_S_Stream TKEEP" *)
input wire [7 : 0] AXI_S_Stream_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_S_Stream, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_S_Stream TLAST" *)
input wire AXI_S_Stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port_status TVALID" *)
output wire m_axis_listen_port_status_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port_status TREADY" *)
input wire m_axis_listen_port_status_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_listen_port_status, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port_status TDATA" *)
output wire [7 : 0] m_axis_listen_port_status_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_notifications TVALID" *)
output wire m_axis_notifications_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_notifications TREADY" *)
input wire m_axis_notifications_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_notifications, TDATA_NUM_BYTES 11, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_notifications TDATA" *)
output wire [87 : 0] m_axis_notifications_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_status TVALID" *)
output wire m_axis_open_status_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_status TREADY" *)
input wire m_axis_open_status_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_open_status, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_status TDATA" *)
output wire [23 : 0] m_axis_open_status_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data TVALID" *)
output wire m_axis_rx_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data TREADY" *)
input wire m_axis_rx_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data TDATA" *)
output wire [63 : 0] m_axis_rx_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data TKEEP" *)
output wire [7 : 0] m_axis_rx_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data TLAST" *)
output wire m_axis_rx_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_metadata TVALID" *)
output wire m_axis_rx_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_metadata TREADY" *)
input wire m_axis_rx_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx_metadata, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_metadata TDATA" *)
output wire [15 : 0] m_axis_rx_metadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_status TVALID" *)
output wire m_axis_tx_status_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_status TREADY" *)
input wire m_axis_tx_status_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_status, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_status TDATA" *)
output wire [23 : 0] m_axis_tx_status_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port TVALID" *)
input wire s_axis_listen_port_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port TREADY" *)
output wire s_axis_listen_port_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_listen_port, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attr\
ibs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port TDATA" *)
input wire [15 : 0] s_axis_listen_port_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_close_connection TVALID" *)
input wire s_axis_close_connection_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_close_connection TREADY" *)
output wire s_axis_close_connection_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_close_connection, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_close_connection TDATA" *)
input wire [15 : 0] s_axis_close_connection_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_connection TVALID" *)
input wire s_axis_open_connection_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_connection TREADY" *)
output wire s_axis_open_connection_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_open_connection, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {\
attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA_WIDTH 48}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_connection TDATA" *)
input wire [47 : 0] s_axis_open_connection_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_read_package TVALID" *)
input wire s_axis_read_package_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_read_package TREADY" *)
output wire s_axis_read_package_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_read_package, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {att\
ribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA_WIDTH 32}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_read_package TDATA" *)
input wire [31 : 0] s_axis_read_package_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data TVALID" *)
input wire s_axis_tx_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data TREADY" *)
output wire s_axis_tx_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data TDATA" *)
input wire [63 : 0] s_axis_tx_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data TKEEP" *)
input wire [7 : 0] s_axis_tx_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs \
{resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data TLAST" *)
input wire s_axis_tx_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_metadata TVALID" *)
input wire s_axis_tx_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_metadata TREADY" *)
output wire s_axis_tx_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_metadata, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TCP_bridge_aclk_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attr\
ibs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA_WIDTH 32}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_metadata TDATA" *)
input wire [31 : 0] s_axis_tx_metadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *)
output wire [3 : 0] M00_AXI_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
output wire [31 : 0] M00_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *)
output wire [7 : 0] M00_AXI_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *)
output wire [2 : 0] M00_AXI_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *)
output wire [1 : 0] M00_AXI_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *)
output wire M00_AXI_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *)
output wire [3 : 0] M00_AXI_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output wire [2 : 0] M00_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *)
output wire [3 : 0] M00_AXI_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output wire M00_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input wire M00_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output wire [63 : 0] M00_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output wire [7 : 0] M00_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *)
output wire M00_AXI_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output wire M00_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input wire M00_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *)
input wire [3 : 0] M00_AXI_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input wire [1 : 0] M00_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input wire M00_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output wire M00_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *)
output wire [3 : 0] M00_AXI_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output wire [31 : 0] M00_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *)
output wire [7 : 0] M00_AXI_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *)
output wire [2 : 0] M00_AXI_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *)
output wire [1 : 0] M00_AXI_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *)
output wire M00_AXI_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *)
output wire [3 : 0] M00_AXI_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output wire [2 : 0] M00_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *)
output wire [3 : 0] M00_AXI_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output wire M00_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input wire M00_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *)
input wire [3 : 0] M00_AXI_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input wire [63 : 0] M00_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input wire [1 : 0] M00_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *)
input wire M00_AXI_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input wire M00_AXI_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER\
_BITS_PER_BYTE 0, CLK_DOMAIN TCP_bridge_aclk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output wire M00_AXI_RREADY;

  tcp_ip_wrapper_wrapper #(
    .TCP_ENABLE(1'B1),
    .UDP_ENABLE(1'B0)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .myMacAddress(myMacAddress),
    .myIpAddress(myIpAddress),
    .myGateway(myGateway),
    .mySubnet(mySubnet),
    .regSessionCount(regSessionCount),
    .relSessionCount(relSessionCount),
    .AXI_M_Stream_TVALID(AXI_M_Stream_TVALID),
    .AXI_M_Stream_TREADY(AXI_M_Stream_TREADY),
    .AXI_M_Stream_TDATA(AXI_M_Stream_TDATA),
    .AXI_M_Stream_TKEEP(AXI_M_Stream_TKEEP),
    .AXI_M_Stream_TLAST(AXI_M_Stream_TLAST),
    .AXI_S_Stream_TVALID(AXI_S_Stream_TVALID),
    .AXI_S_Stream_TREADY(AXI_S_Stream_TREADY),
    .AXI_S_Stream_TDATA(AXI_S_Stream_TDATA),
    .AXI_S_Stream_TKEEP(AXI_S_Stream_TKEEP),
    .AXI_S_Stream_TLAST(AXI_S_Stream_TLAST),
    .m_axis_listen_port_status_TVALID(m_axis_listen_port_status_TVALID),
    .m_axis_listen_port_status_TREADY(m_axis_listen_port_status_TREADY),
    .m_axis_listen_port_status_TDATA(m_axis_listen_port_status_TDATA),
    .m_axis_notifications_TVALID(m_axis_notifications_TVALID),
    .m_axis_notifications_TREADY(m_axis_notifications_TREADY),
    .m_axis_notifications_TDATA(m_axis_notifications_TDATA),
    .m_axis_open_status_TVALID(m_axis_open_status_TVALID),
    .m_axis_open_status_TREADY(m_axis_open_status_TREADY),
    .m_axis_open_status_TDATA(m_axis_open_status_TDATA),
    .m_axis_rx_data_TVALID(m_axis_rx_data_TVALID),
    .m_axis_rx_data_TREADY(m_axis_rx_data_TREADY),
    .m_axis_rx_data_TDATA(m_axis_rx_data_TDATA),
    .m_axis_rx_data_TKEEP(m_axis_rx_data_TKEEP),
    .m_axis_rx_data_TLAST(m_axis_rx_data_TLAST),
    .m_axis_rx_metadata_TVALID(m_axis_rx_metadata_TVALID),
    .m_axis_rx_metadata_TREADY(m_axis_rx_metadata_TREADY),
    .m_axis_rx_metadata_TDATA(m_axis_rx_metadata_TDATA),
    .m_axis_tx_status_TVALID(m_axis_tx_status_TVALID),
    .m_axis_tx_status_TREADY(m_axis_tx_status_TREADY),
    .m_axis_tx_status_TDATA(m_axis_tx_status_TDATA),
    .s_axis_listen_port_TVALID(s_axis_listen_port_TVALID),
    .s_axis_listen_port_TREADY(s_axis_listen_port_TREADY),
    .s_axis_listen_port_TDATA(s_axis_listen_port_TDATA),
    .s_axis_close_connection_TVALID(s_axis_close_connection_TVALID),
    .s_axis_close_connection_TREADY(s_axis_close_connection_TREADY),
    .s_axis_close_connection_TDATA(s_axis_close_connection_TDATA),
    .s_axis_open_connection_TVALID(s_axis_open_connection_TVALID),
    .s_axis_open_connection_TREADY(s_axis_open_connection_TREADY),
    .s_axis_open_connection_TDATA(s_axis_open_connection_TDATA),
    .s_axis_read_package_TVALID(s_axis_read_package_TVALID),
    .s_axis_read_package_TREADY(s_axis_read_package_TREADY),
    .s_axis_read_package_TDATA(s_axis_read_package_TDATA),
    .s_axis_tx_data_TVALID(s_axis_tx_data_TVALID),
    .s_axis_tx_data_TREADY(s_axis_tx_data_TREADY),
    .s_axis_tx_data_TDATA(s_axis_tx_data_TDATA),
    .s_axis_tx_data_TKEEP(s_axis_tx_data_TKEEP),
    .s_axis_tx_data_TLAST(s_axis_tx_data_TLAST),
    .s_axis_tx_metadata_TVALID(s_axis_tx_metadata_TVALID),
    .s_axis_tx_metadata_TREADY(s_axis_tx_metadata_TREADY),
    .s_axis_tx_metadata_TDATA(s_axis_tx_metadata_TDATA),
    .udp2appRxDataIn_TVALID(),
    .udp2appRxDataIn_TREADY(1'B1),
    .udp2appRxDataIn_TDATA(),
    .udp2appRxDataIn_TLAST(),
    .udp2appRxDataIn_TKEEP(),
    .udp2appRxMetadataIn_V_TVALID(),
    .udp2appRxMetadataIn_V_TREADY(1'B1),
    .udp2appRxMetadataIn_V_TDATA(),
    .app2udp_requestPortOpenOut_V_TVALID(1'B0),
    .app2udp_requestPortOpenOut_V_TREADY(),
    .app2udp_requestPortOpenOut_V_TDATA(16'B0),
    .udp2app_portOpenReplyIn_V_V_TVALID(),
    .udp2app_portOpenReplyIn_V_V_TREADY(1'B1),
    .udp2app_portOpenReplyIn_V_V_TDATA(),
    .app2udp_TVALID(1'B0),
    .app2udp_TREADY(),
    .app2udp_TDATA(64'B0),
    .app2udp_TKEEP(8'B1),
    .app2udp_TLAST(1'B0),
    .app2udpTxMetadataOut_V_TVALID(1'B0),
    .app2udpTxMetadataOut_V_TREADY(),
    .app2udpTxMetadataOut_V_TDATA(96'B0),
    .app2udpTxLengthOut_V_V_TVALID(1'B0),
    .app2udpTxLengthOut_V_V_TREADY(),
    .app2udpTxLengthOut_V_V_TDATA(16'B0),
    .M00_AXI_AWID(M00_AXI_AWID),
    .M00_AXI_AWADDR(M00_AXI_AWADDR),
    .M00_AXI_AWLEN(M00_AXI_AWLEN),
    .M00_AXI_AWSIZE(M00_AXI_AWSIZE),
    .M00_AXI_AWBURST(M00_AXI_AWBURST),
    .M00_AXI_AWLOCK(M00_AXI_AWLOCK),
    .M00_AXI_AWCACHE(M00_AXI_AWCACHE),
    .M00_AXI_AWPROT(M00_AXI_AWPROT),
    .M00_AXI_AWQOS(M00_AXI_AWQOS),
    .M00_AXI_AWVALID(M00_AXI_AWVALID),
    .M00_AXI_AWREADY(M00_AXI_AWREADY),
    .M00_AXI_WDATA(M00_AXI_WDATA),
    .M00_AXI_WSTRB(M00_AXI_WSTRB),
    .M00_AXI_WLAST(M00_AXI_WLAST),
    .M00_AXI_WVALID(M00_AXI_WVALID),
    .M00_AXI_WREADY(M00_AXI_WREADY),
    .M00_AXI_BID(M00_AXI_BID),
    .M00_AXI_BRESP(M00_AXI_BRESP),
    .M00_AXI_BVALID(M00_AXI_BVALID),
    .M00_AXI_BREADY(M00_AXI_BREADY),
    .M00_AXI_ARID(M00_AXI_ARID),
    .M00_AXI_ARADDR(M00_AXI_ARADDR),
    .M00_AXI_ARLEN(M00_AXI_ARLEN),
    .M00_AXI_ARSIZE(M00_AXI_ARSIZE),
    .M00_AXI_ARBURST(M00_AXI_ARBURST),
    .M00_AXI_ARLOCK(M00_AXI_ARLOCK),
    .M00_AXI_ARCACHE(M00_AXI_ARCACHE),
    .M00_AXI_ARPROT(M00_AXI_ARPROT),
    .M00_AXI_ARQOS(M00_AXI_ARQOS),
    .M00_AXI_ARVALID(M00_AXI_ARVALID),
    .M00_AXI_ARREADY(M00_AXI_ARREADY),
    .M00_AXI_RID(M00_AXI_RID),
    .M00_AXI_RDATA(M00_AXI_RDATA),
    .M00_AXI_RRESP(M00_AXI_RRESP),
    .M00_AXI_RLAST(M00_AXI_RLAST),
    .M00_AXI_RVALID(M00_AXI_RVALID),
    .M00_AXI_RREADY(M00_AXI_RREADY)
  );
endmodule
