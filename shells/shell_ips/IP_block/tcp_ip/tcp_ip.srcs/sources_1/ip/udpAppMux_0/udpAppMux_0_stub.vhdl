-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 23 19:12:49 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/7v3/tcp_ip/tcp_ip.srcs/sources_1/ip/udpAppMux_0/udpAppMux_0_stub.vhdl
-- Design      : udpAppMux_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity udpAppMux_0 is
  Port ( 
    portOpenReplyIn_TVALID : in STD_LOGIC;
    portOpenReplyIn_TREADY : out STD_LOGIC;
    portOpenReplyIn_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    portOpenReplyOutApp_TVALID : out STD_LOGIC;
    portOpenReplyOutApp_TREADY : in STD_LOGIC;
    portOpenReplyOutApp_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    portOpenReplyOutDhcp_TVALID : out STD_LOGIC;
    portOpenReplyOutDhcp_TREADY : in STD_LOGIC;
    portOpenReplyOutDhcp_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    requestPortOpenInApp_TVALID : in STD_LOGIC;
    requestPortOpenInApp_TREADY : out STD_LOGIC;
    requestPortOpenInApp_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    requestPortOpenInDhcp_TVALID : in STD_LOGIC;
    requestPortOpenInDhcp_TREADY : out STD_LOGIC;
    requestPortOpenInDhcp_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    requestPortOpenOut_TVALID : out STD_LOGIC;
    requestPortOpenOut_TREADY : in STD_LOGIC;
    requestPortOpenOut_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxDataIn_TVALID : in STD_LOGIC;
    rxDataIn_TREADY : out STD_LOGIC;
    rxDataIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rxDataIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxDataIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxDataOutApp_TVALID : out STD_LOGIC;
    rxDataOutApp_TREADY : in STD_LOGIC;
    rxDataOutApp_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rxDataOutApp_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxDataOutApp_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxDataOutDhcp_TVALID : out STD_LOGIC;
    rxDataOutDhcp_TREADY : in STD_LOGIC;
    rxDataOutDhcp_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rxDataOutDhcp_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxDataOutDhcp_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxMetadataIn_TVALID : in STD_LOGIC;
    rxMetadataIn_TREADY : out STD_LOGIC;
    rxMetadataIn_TDATA : in STD_LOGIC_VECTOR ( 95 downto 0 );
    rxMetadataOutApp_TVALID : out STD_LOGIC;
    rxMetadataOutApp_TREADY : in STD_LOGIC;
    rxMetadataOutApp_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    rxMetadataOutDhcp_TVALID : out STD_LOGIC;
    rxMetadataOutDhcp_TREADY : in STD_LOGIC;
    rxMetadataOutDhcp_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    txDataInApp_TVALID : in STD_LOGIC;
    txDataInApp_TREADY : out STD_LOGIC;
    txDataInApp_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    txDataInApp_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txDataInApp_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    txDataInDhcp_TVALID : in STD_LOGIC;
    txDataInDhcp_TREADY : out STD_LOGIC;
    txDataInDhcp_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    txDataInDhcp_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txDataInDhcp_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    txDataOut_TVALID : out STD_LOGIC;
    txDataOut_TREADY : in STD_LOGIC;
    txDataOut_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    txDataOut_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    txDataOut_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    txLengthInApp_TVALID : in STD_LOGIC;
    txLengthInApp_TREADY : out STD_LOGIC;
    txLengthInApp_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txLengthInDhcp_TVALID : in STD_LOGIC;
    txLengthInDhcp_TREADY : out STD_LOGIC;
    txLengthInDhcp_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txLengthOut_TVALID : out STD_LOGIC;
    txLengthOut_TREADY : in STD_LOGIC;
    txLengthOut_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    txMetadataInApp_TVALID : in STD_LOGIC;
    txMetadataInApp_TREADY : out STD_LOGIC;
    txMetadataInApp_TDATA : in STD_LOGIC_VECTOR ( 95 downto 0 );
    txMetadataInDhcp_TVALID : in STD_LOGIC;
    txMetadataInDhcp_TREADY : out STD_LOGIC;
    txMetadataInDhcp_TDATA : in STD_LOGIC_VECTOR ( 95 downto 0 );
    txMetadataOut_TVALID : out STD_LOGIC;
    txMetadataOut_TREADY : in STD_LOGIC;
    txMetadataOut_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end udpAppMux_0;

architecture stub of udpAppMux_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "portOpenReplyIn_TVALID,portOpenReplyIn_TREADY,portOpenReplyIn_TDATA[7:0],portOpenReplyOutApp_TVALID,portOpenReplyOutApp_TREADY,portOpenReplyOutApp_TDATA[7:0],portOpenReplyOutDhcp_TVALID,portOpenReplyOutDhcp_TREADY,portOpenReplyOutDhcp_TDATA[7:0],requestPortOpenInApp_TVALID,requestPortOpenInApp_TREADY,requestPortOpenInApp_TDATA[15:0],requestPortOpenInDhcp_TVALID,requestPortOpenInDhcp_TREADY,requestPortOpenInDhcp_TDATA[15:0],requestPortOpenOut_TVALID,requestPortOpenOut_TREADY,requestPortOpenOut_TDATA[15:0],rxDataIn_TVALID,rxDataIn_TREADY,rxDataIn_TDATA[63:0],rxDataIn_TKEEP[7:0],rxDataIn_TLAST[0:0],rxDataOutApp_TVALID,rxDataOutApp_TREADY,rxDataOutApp_TDATA[63:0],rxDataOutApp_TKEEP[7:0],rxDataOutApp_TLAST[0:0],rxDataOutDhcp_TVALID,rxDataOutDhcp_TREADY,rxDataOutDhcp_TDATA[63:0],rxDataOutDhcp_TKEEP[7:0],rxDataOutDhcp_TLAST[0:0],rxMetadataIn_TVALID,rxMetadataIn_TREADY,rxMetadataIn_TDATA[95:0],rxMetadataOutApp_TVALID,rxMetadataOutApp_TREADY,rxMetadataOutApp_TDATA[95:0],rxMetadataOutDhcp_TVALID,rxMetadataOutDhcp_TREADY,rxMetadataOutDhcp_TDATA[95:0],txDataInApp_TVALID,txDataInApp_TREADY,txDataInApp_TDATA[63:0],txDataInApp_TKEEP[7:0],txDataInApp_TLAST[0:0],txDataInDhcp_TVALID,txDataInDhcp_TREADY,txDataInDhcp_TDATA[63:0],txDataInDhcp_TKEEP[7:0],txDataInDhcp_TLAST[0:0],txDataOut_TVALID,txDataOut_TREADY,txDataOut_TDATA[63:0],txDataOut_TKEEP[7:0],txDataOut_TLAST[0:0],txLengthInApp_TVALID,txLengthInApp_TREADY,txLengthInApp_TDATA[15:0],txLengthInDhcp_TVALID,txLengthInDhcp_TREADY,txLengthInDhcp_TDATA[15:0],txLengthOut_TVALID,txLengthOut_TREADY,txLengthOut_TDATA[15:0],txMetadataInApp_TVALID,txMetadataInApp_TREADY,txMetadataInApp_TDATA[95:0],txMetadataInDhcp_TVALID,txMetadataInDhcp_TREADY,txMetadataInDhcp_TDATA[95:0],txMetadataOut_TVALID,txMetadataOut_TREADY,txMetadataOut_TDATA[95:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "udpappmux_top,Vivado 2017.4";
begin
end;
