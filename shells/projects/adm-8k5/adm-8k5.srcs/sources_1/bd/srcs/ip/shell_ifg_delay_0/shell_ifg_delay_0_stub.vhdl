-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Thu May  3 12:05:02 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub -rename_top shell_ifg_delay_0 -prefix
--               shell_ifg_delay_0_ shell_ifg_delay_0_stub.vhdl
-- Design      : shell_ifg_delay_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shell_ifg_delay_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end shell_ifg_delay_0;

architecture stub of shell_ifg_delay_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_4_xlconstant,Vivado 2018.1";
begin
end;
