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


// IP VLNV: ethz.systems:hls:toe:1.6
// IP Revision: 1805031541

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module toe_ip (
  myIpAddress_V,
  regSessionCount_V,
  regSessionCount_V_ap_vld,
  m_axis_listen_port_rsp_TVALID,
  m_axis_listen_port_rsp_TREADY,
  m_axis_listen_port_rsp_TDATA,
  m_axis_notification_TVALID,
  m_axis_notification_TREADY,
  m_axis_notification_TDATA,
  m_axis_open_conn_rsp_TVALID,
  m_axis_open_conn_rsp_TREADY,
  m_axis_open_conn_rsp_TDATA,
  m_axis_rx_data_rsp_TVALID,
  m_axis_rx_data_rsp_TREADY,
  m_axis_rx_data_rsp_TDATA,
  m_axis_rx_data_rsp_TKEEP,
  m_axis_rx_data_rsp_TLAST,
  m_axis_rx_data_rsp_metadata_TVALID,
  m_axis_rx_data_rsp_metadata_TREADY,
  m_axis_rx_data_rsp_metadata_TDATA,
  m_axis_rxread_cmd_TVALID,
  m_axis_rxread_cmd_TREADY,
  m_axis_rxread_cmd_TDATA,
  m_axis_rxwrite_cmd_TVALID,
  m_axis_rxwrite_cmd_TREADY,
  m_axis_rxwrite_cmd_TDATA,
  m_axis_rxwrite_data_TVALID,
  m_axis_rxwrite_data_TREADY,
  m_axis_rxwrite_data_TDATA,
  m_axis_rxwrite_data_TKEEP,
  m_axis_rxwrite_data_TLAST,
  m_axis_session_lup_req_TVALID,
  m_axis_session_lup_req_TREADY,
  m_axis_session_lup_req_TDATA,
  m_axis_session_upd_req_TVALID,
  m_axis_session_upd_req_TREADY,
  m_axis_session_upd_req_TDATA,
  m_axis_tcp_data_TVALID,
  m_axis_tcp_data_TREADY,
  m_axis_tcp_data_TDATA,
  m_axis_tcp_data_TKEEP,
  m_axis_tcp_data_TLAST,
  m_axis_tx_data_rsp_TVALID,
  m_axis_tx_data_rsp_TREADY,
  m_axis_tx_data_rsp_TDATA,
  m_axis_txread_cmd_TVALID,
  m_axis_txread_cmd_TREADY,
  m_axis_txread_cmd_TDATA,
  m_axis_txwrite_cmd_TVALID,
  m_axis_txwrite_cmd_TREADY,
  m_axis_txwrite_cmd_TDATA,
  m_axis_txwrite_data_TVALID,
  m_axis_txwrite_data_TREADY,
  m_axis_txwrite_data_TDATA,
  m_axis_txwrite_data_TKEEP,
  m_axis_txwrite_data_TLAST,
  s_axis_close_conn_req_TVALID,
  s_axis_close_conn_req_TREADY,
  s_axis_close_conn_req_TDATA,
  s_axis_listen_port_req_TVALID,
  s_axis_listen_port_req_TREADY,
  s_axis_listen_port_req_TDATA,
  s_axis_open_conn_req_TVALID,
  s_axis_open_conn_req_TREADY,
  s_axis_open_conn_req_TDATA,
  s_axis_rx_data_req_TVALID,
  s_axis_rx_data_req_TREADY,
  s_axis_rx_data_req_TDATA,
  s_axis_rxread_data_TVALID,
  s_axis_rxread_data_TREADY,
  s_axis_rxread_data_TDATA,
  s_axis_rxread_data_TKEEP,
  s_axis_rxread_data_TLAST,
  s_axis_rxwrite_sts_TVALID,
  s_axis_rxwrite_sts_TREADY,
  s_axis_rxwrite_sts_TDATA,
  s_axis_session_lup_rsp_TVALID,
  s_axis_session_lup_rsp_TREADY,
  s_axis_session_lup_rsp_TDATA,
  s_axis_session_upd_rsp_TVALID,
  s_axis_session_upd_rsp_TREADY,
  s_axis_session_upd_rsp_TDATA,
  s_axis_tcp_data_TVALID,
  s_axis_tcp_data_TREADY,
  s_axis_tcp_data_TDATA,
  s_axis_tcp_data_TKEEP,
  s_axis_tcp_data_TLAST,
  s_axis_tx_data_req_TVALID,
  s_axis_tx_data_req_TREADY,
  s_axis_tx_data_req_TDATA,
  s_axis_tx_data_req_TKEEP,
  s_axis_tx_data_req_TLAST,
  s_axis_tx_data_req_metadata_TVALID,
  s_axis_tx_data_req_metadata_TREADY,
  s_axis_tx_data_req_metadata_TDATA,
  s_axis_txread_data_TVALID,
  s_axis_txread_data_TREADY,
  s_axis_txread_data_TDATA,
  s_axis_txread_data_TKEEP,
  s_axis_txread_data_TLAST,
  s_axis_txwrite_sts_TVALID,
  s_axis_txwrite_sts_TREADY,
  s_axis_txwrite_sts_TDATA,
  aclk,
  aresetn
);

input wire [31 : 0] myIpAddress_V;
output wire [15 : 0] regSessionCount_V;
output wire regSessionCount_V_ap_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port_rsp TVALID" *)
output wire m_axis_listen_port_rsp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port_rsp TREADY" *)
input wire m_axis_listen_port_rsp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_listen_port_rsp, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTR\
B 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port_rsp TDATA" *)
output wire [7 : 0] m_axis_listen_port_rsp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_notification TVALID" *)
output wire m_axis_notification_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_notification TREADY" *)
input wire m_axis_notification_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_notification, TDATA_NUM_BYTES 11, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 88} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB\
 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_notification TDATA" *)
output wire [87 : 0] m_axis_notification_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_conn_rsp TVALID" *)
output wire m_axis_open_conn_rsp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_conn_rsp TREADY" *)
input wire m_axis_open_conn_rsp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_open_conn_rsp, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB\
 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_conn_rsp TDATA" *)
output wire [23 : 0] m_axis_open_conn_rsp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp TVALID" *)
output wire m_axis_rx_data_rsp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp TREADY" *)
input wire m_axis_rx_data_rsp_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp TDATA" *)
output wire [63 : 0] m_axis_rx_data_rsp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp TKEEP" *)
output wire [7 : 0] m_axis_rx_data_rsp_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx_data_rsp, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen\
cy {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp TLAST" *)
output wire [0 : 0] m_axis_rx_data_rsp_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp_metadata TVALID" *)
output wire m_axis_rx_data_rsp_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp_metadata TREADY" *)
input wire m_axis_rx_data_rsp_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx_data_rsp_metadata, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate\
 dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_data_rsp_metadata TDATA" *)
output wire [15 : 0] m_axis_rx_data_rsp_metadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxread_cmd TVALID" *)
output wire m_axis_rxread_cmd_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxread_cmd TREADY" *)
input wire m_axis_rxread_cmd_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxread_cmd, TDATA_NUM_BYTES 9, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 72} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0,\
 HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxread_cmd TDATA" *)
output wire [71 : 0] m_axis_rxread_cmd_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_cmd TVALID" *)
output wire m_axis_rxwrite_cmd_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_cmd TREADY" *)
input wire m_axis_rxwrite_cmd_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxwrite_cmd, TDATA_NUM_BYTES 9, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 72} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0\
, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_cmd TDATA" *)
output wire [71 : 0] m_axis_rxwrite_cmd_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_data TVALID" *)
output wire m_axis_rxwrite_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_data TREADY" *)
input wire m_axis_rxwrite_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_data TDATA" *)
output wire [63 : 0] m_axis_rxwrite_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_data TKEEP" *)
output wire [7 : 0] m_axis_rxwrite_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rxwrite_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate depende\
ncy {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rxwrite_data TLAST" *)
output wire [0 : 0] m_axis_rxwrite_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_session_lup_req TVALID" *)
output wire m_axis_session_lup_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_session_lup_req TREADY" *)
input wire m_axis_session_lup_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_session_lup_req, TDATA_NUM_BYTES 13, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 104} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_T\
STRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_session_lup_req TDATA" *)
output wire [103 : 0] m_axis_session_lup_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_session_upd_req TVALID" *)
output wire m_axis_session_upd_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_session_upd_req TREADY" *)
input wire m_axis_session_upd_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_session_upd_req, TDATA_NUM_BYTES 14, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 112} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_T\
STRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_session_upd_req TDATA" *)
output wire [111 : 0] m_axis_session_upd_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tcp_data TVALID" *)
output wire m_axis_tcp_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tcp_data TREADY" *)
input wire m_axis_tcp_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tcp_data TDATA" *)
output wire [63 : 0] m_axis_tcp_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tcp_data TKEEP" *)
output wire [7 : 0] m_axis_tcp_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tcp_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency \
{} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tcp_data TLAST" *)
output wire [0 : 0] m_axis_tcp_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data_rsp TVALID" *)
output wire m_axis_tx_data_rsp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data_rsp TREADY" *)
input wire m_axis_tx_data_rsp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_data_rsp, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen\
cy {} format bool minimum {} maximum {}} value true}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data_rsp TDATA" *)
output wire [23 : 0] m_axis_tx_data_rsp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txread_cmd TVALID" *)
output wire m_axis_txread_cmd_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txread_cmd TREADY" *)
input wire m_axis_txread_cmd_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_txread_cmd, TDATA_NUM_BYTES 9, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 72} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0,\
 HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txread_cmd TDATA" *)
output wire [71 : 0] m_axis_txread_cmd_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_cmd TVALID" *)
output wire m_axis_txwrite_cmd_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_cmd TREADY" *)
input wire m_axis_txwrite_cmd_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_txwrite_cmd, TDATA_NUM_BYTES 9, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 72} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0\
, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_cmd TDATA" *)
output wire [71 : 0] m_axis_txwrite_cmd_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_data TVALID" *)
output wire m_axis_txwrite_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_data TREADY" *)
input wire m_axis_txwrite_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_data TDATA" *)
output wire [63 : 0] m_axis_txwrite_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_data TKEEP" *)
output wire [7 : 0] m_axis_txwrite_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_txwrite_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate depende\
ncy {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_txwrite_data TLAST" *)
output wire [0 : 0] m_axis_txwrite_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_close_conn_req TVALID" *)
input wire s_axis_close_conn_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_close_conn_req TREADY" *)
output wire s_axis_close_conn_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_close_conn_req, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate depen\
dency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_close_conn_req TDATA" *)
input wire [15 : 0] s_axis_close_conn_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_req TVALID" *)
input wire s_axis_listen_port_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_req TREADY" *)
output wire s_axis_listen_port_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_listen_port_req, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate depe\
ndency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_req TDATA" *)
input wire [15 : 0] s_axis_listen_port_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_conn_req TVALID" *)
input wire s_axis_open_conn_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_conn_req TREADY" *)
output wire s_axis_open_conn_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_open_conn_req, TDATA_NUM_BYTES 6, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB\
 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_conn_req TDATA" *)
input wire [47 : 0] s_axis_open_conn_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data_req TVALID" *)
input wire s_axis_rx_data_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data_req TREADY" *)
output wire s_axis_rx_data_req_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx_data_req, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0\
, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data_req TDATA" *)
input wire [31 : 0] s_axis_rx_data_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxread_data TVALID" *)
input wire s_axis_rxread_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxread_data TREADY" *)
output wire s_axis_rxread_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxread_data TDATA" *)
input wire [63 : 0] s_axis_rxread_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxread_data TKEEP" *)
input wire [7 : 0] s_axis_rxread_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rxread_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen\
cy {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxread_data TLAST" *)
input wire [0 : 0] s_axis_rxread_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxwrite_sts TVALID" *)
input wire s_axis_rxwrite_sts_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxwrite_sts TREADY" *)
output wire s_axis_rxwrite_sts_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rxwrite_sts, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0,\
 HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rxwrite_sts TDATA" *)
input wire [7 : 0] s_axis_rxwrite_sts_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_session_lup_rsp TVALID" *)
input wire s_axis_session_lup_rsp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_session_lup_rsp TREADY" *)
output wire s_axis_session_lup_rsp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_session_lup_rsp, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TST\
RB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_session_lup_rsp TDATA" *)
input wire [15 : 0] s_axis_session_lup_rsp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_session_upd_rsp TVALID" *)
input wire s_axis_session_upd_rsp_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_session_upd_rsp TREADY" *)
output wire s_axis_session_upd_rsp_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_session_upd_rsp, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TST\
RB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_session_upd_rsp TDATA" *)
input wire [15 : 0] s_axis_session_upd_rsp_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tcp_data TVALID" *)
input wire s_axis_tcp_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tcp_data TREADY" *)
output wire s_axis_tcp_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tcp_data TDATA" *)
input wire [63 : 0] s_axis_tcp_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tcp_data TKEEP" *)
input wire [7 : 0] s_axis_tcp_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tcp_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency \
{} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tcp_data TLAST" *)
input wire [0 : 0] s_axis_tcp_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req TVALID" *)
input wire s_axis_tx_data_req_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req TREADY" *)
output wire s_axis_tx_data_req_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req TDATA" *)
input wire [63 : 0] s_axis_tx_data_req_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req TKEEP" *)
input wire [7 : 0] s_axis_tx_data_req_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_data_req, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen\
cy {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req TLAST" *)
input wire [0 : 0] s_axis_tx_data_req_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req_metadata TVALID" *)
input wire s_axis_tx_data_req_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req_metadata TREADY" *)
output wire s_axis_tx_data_req_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_data_req_metadata, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HA\
S_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_data_req_metadata TDATA" *)
input wire [31 : 0] s_axis_tx_data_req_metadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txread_data TVALID" *)
input wire s_axis_txread_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txread_data TREADY" *)
output wire s_axis_txread_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txread_data TDATA" *)
input wire [63 : 0] s_axis_txread_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txread_data TKEEP" *)
input wire [7 : 0] s_axis_txread_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txread_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen\
cy {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txread_data TLAST" *)
input wire [0 : 0] s_axis_txread_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txwrite_sts TVALID" *)
input wire s_axis_txwrite_sts_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txwrite_sts TREADY" *)
output wire s_axis_txwrite_sts_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_txwrite_sts, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0,\
 HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_txwrite_sts TDATA" *)
input wire [7 : 0] s_axis_txwrite_sts_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_listen_port_rsp:m_axis_notification:m_axis_open_conn_rsp:m_axis_rx_data_rsp:m_axis_rx_data_rsp_metadata:m_axis_rxread_cmd:m_axis_rxwrite_cmd:m_axis_rxwrite_data:m_axis_session_lup_req:m_axis_session_upd_req:m_axis_tcp_data:m_axis_tx_data_rsp:m_axis_txread_cmd:m_axis_txwrite_cmd:m_axis_txwrite_data:s_axis_close_conn_req:s_axis_listen_port_req:s_axis_open_conn_req:s_axis_rx_data_req:s_axis_rxread_data:s_axis_rxwrite_sts:s_axis_session_lup_rsp:s_axis_\
session_upd_rsp:s_axis_tcp_data:s_axis_tx_data_req:s_axis_tx_data_req_metadata:s_axis_txread_data:s_axis_txwrite_sts, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  toe_top inst (
    .myIpAddress_V(myIpAddress_V),
    .regSessionCount_V(regSessionCount_V),
    .regSessionCount_V_ap_vld(regSessionCount_V_ap_vld),
    .m_axis_listen_port_rsp_TVALID(m_axis_listen_port_rsp_TVALID),
    .m_axis_listen_port_rsp_TREADY(m_axis_listen_port_rsp_TREADY),
    .m_axis_listen_port_rsp_TDATA(m_axis_listen_port_rsp_TDATA),
    .m_axis_notification_TVALID(m_axis_notification_TVALID),
    .m_axis_notification_TREADY(m_axis_notification_TREADY),
    .m_axis_notification_TDATA(m_axis_notification_TDATA),
    .m_axis_open_conn_rsp_TVALID(m_axis_open_conn_rsp_TVALID),
    .m_axis_open_conn_rsp_TREADY(m_axis_open_conn_rsp_TREADY),
    .m_axis_open_conn_rsp_TDATA(m_axis_open_conn_rsp_TDATA),
    .m_axis_rx_data_rsp_TVALID(m_axis_rx_data_rsp_TVALID),
    .m_axis_rx_data_rsp_TREADY(m_axis_rx_data_rsp_TREADY),
    .m_axis_rx_data_rsp_TDATA(m_axis_rx_data_rsp_TDATA),
    .m_axis_rx_data_rsp_TKEEP(m_axis_rx_data_rsp_TKEEP),
    .m_axis_rx_data_rsp_TLAST(m_axis_rx_data_rsp_TLAST),
    .m_axis_rx_data_rsp_metadata_TVALID(m_axis_rx_data_rsp_metadata_TVALID),
    .m_axis_rx_data_rsp_metadata_TREADY(m_axis_rx_data_rsp_metadata_TREADY),
    .m_axis_rx_data_rsp_metadata_TDATA(m_axis_rx_data_rsp_metadata_TDATA),
    .m_axis_rxread_cmd_TVALID(m_axis_rxread_cmd_TVALID),
    .m_axis_rxread_cmd_TREADY(m_axis_rxread_cmd_TREADY),
    .m_axis_rxread_cmd_TDATA(m_axis_rxread_cmd_TDATA),
    .m_axis_rxwrite_cmd_TVALID(m_axis_rxwrite_cmd_TVALID),
    .m_axis_rxwrite_cmd_TREADY(m_axis_rxwrite_cmd_TREADY),
    .m_axis_rxwrite_cmd_TDATA(m_axis_rxwrite_cmd_TDATA),
    .m_axis_rxwrite_data_TVALID(m_axis_rxwrite_data_TVALID),
    .m_axis_rxwrite_data_TREADY(m_axis_rxwrite_data_TREADY),
    .m_axis_rxwrite_data_TDATA(m_axis_rxwrite_data_TDATA),
    .m_axis_rxwrite_data_TKEEP(m_axis_rxwrite_data_TKEEP),
    .m_axis_rxwrite_data_TLAST(m_axis_rxwrite_data_TLAST),
    .m_axis_session_lup_req_TVALID(m_axis_session_lup_req_TVALID),
    .m_axis_session_lup_req_TREADY(m_axis_session_lup_req_TREADY),
    .m_axis_session_lup_req_TDATA(m_axis_session_lup_req_TDATA),
    .m_axis_session_upd_req_TVALID(m_axis_session_upd_req_TVALID),
    .m_axis_session_upd_req_TREADY(m_axis_session_upd_req_TREADY),
    .m_axis_session_upd_req_TDATA(m_axis_session_upd_req_TDATA),
    .m_axis_tcp_data_TVALID(m_axis_tcp_data_TVALID),
    .m_axis_tcp_data_TREADY(m_axis_tcp_data_TREADY),
    .m_axis_tcp_data_TDATA(m_axis_tcp_data_TDATA),
    .m_axis_tcp_data_TKEEP(m_axis_tcp_data_TKEEP),
    .m_axis_tcp_data_TLAST(m_axis_tcp_data_TLAST),
    .m_axis_tx_data_rsp_TVALID(m_axis_tx_data_rsp_TVALID),
    .m_axis_tx_data_rsp_TREADY(m_axis_tx_data_rsp_TREADY),
    .m_axis_tx_data_rsp_TDATA(m_axis_tx_data_rsp_TDATA),
    .m_axis_txread_cmd_TVALID(m_axis_txread_cmd_TVALID),
    .m_axis_txread_cmd_TREADY(m_axis_txread_cmd_TREADY),
    .m_axis_txread_cmd_TDATA(m_axis_txread_cmd_TDATA),
    .m_axis_txwrite_cmd_TVALID(m_axis_txwrite_cmd_TVALID),
    .m_axis_txwrite_cmd_TREADY(m_axis_txwrite_cmd_TREADY),
    .m_axis_txwrite_cmd_TDATA(m_axis_txwrite_cmd_TDATA),
    .m_axis_txwrite_data_TVALID(m_axis_txwrite_data_TVALID),
    .m_axis_txwrite_data_TREADY(m_axis_txwrite_data_TREADY),
    .m_axis_txwrite_data_TDATA(m_axis_txwrite_data_TDATA),
    .m_axis_txwrite_data_TKEEP(m_axis_txwrite_data_TKEEP),
    .m_axis_txwrite_data_TLAST(m_axis_txwrite_data_TLAST),
    .s_axis_close_conn_req_TVALID(s_axis_close_conn_req_TVALID),
    .s_axis_close_conn_req_TREADY(s_axis_close_conn_req_TREADY),
    .s_axis_close_conn_req_TDATA(s_axis_close_conn_req_TDATA),
    .s_axis_listen_port_req_TVALID(s_axis_listen_port_req_TVALID),
    .s_axis_listen_port_req_TREADY(s_axis_listen_port_req_TREADY),
    .s_axis_listen_port_req_TDATA(s_axis_listen_port_req_TDATA),
    .s_axis_open_conn_req_TVALID(s_axis_open_conn_req_TVALID),
    .s_axis_open_conn_req_TREADY(s_axis_open_conn_req_TREADY),
    .s_axis_open_conn_req_TDATA(s_axis_open_conn_req_TDATA),
    .s_axis_rx_data_req_TVALID(s_axis_rx_data_req_TVALID),
    .s_axis_rx_data_req_TREADY(s_axis_rx_data_req_TREADY),
    .s_axis_rx_data_req_TDATA(s_axis_rx_data_req_TDATA),
    .s_axis_rxread_data_TVALID(s_axis_rxread_data_TVALID),
    .s_axis_rxread_data_TREADY(s_axis_rxread_data_TREADY),
    .s_axis_rxread_data_TDATA(s_axis_rxread_data_TDATA),
    .s_axis_rxread_data_TKEEP(s_axis_rxread_data_TKEEP),
    .s_axis_rxread_data_TLAST(s_axis_rxread_data_TLAST),
    .s_axis_rxwrite_sts_TVALID(s_axis_rxwrite_sts_TVALID),
    .s_axis_rxwrite_sts_TREADY(s_axis_rxwrite_sts_TREADY),
    .s_axis_rxwrite_sts_TDATA(s_axis_rxwrite_sts_TDATA),
    .s_axis_session_lup_rsp_TVALID(s_axis_session_lup_rsp_TVALID),
    .s_axis_session_lup_rsp_TREADY(s_axis_session_lup_rsp_TREADY),
    .s_axis_session_lup_rsp_TDATA(s_axis_session_lup_rsp_TDATA),
    .s_axis_session_upd_rsp_TVALID(s_axis_session_upd_rsp_TVALID),
    .s_axis_session_upd_rsp_TREADY(s_axis_session_upd_rsp_TREADY),
    .s_axis_session_upd_rsp_TDATA(s_axis_session_upd_rsp_TDATA),
    .s_axis_tcp_data_TVALID(s_axis_tcp_data_TVALID),
    .s_axis_tcp_data_TREADY(s_axis_tcp_data_TREADY),
    .s_axis_tcp_data_TDATA(s_axis_tcp_data_TDATA),
    .s_axis_tcp_data_TKEEP(s_axis_tcp_data_TKEEP),
    .s_axis_tcp_data_TLAST(s_axis_tcp_data_TLAST),
    .s_axis_tx_data_req_TVALID(s_axis_tx_data_req_TVALID),
    .s_axis_tx_data_req_TREADY(s_axis_tx_data_req_TREADY),
    .s_axis_tx_data_req_TDATA(s_axis_tx_data_req_TDATA),
    .s_axis_tx_data_req_TKEEP(s_axis_tx_data_req_TKEEP),
    .s_axis_tx_data_req_TLAST(s_axis_tx_data_req_TLAST),
    .s_axis_tx_data_req_metadata_TVALID(s_axis_tx_data_req_metadata_TVALID),
    .s_axis_tx_data_req_metadata_TREADY(s_axis_tx_data_req_metadata_TREADY),
    .s_axis_tx_data_req_metadata_TDATA(s_axis_tx_data_req_metadata_TDATA),
    .s_axis_txread_data_TVALID(s_axis_txread_data_TVALID),
    .s_axis_txread_data_TREADY(s_axis_txread_data_TREADY),
    .s_axis_txread_data_TDATA(s_axis_txread_data_TDATA),
    .s_axis_txread_data_TKEEP(s_axis_txread_data_TKEEP),
    .s_axis_txread_data_TLAST(s_axis_txread_data_TLAST),
    .s_axis_txwrite_sts_TVALID(s_axis_txwrite_sts_TVALID),
    .s_axis_txwrite_sts_TREADY(s_axis_txwrite_sts_TREADY),
    .s_axis_txwrite_sts_TDATA(s_axis_txwrite_sts_TDATA),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
