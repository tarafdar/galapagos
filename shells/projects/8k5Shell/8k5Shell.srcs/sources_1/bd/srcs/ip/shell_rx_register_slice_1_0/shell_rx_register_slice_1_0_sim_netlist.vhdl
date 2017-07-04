-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon Jul  3 18:08:49 2017
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_rx_register_slice_1_0/shell_rx_register_slice_1_0_sim_netlist.vhdl
-- Design      : shell_rx_register_slice_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axisc_register_slice is
  port (
    Q : out STD_LOGIC_VECTOR ( 72 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    aclken : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 72 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axisc_register_slice : entity is "axis_register_slice_v1_1_11_axisc_register_slice";
end shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axisc_register_slice;

architecture STRUCTURE of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axisc_register_slice is
begin
\NO_READY.m_valid_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => s_axis_tvalid,
      Q => m_axis_tvalid,
      R => '0'
    );
\NO_READY.storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\NO_READY.storage_data1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\NO_READY.storage_data1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\NO_READY.storage_data1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\NO_READY.storage_data1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\NO_READY.storage_data1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\NO_READY.storage_data1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\NO_READY.storage_data1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\NO_READY.storage_data1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\NO_READY.storage_data1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(18),
      Q => Q(18),
      R => '0'
    );
\NO_READY.storage_data1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(19),
      Q => Q(19),
      R => '0'
    );
\NO_READY.storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\NO_READY.storage_data1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(20),
      Q => Q(20),
      R => '0'
    );
\NO_READY.storage_data1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(21),
      Q => Q(21),
      R => '0'
    );
\NO_READY.storage_data1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(22),
      Q => Q(22),
      R => '0'
    );
\NO_READY.storage_data1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(23),
      Q => Q(23),
      R => '0'
    );
\NO_READY.storage_data1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(24),
      Q => Q(24),
      R => '0'
    );
\NO_READY.storage_data1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(25),
      Q => Q(25),
      R => '0'
    );
\NO_READY.storage_data1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(26),
      Q => Q(26),
      R => '0'
    );
\NO_READY.storage_data1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(27),
      Q => Q(27),
      R => '0'
    );
\NO_READY.storage_data1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(28),
      Q => Q(28),
      R => '0'
    );
\NO_READY.storage_data1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(29),
      Q => Q(29),
      R => '0'
    );
\NO_READY.storage_data1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\NO_READY.storage_data1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(30),
      Q => Q(30),
      R => '0'
    );
\NO_READY.storage_data1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(31),
      Q => Q(31),
      R => '0'
    );
\NO_READY.storage_data1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(32),
      Q => Q(32),
      R => '0'
    );
\NO_READY.storage_data1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(33),
      Q => Q(33),
      R => '0'
    );
\NO_READY.storage_data1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(34),
      Q => Q(34),
      R => '0'
    );
\NO_READY.storage_data1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(35),
      Q => Q(35),
      R => '0'
    );
\NO_READY.storage_data1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(36),
      Q => Q(36),
      R => '0'
    );
\NO_READY.storage_data1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(37),
      Q => Q(37),
      R => '0'
    );
\NO_READY.storage_data1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(38),
      Q => Q(38),
      R => '0'
    );
\NO_READY.storage_data1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(39),
      Q => Q(39),
      R => '0'
    );
\NO_READY.storage_data1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\NO_READY.storage_data1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(40),
      Q => Q(40),
      R => '0'
    );
\NO_READY.storage_data1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(41),
      Q => Q(41),
      R => '0'
    );
\NO_READY.storage_data1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(42),
      Q => Q(42),
      R => '0'
    );
\NO_READY.storage_data1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(43),
      Q => Q(43),
      R => '0'
    );
\NO_READY.storage_data1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(44),
      Q => Q(44),
      R => '0'
    );
\NO_READY.storage_data1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(45),
      Q => Q(45),
      R => '0'
    );
\NO_READY.storage_data1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(46),
      Q => Q(46),
      R => '0'
    );
\NO_READY.storage_data1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(47),
      Q => Q(47),
      R => '0'
    );
\NO_READY.storage_data1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(48),
      Q => Q(48),
      R => '0'
    );
\NO_READY.storage_data1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(49),
      Q => Q(49),
      R => '0'
    );
\NO_READY.storage_data1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\NO_READY.storage_data1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(50),
      Q => Q(50),
      R => '0'
    );
\NO_READY.storage_data1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(51),
      Q => Q(51),
      R => '0'
    );
\NO_READY.storage_data1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(52),
      Q => Q(52),
      R => '0'
    );
\NO_READY.storage_data1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(53),
      Q => Q(53),
      R => '0'
    );
\NO_READY.storage_data1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(54),
      Q => Q(54),
      R => '0'
    );
\NO_READY.storage_data1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(55),
      Q => Q(55),
      R => '0'
    );
\NO_READY.storage_data1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(56),
      Q => Q(56),
      R => '0'
    );
\NO_READY.storage_data1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(57),
      Q => Q(57),
      R => '0'
    );
\NO_READY.storage_data1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(58),
      Q => Q(58),
      R => '0'
    );
\NO_READY.storage_data1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(59),
      Q => Q(59),
      R => '0'
    );
\NO_READY.storage_data1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\NO_READY.storage_data1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(60),
      Q => Q(60),
      R => '0'
    );
\NO_READY.storage_data1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(61),
      Q => Q(61),
      R => '0'
    );
\NO_READY.storage_data1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(62),
      Q => Q(62),
      R => '0'
    );
\NO_READY.storage_data1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(63),
      Q => Q(63),
      R => '0'
    );
\NO_READY.storage_data1_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(64),
      Q => Q(64),
      R => '0'
    );
\NO_READY.storage_data1_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(65),
      Q => Q(65),
      R => '0'
    );
\NO_READY.storage_data1_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(66),
      Q => Q(66),
      R => '0'
    );
\NO_READY.storage_data1_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(67),
      Q => Q(67),
      R => '0'
    );
\NO_READY.storage_data1_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(68),
      Q => Q(68),
      R => '0'
    );
\NO_READY.storage_data1_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(69),
      Q => Q(69),
      R => '0'
    );
\NO_READY.storage_data1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\NO_READY.storage_data1_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(70),
      Q => Q(70),
      R => '0'
    );
\NO_READY.storage_data1_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(71),
      Q => Q(71),
      R => '0'
    );
\NO_READY.storage_data1_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(72),
      Q => Q(72),
      R => '0'
    );
\NO_READY.storage_data1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\NO_READY.storage_data1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\NO_READY.storage_data1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => D(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is "32'b00000000000000000000000000011010";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is "kintexu";
  attribute C_REG_CONFIG : integer;
  attribute C_REG_CONFIG of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is "axis_register_slice_v1_1_11_axis_register_slice";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice : entity is 73;
end shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice;

architecture STRUCTURE of shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  s_axis_tready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
axisc_register_slice_0: entity work.shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axisc_register_slice
     port map (
      D(72) => s_axis_tlast,
      D(71 downto 64) => s_axis_tkeep(7 downto 0),
      D(63 downto 0) => s_axis_tdata(63 downto 0),
      Q(72) => m_axis_tlast,
      Q(71 downto 64) => m_axis_tkeep(7 downto 0),
      Q(63 downto 0) => m_axis_tdata(63 downto 0),
      aclk => aclk,
      aclken => aclken,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_rx_register_slice_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of shell_rx_register_slice_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shell_rx_register_slice_1_0 : entity is "shell_rx_register_slice_1_0,axis_register_slice_v1_1_11_axis_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shell_rx_register_slice_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shell_rx_register_slice_1_0 : entity is "axis_register_slice_v1_1_11_axis_register_slice,Vivado 2016.4";
end shell_rx_register_slice_1_0;

architecture STRUCTURE of shell_rx_register_slice_1_0 is
  signal NLW_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000011010";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "kintexu";
  attribute C_REG_CONFIG : integer;
  attribute C_REG_CONFIG of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 73;
begin
inst: entity work.shell_rx_register_slice_1_0_axis_register_slice_v1_1_11_axis_register_slice
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(7 downto 0) => m_axis_tkeep(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => '1',
      m_axis_tstrb(7 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(7 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => NLW_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(7 downto 0) => B"11111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
