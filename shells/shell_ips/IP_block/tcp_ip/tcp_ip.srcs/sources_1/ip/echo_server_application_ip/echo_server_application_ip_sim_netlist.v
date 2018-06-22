// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 23 14:58:37 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/madanie1/Documents/2017.4/8v3/repo/hls/tcp_test/tcp_ip/scripts/build/proj2017/tcp_ip.srcs/sources_1/ip/echo_server_application_ip/echo_server_application_ip_sim_netlist.v
// Design      : echo_server_application_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "echo_server_application_ip,echo_server_application_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "echo_server_application_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module echo_server_application_ip
   (m_axis_close_connection_TVALID,
    m_axis_close_connection_TREADY,
    m_axis_close_connection_TDATA,
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
    ap_start,
    ap_ready,
    ap_done,
    ap_idle,
    aclk,
    aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_close_connection TVALID" *) output m_axis_close_connection_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_close_connection TREADY" *) input m_axis_close_connection_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_close_connection TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_close_connection, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) output [15:0]m_axis_close_connection_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port TVALID" *) output m_axis_listen_port_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port TREADY" *) input m_axis_listen_port_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_listen_port TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_listen_port, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) output [15:0]m_axis_listen_port_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_connection TVALID" *) output m_axis_open_connection_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_connection TREADY" *) input m_axis_open_connection_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_open_connection TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_open_connection, TDATA_NUM_BYTES 6, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) output [47:0]m_axis_open_connection_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_read_package TVALID" *) output m_axis_read_package_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_read_package TREADY" *) input m_axis_read_package_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_read_package TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_read_package, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) output [31:0]m_axis_read_package_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TVALID" *) output m_axis_tx_data_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TREADY" *) input m_axis_tx_data_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TDATA" *) output [63:0]m_axis_tx_data_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TKEEP" *) output [7:0]m_axis_tx_data_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_data TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *) output [0:0]m_axis_tx_data_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TVALID" *) output m_axis_tx_metadata_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TREADY" *) input m_axis_tx_metadata_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx_metadata, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) output [15:0]m_axis_tx_metadata_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TVALID" *) input s_axis_listen_port_status_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TREADY" *) output s_axis_listen_port_status_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_listen_port_status, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) input [7:0]s_axis_listen_port_status_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_notifications TVALID" *) input s_axis_notifications_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_notifications TREADY" *) output s_axis_notifications_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_notifications TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_notifications, TDATA_NUM_BYTES 11, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 88} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) input [87:0]s_axis_notifications_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_status TVALID" *) input s_axis_open_status_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_status TREADY" *) output s_axis_open_status_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_open_status TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_open_status, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) input [23:0]s_axis_open_status_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TVALID" *) input s_axis_rx_data_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TREADY" *) output s_axis_rx_data_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TDATA" *) input [63:0]s_axis_rx_data_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TKEEP" *) input [7:0]s_axis_rx_data_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_data TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *) input [0:0]s_axis_rx_data_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TVALID" *) input s_axis_rx_metadata_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TREADY" *) output s_axis_rx_metadata_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx_metadata, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) input [15:0]s_axis_rx_metadata_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_status TVALID" *) input s_axis_tx_status_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_status TREADY" *) output s_axis_tx_status_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_status TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_status, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *) input [23:0]s_axis_tx_status_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_close_connection:m_axis_listen_port:m_axis_open_connection:m_axis_read_package:m_axis_tx_data:m_axis_tx_metadata:s_axis_listen_port_status:s_axis_notifications:s_axis_open_status:s_axis_rx_data:s_axis_rx_metadata:s_axis_tx_status, ASSOCIATED_RESET aresetn" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;

  wire aclk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_start;
  wire aresetn;
  wire [15:0]m_axis_close_connection_TDATA;
  wire m_axis_close_connection_TREADY;
  wire m_axis_close_connection_TVALID;
  wire [15:0]m_axis_listen_port_TDATA;
  wire m_axis_listen_port_TREADY;
  wire m_axis_listen_port_TVALID;
  wire [47:0]m_axis_open_connection_TDATA;
  wire m_axis_open_connection_TREADY;
  wire m_axis_open_connection_TVALID;
  wire [31:0]m_axis_read_package_TDATA;
  wire m_axis_read_package_TREADY;
  wire m_axis_read_package_TVALID;
  wire [63:0]m_axis_tx_data_TDATA;
  wire [7:0]m_axis_tx_data_TKEEP;
  wire [0:0]m_axis_tx_data_TLAST;
  wire m_axis_tx_data_TREADY;
  wire m_axis_tx_data_TVALID;
  wire [15:0]m_axis_tx_metadata_TDATA;
  wire m_axis_tx_metadata_TREADY;
  wire m_axis_tx_metadata_TVALID;
  wire [7:0]s_axis_listen_port_status_TDATA;
  wire s_axis_listen_port_status_TREADY;
  wire s_axis_listen_port_status_TVALID;
  wire [87:0]s_axis_notifications_TDATA;
  wire s_axis_notifications_TREADY;
  wire s_axis_notifications_TVALID;
  wire [23:0]s_axis_open_status_TDATA;
  wire s_axis_open_status_TREADY;
  wire s_axis_open_status_TVALID;
  wire [63:0]s_axis_rx_data_TDATA;
  wire [7:0]s_axis_rx_data_TKEEP;
  wire [0:0]s_axis_rx_data_TLAST;
  wire s_axis_rx_data_TREADY;
  wire s_axis_rx_data_TVALID;
  wire [15:0]s_axis_rx_metadata_TDATA;
  wire s_axis_rx_metadata_TREADY;
  wire s_axis_rx_metadata_TVALID;
  wire [23:0]s_axis_tx_status_TDATA;
  wire s_axis_tx_status_TREADY;
  wire s_axis_tx_status_TVALID;

  (* RESET_ACTIVE_LOW = "1" *) 
  echo_server_application_ip_echo_server_application_top inst
       (.aclk(aclk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_start(ap_start),
        .aresetn(aresetn),
        .m_axis_close_connection_TDATA(m_axis_close_connection_TDATA),
        .m_axis_close_connection_TREADY(m_axis_close_connection_TREADY),
        .m_axis_close_connection_TVALID(m_axis_close_connection_TVALID),
        .m_axis_listen_port_TDATA(m_axis_listen_port_TDATA),
        .m_axis_listen_port_TREADY(m_axis_listen_port_TREADY),
        .m_axis_listen_port_TVALID(m_axis_listen_port_TVALID),
        .m_axis_open_connection_TDATA(m_axis_open_connection_TDATA),
        .m_axis_open_connection_TREADY(m_axis_open_connection_TREADY),
        .m_axis_open_connection_TVALID(m_axis_open_connection_TVALID),
        .m_axis_read_package_TDATA(m_axis_read_package_TDATA),
        .m_axis_read_package_TREADY(m_axis_read_package_TREADY),
        .m_axis_read_package_TVALID(m_axis_read_package_TVALID),
        .m_axis_tx_data_TDATA(m_axis_tx_data_TDATA),
        .m_axis_tx_data_TKEEP(m_axis_tx_data_TKEEP),
        .m_axis_tx_data_TLAST(m_axis_tx_data_TLAST),
        .m_axis_tx_data_TREADY(m_axis_tx_data_TREADY),
        .m_axis_tx_data_TVALID(m_axis_tx_data_TVALID),
        .m_axis_tx_metadata_TDATA(m_axis_tx_metadata_TDATA),
        .m_axis_tx_metadata_TREADY(m_axis_tx_metadata_TREADY),
        .m_axis_tx_metadata_TVALID(m_axis_tx_metadata_TVALID),
        .s_axis_listen_port_status_TDATA(s_axis_listen_port_status_TDATA),
        .s_axis_listen_port_status_TREADY(s_axis_listen_port_status_TREADY),
        .s_axis_listen_port_status_TVALID(s_axis_listen_port_status_TVALID),
        .s_axis_notifications_TDATA(s_axis_notifications_TDATA),
        .s_axis_notifications_TREADY(s_axis_notifications_TREADY),
        .s_axis_notifications_TVALID(s_axis_notifications_TVALID),
        .s_axis_open_status_TDATA(s_axis_open_status_TDATA),
        .s_axis_open_status_TREADY(s_axis_open_status_TREADY),
        .s_axis_open_status_TVALID(s_axis_open_status_TVALID),
        .s_axis_rx_data_TDATA(s_axis_rx_data_TDATA),
        .s_axis_rx_data_TKEEP(s_axis_rx_data_TKEEP),
        .s_axis_rx_data_TLAST(s_axis_rx_data_TLAST),
        .s_axis_rx_data_TREADY(s_axis_rx_data_TREADY),
        .s_axis_rx_data_TVALID(s_axis_rx_data_TVALID),
        .s_axis_rx_metadata_TDATA(s_axis_rx_metadata_TDATA),
        .s_axis_rx_metadata_TREADY(s_axis_rx_metadata_TREADY),
        .s_axis_rx_metadata_TVALID(s_axis_rx_metadata_TVALID),
        .s_axis_tx_status_TDATA(s_axis_tx_status_TDATA),
        .s_axis_tx_status_TREADY(s_axis_tx_status_TREADY),
        .s_axis_tx_status_TVALID(s_axis_tx_status_TVALID));
endmodule

(* ORIG_REF_NAME = "echo_server_application" *) 
module echo_server_application_ip_echo_server_application
   (tmp_reg_435,
    sig_echo_server_application_listenPortStatus_V_read,
    \ea_fsmState_V_load_reg_473_reg[0]_0 ,
    \waitPortStatus_reg[0]_0 ,
    tmp_9_reg_464,
    p_12_out,
    p_12_out_0,
    load_p2,
    load_p2_1,
    p_12_out_2,
    ap_done,
    \state_reg[0] ,
    \tmp_4_reg_477_reg[0]_0 ,
    ea_fsmState_V4_out,
    \index_reg[3] ,
    ap_ready,
    ap_idle,
    \data_p2_reg[15] ,
    \data_p2_reg[15]_0 ,
    \data_p2_reg[31] ,
    \data_p2_reg[72] ,
    Q,
    aclk,
    E,
    \data_p1_reg[16] ,
    sig_echo_server_application_listenPortStatus_V_dout,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \data_p1_reg[72] ,
    AS,
    ap_start,
    \state_reg[0]_2 ,
    empty_reg,
    empty_reg_0,
    empty_reg_1,
    full_reg,
    full_reg_0,
    sig_echo_server_application_txData_V_full_n,
    sig_echo_server_application_readRequest_V_full_n,
    full_reg_1,
    sig_echo_server_application_openConnection_V_full_n,
    out,
    \state_reg[0]_3 ,
    \data_p1_reg[31] ,
    \data_p1_reg[72]_0 );
  output tmp_reg_435;
  output sig_echo_server_application_listenPortStatus_V_read;
  output \ea_fsmState_V_load_reg_473_reg[0]_0 ;
  output \waitPortStatus_reg[0]_0 ;
  output tmp_9_reg_464;
  output p_12_out;
  output p_12_out_0;
  output load_p2;
  output load_p2_1;
  output p_12_out_2;
  output ap_done;
  output \state_reg[0] ;
  output \tmp_4_reg_477_reg[0]_0 ;
  output ea_fsmState_V4_out;
  output \index_reg[3] ;
  output ap_ready;
  output ap_idle;
  output [15:0]\data_p2_reg[15] ;
  output [15:0]\data_p2_reg[15]_0 ;
  output [31:0]\data_p2_reg[31] ;
  output [72:0]\data_p2_reg[72] ;
  input [0:0]Q;
  input aclk;
  input [0:0]E;
  input [16:0]\data_p1_reg[16] ;
  input sig_echo_server_application_listenPortStatus_V_dout;
  input [0:0]\state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input \data_p1_reg[72] ;
  input [0:0]AS;
  input ap_start;
  input [0:0]\state_reg[0]_2 ;
  input empty_reg;
  input empty_reg_0;
  input empty_reg_1;
  input full_reg;
  input full_reg_0;
  input sig_echo_server_application_txData_V_full_n;
  input sig_echo_server_application_readRequest_V_full_n;
  input full_reg_1;
  input sig_echo_server_application_openConnection_V_full_n;
  input [15:0]out;
  input [0:0]\state_reg[0]_3 ;
  input [31:0]\data_p1_reg[31] ;
  input [72:0]\data_p1_reg[72]_0 ;

  wire [0:0]AS;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_ready_INST_0_i_1_n_0;
  wire ap_ready_INST_0_i_2_n_0;
  wire ap_ready_INST_0_i_3_n_0;
  wire ap_reg_ppiten_pp0_it1;
  wire ap_reg_ppiten_pp0_it11;
  wire ap_reg_ppiten_pp0_it1_i_1_n_0;
  wire ap_start;
  wire brmerge_fu_367_p2;
  wire brmerge_reg_452;
  wire [16:0]\data_p1_reg[16] ;
  wire [31:0]\data_p1_reg[31] ;
  wire \data_p1_reg[72] ;
  wire [72:0]\data_p1_reg[72]_0 ;
  wire [15:0]\data_p2_reg[15] ;
  wire [15:0]\data_p2_reg[15]_0 ;
  wire [31:0]\data_p2_reg[31] ;
  wire [72:0]\data_p2_reg[72] ;
  wire ea_fsmState_V4_out;
  wire \ea_fsmState_V_load_reg_473_reg[0]_0 ;
  wire \ea_fsmState_V_load_reg_473_reg_n_0_[0] ;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire full_reg;
  wire full_reg_0;
  wire full_reg_1;
  wire \index[3]_i_4_n_0 ;
  wire \index_reg[3] ;
  wire listenDone;
  wire \listenDone[0]_i_2_n_0 ;
  wire load_p2;
  wire load_p2_1;
  wire [15:0]out;
  wire p_12_out;
  wire p_12_out_0;
  wire p_12_out_2;
  wire s_ready_t_i_3_n_0;
  wire sig_echo_server_application_listenPortStatus_V_dout;
  wire sig_echo_server_application_listenPortStatus_V_read;
  wire sig_echo_server_application_openConnection_V_full_n;
  wire sig_echo_server_application_readRequest_V_full_n;
  wire sig_echo_server_application_txData_V_full_n;
  wire \state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire [0:0]\state_reg[0]_2 ;
  wire [0:0]\state_reg[0]_3 ;
  wire tmp_3_reg_460;
  wire tmp_432_reg_4900;
  wire tmp_4_reg_477;
  wire \tmp_4_reg_477[0]_i_1_n_0 ;
  wire \tmp_4_reg_477_reg[0]_0 ;
  wire tmp_5_reg_486;
  wire \tmp_5_reg_486[0]_i_1_n_0 ;
  wire tmp_7_reg_444;
  wire tmp_9_reg_464;
  wire tmp_V_2_reg_4810;
  wire tmp_reg_435;
  wire \waitPortStatus[0]_i_1_n_0 ;
  wire \waitPortStatus_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    ap_done_INST_0
       (.I0(ap_reg_ppiten_pp0_it1),
        .I1(ap_ready_INST_0_i_3_n_0),
        .I2(ap_ready_INST_0_i_2_n_0),
        .I3(ap_ready_INST_0_i_1_n_0),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ap_idle_INST_0
       (.I0(ap_start),
        .I1(ap_reg_ppiten_pp0_it1),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    ap_ready_INST_0
       (.I0(ap_start),
        .I1(ap_ready_INST_0_i_1_n_0),
        .I2(ap_ready_INST_0_i_2_n_0),
        .I3(ap_ready_INST_0_i_3_n_0),
        .I4(ap_reg_ppiten_pp0_it1),
        .O(ap_ready));
  LUT4 #(
    .INIT(16'h7F55)) 
    ap_ready_INST_0_i_1
       (.I0(tmp_reg_435),
        .I1(tmp_7_reg_444),
        .I2(full_reg_1),
        .I3(sig_echo_server_application_openConnection_V_full_n),
        .O(ap_ready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    ap_ready_INST_0_i_2
       (.I0(\ea_fsmState_V_load_reg_473_reg_n_0_[0] ),
        .I1(full_reg),
        .I2(tmp_4_reg_477),
        .I3(brmerge_reg_452),
        .I4(full_reg_0),
        .O(ap_ready_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0808080808FF0808)) 
    ap_ready_INST_0_i_3
       (.I0(\ea_fsmState_V_load_reg_473_reg_n_0_[0] ),
        .I1(tmp_5_reg_486),
        .I2(sig_echo_server_application_txData_V_full_n),
        .I3(sig_echo_server_application_readRequest_V_full_n),
        .I4(tmp_3_reg_460),
        .I5(tmp_9_reg_464),
        .O(ap_ready_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_reg_ppiten_pp0_it1_i_1
       (.I0(ap_start),
        .I1(\tmp_4_reg_477_reg[0]_0 ),
        .I2(ap_reg_ppiten_pp0_it1),
        .O(ap_reg_ppiten_pp0_it1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ppiten_pp0_it1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ap_reg_ppiten_pp0_it1_i_1_n_0),
        .Q(ap_reg_ppiten_pp0_it1),
        .R(AS));
  LUT2 #(
    .INIT(4'hE)) 
    \brmerge_reg_452[0]_i_1 
       (.I0(\waitPortStatus_reg[0]_0 ),
        .I1(listenDone),
        .O(brmerge_fu_367_p2));
  FDRE \brmerge_reg_452_reg[0] 
       (.C(aclk),
        .CE(ap_reg_ppiten_pp0_it11),
        .D(brmerge_fu_367_p2),
        .Q(brmerge_reg_452),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \data_p2[31]_i_1 
       (.I0(tmp_9_reg_464),
        .I1(tmp_3_reg_460),
        .I2(ap_ready_INST_0_i_1_n_0),
        .I3(ap_ready_INST_0_i_2_n_0),
        .I4(ap_ready_INST_0_i_3_n_0),
        .I5(ap_reg_ppiten_pp0_it1),
        .O(load_p2));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \data_p2[72]_i_1 
       (.I0(tmp_5_reg_486),
        .I1(\ea_fsmState_V_load_reg_473_reg_n_0_[0] ),
        .I2(ap_ready_INST_0_i_1_n_0),
        .I3(ap_ready_INST_0_i_2_n_0),
        .I4(ap_ready_INST_0_i_3_n_0),
        .I5(ap_reg_ppiten_pp0_it1),
        .O(load_p2_1));
  FDRE \ea_fsmState_V_load_reg_473_reg[0] 
       (.C(aclk),
        .CE(ap_reg_ppiten_pp0_it11),
        .D(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .Q(\ea_fsmState_V_load_reg_473_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ea_fsmState_V_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\data_p1_reg[72] ),
        .Q(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_1 
       (.I0(tmp_7_reg_444),
        .I1(tmp_reg_435),
        .I2(ap_reg_ppiten_pp0_it1),
        .I3(ap_ready_INST_0_i_3_n_0),
        .I4(ap_ready_INST_0_i_2_n_0),
        .I5(ap_ready_INST_0_i_1_n_0),
        .O(p_12_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_1__0 
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(ap_ready_INST_0_i_2_n_0),
        .I2(ap_ready_INST_0_i_3_n_0),
        .I3(ap_reg_ppiten_pp0_it1),
        .I4(brmerge_reg_452),
        .O(p_12_out_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_1__1 
       (.I0(\ea_fsmState_V_load_reg_473_reg_n_0_[0] ),
        .I1(tmp_4_reg_477),
        .I2(ap_ready_INST_0_i_1_n_0),
        .I3(ap_ready_INST_0_i_2_n_0),
        .I4(ap_ready_INST_0_i_3_n_0),
        .I5(ap_reg_ppiten_pp0_it1),
        .O(p_12_out_2));
  LUT6 #(
    .INIT(64'h222A222200000000)) 
    \index[3]_i_3 
       (.I0(\index[3]_i_4_n_0 ),
        .I1(ap_reg_ppiten_pp0_it1),
        .I2(ap_ready_INST_0_i_3_n_0),
        .I3(ap_ready_INST_0_i_2_n_0),
        .I4(ap_ready_INST_0_i_1_n_0),
        .I5(ap_start),
        .O(ea_fsmState_V4_out));
  LUT6 #(
    .INIT(64'hEEEAEEEEFFFFFFFF)) 
    \index[3]_i_3__0 
       (.I0(empty_reg_1),
        .I1(ap_reg_ppiten_pp0_it1),
        .I2(ap_ready_INST_0_i_3_n_0),
        .I3(ap_ready_INST_0_i_2_n_0),
        .I4(ap_ready_INST_0_i_1_n_0),
        .I5(ap_start),
        .O(\index_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \index[3]_i_4 
       (.I0(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .I1(empty_reg),
        .O(\index[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h222A222200000000)) 
    \listenDone[0]_i_1 
       (.I0(\listenDone[0]_i_2_n_0 ),
        .I1(ap_reg_ppiten_pp0_it1),
        .I2(ap_ready_INST_0_i_3_n_0),
        .I3(ap_ready_INST_0_i_2_n_0),
        .I4(ap_ready_INST_0_i_1_n_0),
        .I5(ap_start),
        .O(sig_echo_server_application_listenPortStatus_V_read));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \listenDone[0]_i_2 
       (.I0(\waitPortStatus_reg[0]_0 ),
        .I1(empty_reg_0),
        .O(\listenDone[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \listenDone_reg[0] 
       (.C(aclk),
        .CE(sig_echo_server_application_listenPortStatus_V_read),
        .D(sig_echo_server_application_listenPortStatus_V_dout),
        .Q(listenDone),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000222A2222)) 
    s_ready_t_i_2
       (.I0(ap_start),
        .I1(ap_reg_ppiten_pp0_it1),
        .I2(ap_ready_INST_0_i_3_n_0),
        .I3(ap_ready_INST_0_i_2_n_0),
        .I4(ap_ready_INST_0_i_1_n_0),
        .I5(s_ready_t_i_3_n_0),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    s_ready_t_i_2__0
       (.I0(ap_reg_ppiten_pp0_it1),
        .I1(ap_ready_INST_0_i_3_n_0),
        .I2(ap_ready_INST_0_i_2_n_0),
        .I3(ap_ready_INST_0_i_1_n_0),
        .O(\tmp_4_reg_477_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_ready_t_i_3
       (.I0(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .I1(\state_reg[0]_2 ),
        .O(s_ready_t_i_3_n_0));
  FDRE \tmp_327_reg_468_reg[0] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [0]),
        .Q(\data_p2_reg[31] [0]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[10] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [10]),
        .Q(\data_p2_reg[31] [10]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[11] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [11]),
        .Q(\data_p2_reg[31] [11]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[12] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [12]),
        .Q(\data_p2_reg[31] [12]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[13] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [13]),
        .Q(\data_p2_reg[31] [13]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[14] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [14]),
        .Q(\data_p2_reg[31] [14]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[15] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [15]),
        .Q(\data_p2_reg[31] [15]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[16] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [16]),
        .Q(\data_p2_reg[31] [16]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[17] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [17]),
        .Q(\data_p2_reg[31] [17]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[18] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [18]),
        .Q(\data_p2_reg[31] [18]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[19] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [19]),
        .Q(\data_p2_reg[31] [19]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[1] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [1]),
        .Q(\data_p2_reg[31] [1]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[20] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [20]),
        .Q(\data_p2_reg[31] [20]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[21] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [21]),
        .Q(\data_p2_reg[31] [21]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[22] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [22]),
        .Q(\data_p2_reg[31] [22]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[23] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [23]),
        .Q(\data_p2_reg[31] [23]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[24] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [24]),
        .Q(\data_p2_reg[31] [24]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[25] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [25]),
        .Q(\data_p2_reg[31] [25]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[26] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [26]),
        .Q(\data_p2_reg[31] [26]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[27] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [27]),
        .Q(\data_p2_reg[31] [27]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[28] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [28]),
        .Q(\data_p2_reg[31] [28]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[29] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [29]),
        .Q(\data_p2_reg[31] [29]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[2] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [2]),
        .Q(\data_p2_reg[31] [2]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[30] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [30]),
        .Q(\data_p2_reg[31] [30]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[31] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [31]),
        .Q(\data_p2_reg[31] [31]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[3] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [3]),
        .Q(\data_p2_reg[31] [3]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[4] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [4]),
        .Q(\data_p2_reg[31] [4]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[5] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [5]),
        .Q(\data_p2_reg[31] [5]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[6] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [6]),
        .Q(\data_p2_reg[31] [6]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[7] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [7]),
        .Q(\data_p2_reg[31] [7]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[8] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [8]),
        .Q(\data_p2_reg[31] [8]),
        .R(1'b0));
  FDRE \tmp_327_reg_468_reg[9] 
       (.C(aclk),
        .CE(\state_reg[0]_3 ),
        .D(\data_p1_reg[31] [9]),
        .Q(\data_p2_reg[31] [9]),
        .R(1'b0));
  FDRE \tmp_3_reg_460_reg[0] 
       (.C(aclk),
        .CE(ap_reg_ppiten_pp0_it11),
        .D(\state_reg[0]_0 ),
        .Q(tmp_3_reg_460),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \tmp_432_reg_490[72]_i_1 
       (.I0(\tmp_4_reg_477_reg[0]_0 ),
        .I1(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .I2(\state_reg[0]_2 ),
        .O(tmp_432_reg_4900));
  FDRE \tmp_432_reg_490_reg[0] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [0]),
        .Q(\data_p2_reg[72] [0]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[10] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [10]),
        .Q(\data_p2_reg[72] [10]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[11] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [11]),
        .Q(\data_p2_reg[72] [11]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[12] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [12]),
        .Q(\data_p2_reg[72] [12]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[13] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [13]),
        .Q(\data_p2_reg[72] [13]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[14] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [14]),
        .Q(\data_p2_reg[72] [14]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[15] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [15]),
        .Q(\data_p2_reg[72] [15]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[16] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [16]),
        .Q(\data_p2_reg[72] [16]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[17] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [17]),
        .Q(\data_p2_reg[72] [17]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[18] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [18]),
        .Q(\data_p2_reg[72] [18]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[19] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [19]),
        .Q(\data_p2_reg[72] [19]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[1] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [1]),
        .Q(\data_p2_reg[72] [1]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[20] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [20]),
        .Q(\data_p2_reg[72] [20]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[21] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [21]),
        .Q(\data_p2_reg[72] [21]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[22] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [22]),
        .Q(\data_p2_reg[72] [22]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[23] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [23]),
        .Q(\data_p2_reg[72] [23]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[24] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [24]),
        .Q(\data_p2_reg[72] [24]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[25] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [25]),
        .Q(\data_p2_reg[72] [25]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[26] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [26]),
        .Q(\data_p2_reg[72] [26]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[27] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [27]),
        .Q(\data_p2_reg[72] [27]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[28] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [28]),
        .Q(\data_p2_reg[72] [28]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[29] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [29]),
        .Q(\data_p2_reg[72] [29]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[2] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [2]),
        .Q(\data_p2_reg[72] [2]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[30] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [30]),
        .Q(\data_p2_reg[72] [30]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[31] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [31]),
        .Q(\data_p2_reg[72] [31]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[32] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [32]),
        .Q(\data_p2_reg[72] [32]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[33] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [33]),
        .Q(\data_p2_reg[72] [33]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[34] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [34]),
        .Q(\data_p2_reg[72] [34]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[35] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [35]),
        .Q(\data_p2_reg[72] [35]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[36] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [36]),
        .Q(\data_p2_reg[72] [36]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[37] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [37]),
        .Q(\data_p2_reg[72] [37]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[38] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [38]),
        .Q(\data_p2_reg[72] [38]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[39] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [39]),
        .Q(\data_p2_reg[72] [39]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[3] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [3]),
        .Q(\data_p2_reg[72] [3]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[40] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [40]),
        .Q(\data_p2_reg[72] [40]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[41] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [41]),
        .Q(\data_p2_reg[72] [41]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[42] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [42]),
        .Q(\data_p2_reg[72] [42]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[43] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [43]),
        .Q(\data_p2_reg[72] [43]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[44] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [44]),
        .Q(\data_p2_reg[72] [44]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[45] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [45]),
        .Q(\data_p2_reg[72] [45]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[46] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [46]),
        .Q(\data_p2_reg[72] [46]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[47] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [47]),
        .Q(\data_p2_reg[72] [47]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[48] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [48]),
        .Q(\data_p2_reg[72] [48]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[49] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [49]),
        .Q(\data_p2_reg[72] [49]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[4] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [4]),
        .Q(\data_p2_reg[72] [4]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[50] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [50]),
        .Q(\data_p2_reg[72] [50]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[51] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [51]),
        .Q(\data_p2_reg[72] [51]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[52] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [52]),
        .Q(\data_p2_reg[72] [52]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[53] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [53]),
        .Q(\data_p2_reg[72] [53]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[54] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [54]),
        .Q(\data_p2_reg[72] [54]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[55] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [55]),
        .Q(\data_p2_reg[72] [55]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[56] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [56]),
        .Q(\data_p2_reg[72] [56]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[57] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [57]),
        .Q(\data_p2_reg[72] [57]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[58] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [58]),
        .Q(\data_p2_reg[72] [58]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[59] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [59]),
        .Q(\data_p2_reg[72] [59]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[5] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [5]),
        .Q(\data_p2_reg[72] [5]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[60] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [60]),
        .Q(\data_p2_reg[72] [60]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[61] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [61]),
        .Q(\data_p2_reg[72] [61]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[62] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [62]),
        .Q(\data_p2_reg[72] [62]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[63] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [63]),
        .Q(\data_p2_reg[72] [63]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[64] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [64]),
        .Q(\data_p2_reg[72] [64]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[65] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [65]),
        .Q(\data_p2_reg[72] [65]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[66] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [66]),
        .Q(\data_p2_reg[72] [66]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[67] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [67]),
        .Q(\data_p2_reg[72] [67]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[68] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [68]),
        .Q(\data_p2_reg[72] [68]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[69] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [69]),
        .Q(\data_p2_reg[72] [69]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[6] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [6]),
        .Q(\data_p2_reg[72] [6]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[70] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [70]),
        .Q(\data_p2_reg[72] [70]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[71] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [71]),
        .Q(\data_p2_reg[72] [71]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[72] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [72]),
        .Q(\data_p2_reg[72] [72]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[7] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [7]),
        .Q(\data_p2_reg[72] [7]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[8] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [8]),
        .Q(\data_p2_reg[72] [8]),
        .R(1'b0));
  FDRE \tmp_432_reg_490_reg[9] 
       (.C(aclk),
        .CE(tmp_432_reg_4900),
        .D(\data_p1_reg[72]_0 [9]),
        .Q(\data_p2_reg[72] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFD01)) 
    \tmp_4_reg_477[0]_i_1 
       (.I0(empty_reg),
        .I1(\tmp_4_reg_477_reg[0]_0 ),
        .I2(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .I3(tmp_4_reg_477),
        .O(\tmp_4_reg_477[0]_i_1_n_0 ));
  FDRE \tmp_4_reg_477_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tmp_4_reg_477[0]_i_1_n_0 ),
        .Q(tmp_4_reg_477),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \tmp_5_reg_486[0]_i_1 
       (.I0(\state_reg[0]_2 ),
        .I1(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .I2(\tmp_4_reg_477_reg[0]_0 ),
        .I3(tmp_5_reg_486),
        .O(\tmp_5_reg_486[0]_i_1_n_0 ));
  FDRE \tmp_5_reg_486_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tmp_5_reg_486[0]_i_1_n_0 ),
        .Q(tmp_5_reg_486),
        .R(1'b0));
  FDRE \tmp_7_reg_444_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [16]),
        .Q(tmp_7_reg_444),
        .R(1'b0));
  FDRE \tmp_9_reg_464_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state_reg[0]_1 ),
        .Q(tmp_9_reg_464),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \tmp_V_2_reg_481[15]_i_1 
       (.I0(empty_reg),
        .I1(\ea_fsmState_V_load_reg_473_reg[0]_0 ),
        .I2(\tmp_4_reg_477_reg[0]_0 ),
        .O(tmp_V_2_reg_4810));
  FDRE \tmp_V_2_reg_481_reg[0] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[0]),
        .Q(\data_p2_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[10] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[10]),
        .Q(\data_p2_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[11] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[11]),
        .Q(\data_p2_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[12] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[12]),
        .Q(\data_p2_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[13] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[13]),
        .Q(\data_p2_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[14] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[14]),
        .Q(\data_p2_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[15] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[15]),
        .Q(\data_p2_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[1] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[1]),
        .Q(\data_p2_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[2] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[2]),
        .Q(\data_p2_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[3] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[3]),
        .Q(\data_p2_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[4] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[4]),
        .Q(\data_p2_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[5] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[5]),
        .Q(\data_p2_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[6] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[6]),
        .Q(\data_p2_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[7] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[7]),
        .Q(\data_p2_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[8] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[8]),
        .Q(\data_p2_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \tmp_V_2_reg_481_reg[9] 
       (.C(aclk),
        .CE(tmp_V_2_reg_4810),
        .D(out[9]),
        .Q(\data_p2_reg[15]_0 [9]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [0]),
        .Q(\data_p2_reg[15] [0]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [10]),
        .Q(\data_p2_reg[15] [10]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [11]),
        .Q(\data_p2_reg[15] [11]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [12]),
        .Q(\data_p2_reg[15] [12]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [13]),
        .Q(\data_p2_reg[15] [13]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [14]),
        .Q(\data_p2_reg[15] [14]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [15]),
        .Q(\data_p2_reg[15] [15]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [1]),
        .Q(\data_p2_reg[15] [1]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [2]),
        .Q(\data_p2_reg[15] [2]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [3]),
        .Q(\data_p2_reg[15] [3]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [4]),
        .Q(\data_p2_reg[15] [4]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [5]),
        .Q(\data_p2_reg[15] [5]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [6]),
        .Q(\data_p2_reg[15] [6]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [7]),
        .Q(\data_p2_reg[15] [7]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [8]),
        .Q(\data_p2_reg[15] [8]),
        .R(1'b0));
  FDRE \tmp_V_reg_439_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\data_p1_reg[16] [9]),
        .Q(\data_p2_reg[15] [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_reg_435[0]_i_1 
       (.I0(\tmp_4_reg_477_reg[0]_0 ),
        .O(ap_reg_ppiten_pp0_it11));
  FDRE \tmp_reg_435_reg[0] 
       (.C(aclk),
        .CE(ap_reg_ppiten_pp0_it11),
        .D(Q),
        .Q(tmp_reg_435),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF04F304)) 
    \waitPortStatus[0]_i_1 
       (.I0(listenDone),
        .I1(ap_start),
        .I2(\tmp_4_reg_477_reg[0]_0 ),
        .I3(\waitPortStatus_reg[0]_0 ),
        .I4(empty_reg_0),
        .O(\waitPortStatus[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waitPortStatus_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\waitPortStatus[0]_i_1_n_0 ),
        .Q(\waitPortStatus_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_close_connection_fifo" *) 
module echo_server_application_ip_echo_server_application_m_axis_close_connection_fifo
   (full_reg_0,
    full_reg_1,
    out,
    aclk,
    AS,
    p_12_out,
    s_ready,
    E,
    in);
  output full_reg_0;
  output full_reg_1;
  output [15:0]out;
  input aclk;
  input [0:0]AS;
  input p_12_out;
  input s_ready;
  input [0:0]E;
  input [15:0]in;

  wire [0:0]AS;
  wire [0:0]E;
  wire aclk;
  wire empty_i_1__0_n_0;
  wire empty_i_2_n_0;
  wire full_i_1_n_0;
  wire full_i_2_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire [15:0]in;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[3]_i_1_n_0 ;
  wire \index[3]_i_2_n_0 ;
  wire [3:0]index_reg__0;
  wire [15:0]out;
  wire p_12_out;
  wire s_ready;

  LUT4 #(
    .INIT(16'h5444)) 
    empty_i_1__0
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(empty_i_2_n_0),
        .O(empty_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    empty_i_2
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[3]),
        .I3(index_reg__0[2]),
        .O(empty_i_2_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1__0_n_0),
        .PRE(AS),
        .Q(full_reg_1));
  LUT5 #(
    .INIT(32'hFFB0F0B0)) 
    full_i_1
       (.I0(full_reg_1),
        .I1(s_ready),
        .I2(full_reg_0),
        .I3(p_12_out),
        .I4(full_i_2_n_0),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000800080)) 
    full_i_2
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[0]),
        .I4(full_reg_1),
        .I5(s_ready),
        .O(full_i_2_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(full_i_1_n_0),
        .Q(full_reg_0));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][0]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[0]),
        .Q(out[0]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][10]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][11]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][12]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][13]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][14]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][15]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][1]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][2]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][3]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][4]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][5]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][6]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][7]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][8]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][9]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[9]),
        .Q(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg__0[0]),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \index[1]_i_1 
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(index_reg__0[1]),
        .I4(index_reg__0[0]),
        .O(\index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10FFEF00FFEF0010)) 
    \index[2]_i_1 
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(index_reg__0[0]),
        .I4(index_reg__0[2]),
        .I5(index_reg__0[1]),
        .O(\index[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \index[3]_i_1 
       (.I0(full_reg_1),
        .I1(s_ready),
        .I2(p_12_out),
        .O(\index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6AAA6AAAAAA9AA)) 
    \index[3]_i_2 
       (.I0(index_reg__0[3]),
        .I1(index_reg__0[2]),
        .I2(index_reg__0[0]),
        .I3(E),
        .I4(p_12_out),
        .I5(index_reg__0[1]),
        .O(\index[3]_i_2_n_0 ));
  FDPE \index_reg[0] 
       (.C(aclk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[0]_i_1_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[0]));
  FDPE \index_reg[1] 
       (.C(aclk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[1]_i_1_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[1]));
  FDPE \index_reg[2] 
       (.C(aclk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[2]_i_1_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[2]));
  FDPE \index_reg[3] 
       (.C(aclk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[3]_i_2_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_close_connection_if" *) 
module echo_server_application_ip_echo_server_application_m_axis_close_connection_if
   (full_reg,
    Q,
    m_axis_close_connection_TDATA,
    AS,
    aclk,
    p_12_out,
    m_axis_close_connection_TREADY,
    in);
  output full_reg;
  output [0:0]Q;
  output [15:0]m_axis_close_connection_TDATA;
  input [0:0]AS;
  input aclk;
  input p_12_out;
  input m_axis_close_connection_TREADY;
  input [15:0]in;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire [15:0]closeConnection_V_V_dout;
  wire closeConnection_V_V_fifo_n_1;
  wire full_reg;
  wire [15:0]in;
  wire load_p2;
  wire [15:0]m_axis_close_connection_TDATA;
  wire m_axis_close_connection_TREADY;
  wire p_12_out;
  wire s_ready;

  echo_server_application_ip_echo_server_application_m_axis_close_connection_fifo closeConnection_V_V_fifo
       (.AS(AS),
        .E(load_p2),
        .aclk(aclk),
        .full_reg_0(full_reg),
        .full_reg_1(closeConnection_V_V_fifo_n_1),
        .in(in),
        .out(closeConnection_V_V_dout),
        .p_12_out(p_12_out),
        .s_ready(s_ready));
  echo_server_application_ip_echo_server_application_m_axis_close_connection_reg_slice rs
       (.AS(AS),
        .D(closeConnection_V_V_dout),
        .E(load_p2),
        .Q(Q),
        .aclk(aclk),
        .empty_reg(closeConnection_V_V_fifo_n_1),
        .m_axis_close_connection_TDATA(m_axis_close_connection_TDATA),
        .m_axis_close_connection_TREADY(m_axis_close_connection_TREADY),
        .s_ready(s_ready));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_close_connection_reg_slice" *) 
module echo_server_application_ip_echo_server_application_m_axis_close_connection_reg_slice
   (s_ready,
    Q,
    E,
    m_axis_close_connection_TDATA,
    AS,
    aclk,
    m_axis_close_connection_TREADY,
    empty_reg,
    D);
  output s_ready;
  output [0:0]Q;
  output [0:0]E;
  output [15:0]m_axis_close_connection_TDATA;
  input [0:0]AS;
  input aclk;
  input m_axis_close_connection_TREADY;
  input empty_reg;
  input [15:0]D;

  wire [0:0]AS;
  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire \data_p1[0]_i_1__2_n_0 ;
  wire \data_p1[10]_i_1__2_n_0 ;
  wire \data_p1[11]_i_1__2_n_0 ;
  wire \data_p1[12]_i_1__3_n_0 ;
  wire \data_p1[13]_i_1__2_n_0 ;
  wire \data_p1[14]_i_1__2_n_0 ;
  wire \data_p1[15]_i_2_n_0 ;
  wire \data_p1[1]_i_1__2_n_0 ;
  wire \data_p1[2]_i_1__2_n_0 ;
  wire \data_p1[3]_i_1__2_n_0 ;
  wire \data_p1[4]_i_1__2_n_0 ;
  wire \data_p1[5]_i_1__2_n_0 ;
  wire \data_p1[6]_i_1__2_n_0 ;
  wire \data_p1[7]_i_1__2_n_0 ;
  wire \data_p1[8]_i_1__2_n_0 ;
  wire \data_p1[9]_i_1__2_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire empty_reg;
  wire load_p1;
  wire [15:0]m_axis_close_connection_TDATA;
  wire m_axis_close_connection_TREADY;
  wire s_ready;
  wire s_ready_t_i_1_n_0;
  wire [1:1]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1__3_n_0 ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__2 
       (.I0(D[0]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1__2 
       (.I0(D[10]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1__2 
       (.I0(D[11]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1__3 
       (.I0(D[12]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1__2 
       (.I0(D[13]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1__2 
       (.I0(D[14]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[14] ),
        .O(\data_p1[14]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h7404)) 
    \data_p1[15]_i_1__0 
       (.I0(empty_reg),
        .I1(state),
        .I2(Q),
        .I3(m_axis_close_connection_TREADY),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_2 
       (.I0(D[15]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1__2 
       (.I0(D[1]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1__2 
       (.I0(D[2]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__2 
       (.I0(D[3]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1__2 
       (.I0(D[4]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1__2 
       (.I0(D[5]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1__2 
       (.I0(D[6]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__2 
       (.I0(D[7]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__2 
       (.I0(D[8]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__2 
       (.I0(D[9]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__2_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__3_n_0 ),
        .Q(m_axis_close_connection_TDATA[12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_2_n_0 ),
        .Q(m_axis_close_connection_TDATA[15]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__2_n_0 ),
        .Q(m_axis_close_connection_TDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_p2[15]_i_1 
       (.I0(s_ready),
        .I1(empty_reg),
        .O(E));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEFFF0FC0)) 
    s_ready_t_i_1
       (.I0(empty_reg),
        .I1(m_axis_close_connection_TREADY),
        .I2(Q),
        .I3(state),
        .I4(s_ready),
        .O(s_ready_t_i_1_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1_n_0),
        .Q(s_ready),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h5FFF0C00)) 
    \state[0]_i_2 
       (.I0(m_axis_close_connection_TREADY),
        .I1(s_ready),
        .I2(empty_reg),
        .I3(state),
        .I4(Q),
        .O(\state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \state[1]_i_1__3 
       (.I0(state),
        .I1(empty_reg),
        .I2(m_axis_close_connection_TREADY),
        .I3(Q),
        .O(\state[1]_i_1__3_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_2_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__3_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_listen_port_fifo" *) 
module echo_server_application_ip_echo_server_application_m_axis_listen_port_fifo
   (full_reg_0,
    full_reg_1,
    out,
    aclk,
    AS,
    p_12_out,
    s_ready,
    E);
  output full_reg_0;
  output full_reg_1;
  output [5:0]out;
  input aclk;
  input [0:0]AS;
  input p_12_out;
  input s_ready;
  input [0:0]E;

  wire [0:0]AS;
  wire [0:0]E;
  wire aclk;
  wire empty_i_1__1_n_0;
  wire empty_i_2__0_n_0;
  wire full_i_1__0_n_0;
  wire full_i_2__0_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire \index[0]_i_1__0_n_0 ;
  wire \index[1]_i_1__0_n_0 ;
  wire \index[2]_i_1__0_n_0 ;
  wire \index[3]_i_1__0_n_0 ;
  wire \index[3]_i_2__0_n_0 ;
  wire [3:0]index_reg__0;
  wire [5:0]out;
  wire p_12_out;
  wire s_ready;

  LUT4 #(
    .INIT(16'h5444)) 
    empty_i_1__1
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(empty_i_2__0_n_0),
        .O(empty_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    empty_i_2__0
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[3]),
        .I3(index_reg__0[2]),
        .O(empty_i_2__0_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1__1_n_0),
        .PRE(AS),
        .Q(full_reg_1));
  LUT5 #(
    .INIT(32'hFFB0F0B0)) 
    full_i_1__0
       (.I0(full_reg_1),
        .I1(s_ready),
        .I2(full_reg_0),
        .I3(p_12_out),
        .I4(full_i_2__0_n_0),
        .O(full_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0080000000800080)) 
    full_i_2__0
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[0]),
        .I4(full_reg_1),
        .I5(s_ready),
        .O(full_i_2__0_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(full_i_1__0_n_0),
        .Q(full_reg_0));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][0]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(1'b1),
        .Q(out[0]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][12]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(1'b1),
        .Q(out[5]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][3]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(1'b1),
        .Q(out[1]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][7]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(1'b1),
        .Q(out[2]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][8]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(1'b1),
        .Q(out[3]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][9]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(1'b1),
        .Q(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1__0 
       (.I0(index_reg__0[0]),
        .O(\index[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \index[1]_i_1__0 
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(index_reg__0[1]),
        .I4(index_reg__0[0]),
        .O(\index[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h10FFEF00FFEF0010)) 
    \index[2]_i_1__0 
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(index_reg__0[0]),
        .I4(index_reg__0[2]),
        .I5(index_reg__0[1]),
        .O(\index[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \index[3]_i_1__0 
       (.I0(full_reg_1),
        .I1(s_ready),
        .I2(p_12_out),
        .O(\index[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6A6AAA6AAAAAA9AA)) 
    \index[3]_i_2__0 
       (.I0(index_reg__0[3]),
        .I1(index_reg__0[2]),
        .I2(index_reg__0[0]),
        .I3(E),
        .I4(p_12_out),
        .I5(index_reg__0[1]),
        .O(\index[3]_i_2__0_n_0 ));
  FDPE \index_reg[0] 
       (.C(aclk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[0]_i_1__0_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[0]));
  FDPE \index_reg[1] 
       (.C(aclk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[1]_i_1__0_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[1]));
  FDPE \index_reg[2] 
       (.C(aclk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[2]_i_1__0_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[2]));
  FDPE \index_reg[3] 
       (.C(aclk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[3]_i_2__0_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_listen_port_if" *) 
module echo_server_application_ip_echo_server_application_m_axis_listen_port_if
   (full_reg,
    Q,
    m_axis_listen_port_TDATA,
    AS,
    aclk,
    p_12_out,
    m_axis_listen_port_TREADY);
  output full_reg;
  output [0:0]Q;
  output [5:0]m_axis_listen_port_TDATA;
  input [0:0]AS;
  input aclk;
  input p_12_out;
  input m_axis_listen_port_TREADY;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire full_reg;
  wire [12:0]listenPort_V_V_dout;
  wire listenPort_V_V_fifo_n_1;
  wire load_p2;
  wire [5:0]m_axis_listen_port_TDATA;
  wire m_axis_listen_port_TREADY;
  wire p_12_out;
  wire s_ready;

  echo_server_application_ip_echo_server_application_m_axis_listen_port_fifo listenPort_V_V_fifo
       (.AS(AS),
        .E(load_p2),
        .aclk(aclk),
        .full_reg_0(full_reg),
        .full_reg_1(listenPort_V_V_fifo_n_1),
        .out({listenPort_V_V_dout[12],listenPort_V_V_dout[9:7],listenPort_V_V_dout[3],listenPort_V_V_dout[0]}),
        .p_12_out(p_12_out),
        .s_ready(s_ready));
  echo_server_application_ip_echo_server_application_m_axis_listen_port_reg_slice rs
       (.AS(AS),
        .D({listenPort_V_V_dout[12],listenPort_V_V_dout[9:7],listenPort_V_V_dout[3],listenPort_V_V_dout[0]}),
        .E(load_p2),
        .Q(Q),
        .aclk(aclk),
        .empty_reg(listenPort_V_V_fifo_n_1),
        .m_axis_listen_port_TDATA(m_axis_listen_port_TDATA),
        .m_axis_listen_port_TREADY(m_axis_listen_port_TREADY),
        .s_ready(s_ready));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_listen_port_reg_slice" *) 
module echo_server_application_ip_echo_server_application_m_axis_listen_port_reg_slice
   (s_ready,
    Q,
    E,
    m_axis_listen_port_TDATA,
    AS,
    aclk,
    m_axis_listen_port_TREADY,
    empty_reg,
    D);
  output s_ready;
  output [0:0]Q;
  output [0:0]E;
  output [5:0]m_axis_listen_port_TDATA;
  input [0:0]AS;
  input aclk;
  input m_axis_listen_port_TREADY;
  input empty_reg;
  input [5:0]D;

  wire [0:0]AS;
  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire \data_p1[0]_i_1__3_n_0 ;
  wire \data_p1[12]_i_2_n_0 ;
  wire \data_p1[3]_i_1__3_n_0 ;
  wire \data_p1[7]_i_1__3_n_0 ;
  wire \data_p1[8]_i_1__3_n_0 ;
  wire \data_p1[9]_i_1__3_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire empty_reg;
  wire load_p1;
  wire [5:0]m_axis_listen_port_TDATA;
  wire m_axis_listen_port_TREADY;
  wire s_ready;
  wire s_ready_t_i_1__0_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__5_n_0 ;
  wire \state[1]_i_1__4_n_0 ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__3 
       (.I0(D[0]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h7404)) 
    \data_p1[12]_i_1 
       (.I0(empty_reg),
        .I1(state),
        .I2(Q),
        .I3(m_axis_listen_port_TREADY),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_2 
       (.I0(D[5]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__3 
       (.I0(D[1]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__3 
       (.I0(D[2]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__3 
       (.I0(D[3]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__3 
       (.I0(D[4]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__3_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__3_n_0 ),
        .Q(m_axis_listen_port_TDATA[0]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_2_n_0 ),
        .Q(m_axis_listen_port_TDATA[5]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__3_n_0 ),
        .Q(m_axis_listen_port_TDATA[1]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__3_n_0 ),
        .Q(m_axis_listen_port_TDATA[2]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__3_n_0 ),
        .Q(m_axis_listen_port_TDATA[3]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__3_n_0 ),
        .Q(m_axis_listen_port_TDATA[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_p2[12]_i_1 
       (.I0(s_ready),
        .I1(empty_reg),
        .O(E));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEFFF0FC0)) 
    s_ready_t_i_1__0
       (.I0(empty_reg),
        .I1(m_axis_listen_port_TREADY),
        .I2(Q),
        .I3(state),
        .I4(s_ready),
        .O(s_ready_t_i_1__0_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__0_n_0),
        .Q(s_ready),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h5FFF0C00)) 
    \state[0]_i_1__5 
       (.I0(m_axis_listen_port_TREADY),
        .I1(s_ready),
        .I2(empty_reg),
        .I3(state),
        .I4(Q),
        .O(\state[0]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \state[1]_i_1__4 
       (.I0(state),
        .I1(empty_reg),
        .I2(m_axis_listen_port_TREADY),
        .I3(Q),
        .O(\state[1]_i_1__4_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__5_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__4_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_open_connection_if" *) 
module echo_server_application_ip_echo_server_application_m_axis_open_connection_if
   (sig_echo_server_application_openConnection_V_full_n,
    Q,
    AS,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    tmp_reg_435,
    m_axis_open_connection_TREADY);
  output sig_echo_server_application_openConnection_V_full_n;
  output [0:0]Q;
  input [0:0]AS;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input tmp_reg_435;
  input m_axis_open_connection_TREADY;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire m_axis_open_connection_TREADY;
  wire sig_echo_server_application_openConnection_V_full_n;
  wire tmp_reg_435;

  echo_server_application_ip_echo_server_application_m_axis_open_connection_reg_slice rs
       (.AS(AS),
        .Q(Q),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_reg_ppiten_pp0_it1_reg),
        .m_axis_open_connection_TREADY(m_axis_open_connection_TREADY),
        .sig_echo_server_application_openConnection_V_full_n(sig_echo_server_application_openConnection_V_full_n),
        .tmp_reg_435(tmp_reg_435));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_open_connection_reg_slice" *) 
module echo_server_application_ip_echo_server_application_m_axis_open_connection_reg_slice
   (sig_echo_server_application_openConnection_V_full_n,
    Q,
    AS,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    tmp_reg_435,
    m_axis_open_connection_TREADY);
  output sig_echo_server_application_openConnection_V_full_n;
  output [0:0]Q;
  input [0:0]AS;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input tmp_reg_435;
  input m_axis_open_connection_TREADY;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire m_axis_open_connection_TREADY;
  wire s_ready_t_i_1__1_n_0;
  wire sig_echo_server_application_openConnection_V_full_n;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire tmp_reg_435;

  LUT6 #(
    .INIT(64'hBFFFFFFF33338888)) 
    s_ready_t_i_1__1
       (.I0(m_axis_open_connection_TREADY),
        .I1(Q),
        .I2(tmp_reg_435),
        .I3(ap_reg_ppiten_pp0_it1_reg),
        .I4(state),
        .I5(sig_echo_server_application_openConnection_V_full_n),
        .O(s_ready_t_i_1__1_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__1_n_0),
        .Q(sig_echo_server_application_openConnection_V_full_n),
        .R(AS));
  LUT5 #(
    .INIT(32'hD5FF8080)) 
    \state[0]_i_1 
       (.I0(state),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .I2(tmp_reg_435),
        .I3(m_axis_open_connection_TREADY),
        .I4(Q),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFBBBB)) 
    \state[1]_i_1 
       (.I0(m_axis_open_connection_TREADY),
        .I1(Q),
        .I2(tmp_reg_435),
        .I3(ap_reg_ppiten_pp0_it1_reg),
        .I4(state),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_read_package_if" *) 
module echo_server_application_ip_echo_server_application_m_axis_read_package_if
   (sig_echo_server_application_readRequest_V_full_n,
    Q,
    m_axis_read_package_TDATA,
    AS,
    aclk,
    m_axis_read_package_TREADY,
    load_p2,
    D);
  output sig_echo_server_application_readRequest_V_full_n;
  output [0:0]Q;
  output [31:0]m_axis_read_package_TDATA;
  input [0:0]AS;
  input aclk;
  input m_axis_read_package_TREADY;
  input load_p2;
  input [31:0]D;

  wire [0:0]AS;
  wire [31:0]D;
  wire [0:0]Q;
  wire aclk;
  wire load_p2;
  wire [31:0]m_axis_read_package_TDATA;
  wire m_axis_read_package_TREADY;
  wire sig_echo_server_application_readRequest_V_full_n;

  echo_server_application_ip_echo_server_application_m_axis_read_package_reg_slice rs
       (.AS(AS),
        .D(D),
        .Q(Q),
        .aclk(aclk),
        .load_p2(load_p2),
        .m_axis_read_package_TDATA(m_axis_read_package_TDATA),
        .m_axis_read_package_TREADY(m_axis_read_package_TREADY),
        .sig_echo_server_application_readRequest_V_full_n(sig_echo_server_application_readRequest_V_full_n));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_read_package_reg_slice" *) 
module echo_server_application_ip_echo_server_application_m_axis_read_package_reg_slice
   (sig_echo_server_application_readRequest_V_full_n,
    Q,
    m_axis_read_package_TDATA,
    AS,
    aclk,
    m_axis_read_package_TREADY,
    load_p2,
    D);
  output sig_echo_server_application_readRequest_V_full_n;
  output [0:0]Q;
  output [31:0]m_axis_read_package_TDATA;
  input [0:0]AS;
  input aclk;
  input m_axis_read_package_TREADY;
  input load_p2;
  input [31:0]D;

  wire [0:0]AS;
  wire [31:0]D;
  wire [0:0]Q;
  wire aclk;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[10]_i_1_n_0 ;
  wire \data_p1[11]_i_1_n_0 ;
  wire \data_p1[12]_i_1__0_n_0 ;
  wire \data_p1[13]_i_1_n_0 ;
  wire \data_p1[14]_i_1_n_0 ;
  wire \data_p1[15]_i_1__1_n_0 ;
  wire \data_p1[16]_i_1__0_n_0 ;
  wire \data_p1[17]_i_1_n_0 ;
  wire \data_p1[18]_i_1_n_0 ;
  wire \data_p1[19]_i_1_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[20]_i_1_n_0 ;
  wire \data_p1[21]_i_1_n_0 ;
  wire \data_p1[22]_i_1_n_0 ;
  wire \data_p1[23]_i_1_n_0 ;
  wire \data_p1[24]_i_1_n_0 ;
  wire \data_p1[25]_i_1_n_0 ;
  wire \data_p1[26]_i_1_n_0 ;
  wire \data_p1[27]_i_1_n_0 ;
  wire \data_p1[28]_i_1_n_0 ;
  wire \data_p1[29]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[30]_i_1_n_0 ;
  wire \data_p1[31]_i_2_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire load_p1;
  wire load_p2;
  wire [31:0]m_axis_read_package_TDATA;
  wire m_axis_read_package_TREADY;
  wire s_ready_t_i_1__2_n_0;
  wire sig_echo_server_application_readRequest_V_full_n;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__9_n_0 ;

  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(Q),
        .I2(state),
        .I3(D[0]),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(Q),
        .I2(state),
        .I3(D[10]),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(Q),
        .I2(state),
        .I3(D[11]),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(Q),
        .I2(state),
        .I3(D[12]),
        .O(\data_p1[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(Q),
        .I2(state),
        .I3(D[13]),
        .O(\data_p1[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(Q),
        .I2(state),
        .I3(D[14]),
        .O(\data_p1[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1__1 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(Q),
        .I2(state),
        .I3(D[15]),
        .O(\data_p1[15]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1__0 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(Q),
        .I2(state),
        .I3(D[16]),
        .O(\data_p1[16]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(Q),
        .I2(state),
        .I3(D[17]),
        .O(\data_p1[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(Q),
        .I2(state),
        .I3(D[18]),
        .O(\data_p1[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(Q),
        .I2(state),
        .I3(D[19]),
        .O(\data_p1[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(Q),
        .I2(state),
        .I3(D[1]),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(Q),
        .I2(state),
        .I3(D[20]),
        .O(\data_p1[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(Q),
        .I2(state),
        .I3(D[21]),
        .O(\data_p1[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(Q),
        .I2(state),
        .I3(D[22]),
        .O(\data_p1[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_1 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(Q),
        .I2(state),
        .I3(D[23]),
        .O(\data_p1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(Q),
        .I2(state),
        .I3(D[24]),
        .O(\data_p1[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(Q),
        .I2(state),
        .I3(D[25]),
        .O(\data_p1[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(Q),
        .I2(state),
        .I3(D[26]),
        .O(\data_p1[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[27]_i_1 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(Q),
        .I2(state),
        .I3(D[27]),
        .O(\data_p1[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[28]_i_1 
       (.I0(\data_p2_reg_n_0_[28] ),
        .I1(Q),
        .I2(state),
        .I3(D[28]),
        .O(\data_p1[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[29]_i_1 
       (.I0(\data_p2_reg_n_0_[29] ),
        .I1(Q),
        .I2(state),
        .I3(D[29]),
        .O(\data_p1[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(Q),
        .I2(state),
        .I3(D[2]),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[30]_i_1 
       (.I0(\data_p2_reg_n_0_[30] ),
        .I1(Q),
        .I2(state),
        .I3(D[30]),
        .O(\data_p1[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA2C0)) 
    \data_p1[31]_i_1 
       (.I0(m_axis_read_package_TREADY),
        .I1(state),
        .I2(load_p2),
        .I3(Q),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[31]_i_2 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(Q),
        .I2(state),
        .I3(D[31]),
        .O(\data_p1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(Q),
        .I2(state),
        .I3(D[3]),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(Q),
        .I2(state),
        .I3(D[4]),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(Q),
        .I2(state),
        .I3(D[5]),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(Q),
        .I2(state),
        .I3(D[6]),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(Q),
        .I2(state),
        .I3(D[7]),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(Q),
        .I2(state),
        .I3(D[8]),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(Q),
        .I2(state),
        .I3(D[9]),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__0_n_0 ),
        .Q(m_axis_read_package_TDATA[12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__1_n_0 ),
        .Q(m_axis_read_package_TDATA[15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1__0_n_0 ),
        .Q(m_axis_read_package_TDATA[16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[30]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[31]_i_2_n_0 ),
        .Q(m_axis_read_package_TDATA[31]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(m_axis_read_package_TDATA[9]),
        .R(1'b0));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    s_ready_t_i_1__2
       (.I0(load_p2),
        .I1(state),
        .I2(Q),
        .I3(m_axis_read_package_TREADY),
        .I4(sig_echo_server_application_readRequest_V_full_n),
        .O(s_ready_t_i_1__2_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__2_n_0),
        .Q(sig_echo_server_application_readRequest_V_full_n),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFA2A)) 
    \state[0]_i_1__0 
       (.I0(Q),
        .I1(m_axis_read_package_TREADY),
        .I2(state),
        .I3(load_p2),
        .O(\state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \state[1]_i_1__9 
       (.I0(load_p2),
        .I1(state),
        .I2(m_axis_read_package_TREADY),
        .I3(Q),
        .O(\state[1]_i_1__9_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__9_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_tx_data_if" *) 
module echo_server_application_ip_echo_server_application_m_axis_tx_data_if
   (sig_echo_server_application_txData_V_full_n,
    Q,
    \m_axis_tx_data_TLAST[0] ,
    AS,
    aclk,
    m_axis_tx_data_TREADY,
    load_p2,
    D);
  output sig_echo_server_application_txData_V_full_n;
  output [0:0]Q;
  output [72:0]\m_axis_tx_data_TLAST[0] ;
  input [0:0]AS;
  input aclk;
  input m_axis_tx_data_TREADY;
  input load_p2;
  input [72:0]D;

  wire [0:0]AS;
  wire [72:0]D;
  wire [0:0]Q;
  wire aclk;
  wire load_p2;
  wire [72:0]\m_axis_tx_data_TLAST[0] ;
  wire m_axis_tx_data_TREADY;
  wire sig_echo_server_application_txData_V_full_n;

  echo_server_application_ip_echo_server_application_m_axis_tx_data_reg_slice rs
       (.AS(AS),
        .D(D),
        .Q(Q),
        .aclk(aclk),
        .load_p2(load_p2),
        .\m_axis_tx_data_TLAST[0] (\m_axis_tx_data_TLAST[0] ),
        .m_axis_tx_data_TREADY(m_axis_tx_data_TREADY),
        .sig_echo_server_application_txData_V_full_n(sig_echo_server_application_txData_V_full_n));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_tx_data_reg_slice" *) 
module echo_server_application_ip_echo_server_application_m_axis_tx_data_reg_slice
   (sig_echo_server_application_txData_V_full_n,
    Q,
    \m_axis_tx_data_TLAST[0] ,
    AS,
    aclk,
    m_axis_tx_data_TREADY,
    load_p2,
    D);
  output sig_echo_server_application_txData_V_full_n;
  output [0:0]Q;
  output [72:0]\m_axis_tx_data_TLAST[0] ;
  input [0:0]AS;
  input aclk;
  input m_axis_tx_data_TREADY;
  input load_p2;
  input [72:0]D;

  wire [0:0]AS;
  wire [72:0]D;
  wire [0:0]Q;
  wire aclk;
  wire \data_p1[0]_i_1__0_n_0 ;
  wire \data_p1[10]_i_1__0_n_0 ;
  wire \data_p1[11]_i_1__0_n_0 ;
  wire \data_p1[12]_i_1__1_n_0 ;
  wire \data_p1[13]_i_1__0_n_0 ;
  wire \data_p1[14]_i_1__0_n_0 ;
  wire \data_p1[15]_i_1__2_n_0 ;
  wire \data_p1[16]_i_1__1_n_0 ;
  wire \data_p1[17]_i_1__0_n_0 ;
  wire \data_p1[18]_i_1__0_n_0 ;
  wire \data_p1[19]_i_1__0_n_0 ;
  wire \data_p1[1]_i_1__0_n_0 ;
  wire \data_p1[20]_i_1__0_n_0 ;
  wire \data_p1[21]_i_1__0_n_0 ;
  wire \data_p1[22]_i_1__0_n_0 ;
  wire \data_p1[23]_i_1__0_n_0 ;
  wire \data_p1[24]_i_1__0_n_0 ;
  wire \data_p1[25]_i_1__0_n_0 ;
  wire \data_p1[26]_i_1__0_n_0 ;
  wire \data_p1[27]_i_1__0_n_0 ;
  wire \data_p1[28]_i_1__0_n_0 ;
  wire \data_p1[29]_i_1__0_n_0 ;
  wire \data_p1[2]_i_1__0_n_0 ;
  wire \data_p1[30]_i_1__0_n_0 ;
  wire \data_p1[31]_i_1__1_n_0 ;
  wire \data_p1[32]_i_1_n_0 ;
  wire \data_p1[33]_i_1_n_0 ;
  wire \data_p1[34]_i_1_n_0 ;
  wire \data_p1[35]_i_1_n_0 ;
  wire \data_p1[36]_i_1_n_0 ;
  wire \data_p1[37]_i_1_n_0 ;
  wire \data_p1[38]_i_1_n_0 ;
  wire \data_p1[39]_i_1_n_0 ;
  wire \data_p1[3]_i_1__0_n_0 ;
  wire \data_p1[40]_i_1_n_0 ;
  wire \data_p1[41]_i_1_n_0 ;
  wire \data_p1[42]_i_1_n_0 ;
  wire \data_p1[43]_i_1_n_0 ;
  wire \data_p1[44]_i_1_n_0 ;
  wire \data_p1[45]_i_1_n_0 ;
  wire \data_p1[46]_i_1_n_0 ;
  wire \data_p1[47]_i_1_n_0 ;
  wire \data_p1[48]_i_1_n_0 ;
  wire \data_p1[49]_i_1_n_0 ;
  wire \data_p1[4]_i_1__0_n_0 ;
  wire \data_p1[50]_i_1_n_0 ;
  wire \data_p1[51]_i_1_n_0 ;
  wire \data_p1[52]_i_1_n_0 ;
  wire \data_p1[53]_i_1_n_0 ;
  wire \data_p1[54]_i_1_n_0 ;
  wire \data_p1[55]_i_1_n_0 ;
  wire \data_p1[56]_i_1_n_0 ;
  wire \data_p1[57]_i_1_n_0 ;
  wire \data_p1[58]_i_1_n_0 ;
  wire \data_p1[59]_i_1_n_0 ;
  wire \data_p1[5]_i_1__0_n_0 ;
  wire \data_p1[60]_i_1_n_0 ;
  wire \data_p1[61]_i_1_n_0 ;
  wire \data_p1[62]_i_1_n_0 ;
  wire \data_p1[63]_i_2_n_0 ;
  wire \data_p1[64]_i_1_n_0 ;
  wire \data_p1[65]_i_1_n_0 ;
  wire \data_p1[66]_i_1_n_0 ;
  wire \data_p1[67]_i_1_n_0 ;
  wire \data_p1[68]_i_1_n_0 ;
  wire \data_p1[69]_i_1_n_0 ;
  wire \data_p1[6]_i_1__0_n_0 ;
  wire \data_p1[70]_i_1_n_0 ;
  wire \data_p1[71]_i_1_n_0 ;
  wire \data_p1[72]_i_1__0_n_0 ;
  wire \data_p1[7]_i_1__0_n_0 ;
  wire \data_p1[8]_i_1__0_n_0 ;
  wire \data_p1[9]_i_1__0_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[32] ;
  wire \data_p2_reg_n_0_[33] ;
  wire \data_p2_reg_n_0_[34] ;
  wire \data_p2_reg_n_0_[35] ;
  wire \data_p2_reg_n_0_[36] ;
  wire \data_p2_reg_n_0_[37] ;
  wire \data_p2_reg_n_0_[38] ;
  wire \data_p2_reg_n_0_[39] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[40] ;
  wire \data_p2_reg_n_0_[41] ;
  wire \data_p2_reg_n_0_[42] ;
  wire \data_p2_reg_n_0_[43] ;
  wire \data_p2_reg_n_0_[44] ;
  wire \data_p2_reg_n_0_[45] ;
  wire \data_p2_reg_n_0_[46] ;
  wire \data_p2_reg_n_0_[47] ;
  wire \data_p2_reg_n_0_[48] ;
  wire \data_p2_reg_n_0_[49] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[50] ;
  wire \data_p2_reg_n_0_[51] ;
  wire \data_p2_reg_n_0_[52] ;
  wire \data_p2_reg_n_0_[53] ;
  wire \data_p2_reg_n_0_[54] ;
  wire \data_p2_reg_n_0_[55] ;
  wire \data_p2_reg_n_0_[56] ;
  wire \data_p2_reg_n_0_[57] ;
  wire \data_p2_reg_n_0_[58] ;
  wire \data_p2_reg_n_0_[59] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[60] ;
  wire \data_p2_reg_n_0_[61] ;
  wire \data_p2_reg_n_0_[62] ;
  wire \data_p2_reg_n_0_[63] ;
  wire \data_p2_reg_n_0_[64] ;
  wire \data_p2_reg_n_0_[65] ;
  wire \data_p2_reg_n_0_[66] ;
  wire \data_p2_reg_n_0_[67] ;
  wire \data_p2_reg_n_0_[68] ;
  wire \data_p2_reg_n_0_[69] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[70] ;
  wire \data_p2_reg_n_0_[71] ;
  wire \data_p2_reg_n_0_[72] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire load_p1;
  wire load_p2;
  wire [72:0]\m_axis_tx_data_TLAST[0] ;
  wire m_axis_tx_data_TREADY;
  wire s_ready_t_i_1__3_n_0;
  wire sig_echo_server_application_txData_V_full_n;
  wire [1:1]state;
  wire \state[0]_i_1__1_n_0 ;
  wire \state[1]_i_1__10_n_0 ;

  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(Q),
        .I2(state),
        .I3(D[0]),
        .O(\data_p1[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(Q),
        .I2(state),
        .I3(D[10]),
        .O(\data_p1[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(Q),
        .I2(state),
        .I3(D[11]),
        .O(\data_p1[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__1 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(Q),
        .I2(state),
        .I3(D[12]),
        .O(\data_p1[12]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(Q),
        .I2(state),
        .I3(D[13]),
        .O(\data_p1[13]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(Q),
        .I2(state),
        .I3(D[14]),
        .O(\data_p1[14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1__2 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(Q),
        .I2(state),
        .I3(D[15]),
        .O(\data_p1[15]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1__1 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(Q),
        .I2(state),
        .I3(D[16]),
        .O(\data_p1[16]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1__0 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(Q),
        .I2(state),
        .I3(D[17]),
        .O(\data_p1[17]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1__0 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(Q),
        .I2(state),
        .I3(D[18]),
        .O(\data_p1[18]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1__0 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(Q),
        .I2(state),
        .I3(D[19]),
        .O(\data_p1[19]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__0 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(Q),
        .I2(state),
        .I3(D[1]),
        .O(\data_p1[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1__0 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(Q),
        .I2(state),
        .I3(D[20]),
        .O(\data_p1[20]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1__0 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(Q),
        .I2(state),
        .I3(D[21]),
        .O(\data_p1[21]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1__0 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(Q),
        .I2(state),
        .I3(D[22]),
        .O(\data_p1[22]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_1__0 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(Q),
        .I2(state),
        .I3(D[23]),
        .O(\data_p1[23]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1__0 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(Q),
        .I2(state),
        .I3(D[24]),
        .O(\data_p1[24]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1__0 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(Q),
        .I2(state),
        .I3(D[25]),
        .O(\data_p1[25]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1__0 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(Q),
        .I2(state),
        .I3(D[26]),
        .O(\data_p1[26]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[27]_i_1__0 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(Q),
        .I2(state),
        .I3(D[27]),
        .O(\data_p1[27]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[28]_i_1__0 
       (.I0(\data_p2_reg_n_0_[28] ),
        .I1(Q),
        .I2(state),
        .I3(D[28]),
        .O(\data_p1[28]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[29]_i_1__0 
       (.I0(\data_p2_reg_n_0_[29] ),
        .I1(Q),
        .I2(state),
        .I3(D[29]),
        .O(\data_p1[29]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(Q),
        .I2(state),
        .I3(D[2]),
        .O(\data_p1[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[30]_i_1__0 
       (.I0(\data_p2_reg_n_0_[30] ),
        .I1(Q),
        .I2(state),
        .I3(D[30]),
        .O(\data_p1[30]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[31]_i_1__1 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(Q),
        .I2(state),
        .I3(D[31]),
        .O(\data_p1[31]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[32]_i_1 
       (.I0(\data_p2_reg_n_0_[32] ),
        .I1(Q),
        .I2(state),
        .I3(D[32]),
        .O(\data_p1[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[33]_i_1 
       (.I0(\data_p2_reg_n_0_[33] ),
        .I1(Q),
        .I2(state),
        .I3(D[33]),
        .O(\data_p1[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[34]_i_1 
       (.I0(\data_p2_reg_n_0_[34] ),
        .I1(Q),
        .I2(state),
        .I3(D[34]),
        .O(\data_p1[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[35]_i_1 
       (.I0(\data_p2_reg_n_0_[35] ),
        .I1(Q),
        .I2(state),
        .I3(D[35]),
        .O(\data_p1[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[36]_i_1 
       (.I0(\data_p2_reg_n_0_[36] ),
        .I1(Q),
        .I2(state),
        .I3(D[36]),
        .O(\data_p1[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[37]_i_1 
       (.I0(\data_p2_reg_n_0_[37] ),
        .I1(Q),
        .I2(state),
        .I3(D[37]),
        .O(\data_p1[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[38]_i_1 
       (.I0(\data_p2_reg_n_0_[38] ),
        .I1(Q),
        .I2(state),
        .I3(D[38]),
        .O(\data_p1[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[39]_i_1 
       (.I0(\data_p2_reg_n_0_[39] ),
        .I1(Q),
        .I2(state),
        .I3(D[39]),
        .O(\data_p1[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__0 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(Q),
        .I2(state),
        .I3(D[3]),
        .O(\data_p1[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[40]_i_1 
       (.I0(\data_p2_reg_n_0_[40] ),
        .I1(Q),
        .I2(state),
        .I3(D[40]),
        .O(\data_p1[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[41]_i_1 
       (.I0(\data_p2_reg_n_0_[41] ),
        .I1(Q),
        .I2(state),
        .I3(D[41]),
        .O(\data_p1[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[42]_i_1 
       (.I0(\data_p2_reg_n_0_[42] ),
        .I1(Q),
        .I2(state),
        .I3(D[42]),
        .O(\data_p1[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[43]_i_1 
       (.I0(\data_p2_reg_n_0_[43] ),
        .I1(Q),
        .I2(state),
        .I3(D[43]),
        .O(\data_p1[43]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[44]_i_1 
       (.I0(\data_p2_reg_n_0_[44] ),
        .I1(Q),
        .I2(state),
        .I3(D[44]),
        .O(\data_p1[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[45]_i_1 
       (.I0(\data_p2_reg_n_0_[45] ),
        .I1(Q),
        .I2(state),
        .I3(D[45]),
        .O(\data_p1[45]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[46]_i_1 
       (.I0(\data_p2_reg_n_0_[46] ),
        .I1(Q),
        .I2(state),
        .I3(D[46]),
        .O(\data_p1[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[47]_i_1 
       (.I0(\data_p2_reg_n_0_[47] ),
        .I1(Q),
        .I2(state),
        .I3(D[47]),
        .O(\data_p1[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[48]_i_1 
       (.I0(\data_p2_reg_n_0_[48] ),
        .I1(Q),
        .I2(state),
        .I3(D[48]),
        .O(\data_p1[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[49]_i_1 
       (.I0(\data_p2_reg_n_0_[49] ),
        .I1(Q),
        .I2(state),
        .I3(D[49]),
        .O(\data_p1[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(Q),
        .I2(state),
        .I3(D[4]),
        .O(\data_p1[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[50]_i_1 
       (.I0(\data_p2_reg_n_0_[50] ),
        .I1(Q),
        .I2(state),
        .I3(D[50]),
        .O(\data_p1[50]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[51]_i_1 
       (.I0(\data_p2_reg_n_0_[51] ),
        .I1(Q),
        .I2(state),
        .I3(D[51]),
        .O(\data_p1[51]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[52]_i_1 
       (.I0(\data_p2_reg_n_0_[52] ),
        .I1(Q),
        .I2(state),
        .I3(D[52]),
        .O(\data_p1[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[53]_i_1 
       (.I0(\data_p2_reg_n_0_[53] ),
        .I1(Q),
        .I2(state),
        .I3(D[53]),
        .O(\data_p1[53]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[54]_i_1 
       (.I0(\data_p2_reg_n_0_[54] ),
        .I1(Q),
        .I2(state),
        .I3(D[54]),
        .O(\data_p1[54]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[55]_i_1 
       (.I0(\data_p2_reg_n_0_[55] ),
        .I1(Q),
        .I2(state),
        .I3(D[55]),
        .O(\data_p1[55]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[56]_i_1 
       (.I0(\data_p2_reg_n_0_[56] ),
        .I1(Q),
        .I2(state),
        .I3(D[56]),
        .O(\data_p1[56]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[57]_i_1 
       (.I0(\data_p2_reg_n_0_[57] ),
        .I1(Q),
        .I2(state),
        .I3(D[57]),
        .O(\data_p1[57]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[58]_i_1 
       (.I0(\data_p2_reg_n_0_[58] ),
        .I1(Q),
        .I2(state),
        .I3(D[58]),
        .O(\data_p1[58]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[59]_i_1 
       (.I0(\data_p2_reg_n_0_[59] ),
        .I1(Q),
        .I2(state),
        .I3(D[59]),
        .O(\data_p1[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(Q),
        .I2(state),
        .I3(D[5]),
        .O(\data_p1[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[60]_i_1 
       (.I0(\data_p2_reg_n_0_[60] ),
        .I1(Q),
        .I2(state),
        .I3(D[60]),
        .O(\data_p1[60]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[61]_i_1 
       (.I0(\data_p2_reg_n_0_[61] ),
        .I1(Q),
        .I2(state),
        .I3(D[61]),
        .O(\data_p1[61]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[62]_i_1 
       (.I0(\data_p2_reg_n_0_[62] ),
        .I1(Q),
        .I2(state),
        .I3(D[62]),
        .O(\data_p1[62]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA2C0)) 
    \data_p1[63]_i_1 
       (.I0(m_axis_tx_data_TREADY),
        .I1(state),
        .I2(load_p2),
        .I3(Q),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[63]_i_2 
       (.I0(\data_p2_reg_n_0_[63] ),
        .I1(Q),
        .I2(state),
        .I3(D[63]),
        .O(\data_p1[63]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[64]_i_1 
       (.I0(\data_p2_reg_n_0_[64] ),
        .I1(Q),
        .I2(state),
        .I3(D[64]),
        .O(\data_p1[64]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[65]_i_1 
       (.I0(\data_p2_reg_n_0_[65] ),
        .I1(Q),
        .I2(state),
        .I3(D[65]),
        .O(\data_p1[65]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[66]_i_1 
       (.I0(\data_p2_reg_n_0_[66] ),
        .I1(Q),
        .I2(state),
        .I3(D[66]),
        .O(\data_p1[66]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[67]_i_1 
       (.I0(\data_p2_reg_n_0_[67] ),
        .I1(Q),
        .I2(state),
        .I3(D[67]),
        .O(\data_p1[67]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[68]_i_1 
       (.I0(\data_p2_reg_n_0_[68] ),
        .I1(Q),
        .I2(state),
        .I3(D[68]),
        .O(\data_p1[68]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[69]_i_1 
       (.I0(\data_p2_reg_n_0_[69] ),
        .I1(Q),
        .I2(state),
        .I3(D[69]),
        .O(\data_p1[69]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(Q),
        .I2(state),
        .I3(D[6]),
        .O(\data_p1[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[70]_i_1 
       (.I0(\data_p2_reg_n_0_[70] ),
        .I1(Q),
        .I2(state),
        .I3(D[70]),
        .O(\data_p1[70]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[71]_i_1 
       (.I0(\data_p2_reg_n_0_[71] ),
        .I1(Q),
        .I2(state),
        .I3(D[71]),
        .O(\data_p1[71]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[72]_i_1__0 
       (.I0(\data_p2_reg_n_0_[72] ),
        .I1(Q),
        .I2(state),
        .I3(D[72]),
        .O(\data_p1[72]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(Q),
        .I2(state),
        .I3(D[7]),
        .O(\data_p1[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(Q),
        .I2(state),
        .I3(D[8]),
        .O(\data_p1[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(Q),
        .I2(state),
        .I3(D[9]),
        .O(\data_p1[9]_i_1__0_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__2_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1__1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[30]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[31]_i_1__1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [31]),
        .R(1'b0));
  FDRE \data_p1_reg[32] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[32]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [32]),
        .R(1'b0));
  FDRE \data_p1_reg[33] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[33]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [33]),
        .R(1'b0));
  FDRE \data_p1_reg[34] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[34]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [34]),
        .R(1'b0));
  FDRE \data_p1_reg[35] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[35]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [35]),
        .R(1'b0));
  FDRE \data_p1_reg[36] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[36]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [36]),
        .R(1'b0));
  FDRE \data_p1_reg[37] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[37]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [37]),
        .R(1'b0));
  FDRE \data_p1_reg[38] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[38]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [38]),
        .R(1'b0));
  FDRE \data_p1_reg[39] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[39]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [39]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [3]),
        .R(1'b0));
  FDRE \data_p1_reg[40] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[40]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [40]),
        .R(1'b0));
  FDRE \data_p1_reg[41] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[41]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [41]),
        .R(1'b0));
  FDRE \data_p1_reg[42] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[42]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [42]),
        .R(1'b0));
  FDRE \data_p1_reg[43] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[43]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [43]),
        .R(1'b0));
  FDRE \data_p1_reg[44] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[44]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [44]),
        .R(1'b0));
  FDRE \data_p1_reg[45] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[45]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [45]),
        .R(1'b0));
  FDRE \data_p1_reg[46] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[46]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [46]),
        .R(1'b0));
  FDRE \data_p1_reg[47] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[47]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [47]),
        .R(1'b0));
  FDRE \data_p1_reg[48] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[48]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [48]),
        .R(1'b0));
  FDRE \data_p1_reg[49] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[49]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [49]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [4]),
        .R(1'b0));
  FDRE \data_p1_reg[50] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[50]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [50]),
        .R(1'b0));
  FDRE \data_p1_reg[51] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[51]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [51]),
        .R(1'b0));
  FDRE \data_p1_reg[52] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[52]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [52]),
        .R(1'b0));
  FDRE \data_p1_reg[53] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[53]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [53]),
        .R(1'b0));
  FDRE \data_p1_reg[54] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[54]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [54]),
        .R(1'b0));
  FDRE \data_p1_reg[55] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[55]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [55]),
        .R(1'b0));
  FDRE \data_p1_reg[56] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[56]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [56]),
        .R(1'b0));
  FDRE \data_p1_reg[57] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[57]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [57]),
        .R(1'b0));
  FDRE \data_p1_reg[58] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[58]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [58]),
        .R(1'b0));
  FDRE \data_p1_reg[59] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[59]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [59]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [5]),
        .R(1'b0));
  FDRE \data_p1_reg[60] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[60]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [60]),
        .R(1'b0));
  FDRE \data_p1_reg[61] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[61]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [61]),
        .R(1'b0));
  FDRE \data_p1_reg[62] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[62]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [62]),
        .R(1'b0));
  FDRE \data_p1_reg[63] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[63]_i_2_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [63]),
        .R(1'b0));
  FDRE \data_p1_reg[64] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[64]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [64]),
        .R(1'b0));
  FDRE \data_p1_reg[65] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[65]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [65]),
        .R(1'b0));
  FDRE \data_p1_reg[66] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[66]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [66]),
        .R(1'b0));
  FDRE \data_p1_reg[67] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[67]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [67]),
        .R(1'b0));
  FDRE \data_p1_reg[68] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[68]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [68]),
        .R(1'b0));
  FDRE \data_p1_reg[69] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[69]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [69]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [6]),
        .R(1'b0));
  FDRE \data_p1_reg[70] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[70]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [70]),
        .R(1'b0));
  FDRE \data_p1_reg[71] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[71]_i_1_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [71]),
        .R(1'b0));
  FDRE \data_p1_reg[72] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[72]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [72]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__0_n_0 ),
        .Q(\m_axis_tx_data_TLAST[0] [9]),
        .R(1'b0));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \data_p2_reg[32] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[32]),
        .Q(\data_p2_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \data_p2_reg[33] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[33]),
        .Q(\data_p2_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \data_p2_reg[34] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[34]),
        .Q(\data_p2_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \data_p2_reg[35] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[35]),
        .Q(\data_p2_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \data_p2_reg[36] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[36]),
        .Q(\data_p2_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \data_p2_reg[37] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[37]),
        .Q(\data_p2_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \data_p2_reg[38] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[38]),
        .Q(\data_p2_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \data_p2_reg[39] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[39]),
        .Q(\data_p2_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[40] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[40]),
        .Q(\data_p2_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \data_p2_reg[41] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[41]),
        .Q(\data_p2_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \data_p2_reg[42] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[42]),
        .Q(\data_p2_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \data_p2_reg[43] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[43]),
        .Q(\data_p2_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \data_p2_reg[44] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[44]),
        .Q(\data_p2_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \data_p2_reg[45] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[45]),
        .Q(\data_p2_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \data_p2_reg[46] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[46]),
        .Q(\data_p2_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \data_p2_reg[47] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[47]),
        .Q(\data_p2_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \data_p2_reg[48] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[48]),
        .Q(\data_p2_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \data_p2_reg[49] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[49]),
        .Q(\data_p2_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[50] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[50]),
        .Q(\data_p2_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \data_p2_reg[51] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[51]),
        .Q(\data_p2_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \data_p2_reg[52] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[52]),
        .Q(\data_p2_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \data_p2_reg[53] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[53]),
        .Q(\data_p2_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \data_p2_reg[54] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[54]),
        .Q(\data_p2_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \data_p2_reg[55] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[55]),
        .Q(\data_p2_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \data_p2_reg[56] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[56]),
        .Q(\data_p2_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \data_p2_reg[57] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[57]),
        .Q(\data_p2_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \data_p2_reg[58] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[58]),
        .Q(\data_p2_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \data_p2_reg[59] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[59]),
        .Q(\data_p2_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[60] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[60]),
        .Q(\data_p2_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \data_p2_reg[61] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[61]),
        .Q(\data_p2_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \data_p2_reg[62] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[62]),
        .Q(\data_p2_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \data_p2_reg[63] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[63]),
        .Q(\data_p2_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \data_p2_reg[64] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[64]),
        .Q(\data_p2_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \data_p2_reg[65] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[65]),
        .Q(\data_p2_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \data_p2_reg[66] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[66]),
        .Q(\data_p2_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \data_p2_reg[67] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[67]),
        .Q(\data_p2_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \data_p2_reg[68] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[68]),
        .Q(\data_p2_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \data_p2_reg[69] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[69]),
        .Q(\data_p2_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[70] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[70]),
        .Q(\data_p2_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \data_p2_reg[71] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[71]),
        .Q(\data_p2_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \data_p2_reg[72] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[72]),
        .Q(\data_p2_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    s_ready_t_i_1__3
       (.I0(load_p2),
        .I1(state),
        .I2(Q),
        .I3(m_axis_tx_data_TREADY),
        .I4(sig_echo_server_application_txData_V_full_n),
        .O(s_ready_t_i_1__3_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__3_n_0),
        .Q(sig_echo_server_application_txData_V_full_n),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFA2A)) 
    \state[0]_i_1__1 
       (.I0(Q),
        .I1(m_axis_tx_data_TREADY),
        .I2(state),
        .I3(load_p2),
        .O(\state[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \state[1]_i_1__10 
       (.I0(load_p2),
        .I1(state),
        .I2(m_axis_tx_data_TREADY),
        .I3(Q),
        .O(\state[1]_i_1__10_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__1_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__10_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_tx_metadata_fifo" *) 
module echo_server_application_ip_echo_server_application_m_axis_tx_metadata_fifo
   (full_reg_0,
    full_reg_1,
    out,
    aclk,
    AS,
    p_12_out,
    s_ready,
    E,
    in);
  output full_reg_0;
  output full_reg_1;
  output [15:0]out;
  input aclk;
  input [0:0]AS;
  input p_12_out;
  input s_ready;
  input [0:0]E;
  input [15:0]in;

  wire [0:0]AS;
  wire [0:0]E;
  wire aclk;
  wire empty_i_1__2_n_0;
  wire empty_i_2__1_n_0;
  wire full_i_1__1_n_0;
  wire full_i_2__1_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire [15:0]in;
  wire \index[0]_i_1__1_n_0 ;
  wire \index[1]_i_1__1_n_0 ;
  wire \index[2]_i_1__1_n_0 ;
  wire \index[3]_i_1__1_n_0 ;
  wire \index[3]_i_2__1_n_0 ;
  wire [3:0]index_reg__0;
  wire [15:0]out;
  wire p_12_out;
  wire s_ready;

  LUT4 #(
    .INIT(16'h5444)) 
    empty_i_1__2
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(empty_i_2__1_n_0),
        .O(empty_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    empty_i_2__1
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[3]),
        .I3(index_reg__0[2]),
        .O(empty_i_2__1_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1__2_n_0),
        .PRE(AS),
        .Q(full_reg_1));
  LUT5 #(
    .INIT(32'hFFB0F0B0)) 
    full_i_1__1
       (.I0(full_reg_1),
        .I1(s_ready),
        .I2(full_reg_0),
        .I3(p_12_out),
        .I4(full_i_2__1_n_0),
        .O(full_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0080000000800080)) 
    full_i_2__1
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[0]),
        .I4(full_reg_1),
        .I5(s_ready),
        .O(full_i_2__1_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(full_i_1__1_n_0),
        .Q(full_reg_0));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][0]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[0]),
        .Q(out[0]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][10]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][11]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][12]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][13]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][14]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][15]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][1]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][2]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][3]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][4]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][5]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][6]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][7]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][8]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][9]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[9]),
        .Q(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1__1 
       (.I0(index_reg__0[0]),
        .O(\index[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \index[1]_i_1__1 
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(index_reg__0[1]),
        .I4(index_reg__0[0]),
        .O(\index[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h10FFEF00FFEF0010)) 
    \index[2]_i_1__1 
       (.I0(p_12_out),
        .I1(full_reg_1),
        .I2(s_ready),
        .I3(index_reg__0[0]),
        .I4(index_reg__0[2]),
        .I5(index_reg__0[1]),
        .O(\index[2]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \index[3]_i_1__1 
       (.I0(full_reg_1),
        .I1(s_ready),
        .I2(p_12_out),
        .O(\index[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6AAA6AAAAAA9AA)) 
    \index[3]_i_2__1 
       (.I0(index_reg__0[3]),
        .I1(index_reg__0[2]),
        .I2(index_reg__0[0]),
        .I3(E),
        .I4(p_12_out),
        .I5(index_reg__0[1]),
        .O(\index[3]_i_2__1_n_0 ));
  FDPE \index_reg[0] 
       (.C(aclk),
        .CE(\index[3]_i_1__1_n_0 ),
        .D(\index[0]_i_1__1_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[0]));
  FDPE \index_reg[1] 
       (.C(aclk),
        .CE(\index[3]_i_1__1_n_0 ),
        .D(\index[1]_i_1__1_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[1]));
  FDPE \index_reg[2] 
       (.C(aclk),
        .CE(\index[3]_i_1__1_n_0 ),
        .D(\index[2]_i_1__1_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[2]));
  FDPE \index_reg[3] 
       (.C(aclk),
        .CE(\index[3]_i_1__1_n_0 ),
        .D(\index[3]_i_2__1_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_tx_metadata_if" *) 
module echo_server_application_ip_echo_server_application_m_axis_tx_metadata_if
   (full_reg,
    Q,
    m_axis_tx_metadata_TDATA,
    AS,
    aclk,
    p_12_out,
    m_axis_tx_metadata_TREADY,
    in);
  output full_reg;
  output [0:0]Q;
  output [15:0]m_axis_tx_metadata_TDATA;
  input [0:0]AS;
  input aclk;
  input p_12_out;
  input m_axis_tx_metadata_TREADY;
  input [15:0]in;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire full_reg;
  wire [15:0]in;
  wire load_p2;
  wire [15:0]m_axis_tx_metadata_TDATA;
  wire m_axis_tx_metadata_TREADY;
  wire p_12_out;
  wire s_ready;
  wire [15:0]txMetaData_V_V_dout;
  wire txMetaData_V_V_fifo_n_1;

  echo_server_application_ip_echo_server_application_m_axis_tx_metadata_reg_slice rs
       (.AS(AS),
        .E(load_p2),
        .Q(Q),
        .aclk(aclk),
        .empty_reg(txMetaData_V_V_fifo_n_1),
        .m_axis_tx_metadata_TDATA(m_axis_tx_metadata_TDATA),
        .m_axis_tx_metadata_TREADY(m_axis_tx_metadata_TREADY),
        .out(txMetaData_V_V_dout),
        .s_ready(s_ready));
  echo_server_application_ip_echo_server_application_m_axis_tx_metadata_fifo txMetaData_V_V_fifo
       (.AS(AS),
        .E(load_p2),
        .aclk(aclk),
        .full_reg_0(full_reg),
        .full_reg_1(txMetaData_V_V_fifo_n_1),
        .in(in),
        .out(txMetaData_V_V_dout),
        .p_12_out(p_12_out),
        .s_ready(s_ready));
endmodule

(* ORIG_REF_NAME = "echo_server_application_m_axis_tx_metadata_reg_slice" *) 
module echo_server_application_ip_echo_server_application_m_axis_tx_metadata_reg_slice
   (s_ready,
    Q,
    E,
    m_axis_tx_metadata_TDATA,
    AS,
    aclk,
    m_axis_tx_metadata_TREADY,
    empty_reg,
    out);
  output s_ready;
  output [0:0]Q;
  output [0:0]E;
  output [15:0]m_axis_tx_metadata_TDATA;
  input [0:0]AS;
  input aclk;
  input m_axis_tx_metadata_TREADY;
  input empty_reg;
  input [15:0]out;

  wire [0:0]AS;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire \data_p1[0]_i_1__4_n_0 ;
  wire \data_p1[10]_i_1__3_n_0 ;
  wire \data_p1[11]_i_1__3_n_0 ;
  wire \data_p1[12]_i_1__4_n_0 ;
  wire \data_p1[13]_i_1__3_n_0 ;
  wire \data_p1[14]_i_1__3_n_0 ;
  wire \data_p1[15]_i_2__0_n_0 ;
  wire \data_p1[1]_i_1__3_n_0 ;
  wire \data_p1[2]_i_1__3_n_0 ;
  wire \data_p1[3]_i_1__4_n_0 ;
  wire \data_p1[4]_i_1__3_n_0 ;
  wire \data_p1[5]_i_1__3_n_0 ;
  wire \data_p1[6]_i_1__3_n_0 ;
  wire \data_p1[7]_i_1__4_n_0 ;
  wire \data_p1[8]_i_1__4_n_0 ;
  wire \data_p1[9]_i_1__4_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire empty_reg;
  wire load_p1;
  wire [15:0]m_axis_tx_metadata_TDATA;
  wire m_axis_tx_metadata_TREADY;
  wire [15:0]out;
  wire s_ready;
  wire s_ready_t_i_1__4_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__6_n_0 ;
  wire \state[1]_i_1__5_n_0 ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__4 
       (.I0(out[0]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1__3 
       (.I0(out[10]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1__3 
       (.I0(out[11]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1__4 
       (.I0(out[12]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1__3 
       (.I0(out[13]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1__3 
       (.I0(out[14]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[14] ),
        .O(\data_p1[14]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h7404)) 
    \data_p1[15]_i_1__3 
       (.I0(empty_reg),
        .I1(state),
        .I2(Q),
        .I3(m_axis_tx_metadata_TREADY),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_2__0 
       (.I0(out[15]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1__3 
       (.I0(out[1]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1__3 
       (.I0(out[2]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__4 
       (.I0(out[3]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1__3 
       (.I0(out[4]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1__3 
       (.I0(out[5]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1__3 
       (.I0(out[6]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__4 
       (.I0(out[7]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__4 
       (.I0(out[8]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__4 
       (.I0(out[9]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__4_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__4_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__4_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_2__0_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[15]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__4_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__3_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__4_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__4_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__4_n_0 ),
        .Q(m_axis_tx_metadata_TDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_p2[15]_i_1__0 
       (.I0(s_ready),
        .I1(empty_reg),
        .O(E));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(out[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(out[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(out[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(out[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(out[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(out[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(out[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(out[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(out[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(out[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(out[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(out[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(out[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(out[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(out[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(out[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hEFFF0FC0)) 
    s_ready_t_i_1__4
       (.I0(empty_reg),
        .I1(m_axis_tx_metadata_TREADY),
        .I2(Q),
        .I3(state),
        .I4(s_ready),
        .O(s_ready_t_i_1__4_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__4_n_0),
        .Q(s_ready),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h5FFF0C00)) 
    \state[0]_i_1__6 
       (.I0(m_axis_tx_metadata_TREADY),
        .I1(s_ready),
        .I2(empty_reg),
        .I3(state),
        .I4(Q),
        .O(\state[0]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \state[1]_i_1__5 
       (.I0(state),
        .I1(empty_reg),
        .I2(m_axis_tx_metadata_TREADY),
        .I3(Q),
        .O(\state[1]_i_1__5_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__6_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__5_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_listen_port_status_fifo" *) 
module echo_server_application_ip_echo_server_application_s_axis_listen_port_status_fifo
   (sig_echo_server_application_listenPortStatus_V_dout,
    full_reg_0,
    \index_reg[1]_0 ,
    p_12_out,
    listenPortStatus_V_din,
    aclk,
    AS,
    ap_start,
    ap_reg_ppiten_pp0_it1_reg,
    \waitPortStatus_reg[0] ,
    Q,
    ap_reg_ppiten_pp0_it1_reg_0,
    sig_echo_server_application_listenPortStatus_V_read);
  output sig_echo_server_application_listenPortStatus_V_dout;
  output full_reg_0;
  output \index_reg[1]_0 ;
  input p_12_out;
  input listenPortStatus_V_din;
  input aclk;
  input [0:0]AS;
  input ap_start;
  input ap_reg_ppiten_pp0_it1_reg;
  input \waitPortStatus_reg[0] ;
  input [0:0]Q;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input sig_echo_server_application_listenPortStatus_V_read;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire empty_i_1__3_n_0;
  wire empty_i_2__2_n_0;
  wire full_i_1__2_n_0;
  wire full_i_2__2_n_0;
  wire full_reg_0;
  wire \index[0]_i_1__2_n_0 ;
  wire \index[1]_i_1__3_n_0 ;
  wire \index[2]_i_1__3_n_0 ;
  wire \index[3]_i_1__3_n_0 ;
  wire \index[3]_i_2__3_n_0 ;
  wire \index_reg[1]_0 ;
  wire [3:0]index_reg__0;
  wire listenPortStatus_V_din;
  wire p_12_out;
  wire sig_echo_server_application_listenPortStatus_V_dout;
  wire sig_echo_server_application_listenPortStatus_V_read;
  wire \waitPortStatus_reg[0] ;

  LUT6 #(
    .INIT(64'hF800F8F8F000F0F0)) 
    empty_i_1__3
       (.I0(ap_reg_ppiten_pp0_it1_reg_0),
        .I1(\waitPortStatus_reg[0] ),
        .I2(\index_reg[1]_0 ),
        .I3(full_reg_0),
        .I4(Q),
        .I5(empty_i_2__2_n_0),
        .O(empty_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    empty_i_2__2
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[3]),
        .I3(index_reg__0[2]),
        .O(empty_i_2__2_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1__3_n_0),
        .PRE(AS),
        .Q(\index_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFAA8AAAAA)) 
    full_i_1__2
       (.I0(full_reg_0),
        .I1(\index_reg[1]_0 ),
        .I2(\waitPortStatus_reg[0] ),
        .I3(ap_reg_ppiten_pp0_it1_reg),
        .I4(ap_start),
        .I5(full_i_2__2_n_0),
        .O(full_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    full_i_2__2
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[0]),
        .I4(full_reg_0),
        .I5(Q),
        .O(full_i_2__2_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(full_i_1__2_n_0),
        .Q(full_reg_0));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_listen_port_status_if_U/listenPortStatus_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_listen_port_status_if_U/listenPortStatus_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][0]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(listenPortStatus_V_din),
        .Q(sig_echo_server_application_listenPortStatus_V_dout));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1__2 
       (.I0(index_reg__0[0]),
        .O(\index[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h55555595AAAAAA6A)) 
    \index[1]_i_1__3 
       (.I0(index_reg__0[0]),
        .I1(ap_reg_ppiten_pp0_it1_reg_0),
        .I2(\waitPortStatus_reg[0] ),
        .I3(\index_reg[1]_0 ),
        .I4(p_12_out),
        .I5(index_reg__0[1]),
        .O(\index[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF7500FF75008A)) 
    \index[2]_i_1__3 
       (.I0(sig_echo_server_application_listenPortStatus_V_read),
        .I1(full_reg_0),
        .I2(Q),
        .I3(index_reg__0[0]),
        .I4(index_reg__0[2]),
        .I5(index_reg__0[1]),
        .O(\index[2]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFDF00200020)) 
    \index[3]_i_1__3 
       (.I0(ap_start),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .I2(\waitPortStatus_reg[0] ),
        .I3(\index_reg[1]_0 ),
        .I4(full_reg_0),
        .I5(Q),
        .O(\index[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6A6AAAA9AAAA)) 
    \index[3]_i_2__3 
       (.I0(index_reg__0[3]),
        .I1(index_reg__0[2]),
        .I2(index_reg__0[0]),
        .I3(p_12_out),
        .I4(sig_echo_server_application_listenPortStatus_V_read),
        .I5(index_reg__0[1]),
        .O(\index[3]_i_2__3_n_0 ));
  FDPE \index_reg[0] 
       (.C(aclk),
        .CE(\index[3]_i_1__3_n_0 ),
        .D(\index[0]_i_1__2_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[0]));
  FDPE \index_reg[1] 
       (.C(aclk),
        .CE(\index[3]_i_1__3_n_0 ),
        .D(\index[1]_i_1__3_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[1]));
  FDPE \index_reg[2] 
       (.C(aclk),
        .CE(\index[3]_i_1__3_n_0 ),
        .D(\index[2]_i_1__3_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[2]));
  FDPE \index_reg[3] 
       (.C(aclk),
        .CE(\index[3]_i_1__3_n_0 ),
        .D(\index[3]_i_2__3_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_listen_port_status_if" *) 
module echo_server_application_ip_echo_server_application_s_axis_listen_port_status_if
   (sig_echo_server_application_listenPortStatus_V_dout,
    s_axis_listen_port_status_TREADY,
    \index_reg[1] ,
    aclk,
    AS,
    ap_start,
    ap_reg_ppiten_pp0_it1_reg,
    \waitPortStatus_reg[0] ,
    ap_reg_ppiten_pp0_it1_reg_0,
    sig_echo_server_application_listenPortStatus_V_read,
    s_axis_listen_port_status_TVALID,
    s_axis_listen_port_status_TDATA);
  output sig_echo_server_application_listenPortStatus_V_dout;
  output s_axis_listen_port_status_TREADY;
  output \index_reg[1] ;
  input aclk;
  input [0:0]AS;
  input ap_start;
  input ap_reg_ppiten_pp0_it1_reg;
  input \waitPortStatus_reg[0] ;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input sig_echo_server_application_listenPortStatus_V_read;
  input s_axis_listen_port_status_TVALID;
  input [0:0]s_axis_listen_port_status_TDATA;

  wire [0:0]AS;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire \index_reg[1] ;
  wire listenPortStatus_V_din;
  wire listenPortStatus_V_fifo_n_1;
  wire m_valid;
  wire p_12_out;
  wire [0:0]s_axis_listen_port_status_TDATA;
  wire s_axis_listen_port_status_TREADY;
  wire s_axis_listen_port_status_TVALID;
  wire sig_echo_server_application_listenPortStatus_V_dout;
  wire sig_echo_server_application_listenPortStatus_V_read;
  wire \waitPortStatus_reg[0] ;

  echo_server_application_ip_echo_server_application_s_axis_listen_port_status_fifo listenPortStatus_V_fifo
       (.AS(AS),
        .Q(m_valid),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_reg_ppiten_pp0_it1_reg),
        .ap_reg_ppiten_pp0_it1_reg_0(ap_reg_ppiten_pp0_it1_reg_0),
        .ap_start(ap_start),
        .full_reg_0(listenPortStatus_V_fifo_n_1),
        .\index_reg[1]_0 (\index_reg[1] ),
        .listenPortStatus_V_din(listenPortStatus_V_din),
        .p_12_out(p_12_out),
        .sig_echo_server_application_listenPortStatus_V_dout(sig_echo_server_application_listenPortStatus_V_dout),
        .sig_echo_server_application_listenPortStatus_V_read(sig_echo_server_application_listenPortStatus_V_read),
        .\waitPortStatus_reg[0] (\waitPortStatus_reg[0] ));
  echo_server_application_ip_echo_server_application_s_axis_listen_port_status_reg_slice rs
       (.AS(AS),
        .Q(m_valid),
        .aclk(aclk),
        .full_reg(listenPortStatus_V_fifo_n_1),
        .listenPortStatus_V_din(listenPortStatus_V_din),
        .p_12_out(p_12_out),
        .s_axis_listen_port_status_TDATA(s_axis_listen_port_status_TDATA),
        .s_axis_listen_port_status_TREADY(s_axis_listen_port_status_TREADY),
        .s_axis_listen_port_status_TVALID(s_axis_listen_port_status_TVALID));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_listen_port_status_reg_slice" *) 
module echo_server_application_ip_echo_server_application_s_axis_listen_port_status_reg_slice
   (s_axis_listen_port_status_TREADY,
    listenPortStatus_V_din,
    Q,
    p_12_out,
    AS,
    aclk,
    s_axis_listen_port_status_TVALID,
    full_reg,
    s_axis_listen_port_status_TDATA);
  output s_axis_listen_port_status_TREADY;
  output listenPortStatus_V_din;
  output [0:0]Q;
  output p_12_out;
  input [0:0]AS;
  input aclk;
  input s_axis_listen_port_status_TVALID;
  input full_reg;
  input [0:0]s_axis_listen_port_status_TDATA;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire \data_p1[0]_i_1__8_n_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire full_reg;
  wire listenPortStatus_V_din;
  wire load_p1;
  wire p_12_out;
  wire [0:0]s_axis_listen_port_status_TDATA;
  wire s_axis_listen_port_status_TREADY;
  wire s_axis_listen_port_status_TVALID;
  wire s_ready_t_i_1__5_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__10_n_0 ;
  wire \state[1]_i_1__6_n_0 ;

  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \data_p1[0]_i_1__8 
       (.I0(s_axis_listen_port_status_TDATA),
        .I1(state),
        .I2(Q),
        .I3(data_p2),
        .I4(load_p1),
        .I5(listenPortStatus_V_din),
        .O(\data_p1[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08D8)) 
    \data_p1[0]_i_2 
       (.I0(state),
        .I1(s_axis_listen_port_status_TVALID),
        .I2(Q),
        .I3(full_reg),
        .O(load_p1));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__8_n_0 ),
        .Q(listenPortStatus_V_din),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1 
       (.I0(s_axis_listen_port_status_TDATA),
        .I1(s_axis_listen_port_status_TREADY),
        .I2(s_axis_listen_port_status_TVALID),
        .I3(data_p2),
        .O(\data_p2[0]_i_1_n_0 ));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1_n_0 ),
        .Q(data_p2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_1__2 
       (.I0(Q),
        .I1(full_reg),
        .O(p_12_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF0F30)) 
    s_ready_t_i_1__5
       (.I0(s_axis_listen_port_status_TVALID),
        .I1(full_reg),
        .I2(Q),
        .I3(state),
        .I4(s_axis_listen_port_status_TREADY),
        .O(s_ready_t_i_1__5_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__5_n_0),
        .Q(s_axis_listen_port_status_TREADY),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF80DD80)) 
    \state[0]_i_1__10 
       (.I0(state),
        .I1(s_axis_listen_port_status_TVALID),
        .I2(s_axis_listen_port_status_TREADY),
        .I3(Q),
        .I4(full_reg),
        .O(\state[0]_i_1__10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \state[1]_i_1__6 
       (.I0(Q),
        .I1(full_reg),
        .I2(s_axis_listen_port_status_TVALID),
        .I3(state),
        .O(\state[1]_i_1__6_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__10_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__6_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_notifications_if" *) 
module echo_server_application_ip_echo_server_application_s_axis_notifications_if
   (s_axis_notifications_TREADY,
    \tmp_327_reg_468_reg[31] ,
    Q,
    \tmp_327_reg_468_reg[31]_0 ,
    \tmp_9_reg_464_reg[0] ,
    AS,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    ap_start,
    s_axis_notifications_TVALID,
    s_axis_notifications_TDATA,
    tmp_9_reg_464);
  output s_axis_notifications_TREADY;
  output [0:0]\tmp_327_reg_468_reg[31] ;
  output [0:0]Q;
  output [31:0]\tmp_327_reg_468_reg[31]_0 ;
  output \tmp_9_reg_464_reg[0] ;
  input [0:0]AS;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input ap_start;
  input s_axis_notifications_TVALID;
  input [31:0]s_axis_notifications_TDATA;
  input tmp_9_reg_464;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_start;
  wire [31:0]s_axis_notifications_TDATA;
  wire s_axis_notifications_TREADY;
  wire s_axis_notifications_TVALID;
  wire [0:0]\tmp_327_reg_468_reg[31] ;
  wire [31:0]\tmp_327_reg_468_reg[31]_0 ;
  wire tmp_9_reg_464;
  wire \tmp_9_reg_464_reg[0] ;

  echo_server_application_ip_echo_server_application_s_axis_notifications_reg_slice rs
       (.AS(AS),
        .Q(Q),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_reg_ppiten_pp0_it1_reg),
        .ap_start(ap_start),
        .s_axis_notifications_TDATA(s_axis_notifications_TDATA),
        .s_axis_notifications_TREADY(s_axis_notifications_TREADY),
        .s_axis_notifications_TVALID(s_axis_notifications_TVALID),
        .\tmp_327_reg_468_reg[31] (\tmp_327_reg_468_reg[31] ),
        .\tmp_327_reg_468_reg[31]_0 (\tmp_327_reg_468_reg[31]_0 ),
        .tmp_9_reg_464(tmp_9_reg_464),
        .\tmp_9_reg_464_reg[0] (\tmp_9_reg_464_reg[0] ));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_notifications_reg_slice" *) 
module echo_server_application_ip_echo_server_application_s_axis_notifications_reg_slice
   (s_axis_notifications_TREADY,
    \tmp_327_reg_468_reg[31] ,
    Q,
    \tmp_327_reg_468_reg[31]_0 ,
    \tmp_9_reg_464_reg[0] ,
    AS,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    ap_start,
    s_axis_notifications_TVALID,
    s_axis_notifications_TDATA,
    tmp_9_reg_464);
  output s_axis_notifications_TREADY;
  output [0:0]\tmp_327_reg_468_reg[31] ;
  output [0:0]Q;
  output [31:0]\tmp_327_reg_468_reg[31]_0 ;
  output \tmp_9_reg_464_reg[0] ;
  input [0:0]AS;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input ap_start;
  input s_axis_notifications_TVALID;
  input [31:0]s_axis_notifications_TDATA;
  input tmp_9_reg_464;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_start;
  wire \data_p1[0]_i_1__6_n_0 ;
  wire \data_p1[10]_i_1__5_n_0 ;
  wire \data_p1[11]_i_1__5_n_0 ;
  wire \data_p1[12]_i_1__6_n_0 ;
  wire \data_p1[13]_i_1__5_n_0 ;
  wire \data_p1[14]_i_1__5_n_0 ;
  wire \data_p1[15]_i_1__5_n_0 ;
  wire \data_p1[16]_i_1__2_n_0 ;
  wire \data_p1[17]_i_1__1_n_0 ;
  wire \data_p1[18]_i_1__1_n_0 ;
  wire \data_p1[19]_i_1__1_n_0 ;
  wire \data_p1[1]_i_1__5_n_0 ;
  wire \data_p1[20]_i_1__1_n_0 ;
  wire \data_p1[21]_i_1__1_n_0 ;
  wire \data_p1[22]_i_1__1_n_0 ;
  wire \data_p1[23]_i_1__1_n_0 ;
  wire \data_p1[24]_i_1__1_n_0 ;
  wire \data_p1[25]_i_1__1_n_0 ;
  wire \data_p1[26]_i_1__1_n_0 ;
  wire \data_p1[27]_i_1__1_n_0 ;
  wire \data_p1[28]_i_1__1_n_0 ;
  wire \data_p1[29]_i_1__1_n_0 ;
  wire \data_p1[2]_i_1__5_n_0 ;
  wire \data_p1[30]_i_1__1_n_0 ;
  wire \data_p1[31]_i_2__0_n_0 ;
  wire \data_p1[3]_i_1__6_n_0 ;
  wire \data_p1[4]_i_1__5_n_0 ;
  wire \data_p1[5]_i_1__5_n_0 ;
  wire \data_p1[6]_i_1__5_n_0 ;
  wire \data_p1[7]_i_1__6_n_0 ;
  wire \data_p1[8]_i_1__6_n_0 ;
  wire \data_p1[9]_i_1__6_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire \echo_server_application_U/tmp_9_fu_401_p2 ;
  wire load_p1;
  wire load_p2;
  wire [31:0]s_axis_notifications_TDATA;
  wire s_axis_notifications_TREADY;
  wire s_axis_notifications_TVALID;
  wire s_ready_t_i_1__6_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__3_n_0 ;
  wire \state[1]_i_1__1_n_0 ;
  wire \tmp_327_reg_468[31]_i_3_n_0 ;
  wire \tmp_327_reg_468[31]_i_4_n_0 ;
  wire \tmp_327_reg_468[31]_i_5_n_0 ;
  wire \tmp_327_reg_468[31]_i_6_n_0 ;
  wire [0:0]\tmp_327_reg_468_reg[31] ;
  wire [31:0]\tmp_327_reg_468_reg[31]_0 ;
  wire tmp_9_reg_464;
  wire \tmp_9_reg_464_reg[0] ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__6 
       (.I0(s_axis_notifications_TDATA[0]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1__5 
       (.I0(s_axis_notifications_TDATA[10]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1__5 
       (.I0(s_axis_notifications_TDATA[11]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1__6 
       (.I0(s_axis_notifications_TDATA[12]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1__5 
       (.I0(s_axis_notifications_TDATA[13]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1__5 
       (.I0(s_axis_notifications_TDATA[14]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[14] ),
        .O(\data_p1[14]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_1__5 
       (.I0(s_axis_notifications_TDATA[15]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[16]_i_1__2 
       (.I0(s_axis_notifications_TDATA[16]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[16] ),
        .O(\data_p1[16]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[17]_i_1__1 
       (.I0(s_axis_notifications_TDATA[17]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[17] ),
        .O(\data_p1[17]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[18]_i_1__1 
       (.I0(s_axis_notifications_TDATA[18]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[18] ),
        .O(\data_p1[18]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[19]_i_1__1 
       (.I0(s_axis_notifications_TDATA[19]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[19] ),
        .O(\data_p1[19]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1__5 
       (.I0(s_axis_notifications_TDATA[1]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[20]_i_1__1 
       (.I0(s_axis_notifications_TDATA[20]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[20] ),
        .O(\data_p1[20]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[21]_i_1__1 
       (.I0(s_axis_notifications_TDATA[21]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[21] ),
        .O(\data_p1[21]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[22]_i_1__1 
       (.I0(s_axis_notifications_TDATA[22]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[22] ),
        .O(\data_p1[22]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[23]_i_1__1 
       (.I0(s_axis_notifications_TDATA[23]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[23] ),
        .O(\data_p1[23]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[24]_i_1__1 
       (.I0(s_axis_notifications_TDATA[24]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[24] ),
        .O(\data_p1[24]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[25]_i_1__1 
       (.I0(s_axis_notifications_TDATA[25]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[25] ),
        .O(\data_p1[25]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[26]_i_1__1 
       (.I0(s_axis_notifications_TDATA[26]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[26] ),
        .O(\data_p1[26]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[27]_i_1__1 
       (.I0(s_axis_notifications_TDATA[27]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[27] ),
        .O(\data_p1[27]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[28]_i_1__1 
       (.I0(s_axis_notifications_TDATA[28]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[28] ),
        .O(\data_p1[28]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[29]_i_1__1 
       (.I0(s_axis_notifications_TDATA[29]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[29] ),
        .O(\data_p1[29]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1__5 
       (.I0(s_axis_notifications_TDATA[2]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[30]_i_1__1 
       (.I0(s_axis_notifications_TDATA[30]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[30] ),
        .O(\data_p1[30]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h2F200020)) 
    \data_p1[31]_i_1__0 
       (.I0(ap_start),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .I2(Q),
        .I3(state),
        .I4(s_axis_notifications_TVALID),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[31]_i_2__0 
       (.I0(s_axis_notifications_TDATA[31]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[31] ),
        .O(\data_p1[31]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__6 
       (.I0(s_axis_notifications_TDATA[3]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1__5 
       (.I0(s_axis_notifications_TDATA[4]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1__5 
       (.I0(s_axis_notifications_TDATA[5]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1__5 
       (.I0(s_axis_notifications_TDATA[6]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__6 
       (.I0(s_axis_notifications_TDATA[7]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__6 
       (.I0(s_axis_notifications_TDATA[8]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__6 
       (.I0(s_axis_notifications_TDATA[9]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__6_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__6_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__6_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1__2_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[30]_i_1__1_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[31]_i_2__0_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__6_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__5_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__6_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__6_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__6_n_0 ),
        .Q(\tmp_327_reg_468_reg[31]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[31]_i_1__0 
       (.I0(s_axis_notifications_TREADY),
        .I1(s_axis_notifications_TVALID),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_notifications_TDATA[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h77F7FFFF0030CCCC)) 
    s_ready_t_i_1__6
       (.I0(s_axis_notifications_TVALID),
        .I1(state),
        .I2(ap_start),
        .I3(ap_reg_ppiten_pp0_it1_reg),
        .I4(Q),
        .I5(s_axis_notifications_TREADY),
        .O(s_ready_t_i_1__6_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__6_n_0),
        .Q(s_axis_notifications_TREADY),
        .R(AS));
  LUT6 #(
    .INIT(64'hFFBBFFFFF0000000)) 
    \state[0]_i_1__3 
       (.I0(ap_reg_ppiten_pp0_it1_reg),
        .I1(ap_start),
        .I2(s_axis_notifications_TREADY),
        .I3(s_axis_notifications_TVALID),
        .I4(state),
        .I5(Q),
        .O(\state[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    \state[1]_i_1__1 
       (.I0(s_axis_notifications_TVALID),
        .I1(state),
        .I2(Q),
        .I3(ap_start),
        .I4(ap_reg_ppiten_pp0_it1_reg),
        .O(\state[1]_i_1__1_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__3_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(state),
        .S(AS));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_327_reg_468[31]_i_1 
       (.I0(ap_reg_ppiten_pp0_it1_reg),
        .I1(Q),
        .I2(\echo_server_application_U/tmp_9_fu_401_p2 ),
        .O(\tmp_327_reg_468_reg[31] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \tmp_327_reg_468[31]_i_2 
       (.I0(\tmp_327_reg_468[31]_i_3_n_0 ),
        .I1(\tmp_327_reg_468[31]_i_4_n_0 ),
        .I2(\tmp_327_reg_468[31]_i_5_n_0 ),
        .I3(\tmp_327_reg_468[31]_i_6_n_0 ),
        .O(\echo_server_application_U/tmp_9_fu_401_p2 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_327_reg_468[31]_i_3 
       (.I0(\tmp_327_reg_468_reg[31]_0 [23]),
        .I1(\tmp_327_reg_468_reg[31]_0 [22]),
        .I2(\tmp_327_reg_468_reg[31]_0 [21]),
        .I3(\tmp_327_reg_468_reg[31]_0 [20]),
        .O(\tmp_327_reg_468[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_327_reg_468[31]_i_4 
       (.I0(\tmp_327_reg_468_reg[31]_0 [17]),
        .I1(\tmp_327_reg_468_reg[31]_0 [16]),
        .I2(\tmp_327_reg_468_reg[31]_0 [19]),
        .I3(\tmp_327_reg_468_reg[31]_0 [18]),
        .O(\tmp_327_reg_468[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_327_reg_468[31]_i_5 
       (.I0(\tmp_327_reg_468_reg[31]_0 [27]),
        .I1(\tmp_327_reg_468_reg[31]_0 [26]),
        .I2(\tmp_327_reg_468_reg[31]_0 [25]),
        .I3(\tmp_327_reg_468_reg[31]_0 [24]),
        .O(\tmp_327_reg_468[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_327_reg_468[31]_i_6 
       (.I0(\tmp_327_reg_468_reg[31]_0 [31]),
        .I1(\tmp_327_reg_468_reg[31]_0 [30]),
        .I2(\tmp_327_reg_468_reg[31]_0 [29]),
        .I3(\tmp_327_reg_468_reg[31]_0 [28]),
        .O(\tmp_327_reg_468[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \tmp_9_reg_464[0]_i_1 
       (.I0(\echo_server_application_U/tmp_9_fu_401_p2 ),
        .I1(Q),
        .I2(ap_reg_ppiten_pp0_it1_reg),
        .I3(tmp_9_reg_464),
        .O(\tmp_9_reg_464_reg[0] ));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_open_status_if" *) 
module echo_server_application_ip_echo_server_application_s_axis_open_status_if
   (s_axis_open_status_TREADY,
    E,
    Q,
    \tmp_7_reg_444_reg[0] ,
    AS,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    ap_start,
    s_axis_open_status_TVALID,
    s_axis_open_status_TDATA);
  output s_axis_open_status_TREADY;
  output [0:0]E;
  output [0:0]Q;
  output [16:0]\tmp_7_reg_444_reg[0] ;
  input [0:0]AS;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input ap_start;
  input s_axis_open_status_TVALID;
  input [16:0]s_axis_open_status_TDATA;

  wire [0:0]AS;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_start;
  wire [16:0]s_axis_open_status_TDATA;
  wire s_axis_open_status_TREADY;
  wire s_axis_open_status_TVALID;
  wire [16:0]\tmp_7_reg_444_reg[0] ;

  echo_server_application_ip_echo_server_application_s_axis_open_status_reg_slice rs
       (.AS(AS),
        .E(E),
        .Q(Q),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_reg_ppiten_pp0_it1_reg),
        .ap_start(ap_start),
        .s_axis_open_status_TDATA(s_axis_open_status_TDATA),
        .s_axis_open_status_TREADY(s_axis_open_status_TREADY),
        .s_axis_open_status_TVALID(s_axis_open_status_TVALID),
        .\tmp_7_reg_444_reg[0] (\tmp_7_reg_444_reg[0] ));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_open_status_reg_slice" *) 
module echo_server_application_ip_echo_server_application_s_axis_open_status_reg_slice
   (s_axis_open_status_TREADY,
    E,
    Q,
    \tmp_7_reg_444_reg[0] ,
    AS,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    ap_start,
    s_axis_open_status_TVALID,
    s_axis_open_status_TDATA);
  output s_axis_open_status_TREADY;
  output [0:0]E;
  output [0:0]Q;
  output [16:0]\tmp_7_reg_444_reg[0] ;
  input [0:0]AS;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input ap_start;
  input s_axis_open_status_TVALID;
  input [16:0]s_axis_open_status_TDATA;

  wire [0:0]AS;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_start;
  wire \data_p1[0]_i_1__1_n_0 ;
  wire \data_p1[10]_i_1__1_n_0 ;
  wire \data_p1[11]_i_1__1_n_0 ;
  wire \data_p1[12]_i_1__2_n_0 ;
  wire \data_p1[13]_i_1__1_n_0 ;
  wire \data_p1[14]_i_1__1_n_0 ;
  wire \data_p1[15]_i_1__4_n_0 ;
  wire \data_p1[16]_i_2_n_0 ;
  wire \data_p1[1]_i_1__1_n_0 ;
  wire \data_p1[2]_i_1__1_n_0 ;
  wire \data_p1[3]_i_1__1_n_0 ;
  wire \data_p1[4]_i_1__1_n_0 ;
  wire \data_p1[5]_i_1__1_n_0 ;
  wire \data_p1[6]_i_1__1_n_0 ;
  wire \data_p1[7]_i_1__1_n_0 ;
  wire \data_p1[8]_i_1__1_n_0 ;
  wire \data_p1[9]_i_1__1_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire load_p1;
  wire load_p2;
  wire [16:0]s_axis_open_status_TDATA;
  wire s_axis_open_status_TREADY;
  wire s_axis_open_status_TVALID;
  wire s_ready_t_i_1__7_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__4_n_0 ;
  wire \state[1]_i_1__2_n_0 ;
  wire [16:0]\tmp_7_reg_444_reg[0] ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__1 
       (.I0(s_axis_open_status_TDATA[0]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1__1 
       (.I0(s_axis_open_status_TDATA[10]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1__1 
       (.I0(s_axis_open_status_TDATA[11]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1__2 
       (.I0(s_axis_open_status_TDATA[12]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1__1 
       (.I0(s_axis_open_status_TDATA[13]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1__1 
       (.I0(s_axis_open_status_TDATA[14]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[14] ),
        .O(\data_p1[14]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_1__4 
       (.I0(s_axis_open_status_TDATA[15]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h22F00200)) 
    \data_p1[16]_i_1 
       (.I0(ap_start),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .I2(state),
        .I3(Q),
        .I4(s_axis_open_status_TVALID),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[16]_i_2 
       (.I0(s_axis_open_status_TDATA[16]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[16] ),
        .O(\data_p1[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1__1 
       (.I0(s_axis_open_status_TDATA[1]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1__1 
       (.I0(s_axis_open_status_TDATA[2]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__1 
       (.I0(s_axis_open_status_TDATA[3]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1__1 
       (.I0(s_axis_open_status_TDATA[4]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1__1 
       (.I0(s_axis_open_status_TDATA[5]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1__1 
       (.I0(s_axis_open_status_TDATA[6]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__1 
       (.I0(s_axis_open_status_TDATA[7]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__1 
       (.I0(s_axis_open_status_TDATA[8]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__1 
       (.I0(s_axis_open_status_TDATA[9]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__1_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__2_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__4_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[16]_i_2_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [16]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__1_n_0 ),
        .Q(\tmp_7_reg_444_reg[0] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[16]_i_1 
       (.I0(s_axis_open_status_TREADY),
        .I1(s_axis_open_status_TVALID),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_open_status_TDATA[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F7FFF7F0C0C3C0C)) 
    s_ready_t_i_1__7
       (.I0(s_axis_open_status_TVALID),
        .I1(state),
        .I2(Q),
        .I3(ap_start),
        .I4(ap_reg_ppiten_pp0_it1_reg),
        .I5(s_axis_open_status_TREADY),
        .O(s_ready_t_i_1__7_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__7_n_0),
        .Q(s_axis_open_status_TREADY),
        .R(AS));
  LUT6 #(
    .INIT(64'hFFBBF000FFFF0000)) 
    \state[0]_i_1__4 
       (.I0(ap_reg_ppiten_pp0_it1_reg),
        .I1(ap_start),
        .I2(s_axis_open_status_TREADY),
        .I3(s_axis_open_status_TVALID),
        .I4(Q),
        .I5(state),
        .O(\state[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    \state[1]_i_1__2 
       (.I0(s_axis_open_status_TVALID),
        .I1(state),
        .I2(Q),
        .I3(ap_start),
        .I4(ap_reg_ppiten_pp0_it1_reg),
        .O(\state[1]_i_1__2_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__4_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__2_n_0 ),
        .Q(state),
        .S(AS));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_7_reg_444[0]_i_1 
       (.I0(Q),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .O(E));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_rx_data_if" *) 
module echo_server_application_ip_echo_server_application_s_axis_rx_data_if
   (s_axis_rx_data_TREADY,
    Q,
    \ea_fsmState_V_reg[0] ,
    \tmp_432_reg_490_reg[72] ,
    AS,
    aclk,
    s_axis_rx_data_TVALID,
    ap_start,
    ap_reg_ppiten_pp0_it1_reg,
    \ea_fsmState_V_reg[0]_0 ,
    ap_reg_ppiten_pp0_it1_reg_0,
    empty_reg,
    D);
  output s_axis_rx_data_TREADY;
  output [0:0]Q;
  output \ea_fsmState_V_reg[0] ;
  output [72:0]\tmp_432_reg_490_reg[72] ;
  input [0:0]AS;
  input aclk;
  input s_axis_rx_data_TVALID;
  input ap_start;
  input ap_reg_ppiten_pp0_it1_reg;
  input \ea_fsmState_V_reg[0]_0 ;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input empty_reg;
  input [72:0]D;

  wire [0:0]AS;
  wire [72:0]D;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire \ea_fsmState_V_reg[0] ;
  wire \ea_fsmState_V_reg[0]_0 ;
  wire empty_reg;
  wire s_axis_rx_data_TREADY;
  wire s_axis_rx_data_TVALID;
  wire [72:0]\tmp_432_reg_490_reg[72] ;

  echo_server_application_ip_echo_server_application_s_axis_rx_data_reg_slice rs
       (.AS(AS),
        .D(D),
        .Q(Q),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_reg_ppiten_pp0_it1_reg),
        .ap_reg_ppiten_pp0_it1_reg_0(ap_reg_ppiten_pp0_it1_reg_0),
        .ap_start(ap_start),
        .\ea_fsmState_V_reg[0] (\ea_fsmState_V_reg[0] ),
        .\ea_fsmState_V_reg[0]_0 (\ea_fsmState_V_reg[0]_0 ),
        .empty_reg(empty_reg),
        .s_axis_rx_data_TREADY(s_axis_rx_data_TREADY),
        .s_axis_rx_data_TVALID(s_axis_rx_data_TVALID),
        .\tmp_432_reg_490_reg[72] (\tmp_432_reg_490_reg[72] ));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_rx_data_reg_slice" *) 
module echo_server_application_ip_echo_server_application_s_axis_rx_data_reg_slice
   (s_axis_rx_data_TREADY,
    Q,
    \ea_fsmState_V_reg[0] ,
    \tmp_432_reg_490_reg[72] ,
    AS,
    aclk,
    s_axis_rx_data_TVALID,
    ap_start,
    ap_reg_ppiten_pp0_it1_reg,
    \ea_fsmState_V_reg[0]_0 ,
    ap_reg_ppiten_pp0_it1_reg_0,
    empty_reg,
    D);
  output s_axis_rx_data_TREADY;
  output [0:0]Q;
  output \ea_fsmState_V_reg[0] ;
  output [72:0]\tmp_432_reg_490_reg[72] ;
  input [0:0]AS;
  input aclk;
  input s_axis_rx_data_TVALID;
  input ap_start;
  input ap_reg_ppiten_pp0_it1_reg;
  input \ea_fsmState_V_reg[0]_0 ;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input empty_reg;
  input [72:0]D;

  wire [0:0]AS;
  wire [72:0]D;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire \data_p1[0]_i_1__7_n_0 ;
  wire \data_p1[10]_i_1__6_n_0 ;
  wire \data_p1[11]_i_1__6_n_0 ;
  wire \data_p1[12]_i_1__7_n_0 ;
  wire \data_p1[13]_i_1__6_n_0 ;
  wire \data_p1[14]_i_1__6_n_0 ;
  wire \data_p1[15]_i_1__6_n_0 ;
  wire \data_p1[16]_i_1__3_n_0 ;
  wire \data_p1[17]_i_1__2_n_0 ;
  wire \data_p1[18]_i_1__2_n_0 ;
  wire \data_p1[19]_i_1__2_n_0 ;
  wire \data_p1[1]_i_1__6_n_0 ;
  wire \data_p1[20]_i_1__2_n_0 ;
  wire \data_p1[21]_i_1__2_n_0 ;
  wire \data_p1[22]_i_1__2_n_0 ;
  wire \data_p1[23]_i_1__2_n_0 ;
  wire \data_p1[24]_i_1__2_n_0 ;
  wire \data_p1[25]_i_1__2_n_0 ;
  wire \data_p1[26]_i_1__2_n_0 ;
  wire \data_p1[27]_i_1__2_n_0 ;
  wire \data_p1[28]_i_1__2_n_0 ;
  wire \data_p1[29]_i_1__2_n_0 ;
  wire \data_p1[2]_i_1__6_n_0 ;
  wire \data_p1[30]_i_1__2_n_0 ;
  wire \data_p1[31]_i_1__2_n_0 ;
  wire \data_p1[32]_i_1__0_n_0 ;
  wire \data_p1[33]_i_1__0_n_0 ;
  wire \data_p1[34]_i_1__0_n_0 ;
  wire \data_p1[35]_i_1__0_n_0 ;
  wire \data_p1[36]_i_1__0_n_0 ;
  wire \data_p1[37]_i_1__0_n_0 ;
  wire \data_p1[38]_i_1__0_n_0 ;
  wire \data_p1[39]_i_1__0_n_0 ;
  wire \data_p1[3]_i_1__7_n_0 ;
  wire \data_p1[40]_i_1__0_n_0 ;
  wire \data_p1[41]_i_1__0_n_0 ;
  wire \data_p1[42]_i_1__0_n_0 ;
  wire \data_p1[43]_i_1__0_n_0 ;
  wire \data_p1[44]_i_1__0_n_0 ;
  wire \data_p1[45]_i_1__0_n_0 ;
  wire \data_p1[46]_i_1__0_n_0 ;
  wire \data_p1[47]_i_1__0_n_0 ;
  wire \data_p1[48]_i_1__0_n_0 ;
  wire \data_p1[49]_i_1__0_n_0 ;
  wire \data_p1[4]_i_1__6_n_0 ;
  wire \data_p1[50]_i_1__0_n_0 ;
  wire \data_p1[51]_i_1__0_n_0 ;
  wire \data_p1[52]_i_1__0_n_0 ;
  wire \data_p1[53]_i_1__0_n_0 ;
  wire \data_p1[54]_i_1__0_n_0 ;
  wire \data_p1[55]_i_1__0_n_0 ;
  wire \data_p1[56]_i_1__0_n_0 ;
  wire \data_p1[57]_i_1__0_n_0 ;
  wire \data_p1[58]_i_1__0_n_0 ;
  wire \data_p1[59]_i_1__0_n_0 ;
  wire \data_p1[5]_i_1__6_n_0 ;
  wire \data_p1[60]_i_1__0_n_0 ;
  wire \data_p1[61]_i_1__0_n_0 ;
  wire \data_p1[62]_i_1__0_n_0 ;
  wire \data_p1[63]_i_1__0_n_0 ;
  wire \data_p1[64]_i_1__0_n_0 ;
  wire \data_p1[65]_i_1__0_n_0 ;
  wire \data_p1[66]_i_1__0_n_0 ;
  wire \data_p1[67]_i_1__0_n_0 ;
  wire \data_p1[68]_i_1__0_n_0 ;
  wire \data_p1[69]_i_1__0_n_0 ;
  wire \data_p1[6]_i_1__6_n_0 ;
  wire \data_p1[70]_i_1__0_n_0 ;
  wire \data_p1[71]_i_1__0_n_0 ;
  wire \data_p1[72]_i_2_n_0 ;
  wire \data_p1[7]_i_1__7_n_0 ;
  wire \data_p1[8]_i_1__7_n_0 ;
  wire \data_p1[9]_i_1__7_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[32] ;
  wire \data_p2_reg_n_0_[33] ;
  wire \data_p2_reg_n_0_[34] ;
  wire \data_p2_reg_n_0_[35] ;
  wire \data_p2_reg_n_0_[36] ;
  wire \data_p2_reg_n_0_[37] ;
  wire \data_p2_reg_n_0_[38] ;
  wire \data_p2_reg_n_0_[39] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[40] ;
  wire \data_p2_reg_n_0_[41] ;
  wire \data_p2_reg_n_0_[42] ;
  wire \data_p2_reg_n_0_[43] ;
  wire \data_p2_reg_n_0_[44] ;
  wire \data_p2_reg_n_0_[45] ;
  wire \data_p2_reg_n_0_[46] ;
  wire \data_p2_reg_n_0_[47] ;
  wire \data_p2_reg_n_0_[48] ;
  wire \data_p2_reg_n_0_[49] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[50] ;
  wire \data_p2_reg_n_0_[51] ;
  wire \data_p2_reg_n_0_[52] ;
  wire \data_p2_reg_n_0_[53] ;
  wire \data_p2_reg_n_0_[54] ;
  wire \data_p2_reg_n_0_[55] ;
  wire \data_p2_reg_n_0_[56] ;
  wire \data_p2_reg_n_0_[57] ;
  wire \data_p2_reg_n_0_[58] ;
  wire \data_p2_reg_n_0_[59] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[60] ;
  wire \data_p2_reg_n_0_[61] ;
  wire \data_p2_reg_n_0_[62] ;
  wire \data_p2_reg_n_0_[63] ;
  wire \data_p2_reg_n_0_[64] ;
  wire \data_p2_reg_n_0_[65] ;
  wire \data_p2_reg_n_0_[66] ;
  wire \data_p2_reg_n_0_[67] ;
  wire \data_p2_reg_n_0_[68] ;
  wire \data_p2_reg_n_0_[69] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[70] ;
  wire \data_p2_reg_n_0_[71] ;
  wire \data_p2_reg_n_0_[72] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire \ea_fsmState_V_reg[0] ;
  wire \ea_fsmState_V_reg[0]_0 ;
  wire empty_reg;
  wire load_p1;
  wire load_p2;
  wire s_axis_rx_data_TREADY;
  wire s_axis_rx_data_TVALID;
  wire s_ready_t_i_1__8_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__2_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire [72:0]\tmp_432_reg_490_reg[72] ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__7 
       (.I0(D[0]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1__6 
       (.I0(D[10]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1__6 
       (.I0(D[11]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1__7 
       (.I0(D[12]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1__7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1__6 
       (.I0(D[13]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1__6 
       (.I0(D[14]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[14] ),
        .O(\data_p1[14]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_1__6 
       (.I0(D[15]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[16]_i_1__3 
       (.I0(D[16]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[16] ),
        .O(\data_p1[16]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[17]_i_1__2 
       (.I0(D[17]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[17] ),
        .O(\data_p1[17]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[18]_i_1__2 
       (.I0(D[18]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[18] ),
        .O(\data_p1[18]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[19]_i_1__2 
       (.I0(D[19]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[19] ),
        .O(\data_p1[19]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1__6 
       (.I0(D[1]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[20]_i_1__2 
       (.I0(D[20]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[20] ),
        .O(\data_p1[20]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[21]_i_1__2 
       (.I0(D[21]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[21] ),
        .O(\data_p1[21]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[22]_i_1__2 
       (.I0(D[22]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[22] ),
        .O(\data_p1[22]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[23]_i_1__2 
       (.I0(D[23]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[23] ),
        .O(\data_p1[23]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[24]_i_1__2 
       (.I0(D[24]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[24] ),
        .O(\data_p1[24]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[25]_i_1__2 
       (.I0(D[25]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[25] ),
        .O(\data_p1[25]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[26]_i_1__2 
       (.I0(D[26]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[26] ),
        .O(\data_p1[26]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[27]_i_1__2 
       (.I0(D[27]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[27] ),
        .O(\data_p1[27]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[28]_i_1__2 
       (.I0(D[28]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[28] ),
        .O(\data_p1[28]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[29]_i_1__2 
       (.I0(D[29]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[29] ),
        .O(\data_p1[29]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1__6 
       (.I0(D[2]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[30]_i_1__2 
       (.I0(D[30]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[30] ),
        .O(\data_p1[30]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[31]_i_1__2 
       (.I0(D[31]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[31] ),
        .O(\data_p1[31]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[32]_i_1__0 
       (.I0(D[32]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[32] ),
        .O(\data_p1[32]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[33]_i_1__0 
       (.I0(D[33]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[33] ),
        .O(\data_p1[33]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[34]_i_1__0 
       (.I0(D[34]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[34] ),
        .O(\data_p1[34]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[35]_i_1__0 
       (.I0(D[35]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[35] ),
        .O(\data_p1[35]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[36]_i_1__0 
       (.I0(D[36]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[36] ),
        .O(\data_p1[36]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[37]_i_1__0 
       (.I0(D[37]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[37] ),
        .O(\data_p1[37]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[38]_i_1__0 
       (.I0(D[38]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[38] ),
        .O(\data_p1[38]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[39]_i_1__0 
       (.I0(D[39]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[39] ),
        .O(\data_p1[39]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__7 
       (.I0(D[3]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[40]_i_1__0 
       (.I0(D[40]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[40] ),
        .O(\data_p1[40]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[41]_i_1__0 
       (.I0(D[41]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[41] ),
        .O(\data_p1[41]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[42]_i_1__0 
       (.I0(D[42]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[42] ),
        .O(\data_p1[42]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[43]_i_1__0 
       (.I0(D[43]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[43] ),
        .O(\data_p1[43]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[44]_i_1__0 
       (.I0(D[44]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[44] ),
        .O(\data_p1[44]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[45]_i_1__0 
       (.I0(D[45]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[45] ),
        .O(\data_p1[45]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[46]_i_1__0 
       (.I0(D[46]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[46] ),
        .O(\data_p1[46]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[47]_i_1__0 
       (.I0(D[47]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[47] ),
        .O(\data_p1[47]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[48]_i_1__0 
       (.I0(D[48]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[48] ),
        .O(\data_p1[48]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[49]_i_1__0 
       (.I0(D[49]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[49] ),
        .O(\data_p1[49]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1__6 
       (.I0(D[4]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[50]_i_1__0 
       (.I0(D[50]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[50] ),
        .O(\data_p1[50]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[51]_i_1__0 
       (.I0(D[51]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[51] ),
        .O(\data_p1[51]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[52]_i_1__0 
       (.I0(D[52]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[52] ),
        .O(\data_p1[52]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[53]_i_1__0 
       (.I0(D[53]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[53] ),
        .O(\data_p1[53]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[54]_i_1__0 
       (.I0(D[54]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[54] ),
        .O(\data_p1[54]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[55]_i_1__0 
       (.I0(D[55]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[55] ),
        .O(\data_p1[55]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[56]_i_1__0 
       (.I0(D[56]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[56] ),
        .O(\data_p1[56]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[57]_i_1__0 
       (.I0(D[57]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[57] ),
        .O(\data_p1[57]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[58]_i_1__0 
       (.I0(D[58]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[58] ),
        .O(\data_p1[58]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[59]_i_1__0 
       (.I0(D[59]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[59] ),
        .O(\data_p1[59]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1__6 
       (.I0(D[5]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[60]_i_1__0 
       (.I0(D[60]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[60] ),
        .O(\data_p1[60]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[61]_i_1__0 
       (.I0(D[61]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[61] ),
        .O(\data_p1[61]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[62]_i_1__0 
       (.I0(D[62]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[62] ),
        .O(\data_p1[62]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[63]_i_1__0 
       (.I0(D[63]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[63] ),
        .O(\data_p1[63]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[64]_i_1__0 
       (.I0(D[64]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[64] ),
        .O(\data_p1[64]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[65]_i_1__0 
       (.I0(D[65]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[65] ),
        .O(\data_p1[65]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[66]_i_1__0 
       (.I0(D[66]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[66] ),
        .O(\data_p1[66]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[67]_i_1__0 
       (.I0(D[67]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[67] ),
        .O(\data_p1[67]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[68]_i_1__0 
       (.I0(D[68]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[68] ),
        .O(\data_p1[68]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[69]_i_1__0 
       (.I0(D[69]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[69] ),
        .O(\data_p1[69]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1__6 
       (.I0(D[6]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[70]_i_1__0 
       (.I0(D[70]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[70] ),
        .O(\data_p1[70]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[71]_i_1__0 
       (.I0(D[71]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[71] ),
        .O(\data_p1[71]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00D0000088888888)) 
    \data_p1[72]_i_1 
       (.I0(state),
        .I1(s_axis_rx_data_TVALID),
        .I2(ap_start),
        .I3(ap_reg_ppiten_pp0_it1_reg),
        .I4(\ea_fsmState_V_reg[0]_0 ),
        .I5(Q),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[72]_i_2 
       (.I0(D[72]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[72] ),
        .O(\data_p1[72]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__7 
       (.I0(D[7]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__7 
       (.I0(D[8]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__7 
       (.I0(D[9]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__7_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__7_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__7_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1__3_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[30]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[31]_i_1__2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [31]),
        .R(1'b0));
  FDRE \data_p1_reg[32] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[32]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [32]),
        .R(1'b0));
  FDRE \data_p1_reg[33] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[33]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [33]),
        .R(1'b0));
  FDRE \data_p1_reg[34] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[34]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [34]),
        .R(1'b0));
  FDRE \data_p1_reg[35] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[35]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [35]),
        .R(1'b0));
  FDRE \data_p1_reg[36] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[36]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [36]),
        .R(1'b0));
  FDRE \data_p1_reg[37] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[37]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [37]),
        .R(1'b0));
  FDRE \data_p1_reg[38] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[38]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [38]),
        .R(1'b0));
  FDRE \data_p1_reg[39] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[39]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [39]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__7_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [3]),
        .R(1'b0));
  FDRE \data_p1_reg[40] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[40]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [40]),
        .R(1'b0));
  FDRE \data_p1_reg[41] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[41]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [41]),
        .R(1'b0));
  FDRE \data_p1_reg[42] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[42]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [42]),
        .R(1'b0));
  FDRE \data_p1_reg[43] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[43]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [43]),
        .R(1'b0));
  FDRE \data_p1_reg[44] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[44]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [44]),
        .R(1'b0));
  FDRE \data_p1_reg[45] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[45]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [45]),
        .R(1'b0));
  FDRE \data_p1_reg[46] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[46]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [46]),
        .R(1'b0));
  FDRE \data_p1_reg[47] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[47]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [47]),
        .R(1'b0));
  FDRE \data_p1_reg[48] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[48]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [48]),
        .R(1'b0));
  FDRE \data_p1_reg[49] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[49]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [49]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [4]),
        .R(1'b0));
  FDRE \data_p1_reg[50] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[50]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [50]),
        .R(1'b0));
  FDRE \data_p1_reg[51] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[51]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [51]),
        .R(1'b0));
  FDRE \data_p1_reg[52] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[52]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [52]),
        .R(1'b0));
  FDRE \data_p1_reg[53] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[53]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [53]),
        .R(1'b0));
  FDRE \data_p1_reg[54] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[54]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [54]),
        .R(1'b0));
  FDRE \data_p1_reg[55] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[55]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [55]),
        .R(1'b0));
  FDRE \data_p1_reg[56] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[56]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [56]),
        .R(1'b0));
  FDRE \data_p1_reg[57] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[57]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [57]),
        .R(1'b0));
  FDRE \data_p1_reg[58] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[58]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [58]),
        .R(1'b0));
  FDRE \data_p1_reg[59] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[59]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [59]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [5]),
        .R(1'b0));
  FDRE \data_p1_reg[60] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[60]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [60]),
        .R(1'b0));
  FDRE \data_p1_reg[61] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[61]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [61]),
        .R(1'b0));
  FDRE \data_p1_reg[62] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[62]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [62]),
        .R(1'b0));
  FDRE \data_p1_reg[63] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[63]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [63]),
        .R(1'b0));
  FDRE \data_p1_reg[64] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[64]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [64]),
        .R(1'b0));
  FDRE \data_p1_reg[65] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[65]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [65]),
        .R(1'b0));
  FDRE \data_p1_reg[66] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[66]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [66]),
        .R(1'b0));
  FDRE \data_p1_reg[67] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[67]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [67]),
        .R(1'b0));
  FDRE \data_p1_reg[68] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[68]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [68]),
        .R(1'b0));
  FDRE \data_p1_reg[69] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[69]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [69]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__6_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [6]),
        .R(1'b0));
  FDRE \data_p1_reg[70] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[70]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [70]),
        .R(1'b0));
  FDRE \data_p1_reg[71] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[71]_i_1__0_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [71]),
        .R(1'b0));
  FDRE \data_p1_reg[72] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[72]_i_2_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [72]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__7_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__7_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__7_n_0 ),
        .Q(\tmp_432_reg_490_reg[72] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[72]_i_1__0 
       (.I0(s_axis_rx_data_TREADY),
        .I1(s_axis_rx_data_TVALID),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \data_p2_reg[32] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[32]),
        .Q(\data_p2_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \data_p2_reg[33] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[33]),
        .Q(\data_p2_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \data_p2_reg[34] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[34]),
        .Q(\data_p2_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \data_p2_reg[35] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[35]),
        .Q(\data_p2_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \data_p2_reg[36] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[36]),
        .Q(\data_p2_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \data_p2_reg[37] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[37]),
        .Q(\data_p2_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \data_p2_reg[38] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[38]),
        .Q(\data_p2_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \data_p2_reg[39] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[39]),
        .Q(\data_p2_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[40] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[40]),
        .Q(\data_p2_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \data_p2_reg[41] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[41]),
        .Q(\data_p2_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \data_p2_reg[42] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[42]),
        .Q(\data_p2_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \data_p2_reg[43] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[43]),
        .Q(\data_p2_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \data_p2_reg[44] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[44]),
        .Q(\data_p2_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \data_p2_reg[45] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[45]),
        .Q(\data_p2_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \data_p2_reg[46] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[46]),
        .Q(\data_p2_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \data_p2_reg[47] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[47]),
        .Q(\data_p2_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \data_p2_reg[48] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[48]),
        .Q(\data_p2_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \data_p2_reg[49] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[49]),
        .Q(\data_p2_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[50] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[50]),
        .Q(\data_p2_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \data_p2_reg[51] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[51]),
        .Q(\data_p2_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \data_p2_reg[52] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[52]),
        .Q(\data_p2_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \data_p2_reg[53] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[53]),
        .Q(\data_p2_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \data_p2_reg[54] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[54]),
        .Q(\data_p2_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \data_p2_reg[55] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[55]),
        .Q(\data_p2_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \data_p2_reg[56] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[56]),
        .Q(\data_p2_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \data_p2_reg[57] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[57]),
        .Q(\data_p2_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \data_p2_reg[58] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[58]),
        .Q(\data_p2_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \data_p2_reg[59] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[59]),
        .Q(\data_p2_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[60] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[60]),
        .Q(\data_p2_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \data_p2_reg[61] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[61]),
        .Q(\data_p2_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \data_p2_reg[62] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[62]),
        .Q(\data_p2_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \data_p2_reg[63] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[63]),
        .Q(\data_p2_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \data_p2_reg[64] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[64]),
        .Q(\data_p2_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \data_p2_reg[65] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[65]),
        .Q(\data_p2_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \data_p2_reg[66] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[66]),
        .Q(\data_p2_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \data_p2_reg[67] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[67]),
        .Q(\data_p2_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \data_p2_reg[68] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[68]),
        .Q(\data_p2_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \data_p2_reg[69] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[69]),
        .Q(\data_p2_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[70] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[70]),
        .Q(\data_p2_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \data_p2_reg[71] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[71]),
        .Q(\data_p2_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \data_p2_reg[72] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[72]),
        .Q(\data_p2_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(load_p2),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF700FF00F70CFF0C)) 
    \ea_fsmState_V[0]_i_1 
       (.I0(\tmp_432_reg_490_reg[72] [72]),
        .I1(ap_start),
        .I2(ap_reg_ppiten_pp0_it1_reg),
        .I3(\ea_fsmState_V_reg[0]_0 ),
        .I4(Q),
        .I5(empty_reg),
        .O(\ea_fsmState_V_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hDFFF0CFC)) 
    s_ready_t_i_1__8
       (.I0(s_axis_rx_data_TVALID),
        .I1(ap_reg_ppiten_pp0_it1_reg_0),
        .I2(state),
        .I3(Q),
        .I4(s_axis_rx_data_TREADY),
        .O(s_ready_t_i_1__8_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__8_n_0),
        .Q(s_axis_rx_data_TREADY),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hBBFF8080)) 
    \state[0]_i_1__2 
       (.I0(s_axis_rx_data_TVALID),
        .I1(state),
        .I2(s_axis_rx_data_TREADY),
        .I3(ap_reg_ppiten_pp0_it1_reg_0),
        .I4(Q),
        .O(\state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h2F2FFF2F2F2F2F2F)) 
    \state[1]_i_1__0 
       (.I0(state),
        .I1(s_axis_rx_data_TVALID),
        .I2(Q),
        .I3(\ea_fsmState_V_reg[0]_0 ),
        .I4(ap_reg_ppiten_pp0_it1_reg),
        .I5(ap_start),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__2_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_rx_metadata_fifo" *) 
module echo_server_application_ip_echo_server_application_s_axis_rx_metadata_fifo
   (\index_reg[1]_0 ,
    full_reg_0,
    out,
    aclk,
    AS,
    ap_start,
    ap_reg_ppiten_pp0_it1_reg,
    \ea_fsmState_V_reg[0] ,
    Q,
    ap_reg_ppiten_pp0_it1_reg_0,
    p_12_out,
    ea_fsmState_V4_out,
    in);
  output \index_reg[1]_0 ;
  output full_reg_0;
  output [15:0]out;
  input aclk;
  input [0:0]AS;
  input ap_start;
  input ap_reg_ppiten_pp0_it1_reg;
  input \ea_fsmState_V_reg[0] ;
  input [0:0]Q;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input p_12_out;
  input ea_fsmState_V4_out;
  input [15:0]in;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire ea_fsmState_V4_out;
  wire \ea_fsmState_V_reg[0] ;
  wire empty_i_1_n_0;
  wire empty_i_2__3_n_0;
  wire full_i_1__3_n_0;
  wire full_i_2__3_n_0;
  wire full_reg_0;
  wire [15:0]in;
  wire \index[0]_i_1__3_n_0 ;
  wire \index[1]_i_1__2_n_0 ;
  wire \index[2]_i_1__2_n_0 ;
  wire \index[3]_i_1__2_n_0 ;
  wire \index[3]_i_2__2_n_0 ;
  wire \index_reg[1]_0 ;
  wire [3:0]index_reg__0;
  wire [15:0]out;
  wire p_12_out;

  LUT6 #(
    .INIT(64'h0000FF020000FF00)) 
    empty_i_1
       (.I0(ap_start),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .I2(\ea_fsmState_V_reg[0] ),
        .I3(\index_reg[1]_0 ),
        .I4(p_12_out),
        .I5(empty_i_2__3_n_0),
        .O(empty_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    empty_i_2__3
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[3]),
        .I3(index_reg__0[2]),
        .O(empty_i_2__3_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .PRE(AS),
        .Q(\index_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFAAA8AAAA)) 
    full_i_1__3
       (.I0(full_reg_0),
        .I1(\index_reg[1]_0 ),
        .I2(\ea_fsmState_V_reg[0] ),
        .I3(ap_reg_ppiten_pp0_it1_reg),
        .I4(ap_start),
        .I5(full_i_2__3_n_0),
        .O(full_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    full_i_2__3
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[0]),
        .I4(full_reg_0),
        .I5(Q),
        .O(full_i_2__3_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(full_i_1__3_n_0),
        .Q(full_reg_0));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][0]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[0]),
        .Q(out[0]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][10]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][11]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][12]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][13]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][14]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][15]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][1]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][2]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][3]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][4]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][5]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][6]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][7]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][8]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][9]_srl16 
       (.A0(index_reg__0[0]),
        .A1(index_reg__0[1]),
        .A2(index_reg__0[2]),
        .A3(index_reg__0[3]),
        .CE(p_12_out),
        .CLK(aclk),
        .D(in[9]),
        .Q(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1__3 
       (.I0(index_reg__0[0]),
        .O(\index[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h55555559AAAAAAA6)) 
    \index[1]_i_1__2 
       (.I0(index_reg__0[0]),
        .I1(ap_reg_ppiten_pp0_it1_reg_0),
        .I2(\ea_fsmState_V_reg[0] ),
        .I3(\index_reg[1]_0 ),
        .I4(p_12_out),
        .I5(index_reg__0[1]),
        .O(\index[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF7500FF75008A)) 
    \index[2]_i_1__2 
       (.I0(ea_fsmState_V4_out),
        .I1(full_reg_0),
        .I2(Q),
        .I3(index_reg__0[0]),
        .I4(index_reg__0[2]),
        .I5(index_reg__0[1]),
        .O(\index[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFD00020002)) 
    \index[3]_i_1__2 
       (.I0(ap_start),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .I2(\ea_fsmState_V_reg[0] ),
        .I3(\index_reg[1]_0 ),
        .I4(full_reg_0),
        .I5(Q),
        .O(\index[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6A6AAAA9AAAA)) 
    \index[3]_i_2__2 
       (.I0(index_reg__0[3]),
        .I1(index_reg__0[2]),
        .I2(index_reg__0[0]),
        .I3(p_12_out),
        .I4(ea_fsmState_V4_out),
        .I5(index_reg__0[1]),
        .O(\index[3]_i_2__2_n_0 ));
  FDPE \index_reg[0] 
       (.C(aclk),
        .CE(\index[3]_i_1__2_n_0 ),
        .D(\index[0]_i_1__3_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[0]));
  FDPE \index_reg[1] 
       (.C(aclk),
        .CE(\index[3]_i_1__2_n_0 ),
        .D(\index[1]_i_1__2_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[1]));
  FDPE \index_reg[2] 
       (.C(aclk),
        .CE(\index[3]_i_1__2_n_0 ),
        .D(\index[2]_i_1__2_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[2]));
  FDPE \index_reg[3] 
       (.C(aclk),
        .CE(\index[3]_i_1__2_n_0 ),
        .D(\index[3]_i_2__2_n_0 ),
        .PRE(AS),
        .Q(index_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_rx_metadata_if" *) 
module echo_server_application_ip_echo_server_application_s_axis_rx_metadata_if
   (\index_reg[1] ,
    s_axis_rx_metadata_TREADY,
    out,
    aclk,
    AS,
    ap_start,
    ap_reg_ppiten_pp0_it1_reg,
    \ea_fsmState_V_reg[0] ,
    ap_reg_ppiten_pp0_it1_reg_0,
    ea_fsmState_V4_out,
    s_axis_rx_metadata_TVALID,
    s_axis_rx_metadata_TDATA);
  output \index_reg[1] ;
  output s_axis_rx_metadata_TREADY;
  output [15:0]out;
  input aclk;
  input [0:0]AS;
  input ap_start;
  input ap_reg_ppiten_pp0_it1_reg;
  input \ea_fsmState_V_reg[0] ;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input ea_fsmState_V4_out;
  input s_axis_rx_metadata_TVALID;
  input [15:0]s_axis_rx_metadata_TDATA;

  wire [0:0]AS;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire ea_fsmState_V4_out;
  wire \ea_fsmState_V_reg[0] ;
  wire \index_reg[1] ;
  wire m_valid;
  wire [15:0]out;
  wire p_12_out;
  wire [15:0]rxMetaData_V_V_din;
  wire rxMetaData_V_V_fifo_n_1;
  wire [15:0]s_axis_rx_metadata_TDATA;
  wire s_axis_rx_metadata_TREADY;
  wire s_axis_rx_metadata_TVALID;

  echo_server_application_ip_echo_server_application_s_axis_rx_metadata_reg_slice rs
       (.AS(AS),
        .Q(m_valid),
        .aclk(aclk),
        .full_reg(rxMetaData_V_V_fifo_n_1),
        .p_12_out(p_12_out),
        .s_axis_rx_metadata_TDATA(s_axis_rx_metadata_TDATA),
        .s_axis_rx_metadata_TREADY(s_axis_rx_metadata_TREADY),
        .s_axis_rx_metadata_TVALID(s_axis_rx_metadata_TVALID),
        .\tmp_V_2_reg_481_reg[15] (rxMetaData_V_V_din));
  echo_server_application_ip_echo_server_application_s_axis_rx_metadata_fifo rxMetaData_V_V_fifo
       (.AS(AS),
        .Q(m_valid),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_reg_ppiten_pp0_it1_reg),
        .ap_reg_ppiten_pp0_it1_reg_0(ap_reg_ppiten_pp0_it1_reg_0),
        .ap_start(ap_start),
        .ea_fsmState_V4_out(ea_fsmState_V4_out),
        .\ea_fsmState_V_reg[0] (\ea_fsmState_V_reg[0] ),
        .full_reg_0(rxMetaData_V_V_fifo_n_1),
        .in(rxMetaData_V_V_din),
        .\index_reg[1]_0 (\index_reg[1] ),
        .out(out),
        .p_12_out(p_12_out));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_rx_metadata_reg_slice" *) 
module echo_server_application_ip_echo_server_application_s_axis_rx_metadata_reg_slice
   (s_axis_rx_metadata_TREADY,
    Q,
    p_12_out,
    \tmp_V_2_reg_481_reg[15] ,
    AS,
    aclk,
    s_axis_rx_metadata_TVALID,
    full_reg,
    s_axis_rx_metadata_TDATA);
  output s_axis_rx_metadata_TREADY;
  output [0:0]Q;
  output p_12_out;
  output [15:0]\tmp_V_2_reg_481_reg[15] ;
  input [0:0]AS;
  input aclk;
  input s_axis_rx_metadata_TVALID;
  input full_reg;
  input [15:0]s_axis_rx_metadata_TDATA;

  wire [0:0]AS;
  wire [0:0]Q;
  wire aclk;
  wire \data_p1[0]_i_1__5_n_0 ;
  wire \data_p1[10]_i_1__4_n_0 ;
  wire \data_p1[11]_i_1__4_n_0 ;
  wire \data_p1[12]_i_1__5_n_0 ;
  wire \data_p1[13]_i_1__4_n_0 ;
  wire \data_p1[14]_i_1__4_n_0 ;
  wire \data_p1[15]_i_2__1_n_0 ;
  wire \data_p1[1]_i_1__4_n_0 ;
  wire \data_p1[2]_i_1__4_n_0 ;
  wire \data_p1[3]_i_1__5_n_0 ;
  wire \data_p1[4]_i_1__4_n_0 ;
  wire \data_p1[5]_i_1__4_n_0 ;
  wire \data_p1[6]_i_1__4_n_0 ;
  wire \data_p1[7]_i_1__5_n_0 ;
  wire \data_p1[8]_i_1__5_n_0 ;
  wire \data_p1[9]_i_1__5_n_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire full_reg;
  wire load_p1;
  wire load_p2;
  wire p_12_out;
  wire [15:0]s_axis_rx_metadata_TDATA;
  wire s_axis_rx_metadata_TREADY;
  wire s_axis_rx_metadata_TVALID;
  wire s_ready_t_i_1__9_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__8_n_0 ;
  wire \state[1]_i_1__7_n_0 ;
  wire [15:0]\tmp_V_2_reg_481_reg[15] ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__5 
       (.I0(s_axis_rx_metadata_TDATA[0]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[10]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[11]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1__5 
       (.I0(s_axis_rx_metadata_TDATA[12]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[13]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[14]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[14] ),
        .O(\data_p1[14]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h08D8)) 
    \data_p1[15]_i_1 
       (.I0(state),
        .I1(s_axis_rx_metadata_TVALID),
        .I2(Q),
        .I3(full_reg),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_2__1 
       (.I0(s_axis_rx_metadata_TDATA[15]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[1]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[2]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__5 
       (.I0(s_axis_rx_metadata_TDATA[3]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[4]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[5]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1__4 
       (.I0(s_axis_rx_metadata_TDATA[6]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__5 
       (.I0(s_axis_rx_metadata_TDATA[7]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__5 
       (.I0(s_axis_rx_metadata_TDATA[8]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__5 
       (.I0(s_axis_rx_metadata_TDATA[9]),
        .I1(state),
        .I2(Q),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__5_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__5_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__5_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_2__1_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [15]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__5_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__4_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__5_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__5_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__5_n_0 ),
        .Q(\tmp_V_2_reg_481_reg[15] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[15]_i_1__1 
       (.I0(s_axis_rx_metadata_TREADY),
        .I1(s_axis_rx_metadata_TVALID),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(load_p2),
        .D(s_axis_rx_metadata_TDATA[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_1__3 
       (.I0(Q),
        .I1(full_reg),
        .O(p_12_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF0C3C)) 
    s_ready_t_i_1__9
       (.I0(s_axis_rx_metadata_TVALID),
        .I1(state),
        .I2(Q),
        .I3(full_reg),
        .I4(s_axis_rx_metadata_TREADY),
        .O(s_ready_t_i_1__9_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__9_n_0),
        .Q(s_axis_rx_metadata_TREADY),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFAFC000)) 
    \state[0]_i_1__8 
       (.I0(full_reg),
        .I1(s_axis_rx_metadata_TREADY),
        .I2(state),
        .I3(s_axis_rx_metadata_TVALID),
        .I4(Q),
        .O(\state[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \state[1]_i_1__7 
       (.I0(Q),
        .I1(full_reg),
        .I2(s_axis_rx_metadata_TVALID),
        .I3(state),
        .O(\state[1]_i_1__7_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__8_n_0 ),
        .Q(Q),
        .R(AS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__7_n_0 ),
        .Q(state),
        .S(AS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_tx_status_fifo" *) 
module echo_server_application_ip_echo_server_application_s_axis_tx_status_fifo
   (full_reg_0,
    SS,
    \index_reg[2]_0 ,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    ap_start,
    Q,
    ap_reg_ppiten_pp0_it1_reg_0,
    \state_reg[0] ,
    empty_reg_0,
    aresetn);
  output full_reg_0;
  output [0:0]SS;
  output \index_reg[2]_0 ;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input ap_start;
  input [0:0]Q;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input \state_reg[0] ;
  input empty_reg_0;
  input aresetn;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire aresetn;
  wire empty_i_1__4_n_0;
  wire empty_i_2__4_n_0;
  wire empty_reg_0;
  wire full_i_1__4_n_0;
  wire full_i_2__4_n_0;
  wire full_reg_0;
  wire \index[0]_i_1__4_n_0 ;
  wire \index[1]_i_1__4_n_0 ;
  wire \index[2]_i_1__4_n_0 ;
  wire \index[3]_i_1__4_n_0 ;
  wire \index[3]_i_2__4_n_0 ;
  wire \index_reg[2]_0 ;
  wire [3:0]index_reg__0;
  wire \state_reg[0] ;

  LUT6 #(
    .INIT(64'hBBBB00B0BBBB0000)) 
    empty_i_1__4
       (.I0(full_reg_0),
        .I1(Q),
        .I2(ap_start),
        .I3(ap_reg_ppiten_pp0_it1_reg),
        .I4(\index_reg[2]_0 ),
        .I5(empty_i_2__4_n_0),
        .O(empty_i_1__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    empty_i_2__4
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[3]),
        .I3(index_reg__0[2]),
        .O(empty_i_2__4_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1__4_n_0),
        .PRE(SS),
        .Q(\index_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFCFFA8AA)) 
    full_i_1__4
       (.I0(full_reg_0),
        .I1(\index_reg[2]_0 ),
        .I2(ap_reg_ppiten_pp0_it1_reg),
        .I3(ap_start),
        .I4(full_i_2__4_n_0),
        .O(full_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    full_i_2__4
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[0]),
        .I4(full_reg_0),
        .I5(Q),
        .O(full_i_2__4_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(SS),
        .D(full_i_1__4_n_0),
        .Q(full_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1__4 
       (.I0(index_reg__0[0]),
        .O(\index[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h55559A55AAAA65AA)) 
    \index[1]_i_1__4 
       (.I0(index_reg__0[0]),
        .I1(full_reg_0),
        .I2(Q),
        .I3(ap_reg_ppiten_pp0_it1_reg_0),
        .I4(\index_reg[2]_0 ),
        .I5(index_reg__0[1]),
        .O(\index[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h04FFFB00FFFB0004)) 
    \index[2]_i_1__4 
       (.I0(\state_reg[0] ),
        .I1(ap_reg_ppiten_pp0_it1_reg_0),
        .I2(\index_reg[2]_0 ),
        .I3(index_reg__0[0]),
        .I4(index_reg__0[2]),
        .I5(index_reg__0[1]),
        .O(\index[2]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h1010EF10)) 
    \index[3]_i_1__4 
       (.I0(\index_reg[2]_0 ),
        .I1(ap_reg_ppiten_pp0_it1_reg),
        .I2(ap_start),
        .I3(Q),
        .I4(full_reg_0),
        .O(\index[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6AAAAAAAAAA9)) 
    \index[3]_i_2__4 
       (.I0(index_reg__0[3]),
        .I1(index_reg__0[2]),
        .I2(index_reg__0[0]),
        .I3(empty_reg_0),
        .I4(\state_reg[0] ),
        .I5(index_reg__0[1]),
        .O(\index[3]_i_2__4_n_0 ));
  FDPE \index_reg[0] 
       (.C(aclk),
        .CE(\index[3]_i_1__4_n_0 ),
        .D(\index[0]_i_1__4_n_0 ),
        .PRE(SS),
        .Q(index_reg__0[0]));
  FDPE \index_reg[1] 
       (.C(aclk),
        .CE(\index[3]_i_1__4_n_0 ),
        .D(\index[1]_i_1__4_n_0 ),
        .PRE(SS),
        .Q(index_reg__0[1]));
  FDPE \index_reg[2] 
       (.C(aclk),
        .CE(\index[3]_i_1__4_n_0 ),
        .D(\index[2]_i_1__4_n_0 ),
        .PRE(SS),
        .Q(index_reg__0[2]));
  FDPE \index_reg[3] 
       (.C(aclk),
        .CE(\index[3]_i_1__4_n_0 ),
        .D(\index[3]_i_2__4_n_0 ),
        .PRE(SS),
        .Q(index_reg__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1__7 
       (.I0(aresetn),
        .O(SS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_tx_status_if" *) 
module echo_server_application_ip_echo_server_application_s_axis_tx_status_if
   (AS,
    s_axis_tx_status_TREADY,
    \index_reg[2] ,
    aclk,
    ap_reg_ppiten_pp0_it1_reg,
    ap_start,
    ap_reg_ppiten_pp0_it1_reg_0,
    empty_reg,
    aresetn,
    s_axis_tx_status_TVALID);
  output [0:0]AS;
  output s_axis_tx_status_TREADY;
  output \index_reg[2] ;
  input aclk;
  input ap_reg_ppiten_pp0_it1_reg;
  input ap_start;
  input ap_reg_ppiten_pp0_it1_reg_0;
  input empty_reg;
  input aresetn;
  input s_axis_tx_status_TVALID;

  wire [0:0]AS;
  wire aclk;
  wire ap_reg_ppiten_pp0_it1_reg;
  wire ap_reg_ppiten_pp0_it1_reg_0;
  wire ap_start;
  wire aresetn;
  wire empty_reg;
  wire \index_reg[2] ;
  wire m_valid;
  wire rs_n_1;
  wire s_axis_tx_status_TREADY;
  wire s_axis_tx_status_TVALID;
  wire txStatus_V_V_fifo_n_0;

  echo_server_application_ip_echo_server_application_s_axis_tx_status_reg_slice rs
       (.Q(m_valid),
        .SS(AS),
        .aclk(aclk),
        .full_reg(txStatus_V_V_fifo_n_0),
        .\index_reg[2] (rs_n_1),
        .s_axis_tx_status_TREADY(s_axis_tx_status_TREADY),
        .s_axis_tx_status_TVALID(s_axis_tx_status_TVALID));
  echo_server_application_ip_echo_server_application_s_axis_tx_status_fifo txStatus_V_V_fifo
       (.Q(m_valid),
        .SS(AS),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_reg_ppiten_pp0_it1_reg),
        .ap_reg_ppiten_pp0_it1_reg_0(ap_reg_ppiten_pp0_it1_reg_0),
        .ap_start(ap_start),
        .aresetn(aresetn),
        .empty_reg_0(empty_reg),
        .full_reg_0(txStatus_V_V_fifo_n_0),
        .\index_reg[2]_0 (\index_reg[2] ),
        .\state_reg[0] (rs_n_1));
endmodule

(* ORIG_REF_NAME = "echo_server_application_s_axis_tx_status_reg_slice" *) 
module echo_server_application_ip_echo_server_application_s_axis_tx_status_reg_slice
   (s_axis_tx_status_TREADY,
    \index_reg[2] ,
    Q,
    SS,
    aclk,
    full_reg,
    s_axis_tx_status_TVALID);
  output s_axis_tx_status_TREADY;
  output \index_reg[2] ;
  output [0:0]Q;
  input [0:0]SS;
  input aclk;
  input full_reg;
  input s_axis_tx_status_TVALID;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire full_reg;
  wire \index_reg[2] ;
  wire s_axis_tx_status_TREADY;
  wire s_axis_tx_status_TVALID;
  wire s_ready_t_i_1__10_n_0;
  wire [1:1]state;
  wire \state[0]_i_1__9_n_0 ;
  wire \state[1]_i_1__8_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \index[3]_i_4__0 
       (.I0(Q),
        .I1(full_reg),
        .O(\index_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF0F30)) 
    s_ready_t_i_1__10
       (.I0(s_axis_tx_status_TVALID),
        .I1(full_reg),
        .I2(Q),
        .I3(state),
        .I4(s_axis_tx_status_TREADY),
        .O(s_ready_t_i_1__10_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__10_n_0),
        .Q(s_axis_tx_status_TREADY),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hEFEFC000)) 
    \state[0]_i_1__9 
       (.I0(full_reg),
        .I1(s_axis_tx_status_TVALID),
        .I2(state),
        .I3(s_axis_tx_status_TREADY),
        .I4(Q),
        .O(\state[0]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \state[1]_i_1__8 
       (.I0(Q),
        .I1(full_reg),
        .I2(s_axis_tx_status_TVALID),
        .I3(state),
        .O(\state[1]_i_1__8_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__9_n_0 ),
        .Q(Q),
        .R(SS));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__8_n_0 ),
        .Q(state),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "echo_server_application_top" *) (* RESET_ACTIVE_LOW = "1" *) (* hls_module = "yes" *) 
module echo_server_application_ip_echo_server_application_top
   (m_axis_close_connection_TVALID,
    m_axis_close_connection_TREADY,
    m_axis_close_connection_TDATA,
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
    aresetn,
    aclk,
    ap_start,
    ap_ready,
    ap_done,
    ap_idle);
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
  input aresetn;
  input aclk;
  input ap_start;
  output ap_ready;
  output ap_done;
  output ap_idle;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_start;
  wire aresetn;
  wire \closeConnection_V_V_fifo/p_12_out ;
  wire dout;
  wire ea_fsmState_V4_out;
  wire echo_server_application_U_n_11;
  wire echo_server_application_U_n_12;
  wire echo_server_application_U_n_14;
  wire echo_server_application_U_n_2;
  wire echo_server_application_U_n_3;
  wire echo_server_application_m_axis_close_connection_if_U_n_0;
  wire echo_server_application_m_axis_listen_port_if_U_n_0;
  wire echo_server_application_m_axis_tx_metadata_if_U_n_0;
  wire echo_server_application_s_axis_listen_port_status_if_U_n_2;
  wire echo_server_application_s_axis_notifications_if_U_n_19;
  wire echo_server_application_s_axis_notifications_if_U_n_20;
  wire echo_server_application_s_axis_notifications_if_U_n_21;
  wire echo_server_application_s_axis_notifications_if_U_n_22;
  wire echo_server_application_s_axis_notifications_if_U_n_23;
  wire echo_server_application_s_axis_notifications_if_U_n_24;
  wire echo_server_application_s_axis_notifications_if_U_n_25;
  wire echo_server_application_s_axis_notifications_if_U_n_26;
  wire echo_server_application_s_axis_notifications_if_U_n_27;
  wire echo_server_application_s_axis_notifications_if_U_n_28;
  wire echo_server_application_s_axis_notifications_if_U_n_29;
  wire echo_server_application_s_axis_notifications_if_U_n_30;
  wire echo_server_application_s_axis_notifications_if_U_n_31;
  wire echo_server_application_s_axis_notifications_if_U_n_32;
  wire echo_server_application_s_axis_notifications_if_U_n_33;
  wire echo_server_application_s_axis_notifications_if_U_n_34;
  wire echo_server_application_s_axis_notifications_if_U_n_35;
  wire echo_server_application_s_axis_open_status_if_U_n_10;
  wire echo_server_application_s_axis_open_status_if_U_n_11;
  wire echo_server_application_s_axis_open_status_if_U_n_12;
  wire echo_server_application_s_axis_open_status_if_U_n_13;
  wire echo_server_application_s_axis_open_status_if_U_n_14;
  wire echo_server_application_s_axis_open_status_if_U_n_15;
  wire echo_server_application_s_axis_open_status_if_U_n_16;
  wire echo_server_application_s_axis_open_status_if_U_n_17;
  wire echo_server_application_s_axis_open_status_if_U_n_18;
  wire echo_server_application_s_axis_open_status_if_U_n_19;
  wire echo_server_application_s_axis_open_status_if_U_n_4;
  wire echo_server_application_s_axis_open_status_if_U_n_5;
  wire echo_server_application_s_axis_open_status_if_U_n_6;
  wire echo_server_application_s_axis_open_status_if_U_n_7;
  wire echo_server_application_s_axis_open_status_if_U_n_8;
  wire echo_server_application_s_axis_open_status_if_U_n_9;
  wire echo_server_application_s_axis_rx_data_if_U_n_10;
  wire echo_server_application_s_axis_rx_data_if_U_n_11;
  wire echo_server_application_s_axis_rx_data_if_U_n_12;
  wire echo_server_application_s_axis_rx_data_if_U_n_13;
  wire echo_server_application_s_axis_rx_data_if_U_n_14;
  wire echo_server_application_s_axis_rx_data_if_U_n_15;
  wire echo_server_application_s_axis_rx_data_if_U_n_16;
  wire echo_server_application_s_axis_rx_data_if_U_n_17;
  wire echo_server_application_s_axis_rx_data_if_U_n_18;
  wire echo_server_application_s_axis_rx_data_if_U_n_19;
  wire echo_server_application_s_axis_rx_data_if_U_n_2;
  wire echo_server_application_s_axis_rx_data_if_U_n_20;
  wire echo_server_application_s_axis_rx_data_if_U_n_21;
  wire echo_server_application_s_axis_rx_data_if_U_n_22;
  wire echo_server_application_s_axis_rx_data_if_U_n_23;
  wire echo_server_application_s_axis_rx_data_if_U_n_24;
  wire echo_server_application_s_axis_rx_data_if_U_n_25;
  wire echo_server_application_s_axis_rx_data_if_U_n_26;
  wire echo_server_application_s_axis_rx_data_if_U_n_27;
  wire echo_server_application_s_axis_rx_data_if_U_n_28;
  wire echo_server_application_s_axis_rx_data_if_U_n_29;
  wire echo_server_application_s_axis_rx_data_if_U_n_30;
  wire echo_server_application_s_axis_rx_data_if_U_n_31;
  wire echo_server_application_s_axis_rx_data_if_U_n_32;
  wire echo_server_application_s_axis_rx_data_if_U_n_33;
  wire echo_server_application_s_axis_rx_data_if_U_n_34;
  wire echo_server_application_s_axis_rx_data_if_U_n_35;
  wire echo_server_application_s_axis_rx_data_if_U_n_36;
  wire echo_server_application_s_axis_rx_data_if_U_n_37;
  wire echo_server_application_s_axis_rx_data_if_U_n_38;
  wire echo_server_application_s_axis_rx_data_if_U_n_39;
  wire echo_server_application_s_axis_rx_data_if_U_n_4;
  wire echo_server_application_s_axis_rx_data_if_U_n_40;
  wire echo_server_application_s_axis_rx_data_if_U_n_41;
  wire echo_server_application_s_axis_rx_data_if_U_n_42;
  wire echo_server_application_s_axis_rx_data_if_U_n_43;
  wire echo_server_application_s_axis_rx_data_if_U_n_44;
  wire echo_server_application_s_axis_rx_data_if_U_n_45;
  wire echo_server_application_s_axis_rx_data_if_U_n_46;
  wire echo_server_application_s_axis_rx_data_if_U_n_47;
  wire echo_server_application_s_axis_rx_data_if_U_n_48;
  wire echo_server_application_s_axis_rx_data_if_U_n_49;
  wire echo_server_application_s_axis_rx_data_if_U_n_5;
  wire echo_server_application_s_axis_rx_data_if_U_n_50;
  wire echo_server_application_s_axis_rx_data_if_U_n_51;
  wire echo_server_application_s_axis_rx_data_if_U_n_52;
  wire echo_server_application_s_axis_rx_data_if_U_n_53;
  wire echo_server_application_s_axis_rx_data_if_U_n_54;
  wire echo_server_application_s_axis_rx_data_if_U_n_55;
  wire echo_server_application_s_axis_rx_data_if_U_n_56;
  wire echo_server_application_s_axis_rx_data_if_U_n_57;
  wire echo_server_application_s_axis_rx_data_if_U_n_58;
  wire echo_server_application_s_axis_rx_data_if_U_n_59;
  wire echo_server_application_s_axis_rx_data_if_U_n_6;
  wire echo_server_application_s_axis_rx_data_if_U_n_60;
  wire echo_server_application_s_axis_rx_data_if_U_n_61;
  wire echo_server_application_s_axis_rx_data_if_U_n_62;
  wire echo_server_application_s_axis_rx_data_if_U_n_63;
  wire echo_server_application_s_axis_rx_data_if_U_n_64;
  wire echo_server_application_s_axis_rx_data_if_U_n_65;
  wire echo_server_application_s_axis_rx_data_if_U_n_66;
  wire echo_server_application_s_axis_rx_data_if_U_n_67;
  wire echo_server_application_s_axis_rx_data_if_U_n_68;
  wire echo_server_application_s_axis_rx_data_if_U_n_69;
  wire echo_server_application_s_axis_rx_data_if_U_n_7;
  wire echo_server_application_s_axis_rx_data_if_U_n_70;
  wire echo_server_application_s_axis_rx_data_if_U_n_71;
  wire echo_server_application_s_axis_rx_data_if_U_n_72;
  wire echo_server_application_s_axis_rx_data_if_U_n_73;
  wire echo_server_application_s_axis_rx_data_if_U_n_74;
  wire echo_server_application_s_axis_rx_data_if_U_n_75;
  wire echo_server_application_s_axis_rx_data_if_U_n_8;
  wire echo_server_application_s_axis_rx_data_if_U_n_9;
  wire echo_server_application_s_axis_rx_metadata_if_U_n_0;
  wire echo_server_application_s_axis_tx_status_if_U_n_2;
  wire \listenPort_V_V_fifo/p_12_out ;
  wire [15:0]m_axis_close_connection_TDATA;
  wire m_axis_close_connection_TREADY;
  wire m_axis_close_connection_TVALID;
  wire [12:0]\^m_axis_listen_port_TDATA ;
  wire m_axis_listen_port_TREADY;
  wire m_axis_listen_port_TVALID;
  wire m_axis_open_connection_TREADY;
  wire m_axis_open_connection_TVALID;
  wire [31:0]m_axis_read_package_TDATA;
  wire m_axis_read_package_TREADY;
  wire m_axis_read_package_TVALID;
  wire [63:0]m_axis_tx_data_TDATA;
  wire [7:0]m_axis_tx_data_TKEEP;
  wire [0:0]m_axis_tx_data_TLAST;
  wire m_axis_tx_data_TREADY;
  wire m_axis_tx_data_TVALID;
  wire [15:0]m_axis_tx_metadata_TDATA;
  wire m_axis_tx_metadata_TREADY;
  wire m_axis_tx_metadata_TVALID;
  wire p_0_in;
  wire \rs/load_p2 ;
  wire \rs/load_p2_0 ;
  wire [7:0]s_axis_listen_port_status_TDATA;
  wire s_axis_listen_port_status_TREADY;
  wire s_axis_listen_port_status_TVALID;
  wire [87:0]s_axis_notifications_TDATA;
  wire s_axis_notifications_TREADY;
  wire s_axis_notifications_TVALID;
  wire [23:0]s_axis_open_status_TDATA;
  wire s_axis_open_status_TREADY;
  wire s_axis_open_status_TVALID;
  wire [63:0]s_axis_rx_data_TDATA;
  wire [7:0]s_axis_rx_data_TKEEP;
  wire [0:0]s_axis_rx_data_TLAST;
  wire s_axis_rx_data_TREADY;
  wire s_axis_rx_data_TVALID;
  wire [15:0]s_axis_rx_metadata_TDATA;
  wire s_axis_rx_metadata_TREADY;
  wire s_axis_rx_metadata_TVALID;
  wire s_axis_tx_status_TREADY;
  wire s_axis_tx_status_TVALID;
  wire [15:0]sel0;
  wire [15:0]sig_echo_server_application_closeConnection_V_V_din;
  wire sig_echo_server_application_listenPortStatus_V_dout;
  wire sig_echo_server_application_listenPortStatus_V_read;
  wire sig_echo_server_application_notifications_V_empty_n;
  wire sig_echo_server_application_openConStatus_V_empty_n;
  wire sig_echo_server_application_openConnection_V_full_n;
  wire sig_echo_server_application_readRequest_V_full_n;
  wire [72:72]sig_echo_server_application_rxData_V_dout;
  wire sig_echo_server_application_rxData_V_empty_n;
  wire [15:0]sig_echo_server_application_rxMetaData_V_V_dout;
  wire sig_echo_server_application_txData_V_full_n;
  wire [15:0]sig_echo_server_application_txMetaData_V_V_din;
  wire [31:0]tmp_327_reg_468;
  wire tmp_327_reg_4680;
  wire [72:0]tmp_432_reg_490;
  wire tmp_7_reg_4440;
  wire tmp_9_reg_464;
  wire tmp_reg_435;
  wire \txMetaData_V_V_fifo/p_12_out ;

  assign m_axis_listen_port_TDATA[15] = \<const0> ;
  assign m_axis_listen_port_TDATA[14] = \<const0> ;
  assign m_axis_listen_port_TDATA[13] = \<const0> ;
  assign m_axis_listen_port_TDATA[12] = \^m_axis_listen_port_TDATA [12];
  assign m_axis_listen_port_TDATA[11] = \<const0> ;
  assign m_axis_listen_port_TDATA[10] = \<const0> ;
  assign m_axis_listen_port_TDATA[9:7] = \^m_axis_listen_port_TDATA [9:7];
  assign m_axis_listen_port_TDATA[6] = \<const0> ;
  assign m_axis_listen_port_TDATA[5] = \<const0> ;
  assign m_axis_listen_port_TDATA[4] = \<const0> ;
  assign m_axis_listen_port_TDATA[3] = \^m_axis_listen_port_TDATA [3];
  assign m_axis_listen_port_TDATA[2] = \<const0> ;
  assign m_axis_listen_port_TDATA[1] = \<const0> ;
  assign m_axis_listen_port_TDATA[0] = \^m_axis_listen_port_TDATA [0];
  assign m_axis_open_connection_TDATA[47] = \<const0> ;
  assign m_axis_open_connection_TDATA[46] = \<const0> ;
  assign m_axis_open_connection_TDATA[45] = \<const1> ;
  assign m_axis_open_connection_TDATA[44] = \<const1> ;
  assign m_axis_open_connection_TDATA[43] = \<const0> ;
  assign m_axis_open_connection_TDATA[42] = \<const1> ;
  assign m_axis_open_connection_TDATA[41] = \<const0> ;
  assign m_axis_open_connection_TDATA[40] = \<const0> ;
  assign m_axis_open_connection_TDATA[39] = \<const0> ;
  assign m_axis_open_connection_TDATA[38] = \<const0> ;
  assign m_axis_open_connection_TDATA[37] = \<const0> ;
  assign m_axis_open_connection_TDATA[36] = \<const1> ;
  assign m_axis_open_connection_TDATA[35] = \<const0> ;
  assign m_axis_open_connection_TDATA[34] = \<const0> ;
  assign m_axis_open_connection_TDATA[33] = \<const1> ;
  assign m_axis_open_connection_TDATA[32] = \<const0> ;
  assign m_axis_open_connection_TDATA[31] = \<const0> ;
  assign m_axis_open_connection_TDATA[30] = \<const0> ;
  assign m_axis_open_connection_TDATA[29] = \<const0> ;
  assign m_axis_open_connection_TDATA[28] = \<const0> ;
  assign m_axis_open_connection_TDATA[27] = \<const1> ;
  assign m_axis_open_connection_TDATA[26] = \<const0> ;
  assign m_axis_open_connection_TDATA[25] = \<const1> ;
  assign m_axis_open_connection_TDATA[24] = \<const0> ;
  assign m_axis_open_connection_TDATA[23] = \<const0> ;
  assign m_axis_open_connection_TDATA[22] = \<const0> ;
  assign m_axis_open_connection_TDATA[21] = \<const0> ;
  assign m_axis_open_connection_TDATA[20] = \<const0> ;
  assign m_axis_open_connection_TDATA[19] = \<const0> ;
  assign m_axis_open_connection_TDATA[18] = \<const0> ;
  assign m_axis_open_connection_TDATA[17] = \<const0> ;
  assign m_axis_open_connection_TDATA[16] = \<const1> ;
  assign m_axis_open_connection_TDATA[15] = \<const0> ;
  assign m_axis_open_connection_TDATA[14] = \<const0> ;
  assign m_axis_open_connection_TDATA[13] = \<const0> ;
  assign m_axis_open_connection_TDATA[12] = \<const0> ;
  assign m_axis_open_connection_TDATA[11] = \<const0> ;
  assign m_axis_open_connection_TDATA[10] = \<const0> ;
  assign m_axis_open_connection_TDATA[9] = \<const0> ;
  assign m_axis_open_connection_TDATA[8] = \<const1> ;
  assign m_axis_open_connection_TDATA[7] = \<const0> ;
  assign m_axis_open_connection_TDATA[6] = \<const0> ;
  assign m_axis_open_connection_TDATA[5] = \<const0> ;
  assign m_axis_open_connection_TDATA[4] = \<const0> ;
  assign m_axis_open_connection_TDATA[3] = \<const0> ;
  assign m_axis_open_connection_TDATA[2] = \<const0> ;
  assign m_axis_open_connection_TDATA[1] = \<const0> ;
  assign m_axis_open_connection_TDATA[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  echo_server_application_ip_echo_server_application echo_server_application_U
       (.AS(dout),
        .E(tmp_7_reg_4440),
        .Q(sig_echo_server_application_openConStatus_V_empty_n),
        .aclk(aclk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_start(ap_start),
        .\data_p1_reg[16] ({p_0_in,echo_server_application_s_axis_open_status_if_U_n_4,echo_server_application_s_axis_open_status_if_U_n_5,echo_server_application_s_axis_open_status_if_U_n_6,echo_server_application_s_axis_open_status_if_U_n_7,echo_server_application_s_axis_open_status_if_U_n_8,echo_server_application_s_axis_open_status_if_U_n_9,echo_server_application_s_axis_open_status_if_U_n_10,echo_server_application_s_axis_open_status_if_U_n_11,echo_server_application_s_axis_open_status_if_U_n_12,echo_server_application_s_axis_open_status_if_U_n_13,echo_server_application_s_axis_open_status_if_U_n_14,echo_server_application_s_axis_open_status_if_U_n_15,echo_server_application_s_axis_open_status_if_U_n_16,echo_server_application_s_axis_open_status_if_U_n_17,echo_server_application_s_axis_open_status_if_U_n_18,echo_server_application_s_axis_open_status_if_U_n_19}),
        .\data_p1_reg[31] ({sel0,echo_server_application_s_axis_notifications_if_U_n_19,echo_server_application_s_axis_notifications_if_U_n_20,echo_server_application_s_axis_notifications_if_U_n_21,echo_server_application_s_axis_notifications_if_U_n_22,echo_server_application_s_axis_notifications_if_U_n_23,echo_server_application_s_axis_notifications_if_U_n_24,echo_server_application_s_axis_notifications_if_U_n_25,echo_server_application_s_axis_notifications_if_U_n_26,echo_server_application_s_axis_notifications_if_U_n_27,echo_server_application_s_axis_notifications_if_U_n_28,echo_server_application_s_axis_notifications_if_U_n_29,echo_server_application_s_axis_notifications_if_U_n_30,echo_server_application_s_axis_notifications_if_U_n_31,echo_server_application_s_axis_notifications_if_U_n_32,echo_server_application_s_axis_notifications_if_U_n_33,echo_server_application_s_axis_notifications_if_U_n_34}),
        .\data_p1_reg[72] (echo_server_application_s_axis_rx_data_if_U_n_2),
        .\data_p1_reg[72]_0 ({sig_echo_server_application_rxData_V_dout,echo_server_application_s_axis_rx_data_if_U_n_4,echo_server_application_s_axis_rx_data_if_U_n_5,echo_server_application_s_axis_rx_data_if_U_n_6,echo_server_application_s_axis_rx_data_if_U_n_7,echo_server_application_s_axis_rx_data_if_U_n_8,echo_server_application_s_axis_rx_data_if_U_n_9,echo_server_application_s_axis_rx_data_if_U_n_10,echo_server_application_s_axis_rx_data_if_U_n_11,echo_server_application_s_axis_rx_data_if_U_n_12,echo_server_application_s_axis_rx_data_if_U_n_13,echo_server_application_s_axis_rx_data_if_U_n_14,echo_server_application_s_axis_rx_data_if_U_n_15,echo_server_application_s_axis_rx_data_if_U_n_16,echo_server_application_s_axis_rx_data_if_U_n_17,echo_server_application_s_axis_rx_data_if_U_n_18,echo_server_application_s_axis_rx_data_if_U_n_19,echo_server_application_s_axis_rx_data_if_U_n_20,echo_server_application_s_axis_rx_data_if_U_n_21,echo_server_application_s_axis_rx_data_if_U_n_22,echo_server_application_s_axis_rx_data_if_U_n_23,echo_server_application_s_axis_rx_data_if_U_n_24,echo_server_application_s_axis_rx_data_if_U_n_25,echo_server_application_s_axis_rx_data_if_U_n_26,echo_server_application_s_axis_rx_data_if_U_n_27,echo_server_application_s_axis_rx_data_if_U_n_28,echo_server_application_s_axis_rx_data_if_U_n_29,echo_server_application_s_axis_rx_data_if_U_n_30,echo_server_application_s_axis_rx_data_if_U_n_31,echo_server_application_s_axis_rx_data_if_U_n_32,echo_server_application_s_axis_rx_data_if_U_n_33,echo_server_application_s_axis_rx_data_if_U_n_34,echo_server_application_s_axis_rx_data_if_U_n_35,echo_server_application_s_axis_rx_data_if_U_n_36,echo_server_application_s_axis_rx_data_if_U_n_37,echo_server_application_s_axis_rx_data_if_U_n_38,echo_server_application_s_axis_rx_data_if_U_n_39,echo_server_application_s_axis_rx_data_if_U_n_40,echo_server_application_s_axis_rx_data_if_U_n_41,echo_server_application_s_axis_rx_data_if_U_n_42,echo_server_application_s_axis_rx_data_if_U_n_43,echo_server_application_s_axis_rx_data_if_U_n_44,echo_server_application_s_axis_rx_data_if_U_n_45,echo_server_application_s_axis_rx_data_if_U_n_46,echo_server_application_s_axis_rx_data_if_U_n_47,echo_server_application_s_axis_rx_data_if_U_n_48,echo_server_application_s_axis_rx_data_if_U_n_49,echo_server_application_s_axis_rx_data_if_U_n_50,echo_server_application_s_axis_rx_data_if_U_n_51,echo_server_application_s_axis_rx_data_if_U_n_52,echo_server_application_s_axis_rx_data_if_U_n_53,echo_server_application_s_axis_rx_data_if_U_n_54,echo_server_application_s_axis_rx_data_if_U_n_55,echo_server_application_s_axis_rx_data_if_U_n_56,echo_server_application_s_axis_rx_data_if_U_n_57,echo_server_application_s_axis_rx_data_if_U_n_58,echo_server_application_s_axis_rx_data_if_U_n_59,echo_server_application_s_axis_rx_data_if_U_n_60,echo_server_application_s_axis_rx_data_if_U_n_61,echo_server_application_s_axis_rx_data_if_U_n_62,echo_server_application_s_axis_rx_data_if_U_n_63,echo_server_application_s_axis_rx_data_if_U_n_64,echo_server_application_s_axis_rx_data_if_U_n_65,echo_server_application_s_axis_rx_data_if_U_n_66,echo_server_application_s_axis_rx_data_if_U_n_67,echo_server_application_s_axis_rx_data_if_U_n_68,echo_server_application_s_axis_rx_data_if_U_n_69,echo_server_application_s_axis_rx_data_if_U_n_70,echo_server_application_s_axis_rx_data_if_U_n_71,echo_server_application_s_axis_rx_data_if_U_n_72,echo_server_application_s_axis_rx_data_if_U_n_73,echo_server_application_s_axis_rx_data_if_U_n_74,echo_server_application_s_axis_rx_data_if_U_n_75}),
        .\data_p2_reg[15] (sig_echo_server_application_closeConnection_V_V_din),
        .\data_p2_reg[15]_0 (sig_echo_server_application_txMetaData_V_V_din),
        .\data_p2_reg[31] (tmp_327_reg_468),
        .\data_p2_reg[72] (tmp_432_reg_490),
        .ea_fsmState_V4_out(ea_fsmState_V4_out),
        .\ea_fsmState_V_load_reg_473_reg[0]_0 (echo_server_application_U_n_2),
        .empty_reg(echo_server_application_s_axis_rx_metadata_if_U_n_0),
        .empty_reg_0(echo_server_application_s_axis_listen_port_status_if_U_n_2),
        .empty_reg_1(echo_server_application_s_axis_tx_status_if_U_n_2),
        .full_reg(echo_server_application_m_axis_tx_metadata_if_U_n_0),
        .full_reg_0(echo_server_application_m_axis_listen_port_if_U_n_0),
        .full_reg_1(echo_server_application_m_axis_close_connection_if_U_n_0),
        .\index_reg[3] (echo_server_application_U_n_14),
        .load_p2(\rs/load_p2_0 ),
        .load_p2_1(\rs/load_p2 ),
        .out(sig_echo_server_application_rxMetaData_V_V_dout),
        .p_12_out(\closeConnection_V_V_fifo/p_12_out ),
        .p_12_out_0(\listenPort_V_V_fifo/p_12_out ),
        .p_12_out_2(\txMetaData_V_V_fifo/p_12_out ),
        .sig_echo_server_application_listenPortStatus_V_dout(sig_echo_server_application_listenPortStatus_V_dout),
        .sig_echo_server_application_listenPortStatus_V_read(sig_echo_server_application_listenPortStatus_V_read),
        .sig_echo_server_application_openConnection_V_full_n(sig_echo_server_application_openConnection_V_full_n),
        .sig_echo_server_application_readRequest_V_full_n(sig_echo_server_application_readRequest_V_full_n),
        .sig_echo_server_application_txData_V_full_n(sig_echo_server_application_txData_V_full_n),
        .\state_reg[0] (echo_server_application_U_n_11),
        .\state_reg[0]_0 (sig_echo_server_application_notifications_V_empty_n),
        .\state_reg[0]_1 (echo_server_application_s_axis_notifications_if_U_n_35),
        .\state_reg[0]_2 (sig_echo_server_application_rxData_V_empty_n),
        .\state_reg[0]_3 (tmp_327_reg_4680),
        .\tmp_4_reg_477_reg[0]_0 (echo_server_application_U_n_12),
        .tmp_9_reg_464(tmp_9_reg_464),
        .tmp_reg_435(tmp_reg_435),
        .\waitPortStatus_reg[0]_0 (echo_server_application_U_n_3));
  echo_server_application_ip_echo_server_application_m_axis_close_connection_if echo_server_application_m_axis_close_connection_if_U
       (.AS(dout),
        .Q(m_axis_close_connection_TVALID),
        .aclk(aclk),
        .full_reg(echo_server_application_m_axis_close_connection_if_U_n_0),
        .in(sig_echo_server_application_closeConnection_V_V_din),
        .m_axis_close_connection_TDATA(m_axis_close_connection_TDATA),
        .m_axis_close_connection_TREADY(m_axis_close_connection_TREADY),
        .p_12_out(\closeConnection_V_V_fifo/p_12_out ));
  echo_server_application_ip_echo_server_application_m_axis_listen_port_if echo_server_application_m_axis_listen_port_if_U
       (.AS(dout),
        .Q(m_axis_listen_port_TVALID),
        .aclk(aclk),
        .full_reg(echo_server_application_m_axis_listen_port_if_U_n_0),
        .m_axis_listen_port_TDATA({\^m_axis_listen_port_TDATA [12],\^m_axis_listen_port_TDATA [9:7],\^m_axis_listen_port_TDATA [3],\^m_axis_listen_port_TDATA [0]}),
        .m_axis_listen_port_TREADY(m_axis_listen_port_TREADY),
        .p_12_out(\listenPort_V_V_fifo/p_12_out ));
  echo_server_application_ip_echo_server_application_m_axis_open_connection_if echo_server_application_m_axis_open_connection_if_U
       (.AS(dout),
        .Q(m_axis_open_connection_TVALID),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(ap_done),
        .m_axis_open_connection_TREADY(m_axis_open_connection_TREADY),
        .sig_echo_server_application_openConnection_V_full_n(sig_echo_server_application_openConnection_V_full_n),
        .tmp_reg_435(tmp_reg_435));
  echo_server_application_ip_echo_server_application_m_axis_read_package_if echo_server_application_m_axis_read_package_if_U
       (.AS(dout),
        .D(tmp_327_reg_468),
        .Q(m_axis_read_package_TVALID),
        .aclk(aclk),
        .load_p2(\rs/load_p2_0 ),
        .m_axis_read_package_TDATA(m_axis_read_package_TDATA),
        .m_axis_read_package_TREADY(m_axis_read_package_TREADY),
        .sig_echo_server_application_readRequest_V_full_n(sig_echo_server_application_readRequest_V_full_n));
  echo_server_application_ip_echo_server_application_m_axis_tx_data_if echo_server_application_m_axis_tx_data_if_U
       (.AS(dout),
        .D(tmp_432_reg_490),
        .Q(m_axis_tx_data_TVALID),
        .aclk(aclk),
        .load_p2(\rs/load_p2 ),
        .\m_axis_tx_data_TLAST[0] ({m_axis_tx_data_TLAST,m_axis_tx_data_TKEEP,m_axis_tx_data_TDATA}),
        .m_axis_tx_data_TREADY(m_axis_tx_data_TREADY),
        .sig_echo_server_application_txData_V_full_n(sig_echo_server_application_txData_V_full_n));
  echo_server_application_ip_echo_server_application_m_axis_tx_metadata_if echo_server_application_m_axis_tx_metadata_if_U
       (.AS(dout),
        .Q(m_axis_tx_metadata_TVALID),
        .aclk(aclk),
        .full_reg(echo_server_application_m_axis_tx_metadata_if_U_n_0),
        .in(sig_echo_server_application_txMetaData_V_V_din),
        .m_axis_tx_metadata_TDATA(m_axis_tx_metadata_TDATA),
        .m_axis_tx_metadata_TREADY(m_axis_tx_metadata_TREADY),
        .p_12_out(\txMetaData_V_V_fifo/p_12_out ));
  echo_server_application_ip_echo_server_application_s_axis_listen_port_status_if echo_server_application_s_axis_listen_port_status_if_U
       (.AS(dout),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(echo_server_application_U_n_12),
        .ap_reg_ppiten_pp0_it1_reg_0(ap_ready),
        .ap_start(ap_start),
        .\index_reg[1] (echo_server_application_s_axis_listen_port_status_if_U_n_2),
        .s_axis_listen_port_status_TDATA(s_axis_listen_port_status_TDATA[0]),
        .s_axis_listen_port_status_TREADY(s_axis_listen_port_status_TREADY),
        .s_axis_listen_port_status_TVALID(s_axis_listen_port_status_TVALID),
        .sig_echo_server_application_listenPortStatus_V_dout(sig_echo_server_application_listenPortStatus_V_dout),
        .sig_echo_server_application_listenPortStatus_V_read(sig_echo_server_application_listenPortStatus_V_read),
        .\waitPortStatus_reg[0] (echo_server_application_U_n_3));
  echo_server_application_ip_echo_server_application_s_axis_notifications_if echo_server_application_s_axis_notifications_if_U
       (.AS(dout),
        .Q(sig_echo_server_application_notifications_V_empty_n),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(echo_server_application_U_n_12),
        .ap_start(ap_start),
        .s_axis_notifications_TDATA(s_axis_notifications_TDATA[31:0]),
        .s_axis_notifications_TREADY(s_axis_notifications_TREADY),
        .s_axis_notifications_TVALID(s_axis_notifications_TVALID),
        .\tmp_327_reg_468_reg[31] (tmp_327_reg_4680),
        .\tmp_327_reg_468_reg[31]_0 ({sel0,echo_server_application_s_axis_notifications_if_U_n_19,echo_server_application_s_axis_notifications_if_U_n_20,echo_server_application_s_axis_notifications_if_U_n_21,echo_server_application_s_axis_notifications_if_U_n_22,echo_server_application_s_axis_notifications_if_U_n_23,echo_server_application_s_axis_notifications_if_U_n_24,echo_server_application_s_axis_notifications_if_U_n_25,echo_server_application_s_axis_notifications_if_U_n_26,echo_server_application_s_axis_notifications_if_U_n_27,echo_server_application_s_axis_notifications_if_U_n_28,echo_server_application_s_axis_notifications_if_U_n_29,echo_server_application_s_axis_notifications_if_U_n_30,echo_server_application_s_axis_notifications_if_U_n_31,echo_server_application_s_axis_notifications_if_U_n_32,echo_server_application_s_axis_notifications_if_U_n_33,echo_server_application_s_axis_notifications_if_U_n_34}),
        .tmp_9_reg_464(tmp_9_reg_464),
        .\tmp_9_reg_464_reg[0] (echo_server_application_s_axis_notifications_if_U_n_35));
  echo_server_application_ip_echo_server_application_s_axis_open_status_if echo_server_application_s_axis_open_status_if_U
       (.AS(dout),
        .E(tmp_7_reg_4440),
        .Q(sig_echo_server_application_openConStatus_V_empty_n),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(echo_server_application_U_n_12),
        .ap_start(ap_start),
        .s_axis_open_status_TDATA(s_axis_open_status_TDATA[16:0]),
        .s_axis_open_status_TREADY(s_axis_open_status_TREADY),
        .s_axis_open_status_TVALID(s_axis_open_status_TVALID),
        .\tmp_7_reg_444_reg[0] ({p_0_in,echo_server_application_s_axis_open_status_if_U_n_4,echo_server_application_s_axis_open_status_if_U_n_5,echo_server_application_s_axis_open_status_if_U_n_6,echo_server_application_s_axis_open_status_if_U_n_7,echo_server_application_s_axis_open_status_if_U_n_8,echo_server_application_s_axis_open_status_if_U_n_9,echo_server_application_s_axis_open_status_if_U_n_10,echo_server_application_s_axis_open_status_if_U_n_11,echo_server_application_s_axis_open_status_if_U_n_12,echo_server_application_s_axis_open_status_if_U_n_13,echo_server_application_s_axis_open_status_if_U_n_14,echo_server_application_s_axis_open_status_if_U_n_15,echo_server_application_s_axis_open_status_if_U_n_16,echo_server_application_s_axis_open_status_if_U_n_17,echo_server_application_s_axis_open_status_if_U_n_18,echo_server_application_s_axis_open_status_if_U_n_19}));
  echo_server_application_ip_echo_server_application_s_axis_rx_data_if echo_server_application_s_axis_rx_data_if_U
       (.AS(dout),
        .D({s_axis_rx_data_TLAST,s_axis_rx_data_TKEEP,s_axis_rx_data_TDATA}),
        .Q(sig_echo_server_application_rxData_V_empty_n),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(echo_server_application_U_n_12),
        .ap_reg_ppiten_pp0_it1_reg_0(echo_server_application_U_n_11),
        .ap_start(ap_start),
        .\ea_fsmState_V_reg[0] (echo_server_application_s_axis_rx_data_if_U_n_2),
        .\ea_fsmState_V_reg[0]_0 (echo_server_application_U_n_2),
        .empty_reg(echo_server_application_s_axis_rx_metadata_if_U_n_0),
        .s_axis_rx_data_TREADY(s_axis_rx_data_TREADY),
        .s_axis_rx_data_TVALID(s_axis_rx_data_TVALID),
        .\tmp_432_reg_490_reg[72] ({sig_echo_server_application_rxData_V_dout,echo_server_application_s_axis_rx_data_if_U_n_4,echo_server_application_s_axis_rx_data_if_U_n_5,echo_server_application_s_axis_rx_data_if_U_n_6,echo_server_application_s_axis_rx_data_if_U_n_7,echo_server_application_s_axis_rx_data_if_U_n_8,echo_server_application_s_axis_rx_data_if_U_n_9,echo_server_application_s_axis_rx_data_if_U_n_10,echo_server_application_s_axis_rx_data_if_U_n_11,echo_server_application_s_axis_rx_data_if_U_n_12,echo_server_application_s_axis_rx_data_if_U_n_13,echo_server_application_s_axis_rx_data_if_U_n_14,echo_server_application_s_axis_rx_data_if_U_n_15,echo_server_application_s_axis_rx_data_if_U_n_16,echo_server_application_s_axis_rx_data_if_U_n_17,echo_server_application_s_axis_rx_data_if_U_n_18,echo_server_application_s_axis_rx_data_if_U_n_19,echo_server_application_s_axis_rx_data_if_U_n_20,echo_server_application_s_axis_rx_data_if_U_n_21,echo_server_application_s_axis_rx_data_if_U_n_22,echo_server_application_s_axis_rx_data_if_U_n_23,echo_server_application_s_axis_rx_data_if_U_n_24,echo_server_application_s_axis_rx_data_if_U_n_25,echo_server_application_s_axis_rx_data_if_U_n_26,echo_server_application_s_axis_rx_data_if_U_n_27,echo_server_application_s_axis_rx_data_if_U_n_28,echo_server_application_s_axis_rx_data_if_U_n_29,echo_server_application_s_axis_rx_data_if_U_n_30,echo_server_application_s_axis_rx_data_if_U_n_31,echo_server_application_s_axis_rx_data_if_U_n_32,echo_server_application_s_axis_rx_data_if_U_n_33,echo_server_application_s_axis_rx_data_if_U_n_34,echo_server_application_s_axis_rx_data_if_U_n_35,echo_server_application_s_axis_rx_data_if_U_n_36,echo_server_application_s_axis_rx_data_if_U_n_37,echo_server_application_s_axis_rx_data_if_U_n_38,echo_server_application_s_axis_rx_data_if_U_n_39,echo_server_application_s_axis_rx_data_if_U_n_40,echo_server_application_s_axis_rx_data_if_U_n_41,echo_server_application_s_axis_rx_data_if_U_n_42,echo_server_application_s_axis_rx_data_if_U_n_43,echo_server_application_s_axis_rx_data_if_U_n_44,echo_server_application_s_axis_rx_data_if_U_n_45,echo_server_application_s_axis_rx_data_if_U_n_46,echo_server_application_s_axis_rx_data_if_U_n_47,echo_server_application_s_axis_rx_data_if_U_n_48,echo_server_application_s_axis_rx_data_if_U_n_49,echo_server_application_s_axis_rx_data_if_U_n_50,echo_server_application_s_axis_rx_data_if_U_n_51,echo_server_application_s_axis_rx_data_if_U_n_52,echo_server_application_s_axis_rx_data_if_U_n_53,echo_server_application_s_axis_rx_data_if_U_n_54,echo_server_application_s_axis_rx_data_if_U_n_55,echo_server_application_s_axis_rx_data_if_U_n_56,echo_server_application_s_axis_rx_data_if_U_n_57,echo_server_application_s_axis_rx_data_if_U_n_58,echo_server_application_s_axis_rx_data_if_U_n_59,echo_server_application_s_axis_rx_data_if_U_n_60,echo_server_application_s_axis_rx_data_if_U_n_61,echo_server_application_s_axis_rx_data_if_U_n_62,echo_server_application_s_axis_rx_data_if_U_n_63,echo_server_application_s_axis_rx_data_if_U_n_64,echo_server_application_s_axis_rx_data_if_U_n_65,echo_server_application_s_axis_rx_data_if_U_n_66,echo_server_application_s_axis_rx_data_if_U_n_67,echo_server_application_s_axis_rx_data_if_U_n_68,echo_server_application_s_axis_rx_data_if_U_n_69,echo_server_application_s_axis_rx_data_if_U_n_70,echo_server_application_s_axis_rx_data_if_U_n_71,echo_server_application_s_axis_rx_data_if_U_n_72,echo_server_application_s_axis_rx_data_if_U_n_73,echo_server_application_s_axis_rx_data_if_U_n_74,echo_server_application_s_axis_rx_data_if_U_n_75}));
  echo_server_application_ip_echo_server_application_s_axis_rx_metadata_if echo_server_application_s_axis_rx_metadata_if_U
       (.AS(dout),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(echo_server_application_U_n_12),
        .ap_reg_ppiten_pp0_it1_reg_0(ap_ready),
        .ap_start(ap_start),
        .ea_fsmState_V4_out(ea_fsmState_V4_out),
        .\ea_fsmState_V_reg[0] (echo_server_application_U_n_2),
        .\index_reg[1] (echo_server_application_s_axis_rx_metadata_if_U_n_0),
        .out(sig_echo_server_application_rxMetaData_V_V_dout),
        .s_axis_rx_metadata_TDATA(s_axis_rx_metadata_TDATA),
        .s_axis_rx_metadata_TREADY(s_axis_rx_metadata_TREADY),
        .s_axis_rx_metadata_TVALID(s_axis_rx_metadata_TVALID));
  echo_server_application_ip_echo_server_application_s_axis_tx_status_if echo_server_application_s_axis_tx_status_if_U
       (.AS(dout),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it1_reg(echo_server_application_U_n_12),
        .ap_reg_ppiten_pp0_it1_reg_0(ap_ready),
        .ap_start(ap_start),
        .aresetn(aresetn),
        .empty_reg(echo_server_application_U_n_14),
        .\index_reg[2] (echo_server_application_s_axis_tx_status_if_U_n_2),
        .s_axis_tx_status_TREADY(s_axis_tx_status_TREADY),
        .s_axis_tx_status_TVALID(s_axis_tx_status_TVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
