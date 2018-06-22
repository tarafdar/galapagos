-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue Jun 12 16:26:44 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_ip_dest_filter_inst_0_stub.vhdl
-- Design      : pr_ip_dest_filter_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ip_table_V_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ip_table_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ip_table_V_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_in_TVALID : in STD_LOGIC;
    stream_in_TREADY : out STD_LOGIC;
    stream_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TDEST : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_switch_TVALID : out STD_LOGIC;
    stream_out_switch_TREADY : in STD_LOGIC;
    stream_out_switch_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_out_switch_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_switch_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_switch_TDEST : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_network_TVALID : out STD_LOGIC;
    stream_out_network_TREADY : in STD_LOGIC;
    stream_out_network_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_out_network_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_network_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_network_TDEST : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ip_table_V_ce0,ap_clk,ap_rst_n,ip_table_V_address0[7:0],ip_table_V_q0[31:0],ip_addr[31:0],stream_in_TVALID,stream_in_TREADY,stream_in_TDATA[63:0],stream_in_TKEEP[7:0],stream_in_TLAST[0:0],stream_in_TDEST[7:0],stream_out_switch_TVALID,stream_out_switch_TREADY,stream_out_switch_TDATA[63:0],stream_out_switch_TKEEP[7:0],stream_out_switch_TLAST[0:0],stream_out_switch_TDEST[7:0],stream_out_network_TVALID,stream_out_network_TREADY,stream_out_network_TDATA[63:0],stream_out_network_TKEEP[7:0],stream_out_network_TLAST[0:0],stream_out_network_TDEST[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ip_dest_filter,Vivado 2018.1";
begin
end;
