-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 23 19:13:30 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/7v3/tcp_ip/tcp_ip.srcs/sources_1/ip/dhcp_client_0/dhcp_client_0_stub.vhdl
-- Design      : dhcp_client_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dhcp_client_0 is
  Port ( 
    dhcpEnable_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    inputIpAddress_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dhcpIpAddressOut_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    myMacAddress_V : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_open_port_TVALID : out STD_LOGIC;
    m_axis_open_port_TREADY : in STD_LOGIC;
    m_axis_open_port_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tx_data_TVALID : out STD_LOGIC;
    m_axis_tx_data_TREADY : in STD_LOGIC;
    m_axis_tx_data_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tx_data_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tx_data_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_length_TVALID : out STD_LOGIC;
    m_axis_tx_length_TREADY : in STD_LOGIC;
    m_axis_tx_length_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tx_metadata_TVALID : out STD_LOGIC;
    m_axis_tx_metadata_TREADY : in STD_LOGIC;
    m_axis_tx_metadata_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_open_port_status_TVALID : in STD_LOGIC;
    s_axis_open_port_status_TREADY : out STD_LOGIC;
    s_axis_open_port_status_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_data_TVALID : in STD_LOGIC;
    s_axis_rx_data_TREADY : out STD_LOGIC;
    s_axis_rx_data_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_rx_data_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_data_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_rx_metadata_TVALID : in STD_LOGIC;
    s_axis_rx_metadata_TREADY : out STD_LOGIC;
    s_axis_rx_metadata_TDATA : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end dhcp_client_0;

architecture stub of dhcp_client_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dhcpEnable_V[0:0],inputIpAddress_V[31:0],dhcpIpAddressOut_V[31:0],myMacAddress_V[47:0],m_axis_open_port_TVALID,m_axis_open_port_TREADY,m_axis_open_port_TDATA[15:0],m_axis_tx_data_TVALID,m_axis_tx_data_TREADY,m_axis_tx_data_TDATA[63:0],m_axis_tx_data_TKEEP[7:0],m_axis_tx_data_TLAST[0:0],m_axis_tx_length_TVALID,m_axis_tx_length_TREADY,m_axis_tx_length_TDATA[15:0],m_axis_tx_metadata_TVALID,m_axis_tx_metadata_TREADY,m_axis_tx_metadata_TDATA[95:0],s_axis_open_port_status_TVALID,s_axis_open_port_status_TREADY,s_axis_open_port_status_TDATA[7:0],s_axis_rx_data_TVALID,s_axis_rx_data_TREADY,s_axis_rx_data_TDATA[63:0],s_axis_rx_data_TKEEP[7:0],s_axis_rx_data_TLAST[0:0],s_axis_rx_metadata_TVALID,s_axis_rx_metadata_TREADY,s_axis_rx_metadata_TDATA[95:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dhcp_client_top,Vivado 2017.4";
begin
end;
