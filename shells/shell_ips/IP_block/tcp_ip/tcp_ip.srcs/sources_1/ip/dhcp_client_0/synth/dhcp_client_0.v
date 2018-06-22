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


// IP VLNV: xilinx.labs:hls:dhcp_client:1.05
// IP Revision: 1802231007

(* X_CORE_INFO = "dhcp_client_top,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "dhcp_client_0,dhcp_client_top,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dhcp_client_0 (
  dhcpEnable_V,
  inputIpAddress_V,
  dhcpIpAddressOut_V,
  myMacAddress_V,
  m_axis_open_port_TVALID,
  m_axis_open_port_TREADY,
  m_axis_open_port_TDATA,
  m_axis_tx_data_TVALID,
  m_axis_tx_data_TREADY,
  m_axis_tx_data_TDATA,
  m_axis_tx_data_TKEEP,
  m_axis_tx_data_TLAST,
  m_axis_tx_length_TVALID,
  m_axis_tx_length_TREADY,
  m_axis_tx_length_TDATA,
  m_axis_tx_metadata_TVALID,
  m_axis_tx_metadata_TREADY,
  m_axis_tx_metadata_TDATA,
  s_axis_open_port_status_TVALID,
  s_axis_open_port_status_TREADY,
  s_axis_open_port_status_TDATA,
  s_axis_rx_data_TVALID,
  s_axis_rx_data_TREADY,
  s_axis_rx_data_TDATA,
  s_axis_rx_data_TKEEP,
  s_axis_rx_data_TLAST,
  s_axis_rx_metadata_TVALID,
  s_axis_rx_metadata_TREADY,
  s_axis_rx_metadata_TDATA,
  aclk,
  aresetn
);

input wire [0 : 0] dhcpEnable_V;
input wire [31 : 0] inputIpAddress_V;
output wire [31 : 0] dhcpIpAddressOut_V;
input wire [47 : 0] myMacAddress_V;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_port TVALID" *)
output wire m_axis_open_port_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_port TREADY" *)
input wire m_axis_open_port_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_open_port, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_port TDATA" *)
output wire [15 : 0] m_axis_open_port_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TVALID" *)
output wire m_axis_tx_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TREADY" *)
input wire m_axis_tx_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TDATA" *)
output wire [63 : 0] m_axis_tx_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TKEEP" *)
output wire [7 : 0] m_axis_tx_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TLAST" *)
output wire [0 : 0] m_axis_tx_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_length TVALID" *)
output wire m_axis_tx_length_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_length TREADY" *)
input wire m_axis_tx_length_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_length, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_length TDATA" *)
output wire [15 : 0] m_axis_tx_length_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TVALID" *)
output wire m_axis_tx_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TREADY" *)
input wire m_axis_tx_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_metadata, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TDATA" *)
output wire [95 : 0] m_axis_tx_metadata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_port_status TVALID" *)
input wire s_axis_open_port_status_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_port_status TREADY" *)
output wire s_axis_open_port_status_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_open_port_status, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_port_status TDATA" *)
input wire [7 : 0] s_axis_open_port_status_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TVALID" *)
input wire s_axis_rx_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TREADY" *)
output wire s_axis_rx_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TDATA" *)
input wire [63 : 0] s_axis_rx_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TKEEP" *)
input wire [7 : 0] s_axis_rx_data_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TLAST" *)
input wire [0 : 0] s_axis_rx_data_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TVALID" *)
input wire s_axis_rx_metadata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TREADY" *)
output wire s_axis_rx_metadata_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx_metadata, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TDATA" *)
input wire [95 : 0] s_axis_rx_metadata_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_open_port:m_axis_tx_data:m_axis_tx_length:m_axis_tx_metadata:s_axis_open_port_status:s_axis_rx_data:s_axis_rx_metadata, ASSOCIATED_RESET aresetn" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  dhcp_client_top inst (
    .dhcpEnable_V(dhcpEnable_V),
    .inputIpAddress_V(inputIpAddress_V),
    .dhcpIpAddressOut_V(dhcpIpAddressOut_V),
    .myMacAddress_V(myMacAddress_V),
    .m_axis_open_port_TVALID(m_axis_open_port_TVALID),
    .m_axis_open_port_TREADY(m_axis_open_port_TREADY),
    .m_axis_open_port_TDATA(m_axis_open_port_TDATA),
    .m_axis_tx_data_TVALID(m_axis_tx_data_TVALID),
    .m_axis_tx_data_TREADY(m_axis_tx_data_TREADY),
    .m_axis_tx_data_TDATA(m_axis_tx_data_TDATA),
    .m_axis_tx_data_TKEEP(m_axis_tx_data_TKEEP),
    .m_axis_tx_data_TLAST(m_axis_tx_data_TLAST),
    .m_axis_tx_length_TVALID(m_axis_tx_length_TVALID),
    .m_axis_tx_length_TREADY(m_axis_tx_length_TREADY),
    .m_axis_tx_length_TDATA(m_axis_tx_length_TDATA),
    .m_axis_tx_metadata_TVALID(m_axis_tx_metadata_TVALID),
    .m_axis_tx_metadata_TREADY(m_axis_tx_metadata_TREADY),
    .m_axis_tx_metadata_TDATA(m_axis_tx_metadata_TDATA),
    .s_axis_open_port_status_TVALID(s_axis_open_port_status_TVALID),
    .s_axis_open_port_status_TREADY(s_axis_open_port_status_TREADY),
    .s_axis_open_port_status_TDATA(s_axis_open_port_status_TDATA),
    .s_axis_rx_data_TVALID(s_axis_rx_data_TVALID),
    .s_axis_rx_data_TREADY(s_axis_rx_data_TREADY),
    .s_axis_rx_data_TDATA(s_axis_rx_data_TDATA),
    .s_axis_rx_data_TKEEP(s_axis_rx_data_TKEEP),
    .s_axis_rx_data_TLAST(s_axis_rx_data_TLAST),
    .s_axis_rx_metadata_TVALID(s_axis_rx_metadata_TVALID),
    .s_axis_rx_metadata_TREADY(s_axis_rx_metadata_TREADY),
    .s_axis_rx_metadata_TDATA(s_axis_rx_metadata_TDATA),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
