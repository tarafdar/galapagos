-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 23 14:58:37 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/8v3/repo/hls/tcp_test/tcp_ip/scripts/build/proj2017/tcp_ip.srcs/sources_1/ip/echo_server_application_ip/echo_server_application_ip_stub.vhdl
-- Design      : echo_server_application_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity echo_server_application_ip is
  Port ( 
    m_axis_close_connection_TVALID : out STD_LOGIC;
    m_axis_close_connection_TREADY : in STD_LOGIC;
    m_axis_close_connection_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_listen_port_TVALID : out STD_LOGIC;
    m_axis_listen_port_TREADY : in STD_LOGIC;
    m_axis_listen_port_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_open_connection_TVALID : out STD_LOGIC;
    m_axis_open_connection_TREADY : in STD_LOGIC;
    m_axis_open_connection_TDATA : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_read_package_TVALID : out STD_LOGIC;
    m_axis_read_package_TREADY : in STD_LOGIC;
    m_axis_read_package_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tx_data_TVALID : out STD_LOGIC;
    m_axis_tx_data_TREADY : in STD_LOGIC;
    m_axis_tx_data_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tx_data_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tx_data_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_metadata_TVALID : out STD_LOGIC;
    m_axis_tx_metadata_TREADY : in STD_LOGIC;
    m_axis_tx_metadata_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_listen_port_status_TVALID : in STD_LOGIC;
    s_axis_listen_port_status_TREADY : out STD_LOGIC;
    s_axis_listen_port_status_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_notifications_TVALID : in STD_LOGIC;
    s_axis_notifications_TREADY : out STD_LOGIC;
    s_axis_notifications_TDATA : in STD_LOGIC_VECTOR ( 87 downto 0 );
    s_axis_open_status_TVALID : in STD_LOGIC;
    s_axis_open_status_TREADY : out STD_LOGIC;
    s_axis_open_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_rx_data_TVALID : in STD_LOGIC;
    s_axis_rx_data_TREADY : out STD_LOGIC;
    s_axis_rx_data_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_rx_data_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_data_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_rx_metadata_TVALID : in STD_LOGIC;
    s_axis_rx_metadata_TREADY : out STD_LOGIC;
    s_axis_rx_metadata_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tx_status_TVALID : in STD_LOGIC;
    s_axis_tx_status_TREADY : out STD_LOGIC;
    s_axis_tx_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_start : in STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end echo_server_application_ip;

architecture stub of echo_server_application_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_axis_close_connection_TVALID,m_axis_close_connection_TREADY,m_axis_close_connection_TDATA[15:0],m_axis_listen_port_TVALID,m_axis_listen_port_TREADY,m_axis_listen_port_TDATA[15:0],m_axis_open_connection_TVALID,m_axis_open_connection_TREADY,m_axis_open_connection_TDATA[47:0],m_axis_read_package_TVALID,m_axis_read_package_TREADY,m_axis_read_package_TDATA[31:0],m_axis_tx_data_TVALID,m_axis_tx_data_TREADY,m_axis_tx_data_TDATA[63:0],m_axis_tx_data_TKEEP[7:0],m_axis_tx_data_TLAST[0:0],m_axis_tx_metadata_TVALID,m_axis_tx_metadata_TREADY,m_axis_tx_metadata_TDATA[15:0],s_axis_listen_port_status_TVALID,s_axis_listen_port_status_TREADY,s_axis_listen_port_status_TDATA[7:0],s_axis_notifications_TVALID,s_axis_notifications_TREADY,s_axis_notifications_TDATA[87:0],s_axis_open_status_TVALID,s_axis_open_status_TREADY,s_axis_open_status_TDATA[23:0],s_axis_rx_data_TVALID,s_axis_rx_data_TREADY,s_axis_rx_data_TDATA[63:0],s_axis_rx_data_TKEEP[7:0],s_axis_rx_data_TLAST[0:0],s_axis_rx_metadata_TVALID,s_axis_rx_metadata_TREADY,s_axis_rx_metadata_TDATA[15:0],s_axis_tx_status_TVALID,s_axis_tx_status_TREADY,s_axis_tx_status_TDATA[23:0],ap_start,ap_ready,ap_done,ap_idle,aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "echo_server_application_top,Vivado 2017.4";
begin
end;
