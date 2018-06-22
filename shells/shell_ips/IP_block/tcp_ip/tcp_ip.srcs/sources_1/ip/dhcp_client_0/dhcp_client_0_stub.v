// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 23 19:13:30 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/7v3/tcp_ip/tcp_ip.srcs/sources_1/ip/dhcp_client_0/dhcp_client_0_stub.v
// Design      : dhcp_client_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dhcp_client_top,Vivado 2017.4" *)
module dhcp_client_0(dhcpEnable_V, inputIpAddress_V, 
  dhcpIpAddressOut_V, myMacAddress_V, m_axis_open_port_TVALID, m_axis_open_port_TREADY, 
  m_axis_open_port_TDATA, m_axis_tx_data_TVALID, m_axis_tx_data_TREADY, 
  m_axis_tx_data_TDATA, m_axis_tx_data_TKEEP, m_axis_tx_data_TLAST, 
  m_axis_tx_length_TVALID, m_axis_tx_length_TREADY, m_axis_tx_length_TDATA, 
  m_axis_tx_metadata_TVALID, m_axis_tx_metadata_TREADY, m_axis_tx_metadata_TDATA, 
  s_axis_open_port_status_TVALID, s_axis_open_port_status_TREADY, 
  s_axis_open_port_status_TDATA, s_axis_rx_data_TVALID, s_axis_rx_data_TREADY, 
  s_axis_rx_data_TDATA, s_axis_rx_data_TKEEP, s_axis_rx_data_TLAST, 
  s_axis_rx_metadata_TVALID, s_axis_rx_metadata_TREADY, s_axis_rx_metadata_TDATA, aclk, 
  aresetn)
/* synthesis syn_black_box black_box_pad_pin="dhcpEnable_V[0:0],inputIpAddress_V[31:0],dhcpIpAddressOut_V[31:0],myMacAddress_V[47:0],m_axis_open_port_TVALID,m_axis_open_port_TREADY,m_axis_open_port_TDATA[15:0],m_axis_tx_data_TVALID,m_axis_tx_data_TREADY,m_axis_tx_data_TDATA[63:0],m_axis_tx_data_TKEEP[7:0],m_axis_tx_data_TLAST[0:0],m_axis_tx_length_TVALID,m_axis_tx_length_TREADY,m_axis_tx_length_TDATA[15:0],m_axis_tx_metadata_TVALID,m_axis_tx_metadata_TREADY,m_axis_tx_metadata_TDATA[95:0],s_axis_open_port_status_TVALID,s_axis_open_port_status_TREADY,s_axis_open_port_status_TDATA[7:0],s_axis_rx_data_TVALID,s_axis_rx_data_TREADY,s_axis_rx_data_TDATA[63:0],s_axis_rx_data_TKEEP[7:0],s_axis_rx_data_TLAST[0:0],s_axis_rx_metadata_TVALID,s_axis_rx_metadata_TREADY,s_axis_rx_metadata_TDATA[95:0],aclk,aresetn" */;
  input [0:0]dhcpEnable_V;
  input [31:0]inputIpAddress_V;
  output [31:0]dhcpIpAddressOut_V;
  input [47:0]myMacAddress_V;
  output m_axis_open_port_TVALID;
  input m_axis_open_port_TREADY;
  output [15:0]m_axis_open_port_TDATA;
  output m_axis_tx_data_TVALID;
  input m_axis_tx_data_TREADY;
  output [63:0]m_axis_tx_data_TDATA;
  output [7:0]m_axis_tx_data_TKEEP;
  output [0:0]m_axis_tx_data_TLAST;
  output m_axis_tx_length_TVALID;
  input m_axis_tx_length_TREADY;
  output [15:0]m_axis_tx_length_TDATA;
  output m_axis_tx_metadata_TVALID;
  input m_axis_tx_metadata_TREADY;
  output [95:0]m_axis_tx_metadata_TDATA;
  input s_axis_open_port_status_TVALID;
  output s_axis_open_port_status_TREADY;
  input [7:0]s_axis_open_port_status_TDATA;
  input s_axis_rx_data_TVALID;
  output s_axis_rx_data_TREADY;
  input [63:0]s_axis_rx_data_TDATA;
  input [7:0]s_axis_rx_data_TKEEP;
  input [0:0]s_axis_rx_data_TLAST;
  input s_axis_rx_metadata_TVALID;
  output s_axis_rx_metadata_TREADY;
  input [95:0]s_axis_rx_metadata_TDATA;
  input aclk;
  input aresetn;
endmodule
