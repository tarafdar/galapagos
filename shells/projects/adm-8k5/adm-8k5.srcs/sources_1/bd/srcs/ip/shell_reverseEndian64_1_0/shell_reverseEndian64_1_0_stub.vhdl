-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue May 15 12:00:18 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub -rename_top shell_reverseEndian64_1_0 -prefix
--               shell_reverseEndian64_1_0_ shell_reverseEndian64_0_0_stub.vhdl
-- Design      : shell_reverseEndian64_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shell_reverseEndian64_1_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_TVALID : in STD_LOGIC;
    stream_in_TREADY : out STD_LOGIC;
    stream_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TVALID : out STD_LOGIC;
    stream_out_TREADY : in STD_LOGIC;
    stream_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end shell_reverseEndian64_1_0;

architecture stub of shell_reverseEndian64_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,stream_in_TVALID,stream_in_TREADY,stream_in_TDATA[63:0],stream_in_TKEEP[7:0],stream_in_TLAST[0:0],stream_out_TVALID,stream_out_TREADY,stream_out_TDATA[63:0],stream_out_TKEEP[7:0],stream_out_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "reverseEndian64,Vivado 2018.1";
begin
end;
