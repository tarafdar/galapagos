-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 23 14:58:20 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/8v3/repo/hls/tcp_test/tcp_ip/scripts/build/proj2017/tcp_ip.srcs/sources_1/ip/udpLoopback_0/udpLoopback_0_stub.vhdl
-- Design      : udpLoopback_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity udpLoopback_0 is
  Port ( 
    lbPortOpenReplyIn_TVALID : in STD_LOGIC;
    lbPortOpenReplyIn_TREADY : out STD_LOGIC;
    lbPortOpenReplyIn_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lbRequestPortOpenOut_TVALID : out STD_LOGIC;
    lbRequestPortOpenOut_TREADY : in STD_LOGIC;
    lbRequestPortOpenOut_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lbRxDataIn_TVALID : in STD_LOGIC;
    lbRxDataIn_TREADY : out STD_LOGIC;
    lbRxDataIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    lbRxDataIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lbRxDataIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    lbRxMetadataIn_TVALID : in STD_LOGIC;
    lbRxMetadataIn_TREADY : out STD_LOGIC;
    lbRxMetadataIn_TDATA : in STD_LOGIC_VECTOR ( 95 downto 0 );
    lbTxDataOut_TVALID : out STD_LOGIC;
    lbTxDataOut_TREADY : in STD_LOGIC;
    lbTxDataOut_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    lbTxDataOut_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lbTxDataOut_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    lbTxLengthOut_TVALID : out STD_LOGIC;
    lbTxLengthOut_TREADY : in STD_LOGIC;
    lbTxLengthOut_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lbTxMetadataOut_TVALID : out STD_LOGIC;
    lbTxMetadataOut_TREADY : in STD_LOGIC;
    lbTxMetadataOut_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end udpLoopback_0;

architecture stub of udpLoopback_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "lbPortOpenReplyIn_TVALID,lbPortOpenReplyIn_TREADY,lbPortOpenReplyIn_TDATA[7:0],lbRequestPortOpenOut_TVALID,lbRequestPortOpenOut_TREADY,lbRequestPortOpenOut_TDATA[15:0],lbRxDataIn_TVALID,lbRxDataIn_TREADY,lbRxDataIn_TDATA[63:0],lbRxDataIn_TKEEP[7:0],lbRxDataIn_TLAST[0:0],lbRxMetadataIn_TVALID,lbRxMetadataIn_TREADY,lbRxMetadataIn_TDATA[95:0],lbTxDataOut_TVALID,lbTxDataOut_TREADY,lbTxDataOut_TDATA[63:0],lbTxDataOut_TKEEP[7:0],lbTxDataOut_TLAST[0:0],lbTxLengthOut_TVALID,lbTxLengthOut_TREADY,lbTxLengthOut_TDATA[15:0],lbTxMetadataOut_TVALID,lbTxMetadataOut_TREADY,lbTxMetadataOut_TDATA[95:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "udploopback_top,Vivado 2017.4";
begin
end;
