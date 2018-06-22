-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Apr  9 18:02:59 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/arp_server_ip/arp_server_ip_stub.vhdl
-- Design      : arp_server_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arp_server_ip is
  Port ( 
    myMacAddress_V : in STD_LOGIC_VECTOR ( 47 downto 0 );
    myIpAddress_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    arpDataIn_TVALID : in STD_LOGIC;
    arpDataIn_TREADY : out STD_LOGIC;
    arpDataIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    arpDataIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    arpDataIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    arpDataOut_TVALID : out STD_LOGIC;
    arpDataOut_TREADY : in STD_LOGIC;
    arpDataOut_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    arpDataOut_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    arpDataOut_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    macIpEncode_req_TVALID : in STD_LOGIC;
    macIpEncode_req_TREADY : out STD_LOGIC;
    macIpEncode_req_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    macIpEncode_rsp_TVALID : out STD_LOGIC;
    macIpEncode_rsp_TREADY : in STD_LOGIC;
    macIpEncode_rsp_TDATA : out STD_LOGIC_VECTOR ( 55 downto 0 );
    macLookup_req_TVALID : out STD_LOGIC;
    macLookup_req_TREADY : in STD_LOGIC;
    macLookup_req_TDATA : out STD_LOGIC_VECTOR ( 39 downto 0 );
    macLookup_resp_TVALID : in STD_LOGIC;
    macLookup_resp_TREADY : out STD_LOGIC;
    macLookup_resp_TDATA : in STD_LOGIC_VECTOR ( 55 downto 0 );
    macUpdate_req_TVALID : out STD_LOGIC;
    macUpdate_req_TREADY : in STD_LOGIC;
    macUpdate_req_TDATA : out STD_LOGIC_VECTOR ( 87 downto 0 );
    macUpdate_resp_TVALID : in STD_LOGIC;
    macUpdate_resp_TREADY : out STD_LOGIC;
    macUpdate_resp_TDATA : in STD_LOGIC_VECTOR ( 55 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end arp_server_ip;

architecture stub of arp_server_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "myMacAddress_V[47:0],myIpAddress_V[31:0],arpDataIn_TVALID,arpDataIn_TREADY,arpDataIn_TDATA[63:0],arpDataIn_TKEEP[7:0],arpDataIn_TLAST[0:0],arpDataOut_TVALID,arpDataOut_TREADY,arpDataOut_TDATA[63:0],arpDataOut_TKEEP[7:0],arpDataOut_TLAST[0:0],macIpEncode_req_TVALID,macIpEncode_req_TREADY,macIpEncode_req_TDATA[31:0],macIpEncode_rsp_TVALID,macIpEncode_rsp_TREADY,macIpEncode_rsp_TDATA[55:0],macLookup_req_TVALID,macLookup_req_TREADY,macLookup_req_TDATA[39:0],macLookup_resp_TVALID,macLookup_resp_TREADY,macLookup_resp_TDATA[55:0],macUpdate_req_TVALID,macUpdate_req_TREADY,macUpdate_req_TDATA[87:0],macUpdate_resp_TVALID,macUpdate_resp_TREADY,macUpdate_resp_TDATA[55:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "arp_server_top,Vivado 2017.4";
begin
end;
