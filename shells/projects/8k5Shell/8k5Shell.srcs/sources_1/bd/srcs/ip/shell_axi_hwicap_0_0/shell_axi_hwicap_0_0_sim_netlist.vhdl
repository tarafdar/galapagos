-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon Jul  3 18:05:40 2017
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_hwicap_0_0/shell_axi_hwicap_0_0_sim_netlist.vhdl
-- Design      : shell_axi_hwicap_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_address_decoder is
  port (
    busip_1_reg : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    ip2bus_wrack_i_reg : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    ip2bus_rdack_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_WrAck0 : out STD_LOGIC;
    p_11_in : out STD_LOGIC;
    IP2Bus_RdAck0 : out STD_LOGIC;
    p_10_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \ip2bus_data_i_reg[0]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_wrack_i_reg_0 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sz_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    start2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    is_read : in STD_LOGIC;
    ip2bus_rdack_i : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    ip2bus_wrack_i : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    busip_1_reg_0 : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    wr_rst_busy_i2_out : in STD_LOGIC;
    ipbus_ack : in STD_LOGIC;
    ipbus_ack_fifo : in STD_LOGIC;
    p_5_out_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \Size_counter_i3_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    scndry_vect_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_data_count_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \rd_dc_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \cr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    scndry_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_1_in5_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    intr2bus_wrack : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    bus2ip_rnw_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_address_decoder : entity is "address_decoder";
end shell_axi_hwicap_0_0_address_decoder;

architecture STRUCTURE of shell_axi_hwicap_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[20]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[20]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[25]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[26]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[26]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[26]_i_4_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[27]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[27]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[28]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[28]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[29]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[29]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[30]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[30]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_3_n_0\ : STD_LOGIC;
  signal \^ip2bus_data_reg[31]\ : STD_LOGIC;
  signal IP2Bus_RdAck_i_2_n_0 : STD_LOGIC;
  signal IP2Bus_WrAck_i_2_n_0 : STD_LOGIC;
  signal \^ip2bus_wrack_reg\ : STD_LOGIC;
  signal \^busip_1_reg\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \ip2bus_data_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_reg\ : STD_LOGIC;
  signal ipbus_1_i_2_n_0 : STD_LOGIC;
  signal p_10_in_0 : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_in_1 : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_23_out : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_5_out_2 : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal pselect_hit_i_0 : STD_LOGIC;
  signal pselect_hit_i_1 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \IP2Bus_Data[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \IP2Bus_Data[20]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \IP2Bus_Data[20]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \IP2Bus_Data[25]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \IP2Bus_Data[26]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \IP2Bus_Data[26]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \IP2Bus_Data[27]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \IP2Bus_Data[27]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \IP2Bus_Data[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of IP2Bus_RdAck_i_2 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cr_i[0]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of intr2bus_rdack_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of intr2bus_wrack_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ip2bus_data_i[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of ip2bus_wrack_i_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of irpt_rdack_d1_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sz_i[0]_i_1\ : label is "soft_lutpair49";
begin
  \IP2Bus_Data_reg[31]\ <= \^ip2bus_data_reg[31]\;
  IP2Bus_WrAck_reg <= \^ip2bus_wrack_reg\;
  busip_1_reg <= \^busip_1_reg\;
  ip2bus_wrack_i_reg <= \^ip2bus_wrack_i_reg\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_wready <= \^s_axi_wready\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => start2,
      I2 => \^ip2bus_wrack_i_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^ip2bus_wrack_i_reg\,
      R => '0'
    );
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busip_1_reg\,
      I1 => \^ip2bus_wrack_i_reg\,
      O => \^ip2bus_data_reg[31]\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => pselect_hit_i_1,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(0),
      O => p_15_out
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_15_out,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => pselect_hit_i_1,
      I3 => \bus2ip_addr_i_reg[8]\(0),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_5_out_2
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_5_out_2,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => pselect_hit_i_1,
      O => p_4_out
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_4_out,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => pselect_hit_i_1,
      I3 => \bus2ip_addr_i_reg[8]\(0),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_3_out
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_3_out,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => pselect_hit_i_1,
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => p_2_out
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_2_out,
      Q => p_11_in_1,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => pselect_hit_i_1,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => p_1_out
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_1_out,
      Q => p_10_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => pselect_hit_i_1,
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => p_23_out
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => start2,
      I3 => \bus2ip_addr_i_reg[8]\(5),
      O => pselect_hit_i_1
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_23_out,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => pselect_hit_i_0,
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\,
      Q => \^ip2bus_wrack_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => pselect_hit_i_0,
      O => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\,
      Q => \^busip_1_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => pselect_hit_i_0,
      O => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => pselect_hit_i_0,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => pselect_hit_i_1,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(1),
      O => p_14_out
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_14_out,
      Q => p_23_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => pselect_hit_i_0,
      I3 => \bus2ip_addr_i_reg[8]\(2),
      O => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => pselect_hit_i_0,
      O => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => pselect_hit_i_0,
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_wready\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => pselect_hit_i_0,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => p_7_out
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => start2,
      I1 => \bus2ip_addr_i_reg[8]\(5),
      I2 => \bus2ip_addr_i_reg[8]\(6),
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => pselect_hit_i_0
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_7_out,
      Q => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => pselect_hit_i_1,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(0),
      O => p_13_out
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_13_out,
      Q => p_22_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => pselect_hit_i_1,
      O => p_12_out
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_12_out,
      Q => p_21_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => pselect_hit_i_1,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(1),
      O => p_11_out
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_11_out,
      Q => p_20_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      I4 => pselect_hit_i_1,
      O => p_10_out
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_10_out,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(0),
      I4 => pselect_hit_i_1,
      O => p_9_out
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_9_out,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => pselect_hit_i_1,
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => pselect_hit_i_1,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      I4 => \bus2ip_addr_i_reg[8]\(0),
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0\,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => pselect_hit_i_1,
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_6_out
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_6_out,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^ip2bus_wrack_i_reg\,
      I1 => irpt_wrack_d1,
      I2 => p_16_in,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\
    );
\IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(31),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(31),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(31)
    );
\IP2Bus_Data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(21),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(21),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(21)
    );
\IP2Bus_Data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(20),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(20),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(20)
    );
\IP2Bus_Data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(19),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(19),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(19)
    );
\IP2Bus_Data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(18),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(18),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(18)
    );
\IP2Bus_Data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(17),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(17),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(17)
    );
\IP2Bus_Data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(16),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(16),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(16)
    );
\IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(15),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(15),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(15)
    );
\IP2Bus_Data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(14),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(14),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(14)
    );
\IP2Bus_Data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(13),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(13),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(13)
    );
\IP2Bus_Data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(12),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(12),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(12)
    );
\IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(30),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(30),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(30)
    );
\IP2Bus_Data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[20]_i_2_n_0\,
      I1 => scndry_vect_out(11),
      I2 => \IP2Bus_Data[20]_i_3_n_0\,
      I3 => \Size_counter_i3_reg[0]\(11),
      I4 => p_5_out_0(11),
      I5 => \^ip2bus_data_reg[31]\,
      O => D(11)
    );
\IP2Bus_Data[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I1 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[20]_i_2_n_0\
    );
\IP2Bus_Data[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_6_in,
      I1 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[20]_i_3_n_0\
    );
\IP2Bus_Data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[20]_i_2_n_0\,
      I1 => scndry_vect_out(10),
      I2 => \IP2Bus_Data[20]_i_3_n_0\,
      I3 => \Size_counter_i3_reg[0]\(10),
      I4 => p_5_out_0(10),
      I5 => \^ip2bus_data_reg[31]\,
      O => D(10)
    );
\IP2Bus_Data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[20]_i_2_n_0\,
      I1 => scndry_vect_out(9),
      I2 => \IP2Bus_Data[20]_i_3_n_0\,
      I3 => \Size_counter_i3_reg[0]\(9),
      I4 => p_5_out_0(9),
      I5 => \^ip2bus_data_reg[31]\,
      O => D(9)
    );
\IP2Bus_Data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[20]_i_2_n_0\,
      I1 => scndry_vect_out(8),
      I2 => \IP2Bus_Data[20]_i_3_n_0\,
      I3 => \Size_counter_i3_reg[0]\(8),
      I4 => p_5_out_0(8),
      I5 => \^ip2bus_data_reg[31]\,
      O => D(8)
    );
\IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[20]_i_2_n_0\,
      I1 => scndry_vect_out(7),
      I2 => \IP2Bus_Data[20]_i_3_n_0\,
      I3 => \Size_counter_i3_reg[0]\(7),
      I4 => p_5_out_0(7),
      I5 => \^ip2bus_data_reg[31]\,
      O => D(7)
    );
\IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0808080"
    )
        port map (
      I0 => p_5_out_0(6),
      I1 => \^busip_1_reg\,
      I2 => \^ip2bus_wrack_i_reg\,
      I3 => p_6_in,
      I4 => \Size_counter_i3_reg[0]\(6),
      I5 => \IP2Bus_Data[25]_i_2_n_0\,
      O => D(6)
    );
\IP2Bus_Data[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \rd_dc_i_reg[6]\(6),
      I1 => p_2_in,
      I2 => scndry_vect_out(6),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[25]_i_2_n_0\
    );
\IP2Bus_Data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \IP2Bus_Data[26]_i_2_n_0\,
      I1 => p_6_in,
      I2 => \Size_counter_i3_reg[0]\(5),
      I3 => p_5_out_0(5),
      I4 => \^busip_1_reg\,
      I5 => \^ip2bus_wrack_i_reg\,
      O => D(5)
    );
\IP2Bus_Data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \IP2Bus_Data[26]_i_3_n_0\,
      I1 => \wr_data_count_i_reg[5]\(5),
      I2 => \IP2Bus_Data[20]_i_2_n_0\,
      I3 => scndry_vect_out(5),
      I4 => \rd_dc_i_reg[6]\(5),
      I5 => \IP2Bus_Data[26]_i_4_n_0\,
      O => \IP2Bus_Data[26]_i_2_n_0\
    );
\IP2Bus_Data[26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_3_in,
      I1 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[26]_i_3_n_0\
    );
\IP2Bus_Data[26]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[26]_i_4_n_0\
    );
\IP2Bus_Data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \^ip2bus_data_reg[31]\,
      I1 => p_5_out_0(4),
      I2 => \IP2Bus_Data[27]_i_2_n_0\,
      I3 => \IP2Bus_Data[20]_i_2_n_0\,
      I4 => scndry_vect_out(4),
      I5 => \IP2Bus_Data[27]_i_3_n_0\,
      O => D(4)
    );
\IP2Bus_Data[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \Size_counter_i3_reg[0]\(4),
      I1 => p_6_in,
      I2 => \rd_dc_i_reg[6]\(4),
      I3 => p_2_in,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[27]_i_2_n_0\
    );
\IP2Bus_Data[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4440000"
    )
        port map (
      I0 => \wr_data_count_i_reg[5]\(4),
      I1 => p_3_in,
      I2 => \cr_i_reg[0]\(4),
      I3 => p_5_in,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[27]_i_3_n_0\
    );
\IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \^ip2bus_data_reg[31]\,
      I1 => p_5_out_0(3),
      I2 => \IP2Bus_Data[28]_i_2_n_0\,
      I3 => \IP2Bus_Data[20]_i_2_n_0\,
      I4 => scndry_vect_out(3),
      I5 => \IP2Bus_Data[28]_i_3_n_0\,
      O => D(3)
    );
\IP2Bus_Data[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \Size_counter_i3_reg[0]\(3),
      I1 => p_6_in,
      I2 => \rd_dc_i_reg[6]\(3),
      I3 => p_2_in,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[28]_i_2_n_0\
    );
\IP2Bus_Data[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4440000"
    )
        port map (
      I0 => \wr_data_count_i_reg[5]\(3),
      I1 => p_3_in,
      I2 => \cr_i_reg[0]\(3),
      I3 => p_5_in,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[28]_i_3_n_0\
    );
\IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \IP2Bus_Data[29]_i_2_n_0\,
      I1 => \^ip2bus_data_reg[31]\,
      I2 => p_5_out_0(2),
      I3 => \IP2Bus_Data[29]_i_3_n_0\,
      I4 => \IP2Bus_Data[20]_i_3_n_0\,
      I5 => \Size_counter_i3_reg[0]\(2),
      O => D(2)
    );
\IP2Bus_Data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \IP2Bus_Data[26]_i_3_n_0\,
      I1 => \wr_data_count_i_reg[5]\(2),
      I2 => \IP2Bus_Data[20]_i_2_n_0\,
      I3 => scndry_vect_out(2),
      I4 => \rd_dc_i_reg[6]\(2),
      I5 => \IP2Bus_Data[26]_i_4_n_0\,
      O => \IP2Bus_Data[29]_i_2_n_0\
    );
\IP2Bus_Data[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \cr_i_reg[0]\(2),
      I1 => p_5_in,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I3 => p_4_in,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[29]_i_3_n_0\
    );
\IP2Bus_Data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(29),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(29),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(29)
    );
\IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \IP2Bus_Data[30]_i_2_n_0\,
      I1 => \^ip2bus_data_reg[31]\,
      I2 => p_5_out_0(1),
      I3 => \IP2Bus_Data[30]_i_3_n_0\,
      I4 => \IP2Bus_Data[20]_i_3_n_0\,
      I5 => \Size_counter_i3_reg[0]\(1),
      O => D(1)
    );
\IP2Bus_Data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \IP2Bus_Data[26]_i_3_n_0\,
      I1 => \wr_data_count_i_reg[5]\(1),
      I2 => \IP2Bus_Data[20]_i_2_n_0\,
      I3 => scndry_vect_out(1),
      I4 => \rd_dc_i_reg[6]\(1),
      I5 => \IP2Bus_Data[26]_i_4_n_0\,
      O => \IP2Bus_Data[30]_i_2_n_0\
    );
\IP2Bus_Data[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \cr_i_reg[0]\(1),
      I1 => p_5_in,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I3 => p_4_in,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[30]_i_3_n_0\
    );
\IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \^ip2bus_data_reg[31]\,
      I2 => p_5_out_0(0),
      I3 => \IP2Bus_Data[31]_i_3_n_0\,
      I4 => \IP2Bus_Data[20]_i_3_n_0\,
      I5 => \Size_counter_i3_reg[0]\(0),
      O => D(0)
    );
\IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \IP2Bus_Data[26]_i_3_n_0\,
      I1 => \wr_data_count_i_reg[5]\(0),
      I2 => \IP2Bus_Data[20]_i_2_n_0\,
      I3 => scndry_vect_out(0),
      I4 => \rd_dc_i_reg[6]\(0),
      I5 => \IP2Bus_Data[26]_i_4_n_0\,
      O => \IP2Bus_Data[31]_i_2_n_0\
    );
\IP2Bus_Data[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \cr_i_reg[0]\(0),
      I1 => p_5_in,
      I2 => scndry_out,
      I3 => p_4_in,
      I4 => \^ip2bus_wrack_i_reg\,
      O => \IP2Bus_Data[31]_i_3_n_0\
    );
\IP2Bus_Data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(28),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(28),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(28)
    );
\IP2Bus_Data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(27),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(27),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(27)
    );
\IP2Bus_Data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(26),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(26),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(26)
    );
\IP2Bus_Data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(25),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(25),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(25)
    );
\IP2Bus_Data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(24),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(24),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(24)
    );
\IP2Bus_Data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(23),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(23),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(23)
    );
\IP2Bus_Data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_5_out_0(22),
      I1 => \^busip_1_reg\,
      I2 => scndry_vect_out(22),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => \^ip2bus_wrack_i_reg\,
      O => D(22)
    );
IP2Bus_RdAck_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8A8A8A0A0A0A0"
    )
        port map (
      I0 => ipbus_ack,
      I1 => ipbus_1_i_2_n_0,
      I2 => IP2Bus_RdAck_i_2_n_0,
      I3 => ipbus_ack_fifo,
      I4 => \^busip_1_reg\,
      I5 => \^ip2bus_wrack_i_reg\,
      O => IP2Bus_RdAck0
    );
IP2Bus_RdAck_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => p_6_in,
      I1 => \^ip2bus_wrack_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      O => IP2Bus_RdAck_i_2_n_0
    );
IP2Bus_WrAck_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC8888C888"
    )
        port map (
      I0 => IP2Bus_WrAck_i_2_n_0,
      I1 => busip_1_reg_0,
      I2 => ram_full_i_reg,
      I3 => \^ip2bus_wrack_reg\,
      I4 => wr_rst_busy_i2_out,
      I5 => ipbus_1_i_2_n_0,
      O => IP2Bus_WrAck0
    );
IP2Bus_WrAck_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I1 => p_6_in,
      I2 => \^busip_1_reg\,
      O => IP2Bus_WrAck_i_2_n_0
    );
busip_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0F0F0E"
    )
        port map (
      I0 => ipbus_1_i_2_n_0,
      I1 => \^ip2bus_wrack_reg\,
      I2 => \^ip2bus_wrack_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I4 => p_6_in,
      I5 => \^busip_1_reg\,
      O => p_11_in
    );
\cr_i[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in,
      I1 => \^ip2bus_wrack_i_reg\,
      O => E(0)
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => \^ip2bus_wrack_i_reg\,
      I2 => p_16_in,
      I3 => p_17_in,
      I4 => p_14_in,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => p_17_in,
      I1 => p_14_in,
      I2 => p_16_in,
      I3 => irpt_wrack_d1,
      I4 => \^ip2bus_wrack_i_reg\,
      O => interrupt_wrce_strb
    );
\ip2bus_data_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ip2bus_data_i[0]_i_3_n_0\,
      I1 => \^ip2bus_wrack_i_reg\,
      O => ip2bus_rdack_i_reg(0)
    );
\ip2bus_data_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \^ip2bus_wrack_i_reg\,
      I1 => p_16_in,
      I2 => p_14_in,
      I3 => p_17_in,
      I4 => ipif_glbl_irpt_enable_reg,
      I5 => \IP2Bus_Data_reg[0]\(4),
      O => \ip2bus_data_i_reg[0]\(4)
    );
\ip2bus_data_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
        port map (
      I0 => \ip2bus_data_i[0]_i_4_n_0\,
      I1 => p_16_in,
      I2 => p_17_in,
      I3 => p_14_in,
      I4 => \ip2bus_data_i[0]_i_5_n_0\,
      I5 => s_axi_aresetn,
      O => \ip2bus_data_i[0]_i_3_n_0\
    );
\ip2bus_data_i[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_24_in,
      I1 => p_23_in,
      I2 => p_22_in,
      I3 => ipbus_1_i_2_n_0,
      O => \ip2bus_data_i[0]_i_4_n_0\
    );
\ip2bus_data_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \ip2bus_data_i[0]_i_6_n_0\,
      I1 => \ip2bus_data_i[0]_i_7_n_0\,
      I2 => p_18_in,
      I3 => p_19_in,
      I4 => p_20_in,
      I5 => p_21_in,
      O => \ip2bus_data_i[0]_i_5_n_0\
    );
\ip2bus_data_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_10_in_0,
      I1 => p_9_in,
      I2 => \^ip2bus_wrack_reg\,
      I3 => \^busip_1_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I5 => p_6_in,
      O => \ip2bus_data_i[0]_i_6_n_0\
    );
\ip2bus_data_i[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_11_in_1,
      I1 => p_12_in,
      I2 => p_13_in,
      I3 => p_15_in,
      O => \ip2bus_data_i[0]_i_7_n_0\
    );
\ip2bus_data_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFAAAAAEEAAAAAA"
    )
        port map (
      I0 => \IP2Bus_Data_reg[0]\(3),
      I1 => p_1_in,
      I2 => \ip_irpt_enable_reg_reg[3]_0\(3),
      I3 => p_16_in,
      I4 => \^ip2bus_wrack_i_reg\,
      I5 => p_14_in,
      O => \ip2bus_data_i_reg[0]\(3)
    );
\ip2bus_data_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFAAAAAEEAAAAAA"
    )
        port map (
      I0 => \IP2Bus_Data_reg[0]\(2),
      I1 => p_1_in2_in,
      I2 => \ip_irpt_enable_reg_reg[3]_0\(2),
      I3 => p_16_in,
      I4 => \^ip2bus_wrack_i_reg\,
      I5 => p_14_in,
      O => \ip2bus_data_i_reg[0]\(2)
    );
\ip2bus_data_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFAAAAAEEAAAAAA"
    )
        port map (
      I0 => \IP2Bus_Data_reg[0]\(1),
      I1 => p_1_in5_in,
      I2 => \ip_irpt_enable_reg_reg[3]_0\(1),
      I3 => p_16_in,
      I4 => \^ip2bus_wrack_i_reg\,
      I5 => p_14_in,
      O => \ip2bus_data_i_reg[0]\(1)
    );
\ip2bus_data_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFAAAAAEEAAAAAA"
    )
        port map (
      I0 => \IP2Bus_Data_reg[0]\(0),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      I2 => \ip_irpt_enable_reg_reg[3]_0\(0),
      I3 => p_16_in,
      I4 => \^ip2bus_wrack_i_reg\,
      I5 => p_14_in,
      O => \ip2bus_data_i_reg[0]\(0)
    );
ip2bus_wrack_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => intr2bus_wrack,
      I1 => p_5_out,
      I2 => \^ip2bus_wrack_i_reg\,
      I3 => \ip2bus_data_i[0]_i_3_n_0\,
      O => ip2bus_wrack_i_reg_0
    );
\ip_irpt_enable_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_14_in,
      I1 => \^ip2bus_wrack_i_reg\,
      O => \ip_irpt_enable_reg_reg[3]\(0)
    );
ipbus_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00FE00"
    )
        port map (
      I0 => p_6_in,
      I1 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23]\,
      I2 => \^busip_1_reg\,
      I3 => \^ip2bus_wrack_i_reg\,
      I4 => ipbus_1_i_2_n_0,
      I5 => \^ip2bus_wrack_reg\,
      O => p_10_in
    );
ipbus_1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in,
      I2 => p_2_in,
      I3 => p_3_in,
      O => ipbus_1_i_2_n_0
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_17_in,
      I2 => \^ip2bus_wrack_i_reg\,
      I3 => ipif_glbl_irpt_enable_reg,
      O => ipif_glbl_irpt_enable_reg_reg
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => p_16_in,
      I1 => p_17_in,
      I2 => p_14_in,
      I3 => \^ip2bus_wrack_i_reg\,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => p_16_in,
      I1 => p_17_in,
      I2 => p_14_in,
      I3 => \^ip2bus_wrack_i_reg\,
      O => irpt_wrack
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => Q(0),
      I2 => is_read,
      I3 => Q(2),
      I4 => Q(1),
      I5 => ip2bus_rdack_i,
      O => \^s_axi_arready\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => Q(0),
      I2 => is_write_reg,
      I3 => Q(2),
      I4 => Q(1),
      I5 => ip2bus_wrack_i,
      O => \^s_axi_wready\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      O => s_axi_wready_INST_0_i_1_n_0
    );
\sz_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_6_in,
      I1 => \^ip2bus_wrack_i_reg\,
      O => \sz_i_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_cdc_sync is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_cdc_sync : entity is "cdc_sync";
end shell_axi_hwicap_0_0_cdc_sync;

architecture STRUCTURE of shell_axi_hwicap_0_0_cdc_sync is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_11 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_11 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_11 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_11,
      Q => s_level_out_bus_d2_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_11,
      Q => s_level_out_bus_d3_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => scndry_vect_out(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_11,
      Q => scndry_vect_out(11),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => scndry_vect_out(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => scndry_vect_out(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => scndry_vect_out(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => scndry_vect_out(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => scndry_vect_out(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => scndry_vect_out(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(11),
      Q => s_level_out_bus_d1_cdc_to_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_cdc_sync_0 is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \size_cs_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_cdc_sync_0 : entity is "cdc_sync";
end shell_axi_hwicap_0_0_cdc_sync_0;

architecture STRUCTURE of shell_axi_hwicap_0_0_cdc_sync_0 is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_11 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_11 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_11 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_11,
      Q => s_level_out_bus_d2_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_11,
      Q => s_level_out_bus_d3_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => scndry_vect_out(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_11,
      Q => scndry_vect_out(11),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => scndry_vect_out(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => scndry_vect_out(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => scndry_vect_out(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => scndry_vect_out(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => scndry_vect_out(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => scndry_vect_out(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(11),
      Q => s_level_out_bus_d1_cdc_to_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \size_cs_reg[0]\(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized0\ is
  port (
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized0\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized0\ is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_11 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_12 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_13 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_14 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_15 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_16 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_17 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_18 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_19 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_20 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_21 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_22 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_23 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_24 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_25 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_26 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_27 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_28 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_29 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_30 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_31 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_11 : STD_LOGIC;
  signal s_level_out_bus_d2_12 : STD_LOGIC;
  signal s_level_out_bus_d2_13 : STD_LOGIC;
  signal s_level_out_bus_d2_14 : STD_LOGIC;
  signal s_level_out_bus_d2_15 : STD_LOGIC;
  signal s_level_out_bus_d2_16 : STD_LOGIC;
  signal s_level_out_bus_d2_17 : STD_LOGIC;
  signal s_level_out_bus_d2_18 : STD_LOGIC;
  signal s_level_out_bus_d2_19 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_20 : STD_LOGIC;
  signal s_level_out_bus_d2_21 : STD_LOGIC;
  signal s_level_out_bus_d2_22 : STD_LOGIC;
  signal s_level_out_bus_d2_23 : STD_LOGIC;
  signal s_level_out_bus_d2_24 : STD_LOGIC;
  signal s_level_out_bus_d2_25 : STD_LOGIC;
  signal s_level_out_bus_d2_26 : STD_LOGIC;
  signal s_level_out_bus_d2_27 : STD_LOGIC;
  signal s_level_out_bus_d2_28 : STD_LOGIC;
  signal s_level_out_bus_d2_29 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_30 : STD_LOGIC;
  signal s_level_out_bus_d2_31 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_11 : STD_LOGIC;
  signal s_level_out_bus_d3_12 : STD_LOGIC;
  signal s_level_out_bus_d3_13 : STD_LOGIC;
  signal s_level_out_bus_d3_14 : STD_LOGIC;
  signal s_level_out_bus_d3_15 : STD_LOGIC;
  signal s_level_out_bus_d3_16 : STD_LOGIC;
  signal s_level_out_bus_d3_17 : STD_LOGIC;
  signal s_level_out_bus_d3_18 : STD_LOGIC;
  signal s_level_out_bus_d3_19 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_20 : STD_LOGIC;
  signal s_level_out_bus_d3_21 : STD_LOGIC;
  signal s_level_out_bus_d3_22 : STD_LOGIC;
  signal s_level_out_bus_d3_23 : STD_LOGIC;
  signal s_level_out_bus_d3_24 : STD_LOGIC;
  signal s_level_out_bus_d3_25 : STD_LOGIC;
  signal s_level_out_bus_d3_26 : STD_LOGIC;
  signal s_level_out_bus_d3_27 : STD_LOGIC;
  signal s_level_out_bus_d3_28 : STD_LOGIC;
  signal s_level_out_bus_d3_29 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_30 : STD_LOGIC;
  signal s_level_out_bus_d3_31 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_11,
      Q => s_level_out_bus_d2_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_12,
      Q => s_level_out_bus_d2_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_13,
      Q => s_level_out_bus_d2_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_14,
      Q => s_level_out_bus_d2_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_15,
      Q => s_level_out_bus_d2_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_16,
      Q => s_level_out_bus_d2_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_17,
      Q => s_level_out_bus_d2_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_18,
      Q => s_level_out_bus_d2_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_19,
      Q => s_level_out_bus_d2_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_20,
      Q => s_level_out_bus_d2_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_21,
      Q => s_level_out_bus_d2_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_22,
      Q => s_level_out_bus_d2_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_23,
      Q => s_level_out_bus_d2_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_24,
      Q => s_level_out_bus_d2_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_25,
      Q => s_level_out_bus_d2_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_26,
      Q => s_level_out_bus_d2_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_27,
      Q => s_level_out_bus_d2_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_28,
      Q => s_level_out_bus_d2_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_29,
      Q => s_level_out_bus_d2_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_30,
      Q => s_level_out_bus_d2_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_31,
      Q => s_level_out_bus_d2_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_11,
      Q => s_level_out_bus_d3_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_12,
      Q => s_level_out_bus_d3_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_13,
      Q => s_level_out_bus_d3_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_14,
      Q => s_level_out_bus_d3_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_15,
      Q => s_level_out_bus_d3_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_16,
      Q => s_level_out_bus_d3_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_17,
      Q => s_level_out_bus_d3_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_18,
      Q => s_level_out_bus_d3_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_19,
      Q => s_level_out_bus_d3_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_20,
      Q => s_level_out_bus_d3_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_21,
      Q => s_level_out_bus_d3_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_22,
      Q => s_level_out_bus_d3_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_23,
      Q => s_level_out_bus_d3_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_24,
      Q => s_level_out_bus_d3_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_25,
      Q => s_level_out_bus_d3_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_26,
      Q => s_level_out_bus_d3_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_27,
      Q => s_level_out_bus_d3_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_28,
      Q => s_level_out_bus_d3_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_29,
      Q => s_level_out_bus_d3_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_30,
      Q => s_level_out_bus_d3_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_31,
      Q => s_level_out_bus_d3_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => \IP2Bus_Data_reg[0]\(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => \IP2Bus_Data_reg[0]\(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_11,
      Q => \IP2Bus_Data_reg[0]\(11),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_12,
      Q => \IP2Bus_Data_reg[0]\(12),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_13,
      Q => \IP2Bus_Data_reg[0]\(13),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_14,
      Q => \IP2Bus_Data_reg[0]\(14),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_15,
      Q => \IP2Bus_Data_reg[0]\(15),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_16,
      Q => \IP2Bus_Data_reg[0]\(16),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_17,
      Q => \IP2Bus_Data_reg[0]\(17),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_18,
      Q => \IP2Bus_Data_reg[0]\(18),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_19,
      Q => \IP2Bus_Data_reg[0]\(19),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => \IP2Bus_Data_reg[0]\(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_20,
      Q => \IP2Bus_Data_reg[0]\(20),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_21,
      Q => \IP2Bus_Data_reg[0]\(21),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_22,
      Q => \IP2Bus_Data_reg[0]\(22),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_23,
      Q => \IP2Bus_Data_reg[0]\(23),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_24,
      Q => \IP2Bus_Data_reg[0]\(24),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_25,
      Q => \IP2Bus_Data_reg[0]\(25),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_26,
      Q => \IP2Bus_Data_reg[0]\(26),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_27,
      Q => \IP2Bus_Data_reg[0]\(27),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_28,
      Q => \IP2Bus_Data_reg[0]\(28),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_29,
      Q => \IP2Bus_Data_reg[0]\(29),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => \IP2Bus_Data_reg[0]\(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_30,
      Q => \IP2Bus_Data_reg[0]\(30),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_31,
      Q => \IP2Bus_Data_reg[0]\(31),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => \IP2Bus_Data_reg[0]\(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => \IP2Bus_Data_reg[0]\(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => \IP2Bus_Data_reg[0]\(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => \IP2Bus_Data_reg[0]\(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => \IP2Bus_Data_reg[0]\(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => \IP2Bus_Data_reg[0]\(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => \IP2Bus_Data_reg[0]\(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(11),
      Q => s_level_out_bus_d1_cdc_to_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(12),
      Q => s_level_out_bus_d1_cdc_to_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(13),
      Q => s_level_out_bus_d1_cdc_to_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(14),
      Q => s_level_out_bus_d1_cdc_to_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(15),
      Q => s_level_out_bus_d1_cdc_to_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(16),
      Q => s_level_out_bus_d1_cdc_to_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(17),
      Q => s_level_out_bus_d1_cdc_to_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(18),
      Q => s_level_out_bus_d1_cdc_to_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(19),
      Q => s_level_out_bus_d1_cdc_to_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(20),
      Q => s_level_out_bus_d1_cdc_to_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(21),
      Q => s_level_out_bus_d1_cdc_to_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(22),
      Q => s_level_out_bus_d1_cdc_to_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(23),
      Q => s_level_out_bus_d1_cdc_to_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(24),
      Q => s_level_out_bus_d1_cdc_to_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(25),
      Q => s_level_out_bus_d1_cdc_to_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(26),
      Q => s_level_out_bus_d1_cdc_to_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(27),
      Q => s_level_out_bus_d1_cdc_to_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(28),
      Q => s_level_out_bus_d1_cdc_to_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(29),
      Q => s_level_out_bus_d1_cdc_to_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(30),
      Q => s_level_out_bus_d1_cdc_to_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(31),
      Q => s_level_out_bus_d1_cdc_to_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized1\ is
  port (
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in2_in : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized1\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized1\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized1\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal wrfifo_empty : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => wrfifo_empty,
      R => '0'
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FF2F22"
    )
        port map (
      I0 => wrfifo_empty,
      I1 => sw_reset_reg,
      I2 => Bus_RNW_reg_reg,
      I3 => s_axi_wdata(0),
      I4 => p_1_in2_in,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized10\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    scndry_out : out STD_LOGIC;
    count_reset_cs : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized10\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized10\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized10\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
\count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => count_reset_cs,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized2\ is
  port (
    \RD_FIFO.fifo_full_mask_reg\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    fifo_full_mask : in STD_LOGIC;
    rdfifo_full_d1 : in STD_LOGIC;
    abort_onreset : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized2\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized2\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized2\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => \^scndry_out\,
      R => '0'
    );
\RD_FIFO.fifo_full_mask_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AE"
    )
        port map (
      I0 => fifo_full_mask,
      I1 => rdfifo_full_d1,
      I2 => \^scndry_out\,
      I3 => abort_onreset,
      I4 => fifo_rst,
      I5 => sw_reset_reg,
      O => \RD_FIFO.fifo_full_mask_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized3\ is
  port (
    \size_cs_reg[11]\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gate_signal_p_reg : in STD_LOGIC;
    rnc : in STD_LOGIC_VECTOR ( 0 to 1 );
    \cr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized3\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized3\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized3\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[0]\(0),
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
\size_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \FSM_sequential_icap_nstate_cs_reg[1]\(0),
      I1 => \FSM_sequential_icap_nstate_cs_reg[1]\(1),
      I2 => gate_signal_p_reg,
      I3 => \^scndry_out\,
      I4 => rnc(0),
      I5 => rnc(1),
      O => \size_cs_reg[11]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized4\ is
  port (
    Send_done_cs_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[2]\ : out STD_LOGIC;
    gate_signal_p_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ : in STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cr_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized4\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized4\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized4\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_icap_nstate_cs[2]_i_5\ : label is "soft_lutpair1";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of Send_done_cs_i_2 : label is "soft_lutpair1";
begin
  scndry_out <= \^scndry_out\;
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF0010"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I3 => prmry_in,
      I4 => \FSM_sequential_icap_nstate_cs_reg[1]_0\(1),
      I5 => \FSM_sequential_icap_nstate_cs_reg[1]_0\(0),
      O => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\
    );
\FSM_sequential_icap_nstate_cs[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AABA0510"
    )
        port map (
      I0 => \FSM_sequential_icap_nstate_cs_reg[1]_0\(1),
      I1 => gate_signal_p_reg,
      I2 => \^scndry_out\,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I4 => prmry_in,
      I5 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      O => \FSM_sequential_icap_nstate_cs_reg[1]\
    );
\FSM_sequential_icap_nstate_cs[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => gate_signal_p_reg,
      I1 => \^scndry_out\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      O => \FSM_sequential_icap_nstate_cs_reg[2]\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[3]\(0),
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
Send_done_cs_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDAD"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => gate_signal_p_reg,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I3 => prmry_in,
      O => Send_done_cs_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized5\ is
  port (
    \FSM_sequential_icap_nstate_cs_reg[0]\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[2]\ : out STD_LOGIC;
    Send_done_cs_reg : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ : in STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gate_signal_p_reg : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    \cr_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized5\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized5\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized5\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\FSM_sequential_icap_nstate_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFE0000FFFFFF"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      I3 => \FSM_sequential_icap_nstate_cs_reg[2]_0\(2),
      I4 => \FSM_sequential_icap_nstate_cs_reg[2]_0\(1),
      I5 => \FSM_sequential_icap_nstate_cs_reg[2]_0\(0),
      O => \FSM_sequential_icap_nstate_cs_reg[0]\
    );
\FSM_sequential_icap_nstate_cs[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEFF"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      I3 => \FSM_sequential_icap_nstate_cs_reg[2]_0\(0),
      I4 => \FSM_sequential_icap_nstate_cs_reg[2]_0\(1),
      O => \FSM_sequential_icap_nstate_cs_reg[2]\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[4]\(0),
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
Send_done_cs_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000DD003F"
    )
        port map (
      I0 => gate_signal_p_reg,
      I1 => \^scndry_out\,
      I2 => prmry_in,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I5 => \FSM_sequential_icap_nstate_cs_reg[2]_0\(1),
      O => Send_done_cs_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized6\ is
  port (
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized6\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized6\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized6\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \IP2Bus_Data_reg[31]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized7\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    abort_onreset0 : out STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    \cr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_cr_cs_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized7\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized7\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized7\ is
  signal reset_cr_icap2bus : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of abort_onreset_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cr_i[0]_i_1\ : label is "soft_lutpair0";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_cr_cs_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => reset_cr_icap2bus,
      R => '0'
    );
abort_onreset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset_cr_icap2bus,
      I1 => \cr_i_reg[0]\(0),
      O => abort_onreset0
    );
\cr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_cr_icap2bus,
      I1 => sw_reset_reg,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized8\ is
  port (
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    hang_status_cs_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized8\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized8\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized8\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => hang_status_cs_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \IP2Bus_Data_reg[30]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_cdc_sync__parameterized9\ is
  port (
    \IP2Bus_Data_reg[29]\ : out STD_LOGIC;
    icap_ce_cs_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_cdc_sync__parameterized9\ : entity is "cdc_sync";
end \shell_axi_hwicap_0_0_cdc_sync__parameterized9\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_cdc_sync__parameterized9\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => icap_ce_cs_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \IP2Bus_Data_reg[29]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_icap_statemachine is
  port (
    \out\ : out STD_LOGIC;
    icap_we_cs_reg_0 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sr_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rdfifo_wren : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    count_reset_cs : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ : out STD_LOGIC;
    abort_i_cs_reg_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \GEN_FUNCTIONAL_UNISIM.abort_detect_reg\ : out STD_LOGIC;
    \GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg\ : out STD_LOGIC;
    \GEN_FUNCTIONAL_UNISIM.same_cycle_reg\ : out STD_LOGIC;
    wrfifo_rden : out STD_LOGIC;
    \icap_status_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    in0 : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_aclk : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gate_icap_p : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0\ : in STD_LOGIC;
    same_cycle : in STD_LOGIC;
    rdwr_int1 : in STD_LOGIC;
    abort_del1 : in STD_LOGIC;
    abort_del3 : in STD_LOGIC;
    abort_del2 : in STD_LOGIC;
    ce_del3 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[0]_0\ : in STD_LOGIC;
    gate_signal_p_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ : in STD_LOGIC;
    gate_signal_p_reg_0 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ : in STD_LOGIC;
    gate_signal_p_reg_1 : in STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[1]_0\ : in STD_LOGIC;
    scndry_vect_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_icap_statemachine : entity is "icap_statemachine";
end shell_axi_hwicap_0_0_icap_statemachine;

architecture STRUCTURE of shell_axi_hwicap_0_0_icap_statemachine is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_icap_nstate_cs_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\ : STD_LOGIC;
  signal Icap_busy_inferred_i_2_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Send_done_cs_i_1_n_0 : STD_LOGIC;
  signal Send_done_ns : STD_LOGIC;
  signal Wrfifo_empty_r : STD_LOGIC;
  signal Wrfifo_empty_r1 : STD_LOGIC;
  signal abort_cs : STD_LOGIC;
  signal abort_i_cs : STD_LOGIC;
  signal abort_i_cs2 : STD_LOGIC;
  signal abort_i_cs_i_2_n_0 : STD_LOGIC;
  signal \^abort_i_cs_reg_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of abort_i_cs_reg_0 : signal is "yes";
  signal abort_i_ns : STD_LOGIC;
  signal abort_ns : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal count0 : STD_LOGIC;
  signal \count[2]_i_3_n_0\ : STD_LOGIC;
  signal count_enable_cs : STD_LOGIC;
  signal count_enable_cs_i_1_n_0 : STD_LOGIC;
  signal count_enable_cs_i_2_n_0 : STD_LOGIC;
  signal \^count_reset_cs\ : STD_LOGIC;
  signal count_reset_cs_i_1_n_0 : STD_LOGIC;
  signal count_reset_ns : STD_LOGIC;
  signal eqOp16_in : STD_LOGIC;
  signal gtOp_carry_i_10_n_0 : STD_LOGIC;
  signal gtOp_carry_i_11_n_0 : STD_LOGIC;
  signal gtOp_carry_i_12_n_0 : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_i_9_n_0 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal gtOp_carry_n_5 : STD_LOGIC;
  signal gtOp_carry_n_6 : STD_LOGIC;
  signal gtOp_carry_n_7 : STD_LOGIC;
  signal hang_status_cs_i_1_n_0 : STD_LOGIC;
  signal hang_status_cs_i_2_n_0 : STD_LOGIC;
  signal hang_status_cs_i_3_n_0 : STD_LOGIC;
  signal hang_status_cs_i_4_n_0 : STD_LOGIC;
  signal icap_ce_cs_i_1_n_0 : STD_LOGIC;
  signal icap_ce_cs_i_2_n_0 : STD_LOGIC;
  signal icap_ce_cs_i_5_n_0 : STD_LOGIC;
  signal icap_ce_cs_i_6_n_0 : STD_LOGIC;
  signal icap_ce_ns : STD_LOGIC;
  signal icap_ce_ns15_out : STD_LOGIC;
  signal icap_nstate_cs : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute RTL_KEEP of icap_nstate_cs : signal is "yes";
  signal \^icap_status_i_reg[8]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal icap_we_cs_i_1_n_0 : STD_LOGIC;
  signal icap_we_cs_i_2_n_0 : STD_LOGIC;
  signal \^icap_we_cs_reg_0\ : STD_LOGIC;
  attribute RTL_KEEP of icap_we_cs_reg_0 : signal is "true";
  signal int1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^out\ : STD_LOGIC;
  attribute RTL_KEEP of \out\ : signal is "true";
  signal p_0_in2_in : STD_LOGIC;
  attribute RTL_KEEP of p_0_in2_in : signal is "true";
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^prmry_in\ : STD_LOGIC;
  signal rdfifo_wren_cs_i_2_n_0 : STD_LOGIC;
  signal rdfifo_wren_cs_i_4_n_0 : STD_LOGIC;
  signal rdfifo_wren_ns : STD_LOGIC;
  signal reset_cr_cs_i_2_n_0 : STD_LOGIC;
  signal reset_cr_ns : STD_LOGIC;
  signal \size_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \size_cs[0]_i_4_n_0\ : STD_LOGIC;
  signal \size_cs[0]_i_5_n_0\ : STD_LOGIC;
  signal \size_cs[0]_i_6_n_0\ : STD_LOGIC;
  signal \size_cs[10]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[11]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \size_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[4]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[4]_i_2_n_0\ : STD_LOGIC;
  signal \size_cs[4]_i_3_n_0\ : STD_LOGIC;
  signal \size_cs[5]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[5]_i_2_n_0\ : STD_LOGIC;
  signal \size_cs[6]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[7]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[8]_i_1_n_0\ : STD_LOGIC;
  signal \size_cs[8]_i_2_n_0\ : STD_LOGIC;
  signal \size_cs[9]_i_1_n_0\ : STD_LOGIC;
  signal size_ns : STD_LOGIC;
  signal NLW_gtOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_gtOp_carry_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gtOp_carry_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_icap_nstate_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_icap_nstate_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_icap_nstate_cs_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_icap_nstate_cs_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[2]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of hang_status_cs_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of icap_ce_cs_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of icap_ce_cs_i_6 : label is "soft_lutpair25";
  attribute KEEP of icap_ce_cs_reg : label is "yes";
  attribute KEEP of icap_we_cs_reg : label is "yes";
  attribute SOFT_HLUTNM of rdfifo_wren_cs_i_4 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \size_cs[0]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \size_cs[0]_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \size_cs[1]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \size_cs[4]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \size_cs[4]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \size_cs[5]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \size_cs[8]_i_2\ : label is "soft_lutpair26";
begin
  CO(0) <= \^co\(0);
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\;
  Q(11 downto 0) <= \^q\(11 downto 0);
  abort_i_cs_reg_0(2 downto 0) <= \^abort_i_cs_reg_0\(2 downto 0);
  count_reset_cs <= \^count_reset_cs\;
  \icap_status_i_reg[8]_0\(31 downto 0) <= \^icap_status_i_reg[8]_0\(31 downto 0);
  icap_we_cs_reg_0 <= \^icap_we_cs_reg_0\;
  \out\ <= \^out\;
  prmry_in <= \^prmry_in\;
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\,
      I1 => \^abort_i_cs_reg_0\(2),
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6_n_0\,
      I3 => icap_nstate_cs(3),
      O => wrfifo_rden
    );
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003044444444"
    )
        port map (
      I0 => ram_empty_i_reg,
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => rdfifo_wren_cs_i_4_n_0,
      I3 => Wrfifo_empty_r,
      I4 => Wrfifo_empty_r1,
      I5 => \^abort_i_cs_reg_0\(1),
      O => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6_n_0\
    );
\FSM_sequential_icap_nstate_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833FFFFB8330000"
    )
        port map (
      I0 => \FSM_sequential_icap_nstate_cs[0]_i_4_n_0\,
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => Wrfifo_empty_r1,
      I3 => \^abort_i_cs_reg_0\(1),
      I4 => \^abort_i_cs_reg_0\(2),
      I5 => \FSM_sequential_icap_nstate_cs[0]_i_5_n_0\,
      O => \FSM_sequential_icap_nstate_cs[0]_i_2_n_0\
    );
\FSM_sequential_icap_nstate_cs[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBB0BFFFFFFFF"
    )
        port map (
      I0 => hang_status_cs_i_2_n_0,
      I1 => p_0_in2_in,
      I2 => scndry_out,
      I3 => \^out\,
      I4 => gate_icap_p,
      I5 => \^co\(0),
      O => \FSM_sequential_icap_nstate_cs[0]_i_4_n_0\
    );
\FSM_sequential_icap_nstate_cs[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBFFFC"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => scndry_out,
      I3 => gate_signal_p_reg_1,
      I4 => \^abort_i_cs_reg_0\(1),
      O => \FSM_sequential_icap_nstate_cs[0]_i_5_n_0\
    );
\FSM_sequential_icap_nstate_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F006F6F0F006060"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(1),
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => icap_nstate_cs(3),
      I3 => \FSM_sequential_icap_nstate_cs[1]_i_2_n_0\,
      I4 => \^abort_i_cs_reg_0\(2),
      I5 => \FSM_sequential_icap_nstate_cs[1]_i_3_n_0\,
      O => \FSM_sequential_icap_nstate_cs[1]_i_1_n_0\
    );
\FSM_sequential_icap_nstate_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B888BCCCCCCCC"
    )
        port map (
      I0 => \FSM_sequential_icap_nstate_cs[1]_i_4_n_0\,
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => Wrfifo_empty_r1,
      I3 => scndry_out,
      I4 => \^out\,
      I5 => \^abort_i_cs_reg_0\(1),
      O => \FSM_sequential_icap_nstate_cs[1]_i_2_n_0\
    );
\FSM_sequential_icap_nstate_cs[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^abort_i_cs_reg_0\(0),
      I3 => \FSM_sequential_icap_nstate_cs_reg[1]_0\,
      O => \FSM_sequential_icap_nstate_cs[1]_i_3_n_0\
    );
\FSM_sequential_icap_nstate_cs[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8B000000"
    )
        port map (
      I0 => hang_status_cs_i_2_n_0,
      I1 => p_0_in2_in,
      I2 => eqOp16_in,
      I3 => rdfifo_wren_cs_i_4_n_0,
      I4 => \^co\(0),
      I5 => gate_icap_p,
      O => \FSM_sequential_icap_nstate_cs[1]_i_4_n_0\
    );
\FSM_sequential_icap_nstate_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I1 => \^abort_i_cs_reg_0\(2),
      I2 => \^abort_i_cs_reg_0\(1),
      I3 => \^abort_i_cs_reg_0\(0),
      I4 => icap_nstate_cs(3),
      I5 => \FSM_sequential_icap_nstate_cs_reg[2]_i_2_n_0\,
      O => \FSM_sequential_icap_nstate_cs[2]_i_1_n_0\
    );
\FSM_sequential_icap_nstate_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700470047334700"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => ram_empty_i_reg,
      I3 => \^abort_i_cs_reg_0\(1),
      I4 => gate_signal_p_reg_1,
      I5 => scndry_out,
      O => \FSM_sequential_icap_nstate_cs[2]_i_3_n_0\
    );
\FSM_sequential_icap_nstate_cs[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFD0FFFFFFFF"
    )
        port map (
      I0 => \^co\(0),
      I1 => gate_icap_p,
      I2 => \^abort_i_cs_reg_0\(0),
      I3 => Wrfifo_empty_r1,
      I4 => rdfifo_wren_cs_i_4_n_0,
      I5 => \^abort_i_cs_reg_0\(1),
      O => \FSM_sequential_icap_nstate_cs[2]_i_4_n_0\
    );
\FSM_sequential_icap_nstate_cs[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I1 => icap_nstate_cs(3),
      I2 => \FSM_sequential_icap_nstate_cs[3]_i_3_n_0\,
      I3 => \^abort_i_cs_reg_0\(2),
      I4 => \FSM_sequential_icap_nstate_cs[3]_i_4_n_0\,
      O => \FSM_sequential_icap_nstate_cs[3]_i_1_n_0\
    );
\FSM_sequential_icap_nstate_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8B8833333333"
    )
        port map (
      I0 => \FSM_sequential_icap_nstate_cs[3]_i_5_n_0\,
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => \^out\,
      I3 => scndry_out,
      I4 => Wrfifo_empty_r1,
      I5 => \^abort_i_cs_reg_0\(1),
      O => \FSM_sequential_icap_nstate_cs[3]_i_3_n_0\
    );
\FSM_sequential_icap_nstate_cs[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(1),
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => \^out\,
      I3 => p_0_in2_in,
      O => \FSM_sequential_icap_nstate_cs[3]_i_4_n_0\
    );
\FSM_sequential_icap_nstate_cs[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000074FFFFFF"
    )
        port map (
      I0 => hang_status_cs_i_2_n_0,
      I1 => p_0_in2_in,
      I2 => eqOp16_in,
      I3 => rdfifo_wren_cs_i_4_n_0,
      I4 => \^co\(0),
      I5 => gate_icap_p,
      O => \FSM_sequential_icap_nstate_cs[3]_i_5_n_0\
    );
\FSM_sequential_icap_nstate_cs[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \FSM_sequential_icap_nstate_cs[3]_i_7_n_0\,
      I3 => \size_cs[1]_i_2_n_0\,
      I4 => \FSM_sequential_icap_nstate_cs[3]_i_8_n_0\,
      I5 => icap_ce_cs_i_6_n_0,
      O => eqOp16_in
    );
\FSM_sequential_icap_nstate_cs[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \FSM_sequential_icap_nstate_cs[3]_i_7_n_0\
    );
\FSM_sequential_icap_nstate_cs[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \FSM_sequential_icap_nstate_cs[3]_i_8_n_0\
    );
\FSM_sequential_icap_nstate_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_icap_nstate_cs_reg[0]_i_1_n_0\,
      Q => \^abort_i_cs_reg_0\(0),
      R => SR(0)
    );
\FSM_sequential_icap_nstate_cs_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_icap_nstate_cs[0]_i_2_n_0\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      O => \FSM_sequential_icap_nstate_cs_reg[0]_i_1_n_0\,
      S => icap_nstate_cs(3)
    );
\FSM_sequential_icap_nstate_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_icap_nstate_cs[1]_i_1_n_0\,
      Q => \^abort_i_cs_reg_0\(1),
      R => SR(0)
    );
\FSM_sequential_icap_nstate_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_icap_nstate_cs[2]_i_1_n_0\,
      Q => \^abort_i_cs_reg_0\(2),
      R => SR(0)
    );
\FSM_sequential_icap_nstate_cs_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_icap_nstate_cs[2]_i_3_n_0\,
      I1 => \FSM_sequential_icap_nstate_cs[2]_i_4_n_0\,
      O => \FSM_sequential_icap_nstate_cs_reg[2]_i_2_n_0\,
      S => \^abort_i_cs_reg_0\(2)
    );
\FSM_sequential_icap_nstate_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_icap_nstate_cs[3]_i_1_n_0\,
      Q => icap_nstate_cs(3),
      R => SR(0)
    );
\GEN_FUNCTIONAL_UNISIM.abort_detect_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008ABABA8A"
    )
        port map (
      I0 => \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0\,
      I1 => \^out\,
      I2 => same_cycle,
      I3 => rdwr_int1,
      I4 => \^icap_we_cs_reg_0\,
      I5 => SR(0),
      O => \GEN_FUNCTIONAL_UNISIM.abort_detect_reg\
    );
\GEN_FUNCTIONAL_UNISIM.rdwr_int1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\,
      I1 => \^icap_we_cs_reg_0\,
      O => \GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg\
    );
\GEN_FUNCTIONAL_UNISIM.same_cycle_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\,
      O => \GEN_FUNCTIONAL_UNISIM.same_cycle_reg\
    );
Icap_busy_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => abort_del1,
      I1 => Icap_busy_inferred_i_2_n_0,
      O => p_0_in2_in
    );
Icap_busy_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEEE"
    )
        port map (
      I0 => abort_del3,
      I1 => abort_del2,
      I2 => \^icap_we_cs_reg_0\,
      I3 => \^out\,
      I4 => ce_del3,
      I5 => \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0\,
      O => Icap_busy_inferred_i_2_n_0
    );
Send_done_cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7770FFFF77700000"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(1),
      I1 => icap_nstate_cs(3),
      I2 => \^abort_i_cs_reg_0\(2),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I4 => Send_done_ns,
      I5 => \^prmry_in\,
      O => Send_done_cs_i_1_n_0
    );
Send_done_cs_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400740030333000"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(1),
      I1 => icap_nstate_cs(3),
      I2 => reset_cr_cs_i_2_n_0,
      I3 => \^abort_i_cs_reg_0\(2),
      I4 => gate_signal_p_reg_0,
      I5 => \^abort_i_cs_reg_0\(0),
      O => Send_done_ns
    );
Send_done_cs_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Send_done_cs_i_1_n_0,
      Q => \^prmry_in\,
      S => SR(0)
    );
Wrfifo_empty_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Wrfifo_empty_r,
      Q => Wrfifo_empty_r1,
      R => '0'
    );
Wrfifo_empty_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i_reg,
      Q => Wrfifo_empty_r,
      R => '0'
    );
abort_cs2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => abort_cs,
      Q => \sr_i_reg[0]\(0),
      R => '0'
    );
abort_cs_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(2),
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => \^abort_i_cs_reg_0\(1),
      I3 => icap_nstate_cs(3),
      O => abort_ns
    );
abort_cs_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => abort_ns,
      Q => abort_cs,
      R => '0'
    );
abort_i_cs2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => abort_i_cs,
      Q => abort_i_cs2,
      R => '0'
    );
abort_i_cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404A404A4F4F4F4A"
    )
        port map (
      I0 => icap_nstate_cs(3),
      I1 => abort_i_cs_i_2_n_0,
      I2 => \^abort_i_cs_reg_0\(2),
      I3 => \^abort_i_cs_reg_0\(0),
      I4 => scndry_out,
      I5 => \^abort_i_cs_reg_0\(1),
      O => abort_i_ns
    );
abort_i_cs_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004F00000000"
    )
        port map (
      I0 => gate_icap_p,
      I1 => \^co\(0),
      I2 => \^abort_i_cs_reg_0\(0),
      I3 => rdfifo_wren_cs_i_4_n_0,
      I4 => Wrfifo_empty_r1,
      I5 => \^abort_i_cs_reg_0\(1),
      O => abort_i_cs_i_2_n_0
    );
abort_i_cs_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => abort_i_ns,
      Q => abort_i_cs,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => \plusOp__3\(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => \plusOp__3\(1)
    );
\count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      I3 => count_enable_cs,
      O => count0
    );
\count[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      O => \count[2]_i_3_n_0\
    );
count_enable_cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF3FFF3C20000000"
    )
        port map (
      I0 => count_enable_cs_i_2_n_0,
      I1 => icap_nstate_cs(3),
      I2 => \^abort_i_cs_reg_0\(2),
      I3 => \^abort_i_cs_reg_0\(1),
      I4 => \^abort_i_cs_reg_0\(0),
      I5 => count_enable_cs,
      O => count_enable_cs_i_1_n_0
    );
count_enable_cs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A00"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \^out\,
      I2 => scndry_out,
      I3 => \^co\(0),
      I4 => gate_icap_p,
      O => count_enable_cs_i_2_n_0
    );
count_enable_cs_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => count_enable_cs_i_1_n_0,
      Q => count_enable_cs,
      R => SR(0)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => count0,
      D => \plusOp__3\(0),
      Q => count(0),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => count0,
      D => \plusOp__3\(1),
      Q => count(1),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => count0,
      D => \count[2]_i_3_n_0\,
      Q => count(2),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\(0)
    );
count_reset_cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404FFFFF404F0000"
    )
        port map (
      I0 => icap_nstate_cs(3),
      I1 => gate_icap_p,
      I2 => \^abort_i_cs_reg_0\(0),
      I3 => \^abort_i_cs_reg_0\(1),
      I4 => count_reset_ns,
      I5 => \^count_reset_cs\,
      O => count_reset_cs_i_1_n_0
    );
count_reset_cs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40AA0005"
    )
        port map (
      I0 => icap_nstate_cs(3),
      I1 => count_enable_cs_i_2_n_0,
      I2 => \^abort_i_cs_reg_0\(0),
      I3 => \^abort_i_cs_reg_0\(1),
      I4 => \^abort_i_cs_reg_0\(2),
      O => count_reset_ns
    );
count_reset_cs_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => count_reset_cs_i_1_n_0,
      Q => \^count_reset_cs\,
      R => SR(0)
    );
gtOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_gtOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => \^co\(0),
      CO(4) => gtOp_carry_n_3,
      CO(3) => NLW_gtOp_carry_CO_UNCONNECTED(3),
      CO(2) => gtOp_carry_n_5,
      CO(1) => gtOp_carry_n_6,
      CO(0) => gtOp_carry_n_7,
      DI(7 downto 6) => NLW_gtOp_carry_DI_UNCONNECTED(7 downto 6),
      DI(5) => gtOp_carry_i_1_n_0,
      DI(4) => gtOp_carry_i_2_n_0,
      DI(3) => gtOp_carry_i_3_n_0,
      DI(2) => gtOp_carry_i_4_n_0,
      DI(1) => gtOp_carry_i_5_n_0,
      DI(0) => gtOp_carry_i_6_n_0,
      O(7 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => NLW_gtOp_carry_S_UNCONNECTED(7 downto 6),
      S(5) => gtOp_carry_i_7_n_0,
      S(4) => gtOp_carry_i_8_n_0,
      S(3) => gtOp_carry_i_9_n_0,
      S(2) => gtOp_carry_i_10_n_0,
      S(1) => gtOp_carry_i_11_n_0,
      S(0) => gtOp_carry_i_12_n_0
    );
gtOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => gtOp_carry_i_10_n_0
    );
gtOp_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => gtOp_carry_i_11_n_0
    );
gtOp_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => gtOp_carry_i_12_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => gtOp_carry_i_8_n_0
    );
gtOp_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      O => gtOp_carry_i_9_n_0
    );
hang_status_cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFF10FF0000"
    )
        port map (
      I0 => icap_nstate_cs(3),
      I1 => hang_status_cs_i_2_n_0,
      I2 => hang_status_cs_i_3_n_0,
      I3 => \^abort_i_cs_reg_0\(1),
      I4 => hang_status_cs_i_4_n_0,
      I5 => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\,
      O => hang_status_cs_i_1_n_0
    );
hang_status_cs_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      O => hang_status_cs_i_2_n_0
    );
hang_status_cs_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => scndry_out,
      I1 => \^out\,
      I2 => p_0_in2_in,
      O => hang_status_cs_i_3_n_0
    );
hang_status_cs_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100000AA00000000"
    )
        port map (
      I0 => icap_nstate_cs(3),
      I1 => gate_icap_p,
      I2 => \^co\(0),
      I3 => \^abort_i_cs_reg_0\(1),
      I4 => \^abort_i_cs_reg_0\(0),
      I5 => \^abort_i_cs_reg_0\(2),
      O => hang_status_cs_i_4_n_0
    );
hang_status_cs_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => hang_status_cs_i_1_n_0,
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\,
      R => SR(0)
    );
icap_ce_cs_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => icap_ce_cs_i_2_n_0,
      I1 => icap_ce_ns,
      I2 => \^out\,
      O => icap_ce_cs_i_1_n_0
    );
icap_ce_cs_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6673227300000000"
    )
        port map (
      I0 => icap_nstate_cs(3),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => Wrfifo_empty_r1,
      I3 => \^abort_i_cs_reg_0\(0),
      I4 => icap_ce_ns15_out,
      I5 => \^abort_i_cs_reg_0\(2),
      O => icap_ce_cs_i_2_n_0
    );
icap_ce_cs_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77774410"
    )
        port map (
      I0 => icap_nstate_cs(3),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => scndry_out,
      I3 => \^abort_i_cs_reg_0\(0),
      I4 => \^abort_i_cs_reg_0\(2),
      O => icap_ce_ns
    );
icap_ce_cs_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050505050505050D"
    )
        port map (
      I0 => \^co\(0),
      I1 => icap_ce_cs_i_5_n_0,
      I2 => gate_icap_p,
      I3 => \^q\(10),
      I4 => \^q\(11),
      I5 => icap_ce_cs_i_6_n_0,
      O => icap_ce_ns15_out
    );
icap_ce_cs_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \size_cs[1]_i_2_n_0\,
      I1 => rdfifo_wren_cs_i_4_n_0,
      I2 => \FSM_sequential_icap_nstate_cs[3]_i_8_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => p_0_in2_in,
      O => icap_ce_cs_i_5_n_0
    );
icap_ce_cs_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => icap_ce_cs_i_6_n_0
    );
icap_ce_cs_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => icap_ce_cs_i_1_n_0,
      Q => \^out\,
      S => SR(0)
    );
\icap_datain_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(0),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(24),
      R => SR(0)
    );
\icap_datain_cs_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(10),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(18),
      R => SR(0)
    );
\icap_datain_cs_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(11),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(19),
      R => SR(0)
    );
\icap_datain_cs_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(12),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(20),
      R => SR(0)
    );
\icap_datain_cs_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(13),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(21),
      R => SR(0)
    );
\icap_datain_cs_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(14),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(22),
      R => SR(0)
    );
\icap_datain_cs_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(15),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(23),
      R => SR(0)
    );
\icap_datain_cs_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(16),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(8),
      R => SR(0)
    );
\icap_datain_cs_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(17),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(9),
      R => SR(0)
    );
\icap_datain_cs_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(18),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(10),
      R => SR(0)
    );
\icap_datain_cs_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(19),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(11),
      R => SR(0)
    );
\icap_datain_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(1),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(25),
      R => SR(0)
    );
\icap_datain_cs_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(20),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(12),
      R => SR(0)
    );
\icap_datain_cs_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(21),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(13),
      R => SR(0)
    );
\icap_datain_cs_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(22),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(14),
      R => SR(0)
    );
\icap_datain_cs_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(23),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(15),
      R => SR(0)
    );
\icap_datain_cs_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(24),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(0),
      R => SR(0)
    );
\icap_datain_cs_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(25),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(1),
      R => SR(0)
    );
\icap_datain_cs_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(26),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(2),
      R => SR(0)
    );
\icap_datain_cs_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(27),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(3),
      R => SR(0)
    );
\icap_datain_cs_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(28),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(4),
      R => SR(0)
    );
\icap_datain_cs_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(29),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(5),
      R => SR(0)
    );
\icap_datain_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(2),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(26),
      R => SR(0)
    );
\icap_datain_cs_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(30),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(6),
      R => SR(0)
    );
\icap_datain_cs_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(31),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(7),
      R => SR(0)
    );
\icap_datain_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(3),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(27),
      R => SR(0)
    );
\icap_datain_cs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(4),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(28),
      R => SR(0)
    );
\icap_datain_cs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(5),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(29),
      R => SR(0)
    );
\icap_datain_cs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(6),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(30),
      R => SR(0)
    );
\icap_datain_cs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(7),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(31),
      R => SR(0)
    );
\icap_datain_cs_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(8),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(16),
      R => SR(0)
    );
\icap_datain_cs_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int1(9),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(17),
      R => SR(0)
    );
\icap_dataout_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(31),
      R => '0'
    );
\icap_dataout_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(10),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(21),
      R => '0'
    );
\icap_dataout_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(11),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(20),
      R => '0'
    );
\icap_dataout_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(12),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(19),
      R => '0'
    );
\icap_dataout_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(13),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(18),
      R => '0'
    );
\icap_dataout_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(14),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(17),
      R => '0'
    );
\icap_dataout_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(15),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(16),
      R => '0'
    );
\icap_dataout_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(16),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(15),
      R => '0'
    );
\icap_dataout_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(17),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(14),
      R => '0'
    );
\icap_dataout_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(18),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(13),
      R => '0'
    );
\icap_dataout_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(19),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(12),
      R => '0'
    );
\icap_dataout_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(1),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(30),
      R => '0'
    );
\icap_dataout_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(20),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(11),
      R => '0'
    );
\icap_dataout_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(21),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(10),
      R => '0'
    );
\icap_dataout_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(22),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(9),
      R => '0'
    );
\icap_dataout_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(23),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8),
      R => '0'
    );
\icap_dataout_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(24),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(7),
      R => '0'
    );
\icap_dataout_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(25),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6),
      R => '0'
    );
\icap_dataout_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(26),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5),
      R => '0'
    );
\icap_dataout_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(27),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      R => '0'
    );
\icap_dataout_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(28),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3),
      R => '0'
    );
\icap_dataout_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(29),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2),
      R => '0'
    );
\icap_dataout_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(2),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(29),
      R => '0'
    );
\icap_dataout_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(30),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      R => '0'
    );
\icap_dataout_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(31),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      R => '0'
    );
\icap_dataout_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(3),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(28),
      R => '0'
    );
\icap_dataout_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(4),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(27),
      R => '0'
    );
\icap_dataout_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(5),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(26),
      R => '0'
    );
\icap_dataout_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(6),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(25),
      R => '0'
    );
\icap_dataout_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(7),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(24),
      R => '0'
    );
\icap_dataout_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(8),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(23),
      R => '0'
    );
\icap_dataout_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(9),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(22),
      R => '0'
    );
\icap_status_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(24),
      Q => \^icap_status_i_reg[8]_0\(31),
      R => SR(0)
    );
\icap_status_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(29),
      Q => \^icap_status_i_reg[8]_0\(21),
      R => SR(0)
    );
\icap_status_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(28),
      Q => \^icap_status_i_reg[8]_0\(20),
      R => SR(0)
    );
\icap_status_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(27),
      Q => \^icap_status_i_reg[8]_0\(19),
      R => SR(0)
    );
\icap_status_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(26),
      Q => \^icap_status_i_reg[8]_0\(18),
      R => SR(0)
    );
\icap_status_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(25),
      Q => \^icap_status_i_reg[8]_0\(17),
      R => SR(0)
    );
\icap_status_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(24),
      Q => \^icap_status_i_reg[8]_0\(16),
      R => SR(0)
    );
\icap_status_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(23),
      Q => \^icap_status_i_reg[8]_0\(15),
      R => SR(0)
    );
\icap_status_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(22),
      Q => \^icap_status_i_reg[8]_0\(14),
      R => SR(0)
    );
\icap_status_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(21),
      Q => \^icap_status_i_reg[8]_0\(13),
      R => SR(0)
    );
\icap_status_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(20),
      Q => \^icap_status_i_reg[8]_0\(12),
      R => SR(0)
    );
\icap_status_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(25),
      Q => \^icap_status_i_reg[8]_0\(30),
      R => SR(0)
    );
\icap_status_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(19),
      Q => \^icap_status_i_reg[8]_0\(11),
      R => SR(0)
    );
\icap_status_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(18),
      Q => \^icap_status_i_reg[8]_0\(10),
      R => SR(0)
    );
\icap_status_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(17),
      Q => \^icap_status_i_reg[8]_0\(9),
      R => SR(0)
    );
\icap_status_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(16),
      Q => \^icap_status_i_reg[8]_0\(8),
      R => SR(0)
    );
\icap_status_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(15),
      Q => \^icap_status_i_reg[8]_0\(7),
      R => SR(0)
    );
\icap_status_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(14),
      Q => \^icap_status_i_reg[8]_0\(6),
      R => SR(0)
    );
\icap_status_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(13),
      Q => \^icap_status_i_reg[8]_0\(5),
      R => SR(0)
    );
\icap_status_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(12),
      Q => \^icap_status_i_reg[8]_0\(4),
      R => SR(0)
    );
\icap_status_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(11),
      Q => \^icap_status_i_reg[8]_0\(3),
      R => SR(0)
    );
\icap_status_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(10),
      Q => \^icap_status_i_reg[8]_0\(2),
      R => SR(0)
    );
\icap_status_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(26),
      Q => \^icap_status_i_reg[8]_0\(29),
      R => SR(0)
    );
\icap_status_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(9),
      Q => \^icap_status_i_reg[8]_0\(1),
      R => SR(0)
    );
\icap_status_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(8),
      Q => \^icap_status_i_reg[8]_0\(0),
      R => SR(0)
    );
\icap_status_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(27),
      Q => \^icap_status_i_reg[8]_0\(28),
      R => SR(0)
    );
\icap_status_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(28),
      Q => \^icap_status_i_reg[8]_0\(27),
      R => SR(0)
    );
\icap_status_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(29),
      Q => \^icap_status_i_reg[8]_0\(26),
      R => SR(0)
    );
\icap_status_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(30),
      Q => \^icap_status_i_reg[8]_0\(25),
      R => SR(0)
    );
\icap_status_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => in0(31),
      Q => \^icap_status_i_reg[8]_0\(24),
      R => SR(0)
    );
\icap_status_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(31),
      Q => \^icap_status_i_reg[8]_0\(23),
      R => SR(0)
    );
\icap_status_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_i_cs2,
      D => \^icap_status_i_reg[8]_0\(30),
      Q => \^icap_status_i_reg[8]_0\(22),
      R => SR(0)
    );
icap_we_cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEECCCF2E2E0000"
    )
        port map (
      I0 => icap_we_cs_i_2_n_0,
      I1 => icap_nstate_cs(3),
      I2 => \^abort_i_cs_reg_0\(1),
      I3 => \^abort_i_cs_reg_0\(0),
      I4 => \^abort_i_cs_reg_0\(2),
      I5 => \^icap_we_cs_reg_0\,
      O => icap_we_cs_i_1_n_0
    );
icap_we_cs_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0B0F0BF00000000"
    )
        port map (
      I0 => gate_icap_p,
      I1 => \^co\(0),
      I2 => \^abort_i_cs_reg_0\(0),
      I3 => rdfifo_wren_cs_i_4_n_0,
      I4 => Wrfifo_empty_r1,
      I5 => \^abort_i_cs_reg_0\(1),
      O => icap_we_cs_i_2_n_0
    );
icap_we_cs_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => icap_we_cs_i_1_n_0,
      Q => \^icap_we_cs_reg_0\,
      S => SR(0)
    );
\int1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(31),
      Q => int1(0),
      R => SR(0)
    );
\int1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(21),
      Q => int1(10),
      R => SR(0)
    );
\int1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(20),
      Q => int1(11),
      R => SR(0)
    );
\int1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(19),
      Q => int1(12),
      R => SR(0)
    );
\int1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(18),
      Q => int1(13),
      R => SR(0)
    );
\int1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(17),
      Q => int1(14),
      R => SR(0)
    );
\int1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(16),
      Q => int1(15),
      R => SR(0)
    );
\int1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(15),
      Q => int1(16),
      R => SR(0)
    );
\int1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(14),
      Q => int1(17),
      R => SR(0)
    );
\int1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(13),
      Q => int1(18),
      R => SR(0)
    );
\int1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(12),
      Q => int1(19),
      R => SR(0)
    );
\int1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(30),
      Q => int1(1),
      R => SR(0)
    );
\int1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(11),
      Q => int1(20),
      R => SR(0)
    );
\int1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(10),
      Q => int1(21),
      R => SR(0)
    );
\int1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => int1(22),
      R => SR(0)
    );
\int1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => int1(23),
      R => SR(0)
    );
\int1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => int1(24),
      R => SR(0)
    );
\int1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => int1(25),
      R => SR(0)
    );
\int1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => int1(26),
      R => SR(0)
    );
\int1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => int1(27),
      R => SR(0)
    );
\int1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => int1(28),
      R => SR(0)
    );
\int1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => int1(29),
      R => SR(0)
    );
\int1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(29),
      Q => int1(2),
      R => SR(0)
    );
\int1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => int1(30),
      R => SR(0)
    );
\int1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => int1(31),
      R => SR(0)
    );
\int1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(28),
      Q => int1(3),
      R => SR(0)
    );
\int1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(27),
      Q => int1(4),
      R => SR(0)
    );
\int1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(26),
      Q => int1(5),
      R => SR(0)
    );
\int1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(25),
      Q => int1(6),
      R => SR(0)
    );
\int1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(24),
      Q => int1(7),
      R => SR(0)
    );
\int1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(23),
      Q => int1(8),
      R => SR(0)
    );
\int1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(22),
      Q => int1(9),
      R => SR(0)
    );
rdfifo_wren_cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(2),
      I1 => rdfifo_wren_cs_i_2_n_0,
      I2 => gate_signal_p_reg,
      I3 => rdfifo_wren_cs_i_4_n_0,
      I4 => p_0_in2_in,
      I5 => icap_nstate_cs(3),
      O => rdfifo_wren_ns
    );
rdfifo_wren_cs_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(1),
      I1 => \^abort_i_cs_reg_0\(0),
      O => rdfifo_wren_cs_i_2_n_0
    );
rdfifo_wren_cs_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^out\,
      I1 => scndry_out,
      O => rdfifo_wren_cs_i_4_n_0
    );
rdfifo_wren_cs_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdfifo_wren_ns,
      Q => rdfifo_wren,
      R => '0'
    );
reset_cr_cs_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F400000"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(1),
      I1 => \^abort_i_cs_reg_0\(0),
      I2 => icap_nstate_cs(3),
      I3 => reset_cr_cs_i_2_n_0,
      I4 => \^abort_i_cs_reg_0\(2),
      O => reset_cr_ns
    );
reset_cr_cs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F100F0F"
    )
        port map (
      I0 => gate_icap_p,
      I1 => \^co\(0),
      I2 => \^abort_i_cs_reg_0\(0),
      I3 => Wrfifo_empty_r1,
      I4 => \^abort_i_cs_reg_0\(1),
      O => reset_cr_cs_i_2_n_0
    );
reset_cr_cs_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_cr_ns,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\,
      R => '0'
    );
\size_cs[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \FSM_sequential_icap_nstate_cs_reg[0]_0\,
      I1 => \^abort_i_cs_reg_0\(2),
      I2 => \size_cs[0]_i_4_n_0\,
      I3 => icap_nstate_cs(3),
      O => size_ns
    );
\size_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(11),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(11),
      I3 => \size_cs[0]_i_5_n_0\,
      I4 => \size_cs[0]_i_6_n_0\,
      I5 => icap_nstate_cs(3),
      O => \size_cs[0]_i_2_n_0\
    );
\size_cs[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \^abort_i_cs_reg_0\(0),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => gate_icap_p,
      I3 => \^co\(0),
      I4 => rdfifo_wren_cs_i_4_n_0,
      I5 => p_0_in2_in,
      O => \size_cs[0]_i_4_n_0\
    );
\size_cs[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(10),
      O => \size_cs[0]_i_5_n_0\
    );
\size_cs[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \size_cs[4]_i_3_n_0\,
      O => \size_cs[0]_i_6_n_0\
    );
\size_cs[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E22E"
    )
        port map (
      I0 => scndry_vect_out(1),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => icap_nstate_cs(3),
      O => \size_cs[10]_i_1_n_0\
    );
\size_cs[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => scndry_vect_out(0),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(0),
      I3 => icap_nstate_cs(3),
      O => \size_cs[11]_i_1_n_0\
    );
\size_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(10),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(10),
      I3 => \size_cs[0]_i_6_n_0\,
      I4 => \size_cs[1]_i_2_n_0\,
      I5 => icap_nstate_cs(3),
      O => \size_cs[1]_i_1_n_0\
    );
\size_cs[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \size_cs[1]_i_2_n_0\
    );
\size_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(9),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(9),
      I3 => \size_cs[0]_i_6_n_0\,
      I4 => \^q\(8),
      I5 => icap_nstate_cs(3),
      O => \size_cs[2]_i_1_n_0\
    );
\size_cs[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E22E"
    )
        port map (
      I0 => scndry_vect_out(8),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(8),
      I3 => \size_cs[0]_i_6_n_0\,
      I4 => icap_nstate_cs(3),
      O => \size_cs[3]_i_1_n_0\
    );
\size_cs[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(7),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(7),
      I3 => \size_cs[4]_i_2_n_0\,
      I4 => \size_cs[4]_i_3_n_0\,
      I5 => icap_nstate_cs(3),
      O => \size_cs[4]_i_1_n_0\
    );
\size_cs[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(6),
      O => \size_cs[4]_i_2_n_0\
    );
\size_cs[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \size_cs[4]_i_3_n_0\
    );
\size_cs[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(6),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(6),
      I3 => \size_cs[4]_i_3_n_0\,
      I4 => \size_cs[5]_i_2_n_0\,
      I5 => icap_nstate_cs(3),
      O => \size_cs[5]_i_1_n_0\
    );
\size_cs[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \size_cs[5]_i_2_n_0\
    );
\size_cs[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(5),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(5),
      I3 => \size_cs[4]_i_3_n_0\,
      I4 => \^q\(4),
      I5 => icap_nstate_cs(3),
      O => \size_cs[6]_i_1_n_0\
    );
\size_cs[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E22E"
    )
        port map (
      I0 => scndry_vect_out(4),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(4),
      I3 => \size_cs[4]_i_3_n_0\,
      I4 => icap_nstate_cs(3),
      O => \size_cs[7]_i_1_n_0\
    );
\size_cs[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(3),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(3),
      I3 => \size_cs[8]_i_2_n_0\,
      I4 => \^q\(2),
      I5 => icap_nstate_cs(3),
      O => \size_cs[8]_i_1_n_0\
    );
\size_cs[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \size_cs[8]_i_2_n_0\
    );
\size_cs[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E22E"
    )
        port map (
      I0 => scndry_vect_out(2),
      I1 => \^abort_i_cs_reg_0\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => icap_nstate_cs(3),
      O => \size_cs[9]_i_1_n_0\
    );
\size_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[0]_i_2_n_0\,
      Q => \^q\(11),
      R => SR(0)
    );
\size_cs_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[10]_i_1_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\size_cs_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[11]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\size_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[1]_i_1_n_0\,
      Q => \^q\(10),
      R => SR(0)
    );
\size_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[2]_i_1_n_0\,
      Q => \^q\(9),
      R => SR(0)
    );
\size_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[3]_i_1_n_0\,
      Q => \^q\(8),
      R => SR(0)
    );
\size_cs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[4]_i_1_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
\size_cs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[5]_i_1_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\size_cs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[6]_i_1_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\size_cs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[7]_i_1_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\size_cs_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[8]_i_1_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\size_cs_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => size_ns,
      D => \size_cs[9]_i_1_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \ip2bus_data_i_reg[31]\ : out STD_LOGIC;
    p_1_in5_in : out STD_LOGIC;
    p_1_in2_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    intr2bus_wrack : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_rdack_i0 : out STD_LOGIC;
    intr_rst : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \wr_data_count_i_reg[5]\ : in STD_LOGIC;
    \rd_dc_i_reg[6]\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    p_6_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_interrupt_control : entity is "interrupt_control";
end shell_axi_hwicap_0_0_interrupt_control;

architecture STRUCTURE of shell_axi_hwicap_0_0_interrupt_control is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intr2bus_rdack : STD_LOGIC;
  signal \^ip2bus_data_i_reg[31]\ : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \^p_1_in2_in\ : STD_LOGIC;
  signal \^p_1_in5_in\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \ip2bus_data_i_reg[31]\ <= \^ip2bus_data_i_reg[31]\;
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in <= \^p_1_in\;
  p_1_in2_in <= \^p_1_in2_in\;
  p_1_in5_in <= \^p_1_in5_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_data_count_i_reg[5]\,
      Q => \^ip2bus_data_i_reg[31]\,
      R => intr_rst
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_dc_i_reg[6]\,
      Q => \^p_1_in5_in\,
      R => intr_rst
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      Q => \^p_1_in2_in\,
      R => intr_rst
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_reset_reg,
      Q => \^p_1_in\,
      R => intr_rst
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => intr2bus_rdack,
      R => intr_rst
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => intr2bus_wrack,
      R => intr_rst
    );
ip2bus_rdack_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr2bus_rdack,
      I1 => p_6_out,
      O => ip2bus_rdack_i0
    );
ip2intc_irpt_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEAAAEAAAEAAA"
    )
        port map (
      I0 => ip2intc_irpt_INST_0_i_1_n_0,
      I1 => \^p_1_in2_in\,
      I2 => \^q\(2),
      I3 => \^ipif_glbl_irpt_enable_reg\,
      I4 => \^q\(3),
      I5 => \^p_1_in\,
      O => ip2intc_irpt
    );
ip2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^p_1_in5_in\,
      I2 => \^ipif_glbl_irpt_enable_reg\,
      I3 => \^q\(0),
      I4 => \^ip2bus_data_i_reg[31]\,
      O => ip2intc_irpt_INST_0_i_1_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => intr_rst
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => intr_rst
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => intr_rst
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => intr_rst
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => intr_rst
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => intr_rst
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => intr_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper is
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"000",
      ADDRARDADDR(10 downto 5) => Q(5 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 11) => B"000",
      ADDRBWRADDR(10 downto 5) => \gic0.gc1.count_d3_reg[5]\(5 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(15 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DINADIN(15 downto 0) => s_axi_wdata(15 downto 0),
      DINBDIN(15 downto 0) => s_axi_wdata(31 downto 16),
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15 downto 0) => D(15 downto 0),
      DOUTBDOUT(15 downto 0) => D(31 downto 16),
      DOUTPADOUTP(1) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68\,
      DOUTPADOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69\,
      DOUTPBDOUTP(1) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70\,
      DOUTPBDOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71\,
      ENARDEN => tmp_ram_rd_en,
      ENBWREN => E(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => \out\,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \icap_dataout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_prim_wrapper";
end \shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 5) => \gc1.count_d2_reg[6]\(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 5) => Q(6 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(15 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DINADIN(15) => \icap_dataout_i_reg[0]\(8),
      DINADIN(14) => \icap_dataout_i_reg[0]\(9),
      DINADIN(13) => \icap_dataout_i_reg[0]\(10),
      DINADIN(12) => \icap_dataout_i_reg[0]\(11),
      DINADIN(11) => \icap_dataout_i_reg[0]\(12),
      DINADIN(10) => \icap_dataout_i_reg[0]\(13),
      DINADIN(9) => \icap_dataout_i_reg[0]\(14),
      DINADIN(8) => \icap_dataout_i_reg[0]\(15),
      DINADIN(7) => \icap_dataout_i_reg[0]\(0),
      DINADIN(6) => \icap_dataout_i_reg[0]\(1),
      DINADIN(5) => \icap_dataout_i_reg[0]\(2),
      DINADIN(4) => \icap_dataout_i_reg[0]\(3),
      DINADIN(3) => \icap_dataout_i_reg[0]\(4),
      DINADIN(2) => \icap_dataout_i_reg[0]\(5),
      DINADIN(1) => \icap_dataout_i_reg[0]\(6),
      DINADIN(0) => \icap_dataout_i_reg[0]\(7),
      DINBDIN(15) => \icap_dataout_i_reg[0]\(24),
      DINBDIN(14) => \icap_dataout_i_reg[0]\(25),
      DINBDIN(13) => \icap_dataout_i_reg[0]\(26),
      DINBDIN(12) => \icap_dataout_i_reg[0]\(27),
      DINBDIN(11) => \icap_dataout_i_reg[0]\(28),
      DINBDIN(10) => \icap_dataout_i_reg[0]\(29),
      DINBDIN(9) => \icap_dataout_i_reg[0]\(30),
      DINBDIN(8) => \icap_dataout_i_reg[0]\(31),
      DINBDIN(7) => \icap_dataout_i_reg[0]\(16),
      DINBDIN(6) => \icap_dataout_i_reg[0]\(17),
      DINBDIN(5) => \icap_dataout_i_reg[0]\(18),
      DINBDIN(4) => \icap_dataout_i_reg[0]\(19),
      DINBDIN(3) => \icap_dataout_i_reg[0]\(20),
      DINBDIN(2) => \icap_dataout_i_reg[0]\(21),
      DINBDIN(1) => \icap_dataout_i_reg[0]\(22),
      DINBDIN(0) => \icap_dataout_i_reg[0]\(23),
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15 downto 0) => p_5_out_0(15 downto 0),
      DOUTBDOUT(15 downto 0) => p_5_out_0(31 downto 16),
      DOUTPADOUTP(1) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68\,
      DOUTPADOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69\,
      DOUTPBDOUTP(1) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70\,
      DOUTPBDOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71\,
      ENARDEN => tmp_ram_rd_en,
      ENBWREN => E(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => \out\,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_rd_bin_cntr is
  port (
    \gnxpm_cdc.rd_pntr_gc_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gc1.count_d2_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_rd_bin_cntr : entity is "rd_bin_cntr";
end shell_axi_hwicap_0_0_rd_bin_cntr;

architecture STRUCTURE of shell_axi_hwicap_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^gc1.count_d2_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[0]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[4]_i_1\ : label is "soft_lutpair18";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \gc1.count_d2_reg[5]_0\(5 downto 0) <= \^gc1.count_d2_reg[5]_0\(5 downto 0);
\gc1.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__2\(0)
    );
\gc1.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__2\(1)
    );
\gc1.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      O => \plusOp__2\(2)
    );
\gc1.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(3),
      O => \plusOp__2\(3)
    );
\gc1.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(2),
      I3 => rd_pntr_plus2(3),
      I4 => rd_pntr_plus2(4),
      O => \plusOp__2\(4)
    );
\gc1.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(4),
      I3 => rd_pntr_plus2(3),
      I4 => rd_pntr_plus2(2),
      I5 => rd_pntr_plus2(5),
      O => \plusOp__2\(5)
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      Q => \^gc1.count_d2_reg[5]_0\(0),
      S => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(1),
      Q => \^gc1.count_d2_reg[5]_0\(1),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(2),
      Q => \^gc1.count_d2_reg[5]_0\(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(3),
      Q => \^gc1.count_d2_reg[5]_0\(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(4),
      Q => \^gc1.count_d2_reg[5]_0\(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(5),
      Q => \^gc1.count_d2_reg[5]_0\(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[5]_0\(0),
      Q => \^q\(0),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[5]_0\(1),
      Q => \^q\(1),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[5]_0\(2),
      Q => \^q\(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[5]_0\(3),
      Q => \^q\(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[5]_0\(4),
      Q => \^q\(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[5]_0\(5),
      Q => \^q\(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(0),
      Q => rd_pntr_plus2(0),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(1),
      Q => rd_pntr_plus2(1),
      S => \Q_reg_reg[0]\
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(2),
      Q => rd_pntr_plus2(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(3),
      Q => rd_pntr_plus2(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(4),
      Q => rd_pntr_plus2(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(5),
      Q => rd_pntr_plus2(5),
      R => \Q_reg_reg[0]\
    );
\gnxpm_cdc.rd_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \gnxpm_cdc.rd_pntr_gc_reg[4]\(0)
    );
\gnxpm_cdc.rd_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \gnxpm_cdc.rd_pntr_gc_reg[4]\(1)
    );
\gnxpm_cdc.rd_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \gnxpm_cdc.rd_pntr_gc_reg[4]\(2)
    );
\gnxpm_cdc.rd_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \gnxpm_cdc.rd_pntr_gc_reg[4]\(3)
    );
\gnxpm_cdc.rd_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \gnxpm_cdc.rd_pntr_gc_reg[4]\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_rd_bin_cntr__parameterized0\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC;
    \Q_reg_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_rd_bin_cntr__parameterized0\ : entity is "rd_bin_cntr";
end \shell_axi_hwicap_0_0_rd_bin_cntr__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_rd_bin_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gc1.count[6]_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ram_empty_i_i_8_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gc1.count[6]_i_2\ : label is "soft_lutpair9";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__1\(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__1\(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      O => \plusOp__1\(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(3),
      O => \plusOp__1\(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(2),
      I4 => rd_pntr_plus2(4),
      O => \plusOp__1\(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      I3 => rd_pntr_plus2(3),
      I4 => rd_pntr_plus2(4),
      I5 => rd_pntr_plus2(5),
      O => \plusOp__1\(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gc1.count[6]_i_2_n_0\,
      I1 => rd_pntr_plus2(5),
      I2 => rd_pntr_plus2(4),
      I3 => rd_pntr_plus2(3),
      I4 => rd_pntr_plus2(6),
      O => \plusOp__1\(6)
    );
\gc1.count[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      O => \gc1.count[6]_i_2_n_0\
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      Q => \^q\(0),
      S => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(1),
      Q => \^q\(1),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(2),
      Q => \^q\(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(3),
      Q => \^q\(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(4),
      Q => \^q\(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(5),
      Q => rd_pntr_plus1(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(6),
      Q => rd_pntr_plus1(6),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus1(5),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus1(6),
      Q => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(0),
      Q => rd_pntr_plus2(0),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(1),
      Q => rd_pntr_plus2(1),
      S => \Q_reg_reg[0]\
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(2),
      Q => rd_pntr_plus2(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(3),
      Q => rd_pntr_plus2(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(4),
      Q => rd_pntr_plus2(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(5),
      Q => rd_pntr_plus2(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(6),
      Q => rd_pntr_plus2(6),
      R => \Q_reg_reg[0]\
    );
\ram_empty_i_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => p_7_in,
      I1 => Bus_RNW_reg,
      I2 => ipbus_1,
      I3 => ipbus_2,
      I4 => ram_empty_i_i_8_n_0,
      O => ram_empty_fb_i_reg
    );
ram_empty_i_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => rd_pntr_plus1(6),
      I1 => WR_PNTR_RD(1),
      I2 => rd_pntr_plus1(5),
      I3 => WR_PNTR_RD(0),
      I4 => \out\,
      O => ram_empty_i_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_rd_dc_as__parameterized0\ is
  port (
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in5_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_rd_dc_as__parameterized0\ : entity is "rd_dc_as";
end \shell_axi_hwicap_0_0_rd_dc_as__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_rd_dc_as__parameterized0\ is
  signal \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal minusOp_carry_n_10 : STD_LOGIC;
  signal minusOp_carry_n_11 : STD_LOGIC;
  signal minusOp_carry_n_12 : STD_LOGIC;
  signal minusOp_carry_n_13 : STD_LOGIC;
  signal minusOp_carry_n_14 : STD_LOGIC;
  signal minusOp_carry_n_15 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal minusOp_carry_n_9 : STD_LOGIC;
  signal NLW_minusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_minusOp_carry_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_minusOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_minusOp_carry_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) <= \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(6 downto 0);
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FF2F22"
    )
        port map (
      I0 => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(6),
      I1 => sw_reset_reg,
      I2 => Bus_RNW_reg_reg,
      I3 => s_axi_wdata(0),
      I4 => p_1_in5_in,
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\
    );
minusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_minusOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => minusOp_carry_n_2,
      CO(4) => minusOp_carry_n_3,
      CO(3) => NLW_minusOp_carry_CO_UNCONNECTED(3),
      CO(2) => minusOp_carry_n_5,
      CO(1) => minusOp_carry_n_6,
      CO(0) => minusOp_carry_n_7,
      DI(7) => NLW_minusOp_carry_DI_UNCONNECTED(7),
      DI(6) => '0',
      DI(5 downto 0) => WR_PNTR_RD(5 downto 0),
      O(7) => NLW_minusOp_carry_O_UNCONNECTED(7),
      O(6) => minusOp_carry_n_9,
      O(5) => minusOp_carry_n_10,
      O(4) => minusOp_carry_n_11,
      O(3) => minusOp_carry_n_12,
      O(2) => minusOp_carry_n_13,
      O(1) => minusOp_carry_n_14,
      O(0) => minusOp_carry_n_15,
      S(7) => NLW_minusOp_carry_S_UNCONNECTED(7),
      S(6 downto 0) => S(6 downto 0)
    );
\rd_dc_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_15,
      Q => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(0)
    );
\rd_dc_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_14,
      Q => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(1)
    );
\rd_dc_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_13,
      Q => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(2)
    );
\rd_dc_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_12,
      Q => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(3)
    );
\rd_dc_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_11,
      Q => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(4)
    );
\rd_dc_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_10,
      Q => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(5)
    );
\rd_dc_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_9,
      Q => \^gen_ip_irpt_status_reg[1].gen_reg_status.ip_irpt_status_reg_reg[1]_0\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    tmp_ram_rd_en : out STD_LOGIC;
    ram_empty_i0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    wrfifo_rden : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_rd_status_flags_as : entity is "rd_status_flags_as";
end shell_axi_hwicap_0_0_rd_status_flags_as;

architecture STRUCTURE of shell_axi_hwicap_0_0_rd_status_flags_as is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_i;
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => ram_empty_i,
      I1 => ram_empty_fb_i,
      I2 => wrfifo_rden,
      I3 => \Q_reg_reg[0]\,
      O => tmp_ram_rd_en
    );
\gc1.count_d1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => ram_empty_i,
      I1 => ram_empty_fb_i,
      I2 => wrfifo_rden,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_fb_i,
      S => \Q_reg_reg[0]\
    );
ram_empty_i_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_empty_fb_i,
      I1 => ram_empty_i,
      O => ram_empty_fb_i_reg_0
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_rd_status_flags_as__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \gc1.count_d1_reg[6]\ : out STD_LOGIC;
    tmp_ram_rd_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_rd_status_flags_as__parameterized0\ : entity is "rd_status_flags_as";
end \shell_axi_hwicap_0_0_rd_status_flags_as__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_rd_status_flags_as__parameterized0\ is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \gc1.count_d1_reg[6]\ <= ram_empty_fb_i;
  \out\ <= ram_empty_i;
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => ipbus_1,
      I1 => ipbus_2,
      I2 => ram_empty_fb_i,
      I3 => ram_empty_i,
      I4 => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      I5 => \Q_reg_reg[0]\,
      O => tmp_ram_rd_en
    );
\gc1.count_d1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => p_7_in,
      I1 => Bus_RNW_reg,
      I2 => ram_empty_i,
      I3 => ram_empty_fb_i,
      I4 => ipbus_2,
      I5 => ipbus_1,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_fb_i,
      S => \Q_reg_reg[0]\
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_1 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sckt_wr_rst_i_q : in STD_LOGIC;
    \Q_reg_reg[0]_1\ : in STD_LOGIC;
    \Q_reg_reg[0]_2\ : in STD_LOGIC;
    \Q_reg_reg[0]_3\ : in STD_LOGIC;
    \Q_reg_reg[0]_4\ : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_1 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_1;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_1 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \^grstd1.grst_full.grst_f.rst_d1_reg\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \grstd1.grst_full.grst_f.rst_d1_reg\ <= \^grstd1.grst_full.grst_f.rst_d1_reg\;
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^grstd1.grst_full.grst_f.rst_d1_reg\,
      I1 => sckt_wr_rst_i_q,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q_reg,
      I1 => \Q_reg_reg[0]_1\,
      I2 => \Q_reg_reg[0]_2\,
      I3 => \Q_reg_reg[0]_3\,
      I4 => \Q_reg_reg[0]_4\,
      I5 => in0(0),
      O => \^grstd1.grst_full.grst_f.rst_d1_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_10 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\ : in STD_LOGIC;
    sckt_rd_rst_d1 : in STD_LOGIC;
    rd_rst_active : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_10 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_10;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_10 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => Q_reg,
      I1 => rd_rst_active,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\,
      I1 => Q_reg,
      I2 => sckt_rd_rst_d1,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_11 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_11 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_11;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_11 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_12 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_12 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_12;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_12 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_13 is
  port (
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_13 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_13;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_13 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_14 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    fifo_wrst_done : in STD_LOGIC;
    fifo_rrst_done : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]_1\ : in STD_LOGIC;
    \Q_reg_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_14 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_14;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_14 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => fifo_wrst_done,
      I1 => fifo_rrst_done,
      I2 => Q_reg,
      I3 => \Q_reg_reg[0]_0\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070707F70707070"
    )
        port map (
      I0 => fifo_rrst_done,
      I1 => fifo_wrst_done,
      I2 => in0(0),
      I3 => Q_reg,
      I4 => \Q_reg_reg[0]_1\,
      I5 => \Q_reg_reg[0]_2\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_15 is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    fifo_wrst_done : in STD_LOGIC;
    fifo_rrst_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_15 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_15;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_15 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F22"
    )
        port map (
      I0 => fifo_wrst_done,
      I1 => fifo_rrst_done,
      I2 => Q_reg,
      I3 => \out\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_16 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_16 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_16;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_16 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_17 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_17 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_17;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_17 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_18 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_18 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_18;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_18 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_19 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_19 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_19;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_19 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_2 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_2 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_2;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_2 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_20 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_20 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_20;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_20 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_21 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_21 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_21;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_21 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_22 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    rd_rst_active : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_22 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_22;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_22 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rd_rst_active,
      I1 => Q_reg,
      I2 => in0(0),
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_23 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_23 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_23;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_23 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_25 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_25 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_25;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_25 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_26 is
  port (
    \out\ : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    sckt_wr_rst_i_q : in STD_LOGIC;
    \Q_reg_reg[0]_1\ : in STD_LOGIC;
    \Q_reg_reg[0]_2\ : in STD_LOGIC;
    \Q_reg_reg[0]_3\ : in STD_LOGIC;
    \Q_reg_reg[0]_4\ : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_26 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_26;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_26 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\ : label is "soft_lutpair13";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute SOFT_HLUTNM of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_i_1__0\ : label is "soft_lutpair13";
begin
  \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\ <= \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\;
  \out\ <= Q_reg;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I1 => ram_full_i_reg,
      I2 => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\,
      O => prmry_in
    );
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\,
      I1 => sckt_wr_rst_i_q,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q_reg,
      I1 => \Q_reg_reg[0]_1\,
      I2 => \Q_reg_reg[0]_2\,
      I3 => \Q_reg_reg[0]_3\,
      I4 => \Q_reg_reg[0]_4\,
      I5 => in0(0),
      O => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_27 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_27 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_27;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_27 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_28 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_28 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_28;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_28 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_29 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_29 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_29;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_29 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_3 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_3 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_3;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_3 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_30 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_30 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_30;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_30 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_31 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_31 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_31;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_31 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_32 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_32 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_32;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_32 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_33 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_33 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_33;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_33 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_34 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_34 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_34;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_34 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_35 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\ : in STD_LOGIC;
    sckt_rd_rst_d1 : in STD_LOGIC;
    rd_rst_active : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_35 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_35;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_35 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => Q_reg,
      I1 => rd_rst_active,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\,
      I1 => Q_reg,
      I2 => sckt_rd_rst_d1,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_36 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_36 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_36;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_36 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_37 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_37 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_37;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_37 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_38 is
  port (
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_38 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_38;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_38 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_39 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    fifo_wrst_done : in STD_LOGIC;
    fifo_rrst_done : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]_1\ : in STD_LOGIC;
    \Q_reg_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_39 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_39;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_39 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => fifo_wrst_done,
      I1 => fifo_rrst_done,
      I2 => Q_reg,
      I3 => \Q_reg_reg[0]_0\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070707F70707070"
    )
        port map (
      I0 => fifo_rrst_done,
      I1 => fifo_wrst_done,
      I2 => in0(0),
      I3 => Q_reg,
      I4 => \Q_reg_reg[0]_1\,
      I5 => \Q_reg_reg[0]_2\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_4 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_4 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_4;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_4 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_40 is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    fifo_wrst_done : in STD_LOGIC;
    fifo_rrst_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_40 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_40;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_40 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F22"
    )
        port map (
      I0 => fifo_wrst_done,
      I1 => fifo_rrst_done,
      I2 => Q_reg,
      I3 => \out\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_41 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_41 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_41;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_41 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_42 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_42 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_42;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_42 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_43 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_43 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_43;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_43 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_44 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_44 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_44;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_44 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_45 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_45 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_45;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_45 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_46 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_46 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_46;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_46 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_47 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    rd_rst_active : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_47 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_47;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_47 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rd_rst_active,
      I1 => Q_reg,
      I2 => in0(0),
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_48 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_48 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_48;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_48 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_5 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_5 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_5;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_5 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_6 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_6 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_6;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_6 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_7 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_7 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_7;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_7 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_8 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_8 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_8;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_8 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_synchronizer_ff_9 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_synchronizer_ff_9 : entity is "synchronizer_ff";
end shell_axi_hwicap_0_0_synchronizer_ff_9;

architecture STRUCTURE of shell_axi_hwicap_0_0_synchronizer_ff_9 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized0\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized0\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
begin
  D(5 downto 0) <= Q_reg(5 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(5),
      Q => Q_reg(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized1\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized1\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized1\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
begin
  D(5 downto 0) <= Q_reg(5 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => Q(5),
      Q => Q_reg(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Q_reg_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized2\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized2\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized2\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
begin
  \out\(5 downto 0) <= Q_reg(5 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => \Q_reg_reg[5]_0\(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => \Q_reg_reg[5]_0\(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => \Q_reg_reg[5]_0\(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => \Q_reg_reg[5]_0\(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => \Q_reg_reg[5]_0\(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => \Q_reg_reg[5]_0\(5),
      Q => Q_reg(5)
    );
\gnxpm_cdc.wr_pntr_bin[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(3),
      I2 => Q_reg(5),
      O => D(0)
    );
\gnxpm_cdc.wr_pntr_bin[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(5),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Q_reg_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized3\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized3\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized3\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
begin
  \out\(5 downto 0) <= Q_reg(5 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \Q_reg_reg[5]_0\(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \Q_reg_reg[5]_0\(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \Q_reg_reg[5]_0\(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \Q_reg_reg[5]_0\(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \Q_reg_reg[5]_0\(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \Q_reg_reg[5]_0\(5),
      Q => Q_reg(5)
    );
\gnxpm_cdc.rd_pntr_bin[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(3),
      I2 => Q_reg(5),
      O => D(0)
    );
\gnxpm_cdc.rd_pntr_bin[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(5),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized4\ is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized4\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized4\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized4\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
begin
  D(6 downto 0) <= Q_reg(6 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => Q(6),
      Q => Q_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized5\ is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized5\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized5\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized5\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
begin
  D(6 downto 0) <= Q_reg(6 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(6),
      Q => Q_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized6\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized6\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized6\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized6\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \^gnxpm_cdc.wr_pntr_bin_reg[5]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
begin
  \gnxpm_cdc.wr_pntr_bin_reg[5]\(5 downto 0) <= \^gnxpm_cdc.wr_pntr_bin_reg[5]\(5 downto 0);
  \out\(0) <= Q_reg(6);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(6),
      Q => Q_reg(6)
    );
\gnxpm_cdc.wr_pntr_bin[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      I2 => Q_reg(0),
      I3 => Q_reg(1),
      I4 => \^gnxpm_cdc.wr_pntr_bin_reg[5]\(4),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[5]\(0)
    );
\gnxpm_cdc.wr_pntr_bin[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(3),
      I1 => Q_reg(1),
      I2 => Q_reg(2),
      I3 => Q_reg(6),
      I4 => Q_reg(4),
      I5 => Q_reg(5),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[5]\(1)
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(2),
      I2 => Q_reg(3),
      I3 => Q_reg(6),
      I4 => Q_reg(5),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[5]\(2)
    );
\gnxpm_cdc.wr_pntr_bin[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(3),
      I2 => Q_reg(6),
      I3 => Q_reg(5),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[5]\(3)
    );
\gnxpm_cdc.wr_pntr_bin[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(4),
      I2 => Q_reg(6),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[5]\(4)
    );
\gnxpm_cdc.wr_pntr_bin[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(6),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[5]\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_synchronizer_ff__parameterized7\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized7\ : entity is "synchronizer_ff";
end \shell_axi_hwicap_0_0_synchronizer_ff__parameterized7\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_synchronizer_ff__parameterized7\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \^gnxpm_cdc.rd_pntr_bin_reg[5]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
begin
  \gnxpm_cdc.rd_pntr_bin_reg[5]\(5 downto 0) <= \^gnxpm_cdc.rd_pntr_bin_reg[5]\(5 downto 0);
  \out\(0) <= Q_reg(6);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(6),
      Q => Q_reg(6)
    );
\gnxpm_cdc.rd_pntr_bin[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      I2 => Q_reg(0),
      I3 => Q_reg(1),
      I4 => \^gnxpm_cdc.rd_pntr_bin_reg[5]\(4),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[5]\(0)
    );
\gnxpm_cdc.rd_pntr_bin[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(3),
      I1 => Q_reg(1),
      I2 => Q_reg(2),
      I3 => Q_reg(6),
      I4 => Q_reg(4),
      I5 => Q_reg(5),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[5]\(1)
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(2),
      I2 => Q_reg(3),
      I3 => Q_reg(6),
      I4 => Q_reg(5),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[5]\(2)
    );
\gnxpm_cdc.rd_pntr_bin[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(3),
      I2 => Q_reg(6),
      I3 => Q_reg(5),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[5]\(3)
    );
\gnxpm_cdc.rd_pntr_bin[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(4),
      I2 => Q_reg(6),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[5]\(4)
    );
\gnxpm_cdc.rd_pntr_bin[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(6),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[5]\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_wr_bin_cntr is
  port (
    ram_full_i_reg : out STD_LOGIC;
    \gnxpm_cdc.wr_pntr_gc_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    busip_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \Q_reg_reg[0]\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_wr_bin_cntr : entity is "wr_bin_cntr";
end shell_axi_hwicap_0_0_wr_bin_cntr;

architecture STRUCTURE of shell_axi_hwicap_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal \ram_full_i_i_3__0_n_0\ : STD_LOGIC;
  signal ram_full_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_i_i_6_n_0 : STD_LOGIC;
  signal ram_full_i_i_7_n_0 : STD_LOGIC;
  signal ram_full_i_i_8_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gic0.gc1.count[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of ram_full_i_i_4 : label is "soft_lutpair21";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => busip_1,
      I1 => Bus_RNW_reg,
      O => \gic0.gc1.count_reg[0]_0\
    );
\gic0.gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      O => plusOp(0)
    );
\gic0.gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      O => plusOp(1)
    );
\gic0.gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus3(1),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(2),
      O => plusOp(2)
    );
\gic0.gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(3),
      O => plusOp(3)
    );
\gic0.gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(2),
      I3 => wr_pntr_plus3(3),
      I4 => wr_pntr_plus3(4),
      O => plusOp(4)
    );
\gic0.gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(4),
      I3 => wr_pntr_plus3(3),
      I4 => wr_pntr_plus3(2),
      I5 => wr_pntr_plus3(5),
      O => plusOp(5)
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(0),
      Q => wr_pntr_plus2(0),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(1),
      Q => wr_pntr_plus2(1),
      S => SR(0)
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(2),
      Q => wr_pntr_plus2(2),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(3),
      Q => wr_pntr_plus2(3),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(4),
      Q => wr_pntr_plus2(4),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(5),
      Q => wr_pntr_plus2(5),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      Q => p_14_out(0),
      S => SR(0)
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(1),
      Q => p_14_out(1),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(2),
      Q => p_14_out(2),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(3),
      Q => p_14_out(3),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(4),
      Q => p_14_out(4),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(5),
      Q => p_14_out(5),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(0),
      Q => wr_pntr_plus3(0),
      S => SR(0)
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(1),
      Q => wr_pntr_plus3(1),
      S => SR(0)
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(2),
      Q => wr_pntr_plus3(2),
      R => SR(0)
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(3),
      Q => wr_pntr_plus3(3),
      R => SR(0)
    );
\gic0.gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(4),
      Q => wr_pntr_plus3(4),
      R => SR(0)
    );
\gic0.gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(5),
      Q => wr_pntr_plus3(5),
      R => SR(0)
    );
\gnxpm_cdc.wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \gnxpm_cdc.wr_pntr_gc_reg[4]\(0)
    );
\gnxpm_cdc.wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \gnxpm_cdc.wr_pntr_gc_reg[4]\(1)
    );
\gnxpm_cdc.wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \gnxpm_cdc.wr_pntr_gc_reg[4]\(2)
    );
\gnxpm_cdc.wr_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \gnxpm_cdc.wr_pntr_gc_reg[4]\(3)
    );
\gnxpm_cdc.wr_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \gnxpm_cdc.wr_pntr_gc_reg[4]\(4)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(5),
      O => S(5)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(4),
      O => S(4)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(3),
      O => S(3)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(2),
      O => S(2)
    );
minusOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(1),
      O => S(1)
    );
minusOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(0),
      O => S(0)
    );
ram_full_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I1 => ram_full_i_i_2_n_0,
      I2 => \ram_full_i_i_3__0_n_0\,
      I3 => \out\,
      I4 => p_8_in,
      I5 => ram_full_i_i_4_n_0,
      O => ram_full_i_reg
    );
ram_full_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => ram_full_i_i_5_n_0,
      I1 => p_14_out(4),
      I2 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(4),
      I3 => p_14_out(5),
      I4 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(5),
      I5 => ram_full_i_i_6_n_0,
      O => ram_full_i_i_2_n_0
    );
\ram_full_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(2),
      I1 => wr_pntr_plus2(2),
      I2 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(3),
      I3 => wr_pntr_plus2(3),
      I4 => ram_full_i_i_7_n_0,
      O => \ram_full_i_i_3__0_n_0\
    );
ram_full_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => busip_1,
      I1 => Bus_RNW_reg,
      I2 => ram_full_i_i_8_n_0,
      I3 => \Q_reg_reg[0]\,
      O => ram_full_i_i_4_n_0
    );
ram_full_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(3),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(3),
      I2 => p_14_out(2),
      I3 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(2),
      O => ram_full_i_i_5_n_0
    );
ram_full_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(1),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(1),
      I2 => p_14_out(0),
      I3 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(0),
      O => ram_full_i_i_6_n_0
    );
ram_full_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(1),
      I2 => wr_pntr_plus2(0),
      I3 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(0),
      O => ram_full_i_i_7_n_0
    );
ram_full_i_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009000000000009"
    )
        port map (
      I0 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(4),
      I1 => wr_pntr_plus2(4),
      I2 => ram_full_fb_i_reg,
      I3 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I4 => \gnxpm_cdc.rd_pntr_bin_reg[5]\(5),
      I5 => wr_pntr_plus2(5),
      O => ram_full_i_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_wr_bin_cntr__parameterized0\ is
  port (
    ram_full_i_reg : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    rdfifo_wren : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_wr_bin_cntr__parameterized0\ : entity is "wr_bin_cntr";
end \shell_axi_hwicap_0_0_wr_bin_cntr__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_wr_bin_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \gic0.gc1.count[6]_i_2_n_0\ : STD_LOGIC;
  signal p_14_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ram_full_i_i_2__0_n_0\ : STD_LOGIC;
  signal ram_full_i_i_3_n_0 : STD_LOGIC;
  signal \ram_full_i_i_4__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_5__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_6__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_7__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_8__0_n_0\ : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gic0.gc1.count[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gic0.gc1.count[4]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gic0.gc1.count[6]_i_2\ : label is "soft_lutpair11";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\gic0.gc1.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      O => \plusOp__0\(0)
    );
\gic0.gc1.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      O => \plusOp__0\(1)
    );
\gic0.gc1.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus3(1),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(2),
      O => \plusOp__0\(2)
    );
\gic0.gc1.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(3),
      O => \plusOp__0\(3)
    );
\gic0.gc1.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus3(3),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(0),
      I3 => wr_pntr_plus3(2),
      I4 => wr_pntr_plus3(4),
      O => \plusOp__0\(4)
    );
\gic0.gc1.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus3(1),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(2),
      I3 => wr_pntr_plus3(3),
      I4 => wr_pntr_plus3(4),
      I5 => wr_pntr_plus3(5),
      O => \plusOp__0\(5)
    );
\gic0.gc1.count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gic0.gc1.count[6]_i_2_n_0\,
      I1 => wr_pntr_plus3(5),
      I2 => wr_pntr_plus3(4),
      I3 => wr_pntr_plus3(3),
      I4 => wr_pntr_plus3(6),
      O => \plusOp__0\(6)
    );
\gic0.gc1.count[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => wr_pntr_plus3(1),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(2),
      O => \gic0.gc1.count[6]_i_2_n_0\
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(0),
      Q => wr_pntr_plus2(0),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(1),
      Q => wr_pntr_plus2(1),
      S => SR(0)
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(2),
      Q => wr_pntr_plus2(2),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(3),
      Q => wr_pntr_plus2(3),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(4),
      Q => wr_pntr_plus2(4),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(5),
      Q => wr_pntr_plus2(5),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(6),
      Q => wr_pntr_plus2(6),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      Q => p_14_out(0),
      S => SR(0)
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(1),
      Q => p_14_out(1),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(2),
      Q => p_14_out(2),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(3),
      Q => p_14_out(3),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(4),
      Q => p_14_out(4),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(5),
      Q => p_14_out(5),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus2(6),
      Q => p_14_out(6),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_14_out(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => wr_pntr_plus3(0),
      S => SR(0)
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => wr_pntr_plus3(1),
      S => SR(0)
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => wr_pntr_plus3(2),
      R => SR(0)
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => wr_pntr_plus3(3),
      R => SR(0)
    );
\gic0.gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(4),
      Q => wr_pntr_plus3(4),
      R => SR(0)
    );
\gic0.gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(5),
      Q => wr_pntr_plus3(5),
      R => SR(0)
    );
\gic0.gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(6),
      Q => wr_pntr_plus3(6),
      R => SR(0)
    );
\minusOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => RD_PNTR_WR(6),
      O => S(6)
    );
\minusOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => RD_PNTR_WR(5),
      O => S(5)
    );
\minusOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => RD_PNTR_WR(4),
      O => S(4)
    );
\minusOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => RD_PNTR_WR(3),
      O => S(3)
    );
\minusOp_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => RD_PNTR_WR(2),
      O => S(2)
    );
\minusOp_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => RD_PNTR_WR(1),
      O => S(1)
    );
minusOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => RD_PNTR_WR(0),
      O => S(0)
    );
\ram_full_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF82000082"
    )
        port map (
      I0 => \ram_full_i_i_2__0_n_0\,
      I1 => p_14_out(5),
      I2 => RD_PNTR_WR(5),
      I3 => p_14_out(6),
      I4 => RD_PNTR_WR(6),
      I5 => ram_full_i_i_3_n_0,
      O => ram_full_i_reg
    );
\ram_full_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000008"
    )
        port map (
      I0 => \ram_full_i_i_4__0_n_0\,
      I1 => \ram_full_i_i_5__0_n_0\,
      I2 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I3 => RD_PNTR_WR(0),
      I4 => p_14_out(0),
      O => \ram_full_i_i_2__0_n_0\
    );
ram_full_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000820000"
    )
        port map (
      I0 => \ram_full_i_i_6__0_n_0\,
      I1 => RD_PNTR_WR(5),
      I2 => wr_pntr_plus2(5),
      I3 => ram_full_fb_i_reg,
      I4 => rdfifo_wren,
      I5 => prmry_in,
      O => ram_full_i_i_3_n_0
    );
\ram_full_i_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(2),
      I1 => RD_PNTR_WR(2),
      I2 => p_14_out(1),
      I3 => RD_PNTR_WR(1),
      O => \ram_full_i_i_4__0_n_0\
    );
\ram_full_i_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(4),
      I1 => RD_PNTR_WR(4),
      I2 => p_14_out(3),
      I3 => RD_PNTR_WR(3),
      O => \ram_full_i_i_5__0_n_0\
    );
\ram_full_i_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => \ram_full_i_i_7__0_n_0\,
      I1 => wr_pntr_plus2(6),
      I2 => RD_PNTR_WR(6),
      I3 => wr_pntr_plus2(4),
      I4 => RD_PNTR_WR(4),
      I5 => \ram_full_i_i_8__0_n_0\,
      O => \ram_full_i_i_6__0_n_0\
    );
\ram_full_i_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(3),
      I1 => RD_PNTR_WR(3),
      I2 => wr_pntr_plus2(2),
      I3 => RD_PNTR_WR(2),
      O => \ram_full_i_i_7__0_n_0\
    );
\ram_full_i_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => RD_PNTR_WR(1),
      I2 => wr_pntr_plus2(0),
      I3 => RD_PNTR_WR(0),
      O => \ram_full_i_i_8__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_wr_dc_as is
  port (
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_wr_dc_as : entity is "wr_dc_as";
end shell_axi_hwicap_0_0_wr_dc_as;

architecture STRUCTURE of shell_axi_hwicap_0_0_wr_dc_as is
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal minusOp_carry_n_10 : STD_LOGIC;
  signal minusOp_carry_n_11 : STD_LOGIC;
  signal minusOp_carry_n_12 : STD_LOGIC;
  signal minusOp_carry_n_13 : STD_LOGIC;
  signal minusOp_carry_n_14 : STD_LOGIC;
  signal minusOp_carry_n_15 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal NLW_minusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_minusOp_carry_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_minusOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_minusOp_carry_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(5 downto 0);
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1FFF11FFF1"
    )
        port map (
      I0 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(5),
      I1 => sw_reset_reg,
      I2 => s_axi_wdata(0),
      I3 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2_n_0\,
      I4 => Bus_RNW_reg_reg,
      I5 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(2),
      I1 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(3),
      I2 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(0),
      I3 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(1),
      I4 => sw_reset_reg,
      I5 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(4),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => NLW_minusOp_carry_CO_UNCONNECTED(7 downto 5),
      CO(4) => minusOp_carry_n_3,
      CO(3) => NLW_minusOp_carry_CO_UNCONNECTED(3),
      CO(2) => minusOp_carry_n_5,
      CO(1) => minusOp_carry_n_6,
      CO(0) => minusOp_carry_n_7,
      DI(7 downto 6) => NLW_minusOp_carry_DI_UNCONNECTED(7 downto 6),
      DI(5) => '0',
      DI(4 downto 0) => Q(4 downto 0),
      O(7 downto 6) => NLW_minusOp_carry_O_UNCONNECTED(7 downto 6),
      O(5) => minusOp_carry_n_10,
      O(4) => minusOp_carry_n_11,
      O(3) => minusOp_carry_n_12,
      O(2) => minusOp_carry_n_13,
      O(1) => minusOp_carry_n_14,
      O(0) => minusOp_carry_n_15,
      S(7 downto 6) => NLW_minusOp_carry_S_UNCONNECTED(7 downto 6),
      S(5 downto 0) => S(5 downto 0)
    );
\wr_data_count_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_15,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(0)
    );
\wr_data_count_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_14,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(1)
    );
\wr_data_count_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_13,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(2)
    );
\wr_data_count_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_12,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(3)
    );
\wr_data_count_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_11,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(4)
    );
\wr_data_count_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_10,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_wr_dc_as__parameterized0\ is
  port (
    gate_signal_p_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gate_signal_p_reg_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_wr_dc_as__parameterized0\ : entity is "wr_dc_as";
end \shell_axi_hwicap_0_0_wr_dc_as__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_wr_dc_as__parameterized0\ is
  signal gate_signal_p_i_2_n_0 : STD_LOGIC;
  signal gate_signal_p_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_n_10 : STD_LOGIC;
  signal minusOp_carry_n_11 : STD_LOGIC;
  signal minusOp_carry_n_12 : STD_LOGIC;
  signal minusOp_carry_n_13 : STD_LOGIC;
  signal minusOp_carry_n_14 : STD_LOGIC;
  signal minusOp_carry_n_15 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal minusOp_carry_n_9 : STD_LOGIC;
  signal \wr_data_count_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_data_count_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_data_count_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_data_count_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_data_count_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_data_count_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_data_count_i_reg_n_0_[6]\ : STD_LOGIC;
  signal NLW_minusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_minusOp_carry_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_minusOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_minusOp_carry_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
begin
gate_signal_p_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => gate_signal_p_i_2_n_0,
      I1 => \wr_data_count_i_reg_n_0_[6]\,
      I2 => gate_signal_p_i_3_n_0,
      I3 => gate_signal_p_reg_0,
      O => gate_signal_p_reg
    );
gate_signal_p_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \wr_data_count_i_reg_n_0_[5]\,
      I1 => \wr_data_count_i_reg_n_0_[3]\,
      I2 => \wr_data_count_i_reg_n_0_[2]\,
      I3 => \wr_data_count_i_reg_n_0_[4]\,
      I4 => \wr_data_count_i_reg_n_0_[6]\,
      O => gate_signal_p_i_2_n_0
    );
gate_signal_p_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \wr_data_count_i_reg_n_0_[4]\,
      I1 => \wr_data_count_i_reg_n_0_[2]\,
      I2 => \wr_data_count_i_reg_n_0_[0]\,
      I3 => \wr_data_count_i_reg_n_0_[1]\,
      I4 => \wr_data_count_i_reg_n_0_[3]\,
      I5 => \wr_data_count_i_reg_n_0_[5]\,
      O => gate_signal_p_i_3_n_0
    );
minusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_minusOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => minusOp_carry_n_2,
      CO(4) => minusOp_carry_n_3,
      CO(3) => NLW_minusOp_carry_CO_UNCONNECTED(3),
      CO(2) => minusOp_carry_n_5,
      CO(1) => minusOp_carry_n_6,
      CO(0) => minusOp_carry_n_7,
      DI(7) => NLW_minusOp_carry_DI_UNCONNECTED(7),
      DI(6) => '0',
      DI(5 downto 0) => Q(5 downto 0),
      O(7) => NLW_minusOp_carry_O_UNCONNECTED(7),
      O(6) => minusOp_carry_n_9,
      O(5) => minusOp_carry_n_10,
      O(4) => minusOp_carry_n_11,
      O(3) => minusOp_carry_n_12,
      O(2) => minusOp_carry_n_13,
      O(1) => minusOp_carry_n_14,
      O(0) => minusOp_carry_n_15,
      S(7) => NLW_minusOp_carry_S_UNCONNECTED(7),
      S(6 downto 0) => S(6 downto 0)
    );
\wr_data_count_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_15,
      Q => \wr_data_count_i_reg_n_0_[0]\
    );
\wr_data_count_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_14,
      Q => \wr_data_count_i_reg_n_0_[1]\
    );
\wr_data_count_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_13,
      Q => \wr_data_count_i_reg_n_0_[2]\
    );
\wr_data_count_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_12,
      Q => \wr_data_count_i_reg_n_0_[3]\
    );
\wr_data_count_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_11,
      Q => \wr_data_count_i_reg_n_0_[4]\
    );
\wr_data_count_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_10,
      Q => \wr_data_count_i_reg_n_0_[5]\
    );
\wr_data_count_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => minusOp_carry_n_9,
      Q => \wr_data_count_i_reg_n_0_[6]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_wr_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_WrAck_reg : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d2_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    busip_1_reg : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : in STD_LOGIC;
    \Q_reg_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_wr_status_flags_as : entity is "wr_status_flags_as";
end shell_axi_hwicap_0_0_wr_status_flags_as;

architecture STRUCTURE of shell_axi_hwicap_0_0_wr_status_flags_as is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \gic0.gc1.count_reg[0]\ <= ram_full_fb_i;
  \out\ <= ram_full_i;
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => busip_1_reg,
      I1 => ram_full_fb_i,
      I2 => p_8_in,
      I3 => \grstd1.grst_full.grst_f.rst_d3_reg_0\,
      I4 => ram_full_i,
      I5 => \Q_reg_reg[0]\,
      O => E(0)
    );
IP2Bus_WrAck_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      I1 => \grstd1.grst_full.grst_f.rst_d3_reg_0\,
      O => IP2Bus_WrAck_reg
    );
ram_full_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_reg\,
      Q => ram_full_fb_i,
      S => SR(0)
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_reg\,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_wr_status_flags_as__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d2_reg[5]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d2_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rdfifo_wren : in STD_LOGIC;
    wr_rst_busy_i2_out : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_wr_status_flags_as__parameterized0\ : entity is "wr_status_flags_as";
end \shell_axi_hwicap_0_0_wr_status_flags_as__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_wr_status_flags_as__parameterized0\ is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \gic0.gc1.count_reg[0]\ <= ram_full_fb_i;
  \out\ <= ram_full_i;
\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => rdfifo_wren,
      I2 => wr_rst_busy_i2_out,
      I3 => ram_full_i,
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gic0.gc1.count_d2_reg[5]\,
      Q => ram_full_fb_i,
      S => SR(0)
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gic0.gc1.count_d2_reg[5]\,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_slave_attachment is
  port (
    busip_1_reg : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    ip2bus_wrack_i_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    ip2bus_rdack_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_WrAck0 : out STD_LOGIC;
    p_11_in : out STD_LOGIC;
    IP2Bus_RdAck0 : out STD_LOGIC;
    p_10_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \ip2bus_data_i_reg[0]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_wrack_i_reg_0 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sz_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i : in STD_LOGIC;
    ip2bus_wrack_i : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    busip_1_reg_0 : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    wr_rst_busy_i2_out : in STD_LOGIC;
    ipbus_ack : in STD_LOGIC;
    ipbus_ack_fifo : in STD_LOGIC;
    p_5_out_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \Size_counter_i3_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    scndry_vect_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_data_count_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \rd_dc_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    scndry_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_1_in5_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    intr2bus_wrack : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ip2bus_data_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_slave_attachment : entity is "slave_attachment";
end shell_axi_hwicap_0_0_slave_attachment;

architecture STRUCTURE of shell_axi_hwicap_0_0_slave_attachment is
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal bus2ip_rnw_i06_out : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_2_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of is_write_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair60";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      R => clear
    );
I_DECODER: entity work.shell_axi_hwicap_0_0_address_decoder
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \IP2Bus_Data_reg[0]\(4 downto 0) => \IP2Bus_Data_reg[0]\(4 downto 0),
      \IP2Bus_Data_reg[31]\ => \IP2Bus_Data_reg[31]\,
      IP2Bus_RdAck0 => IP2Bus_RdAck0,
      IP2Bus_WrAck0 => IP2Bus_WrAck0,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      Q(4 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4 downto 0),
      \Size_counter_i3_reg[0]\(11 downto 0) => \Size_counter_i3_reg[0]\(11 downto 0),
      \bus2ip_addr_i_reg[8]\(6) => bus2ip_addr(0),
      \bus2ip_addr_i_reg[8]\(5) => bus2ip_addr(1),
      \bus2ip_addr_i_reg[8]\(4) => bus2ip_addr(2),
      \bus2ip_addr_i_reg[8]\(3) => bus2ip_addr(3),
      \bus2ip_addr_i_reg[8]\(2) => bus2ip_addr(4),
      \bus2ip_addr_i_reg[8]\(1) => bus2ip_addr(5),
      \bus2ip_addr_i_reg[8]\(0) => bus2ip_addr(6),
      bus2ip_rnw_i => bus2ip_rnw_i,
      busip_1_reg => busip_1_reg,
      busip_1_reg_0 => busip_1_reg_0,
      \cr_i_reg[0]\(4 downto 0) => Q(4 downto 0),
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack => intr2bus_wrack,
      \ip2bus_data_i_reg[0]\(4 downto 0) => \ip2bus_data_i_reg[0]\(4 downto 0),
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_rdack_i_reg(0) => ip2bus_rdack_i_reg(0),
      ip2bus_wrack_i => ip2bus_wrack_i,
      ip2bus_wrack_i_reg => ip2bus_wrack_i_reg,
      ip2bus_wrack_i_reg_0 => ip2bus_wrack_i_reg_0,
      \ip_irpt_enable_reg_reg[3]\(0) => \ip_irpt_enable_reg_reg[3]\(0),
      \ip_irpt_enable_reg_reg[3]_0\(3 downto 0) => \ip_irpt_enable_reg_reg[3]_0\(3 downto 0),
      ipbus_ack => ipbus_ack,
      ipbus_ack_fifo => ipbus_ack_fifo,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => ipif_glbl_irpt_enable_reg_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      p_10_in => p_10_in,
      p_11_in => p_11_in,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_5_out => p_5_out,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      ram_full_i_reg => ram_full_i_reg,
      \rd_dc_i_reg[6]\(6 downto 0) => \rd_dc_i_reg[6]\(6 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => \^s_axi_arready\,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wready => \^s_axi_wready\,
      scndry_out => scndry_out,
      scndry_vect_out(31 downto 0) => scndry_vect_out(31 downto 0),
      start2 => start2,
      \sz_i_reg[0]\(0) => \sz_i_reg[0]\(0),
      \wr_data_count_i_reg[5]\(5 downto 0) => \wr_data_count_i_reg[5]\(5 downto 0),
      wr_rst_busy_i2_out => wr_rst_busy_i2_out
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(3),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(4),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(5),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(6),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => bus2ip_addr(6),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => bus2ip_addr(5),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => bus2ip_addr(4),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => bus2ip_addr(3),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => bus2ip_addr(2),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => bus2ip_addr(1),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[8]_i_1_n_0\,
      Q => bus2ip_addr(0),
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      O => bus2ip_rnw_i06_out
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => bus2ip_rnw_i06_out,
      Q => bus2ip_rnw_i,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88800000000FFFF"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      I4 => state(1),
      I5 => state(0),
      O => is_write
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      O => is_read_i_2_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_write,
      D => is_read_i_2_n_0,
      Q => is_read,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => is_write_i_1_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_write,
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SR(0),
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_reg[0]_0\(9),
      Q => s_axi_rdata(9),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => state(1),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFAACC"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_arvalid,
      I2 => \state[1]_i_2_n_0\,
      I3 => state(1),
      I4 => state(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2E2E2ECCCCFFCC"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => state(1),
      I2 => \state[1]_i_2_n_0\,
      I3 => \state[1]_i_3_n_0\,
      I4 => s_axi_arvalid,
      I5 => state(0),
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end shell_axi_hwicap_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of shell_axi_hwicap_0_0_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      \gic0.gc1.count_d3_reg[5]\(5 downto 0) => \gic0.gc1.count_d3_reg[5]\(5 downto 0),
      \out\ => \out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \icap_dataout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \shell_axi_hwicap_0_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.\shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      E(0) => E(0),
      Q(6 downto 0) => Q(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \icap_dataout_i_reg[0]\(31 downto 0) => \icap_dataout_i_reg[0]\(31 downto 0),
      \out\ => \out\,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_clk_x_pntrs is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    \wr_data_count_i_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wrfifo_rden : in STD_LOGIC;
    \gc1.count_d1_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    \gc1.count_d2_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_clk_x_pntrs : entity is "clk_x_pntrs";
end shell_axi_hwicap_0_0_clk_x_pntrs;

architecture STRUCTURE of shell_axi_hwicap_0_0_clk_x_pntrs is
  signal \_inferred__4/i__n_0\ : STD_LOGIC;
  signal \_inferred__5/i__n_0\ : STD_LOGIC;
  signal \_inferred__6/i__n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^out\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ram_empty_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_i_i_3_n_0 : STD_LOGIC;
  signal ram_empty_i_i_4_n_0 : STD_LOGIC;
  signal ram_empty_i_i_5_n_0 : STD_LOGIC;
  signal ram_empty_i_i_6_n_0 : STD_LOGIC;
  signal rd_pntr_gc : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal wr_pntr_gc : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \_inferred__0/i_\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \_inferred__1/i_\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \_inferred__5/i_\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \_inferred__6/i_\ : label is "soft_lutpair14";
begin
  \out\(5 downto 0) <= \^out\(5 downto 0);
\_inferred__0/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(1),
      I2 => \^out\(2),
      I3 => \^out\(5),
      I4 => \^out\(4),
      O => gray2bin(1)
    );
\_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(2),
      I2 => \^out\(5),
      I3 => \^out\(4),
      O => gray2bin(2)
    );
\_inferred__4/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_6_out(2),
      I1 => p_6_out(0),
      I2 => p_6_out(1),
      I3 => p_6_out(5),
      I4 => p_6_out(3),
      I5 => p_6_out(4),
      O => \_inferred__4/i__n_0\
    );
\_inferred__5/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_6_out(3),
      I1 => p_6_out(1),
      I2 => p_6_out(2),
      I3 => p_6_out(5),
      I4 => p_6_out(4),
      O => \_inferred__5/i__n_0\
    );
\_inferred__6/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_6_out(3),
      I1 => p_6_out(2),
      I2 => p_6_out(5),
      I3 => p_6_out(4),
      O => \_inferred__6/i__n_0\
    );
\gnxpm_cdc.gsync_stage[1].rd_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized0\
     port map (
      D(5 downto 0) => p_3_out(5 downto 0),
      Q(5 downto 0) => wr_pntr_gc(5 downto 0),
      \Q_reg_reg[0]_0\ => \Q_reg_reg[0]\,
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[1].wr_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized1\
     port map (
      D(5 downto 0) => p_4_out(5 downto 0),
      Q(5 downto 0) => rd_pntr_gc(5 downto 0),
      SR(0) => SR(0),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[2].rd_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized2\
     port map (
      D(1 downto 0) => gray2bin(4 downto 3),
      \Q_reg_reg[0]_0\ => \Q_reg_reg[0]\,
      \Q_reg_reg[5]_0\(5 downto 0) => p_3_out(5 downto 0),
      \out\(5 downto 0) => \^out\(5 downto 0),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[2].wr_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized3\
     port map (
      D(1) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      D(0) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      \Q_reg_reg[5]_0\(5 downto 0) => p_4_out(5 downto 0),
      SR(0) => SR(0),
      \out\(5 downto 0) => p_6_out(5 downto 0),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \_inferred__4/i__n_0\,
      Q => \wr_data_count_i_reg[5]\(0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \_inferred__5/i__n_0\,
      Q => \wr_data_count_i_reg[5]\(1)
    );
\gnxpm_cdc.rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \_inferred__6/i__n_0\,
      Q => \wr_data_count_i_reg[5]\(2)
    );
\gnxpm_cdc.rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      Q => \wr_data_count_i_reg[5]\(3)
    );
\gnxpm_cdc.rd_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      Q => \wr_data_count_i_reg[5]\(4)
    );
\gnxpm_cdc.rd_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => p_6_out(5),
      Q => \wr_data_count_i_reg[5]\(5)
    );
\gnxpm_cdc.rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gc1.count_d2_reg[4]\(0),
      Q => rd_pntr_gc(0)
    );
\gnxpm_cdc.rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gc1.count_d2_reg[4]\(1),
      Q => rd_pntr_gc(1)
    );
\gnxpm_cdc.rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gc1.count_d2_reg[4]\(2),
      Q => rd_pntr_gc(2)
    );
\gnxpm_cdc.rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gc1.count_d2_reg[4]\(3),
      Q => rd_pntr_gc(3)
    );
\gnxpm_cdc.rd_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gc1.count_d2_reg[4]\(4),
      Q => rd_pntr_gc(4)
    );
\gnxpm_cdc.rd_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => Q(5),
      Q => rd_pntr_gc(5)
    );
\gnxpm_cdc.wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => D(0),
      Q => p_24_out(0)
    );
\gnxpm_cdc.wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(1),
      Q => p_24_out(1)
    );
\gnxpm_cdc.wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(2),
      Q => p_24_out(2)
    );
\gnxpm_cdc.wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(3),
      Q => p_24_out(3)
    );
\gnxpm_cdc.wr_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(4),
      Q => p_24_out(4)
    );
\gnxpm_cdc.wr_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \^out\(5),
      Q => p_24_out(5)
    );
\gnxpm_cdc.wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gic0.gc1.count_d3_reg[5]\(0),
      Q => wr_pntr_gc(0)
    );
\gnxpm_cdc.wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gic0.gc1.count_d3_reg[5]\(1),
      Q => wr_pntr_gc(1)
    );
\gnxpm_cdc.wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gic0.gc1.count_d3_reg[5]\(2),
      Q => wr_pntr_gc(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gic0.gc1.count_d3_reg[5]\(3),
      Q => wr_pntr_gc(3)
    );
\gnxpm_cdc.wr_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gic0.gc1.count_d3_reg[5]\(4),
      Q => wr_pntr_gc(4)
    );
\gnxpm_cdc.wr_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \gic0.gc1.count_d3_reg[5]\(5),
      Q => wr_pntr_gc(5)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBAAAAEBAAAAAAAA"
    )
        port map (
      I0 => ram_empty_i_i_2_n_0,
      I1 => p_24_out(1),
      I2 => Q(1),
      I3 => p_24_out(0),
      I4 => Q(0),
      I5 => ram_empty_i_i_3_n_0,
      O => ram_empty_i0
    );
ram_empty_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => wrfifo_rden,
      I1 => p_24_out(4),
      I2 => \gc1.count_d1_reg[5]\(4),
      I3 => p_24_out(5),
      I4 => \gc1.count_d1_reg[5]\(5),
      I5 => ram_empty_i_i_4_n_0,
      O => ram_empty_i_i_2_n_0
    );
ram_empty_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => Q(5),
      I1 => p_24_out(5),
      I2 => Q(4),
      I3 => p_24_out(4),
      I4 => ram_empty_i_i_5_n_0,
      O => ram_empty_i_i_3_n_0
    );
ram_empty_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => ram_empty_i_i_6_n_0,
      I1 => p_24_out(3),
      I2 => \gc1.count_d1_reg[5]\(3),
      I3 => p_24_out(2),
      I4 => \gc1.count_d1_reg[5]\(2),
      I5 => ram_empty_fb_i_reg,
      O => ram_empty_i_i_4_n_0
    );
ram_empty_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(3),
      I1 => Q(3),
      I2 => p_24_out(2),
      I3 => Q(2),
      O => ram_empty_i_i_5_n_0
    );
ram_empty_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(1),
      I1 => \gc1.count_d1_reg[5]\(1),
      I2 => p_24_out(0),
      I3 => \gc1.count_d1_reg[5]\(0),
      O => ram_empty_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_clk_x_pntrs__parameterized0\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S : out STD_LOGIC_VECTOR ( 6 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gic0.gc1.count_d3_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_clk_x_pntrs__parameterized0\ : entity is "clk_x_pntrs";
end \shell_axi_hwicap_0_0_clk_x_pntrs__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_clk_x_pntrs__parameterized0\ is
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal bin2gray : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_6_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \ram_empty_i_i_2__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_3__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_5__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_6__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_7__0_n_0\ : STD_LOGIC;
  signal ram_empty_i_i_9_n_0 : STD_LOGIC;
  signal rd_pntr_gc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wr_pntr_gc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ram_empty_i_i_6__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ram_empty_i_i_9 : label is "soft_lutpair2";
begin
  WR_PNTR_RD(6 downto 0) <= \^wr_pntr_rd\(6 downto 0);
\gnxpm_cdc.gsync_stage[1].rd_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized4\
     port map (
      D(6 downto 0) => p_3_out(6 downto 0),
      Q(6 downto 0) => wr_pntr_gc(6 downto 0),
      \Q_reg_reg[0]_0\ => \Q_reg_reg[0]\,
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[1].wr_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized5\
     port map (
      AR(0) => AR(0),
      D(6 downto 0) => p_4_out(6 downto 0),
      Q(6 downto 0) => rd_pntr_gc(6 downto 0),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[2].rd_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized6\
     port map (
      D(6 downto 0) => p_3_out(6 downto 0),
      \Q_reg_reg[0]_0\ => \Q_reg_reg[0]\,
      \gnxpm_cdc.wr_pntr_bin_reg[5]\(5) => p_0_out,
      \gnxpm_cdc.wr_pntr_bin_reg[5]\(4 downto 0) => gray2bin(4 downto 0),
      \out\(0) => p_5_out(6),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[2].wr_stg_inst\: entity work.\shell_axi_hwicap_0_0_synchronizer_ff__parameterized7\
     port map (
      AR(0) => AR(0),
      D(6 downto 0) => p_4_out(6 downto 0),
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(5) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(4) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(3) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(2) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(1) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(0) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      \out\(0) => p_6_out(6),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      Q => RD_PNTR_WR(0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      Q => RD_PNTR_WR(1)
    );
\gnxpm_cdc.rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      Q => RD_PNTR_WR(2)
    );
\gnxpm_cdc.rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      Q => RD_PNTR_WR(3)
    );
\gnxpm_cdc.rd_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      Q => RD_PNTR_WR(4)
    );
\gnxpm_cdc.rd_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      Q => RD_PNTR_WR(5)
    );
\gnxpm_cdc.rd_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(6),
      Q => RD_PNTR_WR(6)
    );
\gnxpm_cdc.rd_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[6]\(0),
      I1 => \gc1.count_d2_reg[6]\(1),
      O => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[6]\(1),
      I1 => \gc1.count_d2_reg[6]\(2),
      O => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[6]\(2),
      I1 => \gc1.count_d2_reg[6]\(3),
      O => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[6]\(3),
      I1 => \gc1.count_d2_reg[6]\(4),
      O => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[6]\(4),
      I1 => \gc1.count_d2_reg[6]\(5),
      O => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[6]\(5),
      I1 => \gc1.count_d2_reg[6]\(6),
      O => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\,
      Q => rd_pntr_gc(0)
    );
\gnxpm_cdc.rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\,
      Q => rd_pntr_gc(1)
    );
\gnxpm_cdc.rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\,
      Q => rd_pntr_gc(2)
    );
\gnxpm_cdc.rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\,
      Q => rd_pntr_gc(3)
    );
\gnxpm_cdc.rd_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\,
      Q => rd_pntr_gc(4)
    );
\gnxpm_cdc.rd_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\,
      Q => rd_pntr_gc(5)
    );
\gnxpm_cdc.rd_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => \gc1.count_d2_reg[6]\(6),
      Q => rd_pntr_gc(6)
    );
\gnxpm_cdc.wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(0),
      Q => \^wr_pntr_rd\(0)
    );
\gnxpm_cdc.wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(1),
      Q => \^wr_pntr_rd\(1)
    );
\gnxpm_cdc.wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(2),
      Q => \^wr_pntr_rd\(2)
    );
\gnxpm_cdc.wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(3),
      Q => \^wr_pntr_rd\(3)
    );
\gnxpm_cdc.wr_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => gray2bin(4),
      Q => \^wr_pntr_rd\(4)
    );
\gnxpm_cdc.wr_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => p_0_out,
      Q => \^wr_pntr_rd\(5)
    );
\gnxpm_cdc.wr_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \Q_reg_reg[0]\,
      D => p_5_out(6),
      Q => \^wr_pntr_rd\(6)
    );
\gnxpm_cdc.wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[6]\(0),
      I1 => \gic0.gc1.count_d3_reg[6]\(1),
      O => bin2gray(0)
    );
\gnxpm_cdc.wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[6]\(1),
      I1 => \gic0.gc1.count_d3_reg[6]\(2),
      O => bin2gray(1)
    );
\gnxpm_cdc.wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[6]\(2),
      I1 => \gic0.gc1.count_d3_reg[6]\(3),
      O => bin2gray(2)
    );
\gnxpm_cdc.wr_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[6]\(3),
      I1 => \gic0.gc1.count_d3_reg[6]\(4),
      O => bin2gray(3)
    );
\gnxpm_cdc.wr_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[6]\(4),
      I1 => \gic0.gc1.count_d3_reg[6]\(5),
      O => bin2gray(4)
    );
\gnxpm_cdc.wr_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[6]\(5),
      I1 => \gic0.gc1.count_d3_reg[6]\(6),
      O => bin2gray(5)
    );
\gnxpm_cdc.wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(0),
      Q => wr_pntr_gc(0)
    );
\gnxpm_cdc.wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(1),
      Q => wr_pntr_gc(1)
    );
\gnxpm_cdc.wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(2),
      Q => wr_pntr_gc(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(3),
      Q => wr_pntr_gc(3)
    );
\gnxpm_cdc.wr_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(4),
      Q => wr_pntr_gc(4)
    );
\gnxpm_cdc.wr_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(5),
      Q => wr_pntr_gc(5)
    );
\gnxpm_cdc.wr_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gic0.gc1.count_d3_reg[6]\(6),
      Q => wr_pntr_gc(6)
    );
\minusOp_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(6),
      I1 => \gc1.count_d2_reg[6]\(6),
      O => S(6)
    );
\minusOp_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(5),
      I1 => \gc1.count_d2_reg[6]\(5),
      O => S(5)
    );
\minusOp_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(4),
      I1 => \gc1.count_d2_reg[6]\(4),
      O => S(4)
    );
\minusOp_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(3),
      I1 => \gc1.count_d2_reg[6]\(3),
      O => S(3)
    );
\minusOp_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => \gc1.count_d2_reg[6]\(2),
      O => S(2)
    );
\minusOp_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(1),
      I1 => \gc1.count_d2_reg[6]\(1),
      O => S(1)
    );
\minusOp_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(0),
      I1 => \gc1.count_d2_reg[6]\(0),
      O => S(0)
    );
\ram_empty_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAEAAAAAAAA"
    )
        port map (
      I0 => \ram_empty_i_i_2__0_n_0\,
      I1 => \ram_empty_i_i_3__0_n_0\,
      I2 => \out\,
      I3 => Q(0),
      I4 => \^wr_pntr_rd\(0),
      I5 => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      O => ram_empty_i0
    );
\ram_empty_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \^wr_pntr_rd\(1),
      I1 => \gc1.count_d2_reg[6]\(1),
      I2 => \^wr_pntr_rd\(0),
      I3 => \gc1.count_d2_reg[6]\(0),
      I4 => \ram_empty_i_i_5__0_n_0\,
      I5 => \ram_empty_i_i_6__0_n_0\,
      O => \ram_empty_i_i_2__0_n_0\
    );
\ram_empty_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => Q(3),
      I1 => \^wr_pntr_rd\(3),
      I2 => Q(4),
      I3 => \^wr_pntr_rd\(4),
      I4 => \ram_empty_i_i_7__0_n_0\,
      O => \ram_empty_i_i_3__0_n_0\
    );
\ram_empty_i_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \gc1.count_d2_reg[6]\(4),
      I1 => \^wr_pntr_rd\(4),
      I2 => \gc1.count_d2_reg[6]\(6),
      I3 => \^wr_pntr_rd\(6),
      I4 => ram_empty_i_i_9_n_0,
      O => \ram_empty_i_i_5__0_n_0\
    );
\ram_empty_i_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(5),
      I1 => \gc1.count_d2_reg[6]\(5),
      O => \ram_empty_i_i_6__0_n_0\
    );
\ram_empty_i_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => Q(2),
      I2 => \^wr_pntr_rd\(1),
      I3 => Q(1),
      O => \ram_empty_i_i_7__0_n_0\
    );
ram_empty_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(3),
      I1 => \gc1.count_d2_reg[6]\(3),
      I2 => \^wr_pntr_rd\(2),
      I3 => \gc1.count_d2_reg[6]\(2),
      O => ram_empty_i_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_rd_logic is
  port (
    \out\ : out STD_LOGIC;
    \gnxpm_cdc.rd_pntr_gc_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    tmp_ram_rd_en : out STD_LOGIC;
    \gc1.count_d2_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_empty_i0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    wrfifo_rden : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_rd_logic : entity is "rd_logic";
end shell_axi_hwicap_0_0_rd_logic;

architecture STRUCTURE of shell_axi_hwicap_0_0_rd_logic is
  signal p_8_out : STD_LOGIC;
begin
\gras.rsts\: entity work.shell_axi_hwicap_0_0_rd_status_flags_as
     port map (
      E(0) => p_8_out,
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      \out\ => \out\,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      ram_empty_i0 => ram_empty_i0,
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wrfifo_rden => wrfifo_rden
    );
rpntr: entity work.shell_axi_hwicap_0_0_rd_bin_cntr
     port map (
      E(0) => p_8_out,
      Q(5 downto 0) => Q(5 downto 0),
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      \gc1.count_d2_reg[5]_0\(5 downto 0) => \gc1.count_d2_reg[5]\(5 downto 0),
      \gnxpm_cdc.rd_pntr_gc_reg[4]\(4 downto 0) => \gnxpm_cdc.rd_pntr_gc_reg[4]\(4 downto 0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_rd_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    tmp_ram_rd_en : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_empty_i0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in5_in : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_rd_logic__parameterized0\ : entity is "rd_logic";
end \shell_axi_hwicap_0_0_rd_logic__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_rd_logic__parameterized0\ is
  signal p_8_out : STD_LOGIC;
  signal readfifo_empty : STD_LOGIC;
begin
\gras.grdc1.rdc\: entity work.\shell_axi_hwicap_0_0_rd_dc_as__parameterized0\
     port map (
      AR(0) => AR(0),
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      S(6 downto 0) => S(6 downto 0),
      WR_PNTR_RD(5 downto 0) => WR_PNTR_RD(5 downto 0),
      p_1_in5_in => p_1_in5_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg
    );
\gras.rsts\: entity work.\shell_axi_hwicap_0_0_rd_status_flags_as__parameterized0\
     port map (
      AR(0) => AR(0),
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => p_8_out,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      \gc1.count_d1_reg[6]\ => \out\,
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      \out\ => readfifo_empty,
      p_7_in => p_7_in,
      ram_empty_i0 => ram_empty_i0,
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
rpntr: entity work.\shell_axi_hwicap_0_0_rd_bin_cntr__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6 downto 0) => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6 downto 0),
      E(0) => p_8_out,
      Q(4 downto 0) => Q(4 downto 0),
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      WR_PNTR_RD(1 downto 0) => WR_PNTR_RD(6 downto 5),
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      \out\ => readfifo_empty,
      p_7_in => p_7_in,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    \wr_data_count_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_i_reg : out STD_LOGIC;
    ram_full_i_reg_0 : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d1_reg_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    fifo_clear : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end shell_axi_hwicap_0_0_reset_blk_ramfifo;

architecture STRUCTURE of shell_axi_hwicap_0_0_reset_blk_ramfifo is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \arst_sync_q[1]_2\ : STD_LOGIC;
  signal \arst_sync_q[2]_3\ : STD_LOGIC;
  signal \arst_sync_q[3]_4\ : STD_LOGIC;
  signal \arst_sync_q[4]_5\ : STD_LOGIC;
  signal fifo_rrst_done : STD_LOGIC;
  signal fifo_wrst_done : STD_LOGIC;
  signal \^grstd1.grst_full.grst_f.rst_d1_reg_0\ : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal \p_14_out__0\ : STD_LOGIC;
  signal p_14_out_n_0 : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal rd_rst_active : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_comb : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal \rrst_q[1]_6\ : STD_LOGIC;
  signal \rrst_q[2]_7\ : STD_LOGIC;
  signal \rrst_wr_q[2]_8\ : STD_LOGIC;
  signal \rrst_wr_q[3]_10\ : STD_LOGIC;
  signal \rrst_wr_q[4]_12\ : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_d1 : STD_LOGIC;
  signal sckt_wr_rst_i_q : STD_LOGIC;
  signal sckt_wrst_i : STD_LOGIC;
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  signal \wrst_ext_q[2]_9\ : STD_LOGIC;
  signal \wrst_ext_q[3]_11\ : STD_LOGIC;
  signal \wrst_ext_q[4]_13\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  SR(0) <= \^sr\(0);
  \grstd1.grst_full.grst_f.rst_d1_reg_0\ <= \^grstd1.grst_full.grst_f.rst_d1_reg_0\;
  \out\ <= \^out\;
  ram_empty_i_reg(0) <= rd_rst_reg(2);
  ram_full_i_reg <= rst_d2;
  ram_full_i_reg_0 <= rst_d3;
  \wr_data_count_i_reg[0]\(0) <= wr_rst_reg(1);
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^grstd1.grst_full.grst_f.rst_d1_reg_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^sr\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[1]_2\,
      \out\ => rst_wr_reg2,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_1
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[1]_2\,
      \Q_reg_reg[0]_1\ => \arst_sync_q[3]_4\,
      \Q_reg_reg[0]_2\ => \arst_sync_q[4]_5\,
      \Q_reg_reg[0]_3\ => \wrst_ext_q[4]_13\,
      \Q_reg_reg[0]_4\ => \rrst_wr_q[4]_12\,
      \grstd1.grst_full.grst_f.rst_d1_reg\ => \^grstd1.grst_full.grst_f.rst_d1_reg_0\,
      in0(0) => sckt_wrst_i,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1\,
      \out\ => \arst_sync_q[2]_3\,
      s_axi_aclk => s_axi_aclk,
      sckt_wr_rst_i_q => sckt_wr_rst_i_q
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_2
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[3]_4\,
      \out\ => \arst_sync_q[2]_3\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[4].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_3
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[3]_4\,
      \out\ => \arst_sync_q[4]_5\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1\,
      Q => fifo_rrst_done,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1\,
      Q => fifo_wrst_done,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_4
     port map (
      in0(0) => sckt_wrst_i,
      \out\ => \rrst_q[1]_6\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_5
     port map (
      \Q_reg_reg[0]_0\ => p_9_out,
      \out\ => \^out\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_6
     port map (
      in0(0) => sckt_wrst_i,
      \out\ => p_8_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_7
     port map (
      \Q_reg_reg[0]_0\ => \rrst_q[2]_7\,
      \out\ => \rrst_q[1]_6\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_8
     port map (
      \Q_reg_reg[0]_0\ => p_9_out,
      \out\ => \rrst_wr_q[2]_8\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_9
     port map (
      \Q_reg_reg[0]_0\ => \wrst_ext_q[2]_9\,
      \out\ => p_8_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_10
     port map (
      \Q_reg_reg[0]_0\ => \rrst_q[2]_7\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      \out\ => \^out\,
      rd_rst_active => rd_rst_active,
      s_axi_aclk => s_axi_aclk,
      sckt_rd_rst_d1 => sckt_rd_rst_d1
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_11
     port map (
      \Q_reg_reg[0]_0\ => \rrst_wr_q[3]_10\,
      \out\ => \rrst_wr_q[2]_8\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_12
     port map (
      \Q_reg_reg[0]_0\ => \wrst_ext_q[2]_9\,
      \out\ => \wrst_ext_q[3]_11\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_13
     port map (
      \out\ => \^out\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_14
     port map (
      \Q_reg_reg[0]_0\ => \rrst_wr_q[3]_10\,
      \Q_reg_reg[0]_1\ => \wrst_ext_q[4]_13\,
      \Q_reg_reg[0]_2\ => \arst_sync_q[4]_5\,
      fifo_rrst_done => fifo_rrst_done,
      fifo_wrst_done => fifo_wrst_done,
      in0(0) => sckt_wrst_i,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2\,
      \out\ => \rrst_wr_q[4]_12\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_15
     port map (
      fifo_rrst_done => fifo_rrst_done,
      fifo_wrst_done => fifo_wrst_done,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\ => \wrst_ext_q[4]_13\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1\,
      \out\ => \wrst_ext_q[3]_11\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1\,
      Q => \^sr\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^grstd1.grst_full.grst_f.rst_d1_reg_0\,
      Q => sckt_wr_rst_i_q,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2\,
      Q => sckt_wrst_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\,
      Q => rd_rst_active,
      S => p_14_out_n_0
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      S => p_14_out_n_0
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.sckt_rd_rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^out\,
      Q => sckt_rd_rst_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_16
     port map (
      in0(0) => rd_rst_asreg,
      \out\ => p_10_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_17
     port map (
      in0(0) => wr_rst_asreg,
      \out\ => p_11_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_18
     port map (
      \Q_reg_reg[0]_0\ => p_12_out,
      \out\ => p_10_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_19
     port map (
      \Q_reg_reg[0]_0\ => p_13_out,
      \out\ => p_11_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_20
     port map (
      \Q_reg_reg[0]_0\ => p_12_out,
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\,
      \out\ => \p_14_out__0\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_21
     port map (
      \Q_reg_reg[0]_0\ => p_13_out,
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\,
      \out\ => p_15_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_22
     port map (
      AS(0) => rd_rst_comb,
      in0(0) => rd_rst_asreg,
      \out\ => \p_14_out__0\,
      rd_rst_active => rd_rst_active,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_23
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      in0(0) => wr_rst_asreg,
      \out\ => p_15_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => fifo_clear,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => fifo_clear,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => fifo_clear,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => fifo_clear,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
p_14_out: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_12_out,
      I1 => \p_14_out__0\,
      I2 => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      O => p_14_out_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_reset_blk_ramfifo_24 is
  port (
    \out\ : out STD_LOGIC;
    \wr_data_count_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_i_reg : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\ : out STD_LOGIC;
    wr_rst_busy_i2_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    prmry_in : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    abort_onreset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_reset_blk_ramfifo_24 : entity is "reset_blk_ramfifo";
end shell_axi_hwicap_0_0_reset_blk_ramfifo_24;

architecture STRUCTURE of shell_axi_hwicap_0_0_reset_blk_ramfifo_24 is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \arst_sync_q[1]_17\ : STD_LOGIC;
  signal \arst_sync_q[2]_18\ : STD_LOGIC;
  signal \arst_sync_q[3]_19\ : STD_LOGIC;
  signal \arst_sync_q[4]_20\ : STD_LOGIC;
  signal fifo_rrst_done : STD_LOGIC;
  signal fifo_wrst_done : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_3\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal \p_14_out__0\ : STD_LOGIC;
  signal p_14_out_n_0 : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal rd_rst_active : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_comb : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal \rrst_q[1]_21\ : STD_LOGIC;
  signal \rrst_q[2]_22\ : STD_LOGIC;
  signal \rrst_wr_q[2]_23\ : STD_LOGIC;
  signal \rrst_wr_q[3]_25\ : STD_LOGIC;
  signal \rrst_wr_q[4]_27\ : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_d1 : STD_LOGIC;
  signal sckt_wr_rst_i_q : STD_LOGIC;
  signal sckt_wrst_i : STD_LOGIC;
  signal wr_rst_asreg : STD_LOGIC;
  signal \^wr_rst_busy_i2_out\ : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  signal \wrst_ext_q[2]_24\ : STD_LOGIC;
  signal \wrst_ext_q[3]_26\ : STD_LOGIC;
  signal \wrst_ext_q[4]_28\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ <= rst_d3;
  SR(0) <= \^sr\(0);
  \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\ <= \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\;
  \out\ <= \^out\;
  ram_empty_i_reg(0) <= rd_rst_reg(2);
  ram_full_i_reg <= rst_d2;
  \wr_data_count_i_reg[0]\(0) <= wr_rst_reg(1);
  wr_rst_busy_i2_out <= \^wr_rst_busy_i2_out\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^wr_rst_busy_i2_out\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^sr\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_25
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[1]_17\,
      \out\ => rst_wr_reg2,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_26
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[1]_17\,
      \Q_reg_reg[0]_1\ => \arst_sync_q[3]_19\,
      \Q_reg_reg[0]_2\ => \arst_sync_q[4]_20\,
      \Q_reg_reg[0]_3\ => \wrst_ext_q[4]_28\,
      \Q_reg_reg[0]_4\ => \rrst_wr_q[4]_27\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_d3,
      in0(0) => sckt_wrst_i,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_3\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\ => \^wr_rst_busy_i2_out\,
      \out\ => \arst_sync_q[2]_18\,
      prmry_in => prmry_in,
      ram_full_i_reg => ram_full_i_reg_0,
      s_axi_aclk => s_axi_aclk,
      sckt_wr_rst_i_q => sckt_wr_rst_i_q
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_27
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[3]_19\,
      \out\ => \arst_sync_q[2]_18\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[4].arst_sync_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_28
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[3]_19\,
      \out\ => \arst_sync_q[4]_20\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1\,
      Q => fifo_rrst_done,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1\,
      Q => fifo_wrst_done,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_29
     port map (
      in0(0) => sckt_wrst_i,
      \out\ => \rrst_q[1]_21\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_30
     port map (
      \Q_reg_reg[0]_0\ => p_9_out,
      \out\ => \^out\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_31
     port map (
      in0(0) => sckt_wrst_i,
      \out\ => p_8_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_32
     port map (
      \Q_reg_reg[0]_0\ => \rrst_q[2]_22\,
      \out\ => \rrst_q[1]_21\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_33
     port map (
      \Q_reg_reg[0]_0\ => p_9_out,
      \out\ => \rrst_wr_q[2]_23\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_34
     port map (
      \Q_reg_reg[0]_0\ => \wrst_ext_q[2]_24\,
      \out\ => p_8_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_35
     port map (
      \Q_reg_reg[0]_0\ => \rrst_q[2]_22\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      \out\ => \^out\,
      rd_rst_active => rd_rst_active,
      s_axi_aclk => s_axi_aclk,
      sckt_rd_rst_d1 => sckt_rd_rst_d1
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_36
     port map (
      \Q_reg_reg[0]_0\ => \rrst_wr_q[3]_25\,
      \out\ => \rrst_wr_q[2]_23\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_37
     port map (
      \Q_reg_reg[0]_0\ => \wrst_ext_q[2]_24\,
      \out\ => \wrst_ext_q[3]_26\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_38
     port map (
      \out\ => \^out\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_39
     port map (
      \Q_reg_reg[0]_0\ => \rrst_wr_q[3]_25\,
      \Q_reg_reg[0]_1\ => \wrst_ext_q[4]_28\,
      \Q_reg_reg[0]_2\ => \arst_sync_q[4]_20\,
      fifo_rrst_done => fifo_rrst_done,
      fifo_wrst_done => fifo_wrst_done,
      in0(0) => sckt_wrst_i,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2\,
      \out\ => \rrst_wr_q[4]_27\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_40
     port map (
      fifo_rrst_done => fifo_rrst_done,
      fifo_wrst_done => fifo_wrst_done,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\ => \wrst_ext_q[4]_28\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1\,
      \out\ => \wrst_ext_q[3]_26\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_3\,
      Q => \^sr\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^wr_rst_busy_i2_out\,
      Q => sckt_wr_rst_i_q,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2\,
      Q => sckt_wrst_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\,
      Q => rd_rst_active,
      S => p_14_out_n_0
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      S => p_14_out_n_0
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.sckt_rd_rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^out\,
      Q => sckt_rd_rst_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_41
     port map (
      in0(0) => rd_rst_asreg,
      \out\ => p_10_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_42
     port map (
      in0(0) => wr_rst_asreg,
      \out\ => p_11_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_43
     port map (
      \Q_reg_reg[0]_0\ => p_12_out,
      \out\ => p_10_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_44
     port map (
      \Q_reg_reg[0]_0\ => p_13_out,
      \out\ => p_11_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_45
     port map (
      \Q_reg_reg[0]_0\ => p_12_out,
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\,
      \out\ => \p_14_out__0\,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_46
     port map (
      \Q_reg_reg[0]_0\ => p_13_out,
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\,
      \out\ => p_15_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].rrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_47
     port map (
      AS(0) => rd_rst_comb,
      in0(0) => rd_rst_asreg,
      \out\ => \p_14_out__0\,
      rd_rst_active => rd_rst_active,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst\: entity work.shell_axi_hwicap_0_0_synchronizer_ff_48
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      in0(0) => wr_rst_asreg,
      \out\ => p_15_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sw_reset_reg,
      I1 => fifo_rst,
      I2 => abort_onreset,
      O => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
p_14_out: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_12_out,
      I1 => \p_14_out__0\,
      I2 => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      O => p_14_out_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_wr_logic is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    \gnxpm_cdc.wr_pntr_gc_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IP2Bus_WrAck_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw_reset_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \Q_reg_reg[0]\ : in STD_LOGIC;
    busip_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_wr_logic : entity is "wr_logic";
end shell_axi_hwicap_0_0_wr_logic;

architecture STRUCTURE of shell_axi_hwicap_0_0_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^gic0.gc1.count_reg[0]\ : STD_LOGIC;
  signal \gwas.wsts_n_1\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
  signal wpntr_n_13 : STD_LOGIC;
  signal wpntr_n_14 : STD_LOGIC;
  signal wpntr_n_15 : STD_LOGIC;
  signal wpntr_n_16 : STD_LOGIC;
  signal wpntr_n_17 : STD_LOGIC;
  signal wpntr_n_18 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  Q(5 downto 0) <= \^q\(5 downto 0);
  \gic0.gc1.count_reg[0]\ <= \^gic0.gc1.count_reg[0]\;
\gwas.gwdc0.wdc\: entity work.shell_axi_hwicap_0_0_wr_dc_as
     port map (
      AR(0) => AR(0),
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      Q(4 downto 0) => \^q\(4 downto 0),
      S(5) => wpntr_n_13,
      S(4) => wpntr_n_14,
      S(3) => wpntr_n_15,
      S(2) => wpntr_n_16,
      S(1) => wpntr_n_17,
      S(0) => wpntr_n_18,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg
    );
\gwas.wsts\: entity work.shell_axi_hwicap_0_0_wr_status_flags_as
     port map (
      E(0) => \^e\(0),
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      SR(0) => SR(0),
      busip_1_reg => \^gic0.gc1.count_reg[0]\,
      \gic0.gc1.count_reg[0]\ => \gwas.wsts_n_1\,
      \grstd1.grst_full.grst_f.rst_d2_reg\ => \out\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => wpntr_n_0,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => p_10_out,
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk
    );
wpntr: entity work.shell_axi_hwicap_0_0_wr_bin_cntr
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => \^e\(0),
      Q(5 downto 0) => \^q\(5 downto 0),
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      S(5) => wpntr_n_13,
      S(4) => wpntr_n_14,
      S(3) => wpntr_n_15,
      S(2) => wpntr_n_16,
      S(1) => wpntr_n_17,
      S(0) => wpntr_n_18,
      SR(0) => SR(0),
      busip_1 => busip_1,
      \gic0.gc1.count_reg[0]_0\ => \^gic0.gc1.count_reg[0]\,
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(5 downto 0) => \gnxpm_cdc.rd_pntr_bin_reg[5]\(5 downto 0),
      \gnxpm_cdc.wr_pntr_gc_reg[4]\(4 downto 0) => \gnxpm_cdc.wr_pntr_gc_reg[4]\(4 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => p_10_out,
      p_8_in => p_8_in,
      ram_full_fb_i_reg => \gwas.wsts_n_1\,
      ram_full_i_reg => wpntr_n_0,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_wr_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    gate_signal_p_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d2_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rdfifo_wren : in STD_LOGIC;
    wr_rst_busy_i2_out : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    prmry_in : in STD_LOGIC;
    gate_signal_p_reg_0 : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_wr_logic__parameterized0\ : entity is "wr_logic";
end \shell_axi_hwicap_0_0_wr_logic__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_wr_logic__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \gwas.wsts_n_1\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
  signal wpntr_n_1 : STD_LOGIC;
  signal wpntr_n_2 : STD_LOGIC;
  signal wpntr_n_3 : STD_LOGIC;
  signal wpntr_n_4 : STD_LOGIC;
  signal wpntr_n_5 : STD_LOGIC;
  signal wpntr_n_6 : STD_LOGIC;
  signal wpntr_n_7 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  Q(6 downto 0) <= \^q\(6 downto 0);
\gwas.gwdc0.wdc\: entity work.\shell_axi_hwicap_0_0_wr_dc_as__parameterized0\
     port map (
      AR(0) => AR(0),
      Q(5 downto 0) => \^q\(5 downto 0),
      S(6) => wpntr_n_1,
      S(5) => wpntr_n_2,
      S(4) => wpntr_n_3,
      S(3) => wpntr_n_4,
      S(2) => wpntr_n_5,
      S(1) => wpntr_n_6,
      S(0) => wpntr_n_7,
      gate_signal_p_reg => gate_signal_p_reg,
      gate_signal_p_reg_0 => gate_signal_p_reg_0,
      s_axi_aclk => s_axi_aclk
    );
\gwas.wsts\: entity work.\shell_axi_hwicap_0_0_wr_status_flags_as__parameterized0\
     port map (
      E(0) => \^e\(0),
      SR(0) => SR(0),
      \gic0.gc1.count_d2_reg[5]\ => wpntr_n_0,
      \gic0.gc1.count_reg[0]\ => \gwas.wsts_n_1\,
      \grstd1.grst_full.grst_f.rst_d2_reg\ => \grstd1.grst_full.grst_f.rst_d2_reg\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => \out\,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk,
      wr_rst_busy_i2_out => wr_rst_busy_i2_out
    );
wpntr: entity work.\shell_axi_hwicap_0_0_wr_bin_cntr__parameterized0\
     port map (
      E(0) => \^e\(0),
      Q(6 downto 0) => \^q\(6 downto 0),
      RD_PNTR_WR(6 downto 0) => RD_PNTR_WR(6 downto 0),
      S(6) => wpntr_n_1,
      S(5) => wpntr_n_2,
      S(4) => wpntr_n_3,
      S(3) => wpntr_n_4,
      S(2) => wpntr_n_5,
      S(1) => wpntr_n_6,
      S(0) => wpntr_n_7,
      SR(0) => SR(0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      prmry_in => prmry_in,
      ram_full_fb_i_reg => \gwas.wsts_n_1\,
      ram_full_i_reg => wpntr_n_0,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_axi_lite_ipif is
  port (
    p_7_in : out STD_LOGIC;
    p_8_in : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    ip2bus_rdack_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_WrAck0 : out STD_LOGIC;
    p_11_in : out STD_LOGIC;
    IP2Bus_RdAck0 : out STD_LOGIC;
    p_10_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \ip2bus_data_i_reg[0]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_wrack_i_reg : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sz_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i : in STD_LOGIC;
    ip2bus_wrack_i : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    busip_1_reg : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    wr_rst_busy_i2_out : in STD_LOGIC;
    ipbus_ack : in STD_LOGIC;
    ipbus_ack_fifo : in STD_LOGIC;
    p_5_out_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \Size_counter_i3_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    scndry_vect_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_data_count_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \rd_dc_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    scndry_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_1_in5_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    intr2bus_wrack : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ip2bus_data_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end shell_axi_hwicap_0_0_axi_lite_ipif;

architecture STRUCTURE of shell_axi_hwicap_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.shell_axi_hwicap_0_0_slave_attachment
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \IP2Bus_Data_reg[0]\(4 downto 0) => \IP2Bus_Data_reg[0]\(4 downto 0),
      \IP2Bus_Data_reg[31]\ => \IP2Bus_Data_reg[31]\,
      IP2Bus_RdAck0 => IP2Bus_RdAck0,
      IP2Bus_WrAck0 => IP2Bus_WrAck0,
      IP2Bus_WrAck_reg => p_8_in,
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => SR(0),
      \Size_counter_i3_reg[0]\(11 downto 0) => \Size_counter_i3_reg[0]\(11 downto 0),
      busip_1_reg => p_7_in,
      busip_1_reg_0 => busip_1_reg,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack => intr2bus_wrack,
      \ip2bus_data_i_reg[0]\(4 downto 0) => \ip2bus_data_i_reg[0]\(4 downto 0),
      \ip2bus_data_i_reg[0]_0\(31 downto 0) => \ip2bus_data_i_reg[0]_0\(31 downto 0),
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_rdack_i_reg(0) => ip2bus_rdack_i_reg(0),
      ip2bus_wrack_i => ip2bus_wrack_i,
      ip2bus_wrack_i_reg => Bus_RNW_reg,
      ip2bus_wrack_i_reg_0 => ip2bus_wrack_i_reg,
      \ip_irpt_enable_reg_reg[3]\(0) => \ip_irpt_enable_reg_reg[3]\(0),
      \ip_irpt_enable_reg_reg[3]_0\(3 downto 0) => \ip_irpt_enable_reg_reg[3]_0\(3 downto 0),
      ipbus_ack => ipbus_ack,
      ipbus_ack_fifo => ipbus_ack_fifo,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => ipif_glbl_irpt_enable_reg_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_10_in => p_10_in,
      p_11_in => p_11_in,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_5_out => p_5_out,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      ram_full_i_reg => ram_full_i_reg,
      \rd_dc_i_reg[6]\(6 downto 0) => \rd_dc_i_reg[6]\(6 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      scndry_out => scndry_out,
      scndry_vect_out(31 downto 0) => scndry_vect_out(31 downto 0),
      \sz_i_reg[0]\(0) => \sz_i_reg[0]\(0),
      \wr_data_count_i_reg[5]\(5 downto 0) => \wr_data_count_i_reg[5]\(5 downto 0),
      wr_rst_busy_i2_out => wr_rst_busy_i2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.shell_axi_hwicap_0_0_blk_mem_gen_prim_width
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      \gic0.gc1.count_d3_reg[5]\(5 downto 0) => \gic0.gc1.count_d3_reg[5]\(5 downto 0),
      \out\ => \out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \icap_dataout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr__parameterized0\ : entity is "blk_mem_gen_generic_cstr";
end \shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr__parameterized0\ is
begin
\ramloop[0].ram.r\: entity work.\shell_axi_hwicap_0_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      E(0) => E(0),
      Q(6 downto 0) => Q(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \icap_dataout_i_reg[0]\(31 downto 0) => \icap_dataout_i_reg[0]\(31 downto 0),
      \out\ => \out\,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end shell_axi_hwicap_0_0_blk_mem_gen_top;

architecture STRUCTURE of shell_axi_hwicap_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      \gic0.gc1.count_d3_reg[5]\(5 downto 0) => \gic0.gc1.count_d3_reg[5]\(5 downto 0),
      \out\ => \out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_blk_mem_gen_top__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \icap_dataout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_blk_mem_gen_top__parameterized0\ : entity is "blk_mem_gen_top";
end \shell_axi_hwicap_0_0_blk_mem_gen_top__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_blk_mem_gen_top__parameterized0\ is
begin
\valid.cstr\: entity work.\shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr__parameterized0\
     port map (
      E(0) => E(0),
      Q(6 downto 0) => Q(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \icap_dataout_i_reg[0]\(31 downto 0) => \icap_dataout_i_reg[0]\(31 downto 0),
      \out\ => \out\,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth : entity is "blk_mem_gen_v8_3_5_synth";
end shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth;

architecture STRUCTURE of shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.shell_axi_hwicap_0_0_blk_mem_gen_top
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      \gic0.gc1.count_d3_reg[5]\(5 downto 0) => \gic0.gc1.count_d3_reg[5]\(5 downto 0),
      \out\ => \out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \icap_dataout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth__parameterized0\ : entity is "blk_mem_gen_v8_3_5_synth";
end \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth__parameterized0\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\shell_axi_hwicap_0_0_blk_mem_gen_top__parameterized0\
     port map (
      E(0) => E(0),
      Q(6 downto 0) => Q(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \icap_dataout_i_reg[0]\(31 downto 0) => \icap_dataout_i_reg[0]\(31 downto 0),
      \out\ => \out\,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5 : entity is "blk_mem_gen_v8_3_5";
end shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5;

architecture STRUCTURE of shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5 is
begin
inst_blk_mem_gen: entity work.shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      \gic0.gc1.count_d3_reg[5]\(5 downto 0) => \gic0.gc1.count_d3_reg[5]\(5 downto 0),
      \out\ => \out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5__parameterized1\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \icap_dataout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5__parameterized1\ : entity is "blk_mem_gen_v8_3_5";
end \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5__parameterized1\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5__parameterized1\ is
begin
inst_blk_mem_gen: entity work.\shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth__parameterized0\
     port map (
      E(0) => E(0),
      Q(6 downto 0) => Q(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \icap_dataout_i_reg[0]\(31 downto 0) => \icap_dataout_i_reg[0]\(31 downto 0),
      \out\ => \out\,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_memory is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_d3_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_memory : entity is "memory";
end shell_axi_hwicap_0_0_memory;

architecture STRUCTURE of shell_axi_hwicap_0_0_memory is
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      \gic0.gc1.count_d3_reg[5]\(5 downto 0) => \gic0.gc1.count_d3_reg[5]\(5 downto 0),
      \out\ => \out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_memory__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \icap_dataout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_memory__parameterized0\ : entity is "memory";
end \shell_axi_hwicap_0_0_memory__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_memory__parameterized0\ is
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5__parameterized1\
     port map (
      E(0) => E(0),
      Q(6 downto 0) => Q(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \icap_dataout_i_reg[0]\(31 downto 0) => \icap_dataout_i_reg[0]\(31 downto 0),
      \out\ => \out\,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_fifo_generator_ramfifo is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clear : in STD_LOGIC;
    wrfifo_rden : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    busip_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end shell_axi_hwicap_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of shell_axi_hwicap_0_0_fifo_generator_ramfifo is
  signal bin2gray : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_3\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal \gras.rsts/ram_empty_i0\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^grstd1.grst_full.grst_f.rst_d1_reg\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_25_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_6 : STD_LOGIC;
  signal tmp_ram_rd_en : STD_LOGIC;
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  \grstd1.grst_full.grst_f.rst_d1_reg\ <= \^grstd1.grst_full.grst_f.rst_d1_reg\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.shell_axi_hwicap_0_0_clk_x_pntrs
     port map (
      D(0) => gray2bin(0),
      Q(5 downto 0) => p_0_out(5 downto 0),
      \Q_reg_reg[0]\ => rstblk_n_0,
      SR(0) => rstblk_n_6,
      \gc1.count_d1_reg[5]\(5 downto 0) => rd_pntr_plus1(5 downto 0),
      \gc1.count_d2_reg[4]\(4) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \gc1.count_d2_reg[4]\(3) => \gntv_or_sync_fifo.gl0.rd_n_2\,
      \gc1.count_d2_reg[4]\(2) => \gntv_or_sync_fifo.gl0.rd_n_3\,
      \gc1.count_d2_reg[4]\(1) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      \gc1.count_d2_reg[4]\(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      \gic0.gc1.count_d3_reg[5]\(5) => p_13_out(5),
      \gic0.gc1.count_d3_reg[5]\(4 downto 0) => bin2gray(4 downto 0),
      \out\(5 downto 0) => p_5_out(5 downto 0),
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_12\,
      ram_empty_i0 => \gras.rsts/ram_empty_i0\,
      s_axi_aclk => s_axi_aclk,
      \wr_data_count_i_reg[5]\(5 downto 0) => p_25_out(5 downto 0),
      wrfifo_rden => wrfifo_rden
    );
\gntv_or_sync_fifo.gcx.clkx/\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_5_out(2),
      I1 => p_5_out(0),
      I2 => p_5_out(1),
      I3 => p_5_out(5),
      I4 => p_5_out(3),
      I5 => p_5_out(4),
      O => gray2bin(0)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.shell_axi_hwicap_0_0_rd_logic
     port map (
      Q(5 downto 0) => p_0_out(5 downto 0),
      \Q_reg_reg[0]\ => rstblk_n_0,
      \gc1.count_d2_reg[5]\(5 downto 0) => rd_pntr_plus1(5 downto 0),
      \gnxpm_cdc.rd_pntr_gc_reg[4]\(4) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \gnxpm_cdc.rd_pntr_gc_reg[4]\(3) => \gntv_or_sync_fifo.gl0.rd_n_2\,
      \gnxpm_cdc.rd_pntr_gc_reg[4]\(2) => \gntv_or_sync_fifo.gl0.rd_n_3\,
      \gnxpm_cdc.rd_pntr_gc_reg[4]\(1) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      \gnxpm_cdc.rd_pntr_gc_reg[4]\(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => rd_rst_i(2),
      \out\ => \out\,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_12\,
      ram_empty_i0 => \gras.rsts/ram_empty_i0\,
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wrfifo_rden => wrfifo_rden
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.shell_axi_hwicap_0_0_wr_logic
     port map (
      AR(0) => wr_rst_i(1),
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      E(0) => p_20_out,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      Q(5 downto 0) => p_13_out(5 downto 0),
      \Q_reg_reg[0]\ => \^grstd1.grst_full.grst_f.rst_d1_reg\,
      SR(0) => rstblk_n_6,
      busip_1 => busip_1,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \gnxpm_cdc.rd_pntr_bin_reg[5]\(5 downto 0) => p_25_out(5 downto 0),
      \gnxpm_cdc.wr_pntr_gc_reg[4]\(4 downto 0) => bin2gray(4 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg
    );
\gntv_or_sync_fifo.mem\: entity work.shell_axi_hwicap_0_0_memory
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => p_20_out,
      Q(5 downto 0) => p_0_out(5 downto 0),
      \gic0.gc1.count_d3_reg[5]\(5 downto 0) => p_13_out(5 downto 0),
      \out\ => rstblk_n_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
rstblk: entity work.shell_axi_hwicap_0_0_reset_blk_ramfifo
     port map (
      SR(0) => rstblk_n_6,
      fifo_clear => fifo_clear,
      \grstd1.grst_full.grst_f.rst_d1_reg_0\ => \^grstd1.grst_full.grst_f.rst_d1_reg\,
      \out\ => rstblk_n_0,
      ram_empty_i_reg(0) => rd_rst_i(2),
      ram_full_i_reg => rst_full_ff_i,
      ram_full_i_reg_0 => rst_full_gen_i,
      s_axi_aclk => s_axi_aclk,
      \wr_data_count_i_reg[0]\(0) => wr_rst_i(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_fifo_generator_ramfifo__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    prmry_in : out STD_LOGIC;
    gate_signal_p_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in5_in : in STD_LOGIC;
    rdfifo_wren : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    abort_onreset : in STD_LOGIC;
    gate_signal_p_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \shell_axi_hwicap_0_0_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_fifo_generator_ramfifo__parameterized0\ is
  signal \gntv_or_sync_fifo.gcx.clkx_n_10\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_11\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_13\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_14\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_8\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_9\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_10\ : STD_LOGIC;
  signal \gras.rsts/ram_empty_i0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_10_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal \^prmry_in\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_7 : STD_LOGIC;
  signal tmp_ram_rd_en : STD_LOGIC;
  signal wr_rst_busy_i2_out : STD_LOGIC;
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  prmry_in <= \^prmry_in\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.\shell_axi_hwicap_0_0_clk_x_pntrs__parameterized0\
     port map (
      AR(0) => rstblk_n_7,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \gntv_or_sync_fifo.gl0.rd_n_10\,
      Q(4 downto 0) => rd_pntr_plus1(4 downto 0),
      \Q_reg_reg[0]\ => rstblk_n_0,
      RD_PNTR_WR(6 downto 0) => p_25_out(6 downto 0),
      S(6) => \gntv_or_sync_fifo.gcx.clkx_n_8\,
      S(5) => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      S(4) => \gntv_or_sync_fifo.gcx.clkx_n_10\,
      S(3) => \gntv_or_sync_fifo.gcx.clkx_n_11\,
      S(2) => \gntv_or_sync_fifo.gcx.clkx_n_12\,
      S(1) => \gntv_or_sync_fifo.gcx.clkx_n_13\,
      S(0) => \gntv_or_sync_fifo.gcx.clkx_n_14\,
      WR_PNTR_RD(6 downto 0) => p_24_out(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => p_0_out(6 downto 0),
      \gic0.gc1.count_d3_reg[6]\(6 downto 0) => p_13_out(6 downto 0),
      \out\ => p_2_out,
      ram_empty_i0 => \gras.rsts/ram_empty_i0\,
      s_axi_aclk => s_axi_aclk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.\shell_axi_hwicap_0_0_rd_logic__parameterized0\
     port map (
      AR(0) => rd_rst_i(2),
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6 downto 0) => p_0_out(6 downto 0),
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      Q(4 downto 0) => rd_pntr_plus1(4 downto 0),
      \Q_reg_reg[0]\ => rstblk_n_0,
      S(6) => \gntv_or_sync_fifo.gcx.clkx_n_8\,
      S(5) => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      S(4) => \gntv_or_sync_fifo.gcx.clkx_n_10\,
      S(3) => \gntv_or_sync_fifo.gcx.clkx_n_11\,
      S(2) => \gntv_or_sync_fifo.gcx.clkx_n_12\,
      S(1) => \gntv_or_sync_fifo.gcx.clkx_n_13\,
      S(0) => \gntv_or_sync_fifo.gcx.clkx_n_14\,
      WR_PNTR_RD(6 downto 0) => p_24_out(6 downto 0),
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      \out\ => p_2_out,
      p_1_in5_in => p_1_in5_in,
      p_7_in => p_7_in,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_10\,
      ram_empty_i0 => \gras.rsts/ram_empty_i0\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\shell_axi_hwicap_0_0_wr_logic__parameterized0\
     port map (
      AR(0) => wr_rst_i(1),
      E(0) => p_20_out,
      Q(6 downto 0) => p_13_out(6 downto 0),
      RD_PNTR_WR(6 downto 0) => p_25_out(6 downto 0),
      SR(0) => rstblk_n_7,
      gate_signal_p_reg => gate_signal_p_reg,
      gate_signal_p_reg_0 => gate_signal_p_reg_0,
      \grstd1.grst_full.grst_f.rst_d2_reg\ => rst_full_ff_i,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      \out\ => p_10_out,
      prmry_in => \^prmry_in\,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk,
      wr_rst_busy_i2_out => wr_rst_busy_i2_out
    );
\gntv_or_sync_fifo.mem\: entity work.\shell_axi_hwicap_0_0_memory__parameterized0\
     port map (
      E(0) => p_20_out,
      Q(6 downto 0) => p_13_out(6 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => p_0_out(6 downto 0),
      \icap_dataout_i_reg[0]\(31 downto 0) => Q(31 downto 0),
      \out\ => rstblk_n_0,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
rstblk: entity work.shell_axi_hwicap_0_0_reset_blk_ramfifo_24
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => rst_full_gen_i,
      SR(0) => rstblk_n_7,
      abort_onreset => abort_onreset,
      fifo_rst => fifo_rst,
      \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0\ => \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\,
      \out\ => rstblk_n_0,
      prmry_in => \^prmry_in\,
      ram_empty_i_reg(0) => rd_rst_i(2),
      ram_full_i_reg => rst_full_ff_i,
      ram_full_i_reg_0 => p_10_out,
      s_axi_aclk => s_axi_aclk,
      sw_reset_reg => sw_reset_reg,
      \wr_data_count_i_reg[0]\(0) => wr_rst_i(1),
      wr_rst_busy_i2_out => wr_rst_busy_i2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_fifo_generator_top is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clear : in STD_LOGIC;
    wrfifo_rden : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    busip_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_fifo_generator_top : entity is "fifo_generator_top";
end shell_axi_hwicap_0_0_fifo_generator_top;

architecture STRUCTURE of shell_axi_hwicap_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.shell_axi_hwicap_0_0_fifo_generator_ramfifo
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      D(31 downto 0) => D(31 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      busip_1 => busip_1,
      fifo_clear => fifo_clear,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \grstd1.grst_full.grst_f.rst_d1_reg\ => \grstd1.grst_full.grst_f.rst_d1_reg\,
      \out\ => \out\,
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      sw_reset_reg => sw_reset_reg,
      wrfifo_rden => wrfifo_rden
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_fifo_generator_top__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    prmry_in : out STD_LOGIC;
    gate_signal_p_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in5_in : in STD_LOGIC;
    rdfifo_wren : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    abort_onreset : in STD_LOGIC;
    gate_signal_p_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \shell_axi_hwicap_0_0_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\shell_axi_hwicap_0_0_fifo_generator_ramfifo__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      abort_onreset => abort_onreset,
      fifo_rst => fifo_rst,
      gate_signal_p_reg => gate_signal_p_reg,
      gate_signal_p_reg_0 => gate_signal_p_reg_0,
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ => \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\,
      p_1_in5_in => p_1_in5_in,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      p_7_in => p_7_in,
      prmry_in => prmry_in,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clear : in STD_LOGIC;
    wrfifo_rden : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    busip_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth : entity is "fifo_generator_v13_1_3_synth";
end shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth;

architecture STRUCTURE of shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth is
begin
\gconvfifo.rf\: entity work.shell_axi_hwicap_0_0_fifo_generator_top
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      D(31 downto 0) => D(31 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      busip_1 => busip_1,
      fifo_clear => fifo_clear,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \grstd1.grst_full.grst_f.rst_d1_reg\ => \grstd1.grst_full.grst_f.rst_d1_reg\,
      \out\ => \out\,
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      sw_reset_reg => sw_reset_reg,
      wrfifo_rden => wrfifo_rden
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    prmry_in : out STD_LOGIC;
    gate_signal_p_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in5_in : in STD_LOGIC;
    rdfifo_wren : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    abort_onreset : in STD_LOGIC;
    gate_signal_p_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth__parameterized0\ : entity is "fifo_generator_v13_1_3_synth";
end \shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth__parameterized0\ is
begin
\gconvfifo.rf\: entity work.\shell_axi_hwicap_0_0_fifo_generator_top__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      abort_onreset => abort_onreset,
      fifo_rst => fifo_rst,
      gate_signal_p_reg => gate_signal_p_reg,
      gate_signal_p_reg_0 => gate_signal_p_reg_0,
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ => \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\,
      p_1_in5_in => p_1_in5_in,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      p_7_in => p_7_in,
      prmry_in => prmry_in,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_fifo_generator_v13_1_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clear : in STD_LOGIC;
    wrfifo_rden : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    busip_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_fifo_generator_v13_1_3 : entity is "fifo_generator_v13_1_3";
end shell_axi_hwicap_0_0_fifo_generator_v13_1_3;

architecture STRUCTURE of shell_axi_hwicap_0_0_fifo_generator_v13_1_3 is
begin
inst_fifo_gen: entity work.shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      D(31 downto 0) => D(31 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      busip_1 => busip_1,
      fifo_clear => fifo_clear,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \grstd1.grst_full.grst_f.rst_d1_reg\ => \grstd1.grst_full.grst_f.rst_d1_reg\,
      \out\ => \out\,
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      sw_reset_reg => sw_reset_reg,
      wrfifo_rden => wrfifo_rden
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_fifo_generator_v13_1_3__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    prmry_in : out STD_LOGIC;
    gate_signal_p_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in5_in : in STD_LOGIC;
    rdfifo_wren : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    abort_onreset : in STD_LOGIC;
    gate_signal_p_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_fifo_generator_v13_1_3__parameterized0\ : entity is "fifo_generator_v13_1_3";
end \shell_axi_hwicap_0_0_fifo_generator_v13_1_3__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_fifo_generator_v13_1_3__parameterized0\ is
begin
inst_fifo_gen: entity work.\shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      abort_onreset => abort_onreset,
      fifo_rst => fifo_rst,
      gate_signal_p_reg => gate_signal_p_reg,
      gate_signal_p_reg_0 => gate_signal_p_reg_0,
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ => \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\,
      p_1_in5_in => p_1_in5_in,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      p_7_in => p_7_in,
      prmry_in => prmry_in,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_async_fifo_fg is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    prmry_in : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clear : in STD_LOGIC;
    wrfifo_rden : in STD_LOGIC;
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    busip_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_async_fifo_fg : entity is "async_fifo_fg";
end shell_axi_hwicap_0_0_async_fifo_fg;

architecture STRUCTURE of shell_axi_hwicap_0_0_async_fifo_fg is
begin
\USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.shell_axi_hwicap_0_0_fifo_generator_v13_1_3
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      D(31 downto 0) => D(31 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      busip_1 => busip_1,
      fifo_clear => fifo_clear,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \grstd1.grst_full.grst_f.rst_d1_reg\ => \grstd1.grst_full.grst_f.rst_d1_reg\,
      \out\ => prmry_in,
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      sw_reset_reg => sw_reset_reg,
      wrfifo_rden => wrfifo_rden
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \shell_axi_hwicap_0_0_async_fifo_fg__parameterized0\ is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clear : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    prmry_in : out STD_LOGIC;
    gate_signal_p_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw_reset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in5_in : in STD_LOGIC;
    rdfifo_wren : in STD_LOGIC;
    ipbus_1 : in STD_LOGIC;
    ipbus_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    abort_onreset : in STD_LOGIC;
    gate_signal_p_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \shell_axi_hwicap_0_0_async_fifo_fg__parameterized0\ : entity is "async_fifo_fg";
end \shell_axi_hwicap_0_0_async_fifo_fg__parameterized0\;

architecture STRUCTURE of \shell_axi_hwicap_0_0_async_fifo_fg__parameterized0\ is
begin
\USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.\shell_axi_hwicap_0_0_fifo_generator_v13_1_3__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      abort_onreset => abort_onreset,
      fifo_rst => fifo_rst,
      gate_signal_p_reg => gate_signal_p_reg,
      gate_signal_p_reg_0 => gate_signal_p_reg_0,
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ => fifo_clear,
      p_1_in5_in => p_1_in5_in,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      p_7_in => p_7_in,
      prmry_in => prmry_in,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0),
      sw_reset_reg => sw_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_ipic_if is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : out STD_LOGIC;
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_rst_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    ipbus_ack_fifo : out STD_LOGIC;
    ipbus_ack : out STD_LOGIC;
    p_6_out : out STD_LOGIC;
    p_5_out : out STD_LOGIC;
    gate_icap_p : out STD_LOGIC;
    Send_done_cs_reg : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    IP2Bus_WrAck_reg_0 : out STD_LOGIC;
    rdfifo_wren_cs_reg : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[0]\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[2]\ : out STD_LOGIC;
    \size_cs_reg[11]\ : out STD_LOGIC;
    Send_done_cs_reg_0 : out STD_LOGIC;
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_icap_nstate_cs_reg[2]_0\ : out STD_LOGIC;
    scndry_vect_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \IP2Bus_Data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]_0\ : out STD_LOGIC;
    \IP2Bus_Data_reg[30]_0\ : out STD_LOGIC;
    \IP2Bus_Data_reg[29]_0\ : out STD_LOGIC;
    \IP2Bus_Data_reg[20]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \ip2bus_data_i_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_10_in : in STD_LOGIC;
    IP2Bus_RdAck0 : in STD_LOGIC;
    p_11_in : in STD_LOGIC;
    IP2Bus_WrAck0 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrfifo_rden : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    rdfifo_wren : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_icap_nstate_cs_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    prmry_in : in STD_LOGIC;
    reset_cr_cs_reg : in STD_LOGIC;
    hang_status_cs_reg : in STD_LOGIC;
    icap_ce_cs_reg : in STD_LOGIC;
    \size_cs_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    abort_cs2_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icap_status_i_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_ipic_if : entity is "ipic_if";
end shell_axi_hwicap_0_0_ipic_if;

architecture STRUCTURE of shell_axi_hwicap_0_0_ipic_if is
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \RD_FIFO.RDDATA_FIFO_I_n_41\ : STD_LOGIC;
  signal \RD_FIFO.RDDATA_FIFO_I_n_42\ : STD_LOGIC;
  signal \RD_FIFO.RDFULL_SYNCH_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Size_counter_i2 : STD_LOGIC_VECTOR ( 0 to 11 );
  signal abort_onreset : STD_LOGIC;
  signal abort_onreset0 : STD_LOGIC;
  signal busip_1 : STD_LOGIC;
  signal cr_i0 : STD_LOGIC;
  signal fifo_clear : STD_LOGIC;
  signal fifo_full_mask : STD_LOGIC;
  signal fifo_rst : STD_LOGIC;
  signal \^fifo_rst_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gate_icap_p\ : STD_LOGIC;
  signal ipbus_1 : STD_LOGIC;
  signal ipbus_2 : STD_LOGIC;
  signal \^ipbus_ack\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal rdfifo_full_d1 : STD_LOGIC;
  signal rdfifo_full_ip2bus : STD_LOGIC;
  signal rnc : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^scndry_out\ : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal sz_i : STD_LOGIC_VECTOR ( 0 to 11 );
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(4 downto 0) <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(4 downto 0);
  SR(0) <= \^sr\(0);
  fifo_rst_reg_0(0) <= \^fifo_rst_reg_0\(0);
  gate_icap_p <= \^gate_icap_p\;
  ipbus_ack <= \^ipbus_ack\;
  \out\ <= \^out\;
  scndry_out <= \^scndry_out\;
BUS2ICAP_SIZE_REGISTER_PROCESS: entity work.shell_axi_hwicap_0_0_cdc_sync
     port map (
      Q(11) => sz_i(0),
      Q(10) => sz_i(1),
      Q(9) => sz_i(2),
      Q(8) => sz_i(3),
      Q(7) => sz_i(4),
      Q(6) => sz_i(5),
      Q(5) => sz_i(6),
      Q(4) => sz_i(7),
      Q(3) => sz_i(8),
      Q(2) => sz_i(9),
      Q(1) => sz_i(10),
      Q(0) => sz_i(11),
      s_axi_aclk => s_axi_aclk,
      scndry_vect_out(11 downto 0) => scndry_vect_out(11 downto 0)
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^fifo_rst_reg_0\(0)
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FFFF40FF4040"
    )
        port map (
      I0 => \^sr\(0),
      I1 => rdfifo_full_d1,
      I2 => fifo_full_mask,
      I3 => Bus_RNW_reg_reg,
      I4 => s_axi_wdata(3),
      I5 => p_1_in,
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\
    );
ICAP2BUS_STATUS_REGISTER_PROCESS: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized0\
     port map (
      \IP2Bus_Data_reg[0]\(31 downto 0) => \IP2Bus_Data_reg[0]_0\(31 downto 0),
      Q(31) => sr_i(0),
      Q(30) => sr_i(1),
      Q(29) => sr_i(2),
      Q(28) => sr_i(3),
      Q(27) => sr_i(4),
      Q(26) => sr_i(5),
      Q(25) => sr_i(6),
      Q(24) => sr_i(7),
      Q(23) => sr_i(8),
      Q(22) => sr_i(9),
      Q(21) => sr_i(10),
      Q(20) => sr_i(11),
      Q(19) => sr_i(12),
      Q(18) => sr_i(13),
      Q(17) => sr_i(14),
      Q(16) => sr_i(15),
      Q(15) => sr_i(16),
      Q(14) => sr_i(17),
      Q(13) => sr_i(18),
      Q(12) => sr_i(19),
      Q(11) => sr_i(20),
      Q(10) => sr_i(21),
      Q(9) => sr_i(22),
      Q(8) => sr_i(23),
      Q(7) => sr_i(24),
      Q(6) => sr_i(25),
      Q(5) => sr_i(26),
      Q(4) => sr_i(27),
      Q(3) => sr_i(28),
      Q(2) => sr_i(29),
      Q(1) => sr_i(30),
      Q(0) => sr_i(31),
      s_axi_aclk => s_axi_aclk
    );
ICAP2PLB_SYNCH1: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized6\
     port map (
      \IP2Bus_Data_reg[31]\ => \IP2Bus_Data_reg[31]_0\,
      prmry_in => prmry_in,
      s_axi_aclk => s_axi_aclk
    );
ICAP2PLB_SYNCH2: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized7\
     port map (
      SR(0) => cr_i0,
      abort_onreset0 => abort_onreset0,
      \cr_i_reg[0]\(0) => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(4),
      reset_cr_cs_reg => reset_cr_cs_reg,
      s_axi_aclk => s_axi_aclk,
      sw_reset_reg => \^sr\(0)
    );
ICAP2PLB_SYNCH3: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized8\
     port map (
      \IP2Bus_Data_reg[30]\ => \IP2Bus_Data_reg[30]_0\,
      hang_status_cs_reg => hang_status_cs_reg,
      s_axi_aclk => s_axi_aclk
    );
ICAP2PLB_SYNCH4: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized9\
     port map (
      \IP2Bus_Data_reg[29]\ => \IP2Bus_Data_reg[29]_0\,
      icap_ce_cs_reg => icap_ce_cs_reg,
      s_axi_aclk => s_axi_aclk
    );
ICAP2PLB_SYNCH5: entity work.shell_axi_hwicap_0_0_cdc_sync_0
     port map (
      s_axi_aclk => s_axi_aclk,
      scndry_vect_out(11) => Size_counter_i2(0),
      scndry_vect_out(10) => Size_counter_i2(1),
      scndry_vect_out(9) => Size_counter_i2(2),
      scndry_vect_out(8) => Size_counter_i2(3),
      scndry_vect_out(7) => Size_counter_i2(4),
      scndry_vect_out(6) => Size_counter_i2(5),
      scndry_vect_out(5) => Size_counter_i2(6),
      scndry_vect_out(4) => Size_counter_i2(7),
      scndry_vect_out(3) => Size_counter_i2(8),
      scndry_vect_out(2) => Size_counter_i2(9),
      scndry_vect_out(1) => Size_counter_i2(10),
      scndry_vect_out(0) => Size_counter_i2(11),
      \size_cs_reg[0]\(11 downto 0) => \size_cs_reg[0]\(11 downto 0)
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(31),
      Q => \ip2bus_data_i_reg[0]\(31),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(21),
      Q => \ip2bus_data_i_reg[0]\(21),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(20),
      Q => \ip2bus_data_i_reg[0]\(20),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(19),
      Q => \ip2bus_data_i_reg[0]\(19),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(18),
      Q => \ip2bus_data_i_reg[0]\(18),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(17),
      Q => \ip2bus_data_i_reg[0]\(17),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(16),
      Q => \ip2bus_data_i_reg[0]\(16),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(15),
      Q => \ip2bus_data_i_reg[0]\(15),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(14),
      Q => \ip2bus_data_i_reg[0]\(14),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(13),
      Q => \ip2bus_data_i_reg[0]\(13),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(12),
      Q => \ip2bus_data_i_reg[0]\(12),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(30),
      Q => \ip2bus_data_i_reg[0]\(30),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(11),
      Q => \ip2bus_data_i_reg[0]\(11),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(10),
      Q => \ip2bus_data_i_reg[0]\(10),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(9),
      Q => \ip2bus_data_i_reg[0]\(9),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8),
      Q => \ip2bus_data_i_reg[0]\(8),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(7),
      Q => \ip2bus_data_i_reg[0]\(7),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(6),
      Q => \ip2bus_data_i_reg[0]\(6),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(5),
      Q => \ip2bus_data_i_reg[0]\(5),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(4),
      Q => \ip2bus_data_i_reg[0]\(4),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3),
      Q => \ip2bus_data_i_reg[0]\(3),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(2),
      Q => \ip2bus_data_i_reg[0]\(2),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(29),
      Q => \ip2bus_data_i_reg[0]\(29),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(1),
      Q => \ip2bus_data_i_reg[0]\(1),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(0),
      Q => \ip2bus_data_i_reg[0]\(0),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(28),
      Q => \ip2bus_data_i_reg[0]\(28),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(27),
      Q => \ip2bus_data_i_reg[0]\(27),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(26),
      Q => \ip2bus_data_i_reg[0]\(26),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(25),
      Q => \ip2bus_data_i_reg[0]\(25),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(24),
      Q => \ip2bus_data_i_reg[0]\(24),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(23),
      Q => \ip2bus_data_i_reg[0]\(23),
      R => \^sr\(0)
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(22),
      Q => \ip2bus_data_i_reg[0]\(22),
      R => \^sr\(0)
    );
IP2Bus_RdAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_RdAck0,
      Q => p_6_out,
      R => \^sr\(0)
    );
IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_WrAck0,
      Q => p_5_out,
      R => \^sr\(0)
    );
PLB2ICAP_SYNCH1: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized3\
     port map (
      \FSM_sequential_icap_nstate_cs_reg[1]\(1 downto 0) => \FSM_sequential_icap_nstate_cs_reg[2]_1\(1 downto 0),
      \cr_i_reg[0]\(0) => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(4),
      gate_signal_p_reg => \^gate_icap_p\,
      rnc(0 to 1) => rnc(0 to 1),
      s_axi_aclk => s_axi_aclk,
      scndry_out => \^scndry_out\,
      \size_cs_reg[11]\ => \size_cs_reg[11]\
    );
PLB2ICAP_SYNCH2: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized4\
     port map (
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      \FSM_sequential_icap_nstate_cs_reg[1]\ => \FSM_sequential_icap_nstate_cs_reg[1]\,
      \FSM_sequential_icap_nstate_cs_reg[1]_0\(1 downto 0) => \FSM_sequential_icap_nstate_cs_reg[2]_1\(1 downto 0),
      \FSM_sequential_icap_nstate_cs_reg[2]\ => \FSM_sequential_icap_nstate_cs_reg[2]_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => rnc(1),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ => \^scndry_out\,
      Send_done_cs_reg => Send_done_cs_reg,
      \cr_i_reg[3]\(0) => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(1),
      gate_signal_p_reg => \^gate_icap_p\,
      prmry_in => \^out\,
      s_axi_aclk => s_axi_aclk,
      scndry_out => rnc(0)
    );
PLB2ICAP_SYNCH3: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized5\
     port map (
      \FSM_sequential_icap_nstate_cs_reg[0]\ => \FSM_sequential_icap_nstate_cs_reg[0]\,
      \FSM_sequential_icap_nstate_cs_reg[2]\ => \FSM_sequential_icap_nstate_cs_reg[2]\,
      \FSM_sequential_icap_nstate_cs_reg[2]_0\(2 downto 0) => \FSM_sequential_icap_nstate_cs_reg[2]_1\(2 downto 0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => rnc(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ => \^scndry_out\,
      Send_done_cs_reg => Send_done_cs_reg_0,
      \cr_i_reg[4]\(0) => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(0),
      gate_signal_p_reg => \^gate_icap_p\,
      prmry_in => \^out\,
      s_axi_aclk => s_axi_aclk,
      scndry_out => rnc(1)
    );
\RD_FIFO.RDDATA_FIFO_I\: entity work.\shell_axi_hwicap_0_0_async_fifo_fg__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      abort_onreset => abort_onreset,
      fifo_clear => fifo_clear,
      fifo_rst => fifo_rst,
      gate_signal_p_reg => \RD_FIFO.RDDATA_FIFO_I_n_42\,
      gate_signal_p_reg_0 => \^gate_icap_p\,
      ipbus_1 => ipbus_1,
      ipbus_2 => ipbus_2,
      p_1_in5_in => p_1_in5_in,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      p_7_in => p_7_in,
      prmry_in => \RD_FIFO.RDDATA_FIFO_I_n_41\,
      rdfifo_wren => rdfifo_wren,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(1),
      sw_reset_reg => \^sr\(0)
    );
\RD_FIFO.RDFULL_SYNCH\: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized2\
     port map (
      \RD_FIFO.fifo_full_mask_reg\ => \RD_FIFO.RDFULL_SYNCH_n_0\,
      abort_onreset => abort_onreset,
      fifo_full_mask => fifo_full_mask,
      fifo_rst => fifo_rst,
      prmry_in => \RD_FIFO.RDDATA_FIFO_I_n_41\,
      rdfifo_full_d1 => rdfifo_full_d1,
      s_axi_aclk => s_axi_aclk,
      scndry_out => rdfifo_full_ip2bus,
      sw_reset_reg => \^sr\(0)
    );
\RD_FIFO.fifo_full_mask_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RD_FIFO.RDFULL_SYNCH_n_0\,
      Q => fifo_full_mask,
      R => '0'
    );
\RD_FIFO.rdfifo_full_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdfifo_full_ip2bus,
      Q => rdfifo_full_d1,
      R => '0'
    );
\Size_counter_i3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(0),
      Q => \IP2Bus_Data_reg[20]_0\(11),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(10),
      Q => \IP2Bus_Data_reg[20]_0\(1),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(11),
      Q => \IP2Bus_Data_reg[20]_0\(0),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(1),
      Q => \IP2Bus_Data_reg[20]_0\(10),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(2),
      Q => \IP2Bus_Data_reg[20]_0\(9),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(3),
      Q => \IP2Bus_Data_reg[20]_0\(8),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(4),
      Q => \IP2Bus_Data_reg[20]_0\(7),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(5),
      Q => \IP2Bus_Data_reg[20]_0\(6),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(6),
      Q => \IP2Bus_Data_reg[20]_0\(5),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(7),
      Q => \IP2Bus_Data_reg[20]_0\(4),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(8),
      Q => \IP2Bus_Data_reg[20]_0\(3),
      R => \^fifo_rst_reg_0\(0)
    );
\Size_counter_i3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Size_counter_i2(9),
      Q => \IP2Bus_Data_reg[20]_0\(2),
      R => \^fifo_rst_reg_0\(0)
    );
\WRFIFO.WRDATA_FIFO_I\: entity work.shell_axi_hwicap_0_0_async_fifo_fg
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      D(31 downto 0) => D(31 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg_0,
      busip_1 => busip_1,
      fifo_clear => fifo_clear,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \grstd1.grst_full.grst_f.rst_d1_reg\ => \grstd1.grst_full.grst_f.rst_d1_reg\,
      p_8_in => p_8_in,
      prmry_in => \^out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      sw_reset_reg => \^sr\(0),
      wrfifo_rden => wrfifo_rden
    );
\WRFIFO.WREMPTY_SYNCH\: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized1\
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      p_1_in2_in => p_1_in2_in,
      prmry_in => \^out\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(2),
      sw_reset_reg => \^sr\(0)
    );
abort_onreset_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => abort_onreset0,
      Q => abort_onreset,
      S => \^fifo_rst_reg_0\(0)
    );
busip_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_11_in,
      Q => busip_1,
      R => '0'
    );
\cr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(4),
      R => cr_i0
    );
\cr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(3),
      R => cr_i0
    );
\cr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(2),
      R => cr_i0
    );
\cr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(1),
      R => cr_i0
    );
\cr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(0),
      R => cr_i0
    );
fifo_rst_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(2),
      Q => fifo_rst,
      S => \^fifo_rst_reg_0\(0)
    );
gate_signal_p_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RD_FIFO.RDDATA_FIFO_I_n_42\,
      Q => \^gate_icap_p\,
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
ipbus_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_10_in,
      Q => ipbus_1,
      R => '0'
    );
ipbus_2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipbus_1,
      Q => ipbus_2,
      R => '0'
    );
ipbus_ack_fifo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ipbus_1,
      I1 => ipbus_2,
      O => \^ipbus_ack\
    );
ipbus_ack_fifo_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^ipbus_ack\,
      Q => ipbus_ack_fifo,
      R => '0'
    );
rdfifo_wren_cs_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^gate_icap_p\,
      I1 => CO(0),
      O => rdfifo_wren_cs_reg
    );
\sr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(31),
      Q => sr_i(0),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(21),
      Q => sr_i(10),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(20),
      Q => sr_i(11),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(19),
      Q => sr_i(12),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(18),
      Q => sr_i(13),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(17),
      Q => sr_i(14),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(16),
      Q => sr_i(15),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(15),
      Q => sr_i(16),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(14),
      Q => sr_i(17),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(13),
      Q => sr_i(18),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(12),
      Q => sr_i(19),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(30),
      Q => sr_i(1),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(11),
      Q => sr_i(20),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(10),
      Q => sr_i(21),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(9),
      Q => sr_i(22),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(8),
      Q => sr_i(23),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(7),
      Q => sr_i(24),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(6),
      Q => sr_i(25),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(5),
      Q => sr_i(26),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(4),
      Q => sr_i(27),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(3),
      Q => sr_i(28),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(2),
      Q => sr_i(29),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(29),
      Q => sr_i(2),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(1),
      Q => sr_i(30),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(0),
      Q => sr_i(31),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(28),
      Q => sr_i(3),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(27),
      Q => sr_i(4),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(26),
      Q => sr_i(5),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(25),
      Q => sr_i(6),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(24),
      Q => sr_i(7),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(23),
      Q => sr_i(8),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
\sr_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => abort_cs2_reg(0),
      D => \icap_status_i_reg[0]\(22),
      Q => sr_i(9),
      R => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0)
    );
sw_reset_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\(3),
      Q => \^sr\(0),
      S => \^fifo_rst_reg_0\(0)
    );
\sz_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(11),
      Q => sz_i(0),
      R => \^sr\(0)
    );
\sz_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(1),
      Q => sz_i(10),
      R => \^sr\(0)
    );
\sz_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(0),
      Q => sz_i(11),
      R => \^sr\(0)
    );
\sz_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(10),
      Q => sz_i(1),
      R => \^sr\(0)
    );
\sz_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(9),
      Q => sz_i(2),
      R => \^sr\(0)
    );
\sz_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(8),
      Q => sz_i(3),
      R => \^sr\(0)
    );
\sz_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(7),
      Q => sz_i(4),
      R => \^sr\(0)
    );
\sz_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(6),
      Q => sz_i(5),
      R => \^sr\(0)
    );
\sz_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(5),
      Q => sz_i(6),
      R => \^sr\(0)
    );
\sz_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(4),
      Q => sz_i(7),
      R => \^sr\(0)
    );
\sz_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(3),
      Q => sz_i(8),
      R => \^sr\(0)
    );
\sz_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      D => s_axi_wdata(2),
      Q => sz_i(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_hwicap is
  port (
    p_5_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    intr_rst : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_rst_busy_i2_out : out STD_LOGIC;
    ipbus_ack_fifo : out STD_LOGIC;
    ipbus_ack : out STD_LOGIC;
    p_6_out : out STD_LOGIC;
    p_5_out : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    scndry_vect_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scndry_out : out STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[29]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[20]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \ip2bus_data_i_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_10_in : in STD_LOGIC;
    IP2Bus_RdAck0 : in STD_LOGIC;
    p_11_in : in STD_LOGIC;
    IP2Bus_WrAck0 : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_hwicap : entity is "hwicap";
end shell_axi_hwicap_0_0_hwicap;

architecture STRUCTURE of shell_axi_hwicap_0_0_hwicap is
  signal GEN_BUS2ICAP_RESET_n_0 : STD_LOGIC;
  signal \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0\ : STD_LOGIC;
  signal ICAP_Reset : STD_LOGIC;
  signal IPIC_IF_I_n_101 : STD_LOGIC;
  signal IPIC_IF_I_n_102 : STD_LOGIC;
  signal IPIC_IF_I_n_103 : STD_LOGIC;
  signal IPIC_IF_I_n_104 : STD_LOGIC;
  signal IPIC_IF_I_n_105 : STD_LOGIC;
  signal IPIC_IF_I_n_106 : STD_LOGIC;
  signal IPIC_IF_I_n_78 : STD_LOGIC;
  signal IPIC_IF_I_n_98 : STD_LOGIC;
  signal IPIC_IF_I_n_99 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal abort : STD_LOGIC;
  signal abort_cs2 : STD_LOGIC;
  signal abort_del1 : STD_LOGIC;
  signal abort_del2 : STD_LOGIC;
  signal abort_del3 : STD_LOGIC;
  signal ce_del1 : STD_LOGIC;
  signal ce_del2 : STD_LOGIC;
  signal ce_del3 : STD_LOGIC;
  signal count_reset_cs : STD_LOGIC;
  signal gate_icap_p : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal hang_status : STD_LOGIC;
  signal icap_available : STD_LOGIC;
  signal icap_ce : STD_LOGIC;
  signal icap_datain : STD_LOGIC_VECTOR ( 0 to 31 );
  signal icap_dataout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal icap_statemachine_I1_n_41 : STD_LOGIC;
  signal icap_statemachine_I1_n_42 : STD_LOGIC;
  signal icap_statemachine_I1_n_43 : STD_LOGIC;
  signal icap_statemachine_I1_n_56 : STD_LOGIC;
  signal icap_statemachine_I1_n_57 : STD_LOGIC;
  signal icap_statemachine_I1_n_58 : STD_LOGIC;
  signal icap_status_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal icap_we : STD_LOGIC;
  signal rdfifo_datain : STD_LOGIC_VECTOR ( 0 to 31 );
  signal rdfifo_wren : STD_LOGIC;
  signal rdwr_int1 : STD_LOGIC;
  signal reset_cr : STD_LOGIC;
  signal same_cycle : STD_LOGIC;
  signal send_done : STD_LOGIC;
  signal size : STD_LOGIC_VECTOR ( 0 to 11 );
  signal size_counter : STD_LOGIC_VECTOR ( 0 to 11 );
  signal wrfifo_dataout : STD_LOGIC_VECTOR ( 0 to 31 );
  signal wrfifo_rden : STD_LOGIC;
  signal writefifo_empty : STD_LOGIC;
  signal \NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRDONE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRERROR_UNCONNECTED\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I\ : label is "PRIMITIVE";
begin
  SR(0) <= \^sr\(0);
GEN_BUS2ICAP_RESET: entity work.\shell_axi_hwicap_0_0_cdc_sync__parameterized10\
     port map (
      SR(0) => GEN_BUS2ICAP_RESET_n_0,
      count_reset_cs => count_reset_cs,
      prmry_in => \^sr\(0),
      s_axi_aclk => s_axi_aclk,
      scndry_out => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I\: unisim.vcomponents.ICAPE3
    generic map(
      DEVICE_ID => X"04224093",
      ICAP_AUTO_SWITCH => "DISABLE",
      SIM_CFG_FILE_NAME => "NONE"
    )
        port map (
      AVAIL => icap_available,
      CLK => s_axi_aclk,
      CSIB => icap_ce,
      I(31) => icap_datain(0),
      I(30) => icap_datain(1),
      I(29) => icap_datain(2),
      I(28) => icap_datain(3),
      I(27) => icap_datain(4),
      I(26) => icap_datain(5),
      I(25) => icap_datain(6),
      I(24) => icap_datain(7),
      I(23) => icap_datain(8),
      I(22) => icap_datain(9),
      I(21) => icap_datain(10),
      I(20) => icap_datain(11),
      I(19) => icap_datain(12),
      I(18) => icap_datain(13),
      I(17) => icap_datain(14),
      I(16) => icap_datain(15),
      I(15) => icap_datain(16),
      I(14) => icap_datain(17),
      I(13) => icap_datain(18),
      I(12) => icap_datain(19),
      I(11) => icap_datain(20),
      I(10) => icap_datain(21),
      I(9) => icap_datain(22),
      I(8) => icap_datain(23),
      I(7) => icap_datain(24),
      I(6) => icap_datain(25),
      I(5) => icap_datain(26),
      I(4) => icap_datain(27),
      I(3) => icap_datain(28),
      I(2) => icap_datain(29),
      I(1) => icap_datain(30),
      I(0) => icap_datain(31),
      O(31 downto 0) => icap_dataout(31 downto 0),
      PRDONE => \NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRDONE_UNCONNECTED\,
      PRERROR => \NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRERROR_UNCONNECTED\,
      RDWRB => icap_we
    );
\GEN_FUNCTIONAL_UNISIM.abort_del1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0\,
      Q => abort_del1,
      R => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.abort_del2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => abort_del1,
      Q => abort_del2,
      R => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.abort_del3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => abort_del2,
      Q => abort_del3,
      R => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.abort_detect_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => icap_statemachine_I1_n_56,
      Q => \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0\,
      R => '0'
    );
\GEN_FUNCTIONAL_UNISIM.ce_del1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => icap_ce,
      Q => ce_del1,
      R => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.ce_del2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ce_del1,
      Q => ce_del2,
      R => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.ce_del3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ce_del2,
      Q => ce_del3,
      R => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => icap_statemachine_I1_n_57,
      Q => rdwr_int1,
      S => ICAP_Reset
    );
\GEN_FUNCTIONAL_UNISIM.same_cycle_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => icap_statemachine_I1_n_58,
      Q => same_cycle,
      R => ICAP_Reset
    );
IPIC_IF_I: entity work.shell_axi_hwicap_0_0_ipic_if
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      CO(0) => gtOp,
      D(31) => wrfifo_dataout(0),
      D(30) => wrfifo_dataout(1),
      D(29) => wrfifo_dataout(2),
      D(28) => wrfifo_dataout(3),
      D(27) => wrfifo_dataout(4),
      D(26) => wrfifo_dataout(5),
      D(25) => wrfifo_dataout(6),
      D(24) => wrfifo_dataout(7),
      D(23) => wrfifo_dataout(8),
      D(22) => wrfifo_dataout(9),
      D(21) => wrfifo_dataout(10),
      D(20) => wrfifo_dataout(11),
      D(19) => wrfifo_dataout(12),
      D(18) => wrfifo_dataout(13),
      D(17) => wrfifo_dataout(14),
      D(16) => wrfifo_dataout(15),
      D(15) => wrfifo_dataout(16),
      D(14) => wrfifo_dataout(17),
      D(13) => wrfifo_dataout(18),
      D(12) => wrfifo_dataout(19),
      D(11) => wrfifo_dataout(20),
      D(10) => wrfifo_dataout(21),
      D(9) => wrfifo_dataout(22),
      D(8) => wrfifo_dataout(23),
      D(7) => wrfifo_dataout(24),
      D(6) => wrfifo_dataout(25),
      D(5) => wrfifo_dataout(26),
      D(4) => wrfifo_dataout(27),
      D(3) => wrfifo_dataout(28),
      D(2) => wrfifo_dataout(29),
      D(1) => wrfifo_dataout(30),
      D(0) => wrfifo_dataout(31),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => IPIC_IF_I_n_104,
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      \FSM_sequential_icap_nstate_cs_reg[0]\ => IPIC_IF_I_n_99,
      \FSM_sequential_icap_nstate_cs_reg[1]\ => IPIC_IF_I_n_105,
      \FSM_sequential_icap_nstate_cs_reg[2]\ => IPIC_IF_I_n_101,
      \FSM_sequential_icap_nstate_cs_reg[2]_0\ => IPIC_IF_I_n_106,
      \FSM_sequential_icap_nstate_cs_reg[2]_1\(2) => icap_statemachine_I1_n_41,
      \FSM_sequential_icap_nstate_cs_reg[2]_1\(1) => icap_statemachine_I1_n_42,
      \FSM_sequential_icap_nstate_cs_reg[2]_1\(0) => icap_statemachine_I1_n_43,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(4 downto 0) => Q(4 downto 0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0) => ICAP_Reset,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0) => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0) => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6 downto 0),
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\,
      \IP2Bus_Data_reg[0]_0\(31 downto 0) => scndry_vect_out(31 downto 0),
      \IP2Bus_Data_reg[20]_0\(11 downto 0) => \IP2Bus_Data_reg[20]\(11 downto 0),
      \IP2Bus_Data_reg[29]_0\ => \IP2Bus_Data_reg[29]\,
      \IP2Bus_Data_reg[30]_0\ => \IP2Bus_Data_reg[30]\,
      \IP2Bus_Data_reg[31]_0\ => scndry_out,
      IP2Bus_RdAck0 => IP2Bus_RdAck0,
      IP2Bus_WrAck0 => IP2Bus_WrAck0,
      IP2Bus_WrAck_reg_0 => IP2Bus_WrAck_reg,
      Q(31) => rdfifo_datain(7),
      Q(30) => rdfifo_datain(6),
      Q(29) => rdfifo_datain(5),
      Q(28) => rdfifo_datain(4),
      Q(27) => rdfifo_datain(3),
      Q(26) => rdfifo_datain(2),
      Q(25) => rdfifo_datain(1),
      Q(24) => rdfifo_datain(0),
      Q(23) => rdfifo_datain(15),
      Q(22) => rdfifo_datain(14),
      Q(21) => rdfifo_datain(13),
      Q(20) => rdfifo_datain(12),
      Q(19) => rdfifo_datain(11),
      Q(18) => rdfifo_datain(10),
      Q(17) => rdfifo_datain(9),
      Q(16) => rdfifo_datain(8),
      Q(15) => rdfifo_datain(23),
      Q(14) => rdfifo_datain(22),
      Q(13) => rdfifo_datain(21),
      Q(12) => rdfifo_datain(20),
      Q(11) => rdfifo_datain(19),
      Q(10) => rdfifo_datain(18),
      Q(9) => rdfifo_datain(17),
      Q(8) => rdfifo_datain(16),
      Q(7) => rdfifo_datain(31),
      Q(6) => rdfifo_datain(30),
      Q(5) => rdfifo_datain(29),
      Q(4) => rdfifo_datain(28),
      Q(3) => rdfifo_datain(27),
      Q(2) => rdfifo_datain(26),
      Q(1) => rdfifo_datain(25),
      Q(0) => rdfifo_datain(24),
      SR(0) => intr_rst,
      Send_done_cs_reg => IPIC_IF_I_n_78,
      Send_done_cs_reg_0 => IPIC_IF_I_n_103,
      abort_cs2_reg(0) => abort_cs2,
      fifo_rst_reg_0(0) => \^sr\(0),
      gate_icap_p => gate_icap_p,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \grstd1.grst_full.grst_f.rst_d1_reg\ => wr_rst_busy_i2_out,
      hang_status_cs_reg => hang_status,
      icap_ce_cs_reg => icap_available,
      \icap_status_i_reg[0]\(31) => icap_status_i(0),
      \icap_status_i_reg[0]\(30) => icap_status_i(1),
      \icap_status_i_reg[0]\(29) => icap_status_i(2),
      \icap_status_i_reg[0]\(28) => icap_status_i(3),
      \icap_status_i_reg[0]\(27) => icap_status_i(4),
      \icap_status_i_reg[0]\(26) => icap_status_i(5),
      \icap_status_i_reg[0]\(25) => icap_status_i(6),
      \icap_status_i_reg[0]\(24) => icap_status_i(7),
      \icap_status_i_reg[0]\(23) => icap_status_i(8),
      \icap_status_i_reg[0]\(22) => icap_status_i(9),
      \icap_status_i_reg[0]\(21) => icap_status_i(10),
      \icap_status_i_reg[0]\(20) => icap_status_i(11),
      \icap_status_i_reg[0]\(19) => icap_status_i(12),
      \icap_status_i_reg[0]\(18) => icap_status_i(13),
      \icap_status_i_reg[0]\(17) => icap_status_i(14),
      \icap_status_i_reg[0]\(16) => icap_status_i(15),
      \icap_status_i_reg[0]\(15) => icap_status_i(16),
      \icap_status_i_reg[0]\(14) => icap_status_i(17),
      \icap_status_i_reg[0]\(13) => icap_status_i(18),
      \icap_status_i_reg[0]\(12) => icap_status_i(19),
      \icap_status_i_reg[0]\(11) => icap_status_i(20),
      \icap_status_i_reg[0]\(10) => icap_status_i(21),
      \icap_status_i_reg[0]\(9) => icap_status_i(22),
      \icap_status_i_reg[0]\(8) => icap_status_i(23),
      \icap_status_i_reg[0]\(7) => icap_status_i(24),
      \icap_status_i_reg[0]\(6) => icap_status_i(25),
      \icap_status_i_reg[0]\(5) => icap_status_i(26),
      \icap_status_i_reg[0]\(4) => icap_status_i(27),
      \icap_status_i_reg[0]\(3) => icap_status_i(28),
      \icap_status_i_reg[0]\(2) => icap_status_i(29),
      \icap_status_i_reg[0]\(1) => icap_status_i(30),
      \icap_status_i_reg[0]\(0) => icap_status_i(31),
      \ip2bus_data_i_reg[0]\(31 downto 0) => \ip2bus_data_i_reg[0]\(31 downto 0),
      ipbus_ack => ipbus_ack,
      ipbus_ack_fifo => ipbus_ack_fifo,
      \out\ => writefifo_empty,
      p_10_in => p_10_in,
      p_11_in => p_11_in,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_5_out => p_5_out,
      p_5_out_0(31 downto 0) => p_5_out_0(31 downto 0),
      p_6_out => p_6_out,
      p_7_in => p_7_in,
      p_8_in => p_8_in,
      prmry_in => send_done,
      rdfifo_wren => rdfifo_wren,
      rdfifo_wren_cs_reg => IPIC_IF_I_n_98,
      reset_cr_cs_reg => reset_cr,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      scndry_out => abort,
      scndry_vect_out(11) => size(0),
      scndry_vect_out(10) => size(1),
      scndry_vect_out(9) => size(2),
      scndry_vect_out(8) => size(3),
      scndry_vect_out(7) => size(4),
      scndry_vect_out(6) => size(5),
      scndry_vect_out(5) => size(6),
      scndry_vect_out(4) => size(7),
      scndry_vect_out(3) => size(8),
      scndry_vect_out(2) => size(9),
      scndry_vect_out(1) => size(10),
      scndry_vect_out(0) => size(11),
      \size_cs_reg[0]\(11) => size_counter(0),
      \size_cs_reg[0]\(10) => size_counter(1),
      \size_cs_reg[0]\(9) => size_counter(2),
      \size_cs_reg[0]\(8) => size_counter(3),
      \size_cs_reg[0]\(7) => size_counter(4),
      \size_cs_reg[0]\(6) => size_counter(5),
      \size_cs_reg[0]\(5) => size_counter(6),
      \size_cs_reg[0]\(4) => size_counter(7),
      \size_cs_reg[0]\(3) => size_counter(8),
      \size_cs_reg[0]\(2) => size_counter(9),
      \size_cs_reg[0]\(1) => size_counter(10),
      \size_cs_reg[0]\(0) => size_counter(11),
      \size_cs_reg[11]\ => IPIC_IF_I_n_102,
      wrfifo_rden => wrfifo_rden
    );
icap_statemachine_I1: entity work.shell_axi_hwicap_0_0_icap_statemachine
     port map (
      CO(0) => gtOp,
      D(31) => wrfifo_dataout(0),
      D(30) => wrfifo_dataout(1),
      D(29) => wrfifo_dataout(2),
      D(28) => wrfifo_dataout(3),
      D(27) => wrfifo_dataout(4),
      D(26) => wrfifo_dataout(5),
      D(25) => wrfifo_dataout(6),
      D(24) => wrfifo_dataout(7),
      D(23) => wrfifo_dataout(8),
      D(22) => wrfifo_dataout(9),
      D(21) => wrfifo_dataout(10),
      D(20) => wrfifo_dataout(11),
      D(19) => wrfifo_dataout(12),
      D(18) => wrfifo_dataout(13),
      D(17) => wrfifo_dataout(14),
      D(16) => wrfifo_dataout(15),
      D(15) => wrfifo_dataout(16),
      D(14) => wrfifo_dataout(17),
      D(13) => wrfifo_dataout(18),
      D(12) => wrfifo_dataout(19),
      D(11) => wrfifo_dataout(20),
      D(10) => wrfifo_dataout(21),
      D(9) => wrfifo_dataout(22),
      D(8) => wrfifo_dataout(23),
      D(7) => wrfifo_dataout(24),
      D(6) => wrfifo_dataout(25),
      D(5) => wrfifo_dataout(26),
      D(4) => wrfifo_dataout(27),
      D(3) => wrfifo_dataout(28),
      D(2) => wrfifo_dataout(29),
      D(1) => wrfifo_dataout(30),
      D(0) => wrfifo_dataout(31),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(31) => rdfifo_datain(7),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(30) => rdfifo_datain(6),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(29) => rdfifo_datain(5),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(28) => rdfifo_datain(4),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(27) => rdfifo_datain(3),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(26) => rdfifo_datain(2),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(25) => rdfifo_datain(1),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(24) => rdfifo_datain(0),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(23) => rdfifo_datain(15),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(22) => rdfifo_datain(14),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(21) => rdfifo_datain(13),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(20) => rdfifo_datain(12),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(19) => rdfifo_datain(11),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(18) => rdfifo_datain(10),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(17) => rdfifo_datain(9),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(16) => rdfifo_datain(8),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(15) => rdfifo_datain(23),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(14) => rdfifo_datain(22),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(13) => rdfifo_datain(21),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(12) => rdfifo_datain(20),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(11) => rdfifo_datain(19),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(10) => rdfifo_datain(18),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(9) => rdfifo_datain(17),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8) => rdfifo_datain(16),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(7) => rdfifo_datain(31),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6) => rdfifo_datain(30),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5) => rdfifo_datain(29),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4) => rdfifo_datain(28),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3) => rdfifo_datain(27),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2) => rdfifo_datain(26),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1) => rdfifo_datain(25),
      \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0) => rdfifo_datain(24),
      \FSM_sequential_icap_nstate_cs_reg[0]_0\ => IPIC_IF_I_n_102,
      \FSM_sequential_icap_nstate_cs_reg[1]_0\ => IPIC_IF_I_n_105,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(31) => icap_datain(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(30) => icap_datain(1),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(29) => icap_datain(2),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(28) => icap_datain(3),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(27) => icap_datain(4),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(26) => icap_datain(5),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(25) => icap_datain(6),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(24) => icap_datain(7),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(23) => icap_datain(8),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(22) => icap_datain(9),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(21) => icap_datain(10),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(20) => icap_datain(11),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(19) => icap_datain(12),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(18) => icap_datain(13),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(17) => icap_datain(14),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(16) => icap_datain(15),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(15) => icap_datain(16),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(14) => icap_datain(17),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(13) => icap_datain(18),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(12) => icap_datain(19),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(11) => icap_datain(20),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(10) => icap_datain(21),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(9) => icap_datain(22),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(8) => icap_datain(23),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(7) => icap_datain(24),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(6) => icap_datain(25),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(5) => icap_datain(26),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(4) => icap_datain(27),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(3) => icap_datain(28),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(2) => icap_datain(29),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(1) => icap_datain(30),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\(0) => icap_datain(31),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ => reset_cr,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ => hang_status,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => IPIC_IF_I_n_78,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => IPIC_IF_I_n_101,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ => IPIC_IF_I_n_99,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ => IPIC_IF_I_n_104,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\(0) => GEN_BUS2ICAP_RESET_n_0,
      \GEN_FUNCTIONAL_UNISIM.abort_detect_reg\ => icap_statemachine_I1_n_56,
      \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0\ => \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0\,
      \GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg\ => icap_statemachine_I1_n_57,
      \GEN_FUNCTIONAL_UNISIM.same_cycle_reg\ => icap_statemachine_I1_n_58,
      Q(11) => size_counter(0),
      Q(10) => size_counter(1),
      Q(9) => size_counter(2),
      Q(8) => size_counter(3),
      Q(7) => size_counter(4),
      Q(6) => size_counter(5),
      Q(5) => size_counter(6),
      Q(4) => size_counter(7),
      Q(3) => size_counter(8),
      Q(2) => size_counter(9),
      Q(1) => size_counter(10),
      Q(0) => size_counter(11),
      SR(0) => ICAP_Reset,
      abort_del1 => abort_del1,
      abort_del2 => abort_del2,
      abort_del3 => abort_del3,
      abort_i_cs_reg_0(2) => icap_statemachine_I1_n_41,
      abort_i_cs_reg_0(1) => icap_statemachine_I1_n_42,
      abort_i_cs_reg_0(0) => icap_statemachine_I1_n_43,
      ce_del3 => ce_del3,
      count_reset_cs => count_reset_cs,
      gate_icap_p => gate_icap_p,
      gate_signal_p_reg => IPIC_IF_I_n_98,
      gate_signal_p_reg_0 => IPIC_IF_I_n_103,
      gate_signal_p_reg_1 => IPIC_IF_I_n_106,
      \icap_status_i_reg[8]_0\(31) => icap_status_i(0),
      \icap_status_i_reg[8]_0\(30) => icap_status_i(1),
      \icap_status_i_reg[8]_0\(29) => icap_status_i(2),
      \icap_status_i_reg[8]_0\(28) => icap_status_i(3),
      \icap_status_i_reg[8]_0\(27) => icap_status_i(4),
      \icap_status_i_reg[8]_0\(26) => icap_status_i(5),
      \icap_status_i_reg[8]_0\(25) => icap_status_i(6),
      \icap_status_i_reg[8]_0\(24) => icap_status_i(7),
      \icap_status_i_reg[8]_0\(23) => icap_status_i(8),
      \icap_status_i_reg[8]_0\(22) => icap_status_i(9),
      \icap_status_i_reg[8]_0\(21) => icap_status_i(10),
      \icap_status_i_reg[8]_0\(20) => icap_status_i(11),
      \icap_status_i_reg[8]_0\(19) => icap_status_i(12),
      \icap_status_i_reg[8]_0\(18) => icap_status_i(13),
      \icap_status_i_reg[8]_0\(17) => icap_status_i(14),
      \icap_status_i_reg[8]_0\(16) => icap_status_i(15),
      \icap_status_i_reg[8]_0\(15) => icap_status_i(16),
      \icap_status_i_reg[8]_0\(14) => icap_status_i(17),
      \icap_status_i_reg[8]_0\(13) => icap_status_i(18),
      \icap_status_i_reg[8]_0\(12) => icap_status_i(19),
      \icap_status_i_reg[8]_0\(11) => icap_status_i(20),
      \icap_status_i_reg[8]_0\(10) => icap_status_i(21),
      \icap_status_i_reg[8]_0\(9) => icap_status_i(22),
      \icap_status_i_reg[8]_0\(8) => icap_status_i(23),
      \icap_status_i_reg[8]_0\(7) => icap_status_i(24),
      \icap_status_i_reg[8]_0\(6) => icap_status_i(25),
      \icap_status_i_reg[8]_0\(5) => icap_status_i(26),
      \icap_status_i_reg[8]_0\(4) => icap_status_i(27),
      \icap_status_i_reg[8]_0\(3) => icap_status_i(28),
      \icap_status_i_reg[8]_0\(2) => icap_status_i(29),
      \icap_status_i_reg[8]_0\(1) => icap_status_i(30),
      \icap_status_i_reg[8]_0\(0) => icap_status_i(31),
      icap_we_cs_reg_0 => icap_we,
      in0(0) => icap_dataout(31),
      in0(1) => icap_dataout(30),
      in0(2) => icap_dataout(29),
      in0(3) => icap_dataout(28),
      in0(4) => icap_dataout(27),
      in0(5) => icap_dataout(26),
      in0(6) => icap_dataout(25),
      in0(7) => icap_dataout(24),
      in0(8) => icap_dataout(23),
      in0(9) => icap_dataout(22),
      in0(10) => icap_dataout(21),
      in0(11) => icap_dataout(20),
      in0(12) => icap_dataout(19),
      in0(13) => icap_dataout(18),
      in0(14) => icap_dataout(17),
      in0(15) => icap_dataout(16),
      in0(16) => icap_dataout(15),
      in0(17) => icap_dataout(14),
      in0(18) => icap_dataout(13),
      in0(19) => icap_dataout(12),
      in0(20) => icap_dataout(11),
      in0(21) => icap_dataout(10),
      in0(22) => icap_dataout(9),
      in0(23) => icap_dataout(8),
      in0(24) => icap_dataout(7),
      in0(25) => icap_dataout(6),
      in0(26) => icap_dataout(5),
      in0(27) => icap_dataout(4),
      in0(28) => icap_dataout(3),
      in0(29) => icap_dataout(2),
      in0(30) => icap_dataout(1),
      in0(31) => icap_dataout(0),
      \out\ => icap_ce,
      prmry_in => send_done,
      ram_empty_i_reg => writefifo_empty,
      rdfifo_wren => rdfifo_wren,
      rdwr_int1 => rdwr_int1,
      s_axi_aclk => s_axi_aclk,
      same_cycle => same_cycle,
      scndry_out => abort,
      scndry_vect_out(11) => size(0),
      scndry_vect_out(10) => size(1),
      scndry_vect_out(9) => size(2),
      scndry_vect_out(8) => size(3),
      scndry_vect_out(7) => size(4),
      scndry_vect_out(6) => size(5),
      scndry_vect_out(5) => size(6),
      scndry_vect_out(4) => size(7),
      scndry_vect_out(3) => size(8),
      scndry_vect_out(2) => size(9),
      scndry_vect_out(1) => size(10),
      scndry_vect_out(0) => size(11),
      \sr_i_reg[0]\(0) => abort_cs2,
      wrfifo_rden => wrfifo_rden
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0_axi_hwicap is
  port (
    icap_clk : in STD_LOGIC;
    eos_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    pack : in STD_LOGIC;
    usrcclko : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    icap_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    cap_req : out STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    cap_rel : in STD_LOGIC;
    icap_avail : in STD_LOGIC
  );
  attribute C_BRAM_SRL_FIFO_TYPE : integer;
  attribute C_BRAM_SRL_FIFO_TYPE of shell_axi_hwicap_0_0_axi_hwicap : entity is 1;
  attribute C_DEVICE_ID : integer;
  attribute C_DEVICE_ID of shell_axi_hwicap_0_0_axi_hwicap : entity is 69353619;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of shell_axi_hwicap_0_0_axi_hwicap : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of shell_axi_hwicap_0_0_axi_hwicap : entity is "kintexu";
  attribute C_ICAP_EXTERNAL : integer;
  attribute C_ICAP_EXTERNAL of shell_axi_hwicap_0_0_axi_hwicap : entity is 0;
  attribute C_ICAP_WIDTH_S : string;
  attribute C_ICAP_WIDTH_S of shell_axi_hwicap_0_0_axi_hwicap : entity is "X32";
  attribute C_INCLUDE_STARTUP : integer;
  attribute C_INCLUDE_STARTUP of shell_axi_hwicap_0_0_axi_hwicap : entity is 0;
  attribute C_MODE : integer;
  attribute C_MODE of shell_axi_hwicap_0_0_axi_hwicap : entity is 0;
  attribute C_NOREAD : integer;
  attribute C_NOREAD of shell_axi_hwicap_0_0_axi_hwicap : entity is 0;
  attribute C_OPERATION : integer;
  attribute C_OPERATION of shell_axi_hwicap_0_0_axi_hwicap : entity is 0;
  attribute C_READ_FIFO_DEPTH : integer;
  attribute C_READ_FIFO_DEPTH of shell_axi_hwicap_0_0_axi_hwicap : entity is 128;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of shell_axi_hwicap_0_0_axi_hwicap : entity is 0;
  attribute C_SIMULATION : integer;
  attribute C_SIMULATION of shell_axi_hwicap_0_0_axi_hwicap : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of shell_axi_hwicap_0_0_axi_hwicap : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of shell_axi_hwicap_0_0_axi_hwicap : entity is 32;
  attribute C_WRITE_FIFO_DEPTH : integer;
  attribute C_WRITE_FIFO_DEPTH of shell_axi_hwicap_0_0_axi_hwicap : entity is 64;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_axi_hwicap_0_0_axi_hwicap : entity is "axi_hwicap";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of shell_axi_hwicap_0_0_axi_hwicap : entity is "yes";
end shell_axi_hwicap_0_0_axi_hwicap;

architecture STRUCTURE of shell_axi_hwicap_0_0_axi_hwicap is
  signal \<const0>\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_35\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_36\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_37\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_38\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_44\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_45\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_46\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_54\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_61\ : STD_LOGIC;
  signal \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_62\ : STD_LOGIC;
  signal INTERRUPT_CONTROL_I_n_1 : STD_LOGIC;
  signal INTERRUPT_CONTROL_I_n_12 : STD_LOGIC;
  signal \IPIC_IF_I/IP2Bus_RdAck0\ : STD_LOGIC;
  signal \IPIC_IF_I/IP2Bus_WrAck0\ : STD_LOGIC;
  signal \IPIC_IF_I/Size_counter_i3\ : STD_LOGIC_VECTOR ( 0 to 11 );
  signal \IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_busy_i2_out\ : STD_LOGIC;
  signal \IPIC_IF_I/eos_status_i2\ : STD_LOGIC;
  signal \IPIC_IF_I/hang_status_i2\ : STD_LOGIC;
  signal \IPIC_IF_I/ipbus_ack\ : STD_LOGIC;
  signal \IPIC_IF_I/ipbus_ack_fifo\ : STD_LOGIC;
  signal \IPIC_IF_I/p_0_in9_in\ : STD_LOGIC;
  signal \IPIC_IF_I/p_10_in\ : STD_LOGIC;
  signal \IPIC_IF_I/p_11_in\ : STD_LOGIC;
  signal \IPIC_IF_I/p_5_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \IPIC_IF_I/rd_occy_i\ : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \IPIC_IF_I/send_done_icap2bus\ : STD_LOGIC;
  signal \IPIC_IF_I/sr_icap2bus_3\ : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_7_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in\ : STD_LOGIC;
  signal XI4_LITE_I_n_12 : STD_LOGIC;
  signal XI4_LITE_I_n_17 : STD_LOGIC;
  signal XI4_LITE_I_n_18 : STD_LOGIC;
  signal XI4_LITE_I_n_19 : STD_LOGIC;
  signal XI4_LITE_I_n_20 : STD_LOGIC;
  signal XI4_LITE_I_n_21 : STD_LOGIC;
  signal XI4_LITE_I_n_22 : STD_LOGIC;
  signal XI4_LITE_I_n_23 : STD_LOGIC;
  signal XI4_LITE_I_n_24 : STD_LOGIC;
  signal XI4_LITE_I_n_25 : STD_LOGIC;
  signal XI4_LITE_I_n_26 : STD_LOGIC;
  signal XI4_LITE_I_n_27 : STD_LOGIC;
  signal XI4_LITE_I_n_28 : STD_LOGIC;
  signal XI4_LITE_I_n_29 : STD_LOGIC;
  signal XI4_LITE_I_n_30 : STD_LOGIC;
  signal XI4_LITE_I_n_31 : STD_LOGIC;
  signal XI4_LITE_I_n_32 : STD_LOGIC;
  signal XI4_LITE_I_n_33 : STD_LOGIC;
  signal XI4_LITE_I_n_34 : STD_LOGIC;
  signal XI4_LITE_I_n_35 : STD_LOGIC;
  signal XI4_LITE_I_n_36 : STD_LOGIC;
  signal XI4_LITE_I_n_37 : STD_LOGIC;
  signal XI4_LITE_I_n_38 : STD_LOGIC;
  signal XI4_LITE_I_n_39 : STD_LOGIC;
  signal XI4_LITE_I_n_40 : STD_LOGIC;
  signal XI4_LITE_I_n_41 : STD_LOGIC;
  signal XI4_LITE_I_n_42 : STD_LOGIC;
  signal XI4_LITE_I_n_43 : STD_LOGIC;
  signal XI4_LITE_I_n_44 : STD_LOGIC;
  signal XI4_LITE_I_n_45 : STD_LOGIC;
  signal XI4_LITE_I_n_46 : STD_LOGIC;
  signal XI4_LITE_I_n_47 : STD_LOGIC;
  signal XI4_LITE_I_n_48 : STD_LOGIC;
  signal XI4_LITE_I_n_49 : STD_LOGIC;
  signal XI4_LITE_I_n_50 : STD_LOGIC;
  signal XI4_LITE_I_n_51 : STD_LOGIC;
  signal XI4_LITE_I_n_52 : STD_LOGIC;
  signal XI4_LITE_I_n_53 : STD_LOGIC;
  signal XI4_LITE_I_n_54 : STD_LOGIC;
  signal XI4_LITE_I_n_55 : STD_LOGIC;
  signal XI4_LITE_I_n_56 : STD_LOGIC;
  signal XI4_LITE_I_n_57 : STD_LOGIC;
  signal XI4_LITE_I_n_58 : STD_LOGIC;
  signal XI4_LITE_I_n_59 : STD_LOGIC;
  signal XI4_LITE_I_n_8 : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal interrupt_wrce_strb : STD_LOGIC;
  signal intr2bus_rdack0 : STD_LOGIC;
  signal intr2bus_wrack : STD_LOGIC;
  signal intr_rst : STD_LOGIC;
  signal ip2bus_data_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i0 : STD_LOGIC;
  signal ip2bus_wrack_i : STD_LOGIC;
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_rdack : STD_LOGIC;
  signal irpt_rdack_d1 : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal wr_data_count_i : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  cap_req <= \<const0>\;
  cfgclk <= \<const0>\;
  cfgmclk <= \<const0>\;
  icap_csib <= \<const0>\;
  icap_o(31) <= \<const0>\;
  icap_o(30) <= \<const0>\;
  icap_o(29) <= \<const0>\;
  icap_o(28) <= \<const0>\;
  icap_o(27) <= \<const0>\;
  icap_o(26) <= \<const0>\;
  icap_o(25) <= \<const0>\;
  icap_o(24) <= \<const0>\;
  icap_o(23) <= \<const0>\;
  icap_o(22) <= \<const0>\;
  icap_o(21) <= \<const0>\;
  icap_o(20) <= \<const0>\;
  icap_o(19) <= \<const0>\;
  icap_o(18) <= \<const0>\;
  icap_o(17) <= \<const0>\;
  icap_o(16) <= \<const0>\;
  icap_o(15) <= \<const0>\;
  icap_o(14) <= \<const0>\;
  icap_o(13) <= \<const0>\;
  icap_o(12) <= \<const0>\;
  icap_o(11) <= \<const0>\;
  icap_o(10) <= \<const0>\;
  icap_o(9) <= \<const0>\;
  icap_o(8) <= \<const0>\;
  icap_o(7) <= \<const0>\;
  icap_o(6) <= \<const0>\;
  icap_o(5) <= \<const0>\;
  icap_o(4) <= \<const0>\;
  icap_o(3) <= \<const0>\;
  icap_o(2) <= \<const0>\;
  icap_o(1) <= \<const0>\;
  icap_o(0) <= \<const0>\;
  icap_rdwrb <= \<const0>\;
  preq <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ICAP_NOT_SHARED.HWICAP_CTRL_I\: entity work.shell_axi_hwicap_0_0_hwicap
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => XI4_LITE_I_n_8,
      D(31) => XI4_LITE_I_n_17,
      D(30) => XI4_LITE_I_n_18,
      D(29) => XI4_LITE_I_n_19,
      D(28) => XI4_LITE_I_n_20,
      D(27) => XI4_LITE_I_n_21,
      D(26) => XI4_LITE_I_n_22,
      D(25) => XI4_LITE_I_n_23,
      D(24) => XI4_LITE_I_n_24,
      D(23) => XI4_LITE_I_n_25,
      D(22) => XI4_LITE_I_n_26,
      D(21) => XI4_LITE_I_n_27,
      D(20) => XI4_LITE_I_n_28,
      D(19) => XI4_LITE_I_n_29,
      D(18) => XI4_LITE_I_n_30,
      D(17) => XI4_LITE_I_n_31,
      D(16) => XI4_LITE_I_n_32,
      D(15) => XI4_LITE_I_n_33,
      D(14) => XI4_LITE_I_n_34,
      D(13) => XI4_LITE_I_n_35,
      D(12) => XI4_LITE_I_n_36,
      D(11) => XI4_LITE_I_n_37,
      D(10) => XI4_LITE_I_n_38,
      D(9) => XI4_LITE_I_n_39,
      D(8) => XI4_LITE_I_n_40,
      D(7) => XI4_LITE_I_n_41,
      D(6) => XI4_LITE_I_n_42,
      D(5) => XI4_LITE_I_n_43,
      D(4) => XI4_LITE_I_n_44,
      D(3) => XI4_LITE_I_n_45,
      D(2) => XI4_LITE_I_n_46,
      D(1) => XI4_LITE_I_n_47,
      D(0) => XI4_LITE_I_n_48,
      E(0) => XI4_LITE_I_n_57,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => XI4_LITE_I_n_49,
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0) => XI4_LITE_I_n_58,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_54\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\(5 downto 0) => wr_data_count_i(5 downto 0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => INTERRUPT_CONTROL_I_n_1,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_46\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(6) => \IPIC_IF_I/rd_occy_i\(0),
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(5) => \IPIC_IF_I/rd_occy_i\(1),
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(4) => \IPIC_IF_I/rd_occy_i\(2),
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(3) => \IPIC_IF_I/rd_occy_i\(3),
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(2) => \IPIC_IF_I/rd_occy_i\(4),
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(1) => \IPIC_IF_I/rd_occy_i\(5),
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\(0) => \IPIC_IF_I/rd_occy_i\(6),
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_45\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_44\,
      \IP2Bus_Data_reg[20]\(11) => \IPIC_IF_I/Size_counter_i3\(0),
      \IP2Bus_Data_reg[20]\(10) => \IPIC_IF_I/Size_counter_i3\(1),
      \IP2Bus_Data_reg[20]\(9) => \IPIC_IF_I/Size_counter_i3\(2),
      \IP2Bus_Data_reg[20]\(8) => \IPIC_IF_I/Size_counter_i3\(3),
      \IP2Bus_Data_reg[20]\(7) => \IPIC_IF_I/Size_counter_i3\(4),
      \IP2Bus_Data_reg[20]\(6) => \IPIC_IF_I/Size_counter_i3\(5),
      \IP2Bus_Data_reg[20]\(5) => \IPIC_IF_I/Size_counter_i3\(6),
      \IP2Bus_Data_reg[20]\(4) => \IPIC_IF_I/Size_counter_i3\(7),
      \IP2Bus_Data_reg[20]\(3) => \IPIC_IF_I/Size_counter_i3\(8),
      \IP2Bus_Data_reg[20]\(2) => \IPIC_IF_I/Size_counter_i3\(9),
      \IP2Bus_Data_reg[20]\(1) => \IPIC_IF_I/Size_counter_i3\(10),
      \IP2Bus_Data_reg[20]\(0) => \IPIC_IF_I/Size_counter_i3\(11),
      \IP2Bus_Data_reg[29]\ => \IPIC_IF_I/eos_status_i2\,
      \IP2Bus_Data_reg[30]\ => \IPIC_IF_I/hang_status_i2\,
      IP2Bus_RdAck0 => \IPIC_IF_I/IP2Bus_RdAck0\,
      IP2Bus_WrAck0 => \IPIC_IF_I/IP2Bus_WrAck0\,
      IP2Bus_WrAck_reg => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_62\,
      Q(4) => \IPIC_IF_I/p_0_in9_in\,
      Q(3) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_35\,
      Q(2) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_36\,
      Q(1) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_37\,
      Q(0) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_38\,
      SR(0) => bus2ip_reset,
      \gic0.gc1.count_reg[0]\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_61\,
      intr_rst => intr_rst,
      \ip2bus_data_i_reg[0]\(31) => p_8_out(0),
      \ip2bus_data_i_reg[0]\(30) => p_8_out(1),
      \ip2bus_data_i_reg[0]\(29) => p_8_out(2),
      \ip2bus_data_i_reg[0]\(28) => p_8_out(3),
      \ip2bus_data_i_reg[0]\(27) => p_8_out(4),
      \ip2bus_data_i_reg[0]\(26) => p_8_out(5),
      \ip2bus_data_i_reg[0]\(25) => p_8_out(6),
      \ip2bus_data_i_reg[0]\(24) => p_8_out(7),
      \ip2bus_data_i_reg[0]\(23) => p_8_out(8),
      \ip2bus_data_i_reg[0]\(22) => p_8_out(9),
      \ip2bus_data_i_reg[0]\(21) => p_8_out(10),
      \ip2bus_data_i_reg[0]\(20) => p_8_out(11),
      \ip2bus_data_i_reg[0]\(19) => p_8_out(12),
      \ip2bus_data_i_reg[0]\(18) => p_8_out(13),
      \ip2bus_data_i_reg[0]\(17) => p_8_out(14),
      \ip2bus_data_i_reg[0]\(16) => p_8_out(15),
      \ip2bus_data_i_reg[0]\(15) => p_8_out(16),
      \ip2bus_data_i_reg[0]\(14) => p_8_out(17),
      \ip2bus_data_i_reg[0]\(13) => p_8_out(18),
      \ip2bus_data_i_reg[0]\(12) => p_8_out(19),
      \ip2bus_data_i_reg[0]\(11) => p_8_out(20),
      \ip2bus_data_i_reg[0]\(10) => p_8_out(21),
      \ip2bus_data_i_reg[0]\(9) => p_8_out(22),
      \ip2bus_data_i_reg[0]\(8) => p_8_out(23),
      \ip2bus_data_i_reg[0]\(7) => p_8_out(24),
      \ip2bus_data_i_reg[0]\(6) => p_8_out(25),
      \ip2bus_data_i_reg[0]\(5) => p_8_out(26),
      \ip2bus_data_i_reg[0]\(4) => p_8_out(27),
      \ip2bus_data_i_reg[0]\(3) => p_8_out(28),
      \ip2bus_data_i_reg[0]\(2) => p_8_out(29),
      \ip2bus_data_i_reg[0]\(1) => p_8_out(30),
      \ip2bus_data_i_reg[0]\(0) => p_8_out(31),
      ipbus_ack => \IPIC_IF_I/ipbus_ack\,
      ipbus_ack_fifo => \IPIC_IF_I/ipbus_ack_fifo\,
      p_10_in => \IPIC_IF_I/p_10_in\,
      p_11_in => \IPIC_IF_I/p_11_in\,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_5_out => p_5_out,
      p_5_out_0(31 downto 0) => \IPIC_IF_I/p_5_out\(31 downto 0),
      p_6_out => p_6_out,
      p_7_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_7_in\,
      p_8_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      scndry_out => \IPIC_IF_I/send_done_icap2bus\,
      scndry_vect_out(31) => \IPIC_IF_I/sr_icap2bus_3\(0),
      scndry_vect_out(30) => \IPIC_IF_I/sr_icap2bus_3\(1),
      scndry_vect_out(29) => \IPIC_IF_I/sr_icap2bus_3\(2),
      scndry_vect_out(28) => \IPIC_IF_I/sr_icap2bus_3\(3),
      scndry_vect_out(27) => \IPIC_IF_I/sr_icap2bus_3\(4),
      scndry_vect_out(26) => \IPIC_IF_I/sr_icap2bus_3\(5),
      scndry_vect_out(25) => \IPIC_IF_I/sr_icap2bus_3\(6),
      scndry_vect_out(24) => \IPIC_IF_I/sr_icap2bus_3\(7),
      scndry_vect_out(23) => \IPIC_IF_I/sr_icap2bus_3\(8),
      scndry_vect_out(22) => \IPIC_IF_I/sr_icap2bus_3\(9),
      scndry_vect_out(21) => \IPIC_IF_I/sr_icap2bus_3\(10),
      scndry_vect_out(20) => \IPIC_IF_I/sr_icap2bus_3\(11),
      scndry_vect_out(19) => \IPIC_IF_I/sr_icap2bus_3\(12),
      scndry_vect_out(18) => \IPIC_IF_I/sr_icap2bus_3\(13),
      scndry_vect_out(17) => \IPIC_IF_I/sr_icap2bus_3\(14),
      scndry_vect_out(16) => \IPIC_IF_I/sr_icap2bus_3\(15),
      scndry_vect_out(15) => \IPIC_IF_I/sr_icap2bus_3\(16),
      scndry_vect_out(14) => \IPIC_IF_I/sr_icap2bus_3\(17),
      scndry_vect_out(13) => \IPIC_IF_I/sr_icap2bus_3\(18),
      scndry_vect_out(12) => \IPIC_IF_I/sr_icap2bus_3\(19),
      scndry_vect_out(11) => \IPIC_IF_I/sr_icap2bus_3\(20),
      scndry_vect_out(10) => \IPIC_IF_I/sr_icap2bus_3\(21),
      scndry_vect_out(9) => \IPIC_IF_I/sr_icap2bus_3\(22),
      scndry_vect_out(8) => \IPIC_IF_I/sr_icap2bus_3\(23),
      scndry_vect_out(7) => \IPIC_IF_I/sr_icap2bus_3\(24),
      scndry_vect_out(6) => \IPIC_IF_I/sr_icap2bus_3\(25),
      scndry_vect_out(5) => \IPIC_IF_I/sr_icap2bus_3\(26),
      scndry_vect_out(4) => \IPIC_IF_I/sr_icap2bus_3\(27),
      scndry_vect_out(3) => \IPIC_IF_I/sr_icap2bus_3\(28),
      scndry_vect_out(2) => \IPIC_IF_I/sr_icap2bus_3\(29),
      scndry_vect_out(1) => \IPIC_IF_I/sr_icap2bus_3\(30),
      scndry_vect_out(0) => \IPIC_IF_I/sr_icap2bus_3\(31),
      wr_rst_busy_i2_out => \IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_busy_i2_out\
    );
INTERRUPT_CONTROL_I: entity work.shell_axi_hwicap_0_0_interrupt_control
     port map (
      E(0) => XI4_LITE_I_n_59,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_45\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => XI4_LITE_I_n_56,
      Q(3) => p_0_in4_in,
      Q(2) => p_0_in1_in,
      Q(1) => p_0_in,
      Q(0) => INTERRUPT_CONTROL_I_n_12,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack => intr2bus_wrack,
      intr_rst => intr_rst,
      \ip2bus_data_i_reg[31]\ => INTERRUPT_CONTROL_I_n_1,
      ip2bus_rdack_i0 => ip2bus_rdack_i0,
      ip2intc_irpt => ip2intc_irpt,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_6_out => p_6_out,
      \rd_dc_i_reg[6]\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_46\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      sw_reset_reg => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_44\,
      \wr_data_count_i_reg[5]\ => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_54\
    );
XI4_LITE_I: entity work.shell_axi_hwicap_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(31) => XI4_LITE_I_n_17,
      D(30) => XI4_LITE_I_n_18,
      D(29) => XI4_LITE_I_n_19,
      D(28) => XI4_LITE_I_n_20,
      D(27) => XI4_LITE_I_n_21,
      D(26) => XI4_LITE_I_n_22,
      D(25) => XI4_LITE_I_n_23,
      D(24) => XI4_LITE_I_n_24,
      D(23) => XI4_LITE_I_n_25,
      D(22) => XI4_LITE_I_n_26,
      D(21) => XI4_LITE_I_n_27,
      D(20) => XI4_LITE_I_n_28,
      D(19) => XI4_LITE_I_n_29,
      D(18) => XI4_LITE_I_n_30,
      D(17) => XI4_LITE_I_n_31,
      D(16) => XI4_LITE_I_n_32,
      D(15) => XI4_LITE_I_n_33,
      D(14) => XI4_LITE_I_n_34,
      D(13) => XI4_LITE_I_n_35,
      D(12) => XI4_LITE_I_n_36,
      D(11) => XI4_LITE_I_n_37,
      D(10) => XI4_LITE_I_n_38,
      D(9) => XI4_LITE_I_n_39,
      D(8) => XI4_LITE_I_n_40,
      D(7) => XI4_LITE_I_n_41,
      D(6) => XI4_LITE_I_n_42,
      D(5) => XI4_LITE_I_n_43,
      D(4) => XI4_LITE_I_n_44,
      D(3) => XI4_LITE_I_n_45,
      D(2) => XI4_LITE_I_n_46,
      D(1) => XI4_LITE_I_n_47,
      D(0) => XI4_LITE_I_n_48,
      E(0) => XI4_LITE_I_n_57,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \IPIC_IF_I/hang_status_i2\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \IPIC_IF_I/eos_status_i2\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => INTERRUPT_CONTROL_I_n_1,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => XI4_LITE_I_n_8,
      \IP2Bus_Data_reg[0]\(4) => p_8_out(0),
      \IP2Bus_Data_reg[0]\(3) => p_8_out(28),
      \IP2Bus_Data_reg[0]\(2) => p_8_out(29),
      \IP2Bus_Data_reg[0]\(1) => p_8_out(30),
      \IP2Bus_Data_reg[0]\(0) => p_8_out(31),
      \IP2Bus_Data_reg[31]\ => XI4_LITE_I_n_49,
      IP2Bus_RdAck0 => \IPIC_IF_I/IP2Bus_RdAck0\,
      IP2Bus_WrAck0 => \IPIC_IF_I/IP2Bus_WrAck0\,
      Q(4) => \IPIC_IF_I/p_0_in9_in\,
      Q(3) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_35\,
      Q(2) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_36\,
      Q(1) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_37\,
      Q(0) => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_38\,
      SR(0) => bus2ip_reset,
      \Size_counter_i3_reg[0]\(11) => \IPIC_IF_I/Size_counter_i3\(0),
      \Size_counter_i3_reg[0]\(10) => \IPIC_IF_I/Size_counter_i3\(1),
      \Size_counter_i3_reg[0]\(9) => \IPIC_IF_I/Size_counter_i3\(2),
      \Size_counter_i3_reg[0]\(8) => \IPIC_IF_I/Size_counter_i3\(3),
      \Size_counter_i3_reg[0]\(7) => \IPIC_IF_I/Size_counter_i3\(4),
      \Size_counter_i3_reg[0]\(6) => \IPIC_IF_I/Size_counter_i3\(5),
      \Size_counter_i3_reg[0]\(5) => \IPIC_IF_I/Size_counter_i3\(6),
      \Size_counter_i3_reg[0]\(4) => \IPIC_IF_I/Size_counter_i3\(7),
      \Size_counter_i3_reg[0]\(3) => \IPIC_IF_I/Size_counter_i3\(8),
      \Size_counter_i3_reg[0]\(2) => \IPIC_IF_I/Size_counter_i3\(9),
      \Size_counter_i3_reg[0]\(1) => \IPIC_IF_I/Size_counter_i3\(10),
      \Size_counter_i3_reg[0]\(0) => \IPIC_IF_I/Size_counter_i3\(11),
      busip_1_reg => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_61\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack => intr2bus_wrack,
      \ip2bus_data_i_reg[0]\(4) => XI4_LITE_I_n_50,
      \ip2bus_data_i_reg[0]\(3) => XI4_LITE_I_n_51,
      \ip2bus_data_i_reg[0]\(2) => XI4_LITE_I_n_52,
      \ip2bus_data_i_reg[0]\(1) => XI4_LITE_I_n_53,
      \ip2bus_data_i_reg[0]\(0) => XI4_LITE_I_n_54,
      \ip2bus_data_i_reg[0]_0\(31) => ip2bus_data_i(0),
      \ip2bus_data_i_reg[0]_0\(30) => ip2bus_data_i(1),
      \ip2bus_data_i_reg[0]_0\(29) => ip2bus_data_i(2),
      \ip2bus_data_i_reg[0]_0\(28) => ip2bus_data_i(3),
      \ip2bus_data_i_reg[0]_0\(27) => ip2bus_data_i(4),
      \ip2bus_data_i_reg[0]_0\(26) => ip2bus_data_i(5),
      \ip2bus_data_i_reg[0]_0\(25) => ip2bus_data_i(6),
      \ip2bus_data_i_reg[0]_0\(24) => ip2bus_data_i(7),
      \ip2bus_data_i_reg[0]_0\(23) => ip2bus_data_i(8),
      \ip2bus_data_i_reg[0]_0\(22) => ip2bus_data_i(9),
      \ip2bus_data_i_reg[0]_0\(21) => ip2bus_data_i(10),
      \ip2bus_data_i_reg[0]_0\(20) => ip2bus_data_i(11),
      \ip2bus_data_i_reg[0]_0\(19) => ip2bus_data_i(12),
      \ip2bus_data_i_reg[0]_0\(18) => ip2bus_data_i(13),
      \ip2bus_data_i_reg[0]_0\(17) => ip2bus_data_i(14),
      \ip2bus_data_i_reg[0]_0\(16) => ip2bus_data_i(15),
      \ip2bus_data_i_reg[0]_0\(15) => ip2bus_data_i(16),
      \ip2bus_data_i_reg[0]_0\(14) => ip2bus_data_i(17),
      \ip2bus_data_i_reg[0]_0\(13) => ip2bus_data_i(18),
      \ip2bus_data_i_reg[0]_0\(12) => ip2bus_data_i(19),
      \ip2bus_data_i_reg[0]_0\(11) => ip2bus_data_i(20),
      \ip2bus_data_i_reg[0]_0\(10) => ip2bus_data_i(21),
      \ip2bus_data_i_reg[0]_0\(9) => ip2bus_data_i(22),
      \ip2bus_data_i_reg[0]_0\(8) => ip2bus_data_i(23),
      \ip2bus_data_i_reg[0]_0\(7) => ip2bus_data_i(24),
      \ip2bus_data_i_reg[0]_0\(6) => ip2bus_data_i(25),
      \ip2bus_data_i_reg[0]_0\(5) => ip2bus_data_i(26),
      \ip2bus_data_i_reg[0]_0\(4) => ip2bus_data_i(27),
      \ip2bus_data_i_reg[0]_0\(3) => ip2bus_data_i(28),
      \ip2bus_data_i_reg[0]_0\(2) => ip2bus_data_i(29),
      \ip2bus_data_i_reg[0]_0\(1) => ip2bus_data_i(30),
      \ip2bus_data_i_reg[0]_0\(0) => ip2bus_data_i(31),
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_rdack_i_reg(0) => XI4_LITE_I_n_12,
      ip2bus_wrack_i => ip2bus_wrack_i,
      ip2bus_wrack_i_reg => XI4_LITE_I_n_55,
      \ip_irpt_enable_reg_reg[3]\(0) => XI4_LITE_I_n_59,
      \ip_irpt_enable_reg_reg[3]_0\(3) => p_0_in4_in,
      \ip_irpt_enable_reg_reg[3]_0\(2) => p_0_in1_in,
      \ip_irpt_enable_reg_reg[3]_0\(1) => p_0_in,
      \ip_irpt_enable_reg_reg[3]_0\(0) => INTERRUPT_CONTROL_I_n_12,
      ipbus_ack => \IPIC_IF_I/ipbus_ack\,
      ipbus_ack_fifo => \IPIC_IF_I/ipbus_ack_fifo\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => XI4_LITE_I_n_56,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_10_in => \IPIC_IF_I/p_10_in\,
      p_11_in => \IPIC_IF_I/p_11_in\,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_5_out => p_5_out,
      p_5_out_0(31 downto 0) => \IPIC_IF_I/p_5_out\(31 downto 0),
      p_7_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_7_in\,
      p_8_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in\,
      ram_full_i_reg => \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_62\,
      \rd_dc_i_reg[6]\(6) => \IPIC_IF_I/rd_occy_i\(0),
      \rd_dc_i_reg[6]\(5) => \IPIC_IF_I/rd_occy_i\(1),
      \rd_dc_i_reg[6]\(4) => \IPIC_IF_I/rd_occy_i\(2),
      \rd_dc_i_reg[6]\(3) => \IPIC_IF_I/rd_occy_i\(3),
      \rd_dc_i_reg[6]\(2) => \IPIC_IF_I/rd_occy_i\(4),
      \rd_dc_i_reg[6]\(1) => \IPIC_IF_I/rd_occy_i\(5),
      \rd_dc_i_reg[6]\(0) => \IPIC_IF_I/rd_occy_i\(6),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(0) => s_axi_wdata(31),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wvalid => s_axi_wvalid,
      scndry_out => \IPIC_IF_I/send_done_icap2bus\,
      scndry_vect_out(31) => \IPIC_IF_I/sr_icap2bus_3\(0),
      scndry_vect_out(30) => \IPIC_IF_I/sr_icap2bus_3\(1),
      scndry_vect_out(29) => \IPIC_IF_I/sr_icap2bus_3\(2),
      scndry_vect_out(28) => \IPIC_IF_I/sr_icap2bus_3\(3),
      scndry_vect_out(27) => \IPIC_IF_I/sr_icap2bus_3\(4),
      scndry_vect_out(26) => \IPIC_IF_I/sr_icap2bus_3\(5),
      scndry_vect_out(25) => \IPIC_IF_I/sr_icap2bus_3\(6),
      scndry_vect_out(24) => \IPIC_IF_I/sr_icap2bus_3\(7),
      scndry_vect_out(23) => \IPIC_IF_I/sr_icap2bus_3\(8),
      scndry_vect_out(22) => \IPIC_IF_I/sr_icap2bus_3\(9),
      scndry_vect_out(21) => \IPIC_IF_I/sr_icap2bus_3\(10),
      scndry_vect_out(20) => \IPIC_IF_I/sr_icap2bus_3\(11),
      scndry_vect_out(19) => \IPIC_IF_I/sr_icap2bus_3\(12),
      scndry_vect_out(18) => \IPIC_IF_I/sr_icap2bus_3\(13),
      scndry_vect_out(17) => \IPIC_IF_I/sr_icap2bus_3\(14),
      scndry_vect_out(16) => \IPIC_IF_I/sr_icap2bus_3\(15),
      scndry_vect_out(15) => \IPIC_IF_I/sr_icap2bus_3\(16),
      scndry_vect_out(14) => \IPIC_IF_I/sr_icap2bus_3\(17),
      scndry_vect_out(13) => \IPIC_IF_I/sr_icap2bus_3\(18),
      scndry_vect_out(12) => \IPIC_IF_I/sr_icap2bus_3\(19),
      scndry_vect_out(11) => \IPIC_IF_I/sr_icap2bus_3\(20),
      scndry_vect_out(10) => \IPIC_IF_I/sr_icap2bus_3\(21),
      scndry_vect_out(9) => \IPIC_IF_I/sr_icap2bus_3\(22),
      scndry_vect_out(8) => \IPIC_IF_I/sr_icap2bus_3\(23),
      scndry_vect_out(7) => \IPIC_IF_I/sr_icap2bus_3\(24),
      scndry_vect_out(6) => \IPIC_IF_I/sr_icap2bus_3\(25),
      scndry_vect_out(5) => \IPIC_IF_I/sr_icap2bus_3\(26),
      scndry_vect_out(4) => \IPIC_IF_I/sr_icap2bus_3\(27),
      scndry_vect_out(3) => \IPIC_IF_I/sr_icap2bus_3\(28),
      scndry_vect_out(2) => \IPIC_IF_I/sr_icap2bus_3\(29),
      scndry_vect_out(1) => \IPIC_IF_I/sr_icap2bus_3\(30),
      scndry_vect_out(0) => \IPIC_IF_I/sr_icap2bus_3\(31),
      \sz_i_reg[0]\(0) => XI4_LITE_I_n_58,
      \wr_data_count_i_reg[5]\(5 downto 0) => wr_data_count_i(5 downto 0),
      wr_rst_busy_i2_out => \IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_busy_i2_out\
    );
\ip2bus_data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => XI4_LITE_I_n_50,
      Q => ip2bus_data_i(0),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(10),
      Q => ip2bus_data_i(10),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(11),
      Q => ip2bus_data_i(11),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(12),
      Q => ip2bus_data_i(12),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(13),
      Q => ip2bus_data_i(13),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(14),
      Q => ip2bus_data_i(14),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(15),
      Q => ip2bus_data_i(15),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(16),
      Q => ip2bus_data_i(16),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(17),
      Q => ip2bus_data_i(17),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(18),
      Q => ip2bus_data_i(18),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(19),
      Q => ip2bus_data_i(19),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(1),
      Q => ip2bus_data_i(1),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(20),
      Q => ip2bus_data_i(20),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(21),
      Q => ip2bus_data_i(21),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(22),
      Q => ip2bus_data_i(22),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(23),
      Q => ip2bus_data_i(23),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(24),
      Q => ip2bus_data_i(24),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(25),
      Q => ip2bus_data_i(25),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(26),
      Q => ip2bus_data_i(26),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(27),
      Q => ip2bus_data_i(27),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => XI4_LITE_I_n_51,
      Q => ip2bus_data_i(28),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => XI4_LITE_I_n_52,
      Q => ip2bus_data_i(29),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(2),
      Q => ip2bus_data_i(2),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => XI4_LITE_I_n_53,
      Q => ip2bus_data_i(30),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => XI4_LITE_I_n_54,
      Q => ip2bus_data_i(31),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(3),
      Q => ip2bus_data_i(3),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(4),
      Q => ip2bus_data_i(4),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(5),
      Q => ip2bus_data_i(5),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(6),
      Q => ip2bus_data_i(6),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(7),
      Q => ip2bus_data_i(7),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(8),
      Q => ip2bus_data_i(8),
      R => XI4_LITE_I_n_12
    );
\ip2bus_data_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out(9),
      Q => ip2bus_data_i(9),
      R => XI4_LITE_I_n_12
    );
ip2bus_rdack_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i0,
      Q => ip2bus_rdack_i,
      R => XI4_LITE_I_n_12
    );
ip2bus_wrack_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => XI4_LITE_I_n_55,
      Q => ip2bus_wrack_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_axi_hwicap_0_0 is
  port (
    icap_clk : in STD_LOGIC;
    eos_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of shell_axi_hwicap_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shell_axi_hwicap_0_0 : entity is "shell_axi_hwicap_0_0,axi_hwicap,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of shell_axi_hwicap_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of shell_axi_hwicap_0_0 : entity is "axi_hwicap,Vivado 2016.4";
end shell_axi_hwicap_0_0;

architecture STRUCTURE of shell_axi_hwicap_0_0 is
  signal NLW_U0_cap_req_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_cfgmclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_icap_csib_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_icap_rdwrb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_icap_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_BRAM_SRL_FIFO_TYPE : integer;
  attribute C_BRAM_SRL_FIFO_TYPE of U0 : label is 1;
  attribute C_DEVICE_ID : integer;
  attribute C_DEVICE_ID of U0 : label is 69353619;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintexu";
  attribute C_ICAP_EXTERNAL : integer;
  attribute C_ICAP_EXTERNAL of U0 : label is 0;
  attribute C_ICAP_WIDTH_S : string;
  attribute C_ICAP_WIDTH_S of U0 : label is "X32";
  attribute C_INCLUDE_STARTUP : integer;
  attribute C_INCLUDE_STARTUP of U0 : label is 0;
  attribute C_MODE : integer;
  attribute C_MODE of U0 : label is 0;
  attribute C_NOREAD : integer;
  attribute C_NOREAD of U0 : label is 0;
  attribute C_OPERATION : integer;
  attribute C_OPERATION of U0 : label is 0;
  attribute C_READ_FIFO_DEPTH : integer;
  attribute C_READ_FIFO_DEPTH of U0 : label is 128;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of U0 : label is 0;
  attribute C_SIMULATION : integer;
  attribute C_SIMULATION of U0 : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_WRITE_FIFO_DEPTH : integer;
  attribute C_WRITE_FIFO_DEPTH of U0 : label is 64;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.shell_axi_hwicap_0_0_axi_hwicap
     port map (
      cap_gnt => '0',
      cap_rel => '0',
      cap_req => NLW_U0_cap_req_UNCONNECTED,
      cfgclk => NLW_U0_cfgclk_UNCONNECTED,
      cfgmclk => NLW_U0_cfgmclk_UNCONNECTED,
      clk => '0',
      eos_in => eos_in,
      gsr => '0',
      gts => '0',
      icap_avail => '0',
      icap_clk => icap_clk,
      icap_csib => NLW_U0_icap_csib_UNCONNECTED,
      icap_i(31 downto 0) => B"00000000000000000000000000000000",
      icap_o(31 downto 0) => NLW_U0_icap_o_UNCONNECTED(31 downto 0),
      icap_rdwrb => NLW_U0_icap_rdwrb_UNCONNECTED,
      ip2intc_irpt => ip2intc_irpt,
      keyclearb => '0',
      pack => '0',
      preq => NLW_U0_preq_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      usrcclko => '0',
      usrcclkts => '0',
      usrdoneo => '0',
      usrdonets => '0'
    );
end STRUCTURE;
