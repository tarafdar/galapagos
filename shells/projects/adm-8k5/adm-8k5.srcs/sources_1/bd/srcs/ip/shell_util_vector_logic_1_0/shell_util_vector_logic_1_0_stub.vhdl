-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Sun May 13 22:51:02 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tarafdar/workDir/galapagos/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_util_vector_logic_1_0/shell_util_vector_logic_1_0_stub.vhdl
-- Design      : shell_util_vector_logic_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shell_util_vector_logic_1_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end shell_util_vector_logic_1_0;

architecture stub of shell_util_vector_logic_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.1";
begin
end;
