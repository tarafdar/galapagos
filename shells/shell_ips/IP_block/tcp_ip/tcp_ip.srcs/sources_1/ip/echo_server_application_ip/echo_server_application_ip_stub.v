// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 23 14:58:37 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/hls/tcp_test/tcp_ip/scripts/build/proj2017/tcp_ip.srcs/sources_1/ip/echo_server_application_ip/echo_server_application_ip_stub.v
// Design      : echo_server_application_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "echo_server_application_top,Vivado 2017.4" *)
module echo_server_application_ip(m_axis_close_connection_TVALID, 
  m_axis_close_connection_TREADY, m_axis_close_connection_TDATA, 
  m_axis_listen_port_TVALID, m_axis_listen_port_TREADY, m_axis_listen_port_TDATA, 
  m_axis_open_connection_TVALID, m_axis_open_connection_TREADY, 
  m_axis_open_connection_TDATA, m_axis_read_package_TVALID, m_axis_read_package_TREADY, 
  m_axis_read_package_TDATA, m_axis_tx_data_TVALID, m_axis_tx_data_TREADY, 
  m_axis_tx_data_TDATA, m_axis_tx_data_TKEEP, m_axis_tx_data_TLAST, 
  m_axis_tx_metadata_TVALID, m_axis_tx_metadata_TREADY, m_axis_tx_metadata_TDATA, 
  s_axis_listen_port_status_TVALID, s_axis_listen_port_status_TREADY, 
  s_axis_listen_port_status_TDATA, s_axis_notifications_TVALID, 
  s_axis_notifications_TREADY, s_axis_notifications_TDATA, s_axis_open_status_TVALID, 
  s_axis_open_status_TREADY, s_axis_open_status_TDATA, s_axis_rx_data_TVALID, 
  s_axis_rx_data_TREADY, s_axis_rx_data_TDATA, s_axis_rx_data_TKEEP, 
  s_axis_rx_data_TLAST, s_axis_rx_metadata_TVALID, s_axis_rx_metadata_TREADY, 
  s_axis_rx_metadata_TDATA, s_axis_tx_status_TVALID, s_axis_tx_status_TREADY, 
  s_axis_tx_status_TDATA, ap_start, ap_ready, ap_done, ap_idle, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="m_axis_close_connection_TVALID,m_axis_close_connection_TREADY,m_axis_close_connection_TDATA[15:0],m_axis_listen_port_TVALID,m_axis_listen_port_TREADY,m_axis_listen_port_TDATA[15:0],m_axis_open_connection_TVALID,m_axis_open_connection_TREADY,m_axis_open_connection_TDATA[47:0],m_axis_read_package_TVALID,m_axis_read_package_TREADY,m_axis_read_package_TDATA[31:0],m_axis_tx_data_TVALID,m_axis_tx_data_TREADY,m_axis_tx_data_TDATA[63:0],m_axis_tx_data_TKEEP[7:0],m_axis_tx_data_TLAST[0:0],m_axis_tx_metadata_TVALID,m_axis_tx_metadata_TREADY,m_axis_tx_metadata_TDATA[15:0],s_axis_listen_port_status_TVALID,s_axis_listen_port_status_TREADY,s_axis_listen_port_status_TDATA[7:0],s_axis_notifications_TVALID,s_axis_notifications_TREADY,s_axis_notifications_TDATA[87:0],s_axis_open_status_TVALID,s_axis_open_status_TREADY,s_axis_open_status_TDATA[23:0],s_axis_rx_data_TVALID,s_axis_rx_data_TREADY,s_axis_rx_data_TDATA[63:0],s_axis_rx_data_TKEEP[7:0],s_axis_rx_data_TLAST[0:0],s_axis_rx_metadata_TVALID,s_axis_rx_metadata_TREADY,s_axis_rx_metadata_TDATA[15:0],s_axis_tx_status_TVALID,s_axis_tx_status_TREADY,s_axis_tx_status_TDATA[23:0],ap_start,ap_ready,ap_done,ap_idle,aclk,aresetn" */;
  output m_axis_close_connection_TVALID;
  input m_axis_close_connection_TREADY;
  output [15:0]m_axis_close_connection_TDATA;
  output m_axis_listen_port_TVALID;
  input m_axis_listen_port_TREADY;
  output [15:0]m_axis_listen_port_TDATA;
  output m_axis_open_connection_TVALID;
  input m_axis_open_connection_TREADY;
  output [47:0]m_axis_open_connection_TDATA;
  output m_axis_read_package_TVALID;
  input m_axis_read_package_TREADY;
  output [31:0]m_axis_read_package_TDATA;
  output m_axis_tx_data_TVALID;
  input m_axis_tx_data_TREADY;
  output [63:0]m_axis_tx_data_TDATA;
  output [7:0]m_axis_tx_data_TKEEP;
  output [0:0]m_axis_tx_data_TLAST;
  output m_axis_tx_metadata_TVALID;
  input m_axis_tx_metadata_TREADY;
  output [15:0]m_axis_tx_metadata_TDATA;
  input s_axis_listen_port_status_TVALID;
  output s_axis_listen_port_status_TREADY;
  input [7:0]s_axis_listen_port_status_TDATA;
  input s_axis_notifications_TVALID;
  output s_axis_notifications_TREADY;
  input [87:0]s_axis_notifications_TDATA;
  input s_axis_open_status_TVALID;
  output s_axis_open_status_TREADY;
  input [23:0]s_axis_open_status_TDATA;
  input s_axis_rx_data_TVALID;
  output s_axis_rx_data_TREADY;
  input [63:0]s_axis_rx_data_TDATA;
  input [7:0]s_axis_rx_data_TKEEP;
  input [0:0]s_axis_rx_data_TLAST;
  input s_axis_rx_metadata_TVALID;
  output s_axis_rx_metadata_TREADY;
  input [15:0]s_axis_rx_metadata_TDATA;
  input s_axis_tx_status_TVALID;
  output s_axis_tx_status_TREADY;
  input [23:0]s_axis_tx_status_TDATA;
  input ap_start;
  output ap_ready;
  output ap_done;
  output ap_idle;
  input aclk;
  input aresetn;
endmodule
