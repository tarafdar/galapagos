-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Apr  9 18:03:25 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/udp_0/udp_0_stub.vhdl
-- Design      : udp_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity udp_0 is
  Port ( 
    confirmPortStatus_TVALID : out STD_LOGIC;
    confirmPortStatus_TREADY : in STD_LOGIC;
    confirmPortStatus_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inputPathInData_TVALID : in STD_LOGIC;
    inputPathInData_TREADY : out STD_LOGIC;
    inputPathInData_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    inputPathInData_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inputPathInData_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inputPathOutputMetadata_TVALID : out STD_LOGIC;
    inputPathOutputMetadata_TREADY : in STD_LOGIC;
    inputPathOutputMetadata_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    inputPathPortUnreachable_TVALID : out STD_LOGIC;
    inputPathPortUnreachable_TREADY : in STD_LOGIC;
    inputPathPortUnreachable_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    inputPathPortUnreachable_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inputPathPortUnreachable_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    inputpathOutData_TVALID : out STD_LOGIC;
    inputpathOutData_TREADY : in STD_LOGIC;
    inputpathOutData_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    inputpathOutData_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inputpathOutData_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    openPort_TVALID : in STD_LOGIC;
    openPort_TREADY : out STD_LOGIC;
    openPort_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outputPathInData_TVALID : in STD_LOGIC;
    outputPathInData_TREADY : out STD_LOGIC;
    outputPathInData_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    outputPathInData_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outputPathInData_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    outputPathInMetadata_TVALID : in STD_LOGIC;
    outputPathInMetadata_TREADY : out STD_LOGIC;
    outputPathInMetadata_TDATA : in STD_LOGIC_VECTOR ( 95 downto 0 );
    outputPathOutData_TVALID : out STD_LOGIC;
    outputPathOutData_TREADY : in STD_LOGIC;
    outputPathOutData_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    outputPathOutData_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outputPathOutData_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    outputpathInLength_TVALID : in STD_LOGIC;
    outputpathInLength_TREADY : out STD_LOGIC;
    outputpathInLength_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    portRelease_TVALID : in STD_LOGIC;
    portRelease_TREADY : out STD_LOGIC;
    portRelease_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end udp_0;

architecture stub of udp_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "confirmPortStatus_TVALID,confirmPortStatus_TREADY,confirmPortStatus_TDATA[7:0],inputPathInData_TVALID,inputPathInData_TREADY,inputPathInData_TDATA[63:0],inputPathInData_TKEEP[7:0],inputPathInData_TLAST[0:0],inputPathOutputMetadata_TVALID,inputPathOutputMetadata_TREADY,inputPathOutputMetadata_TDATA[95:0],inputPathPortUnreachable_TVALID,inputPathPortUnreachable_TREADY,inputPathPortUnreachable_TDATA[63:0],inputPathPortUnreachable_TKEEP[7:0],inputPathPortUnreachable_TLAST[0:0],inputpathOutData_TVALID,inputpathOutData_TREADY,inputpathOutData_TDATA[63:0],inputpathOutData_TKEEP[7:0],inputpathOutData_TLAST[0:0],openPort_TVALID,openPort_TREADY,openPort_TDATA[15:0],outputPathInData_TVALID,outputPathInData_TREADY,outputPathInData_TDATA[63:0],outputPathInData_TKEEP[7:0],outputPathInData_TLAST[0:0],outputPathInMetadata_TVALID,outputPathInMetadata_TREADY,outputPathInMetadata_TDATA[95:0],outputPathOutData_TVALID,outputPathOutData_TREADY,outputPathOutData_TDATA[63:0],outputPathOutData_TKEEP[7:0],outputPathOutData_TLAST[0:0],outputpathInLength_TVALID,outputpathInLength_TREADY,outputpathInLength_TDATA[15:0],portRelease_TVALID,portRelease_TREADY,portRelease_TDATA[15:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "udp_top,Vivado 2017.4";
begin
end;
