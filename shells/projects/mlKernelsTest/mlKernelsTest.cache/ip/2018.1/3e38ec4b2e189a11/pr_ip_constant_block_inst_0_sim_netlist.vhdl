-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue Jun 12 16:26:42 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_ip_constant_block_inst_0_sim_netlist.vhdl
-- Design      : pr_ip_constant_block_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gateway : out STD_LOGIC_VECTOR ( 31 downto 0 );
    subnet : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mac : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pr_ip_constant_block_inst_0,ip_constant_block,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ip_constant_block,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  gateway(31) <= \<const0>\;
  gateway(30) <= \<const1>\;
  gateway(29) <= \<const1>\;
  gateway(28) <= \<const0>\;
  gateway(27) <= \<const0>\;
  gateway(26) <= \<const1>\;
  gateway(25) <= \<const0>\;
  gateway(24) <= \<const0>\;
  gateway(23) <= \<const0>\;
  gateway(22) <= \<const0>\;
  gateway(21) <= \<const0>\;
  gateway(20) <= \<const0>\;
  gateway(19) <= \<const0>\;
  gateway(18) <= \<const0>\;
  gateway(17) <= \<const1>\;
  gateway(16) <= \<const0>\;
  gateway(15) <= \<const0>\;
  gateway(14) <= \<const0>\;
  gateway(13) <= \<const0>\;
  gateway(12) <= \<const0>\;
  gateway(11) <= \<const0>\;
  gateway(10) <= \<const0>\;
  gateway(9) <= \<const0>\;
  gateway(8) <= \<const1>\;
  gateway(7) <= \<const0>\;
  gateway(6) <= \<const0>\;
  gateway(5) <= \<const0>\;
  gateway(4) <= \<const0>\;
  gateway(3) <= \<const1>\;
  gateway(2) <= \<const0>\;
  gateway(1) <= \<const1>\;
  gateway(0) <= \<const0>\;
  ip(31) <= \<const0>\;
  ip(30) <= \<const1>\;
  ip(29) <= \<const1>\;
  ip(28) <= \<const0>\;
  ip(27) <= \<const0>\;
  ip(26) <= \<const1>\;
  ip(25) <= \<const1>\;
  ip(24) <= \<const1>\;
  ip(23) <= \<const0>\;
  ip(22) <= \<const0>\;
  ip(21) <= \<const0>\;
  ip(20) <= \<const0>\;
  ip(19) <= \<const0>\;
  ip(18) <= \<const0>\;
  ip(17) <= \<const1>\;
  ip(16) <= \<const0>\;
  ip(15) <= \<const0>\;
  ip(14) <= \<const0>\;
  ip(13) <= \<const0>\;
  ip(12) <= \<const0>\;
  ip(11) <= \<const0>\;
  ip(10) <= \<const0>\;
  ip(9) <= \<const0>\;
  ip(8) <= \<const1>\;
  ip(7) <= \<const0>\;
  ip(6) <= \<const0>\;
  ip(5) <= \<const0>\;
  ip(4) <= \<const0>\;
  ip(3) <= \<const1>\;
  ip(2) <= \<const0>\;
  ip(1) <= \<const1>\;
  ip(0) <= \<const0>\;
  mac(47) <= \<const0>\;
  mac(46) <= \<const0>\;
  mac(45) <= \<const0>\;
  mac(44) <= \<const0>\;
  mac(43) <= \<const0>\;
  mac(42) <= \<const0>\;
  mac(41) <= \<const1>\;
  mac(40) <= \<const1>\;
  mac(39) <= \<const1>\;
  mac(38) <= \<const1>\;
  mac(37) <= \<const0>\;
  mac(36) <= \<const0>\;
  mac(35) <= \<const1>\;
  mac(34) <= \<const0>\;
  mac(33) <= \<const1>\;
  mac(32) <= \<const0>\;
  mac(31) <= \<const0>\;
  mac(30) <= \<const1>\;
  mac(29) <= \<const0>\;
  mac(28) <= \<const1>\;
  mac(27) <= \<const0>\;
  mac(26) <= \<const1>\;
  mac(25) <= \<const0>\;
  mac(24) <= \<const1>\;
  mac(23) <= \<const0>\;
  mac(22) <= \<const0>\;
  mac(21) <= \<const1>\;
  mac(20) <= \<const1>\;
  mac(19) <= \<const1>\;
  mac(18) <= \<const1>\;
  mac(17) <= \<const1>\;
  mac(16) <= \<const0>\;
  mac(15) <= \<const0>\;
  mac(14) <= \<const0>\;
  mac(13) <= \<const0>\;
  mac(12) <= \<const1>\;
  mac(11) <= \<const0>\;
  mac(10) <= \<const1>\;
  mac(9) <= \<const1>\;
  mac(8) <= \<const0>\;
  mac(7) <= \<const1>\;
  mac(6) <= \<const1>\;
  mac(5) <= \<const1>\;
  mac(4) <= \<const1>\;
  mac(3) <= \<const1>\;
  mac(2) <= \<const0>\;
  mac(1) <= \<const1>\;
  mac(0) <= \<const0>\;
  subnet(31) <= \<const0>\;
  subnet(30) <= \<const0>\;
  subnet(29) <= \<const0>\;
  subnet(28) <= \<const0>\;
  subnet(27) <= \<const0>\;
  subnet(26) <= \<const0>\;
  subnet(25) <= \<const0>\;
  subnet(24) <= \<const0>\;
  subnet(23) <= \<const1>\;
  subnet(22) <= \<const1>\;
  subnet(21) <= \<const1>\;
  subnet(20) <= \<const1>\;
  subnet(19) <= \<const1>\;
  subnet(18) <= \<const1>\;
  subnet(17) <= \<const1>\;
  subnet(16) <= \<const1>\;
  subnet(15) <= \<const1>\;
  subnet(14) <= \<const1>\;
  subnet(13) <= \<const1>\;
  subnet(12) <= \<const1>\;
  subnet(11) <= \<const1>\;
  subnet(10) <= \<const1>\;
  subnet(9) <= \<const1>\;
  subnet(8) <= \<const1>\;
  subnet(7) <= \<const1>\;
  subnet(6) <= \<const1>\;
  subnet(5) <= \<const1>\;
  subnet(4) <= \<const1>\;
  subnet(3) <= \<const1>\;
  subnet(2) <= \<const1>\;
  subnet(1) <= \<const1>\;
  subnet(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
