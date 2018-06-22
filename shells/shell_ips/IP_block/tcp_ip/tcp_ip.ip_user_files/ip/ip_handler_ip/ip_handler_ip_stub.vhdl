-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Apr  9 18:02:30 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/ip_handler_ip/ip_handler_ip_stub.vhdl
-- Design      : ip_handler_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ip_handler_ip is
  Port ( 
    s_axis_raw_TVALID : in STD_LOGIC;
    s_axis_raw_TREADY : out STD_LOGIC;
    s_axis_raw_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_raw_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_raw_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_ARP_TVALID : out STD_LOGIC;
    m_axis_ARP_TREADY : in STD_LOGIC;
    m_axis_ARP_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_ARP_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_ARP_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_ICMP_TVALID : out STD_LOGIC;
    m_axis_ICMP_TREADY : in STD_LOGIC;
    m_axis_ICMP_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_ICMP_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_ICMP_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_UDP_TVALID : out STD_LOGIC;
    m_axis_UDP_TREADY : in STD_LOGIC;
    m_axis_UDP_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_UDP_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_UDP_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_TCP_TVALID : out STD_LOGIC;
    m_axis_TCP_TREADY : in STD_LOGIC;
    m_axis_TCP_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_TCP_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_TCP_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    myIpAddress_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );

end ip_handler_ip;

architecture stub of ip_handler_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_raw_TVALID,s_axis_raw_TREADY,s_axis_raw_TDATA[63:0],s_axis_raw_TKEEP[7:0],s_axis_raw_TLAST[0:0],m_axis_ARP_TVALID,m_axis_ARP_TREADY,m_axis_ARP_TDATA[63:0],m_axis_ARP_TKEEP[7:0],m_axis_ARP_TLAST[0:0],m_axis_ICMP_TVALID,m_axis_ICMP_TREADY,m_axis_ICMP_TDATA[63:0],m_axis_ICMP_TKEEP[7:0],m_axis_ICMP_TLAST[0:0],m_axis_UDP_TVALID,m_axis_UDP_TREADY,m_axis_UDP_TDATA[63:0],m_axis_UDP_TKEEP[7:0],m_axis_UDP_TLAST[0:0],m_axis_TCP_TVALID,m_axis_TCP_TREADY,m_axis_TCP_TDATA[63:0],m_axis_TCP_TKEEP[7:0],m_axis_TCP_TLAST[0:0],myIpAddress_V[31:0],ap_clk,ap_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ip_handler,Vivado 2017.4";
begin
end;
