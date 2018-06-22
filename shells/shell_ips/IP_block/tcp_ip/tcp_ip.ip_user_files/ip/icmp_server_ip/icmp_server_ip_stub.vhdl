-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Apr  9 18:03:02 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/icmp_server_ip/icmp_server_ip_stub.vhdl
-- Design      : icmp_server_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icmp_server_ip is
  Port ( 
    dataIn_TVALID : in STD_LOGIC;
    dataIn_TREADY : out STD_LOGIC;
    dataIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dataIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    udpIn_TVALID : in STD_LOGIC;
    udpIn_TREADY : out STD_LOGIC;
    udpIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    udpIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    udpIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    ttlIn_TVALID : in STD_LOGIC;
    ttlIn_TREADY : out STD_LOGIC;
    ttlIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    ttlIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ttlIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataOut_TVALID : out STD_LOGIC;
    dataOut_TREADY : in STD_LOGIC;
    dataOut_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dataOut_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataOut_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );

end icmp_server_ip;

architecture stub of icmp_server_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dataIn_TVALID,dataIn_TREADY,dataIn_TDATA[63:0],dataIn_TKEEP[7:0],dataIn_TLAST[0:0],udpIn_TVALID,udpIn_TREADY,udpIn_TDATA[63:0],udpIn_TKEEP[7:0],udpIn_TLAST[0:0],ttlIn_TVALID,ttlIn_TREADY,ttlIn_TDATA[63:0],ttlIn_TKEEP[7:0],ttlIn_TLAST[0:0],dataOut_TVALID,dataOut_TREADY,dataOut_TDATA[63:0],dataOut_TKEEP[7:0],dataOut_TLAST[0:0],ap_clk,ap_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "icmp_server,Vivado 2017.4";
begin
end;
