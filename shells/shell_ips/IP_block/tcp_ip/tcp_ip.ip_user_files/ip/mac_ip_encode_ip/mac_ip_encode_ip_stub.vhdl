-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Apr  9 18:02:57 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/mac_ip_encode_ip_stub.vhdl
-- Design      : mac_ip_encode_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mac_ip_encode_ip is
  Port ( 
    myMacAddress_V : in STD_LOGIC_VECTOR ( 47 downto 0 );
    regSubNetMask_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regDefaultGateway_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_arp_lookup_request_TVALID : out STD_LOGIC;
    m_axis_arp_lookup_request_TREADY : in STD_LOGIC;
    m_axis_arp_lookup_request_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_ip_TVALID : out STD_LOGIC;
    m_axis_ip_TREADY : in STD_LOGIC;
    m_axis_ip_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_ip_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_ip_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_arp_lookup_reply_TVALID : in STD_LOGIC;
    s_axis_arp_lookup_reply_TREADY : out STD_LOGIC;
    s_axis_arp_lookup_reply_TDATA : in STD_LOGIC_VECTOR ( 55 downto 0 );
    s_axis_ip_TVALID : in STD_LOGIC;
    s_axis_ip_TREADY : out STD_LOGIC;
    s_axis_ip_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_ip_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_ip_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end mac_ip_encode_ip;

architecture stub of mac_ip_encode_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "myMacAddress_V[47:0],regSubNetMask_V[31:0],regDefaultGateway_V[31:0],m_axis_arp_lookup_request_TVALID,m_axis_arp_lookup_request_TREADY,m_axis_arp_lookup_request_TDATA[31:0],m_axis_ip_TVALID,m_axis_ip_TREADY,m_axis_ip_TDATA[63:0],m_axis_ip_TKEEP[7:0],m_axis_ip_TLAST[0:0],s_axis_arp_lookup_reply_TVALID,s_axis_arp_lookup_reply_TREADY,s_axis_arp_lookup_reply_TDATA[55:0],s_axis_ip_TVALID,s_axis_ip_TREADY,s_axis_ip_TDATA[63:0],s_axis_ip_TKEEP[7:0],s_axis_ip_TLAST[0:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mac_ip_encode_top,Vivado 2017.4";
begin
end;
