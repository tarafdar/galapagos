// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 12 20:04:26 2018
// Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top TCP_bridge_TCP_output_bridge_0_0 -prefix
//               TCP_bridge_TCP_output_bridge_0_0_ TCP_bridge_TCP_output_bridge_0_0_stub.v
// Design      : TCP_bridge_TCP_output_bridge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tcp_output_bridge_top,Vivado 2018.1" *)
module TCP_bridge_TCP_output_bridge_0_0(ip_table_V_Clk_A, ip_table_V_Rst_A, 
  ip_table_V_EN_A, ip_table_V_WEN_A, ip_table_V_Addr_A, ip_table_V_Dout_A, 
  ip_table_V_Din_A, ip_table_V_Clk_B, ip_table_V_Rst_B, ip_table_V_EN_B, ip_table_V_WEN_B, 
  ip_table_V_Addr_B, ip_table_V_Dout_B, ip_table_V_Din_B, m_axis_listen_port_TVALID, 
  m_axis_listen_port_TREADY, m_axis_listen_port_TDATA, m_axis_open_connection_TVALID, 
  m_axis_open_connection_TREADY, m_axis_open_connection_TDATA, 
  m_axis_read_package_TVALID, m_axis_read_package_TREADY, m_axis_read_package_TDATA, 
  m_axis_tx_data_TVALID, m_axis_tx_data_TREADY, m_axis_tx_data_TDATA, 
  m_axis_tx_data_TKEEP, m_axis_tx_data_TLAST, m_axis_tx_metadata_TVALID, 
  m_axis_tx_metadata_TREADY, m_axis_tx_metadata_TDATA, 
  s_axis_listen_port_status_TVALID, s_axis_listen_port_status_TREADY, 
  s_axis_listen_port_status_TDATA, s_axis_notifications_TVALID, 
  s_axis_notifications_TREADY, s_axis_notifications_TDATA, s_axis_open_status_TVALID, 
  s_axis_open_status_TREADY, s_axis_open_status_TDATA, s_axis_rx_data_TVALID, 
  s_axis_rx_data_TREADY, s_axis_rx_data_TDATA, s_axis_rx_data_TKEEP, 
  s_axis_rx_data_TLAST, s_axis_rx_metadata_TVALID, s_axis_rx_metadata_TREADY, 
  s_axis_rx_metadata_TDATA, s_axis_tx_status_TVALID, s_axis_tx_status_TREADY, 
  s_axis_tx_status_TDATA, stream_in_V_TVALID, stream_in_V_TREADY, stream_in_V_TDATA, 
  stream_in_V_TDEST, stream_in_V_TLAST, stream_in_V_TKEEP, stream_out_V_TVALID, 
  stream_out_V_TREADY, stream_out_V_TDATA, stream_out_V_TDEST, stream_out_V_TLAST, 
  stream_out_V_TKEEP, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="ip_table_V_Clk_A,ip_table_V_Rst_A,ip_table_V_EN_A,ip_table_V_WEN_A[3:0],ip_table_V_Addr_A[31:0],ip_table_V_Dout_A[31:0],ip_table_V_Din_A[31:0],ip_table_V_Clk_B,ip_table_V_Rst_B,ip_table_V_EN_B,ip_table_V_WEN_B[3:0],ip_table_V_Addr_B[31:0],ip_table_V_Dout_B[31:0],ip_table_V_Din_B[31:0],m_axis_listen_port_TVALID,m_axis_listen_port_TREADY,m_axis_listen_port_TDATA[15:0],m_axis_open_connection_TVALID,m_axis_open_connection_TREADY,m_axis_open_connection_TDATA[47:0],m_axis_read_package_TVALID,m_axis_read_package_TREADY,m_axis_read_package_TDATA[31:0],m_axis_tx_data_TVALID,m_axis_tx_data_TREADY,m_axis_tx_data_TDATA[63:0],m_axis_tx_data_TKEEP[7:0],m_axis_tx_data_TLAST[0:0],m_axis_tx_metadata_TVALID,m_axis_tx_metadata_TREADY,m_axis_tx_metadata_TDATA[31:0],s_axis_listen_port_status_TVALID,s_axis_listen_port_status_TREADY,s_axis_listen_port_status_TDATA[7:0],s_axis_notifications_TVALID,s_axis_notifications_TREADY,s_axis_notifications_TDATA[87:0],s_axis_open_status_TVALID,s_axis_open_status_TREADY,s_axis_open_status_TDATA[23:0],s_axis_rx_data_TVALID,s_axis_rx_data_TREADY,s_axis_rx_data_TDATA[63:0],s_axis_rx_data_TKEEP[7:0],s_axis_rx_data_TLAST[0:0],s_axis_rx_metadata_TVALID,s_axis_rx_metadata_TREADY,s_axis_rx_metadata_TDATA[15:0],s_axis_tx_status_TVALID,s_axis_tx_status_TREADY,s_axis_tx_status_TDATA[23:0],stream_in_V_TVALID,stream_in_V_TREADY,stream_in_V_TDATA[63:0],stream_in_V_TDEST[15:0],stream_in_V_TLAST[0:0],stream_in_V_TKEEP[7:0],stream_out_V_TVALID,stream_out_V_TREADY,stream_out_V_TDATA[63:0],stream_out_V_TDEST[15:0],stream_out_V_TLAST[0:0],stream_out_V_TKEEP[7:0],aclk,aresetn" */;
  output ip_table_V_Clk_A;
  output ip_table_V_Rst_A;
  output ip_table_V_EN_A;
  output [3:0]ip_table_V_WEN_A;
  output [31:0]ip_table_V_Addr_A;
  output [31:0]ip_table_V_Dout_A;
  input [31:0]ip_table_V_Din_A;
  output ip_table_V_Clk_B;
  output ip_table_V_Rst_B;
  output ip_table_V_EN_B;
  output [3:0]ip_table_V_WEN_B;
  output [31:0]ip_table_V_Addr_B;
  output [31:0]ip_table_V_Dout_B;
  input [31:0]ip_table_V_Din_B;
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
  output [31:0]m_axis_tx_metadata_TDATA;
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
  input stream_in_V_TVALID;
  output stream_in_V_TREADY;
  input [63:0]stream_in_V_TDATA;
  input [15:0]stream_in_V_TDEST;
  input [0:0]stream_in_V_TLAST;
  input [7:0]stream_in_V_TKEEP;
  output stream_out_V_TVALID;
  input stream_out_V_TREADY;
  output [63:0]stream_out_V_TDATA;
  output [15:0]stream_out_V_TDEST;
  output [0:0]stream_out_V_TLAST;
  output [7:0]stream_out_V_TKEEP;
  input aclk;
  input aresetn;
endmodule
