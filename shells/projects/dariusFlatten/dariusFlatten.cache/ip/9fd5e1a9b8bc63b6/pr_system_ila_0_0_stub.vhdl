-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Mon Jun  4 19:56:58 2018
-- Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/eskand38/TCP_galapagos/galapagos/projects/dariusFlatten/0/0.srcs/sources_1/bd/pr/ip/pr_system_ila_0_0/pr_system_ila_0_0_stub.vhdl
-- Design      : pr_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pr_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_0_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tdest : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_1_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_2_AXIS_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXIS_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_2_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXIS_tlast : in STD_LOGIC;
    SLOT_2_AXIS_tuser : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_2_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXIS_tready : in STD_LOGIC;
    SLOT_3_AXIS_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXIS_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_3_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXIS_tlast : in STD_LOGIC;
    SLOT_3_AXIS_tuser : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_3_AXIS_tvalid : in STD_LOGIC;
    SLOT_3_AXIS_tready : in STD_LOGIC;
    SLOT_4_AXIS_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXIS_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_4_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXIS_tlast : in STD_LOGIC;
    SLOT_4_AXIS_tuser : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_4_AXIS_tvalid : in STD_LOGIC;
    SLOT_4_AXIS_tready : in STD_LOGIC;
    SLOT_5_AXIS_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXIS_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_5_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXIS_tlast : in STD_LOGIC;
    SLOT_5_AXIS_tuser : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_5_AXIS_tvalid : in STD_LOGIC;
    SLOT_5_AXIS_tready : in STD_LOGIC;
    SLOT_6_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_6_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_6_AXIS_tlast : in STD_LOGIC;
    SLOT_6_AXIS_tvalid : in STD_LOGIC;
    SLOT_6_AXIS_tready : in STD_LOGIC;
    SLOT_7_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_7_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_7_AXIS_tlast : in STD_LOGIC;
    SLOT_7_AXIS_tvalid : in STD_LOGIC;
    SLOT_7_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end pr_system_ila_0_0;

architecture stub of pr_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_AXIS_tdest[7:0],SLOT_0_AXIS_tdata[63:0],SLOT_0_AXIS_tkeep[7:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tdest[15:0],SLOT_1_AXIS_tdata[63:0],SLOT_1_AXIS_tkeep[7:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tid[7:0],SLOT_2_AXIS_tdest[7:0],SLOT_2_AXIS_tdata[63:0],SLOT_2_AXIS_tkeep[7:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tuser[39:0],SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tid[7:0],SLOT_3_AXIS_tdest[7:0],SLOT_3_AXIS_tdata[63:0],SLOT_3_AXIS_tkeep[7:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tuser[39:0],SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tid[7:0],SLOT_4_AXIS_tdest[7:0],SLOT_4_AXIS_tdata[63:0],SLOT_4_AXIS_tkeep[7:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tuser[39:0],SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,SLOT_5_AXIS_tid[7:0],SLOT_5_AXIS_tdest[7:0],SLOT_5_AXIS_tdata[63:0],SLOT_5_AXIS_tkeep[7:0],SLOT_5_AXIS_tlast,SLOT_5_AXIS_tuser[39:0],SLOT_5_AXIS_tvalid,SLOT_5_AXIS_tready,SLOT_6_AXIS_tdata[63:0],SLOT_6_AXIS_tkeep[7:0],SLOT_6_AXIS_tlast,SLOT_6_AXIS_tvalid,SLOT_6_AXIS_tready,SLOT_7_AXIS_tdata[63:0],SLOT_7_AXIS_tkeep[7:0],SLOT_7_AXIS_tlast,SLOT_7_AXIS_tvalid,SLOT_7_AXIS_tready,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_bb74,Vivado 2018.1";
begin
end;
