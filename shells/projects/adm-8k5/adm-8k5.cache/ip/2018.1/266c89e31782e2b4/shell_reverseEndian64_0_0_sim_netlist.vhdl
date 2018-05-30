-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue May 15 12:00:19 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_reverseEndian64_0_0_sim_netlist.vhdl
-- Design      : shell_reverseEndian64_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_in_TVALID : in STD_LOGIC;
    stream_in_TREADY : out STD_LOGIC;
    stream_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_out_TVALID : out STD_LOGIC;
    stream_out_TREADY : in STD_LOGIC;
    stream_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64 : entity is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64 : entity is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64 : entity is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64 : entity is "4'b1000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64 is
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[1]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[3]\ : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal ap_rst_n_inv : STD_LOGIC;
  signal p_82_in : STD_LOGIC;
  signal \^stream_in_tready\ : STD_LOGIC;
  signal stream_in_V_data_V_0_ack_in : STD_LOGIC;
  signal stream_in_V_data_V_0_load_B : STD_LOGIC;
  signal stream_in_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal stream_in_V_data_V_0_sel : STD_LOGIC;
  signal stream_in_V_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_in_V_data_V_0_sel_wr : STD_LOGIC;
  signal stream_in_V_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_in_V_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_V_data_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_V_data_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_in_V_last_V_0_ack_in : STD_LOGIC;
  signal stream_in_V_last_V_0_payload_A : STD_LOGIC;
  signal \stream_in_V_last_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_V_last_V_0_payload_B : STD_LOGIC;
  signal \stream_in_V_last_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_V_last_V_0_sel : STD_LOGIC;
  signal stream_in_V_last_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_in_V_last_V_0_sel_wr : STD_LOGIC;
  signal stream_in_V_last_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_in_V_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_V_last_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_V_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_in_V_tkeep_V_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stream_in_V_tkeep_V_0_load_B : STD_LOGIC;
  signal stream_in_V_tkeep_V_0_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_V_tkeep_V_0_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stream_in_V_tkeep_V_0_sel : STD_LOGIC;
  signal stream_in_V_tkeep_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_in_V_tkeep_V_0_sel_wr : STD_LOGIC;
  signal stream_in_V_tkeep_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_in_V_tkeep_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_V_tkeep_V_0_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \stream_in_V_tkeep_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^stream_out_tvalid\ : STD_LOGIC;
  signal stream_out_V_data_V_1_ack_in : STD_LOGIC;
  signal stream_out_V_data_V_1_load_B : STD_LOGIC;
  signal stream_out_V_data_V_1_payload_A : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_V_data_V_1_payload_B : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal stream_out_V_data_V_1_sel : STD_LOGIC;
  signal stream_out_V_data_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_V_data_V_1_sel_wr : STD_LOGIC;
  signal stream_out_V_data_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_V_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_V_data_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_V_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_out_V_last_V_1_ack_in : STD_LOGIC;
  signal stream_out_V_last_V_1_payload_A : STD_LOGIC;
  signal \stream_out_V_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_V_last_V_1_payload_B : STD_LOGIC;
  signal \stream_out_V_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_V_last_V_1_sel : STD_LOGIC;
  signal stream_out_V_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_V_last_V_1_sel_wr : STD_LOGIC;
  signal stream_out_V_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_V_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_V_last_V_1_state_cmp_full : STD_LOGIC;
  signal \stream_out_V_last_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_out_V_tkeep_V_1_ack_in : STD_LOGIC;
  signal stream_out_V_tkeep_V_1_load_B : STD_LOGIC;
  signal stream_out_V_tkeep_V_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_V_tkeep_V_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stream_out_V_tkeep_V_1_sel : STD_LOGIC;
  signal stream_out_V_tkeep_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_V_tkeep_V_1_sel_wr : STD_LOGIC;
  signal stream_out_V_tkeep_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_V_tkeep_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_V_tkeep_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal x_V_fu_179_p9 : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of stream_in_V_data_V_0_sel_wr_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of stream_in_V_last_V_0_sel_wr_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \stream_out_TDATA[0]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \stream_out_TDATA[10]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \stream_out_TDATA[11]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \stream_out_TDATA[12]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \stream_out_TDATA[13]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \stream_out_TDATA[14]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \stream_out_TDATA[15]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \stream_out_TDATA[16]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \stream_out_TDATA[17]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \stream_out_TDATA[18]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \stream_out_TDATA[19]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \stream_out_TDATA[1]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \stream_out_TDATA[20]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \stream_out_TDATA[21]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \stream_out_TDATA[22]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \stream_out_TDATA[23]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \stream_out_TDATA[24]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \stream_out_TDATA[25]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \stream_out_TDATA[26]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \stream_out_TDATA[27]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \stream_out_TDATA[28]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \stream_out_TDATA[29]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \stream_out_TDATA[2]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \stream_out_TDATA[30]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \stream_out_TDATA[31]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \stream_out_TDATA[32]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \stream_out_TDATA[33]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \stream_out_TDATA[34]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \stream_out_TDATA[35]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \stream_out_TDATA[36]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \stream_out_TDATA[37]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \stream_out_TDATA[38]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \stream_out_TDATA[39]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \stream_out_TDATA[3]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \stream_out_TDATA[40]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \stream_out_TDATA[41]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \stream_out_TDATA[42]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \stream_out_TDATA[43]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \stream_out_TDATA[44]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \stream_out_TDATA[45]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \stream_out_TDATA[46]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \stream_out_TDATA[47]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \stream_out_TDATA[48]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \stream_out_TDATA[49]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \stream_out_TDATA[4]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \stream_out_TDATA[50]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \stream_out_TDATA[51]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \stream_out_TDATA[52]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \stream_out_TDATA[53]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \stream_out_TDATA[54]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \stream_out_TDATA[55]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \stream_out_TDATA[56]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \stream_out_TDATA[57]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \stream_out_TDATA[58]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \stream_out_TDATA[59]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \stream_out_TDATA[5]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \stream_out_TDATA[60]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \stream_out_TDATA[61]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \stream_out_TDATA[62]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \stream_out_TDATA[6]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \stream_out_TDATA[7]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \stream_out_TDATA[8]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \stream_out_TDATA[9]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[0]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[1]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[2]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[3]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[4]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[5]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[6]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \stream_out_TKEEP[7]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[22]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[23]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[26]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[28]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[31]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[32]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[34]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[35]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[36]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[37]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[38]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[39]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[40]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[41]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[42]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[43]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[44]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[45]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[46]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[47]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[48]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[49]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[50]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[51]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[52]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[53]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[54]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[55]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[56]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[57]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[58]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[59]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[60]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[61]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[62]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[63]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \stream_out_V_data_V_1_payload_A[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of stream_out_V_data_V_1_sel_rd_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of stream_out_V_data_V_1_sel_wr_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \stream_out_V_last_V_1_payload_A[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stream_out_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of stream_out_V_last_V_1_sel_wr_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \stream_out_V_last_V_1_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_payload_A[7]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of stream_out_V_tkeep_V_1_sel_rd_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \stream_out_V_tkeep_V_1_state[0]_i_2\ : label is "soft_lutpair1";
begin
  stream_in_TREADY <= \^stream_in_tready\;
  stream_out_TVALID <= \^stream_out_tvalid\;
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => stream_out_V_data_V_1_ack_in,
      I1 => \ap_CS_fsm_reg_n_0_[3]\,
      I2 => \ap_CS_fsm_reg_n_0_[1]\,
      I3 => ap_CS_fsm_state3,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[1]\,
      I1 => ap_CS_fsm_state3,
      I2 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => stream_out_V_data_V_1_ack_in,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100011100000111"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => \ap_CS_fsm_reg_n_0_[1]\,
      I2 => \ap_CS_fsm_reg_n_0_[3]\,
      I3 => stream_out_V_data_V_1_ack_in,
      I4 => ap_CS_fsm_state3,
      I5 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => '0',
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \ap_CS_fsm_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => \ap_CS_fsm_reg_n_0_[3]\,
      R => ap_rst_n_inv
    );
\stream_in_V_data_V_0_payload_A[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_V_data_V_0_ack_in,
      I2 => stream_in_V_data_V_0_sel_wr,
      O => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\
    );
\stream_in_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(0),
      Q => stream_in_V_data_V_0_payload_A(0),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(10),
      Q => stream_in_V_data_V_0_payload_A(10),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(11),
      Q => stream_in_V_data_V_0_payload_A(11),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(12),
      Q => stream_in_V_data_V_0_payload_A(12),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(13),
      Q => stream_in_V_data_V_0_payload_A(13),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(14),
      Q => stream_in_V_data_V_0_payload_A(14),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(15),
      Q => stream_in_V_data_V_0_payload_A(15),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(16),
      Q => stream_in_V_data_V_0_payload_A(16),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(17),
      Q => stream_in_V_data_V_0_payload_A(17),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(18),
      Q => stream_in_V_data_V_0_payload_A(18),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(19),
      Q => stream_in_V_data_V_0_payload_A(19),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(1),
      Q => stream_in_V_data_V_0_payload_A(1),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(20),
      Q => stream_in_V_data_V_0_payload_A(20),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(21),
      Q => stream_in_V_data_V_0_payload_A(21),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(22),
      Q => stream_in_V_data_V_0_payload_A(22),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(23),
      Q => stream_in_V_data_V_0_payload_A(23),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(24),
      Q => stream_in_V_data_V_0_payload_A(24),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(25),
      Q => stream_in_V_data_V_0_payload_A(25),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(26),
      Q => stream_in_V_data_V_0_payload_A(26),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(27),
      Q => stream_in_V_data_V_0_payload_A(27),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(28),
      Q => stream_in_V_data_V_0_payload_A(28),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(29),
      Q => stream_in_V_data_V_0_payload_A(29),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(2),
      Q => stream_in_V_data_V_0_payload_A(2),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(30),
      Q => stream_in_V_data_V_0_payload_A(30),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(31),
      Q => stream_in_V_data_V_0_payload_A(31),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(32),
      Q => stream_in_V_data_V_0_payload_A(32),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(33),
      Q => stream_in_V_data_V_0_payload_A(33),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(34),
      Q => stream_in_V_data_V_0_payload_A(34),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(35),
      Q => stream_in_V_data_V_0_payload_A(35),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(36),
      Q => stream_in_V_data_V_0_payload_A(36),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(37),
      Q => stream_in_V_data_V_0_payload_A(37),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(38),
      Q => stream_in_V_data_V_0_payload_A(38),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(39),
      Q => stream_in_V_data_V_0_payload_A(39),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(3),
      Q => stream_in_V_data_V_0_payload_A(3),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(40),
      Q => stream_in_V_data_V_0_payload_A(40),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(41),
      Q => stream_in_V_data_V_0_payload_A(41),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(42),
      Q => stream_in_V_data_V_0_payload_A(42),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(43),
      Q => stream_in_V_data_V_0_payload_A(43),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(44),
      Q => stream_in_V_data_V_0_payload_A(44),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(45),
      Q => stream_in_V_data_V_0_payload_A(45),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(46),
      Q => stream_in_V_data_V_0_payload_A(46),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(47),
      Q => stream_in_V_data_V_0_payload_A(47),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(48),
      Q => stream_in_V_data_V_0_payload_A(48),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(49),
      Q => stream_in_V_data_V_0_payload_A(49),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(4),
      Q => stream_in_V_data_V_0_payload_A(4),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(50),
      Q => stream_in_V_data_V_0_payload_A(50),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(51),
      Q => stream_in_V_data_V_0_payload_A(51),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(52),
      Q => stream_in_V_data_V_0_payload_A(52),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(53),
      Q => stream_in_V_data_V_0_payload_A(53),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(54),
      Q => stream_in_V_data_V_0_payload_A(54),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(55),
      Q => stream_in_V_data_V_0_payload_A(55),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(56),
      Q => stream_in_V_data_V_0_payload_A(56),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(57),
      Q => stream_in_V_data_V_0_payload_A(57),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(58),
      Q => stream_in_V_data_V_0_payload_A(58),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(59),
      Q => stream_in_V_data_V_0_payload_A(59),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(5),
      Q => stream_in_V_data_V_0_payload_A(5),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(60),
      Q => stream_in_V_data_V_0_payload_A(60),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(61),
      Q => stream_in_V_data_V_0_payload_A(61),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(62),
      Q => stream_in_V_data_V_0_payload_A(62),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(63),
      Q => stream_in_V_data_V_0_payload_A(63),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(6),
      Q => stream_in_V_data_V_0_payload_A(6),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(7),
      Q => stream_in_V_data_V_0_payload_A(7),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(8),
      Q => stream_in_V_data_V_0_payload_A(8),
      R => '0'
    );
\stream_in_V_data_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_data_V_0_payload_A[63]_i_1_n_0\,
      D => stream_in_TDATA(9),
      Q => stream_in_V_data_V_0_payload_A(9),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => stream_in_V_data_V_0_sel_wr,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => stream_in_V_data_V_0_ack_in,
      O => stream_in_V_data_V_0_load_B
    );
\stream_in_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(0),
      Q => stream_in_V_data_V_0_payload_B(0),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(10),
      Q => stream_in_V_data_V_0_payload_B(10),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(11),
      Q => stream_in_V_data_V_0_payload_B(11),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(12),
      Q => stream_in_V_data_V_0_payload_B(12),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(13),
      Q => stream_in_V_data_V_0_payload_B(13),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(14),
      Q => stream_in_V_data_V_0_payload_B(14),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(15),
      Q => stream_in_V_data_V_0_payload_B(15),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(16),
      Q => stream_in_V_data_V_0_payload_B(16),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(17),
      Q => stream_in_V_data_V_0_payload_B(17),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(18),
      Q => stream_in_V_data_V_0_payload_B(18),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(19),
      Q => stream_in_V_data_V_0_payload_B(19),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(1),
      Q => stream_in_V_data_V_0_payload_B(1),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(20),
      Q => stream_in_V_data_V_0_payload_B(20),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(21),
      Q => stream_in_V_data_V_0_payload_B(21),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(22),
      Q => stream_in_V_data_V_0_payload_B(22),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(23),
      Q => stream_in_V_data_V_0_payload_B(23),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(24),
      Q => stream_in_V_data_V_0_payload_B(24),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(25),
      Q => stream_in_V_data_V_0_payload_B(25),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(26),
      Q => stream_in_V_data_V_0_payload_B(26),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(27),
      Q => stream_in_V_data_V_0_payload_B(27),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(28),
      Q => stream_in_V_data_V_0_payload_B(28),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(29),
      Q => stream_in_V_data_V_0_payload_B(29),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(2),
      Q => stream_in_V_data_V_0_payload_B(2),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(30),
      Q => stream_in_V_data_V_0_payload_B(30),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(31),
      Q => stream_in_V_data_V_0_payload_B(31),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(32),
      Q => stream_in_V_data_V_0_payload_B(32),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(33),
      Q => stream_in_V_data_V_0_payload_B(33),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(34),
      Q => stream_in_V_data_V_0_payload_B(34),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(35),
      Q => stream_in_V_data_V_0_payload_B(35),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(36),
      Q => stream_in_V_data_V_0_payload_B(36),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(37),
      Q => stream_in_V_data_V_0_payload_B(37),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(38),
      Q => stream_in_V_data_V_0_payload_B(38),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(39),
      Q => stream_in_V_data_V_0_payload_B(39),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(3),
      Q => stream_in_V_data_V_0_payload_B(3),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(40),
      Q => stream_in_V_data_V_0_payload_B(40),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(41),
      Q => stream_in_V_data_V_0_payload_B(41),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(42),
      Q => stream_in_V_data_V_0_payload_B(42),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(43),
      Q => stream_in_V_data_V_0_payload_B(43),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(44),
      Q => stream_in_V_data_V_0_payload_B(44),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(45),
      Q => stream_in_V_data_V_0_payload_B(45),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(46),
      Q => stream_in_V_data_V_0_payload_B(46),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(47),
      Q => stream_in_V_data_V_0_payload_B(47),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(48),
      Q => stream_in_V_data_V_0_payload_B(48),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(49),
      Q => stream_in_V_data_V_0_payload_B(49),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(4),
      Q => stream_in_V_data_V_0_payload_B(4),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(50),
      Q => stream_in_V_data_V_0_payload_B(50),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(51),
      Q => stream_in_V_data_V_0_payload_B(51),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(52),
      Q => stream_in_V_data_V_0_payload_B(52),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(53),
      Q => stream_in_V_data_V_0_payload_B(53),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(54),
      Q => stream_in_V_data_V_0_payload_B(54),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(55),
      Q => stream_in_V_data_V_0_payload_B(55),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(56),
      Q => stream_in_V_data_V_0_payload_B(56),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(57),
      Q => stream_in_V_data_V_0_payload_B(57),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(58),
      Q => stream_in_V_data_V_0_payload_B(58),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(59),
      Q => stream_in_V_data_V_0_payload_B(59),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(5),
      Q => stream_in_V_data_V_0_payload_B(5),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(60),
      Q => stream_in_V_data_V_0_payload_B(60),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(61),
      Q => stream_in_V_data_V_0_payload_B(61),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(62),
      Q => stream_in_V_data_V_0_payload_B(62),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(63),
      Q => stream_in_V_data_V_0_payload_B(63),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(6),
      Q => stream_in_V_data_V_0_payload_B(6),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(7),
      Q => stream_in_V_data_V_0_payload_B(7),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(8),
      Q => stream_in_V_data_V_0_payload_B(8),
      R => '0'
    );
\stream_in_V_data_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_data_V_0_load_B,
      D => stream_in_TDATA(9),
      Q => stream_in_V_data_V_0_payload_B(9),
      R => '0'
    );
stream_in_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      I3 => stream_in_V_data_V_0_sel,
      O => stream_in_V_data_V_0_sel_rd_i_1_n_0
    );
stream_in_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_V_data_V_0_sel_rd_i_1_n_0,
      Q => stream_in_V_data_V_0_sel,
      R => ap_rst_n_inv
    );
stream_in_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_in_V_data_V_0_ack_in,
      I1 => stream_in_TVALID,
      I2 => stream_in_V_data_V_0_sel_wr,
      O => stream_in_V_data_V_0_sel_wr_i_1_n_0
    );
stream_in_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_V_data_V_0_sel_wr_i_1_n_0,
      Q => stream_in_V_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\stream_in_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A820A8A0A8A0A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => stream_in_V_data_V_0_ack_in,
      I2 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => stream_in_TVALID,
      I4 => ap_CS_fsm_state3,
      I5 => stream_out_V_data_V_1_ack_in,
      O => \stream_in_V_data_V_0_state[0]_i_1_n_0\
    );
\stream_in_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F88FFFF"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => stream_out_V_data_V_1_ack_in,
      I2 => stream_in_TVALID,
      I3 => stream_in_V_data_V_0_ack_in,
      I4 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      O => \stream_in_V_data_V_0_state[1]_i_1_n_0\
    );
\stream_in_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_data_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_data_V_0_state[1]_i_1_n_0\,
      Q => stream_in_V_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\stream_in_V_last_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => stream_in_TLAST(0),
      I1 => \stream_in_V_last_V_0_state_reg_n_0_[0]\,
      I2 => stream_in_V_last_V_0_ack_in,
      I3 => stream_in_V_last_V_0_sel_wr,
      I4 => stream_in_V_last_V_0_payload_A,
      O => \stream_in_V_last_V_0_payload_A[0]_i_1_n_0\
    );
\stream_in_V_last_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_last_V_0_payload_A[0]_i_1_n_0\,
      Q => stream_in_V_last_V_0_payload_A,
      R => '0'
    );
\stream_in_V_last_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => stream_in_TLAST(0),
      I1 => stream_in_V_last_V_0_sel_wr,
      I2 => \stream_in_V_last_V_0_state_reg_n_0_[0]\,
      I3 => stream_in_V_last_V_0_ack_in,
      I4 => stream_in_V_last_V_0_payload_B,
      O => \stream_in_V_last_V_0_payload_B[0]_i_1_n_0\
    );
\stream_in_V_last_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_last_V_0_payload_B[0]_i_1_n_0\,
      Q => stream_in_V_last_V_0_payload_B,
      R => '0'
    );
stream_in_V_last_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      I3 => \stream_in_V_last_V_0_state_reg_n_0_[0]\,
      I4 => stream_in_V_last_V_0_sel,
      O => stream_in_V_last_V_0_sel_rd_i_1_n_0
    );
stream_in_V_last_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_V_last_V_0_sel_rd_i_1_n_0,
      Q => stream_in_V_last_V_0_sel,
      R => ap_rst_n_inv
    );
stream_in_V_last_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_in_TVALID,
      I1 => stream_in_V_last_V_0_ack_in,
      I2 => stream_in_V_last_V_0_sel_wr,
      O => stream_in_V_last_V_0_sel_wr_i_1_n_0
    );
stream_in_V_last_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_V_last_V_0_sel_wr_i_1_n_0,
      Q => stream_in_V_last_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\stream_in_V_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => stream_in_V_last_V_0_ack_in,
      I2 => \stream_in_V_last_V_0_state_reg_n_0_[0]\,
      I3 => stream_in_TVALID,
      I4 => p_82_in,
      O => \stream_in_V_last_V_0_state[0]_i_1_n_0\
    );
\stream_in_V_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3333333FBBBBBBB"
    )
        port map (
      I0 => stream_in_V_last_V_0_ack_in,
      I1 => \stream_in_V_last_V_0_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      I3 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I4 => ap_CS_fsm_state3,
      I5 => stream_in_TVALID,
      O => \stream_in_V_last_V_0_state[1]_i_1_n_0\
    );
\stream_in_V_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_last_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_V_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_V_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_last_V_0_state[1]_i_1_n_0\,
      Q => stream_in_V_last_V_0_ack_in,
      R => ap_rst_n_inv
    );
\stream_in_V_tkeep_V_0_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \stream_in_V_tkeep_V_0_state_reg_n_0_[0]\,
      I1 => \^stream_in_tready\,
      I2 => stream_in_V_tkeep_V_0_sel_wr,
      O => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\
    );
\stream_in_V_tkeep_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(0),
      Q => stream_in_V_tkeep_V_0_payload_A(0),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(1),
      Q => stream_in_V_tkeep_V_0_payload_A(1),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(2),
      Q => stream_in_V_tkeep_V_0_payload_A(2),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(3),
      Q => stream_in_V_tkeep_V_0_payload_A(3),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(4),
      Q => stream_in_V_tkeep_V_0_payload_A(4),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(5),
      Q => stream_in_V_tkeep_V_0_payload_A(5),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(6),
      Q => stream_in_V_tkeep_V_0_payload_A(6),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0\,
      D => stream_in_TKEEP(7),
      Q => stream_in_V_tkeep_V_0_payload_A(7),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_sel_wr,
      I1 => \stream_in_V_tkeep_V_0_state_reg_n_0_[0]\,
      I2 => \^stream_in_tready\,
      O => stream_in_V_tkeep_V_0_load_B
    );
\stream_in_V_tkeep_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(0),
      Q => stream_in_V_tkeep_V_0_payload_B(0),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(1),
      Q => stream_in_V_tkeep_V_0_payload_B(1),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(2),
      Q => stream_in_V_tkeep_V_0_payload_B(2),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(3),
      Q => stream_in_V_tkeep_V_0_payload_B(3),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(4),
      Q => stream_in_V_tkeep_V_0_payload_B(4),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(5),
      Q => stream_in_V_tkeep_V_0_payload_B(5),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(6),
      Q => stream_in_V_tkeep_V_0_payload_B(6),
      R => '0'
    );
\stream_in_V_tkeep_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_V_tkeep_V_0_load_B,
      D => stream_in_TKEEP(7),
      Q => stream_in_V_tkeep_V_0_payload_B(7),
      R => '0'
    );
stream_in_V_tkeep_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      I3 => \stream_in_V_tkeep_V_0_state_reg_n_0_[0]\,
      I4 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_sel_rd_i_1_n_0
    );
stream_in_V_tkeep_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_V_tkeep_V_0_sel_rd_i_1_n_0,
      Q => stream_in_V_tkeep_V_0_sel,
      R => ap_rst_n_inv
    );
stream_in_V_tkeep_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_in_TVALID,
      I1 => \^stream_in_tready\,
      I2 => stream_in_V_tkeep_V_0_sel_wr,
      O => stream_in_V_tkeep_V_0_sel_wr_i_1_n_0
    );
stream_in_V_tkeep_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_V_tkeep_V_0_sel_wr_i_1_n_0,
      Q => stream_in_V_tkeep_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\stream_in_V_tkeep_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^stream_in_tready\,
      I2 => \stream_in_V_tkeep_V_0_state_reg_n_0_[0]\,
      I3 => stream_in_TVALID,
      I4 => p_82_in,
      O => \stream_in_V_tkeep_V_0_state[0]_i_1_n_0\
    );
\stream_in_V_tkeep_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\stream_in_V_tkeep_V_0_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF8080FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      I3 => stream_in_TVALID,
      I4 => \^stream_in_tready\,
      I5 => \stream_in_V_tkeep_V_0_state_reg_n_0_[0]\,
      O => \stream_in_V_tkeep_V_0_state[1]_i_2_n_0\
    );
\stream_in_V_tkeep_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_tkeep_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_V_tkeep_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_V_tkeep_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_V_tkeep_V_0_state[1]_i_2_n_0\,
      Q => \^stream_in_tready\,
      R => ap_rst_n_inv
    );
\stream_out_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(0),
      I1 => stream_out_V_data_V_1_payload_A(0),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(0)
    );
\stream_out_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(10),
      I1 => stream_out_V_data_V_1_payload_A(10),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(10)
    );
\stream_out_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(11),
      I1 => stream_out_V_data_V_1_payload_A(11),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(11)
    );
\stream_out_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(12),
      I1 => stream_out_V_data_V_1_payload_A(12),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(12)
    );
\stream_out_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(13),
      I1 => stream_out_V_data_V_1_payload_A(13),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(13)
    );
\stream_out_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(14),
      I1 => stream_out_V_data_V_1_payload_A(14),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(14)
    );
\stream_out_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(15),
      I1 => stream_out_V_data_V_1_payload_A(15),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(15)
    );
\stream_out_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(16),
      I1 => stream_out_V_data_V_1_payload_A(16),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(16)
    );
\stream_out_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(17),
      I1 => stream_out_V_data_V_1_payload_A(17),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(17)
    );
\stream_out_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(18),
      I1 => stream_out_V_data_V_1_payload_A(18),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(18)
    );
\stream_out_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(19),
      I1 => stream_out_V_data_V_1_payload_A(19),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(19)
    );
\stream_out_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(1),
      I1 => stream_out_V_data_V_1_payload_A(1),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(1)
    );
\stream_out_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(20),
      I1 => stream_out_V_data_V_1_payload_A(20),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(20)
    );
\stream_out_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(21),
      I1 => stream_out_V_data_V_1_payload_A(21),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(21)
    );
\stream_out_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(22),
      I1 => stream_out_V_data_V_1_payload_A(22),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(22)
    );
\stream_out_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(23),
      I1 => stream_out_V_data_V_1_payload_A(23),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(23)
    );
\stream_out_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(24),
      I1 => stream_out_V_data_V_1_payload_A(24),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(24)
    );
\stream_out_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(25),
      I1 => stream_out_V_data_V_1_payload_A(25),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(25)
    );
\stream_out_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(26),
      I1 => stream_out_V_data_V_1_payload_A(26),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(26)
    );
\stream_out_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(27),
      I1 => stream_out_V_data_V_1_payload_A(27),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(27)
    );
\stream_out_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(28),
      I1 => stream_out_V_data_V_1_payload_A(28),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(28)
    );
\stream_out_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(29),
      I1 => stream_out_V_data_V_1_payload_A(29),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(29)
    );
\stream_out_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(2),
      I1 => stream_out_V_data_V_1_payload_A(2),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(2)
    );
\stream_out_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(30),
      I1 => stream_out_V_data_V_1_payload_A(30),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(30)
    );
\stream_out_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(31),
      I1 => stream_out_V_data_V_1_payload_A(31),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(31)
    );
\stream_out_TDATA[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(32),
      I1 => stream_out_V_data_V_1_payload_A(32),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(32)
    );
\stream_out_TDATA[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(33),
      I1 => stream_out_V_data_V_1_payload_A(33),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(33)
    );
\stream_out_TDATA[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(34),
      I1 => stream_out_V_data_V_1_payload_A(34),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(34)
    );
\stream_out_TDATA[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(35),
      I1 => stream_out_V_data_V_1_payload_A(35),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(35)
    );
\stream_out_TDATA[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(36),
      I1 => stream_out_V_data_V_1_payload_A(36),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(36)
    );
\stream_out_TDATA[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(37),
      I1 => stream_out_V_data_V_1_payload_A(37),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(37)
    );
\stream_out_TDATA[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(38),
      I1 => stream_out_V_data_V_1_payload_A(38),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(38)
    );
\stream_out_TDATA[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(39),
      I1 => stream_out_V_data_V_1_payload_A(39),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(39)
    );
\stream_out_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(3),
      I1 => stream_out_V_data_V_1_payload_A(3),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(3)
    );
\stream_out_TDATA[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(40),
      I1 => stream_out_V_data_V_1_payload_A(40),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(40)
    );
\stream_out_TDATA[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(41),
      I1 => stream_out_V_data_V_1_payload_A(41),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(41)
    );
\stream_out_TDATA[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(42),
      I1 => stream_out_V_data_V_1_payload_A(42),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(42)
    );
\stream_out_TDATA[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(43),
      I1 => stream_out_V_data_V_1_payload_A(43),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(43)
    );
\stream_out_TDATA[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(44),
      I1 => stream_out_V_data_V_1_payload_A(44),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(44)
    );
\stream_out_TDATA[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(45),
      I1 => stream_out_V_data_V_1_payload_A(45),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(45)
    );
\stream_out_TDATA[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(46),
      I1 => stream_out_V_data_V_1_payload_A(46),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(46)
    );
\stream_out_TDATA[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(47),
      I1 => stream_out_V_data_V_1_payload_A(47),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(47)
    );
\stream_out_TDATA[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(48),
      I1 => stream_out_V_data_V_1_payload_A(48),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(48)
    );
\stream_out_TDATA[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(49),
      I1 => stream_out_V_data_V_1_payload_A(49),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(49)
    );
\stream_out_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(4),
      I1 => stream_out_V_data_V_1_payload_A(4),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(4)
    );
\stream_out_TDATA[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(50),
      I1 => stream_out_V_data_V_1_payload_A(50),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(50)
    );
\stream_out_TDATA[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(51),
      I1 => stream_out_V_data_V_1_payload_A(51),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(51)
    );
\stream_out_TDATA[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(52),
      I1 => stream_out_V_data_V_1_payload_A(52),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(52)
    );
\stream_out_TDATA[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(53),
      I1 => stream_out_V_data_V_1_payload_A(53),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(53)
    );
\stream_out_TDATA[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(54),
      I1 => stream_out_V_data_V_1_payload_A(54),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(54)
    );
\stream_out_TDATA[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(55),
      I1 => stream_out_V_data_V_1_payload_A(55),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(55)
    );
\stream_out_TDATA[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(56),
      I1 => stream_out_V_data_V_1_payload_A(56),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(56)
    );
\stream_out_TDATA[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(57),
      I1 => stream_out_V_data_V_1_payload_A(57),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(57)
    );
\stream_out_TDATA[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(58),
      I1 => stream_out_V_data_V_1_payload_A(58),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(58)
    );
\stream_out_TDATA[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(59),
      I1 => stream_out_V_data_V_1_payload_A(59),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(59)
    );
\stream_out_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(5),
      I1 => stream_out_V_data_V_1_payload_A(5),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(5)
    );
\stream_out_TDATA[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(60),
      I1 => stream_out_V_data_V_1_payload_A(60),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(60)
    );
\stream_out_TDATA[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(61),
      I1 => stream_out_V_data_V_1_payload_A(61),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(61)
    );
\stream_out_TDATA[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(62),
      I1 => stream_out_V_data_V_1_payload_A(62),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(62)
    );
\stream_out_TDATA[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(63),
      I1 => stream_out_V_data_V_1_payload_A(63),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(63)
    );
\stream_out_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(6),
      I1 => stream_out_V_data_V_1_payload_A(6),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(6)
    );
\stream_out_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(7),
      I1 => stream_out_V_data_V_1_payload_A(7),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(7)
    );
\stream_out_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(8),
      I1 => stream_out_V_data_V_1_payload_A(8),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(8)
    );
\stream_out_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_data_V_1_payload_B(9),
      I1 => stream_out_V_data_V_1_payload_A(9),
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_TDATA(9)
    );
\stream_out_TKEEP[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(0),
      I1 => stream_out_V_tkeep_V_1_payload_A(0),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(0)
    );
\stream_out_TKEEP[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(1),
      I1 => stream_out_V_tkeep_V_1_payload_A(1),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(1)
    );
\stream_out_TKEEP[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(2),
      I1 => stream_out_V_tkeep_V_1_payload_A(2),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(2)
    );
\stream_out_TKEEP[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(3),
      I1 => stream_out_V_tkeep_V_1_payload_A(3),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(3)
    );
\stream_out_TKEEP[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(4),
      I1 => stream_out_V_tkeep_V_1_payload_A(4),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(4)
    );
\stream_out_TKEEP[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(5),
      I1 => stream_out_V_tkeep_V_1_payload_A(5),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(5)
    );
\stream_out_TKEEP[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(6),
      I1 => stream_out_V_tkeep_V_1_payload_A(6),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(6)
    );
\stream_out_TKEEP[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_payload_B(7),
      I1 => stream_out_V_tkeep_V_1_payload_A(7),
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_TKEEP(7)
    );
\stream_out_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_out_V_last_V_1_payload_B,
      I1 => stream_out_V_last_V_1_sel,
      I2 => stream_out_V_last_V_1_payload_A,
      O => stream_out_TLAST(0)
    );
\stream_out_V_data_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(56),
      I1 => stream_in_V_data_V_0_payload_A(56),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(0)
    );
\stream_out_V_data_V_1_payload_A[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(50),
      I1 => stream_in_V_data_V_0_payload_A(50),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(10)
    );
\stream_out_V_data_V_1_payload_A[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(51),
      I1 => stream_in_V_data_V_0_payload_A(51),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(11)
    );
\stream_out_V_data_V_1_payload_A[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(52),
      I1 => stream_in_V_data_V_0_payload_A(52),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(12)
    );
\stream_out_V_data_V_1_payload_A[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(53),
      I1 => stream_in_V_data_V_0_payload_A(53),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(13)
    );
\stream_out_V_data_V_1_payload_A[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(54),
      I1 => stream_in_V_data_V_0_payload_A(54),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(14)
    );
\stream_out_V_data_V_1_payload_A[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(55),
      I1 => stream_in_V_data_V_0_payload_A(55),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(15)
    );
\stream_out_V_data_V_1_payload_A[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(40),
      I1 => stream_in_V_data_V_0_payload_A(40),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(16)
    );
\stream_out_V_data_V_1_payload_A[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(41),
      I1 => stream_in_V_data_V_0_payload_A(41),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(17)
    );
\stream_out_V_data_V_1_payload_A[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(42),
      I1 => stream_in_V_data_V_0_payload_A(42),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(18)
    );
\stream_out_V_data_V_1_payload_A[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(43),
      I1 => stream_in_V_data_V_0_payload_A(43),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(19)
    );
\stream_out_V_data_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(57),
      I1 => stream_in_V_data_V_0_payload_A(57),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(1)
    );
\stream_out_V_data_V_1_payload_A[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(44),
      I1 => stream_in_V_data_V_0_payload_A(44),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(20)
    );
\stream_out_V_data_V_1_payload_A[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(45),
      I1 => stream_in_V_data_V_0_payload_A(45),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(21)
    );
\stream_out_V_data_V_1_payload_A[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(46),
      I1 => stream_in_V_data_V_0_payload_A(46),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(22)
    );
\stream_out_V_data_V_1_payload_A[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(47),
      I1 => stream_in_V_data_V_0_payload_A(47),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(23)
    );
\stream_out_V_data_V_1_payload_A[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(32),
      I1 => stream_in_V_data_V_0_payload_A(32),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(24)
    );
\stream_out_V_data_V_1_payload_A[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(33),
      I1 => stream_in_V_data_V_0_payload_A(33),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(25)
    );
\stream_out_V_data_V_1_payload_A[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(34),
      I1 => stream_in_V_data_V_0_payload_A(34),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(26)
    );
\stream_out_V_data_V_1_payload_A[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(35),
      I1 => stream_in_V_data_V_0_payload_A(35),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(27)
    );
\stream_out_V_data_V_1_payload_A[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(36),
      I1 => stream_in_V_data_V_0_payload_A(36),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(28)
    );
\stream_out_V_data_V_1_payload_A[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(37),
      I1 => stream_in_V_data_V_0_payload_A(37),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(29)
    );
\stream_out_V_data_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(58),
      I1 => stream_in_V_data_V_0_payload_A(58),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(2)
    );
\stream_out_V_data_V_1_payload_A[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(38),
      I1 => stream_in_V_data_V_0_payload_A(38),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(30)
    );
\stream_out_V_data_V_1_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(39),
      I1 => stream_in_V_data_V_0_payload_A(39),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(31)
    );
\stream_out_V_data_V_1_payload_A[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(24),
      I1 => stream_in_V_data_V_0_payload_A(24),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(32)
    );
\stream_out_V_data_V_1_payload_A[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(25),
      I1 => stream_in_V_data_V_0_payload_A(25),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(33)
    );
\stream_out_V_data_V_1_payload_A[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(26),
      I1 => stream_in_V_data_V_0_payload_A(26),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(34)
    );
\stream_out_V_data_V_1_payload_A[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(27),
      I1 => stream_in_V_data_V_0_payload_A(27),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(35)
    );
\stream_out_V_data_V_1_payload_A[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(28),
      I1 => stream_in_V_data_V_0_payload_A(28),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(36)
    );
\stream_out_V_data_V_1_payload_A[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(29),
      I1 => stream_in_V_data_V_0_payload_A(29),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(37)
    );
\stream_out_V_data_V_1_payload_A[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(30),
      I1 => stream_in_V_data_V_0_payload_A(30),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(38)
    );
\stream_out_V_data_V_1_payload_A[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(31),
      I1 => stream_in_V_data_V_0_payload_A(31),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(39)
    );
\stream_out_V_data_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(59),
      I1 => stream_in_V_data_V_0_payload_A(59),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(3)
    );
\stream_out_V_data_V_1_payload_A[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(16),
      I1 => stream_in_V_data_V_0_payload_A(16),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(40)
    );
\stream_out_V_data_V_1_payload_A[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(17),
      I1 => stream_in_V_data_V_0_payload_A(17),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(41)
    );
\stream_out_V_data_V_1_payload_A[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(18),
      I1 => stream_in_V_data_V_0_payload_A(18),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(42)
    );
\stream_out_V_data_V_1_payload_A[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(19),
      I1 => stream_in_V_data_V_0_payload_A(19),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(43)
    );
\stream_out_V_data_V_1_payload_A[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(20),
      I1 => stream_in_V_data_V_0_payload_A(20),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(44)
    );
\stream_out_V_data_V_1_payload_A[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(21),
      I1 => stream_in_V_data_V_0_payload_A(21),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(45)
    );
\stream_out_V_data_V_1_payload_A[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(22),
      I1 => stream_in_V_data_V_0_payload_A(22),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(46)
    );
\stream_out_V_data_V_1_payload_A[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(23),
      I1 => stream_in_V_data_V_0_payload_A(23),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(47)
    );
\stream_out_V_data_V_1_payload_A[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(8),
      I1 => stream_in_V_data_V_0_payload_A(8),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(48)
    );
\stream_out_V_data_V_1_payload_A[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(9),
      I1 => stream_in_V_data_V_0_payload_A(9),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(49)
    );
\stream_out_V_data_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(60),
      I1 => stream_in_V_data_V_0_payload_A(60),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(4)
    );
\stream_out_V_data_V_1_payload_A[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(10),
      I1 => stream_in_V_data_V_0_payload_A(10),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(50)
    );
\stream_out_V_data_V_1_payload_A[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(11),
      I1 => stream_in_V_data_V_0_payload_A(11),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(51)
    );
\stream_out_V_data_V_1_payload_A[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(12),
      I1 => stream_in_V_data_V_0_payload_A(12),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(52)
    );
\stream_out_V_data_V_1_payload_A[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(13),
      I1 => stream_in_V_data_V_0_payload_A(13),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(53)
    );
\stream_out_V_data_V_1_payload_A[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(14),
      I1 => stream_in_V_data_V_0_payload_A(14),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(54)
    );
\stream_out_V_data_V_1_payload_A[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(15),
      I1 => stream_in_V_data_V_0_payload_A(15),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(55)
    );
\stream_out_V_data_V_1_payload_A[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(0),
      I1 => stream_in_V_data_V_0_payload_A(0),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(56)
    );
\stream_out_V_data_V_1_payload_A[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(1),
      I1 => stream_in_V_data_V_0_payload_A(1),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(57)
    );
\stream_out_V_data_V_1_payload_A[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(2),
      I1 => stream_in_V_data_V_0_payload_A(2),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(58)
    );
\stream_out_V_data_V_1_payload_A[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(3),
      I1 => stream_in_V_data_V_0_payload_A(3),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(59)
    );
\stream_out_V_data_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(61),
      I1 => stream_in_V_data_V_0_payload_A(61),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(5)
    );
\stream_out_V_data_V_1_payload_A[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(4),
      I1 => stream_in_V_data_V_0_payload_A(4),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(60)
    );
\stream_out_V_data_V_1_payload_A[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(5),
      I1 => stream_in_V_data_V_0_payload_A(5),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(61)
    );
\stream_out_V_data_V_1_payload_A[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(6),
      I1 => stream_in_V_data_V_0_payload_A(6),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(62)
    );
\stream_out_V_data_V_1_payload_A[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \stream_out_V_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_V_data_V_1_ack_in,
      I2 => stream_out_V_data_V_1_sel_wr,
      O => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\
    );
\stream_out_V_data_V_1_payload_A[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(7),
      I1 => stream_in_V_data_V_0_payload_A(7),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(63)
    );
\stream_out_V_data_V_1_payload_A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(62),
      I1 => stream_in_V_data_V_0_payload_A(62),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(6)
    );
\stream_out_V_data_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(63),
      I1 => stream_in_V_data_V_0_payload_A(63),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(7)
    );
\stream_out_V_data_V_1_payload_A[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(48),
      I1 => stream_in_V_data_V_0_payload_A(48),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(8)
    );
\stream_out_V_data_V_1_payload_A[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_data_V_0_payload_B(49),
      I1 => stream_in_V_data_V_0_payload_A(49),
      I2 => stream_in_V_data_V_0_sel,
      O => x_V_fu_179_p9(9)
    );
\stream_out_V_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(0),
      Q => stream_out_V_data_V_1_payload_A(0),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(10),
      Q => stream_out_V_data_V_1_payload_A(10),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(11),
      Q => stream_out_V_data_V_1_payload_A(11),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(12),
      Q => stream_out_V_data_V_1_payload_A(12),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(13),
      Q => stream_out_V_data_V_1_payload_A(13),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(14),
      Q => stream_out_V_data_V_1_payload_A(14),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(15),
      Q => stream_out_V_data_V_1_payload_A(15),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(16),
      Q => stream_out_V_data_V_1_payload_A(16),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(17),
      Q => stream_out_V_data_V_1_payload_A(17),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(18),
      Q => stream_out_V_data_V_1_payload_A(18),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(19),
      Q => stream_out_V_data_V_1_payload_A(19),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(1),
      Q => stream_out_V_data_V_1_payload_A(1),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(20),
      Q => stream_out_V_data_V_1_payload_A(20),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(21),
      Q => stream_out_V_data_V_1_payload_A(21),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(22),
      Q => stream_out_V_data_V_1_payload_A(22),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(23),
      Q => stream_out_V_data_V_1_payload_A(23),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(24),
      Q => stream_out_V_data_V_1_payload_A(24),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(25),
      Q => stream_out_V_data_V_1_payload_A(25),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(26),
      Q => stream_out_V_data_V_1_payload_A(26),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(27),
      Q => stream_out_V_data_V_1_payload_A(27),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(28),
      Q => stream_out_V_data_V_1_payload_A(28),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(29),
      Q => stream_out_V_data_V_1_payload_A(29),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(2),
      Q => stream_out_V_data_V_1_payload_A(2),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(30),
      Q => stream_out_V_data_V_1_payload_A(30),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(31),
      Q => stream_out_V_data_V_1_payload_A(31),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(32),
      Q => stream_out_V_data_V_1_payload_A(32),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(33),
      Q => stream_out_V_data_V_1_payload_A(33),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(34),
      Q => stream_out_V_data_V_1_payload_A(34),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(35),
      Q => stream_out_V_data_V_1_payload_A(35),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(36),
      Q => stream_out_V_data_V_1_payload_A(36),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(37),
      Q => stream_out_V_data_V_1_payload_A(37),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(38),
      Q => stream_out_V_data_V_1_payload_A(38),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(39),
      Q => stream_out_V_data_V_1_payload_A(39),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(3),
      Q => stream_out_V_data_V_1_payload_A(3),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(40),
      Q => stream_out_V_data_V_1_payload_A(40),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(41),
      Q => stream_out_V_data_V_1_payload_A(41),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(42),
      Q => stream_out_V_data_V_1_payload_A(42),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(43),
      Q => stream_out_V_data_V_1_payload_A(43),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(44),
      Q => stream_out_V_data_V_1_payload_A(44),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(45),
      Q => stream_out_V_data_V_1_payload_A(45),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(46),
      Q => stream_out_V_data_V_1_payload_A(46),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(47),
      Q => stream_out_V_data_V_1_payload_A(47),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(48),
      Q => stream_out_V_data_V_1_payload_A(48),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(49),
      Q => stream_out_V_data_V_1_payload_A(49),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(4),
      Q => stream_out_V_data_V_1_payload_A(4),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(50),
      Q => stream_out_V_data_V_1_payload_A(50),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(51),
      Q => stream_out_V_data_V_1_payload_A(51),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(52),
      Q => stream_out_V_data_V_1_payload_A(52),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(53),
      Q => stream_out_V_data_V_1_payload_A(53),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(54),
      Q => stream_out_V_data_V_1_payload_A(54),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(55),
      Q => stream_out_V_data_V_1_payload_A(55),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(56),
      Q => stream_out_V_data_V_1_payload_A(56),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(57),
      Q => stream_out_V_data_V_1_payload_A(57),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(58),
      Q => stream_out_V_data_V_1_payload_A(58),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(59),
      Q => stream_out_V_data_V_1_payload_A(59),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(5),
      Q => stream_out_V_data_V_1_payload_A(5),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(60),
      Q => stream_out_V_data_V_1_payload_A(60),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(61),
      Q => stream_out_V_data_V_1_payload_A(61),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(62),
      Q => stream_out_V_data_V_1_payload_A(62),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(63),
      Q => stream_out_V_data_V_1_payload_A(63),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(6),
      Q => stream_out_V_data_V_1_payload_A(6),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(7),
      Q => stream_out_V_data_V_1_payload_A(7),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(8),
      Q => stream_out_V_data_V_1_payload_A(8),
      R => '0'
    );
\stream_out_V_data_V_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      D => x_V_fu_179_p9(9),
      Q => stream_out_V_data_V_1_payload_A(9),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => stream_out_V_data_V_1_sel_wr,
      I1 => \stream_out_V_data_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      O => stream_out_V_data_V_1_load_B
    );
\stream_out_V_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(0),
      Q => stream_out_V_data_V_1_payload_B(0),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(10),
      Q => stream_out_V_data_V_1_payload_B(10),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(11),
      Q => stream_out_V_data_V_1_payload_B(11),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(12),
      Q => stream_out_V_data_V_1_payload_B(12),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(13),
      Q => stream_out_V_data_V_1_payload_B(13),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(14),
      Q => stream_out_V_data_V_1_payload_B(14),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(15),
      Q => stream_out_V_data_V_1_payload_B(15),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(16),
      Q => stream_out_V_data_V_1_payload_B(16),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(17),
      Q => stream_out_V_data_V_1_payload_B(17),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(18),
      Q => stream_out_V_data_V_1_payload_B(18),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(19),
      Q => stream_out_V_data_V_1_payload_B(19),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(1),
      Q => stream_out_V_data_V_1_payload_B(1),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(20),
      Q => stream_out_V_data_V_1_payload_B(20),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(21),
      Q => stream_out_V_data_V_1_payload_B(21),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(22),
      Q => stream_out_V_data_V_1_payload_B(22),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(23),
      Q => stream_out_V_data_V_1_payload_B(23),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(24),
      Q => stream_out_V_data_V_1_payload_B(24),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(25),
      Q => stream_out_V_data_V_1_payload_B(25),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(26),
      Q => stream_out_V_data_V_1_payload_B(26),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(27),
      Q => stream_out_V_data_V_1_payload_B(27),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(28),
      Q => stream_out_V_data_V_1_payload_B(28),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(29),
      Q => stream_out_V_data_V_1_payload_B(29),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(2),
      Q => stream_out_V_data_V_1_payload_B(2),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(30),
      Q => stream_out_V_data_V_1_payload_B(30),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(31),
      Q => stream_out_V_data_V_1_payload_B(31),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(32),
      Q => stream_out_V_data_V_1_payload_B(32),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(33),
      Q => stream_out_V_data_V_1_payload_B(33),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(34),
      Q => stream_out_V_data_V_1_payload_B(34),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(35),
      Q => stream_out_V_data_V_1_payload_B(35),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(36),
      Q => stream_out_V_data_V_1_payload_B(36),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(37),
      Q => stream_out_V_data_V_1_payload_B(37),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(38),
      Q => stream_out_V_data_V_1_payload_B(38),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(39),
      Q => stream_out_V_data_V_1_payload_B(39),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(3),
      Q => stream_out_V_data_V_1_payload_B(3),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(40),
      Q => stream_out_V_data_V_1_payload_B(40),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(41),
      Q => stream_out_V_data_V_1_payload_B(41),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(42),
      Q => stream_out_V_data_V_1_payload_B(42),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(43),
      Q => stream_out_V_data_V_1_payload_B(43),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(44),
      Q => stream_out_V_data_V_1_payload_B(44),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(45),
      Q => stream_out_V_data_V_1_payload_B(45),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(46),
      Q => stream_out_V_data_V_1_payload_B(46),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(47),
      Q => stream_out_V_data_V_1_payload_B(47),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(48),
      Q => stream_out_V_data_V_1_payload_B(48),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(49),
      Q => stream_out_V_data_V_1_payload_B(49),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(4),
      Q => stream_out_V_data_V_1_payload_B(4),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(50),
      Q => stream_out_V_data_V_1_payload_B(50),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(51),
      Q => stream_out_V_data_V_1_payload_B(51),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(52),
      Q => stream_out_V_data_V_1_payload_B(52),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(53),
      Q => stream_out_V_data_V_1_payload_B(53),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(54),
      Q => stream_out_V_data_V_1_payload_B(54),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(55),
      Q => stream_out_V_data_V_1_payload_B(55),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(56),
      Q => stream_out_V_data_V_1_payload_B(56),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(57),
      Q => stream_out_V_data_V_1_payload_B(57),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(58),
      Q => stream_out_V_data_V_1_payload_B(58),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(59),
      Q => stream_out_V_data_V_1_payload_B(59),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(5),
      Q => stream_out_V_data_V_1_payload_B(5),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(60),
      Q => stream_out_V_data_V_1_payload_B(60),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(61),
      Q => stream_out_V_data_V_1_payload_B(61),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(62),
      Q => stream_out_V_data_V_1_payload_B(62),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(63),
      Q => stream_out_V_data_V_1_payload_B(63),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(6),
      Q => stream_out_V_data_V_1_payload_B(6),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(7),
      Q => stream_out_V_data_V_1_payload_B(7),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(8),
      Q => stream_out_V_data_V_1_payload_B(8),
      R => '0'
    );
\stream_out_V_data_V_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_data_V_1_load_B,
      D => x_V_fu_179_p9(9),
      Q => stream_out_V_data_V_1_payload_B(9),
      R => '0'
    );
stream_out_V_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_out_TREADY,
      I1 => \stream_out_V_data_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_sel,
      O => stream_out_V_data_V_1_sel_rd_i_1_n_0
    );
stream_out_V_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_V_data_V_1_sel_rd_i_1_n_0,
      Q => stream_out_V_data_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_V_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => stream_out_V_data_V_1_ack_in,
      I1 => ap_CS_fsm_state3,
      I2 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => stream_out_V_data_V_1_sel_wr,
      O => stream_out_V_data_V_1_sel_wr_i_1_n_0
    );
stream_out_V_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_V_data_V_1_sel_wr_i_1_n_0,
      Q => stream_out_V_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8088808880888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \stream_out_V_data_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      I3 => stream_out_TREADY,
      I4 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I5 => ap_CS_fsm_state3,
      O => \stream_out_V_data_V_1_state[0]_i_1_n_0\
    );
\stream_out_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFF0FF"
    )
        port map (
      I0 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I1 => ap_CS_fsm_state3,
      I2 => stream_out_TREADY,
      I3 => \stream_out_V_data_V_1_state_reg_n_0_[0]\,
      I4 => stream_out_V_data_V_1_ack_in,
      O => \stream_out_V_data_V_1_state[1]_i_1_n_0\
    );
\stream_out_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_data_V_1_state[0]_i_1_n_0\,
      Q => \stream_out_V_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_out_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_data_V_1_state[1]_i_1_n_0\,
      Q => stream_out_V_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\stream_out_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => stream_in_V_last_V_0_payload_B,
      I1 => stream_in_V_last_V_0_sel,
      I2 => stream_in_V_last_V_0_payload_A,
      I3 => stream_out_V_last_V_1_state_cmp_full,
      I4 => stream_out_V_last_V_1_sel_wr,
      I5 => stream_out_V_last_V_1_payload_A,
      O => \stream_out_V_last_V_1_payload_A[0]_i_1_n_0\
    );
\stream_out_V_last_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => stream_out_V_last_V_1_ack_in,
      I1 => \stream_out_V_last_V_1_state_reg_n_0_[0]\,
      O => stream_out_V_last_V_1_state_cmp_full
    );
\stream_out_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_last_V_1_payload_A[0]_i_1_n_0\,
      Q => stream_out_V_last_V_1_payload_A,
      R => '0'
    );
\stream_out_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => stream_in_V_last_V_0_payload_B,
      I1 => stream_in_V_last_V_0_sel,
      I2 => stream_in_V_last_V_0_payload_A,
      I3 => stream_out_V_last_V_1_sel_wr,
      I4 => stream_out_V_last_V_1_state_cmp_full,
      I5 => stream_out_V_last_V_1_payload_B,
      O => \stream_out_V_last_V_1_payload_B[0]_i_1_n_0\
    );
\stream_out_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_last_V_1_payload_B[0]_i_1_n_0\,
      Q => stream_out_V_last_V_1_payload_B,
      R => '0'
    );
stream_out_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_out_TREADY,
      I1 => \stream_out_V_last_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_V_last_V_1_sel,
      O => stream_out_V_last_V_1_sel_rd_i_1_n_0
    );
stream_out_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_V_last_V_1_sel_rd_i_1_n_0,
      Q => stream_out_V_last_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => stream_out_V_last_V_1_ack_in,
      I1 => ap_CS_fsm_state3,
      I2 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => stream_out_V_data_V_1_ack_in,
      I4 => stream_out_V_last_V_1_sel_wr,
      O => stream_out_V_last_V_1_sel_wr_i_1_n_0
    );
stream_out_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_V_last_V_1_sel_wr_i_1_n_0,
      Q => stream_out_V_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \stream_out_V_last_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_V_last_V_1_ack_in,
      I3 => stream_out_TREADY,
      I4 => p_82_in,
      O => \stream_out_V_last_V_1_state[0]_i_1_n_0\
    );
\stream_out_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => stream_out_V_data_V_1_ack_in,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state3,
      I3 => stream_out_TREADY,
      I4 => \stream_out_V_last_V_1_state_reg_n_0_[0]\,
      I5 => stream_out_V_last_V_1_ack_in,
      O => \stream_out_V_last_V_1_state[1]_i_1_n_0\
    );
\stream_out_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_last_V_1_state[0]_i_1_n_0\,
      Q => \stream_out_V_last_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_out_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_last_V_1_state[1]_i_1_n_0\,
      Q => stream_out_V_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\stream_out_V_tkeep_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(0),
      I1 => stream_in_V_tkeep_V_0_payload_A(0),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(0)
    );
\stream_out_V_tkeep_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(1),
      I1 => stream_in_V_tkeep_V_0_payload_A(1),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(1)
    );
\stream_out_V_tkeep_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(2),
      I1 => stream_in_V_tkeep_V_0_payload_A(2),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(2)
    );
\stream_out_V_tkeep_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(3),
      I1 => stream_in_V_tkeep_V_0_payload_A(3),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(3)
    );
\stream_out_V_tkeep_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(4),
      I1 => stream_in_V_tkeep_V_0_payload_A(4),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(4)
    );
\stream_out_V_tkeep_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(5),
      I1 => stream_in_V_tkeep_V_0_payload_A(5),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(5)
    );
\stream_out_V_tkeep_V_1_payload_A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(6),
      I1 => stream_in_V_tkeep_V_0_payload_A(6),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(6)
    );
\stream_out_V_tkeep_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^stream_out_tvalid\,
      I1 => stream_out_V_tkeep_V_1_ack_in,
      I2 => stream_out_V_tkeep_V_1_sel_wr,
      O => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\
    );
\stream_out_V_tkeep_V_1_payload_A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_in_V_tkeep_V_0_payload_B(7),
      I1 => stream_in_V_tkeep_V_0_payload_A(7),
      I2 => stream_in_V_tkeep_V_0_sel,
      O => stream_in_V_tkeep_V_0_data_out(7)
    );
\stream_out_V_tkeep_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(0),
      Q => stream_out_V_tkeep_V_1_payload_A(0),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(1),
      Q => stream_out_V_tkeep_V_1_payload_A(1),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(2),
      Q => stream_out_V_tkeep_V_1_payload_A(2),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(3),
      Q => stream_out_V_tkeep_V_1_payload_A(3),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(4),
      Q => stream_out_V_tkeep_V_1_payload_A(4),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(5),
      Q => stream_out_V_tkeep_V_1_payload_A(5),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(6),
      Q => stream_out_V_tkeep_V_1_payload_A(6),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0\,
      D => stream_in_V_tkeep_V_0_data_out(7),
      Q => stream_out_V_tkeep_V_1_payload_A(7),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_sel_wr,
      I1 => \^stream_out_tvalid\,
      I2 => stream_out_V_tkeep_V_1_ack_in,
      O => stream_out_V_tkeep_V_1_load_B
    );
\stream_out_V_tkeep_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(0),
      Q => stream_out_V_tkeep_V_1_payload_B(0),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(1),
      Q => stream_out_V_tkeep_V_1_payload_B(1),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(2),
      Q => stream_out_V_tkeep_V_1_payload_B(2),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(3),
      Q => stream_out_V_tkeep_V_1_payload_B(3),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(4),
      Q => stream_out_V_tkeep_V_1_payload_B(4),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(5),
      Q => stream_out_V_tkeep_V_1_payload_B(5),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(6),
      Q => stream_out_V_tkeep_V_1_payload_B(6),
      R => '0'
    );
\stream_out_V_tkeep_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_V_tkeep_V_1_load_B,
      D => stream_in_V_tkeep_V_0_data_out(7),
      Q => stream_out_V_tkeep_V_1_payload_B(7),
      R => '0'
    );
stream_out_V_tkeep_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^stream_out_tvalid\,
      I1 => stream_out_TREADY,
      I2 => stream_out_V_tkeep_V_1_sel,
      O => stream_out_V_tkeep_V_1_sel_rd_i_1_n_0
    );
stream_out_V_tkeep_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_V_tkeep_V_1_sel_rd_i_1_n_0,
      Q => stream_out_V_tkeep_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_V_tkeep_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => stream_out_V_tkeep_V_1_ack_in,
      I1 => ap_CS_fsm_state3,
      I2 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => stream_out_V_data_V_1_ack_in,
      I4 => stream_out_V_tkeep_V_1_sel_wr,
      O => stream_out_V_tkeep_V_1_sel_wr_i_1_n_0
    );
stream_out_V_tkeep_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_V_tkeep_V_1_sel_wr_i_1_n_0,
      Q => stream_out_V_tkeep_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_V_tkeep_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^stream_out_tvalid\,
      I2 => stream_out_V_tkeep_V_1_ack_in,
      I3 => stream_out_TREADY,
      I4 => p_82_in,
      O => \stream_out_V_tkeep_V_1_state[0]_i_1_n_0\
    );
\stream_out_V_tkeep_V_1_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => stream_out_V_data_V_1_ack_in,
      O => p_82_in
    );
\stream_out_V_tkeep_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => stream_out_V_data_V_1_ack_in,
      I1 => \stream_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state3,
      I3 => stream_out_TREADY,
      I4 => \^stream_out_tvalid\,
      I5 => stream_out_V_tkeep_V_1_ack_in,
      O => \stream_out_V_tkeep_V_1_state[1]_i_1_n_0\
    );
\stream_out_V_tkeep_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_tkeep_V_1_state[0]_i_1_n_0\,
      Q => \^stream_out_tvalid\,
      R => '0'
    );
\stream_out_V_tkeep_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_V_tkeep_V_1_state[1]_i_1_n_0\,
      Q => stream_out_V_tkeep_V_1_ack_in,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_reverseEndian64_0_0,reverseEndian64,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "reverseEndian64,Vivado 2018.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "4'b1000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_in:stream_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of stream_in_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_in TREADY";
  attribute X_INTERFACE_INFO of stream_in_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_in TVALID";
  attribute X_INTERFACE_INFO of stream_out_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_out TREADY";
  attribute X_INTERFACE_INFO of stream_out_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_out TVALID";
  attribute X_INTERFACE_INFO of stream_in_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_in TDATA";
  attribute X_INTERFACE_INFO of stream_in_TKEEP : signal is "xilinx.com:interface:axis:1.0 stream_in TKEEP";
  attribute X_INTERFACE_INFO of stream_in_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_in TLAST";
  attribute X_INTERFACE_PARAMETER of stream_in_TLAST : signal is "XIL_INTERFACENAME stream_in, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out";
  attribute X_INTERFACE_INFO of stream_out_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_out TDATA";
  attribute X_INTERFACE_INFO of stream_out_TKEEP : signal is "xilinx.com:interface:axis:1.0 stream_out TKEEP";
  attribute X_INTERFACE_INFO of stream_out_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_out TLAST";
  attribute X_INTERFACE_PARAMETER of stream_out_TLAST : signal is "XIL_INTERFACENAME stream_out, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reverseEndian64
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      stream_in_TDATA(63 downto 0) => stream_in_TDATA(63 downto 0),
      stream_in_TKEEP(7 downto 0) => stream_in_TKEEP(7 downto 0),
      stream_in_TLAST(0) => stream_in_TLAST(0),
      stream_in_TREADY => stream_in_TREADY,
      stream_in_TVALID => stream_in_TVALID,
      stream_out_TDATA(63 downto 0) => stream_out_TDATA(63 downto 0),
      stream_out_TKEEP(7 downto 0) => stream_out_TKEEP(7 downto 0),
      stream_out_TLAST(0) => stream_out_TLAST(0),
      stream_out_TREADY => stream_out_TREADY,
      stream_out_TVALID => stream_out_TVALID
    );
end STRUCTURE;
