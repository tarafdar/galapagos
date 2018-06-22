-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Sat Jun  2 01:28:17 2018
-- Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top pr_ip_constant_block_0_0 -prefix
--               pr_ip_constant_block_0_0_ pr_ip_constant_block_0_0_stub.vhdl
-- Design      : pr_ip_constant_block_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pr_ip_constant_block_0_0 is
  Port ( 
    ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gateway : out STD_LOGIC_VECTOR ( 31 downto 0 );
    subnet : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mac : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end pr_ip_constant_block_0_0;

architecture stub of pr_ip_constant_block_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ip[31:0],gateway[31:0],subnet[31:0],mac[47:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ip_constant_block,Vivado 2018.1";
begin
end;
