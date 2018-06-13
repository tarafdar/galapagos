// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Jun  6 16:40:28 2018
// Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top TCP_bridge_tcp_ip_wrapper_0_0 -prefix
//               TCP_bridge_tcp_ip_wrapper_0_0_ TCP_bridge_tcp_ip_wrapper_0_0_stub.v
// Design      : TCP_bridge_tcp_ip_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tcp_ip_wrapper_wrapper,Vivado 2018.1" *)
module TCP_bridge_tcp_ip_wrapper_0_0(aclk, aresetn, myMacAddress, myIpAddress, 
  myGateway, mySubnet, regSessionCount, relSessionCount, AXI_M_Stream_TVALID, 
  AXI_M_Stream_TREADY, AXI_M_Stream_TDATA, AXI_M_Stream_TKEEP, AXI_M_Stream_TLAST, 
  AXI_S_Stream_TVALID, AXI_S_Stream_TREADY, AXI_S_Stream_TDATA, AXI_S_Stream_TKEEP, 
  AXI_S_Stream_TLAST, m_axis_listen_port_status_TVALID, 
  m_axis_listen_port_status_TREADY, m_axis_listen_port_status_TDATA, 
  m_axis_notifications_TVALID, m_axis_notifications_TREADY, m_axis_notifications_TDATA, 
  m_axis_open_status_TVALID, m_axis_open_status_TREADY, m_axis_open_status_TDATA, 
  m_axis_rx_data_TVALID, m_axis_rx_data_TREADY, m_axis_rx_data_TDATA, 
  m_axis_rx_data_TKEEP, m_axis_rx_data_TLAST, m_axis_rx_metadata_TVALID, 
  m_axis_rx_metadata_TREADY, m_axis_rx_metadata_TDATA, m_axis_tx_status_TVALID, 
  m_axis_tx_status_TREADY, m_axis_tx_status_TDATA, s_axis_listen_port_TVALID, 
  s_axis_listen_port_TREADY, s_axis_listen_port_TDATA, s_axis_close_connection_TVALID, 
  s_axis_close_connection_TREADY, s_axis_close_connection_TDATA, 
  s_axis_open_connection_TVALID, s_axis_open_connection_TREADY, 
  s_axis_open_connection_TDATA, s_axis_read_package_TVALID, s_axis_read_package_TREADY, 
  s_axis_read_package_TDATA, s_axis_tx_data_TVALID, s_axis_tx_data_TREADY, 
  s_axis_tx_data_TDATA, s_axis_tx_data_TKEEP, s_axis_tx_data_TLAST, 
  s_axis_tx_metadata_TVALID, s_axis_tx_metadata_TREADY, s_axis_tx_metadata_TDATA, 
  M00_AXI_AWID, M00_AXI_AWADDR, M00_AXI_AWLEN, M00_AXI_AWSIZE, M00_AXI_AWBURST, 
  M00_AXI_AWLOCK, M00_AXI_AWCACHE, M00_AXI_AWPROT, M00_AXI_AWQOS, M00_AXI_AWVALID, 
  M00_AXI_AWREADY, M00_AXI_WDATA, M00_AXI_WSTRB, M00_AXI_WLAST, M00_AXI_WVALID, 
  M00_AXI_WREADY, M00_AXI_BID, M00_AXI_BRESP, M00_AXI_BVALID, M00_AXI_BREADY, M00_AXI_ARID, 
  M00_AXI_ARADDR, M00_AXI_ARLEN, M00_AXI_ARSIZE, M00_AXI_ARBURST, M00_AXI_ARLOCK, 
  M00_AXI_ARCACHE, M00_AXI_ARPROT, M00_AXI_ARQOS, M00_AXI_ARVALID, M00_AXI_ARREADY, 
  M00_AXI_RID, M00_AXI_RDATA, M00_AXI_RRESP, M00_AXI_RLAST, M00_AXI_RVALID, M00_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,myMacAddress[47:0],myIpAddress[31:0],myGateway[31:0],mySubnet[31:0],regSessionCount[15:0],relSessionCount[15:0],AXI_M_Stream_TVALID,AXI_M_Stream_TREADY,AXI_M_Stream_TDATA[63:0],AXI_M_Stream_TKEEP[7:0],AXI_M_Stream_TLAST,AXI_S_Stream_TVALID,AXI_S_Stream_TREADY,AXI_S_Stream_TDATA[63:0],AXI_S_Stream_TKEEP[7:0],AXI_S_Stream_TLAST,m_axis_listen_port_status_TVALID,m_axis_listen_port_status_TREADY,m_axis_listen_port_status_TDATA[7:0],m_axis_notifications_TVALID,m_axis_notifications_TREADY,m_axis_notifications_TDATA[87:0],m_axis_open_status_TVALID,m_axis_open_status_TREADY,m_axis_open_status_TDATA[23:0],m_axis_rx_data_TVALID,m_axis_rx_data_TREADY,m_axis_rx_data_TDATA[63:0],m_axis_rx_data_TKEEP[7:0],m_axis_rx_data_TLAST,m_axis_rx_metadata_TVALID,m_axis_rx_metadata_TREADY,m_axis_rx_metadata_TDATA[15:0],m_axis_tx_status_TVALID,m_axis_tx_status_TREADY,m_axis_tx_status_TDATA[23:0],s_axis_listen_port_TVALID,s_axis_listen_port_TREADY,s_axis_listen_port_TDATA[15:0],s_axis_close_connection_TVALID,s_axis_close_connection_TREADY,s_axis_close_connection_TDATA[15:0],s_axis_open_connection_TVALID,s_axis_open_connection_TREADY,s_axis_open_connection_TDATA[47:0],s_axis_read_package_TVALID,s_axis_read_package_TREADY,s_axis_read_package_TDATA[31:0],s_axis_tx_data_TVALID,s_axis_tx_data_TREADY,s_axis_tx_data_TDATA[63:0],s_axis_tx_data_TKEEP[7:0],s_axis_tx_data_TLAST,s_axis_tx_metadata_TVALID,s_axis_tx_metadata_TREADY,s_axis_tx_metadata_TDATA[31:0],M00_AXI_AWID[3:0],M00_AXI_AWADDR[31:0],M00_AXI_AWLEN[7:0],M00_AXI_AWSIZE[2:0],M00_AXI_AWBURST[1:0],M00_AXI_AWLOCK,M00_AXI_AWCACHE[3:0],M00_AXI_AWPROT[2:0],M00_AXI_AWQOS[3:0],M00_AXI_AWVALID,M00_AXI_AWREADY,M00_AXI_WDATA[63:0],M00_AXI_WSTRB[7:0],M00_AXI_WLAST,M00_AXI_WVALID,M00_AXI_WREADY,M00_AXI_BID[3:0],M00_AXI_BRESP[1:0],M00_AXI_BVALID,M00_AXI_BREADY,M00_AXI_ARID[3:0],M00_AXI_ARADDR[31:0],M00_AXI_ARLEN[7:0],M00_AXI_ARSIZE[2:0],M00_AXI_ARBURST[1:0],M00_AXI_ARLOCK,M00_AXI_ARCACHE[3:0],M00_AXI_ARPROT[2:0],M00_AXI_ARQOS[3:0],M00_AXI_ARVALID,M00_AXI_ARREADY,M00_AXI_RID[3:0],M00_AXI_RDATA[63:0],M00_AXI_RRESP[1:0],M00_AXI_RLAST,M00_AXI_RVALID,M00_AXI_RREADY" */;
  input aclk;
  input aresetn;
  input [47:0]myMacAddress;
  input [31:0]myIpAddress;
  input [31:0]myGateway;
  input [31:0]mySubnet;
  output [15:0]regSessionCount;
  output [15:0]relSessionCount;
  output AXI_M_Stream_TVALID;
  input AXI_M_Stream_TREADY;
  output [63:0]AXI_M_Stream_TDATA;
  output [7:0]AXI_M_Stream_TKEEP;
  output AXI_M_Stream_TLAST;
  input AXI_S_Stream_TVALID;
  output AXI_S_Stream_TREADY;
  input [63:0]AXI_S_Stream_TDATA;
  input [7:0]AXI_S_Stream_TKEEP;
  input AXI_S_Stream_TLAST;
  output m_axis_listen_port_status_TVALID;
  input m_axis_listen_port_status_TREADY;
  output [7:0]m_axis_listen_port_status_TDATA;
  output m_axis_notifications_TVALID;
  input m_axis_notifications_TREADY;
  output [87:0]m_axis_notifications_TDATA;
  output m_axis_open_status_TVALID;
  input m_axis_open_status_TREADY;
  output [23:0]m_axis_open_status_TDATA;
  output m_axis_rx_data_TVALID;
  input m_axis_rx_data_TREADY;
  output [63:0]m_axis_rx_data_TDATA;
  output [7:0]m_axis_rx_data_TKEEP;
  output m_axis_rx_data_TLAST;
  output m_axis_rx_metadata_TVALID;
  input m_axis_rx_metadata_TREADY;
  output [15:0]m_axis_rx_metadata_TDATA;
  output m_axis_tx_status_TVALID;
  input m_axis_tx_status_TREADY;
  output [23:0]m_axis_tx_status_TDATA;
  input s_axis_listen_port_TVALID;
  output s_axis_listen_port_TREADY;
  input [15:0]s_axis_listen_port_TDATA;
  input s_axis_close_connection_TVALID;
  output s_axis_close_connection_TREADY;
  input [15:0]s_axis_close_connection_TDATA;
  input s_axis_open_connection_TVALID;
  output s_axis_open_connection_TREADY;
  input [47:0]s_axis_open_connection_TDATA;
  input s_axis_read_package_TVALID;
  output s_axis_read_package_TREADY;
  input [31:0]s_axis_read_package_TDATA;
  input s_axis_tx_data_TVALID;
  output s_axis_tx_data_TREADY;
  input [63:0]s_axis_tx_data_TDATA;
  input [7:0]s_axis_tx_data_TKEEP;
  input s_axis_tx_data_TLAST;
  input s_axis_tx_metadata_TVALID;
  output s_axis_tx_metadata_TREADY;
  input [31:0]s_axis_tx_metadata_TDATA;
  output [3:0]M00_AXI_AWID;
  output [31:0]M00_AXI_AWADDR;
  output [7:0]M00_AXI_AWLEN;
  output [2:0]M00_AXI_AWSIZE;
  output [1:0]M00_AXI_AWBURST;
  output M00_AXI_AWLOCK;
  output [3:0]M00_AXI_AWCACHE;
  output [2:0]M00_AXI_AWPROT;
  output [3:0]M00_AXI_AWQOS;
  output M00_AXI_AWVALID;
  input M00_AXI_AWREADY;
  output [63:0]M00_AXI_WDATA;
  output [7:0]M00_AXI_WSTRB;
  output M00_AXI_WLAST;
  output M00_AXI_WVALID;
  input M00_AXI_WREADY;
  input [3:0]M00_AXI_BID;
  input [1:0]M00_AXI_BRESP;
  input M00_AXI_BVALID;
  output M00_AXI_BREADY;
  output [3:0]M00_AXI_ARID;
  output [31:0]M00_AXI_ARADDR;
  output [7:0]M00_AXI_ARLEN;
  output [2:0]M00_AXI_ARSIZE;
  output [1:0]M00_AXI_ARBURST;
  output M00_AXI_ARLOCK;
  output [3:0]M00_AXI_ARCACHE;
  output [2:0]M00_AXI_ARPROT;
  output [3:0]M00_AXI_ARQOS;
  output M00_AXI_ARVALID;
  input M00_AXI_ARREADY;
  input [3:0]M00_AXI_RID;
  input [63:0]M00_AXI_RDATA;
  input [1:0]M00_AXI_RRESP;
  input M00_AXI_RLAST;
  input M00_AXI_RVALID;
  output M00_AXI_RREADY;
endmodule
