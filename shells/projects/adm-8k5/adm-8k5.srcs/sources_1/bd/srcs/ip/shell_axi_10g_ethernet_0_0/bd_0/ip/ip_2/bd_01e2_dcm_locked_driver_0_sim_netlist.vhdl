-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Fri May 11 11:46:44 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_test/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_sim_netlist.vhdl
-- Design      : bd_01e2_dcm_locked_driver_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_01e2_dcm_locked_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_01e2_dcm_locked_driver_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_01e2_dcm_locked_driver_0 : entity is "bd_01e2_dcm_locked_driver_0,xlconstant_v1_1_4_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_01e2_dcm_locked_driver_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_01e2_dcm_locked_driver_0 : entity is "xlconstant_v1_1_4_xlconstant,Vivado 2018.1";
end bd_01e2_dcm_locked_driver_0;

architecture STRUCTURE of bd_01e2_dcm_locked_driver_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
