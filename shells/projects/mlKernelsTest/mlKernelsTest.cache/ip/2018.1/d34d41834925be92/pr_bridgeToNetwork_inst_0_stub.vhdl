-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Jun 13 00:53:02 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_bridgeToNetwork_inst_0_stub.vhdl
-- Design      : pr_bridgeToNetwork_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    stream_in_V_TVALID : in STD_LOGIC;
    stream_in_V_TREADY : out STD_LOGIC;
    stream_in_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_in_V_TDEST : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_V_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_V_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_V_TID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_V_TUSER : in STD_LOGIC_VECTOR ( 39 downto 0 );
    stream_out_V_TVALID : out STD_LOGIC;
    stream_out_V_TREADY : in STD_LOGIC;
    stream_out_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_out_V_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_V_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_V_TDEST : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "stream_in_V_TVALID,stream_in_V_TREADY,stream_in_V_TDATA[63:0],stream_in_V_TDEST[7:0],stream_in_V_TKEEP[7:0],stream_in_V_TLAST[0:0],stream_in_V_TID[7:0],stream_in_V_TUSER[39:0],stream_out_V_TVALID,stream_out_V_TREADY,stream_out_V_TDATA[63:0],stream_out_V_TLAST[0:0],stream_out_V_TKEEP[7:0],stream_out_V_TDEST[7:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fnr_top,Vivado 2018.1";
begin
end;