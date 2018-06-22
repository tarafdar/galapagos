-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 23 14:58:37 2018
-- Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madanie1/Documents/2017.4/8v3/repo/hls/tcp_test/tcp_ip/scripts/build/proj2017/tcp_ip.srcs/sources_1/ip/echo_server_application_ip/echo_server_application_ip_sim_netlist.vhdl
-- Design      : echo_server_application_ip
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1157-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application is
  port (
    tmp_reg_435 : out STD_LOGIC;
    sig_echo_server_application_listenPortStatus_V_read : out STD_LOGIC;
    \ea_fsmState_V_load_reg_473_reg[0]_0\ : out STD_LOGIC;
    \waitPortStatus_reg[0]_0\ : out STD_LOGIC;
    tmp_9_reg_464 : out STD_LOGIC;
    p_12_out : out STD_LOGIC;
    p_12_out_0 : out STD_LOGIC;
    load_p2 : out STD_LOGIC;
    load_p2_1 : out STD_LOGIC;
    p_12_out_2 : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \tmp_4_reg_477_reg[0]_0\ : out STD_LOGIC;
    ea_fsmState_V4_out : out STD_LOGIC;
    \index_reg[3]\ : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    \data_p2_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_p2_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_p2_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_p2_reg[72]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[16]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sig_echo_server_application_listenPortStatus_V_dout : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_1\ : in STD_LOGIC;
    \data_p1_reg[72]\ : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_reg : in STD_LOGIC;
    empty_reg_0 : in STD_LOGIC;
    empty_reg_1 : in STD_LOGIC;
    full_reg : in STD_LOGIC;
    full_reg_0 : in STD_LOGIC;
    sig_echo_server_application_txData_V_full_n : in STD_LOGIC;
    sig_echo_server_application_readRequest_V_full_n : in STD_LOGIC;
    full_reg_1 : in STD_LOGIC;
    sig_echo_server_application_openConnection_V_full_n : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_p1_reg[72]_0\ : in STD_LOGIC_VECTOR ( 72 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application : entity is "echo_server_application";
end echo_server_application_ip_echo_server_application;

architecture STRUCTURE of echo_server_application_ip_echo_server_application is
  signal ap_ready_INST_0_i_1_n_0 : STD_LOGIC;
  signal ap_ready_INST_0_i_2_n_0 : STD_LOGIC;
  signal ap_ready_INST_0_i_3_n_0 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it1 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it11 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it1_i_1_n_0 : STD_LOGIC;
  signal brmerge_fu_367_p2 : STD_LOGIC;
  signal brmerge_reg_452 : STD_LOGIC;
  signal \^ea_fsmstate_v_load_reg_473_reg[0]_0\ : STD_LOGIC;
  signal \ea_fsmState_V_load_reg_473_reg_n_0_[0]\ : STD_LOGIC;
  signal \index[3]_i_4_n_0\ : STD_LOGIC;
  signal listenDone : STD_LOGIC;
  signal \listenDone[0]_i_2_n_0\ : STD_LOGIC;
  signal s_ready_t_i_3_n_0 : STD_LOGIC;
  signal \^sig_echo_server_application_listenportstatus_v_read\ : STD_LOGIC;
  signal tmp_3_reg_460 : STD_LOGIC;
  signal tmp_432_reg_4900 : STD_LOGIC;
  signal tmp_4_reg_477 : STD_LOGIC;
  signal \tmp_4_reg_477[0]_i_1_n_0\ : STD_LOGIC;
  signal \^tmp_4_reg_477_reg[0]_0\ : STD_LOGIC;
  signal tmp_5_reg_486 : STD_LOGIC;
  signal \tmp_5_reg_486[0]_i_1_n_0\ : STD_LOGIC;
  signal tmp_7_reg_444 : STD_LOGIC;
  signal \^tmp_9_reg_464\ : STD_LOGIC;
  signal tmp_V_2_reg_4810 : STD_LOGIC;
  signal \^tmp_reg_435\ : STD_LOGIC;
  signal \waitPortStatus[0]_i_1_n_0\ : STD_LOGIC;
  signal \^waitportstatus_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_done_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ap_reg_ppiten_pp0_it1_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_sr[15].mem_reg[15][0]_srl16_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \index[3]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \listenDone[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_ready_t_i_2__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_ready_t_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmp_4_reg_477[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tmp_5_reg_486[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \waitPortStatus[0]_i_1\ : label is "soft_lutpair0";
begin
  \ea_fsmState_V_load_reg_473_reg[0]_0\ <= \^ea_fsmstate_v_load_reg_473_reg[0]_0\;
  sig_echo_server_application_listenPortStatus_V_read <= \^sig_echo_server_application_listenportstatus_v_read\;
  \tmp_4_reg_477_reg[0]_0\ <= \^tmp_4_reg_477_reg[0]_0\;
  tmp_9_reg_464 <= \^tmp_9_reg_464\;
  tmp_reg_435 <= \^tmp_reg_435\;
  \waitPortStatus_reg[0]_0\ <= \^waitportstatus_reg[0]_0\;
ap_done_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it1,
      I1 => ap_ready_INST_0_i_3_n_0,
      I2 => ap_ready_INST_0_i_2_n_0,
      I3 => ap_ready_INST_0_i_1_n_0,
      O => ap_done
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_start,
      I1 => ap_reg_ppiten_pp0_it1,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => ap_start,
      I1 => ap_ready_INST_0_i_1_n_0,
      I2 => ap_ready_INST_0_i_2_n_0,
      I3 => ap_ready_INST_0_i_3_n_0,
      I4 => ap_reg_ppiten_pp0_it1,
      O => ap_ready
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F55"
    )
        port map (
      I0 => \^tmp_reg_435\,
      I1 => tmp_7_reg_444,
      I2 => full_reg_1,
      I3 => sig_echo_server_application_openConnection_V_full_n,
      O => ap_ready_INST_0_i_1_n_0
    );
ap_ready_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => \ea_fsmState_V_load_reg_473_reg_n_0_[0]\,
      I1 => full_reg,
      I2 => tmp_4_reg_477,
      I3 => brmerge_reg_452,
      I4 => full_reg_0,
      O => ap_ready_INST_0_i_2_n_0
    );
ap_ready_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808FF0808"
    )
        port map (
      I0 => \ea_fsmState_V_load_reg_473_reg_n_0_[0]\,
      I1 => tmp_5_reg_486,
      I2 => sig_echo_server_application_txData_V_full_n,
      I3 => sig_echo_server_application_readRequest_V_full_n,
      I4 => tmp_3_reg_460,
      I5 => \^tmp_9_reg_464\,
      O => ap_ready_INST_0_i_3_n_0
    );
ap_reg_ppiten_pp0_it1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ap_start,
      I1 => \^tmp_4_reg_477_reg[0]_0\,
      I2 => ap_reg_ppiten_pp0_it1,
      O => ap_reg_ppiten_pp0_it1_i_1_n_0
    );
ap_reg_ppiten_pp0_it1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ap_reg_ppiten_pp0_it1_i_1_n_0,
      Q => ap_reg_ppiten_pp0_it1,
      R => AS(0)
    );
\brmerge_reg_452[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^waitportstatus_reg[0]_0\,
      I1 => listenDone,
      O => brmerge_fu_367_p2
    );
\brmerge_reg_452_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ap_reg_ppiten_pp0_it11,
      D => brmerge_fu_367_p2,
      Q => brmerge_reg_452,
      R => '0'
    );
\data_p2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^tmp_9_reg_464\,
      I1 => tmp_3_reg_460,
      I2 => ap_ready_INST_0_i_1_n_0,
      I3 => ap_ready_INST_0_i_2_n_0,
      I4 => ap_ready_INST_0_i_3_n_0,
      I5 => ap_reg_ppiten_pp0_it1,
      O => load_p2
    );
\data_p2[72]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => tmp_5_reg_486,
      I1 => \ea_fsmState_V_load_reg_473_reg_n_0_[0]\,
      I2 => ap_ready_INST_0_i_1_n_0,
      I3 => ap_ready_INST_0_i_2_n_0,
      I4 => ap_ready_INST_0_i_3_n_0,
      I5 => ap_reg_ppiten_pp0_it1,
      O => load_p2_1
    );
\ea_fsmState_V_load_reg_473_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ap_reg_ppiten_pp0_it11,
      D => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      Q => \ea_fsmState_V_load_reg_473_reg_n_0_[0]\,
      R => '0'
    );
\ea_fsmState_V_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \data_p1_reg[72]\,
      Q => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      R => '0'
    );
\gen_sr[15].mem_reg[15][0]_srl16_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => tmp_7_reg_444,
      I1 => \^tmp_reg_435\,
      I2 => ap_reg_ppiten_pp0_it1,
      I3 => ap_ready_INST_0_i_3_n_0,
      I4 => ap_ready_INST_0_i_2_n_0,
      I5 => ap_ready_INST_0_i_1_n_0,
      O => p_12_out
    );
\gen_sr[15].mem_reg[15][0]_srl16_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => ap_ready_INST_0_i_2_n_0,
      I2 => ap_ready_INST_0_i_3_n_0,
      I3 => ap_reg_ppiten_pp0_it1,
      I4 => brmerge_reg_452,
      O => p_12_out_0
    );
\gen_sr[15].mem_reg[15][0]_srl16_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \ea_fsmState_V_load_reg_473_reg_n_0_[0]\,
      I1 => tmp_4_reg_477,
      I2 => ap_ready_INST_0_i_1_n_0,
      I3 => ap_ready_INST_0_i_2_n_0,
      I4 => ap_ready_INST_0_i_3_n_0,
      I5 => ap_reg_ppiten_pp0_it1,
      O => p_12_out_2
    );
\index[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A222200000000"
    )
        port map (
      I0 => \index[3]_i_4_n_0\,
      I1 => ap_reg_ppiten_pp0_it1,
      I2 => ap_ready_INST_0_i_3_n_0,
      I3 => ap_ready_INST_0_i_2_n_0,
      I4 => ap_ready_INST_0_i_1_n_0,
      I5 => ap_start,
      O => ea_fsmState_V4_out
    );
\index[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEEEEFFFFFFFF"
    )
        port map (
      I0 => empty_reg_1,
      I1 => ap_reg_ppiten_pp0_it1,
      I2 => ap_ready_INST_0_i_3_n_0,
      I3 => ap_ready_INST_0_i_2_n_0,
      I4 => ap_ready_INST_0_i_1_n_0,
      I5 => ap_start,
      O => \index_reg[3]\
    );
\index[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      I1 => empty_reg,
      O => \index[3]_i_4_n_0\
    );
\listenDone[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A222200000000"
    )
        port map (
      I0 => \listenDone[0]_i_2_n_0\,
      I1 => ap_reg_ppiten_pp0_it1,
      I2 => ap_ready_INST_0_i_3_n_0,
      I3 => ap_ready_INST_0_i_2_n_0,
      I4 => ap_ready_INST_0_i_1_n_0,
      I5 => ap_start,
      O => \^sig_echo_server_application_listenportstatus_v_read\
    );
\listenDone[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^waitportstatus_reg[0]_0\,
      I1 => empty_reg_0,
      O => \listenDone[0]_i_2_n_0\
    );
\listenDone_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^sig_echo_server_application_listenportstatus_v_read\,
      D => sig_echo_server_application_listenPortStatus_V_dout,
      Q => listenDone,
      R => '0'
    );
s_ready_t_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222A2222"
    )
        port map (
      I0 => ap_start,
      I1 => ap_reg_ppiten_pp0_it1,
      I2 => ap_ready_INST_0_i_3_n_0,
      I3 => ap_ready_INST_0_i_2_n_0,
      I4 => ap_ready_INST_0_i_1_n_0,
      I5 => s_ready_t_i_3_n_0,
      O => \state_reg[0]\
    );
\s_ready_t_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it1,
      I1 => ap_ready_INST_0_i_3_n_0,
      I2 => ap_ready_INST_0_i_2_n_0,
      I3 => ap_ready_INST_0_i_1_n_0,
      O => \^tmp_4_reg_477_reg[0]_0\
    );
s_ready_t_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      I1 => \state_reg[0]_2\(0),
      O => s_ready_t_i_3_n_0
    );
\tmp_327_reg_468_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(0),
      Q => \data_p2_reg[31]\(0),
      R => '0'
    );
\tmp_327_reg_468_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(10),
      Q => \data_p2_reg[31]\(10),
      R => '0'
    );
\tmp_327_reg_468_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(11),
      Q => \data_p2_reg[31]\(11),
      R => '0'
    );
\tmp_327_reg_468_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(12),
      Q => \data_p2_reg[31]\(12),
      R => '0'
    );
\tmp_327_reg_468_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(13),
      Q => \data_p2_reg[31]\(13),
      R => '0'
    );
\tmp_327_reg_468_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(14),
      Q => \data_p2_reg[31]\(14),
      R => '0'
    );
\tmp_327_reg_468_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(15),
      Q => \data_p2_reg[31]\(15),
      R => '0'
    );
\tmp_327_reg_468_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(16),
      Q => \data_p2_reg[31]\(16),
      R => '0'
    );
\tmp_327_reg_468_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(17),
      Q => \data_p2_reg[31]\(17),
      R => '0'
    );
\tmp_327_reg_468_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(18),
      Q => \data_p2_reg[31]\(18),
      R => '0'
    );
\tmp_327_reg_468_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(19),
      Q => \data_p2_reg[31]\(19),
      R => '0'
    );
\tmp_327_reg_468_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(1),
      Q => \data_p2_reg[31]\(1),
      R => '0'
    );
\tmp_327_reg_468_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(20),
      Q => \data_p2_reg[31]\(20),
      R => '0'
    );
\tmp_327_reg_468_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(21),
      Q => \data_p2_reg[31]\(21),
      R => '0'
    );
\tmp_327_reg_468_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(22),
      Q => \data_p2_reg[31]\(22),
      R => '0'
    );
\tmp_327_reg_468_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(23),
      Q => \data_p2_reg[31]\(23),
      R => '0'
    );
\tmp_327_reg_468_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(24),
      Q => \data_p2_reg[31]\(24),
      R => '0'
    );
\tmp_327_reg_468_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(25),
      Q => \data_p2_reg[31]\(25),
      R => '0'
    );
\tmp_327_reg_468_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(26),
      Q => \data_p2_reg[31]\(26),
      R => '0'
    );
\tmp_327_reg_468_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(27),
      Q => \data_p2_reg[31]\(27),
      R => '0'
    );
\tmp_327_reg_468_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(28),
      Q => \data_p2_reg[31]\(28),
      R => '0'
    );
\tmp_327_reg_468_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(29),
      Q => \data_p2_reg[31]\(29),
      R => '0'
    );
\tmp_327_reg_468_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(2),
      Q => \data_p2_reg[31]\(2),
      R => '0'
    );
\tmp_327_reg_468_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(30),
      Q => \data_p2_reg[31]\(30),
      R => '0'
    );
\tmp_327_reg_468_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(31),
      Q => \data_p2_reg[31]\(31),
      R => '0'
    );
\tmp_327_reg_468_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(3),
      Q => \data_p2_reg[31]\(3),
      R => '0'
    );
\tmp_327_reg_468_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(4),
      Q => \data_p2_reg[31]\(4),
      R => '0'
    );
\tmp_327_reg_468_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(5),
      Q => \data_p2_reg[31]\(5),
      R => '0'
    );
\tmp_327_reg_468_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(6),
      Q => \data_p2_reg[31]\(6),
      R => '0'
    );
\tmp_327_reg_468_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(7),
      Q => \data_p2_reg[31]\(7),
      R => '0'
    );
\tmp_327_reg_468_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(8),
      Q => \data_p2_reg[31]\(8),
      R => '0'
    );
\tmp_327_reg_468_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[0]_3\(0),
      D => \data_p1_reg[31]\(9),
      Q => \data_p2_reg[31]\(9),
      R => '0'
    );
\tmp_3_reg_460_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ap_reg_ppiten_pp0_it11,
      D => \state_reg[0]_0\(0),
      Q => tmp_3_reg_460,
      R => '0'
    );
\tmp_432_reg_490[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^tmp_4_reg_477_reg[0]_0\,
      I1 => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      I2 => \state_reg[0]_2\(0),
      O => tmp_432_reg_4900
    );
\tmp_432_reg_490_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(0),
      Q => \data_p2_reg[72]\(0),
      R => '0'
    );
\tmp_432_reg_490_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(10),
      Q => \data_p2_reg[72]\(10),
      R => '0'
    );
\tmp_432_reg_490_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(11),
      Q => \data_p2_reg[72]\(11),
      R => '0'
    );
\tmp_432_reg_490_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(12),
      Q => \data_p2_reg[72]\(12),
      R => '0'
    );
\tmp_432_reg_490_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(13),
      Q => \data_p2_reg[72]\(13),
      R => '0'
    );
\tmp_432_reg_490_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(14),
      Q => \data_p2_reg[72]\(14),
      R => '0'
    );
\tmp_432_reg_490_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(15),
      Q => \data_p2_reg[72]\(15),
      R => '0'
    );
\tmp_432_reg_490_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(16),
      Q => \data_p2_reg[72]\(16),
      R => '0'
    );
\tmp_432_reg_490_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(17),
      Q => \data_p2_reg[72]\(17),
      R => '0'
    );
\tmp_432_reg_490_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(18),
      Q => \data_p2_reg[72]\(18),
      R => '0'
    );
\tmp_432_reg_490_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(19),
      Q => \data_p2_reg[72]\(19),
      R => '0'
    );
\tmp_432_reg_490_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(1),
      Q => \data_p2_reg[72]\(1),
      R => '0'
    );
\tmp_432_reg_490_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(20),
      Q => \data_p2_reg[72]\(20),
      R => '0'
    );
\tmp_432_reg_490_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(21),
      Q => \data_p2_reg[72]\(21),
      R => '0'
    );
\tmp_432_reg_490_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(22),
      Q => \data_p2_reg[72]\(22),
      R => '0'
    );
\tmp_432_reg_490_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(23),
      Q => \data_p2_reg[72]\(23),
      R => '0'
    );
\tmp_432_reg_490_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(24),
      Q => \data_p2_reg[72]\(24),
      R => '0'
    );
\tmp_432_reg_490_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(25),
      Q => \data_p2_reg[72]\(25),
      R => '0'
    );
\tmp_432_reg_490_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(26),
      Q => \data_p2_reg[72]\(26),
      R => '0'
    );
\tmp_432_reg_490_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(27),
      Q => \data_p2_reg[72]\(27),
      R => '0'
    );
\tmp_432_reg_490_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(28),
      Q => \data_p2_reg[72]\(28),
      R => '0'
    );
\tmp_432_reg_490_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(29),
      Q => \data_p2_reg[72]\(29),
      R => '0'
    );
\tmp_432_reg_490_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(2),
      Q => \data_p2_reg[72]\(2),
      R => '0'
    );
\tmp_432_reg_490_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(30),
      Q => \data_p2_reg[72]\(30),
      R => '0'
    );
\tmp_432_reg_490_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(31),
      Q => \data_p2_reg[72]\(31),
      R => '0'
    );
\tmp_432_reg_490_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(32),
      Q => \data_p2_reg[72]\(32),
      R => '0'
    );
\tmp_432_reg_490_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(33),
      Q => \data_p2_reg[72]\(33),
      R => '0'
    );
\tmp_432_reg_490_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(34),
      Q => \data_p2_reg[72]\(34),
      R => '0'
    );
\tmp_432_reg_490_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(35),
      Q => \data_p2_reg[72]\(35),
      R => '0'
    );
\tmp_432_reg_490_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(36),
      Q => \data_p2_reg[72]\(36),
      R => '0'
    );
\tmp_432_reg_490_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(37),
      Q => \data_p2_reg[72]\(37),
      R => '0'
    );
\tmp_432_reg_490_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(38),
      Q => \data_p2_reg[72]\(38),
      R => '0'
    );
\tmp_432_reg_490_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(39),
      Q => \data_p2_reg[72]\(39),
      R => '0'
    );
\tmp_432_reg_490_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(3),
      Q => \data_p2_reg[72]\(3),
      R => '0'
    );
\tmp_432_reg_490_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(40),
      Q => \data_p2_reg[72]\(40),
      R => '0'
    );
\tmp_432_reg_490_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(41),
      Q => \data_p2_reg[72]\(41),
      R => '0'
    );
\tmp_432_reg_490_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(42),
      Q => \data_p2_reg[72]\(42),
      R => '0'
    );
\tmp_432_reg_490_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(43),
      Q => \data_p2_reg[72]\(43),
      R => '0'
    );
\tmp_432_reg_490_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(44),
      Q => \data_p2_reg[72]\(44),
      R => '0'
    );
\tmp_432_reg_490_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(45),
      Q => \data_p2_reg[72]\(45),
      R => '0'
    );
\tmp_432_reg_490_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(46),
      Q => \data_p2_reg[72]\(46),
      R => '0'
    );
\tmp_432_reg_490_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(47),
      Q => \data_p2_reg[72]\(47),
      R => '0'
    );
\tmp_432_reg_490_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(48),
      Q => \data_p2_reg[72]\(48),
      R => '0'
    );
\tmp_432_reg_490_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(49),
      Q => \data_p2_reg[72]\(49),
      R => '0'
    );
\tmp_432_reg_490_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(4),
      Q => \data_p2_reg[72]\(4),
      R => '0'
    );
\tmp_432_reg_490_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(50),
      Q => \data_p2_reg[72]\(50),
      R => '0'
    );
\tmp_432_reg_490_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(51),
      Q => \data_p2_reg[72]\(51),
      R => '0'
    );
\tmp_432_reg_490_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(52),
      Q => \data_p2_reg[72]\(52),
      R => '0'
    );
\tmp_432_reg_490_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(53),
      Q => \data_p2_reg[72]\(53),
      R => '0'
    );
\tmp_432_reg_490_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(54),
      Q => \data_p2_reg[72]\(54),
      R => '0'
    );
\tmp_432_reg_490_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(55),
      Q => \data_p2_reg[72]\(55),
      R => '0'
    );
\tmp_432_reg_490_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(56),
      Q => \data_p2_reg[72]\(56),
      R => '0'
    );
\tmp_432_reg_490_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(57),
      Q => \data_p2_reg[72]\(57),
      R => '0'
    );
\tmp_432_reg_490_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(58),
      Q => \data_p2_reg[72]\(58),
      R => '0'
    );
\tmp_432_reg_490_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(59),
      Q => \data_p2_reg[72]\(59),
      R => '0'
    );
\tmp_432_reg_490_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(5),
      Q => \data_p2_reg[72]\(5),
      R => '0'
    );
\tmp_432_reg_490_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(60),
      Q => \data_p2_reg[72]\(60),
      R => '0'
    );
\tmp_432_reg_490_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(61),
      Q => \data_p2_reg[72]\(61),
      R => '0'
    );
\tmp_432_reg_490_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(62),
      Q => \data_p2_reg[72]\(62),
      R => '0'
    );
\tmp_432_reg_490_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(63),
      Q => \data_p2_reg[72]\(63),
      R => '0'
    );
\tmp_432_reg_490_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(64),
      Q => \data_p2_reg[72]\(64),
      R => '0'
    );
\tmp_432_reg_490_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(65),
      Q => \data_p2_reg[72]\(65),
      R => '0'
    );
\tmp_432_reg_490_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(66),
      Q => \data_p2_reg[72]\(66),
      R => '0'
    );
\tmp_432_reg_490_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(67),
      Q => \data_p2_reg[72]\(67),
      R => '0'
    );
\tmp_432_reg_490_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(68),
      Q => \data_p2_reg[72]\(68),
      R => '0'
    );
\tmp_432_reg_490_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(69),
      Q => \data_p2_reg[72]\(69),
      R => '0'
    );
\tmp_432_reg_490_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(6),
      Q => \data_p2_reg[72]\(6),
      R => '0'
    );
\tmp_432_reg_490_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(70),
      Q => \data_p2_reg[72]\(70),
      R => '0'
    );
\tmp_432_reg_490_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(71),
      Q => \data_p2_reg[72]\(71),
      R => '0'
    );
\tmp_432_reg_490_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(72),
      Q => \data_p2_reg[72]\(72),
      R => '0'
    );
\tmp_432_reg_490_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(7),
      Q => \data_p2_reg[72]\(7),
      R => '0'
    );
\tmp_432_reg_490_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(8),
      Q => \data_p2_reg[72]\(8),
      R => '0'
    );
\tmp_432_reg_490_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_432_reg_4900,
      D => \data_p1_reg[72]_0\(9),
      Q => \data_p2_reg[72]\(9),
      R => '0'
    );
\tmp_4_reg_477[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => empty_reg,
      I1 => \^tmp_4_reg_477_reg[0]_0\,
      I2 => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      I3 => tmp_4_reg_477,
      O => \tmp_4_reg_477[0]_i_1_n_0\
    );
\tmp_4_reg_477_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tmp_4_reg_477[0]_i_1_n_0\,
      Q => tmp_4_reg_477,
      R => '0'
    );
\tmp_5_reg_486[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \state_reg[0]_2\(0),
      I1 => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      I2 => \^tmp_4_reg_477_reg[0]_0\,
      I3 => tmp_5_reg_486,
      O => \tmp_5_reg_486[0]_i_1_n_0\
    );
\tmp_5_reg_486_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tmp_5_reg_486[0]_i_1_n_0\,
      Q => tmp_5_reg_486,
      R => '0'
    );
\tmp_7_reg_444_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(16),
      Q => tmp_7_reg_444,
      R => '0'
    );
\tmp_9_reg_464_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state_reg[0]_1\,
      Q => \^tmp_9_reg_464\,
      R => '0'
    );
\tmp_V_2_reg_481[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => empty_reg,
      I1 => \^ea_fsmstate_v_load_reg_473_reg[0]_0\,
      I2 => \^tmp_4_reg_477_reg[0]_0\,
      O => tmp_V_2_reg_4810
    );
\tmp_V_2_reg_481_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(0),
      Q => \data_p2_reg[15]_0\(0),
      R => '0'
    );
\tmp_V_2_reg_481_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(10),
      Q => \data_p2_reg[15]_0\(10),
      R => '0'
    );
\tmp_V_2_reg_481_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(11),
      Q => \data_p2_reg[15]_0\(11),
      R => '0'
    );
\tmp_V_2_reg_481_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(12),
      Q => \data_p2_reg[15]_0\(12),
      R => '0'
    );
\tmp_V_2_reg_481_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(13),
      Q => \data_p2_reg[15]_0\(13),
      R => '0'
    );
\tmp_V_2_reg_481_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(14),
      Q => \data_p2_reg[15]_0\(14),
      R => '0'
    );
\tmp_V_2_reg_481_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(15),
      Q => \data_p2_reg[15]_0\(15),
      R => '0'
    );
\tmp_V_2_reg_481_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(1),
      Q => \data_p2_reg[15]_0\(1),
      R => '0'
    );
\tmp_V_2_reg_481_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(2),
      Q => \data_p2_reg[15]_0\(2),
      R => '0'
    );
\tmp_V_2_reg_481_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(3),
      Q => \data_p2_reg[15]_0\(3),
      R => '0'
    );
\tmp_V_2_reg_481_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(4),
      Q => \data_p2_reg[15]_0\(4),
      R => '0'
    );
\tmp_V_2_reg_481_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(5),
      Q => \data_p2_reg[15]_0\(5),
      R => '0'
    );
\tmp_V_2_reg_481_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(6),
      Q => \data_p2_reg[15]_0\(6),
      R => '0'
    );
\tmp_V_2_reg_481_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(7),
      Q => \data_p2_reg[15]_0\(7),
      R => '0'
    );
\tmp_V_2_reg_481_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(8),
      Q => \data_p2_reg[15]_0\(8),
      R => '0'
    );
\tmp_V_2_reg_481_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tmp_V_2_reg_4810,
      D => \out\(9),
      Q => \data_p2_reg[15]_0\(9),
      R => '0'
    );
\tmp_V_reg_439_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(0),
      Q => \data_p2_reg[15]\(0),
      R => '0'
    );
\tmp_V_reg_439_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(10),
      Q => \data_p2_reg[15]\(10),
      R => '0'
    );
\tmp_V_reg_439_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(11),
      Q => \data_p2_reg[15]\(11),
      R => '0'
    );
\tmp_V_reg_439_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(12),
      Q => \data_p2_reg[15]\(12),
      R => '0'
    );
\tmp_V_reg_439_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(13),
      Q => \data_p2_reg[15]\(13),
      R => '0'
    );
\tmp_V_reg_439_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(14),
      Q => \data_p2_reg[15]\(14),
      R => '0'
    );
\tmp_V_reg_439_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(15),
      Q => \data_p2_reg[15]\(15),
      R => '0'
    );
\tmp_V_reg_439_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(1),
      Q => \data_p2_reg[15]\(1),
      R => '0'
    );
\tmp_V_reg_439_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(2),
      Q => \data_p2_reg[15]\(2),
      R => '0'
    );
\tmp_V_reg_439_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(3),
      Q => \data_p2_reg[15]\(3),
      R => '0'
    );
\tmp_V_reg_439_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(4),
      Q => \data_p2_reg[15]\(4),
      R => '0'
    );
\tmp_V_reg_439_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(5),
      Q => \data_p2_reg[15]\(5),
      R => '0'
    );
\tmp_V_reg_439_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(6),
      Q => \data_p2_reg[15]\(6),
      R => '0'
    );
\tmp_V_reg_439_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(7),
      Q => \data_p2_reg[15]\(7),
      R => '0'
    );
\tmp_V_reg_439_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(8),
      Q => \data_p2_reg[15]\(8),
      R => '0'
    );
\tmp_V_reg_439_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \data_p1_reg[16]\(9),
      Q => \data_p2_reg[15]\(9),
      R => '0'
    );
\tmp_reg_435[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tmp_4_reg_477_reg[0]_0\,
      O => ap_reg_ppiten_pp0_it11
    );
\tmp_reg_435_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ap_reg_ppiten_pp0_it11,
      D => Q(0),
      Q => \^tmp_reg_435\,
      R => '0'
    );
\waitPortStatus[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF04F304"
    )
        port map (
      I0 => listenDone,
      I1 => ap_start,
      I2 => \^tmp_4_reg_477_reg[0]_0\,
      I3 => \^waitportstatus_reg[0]_0\,
      I4 => empty_reg_0,
      O => \waitPortStatus[0]_i_1_n_0\
    );
\waitPortStatus_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \waitPortStatus[0]_i_1_n_0\,
      Q => \^waitportstatus_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_close_connection_fifo is
  port (
    full_reg_0 : out STD_LOGIC;
    full_reg_1 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_out : in STD_LOGIC;
    s_ready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_close_connection_fifo : entity is "echo_server_application_m_axis_close_connection_fifo";
end echo_server_application_ip_echo_server_application_m_axis_close_connection_fifo;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_close_connection_fifo is
  signal \empty_i_1__0_n_0\ : STD_LOGIC;
  signal empty_i_2_n_0 : STD_LOGIC;
  signal full_i_1_n_0 : STD_LOGIC;
  signal full_i_2_n_0 : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \^full_reg_1\ : STD_LOGIC;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index[1]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_1_n_0\ : STD_LOGIC;
  signal \index[3]_i_1_n_0\ : STD_LOGIC;
  signal \index[3]_i_2_n_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][10]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][10]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][10]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][11]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][11]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][11]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][13]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][13]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][13]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][14]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][14]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][14]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][15]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][15]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][15]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][1]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][1]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][1]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][2]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][2]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][2]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][4]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][4]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][4]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][5]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][5]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][5]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][6]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][6]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][6]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_m_axis_close_connection_if_U/closeConnection_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \index[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair6";
begin
  full_reg_0 <= \^full_reg_0\;
  full_reg_1 <= \^full_reg_1\;
\empty_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => empty_i_2_n_0,
      O => \empty_i_1__0_n_0\
    );
empty_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(3),
      I3 => \index_reg__0\(2),
      O => empty_i_2_n_0
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \empty_i_1__0_n_0\,
      PRE => AS(0),
      Q => \^full_reg_1\
    );
full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB0F0B0"
    )
        port map (
      I0 => \^full_reg_1\,
      I1 => s_ready,
      I2 => \^full_reg_0\,
      I3 => p_12_out,
      I4 => full_i_2_n_0,
      O => full_i_1_n_0
    );
full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000800080"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(3),
      I2 => \index_reg__0\(1),
      I3 => \index_reg__0\(0),
      I4 => \^full_reg_1\,
      I5 => s_ready,
      O => full_i_2_n_0
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => AS(0),
      D => full_i_1_n_0,
      Q => \^full_reg_0\
    );
\gen_sr[15].mem_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(0),
      Q => \out\(0)
    );
\gen_sr[15].mem_reg[15][10]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(10),
      Q => \out\(10)
    );
\gen_sr[15].mem_reg[15][11]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(11),
      Q => \out\(11)
    );
\gen_sr[15].mem_reg[15][12]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(12),
      Q => \out\(12)
    );
\gen_sr[15].mem_reg[15][13]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(13),
      Q => \out\(13)
    );
\gen_sr[15].mem_reg[15][14]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(14),
      Q => \out\(14)
    );
\gen_sr[15].mem_reg[15][15]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(15),
      Q => \out\(15)
    );
\gen_sr[15].mem_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(1),
      Q => \out\(1)
    );
\gen_sr[15].mem_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(2),
      Q => \out\(2)
    );
\gen_sr[15].mem_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(3),
      Q => \out\(3)
    );
\gen_sr[15].mem_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(4),
      Q => \out\(4)
    );
\gen_sr[15].mem_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(5),
      Q => \out\(5)
    );
\gen_sr[15].mem_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(6),
      Q => \out\(6)
    );
\gen_sr[15].mem_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(7),
      Q => \out\(7)
    );
\gen_sr[15].mem_reg[15][8]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(8)
    );
\gen_sr[15].mem_reg[15][9]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(9),
      Q => \out\(9)
    );
\index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \index_reg__0\(1),
      I4 => \index_reg__0\(0),
      O => \index[1]_i_1_n_0\
    );
\index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFEF00FFEF0010"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \index_reg__0\(0),
      I4 => \index_reg__0\(2),
      I5 => \index_reg__0\(1),
      O => \index[2]_i_1_n_0\
    );
\index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^full_reg_1\,
      I1 => s_ready,
      I2 => p_12_out,
      O => \index[3]_i_1_n_0\
    );
\index[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6AAA6AAAAAA9AA"
    )
        port map (
      I0 => \index_reg__0\(3),
      I1 => \index_reg__0\(2),
      I2 => \index_reg__0\(0),
      I3 => E(0),
      I4 => p_12_out,
      I5 => \index_reg__0\(1),
      O => \index[3]_i_2_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1_n_0\,
      D => \index[0]_i_1_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(0)
    );
\index_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1_n_0\,
      D => \index[1]_i_1_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(1)
    );
\index_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1_n_0\,
      D => \index[2]_i_1_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(2)
    );
\index_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1_n_0\,
      D => \index[3]_i_2_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_close_connection_reg_slice is
  port (
    s_ready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_close_connection_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_close_connection_TREADY : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_close_connection_reg_slice : entity is "echo_server_application_m_axis_close_connection_reg_slice";
end echo_server_application_ip_echo_server_application_m_axis_close_connection_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_close_connection_reg_slice is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \^s_ready\ : STD_LOGIC;
  signal s_ready_t_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_ready_t_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair7";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  s_ready <= \^s_ready\;
\data_p1[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1__2_n_0\
    );
\data_p1[10]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(10),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[10]\,
      O => \data_p1[10]_i_1__2_n_0\
    );
\data_p1[11]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(11),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[11]\,
      O => \data_p1[11]_i_1__2_n_0\
    );
\data_p1[12]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(12),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[12]\,
      O => \data_p1[12]_i_1__3_n_0\
    );
\data_p1[13]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(13),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[13]\,
      O => \data_p1[13]_i_1__2_n_0\
    );
\data_p1[14]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(14),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[14]\,
      O => \data_p1[14]_i_1__2_n_0\
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7404"
    )
        port map (
      I0 => empty_reg,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => m_axis_close_connection_TREADY,
      O => load_p1
    );
\data_p1[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(15),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[15]\,
      O => \data_p1[15]_i_2_n_0\
    );
\data_p1[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(1),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[1]\,
      O => \data_p1[1]_i_1__2_n_0\
    );
\data_p1[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(2),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[2]\,
      O => \data_p1[2]_i_1__2_n_0\
    );
\data_p1[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(3),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1__2_n_0\
    );
\data_p1[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(4),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[4]\,
      O => \data_p1[4]_i_1__2_n_0\
    );
\data_p1[5]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(5),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[5]\,
      O => \data_p1[5]_i_1__2_n_0\
    );
\data_p1[6]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(6),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[6]\,
      O => \data_p1[6]_i_1__2_n_0\
    );
\data_p1[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(7),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_1__2_n_0\
    );
\data_p1[8]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(8),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[8]\,
      O => \data_p1[8]_i_1__2_n_0\
    );
\data_p1[9]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(9),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[9]\,
      O => \data_p1[9]_i_1__2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__3_n_0\,
      Q => m_axis_close_connection_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_2_n_0\,
      Q => m_axis_close_connection_TDATA(15),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__2_n_0\,
      Q => m_axis_close_connection_TDATA(9),
      R => '0'
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_ready\,
      I1 => empty_reg,
      O => \^e\(0)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
s_ready_t_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0FC0"
    )
        port map (
      I0 => empty_reg,
      I1 => m_axis_close_connection_TREADY,
      I2 => \^q\(0),
      I3 => state(1),
      I4 => \^s_ready\,
      O => s_ready_t_i_1_n_0
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_t_i_1_n_0,
      Q => \^s_ready\,
      R => AS(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFF0C00"
    )
        port map (
      I0 => m_axis_close_connection_TREADY,
      I1 => \^s_ready\,
      I2 => empty_reg,
      I3 => state(1),
      I4 => \^q\(0),
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => state(1),
      I1 => empty_reg,
      I2 => m_axis_close_connection_TREADY,
      I3 => \^q\(0),
      O => \state[1]_i_1__3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_2_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__3_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_listen_port_fifo is
  port (
    full_reg_0 : out STD_LOGIC;
    full_reg_1 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_out : in STD_LOGIC;
    s_ready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_listen_port_fifo : entity is "echo_server_application_m_axis_listen_port_fifo";
end echo_server_application_ip_echo_server_application_m_axis_listen_port_fifo;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_listen_port_fifo is
  signal \empty_i_1__1_n_0\ : STD_LOGIC;
  signal \empty_i_2__0_n_0\ : STD_LOGIC;
  signal \full_i_1__0_n_0\ : STD_LOGIC;
  signal \full_i_2__0_n_0\ : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \^full_reg_1\ : STD_LOGIC;
  signal \index[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \index[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \index[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \index[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \index[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_m_axis_listen_port_if_U/listenPort_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \index[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \index[1]_i_1__0\ : label is "soft_lutpair8";
begin
  full_reg_0 <= \^full_reg_0\;
  full_reg_1 <= \^full_reg_1\;
\empty_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \empty_i_2__0_n_0\,
      O => \empty_i_1__1_n_0\
    );
\empty_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(3),
      I3 => \index_reg__0\(2),
      O => \empty_i_2__0_n_0\
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \empty_i_1__1_n_0\,
      PRE => AS(0),
      Q => \^full_reg_1\
    );
\full_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB0F0B0"
    )
        port map (
      I0 => \^full_reg_1\,
      I1 => s_ready,
      I2 => \^full_reg_0\,
      I3 => p_12_out,
      I4 => \full_i_2__0_n_0\,
      O => \full_i_1__0_n_0\
    );
\full_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000800080"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(3),
      I2 => \index_reg__0\(1),
      I3 => \index_reg__0\(0),
      I4 => \^full_reg_1\,
      I5 => s_ready,
      O => \full_i_2__0_n_0\
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => AS(0),
      D => \full_i_1__0_n_0\,
      Q => \^full_reg_0\
    );
\gen_sr[15].mem_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => '1',
      Q => \out\(0)
    );
\gen_sr[15].mem_reg[15][12]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => '1',
      Q => \out\(5)
    );
\gen_sr[15].mem_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => '1',
      Q => \out\(1)
    );
\gen_sr[15].mem_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => '1',
      Q => \out\(2)
    );
\gen_sr[15].mem_reg[15][8]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => '1',
      Q => \out\(3)
    );
\gen_sr[15].mem_reg[15][9]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => '1',
      Q => \out\(4)
    );
\index[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => \index[0]_i_1__0_n_0\
    );
\index[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \index_reg__0\(1),
      I4 => \index_reg__0\(0),
      O => \index[1]_i_1__0_n_0\
    );
\index[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFEF00FFEF0010"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \index_reg__0\(0),
      I4 => \index_reg__0\(2),
      I5 => \index_reg__0\(1),
      O => \index[2]_i_1__0_n_0\
    );
\index[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^full_reg_1\,
      I1 => s_ready,
      I2 => p_12_out,
      O => \index[3]_i_1__0_n_0\
    );
\index[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6AAA6AAAAAA9AA"
    )
        port map (
      I0 => \index_reg__0\(3),
      I1 => \index_reg__0\(2),
      I2 => \index_reg__0\(0),
      I3 => E(0),
      I4 => p_12_out,
      I5 => \index_reg__0\(1),
      O => \index[3]_i_2__0_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__0_n_0\,
      D => \index[0]_i_1__0_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(0)
    );
\index_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__0_n_0\,
      D => \index[1]_i_1__0_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(1)
    );
\index_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__0_n_0\,
      D => \index[2]_i_1__0_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(2)
    );
\index_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__0_n_0\,
      D => \index[3]_i_2__0_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_listen_port_reg_slice is
  port (
    s_ready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_listen_port_TDATA : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_listen_port_TREADY : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_listen_port_reg_slice : entity is "echo_server_application_m_axis_listen_port_reg_slice";
end echo_server_application_ip_echo_server_application_m_axis_listen_port_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_listen_port_reg_slice is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \^s_ready\ : STD_LOGIC;
  signal \s_ready_t_i_1__0_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_ready_t_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[0]_i_1__5\ : label is "soft_lutpair9";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  s_ready <= \^s_ready\;
\data_p1[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1__3_n_0\
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7404"
    )
        port map (
      I0 => empty_reg,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => m_axis_listen_port_TREADY,
      O => load_p1
    );
\data_p1[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(5),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[12]\,
      O => \data_p1[12]_i_2_n_0\
    );
\data_p1[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(1),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1__3_n_0\
    );
\data_p1[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(2),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_1__3_n_0\
    );
\data_p1[8]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(3),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[8]\,
      O => \data_p1[8]_i_1__3_n_0\
    );
\data_p1[9]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(4),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[9]\,
      O => \data_p1[9]_i_1__3_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__3_n_0\,
      Q => m_axis_listen_port_TDATA(0),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_2_n_0\,
      Q => m_axis_listen_port_TDATA(5),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__3_n_0\,
      Q => m_axis_listen_port_TDATA(1),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__3_n_0\,
      Q => m_axis_listen_port_TDATA(2),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__3_n_0\,
      Q => m_axis_listen_port_TDATA(3),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__3_n_0\,
      Q => m_axis_listen_port_TDATA(4),
      R => '0'
    );
\data_p2[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_ready\,
      I1 => empty_reg,
      O => \^e\(0)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(5),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(1),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(2),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(3),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(4),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\s_ready_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0FC0"
    )
        port map (
      I0 => empty_reg,
      I1 => m_axis_listen_port_TREADY,
      I2 => \^q\(0),
      I3 => state(1),
      I4 => \^s_ready\,
      O => \s_ready_t_i_1__0_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__0_n_0\,
      Q => \^s_ready\,
      R => AS(0)
    );
\state[0]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFF0C00"
    )
        port map (
      I0 => m_axis_listen_port_TREADY,
      I1 => \^s_ready\,
      I2 => empty_reg,
      I3 => state(1),
      I4 => \^q\(0),
      O => \state[0]_i_1__5_n_0\
    );
\state[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => state(1),
      I1 => empty_reg,
      I2 => m_axis_listen_port_TREADY,
      I3 => \^q\(0),
      O => \state[1]_i_1__4_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__5_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__4_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_open_connection_reg_slice is
  port (
    sig_echo_server_application_openConnection_V_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    tmp_reg_435 : in STD_LOGIC;
    m_axis_open_connection_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_open_connection_reg_slice : entity is "echo_server_application_m_axis_open_connection_reg_slice";
end echo_server_application_ip_echo_server_application_m_axis_open_connection_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_open_connection_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_ready_t_i_1__1_n_0\ : STD_LOGIC;
  signal \^sig_echo_server_application_openconnection_v_full_n\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
  sig_echo_server_application_openConnection_V_full_n <= \^sig_echo_server_application_openconnection_v_full_n\;
\s_ready_t_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF33338888"
    )
        port map (
      I0 => m_axis_open_connection_TREADY,
      I1 => \^q\(0),
      I2 => tmp_reg_435,
      I3 => ap_reg_ppiten_pp0_it1_reg,
      I4 => state(1),
      I5 => \^sig_echo_server_application_openconnection_v_full_n\,
      O => \s_ready_t_i_1__1_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__1_n_0\,
      Q => \^sig_echo_server_application_openconnection_v_full_n\,
      R => AS(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FF8080"
    )
        port map (
      I0 => state(1),
      I1 => ap_reg_ppiten_pp0_it1_reg,
      I2 => tmp_reg_435,
      I3 => m_axis_open_connection_TREADY,
      I4 => \^q\(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFBBBB"
    )
        port map (
      I0 => m_axis_open_connection_TREADY,
      I1 => \^q\(0),
      I2 => tmp_reg_435,
      I3 => ap_reg_ppiten_pp0_it1_reg,
      I4 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_read_package_reg_slice is
  port (
    sig_echo_server_application_readRequest_V_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_read_package_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_read_package_TREADY : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_read_package_reg_slice : entity is "echo_server_application_m_axis_read_package_reg_slice";
end echo_server_application_ip_echo_server_application_m_axis_read_package_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_read_package_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \s_ready_t_i_1__2_n_0\ : STD_LOGIC;
  signal \^sig_echo_server_application_readrequest_v_full_n\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_ready_t_i_1__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[0]_i_1__0\ : label is "soft_lutpair10";
begin
  Q(0) <= \^q\(0);
  sig_echo_server_application_readRequest_V_full_n <= \^sig_echo_server_application_readrequest_v_full_n\;
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(0),
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(10),
      O => \data_p1[10]_i_1_n_0\
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(11),
      O => \data_p1[11]_i_1_n_0\
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(12),
      O => \data_p1[12]_i_1__0_n_0\
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(13),
      O => \data_p1[13]_i_1_n_0\
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(14),
      O => \data_p1[14]_i_1_n_0\
    );
\data_p1[15]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(15),
      O => \data_p1[15]_i_1__1_n_0\
    );
\data_p1[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(16),
      O => \data_p1[16]_i_1__0_n_0\
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(17),
      O => \data_p1[17]_i_1_n_0\
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(18),
      O => \data_p1[18]_i_1_n_0\
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(19),
      O => \data_p1[19]_i_1_n_0\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(1),
      O => \data_p1[1]_i_1_n_0\
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(20),
      O => \data_p1[20]_i_1_n_0\
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(21),
      O => \data_p1[21]_i_1_n_0\
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(22),
      O => \data_p1[22]_i_1_n_0\
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(23),
      O => \data_p1[23]_i_1_n_0\
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[24]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(24),
      O => \data_p1[24]_i_1_n_0\
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[25]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(25),
      O => \data_p1[25]_i_1_n_0\
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[26]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(26),
      O => \data_p1[26]_i_1_n_0\
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(27),
      O => \data_p1[27]_i_1_n_0\
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[28]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(28),
      O => \data_p1[28]_i_1_n_0\
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[29]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(29),
      O => \data_p1[29]_i_1_n_0\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(2),
      O => \data_p1[2]_i_1_n_0\
    );
\data_p1[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[30]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(30),
      O => \data_p1[30]_i_1_n_0\
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2C0"
    )
        port map (
      I0 => m_axis_read_package_TREADY,
      I1 => state(1),
      I2 => load_p2,
      I3 => \^q\(0),
      O => load_p1
    );
\data_p1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(31),
      O => \data_p1[31]_i_2_n_0\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(3),
      O => \data_p1[3]_i_1_n_0\
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(4),
      O => \data_p1[4]_i_1_n_0\
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(5),
      O => \data_p1[5]_i_1_n_0\
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(6),
      O => \data_p1[6]_i_1_n_0\
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(7),
      O => \data_p1[7]_i_1_n_0\
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(8),
      O => \data_p1[8]_i_1_n_0\
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(9),
      O => \data_p1[9]_i_1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__0_n_0\,
      Q => m_axis_read_package_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_1__1_n_0\,
      Q => m_axis_read_package_TDATA(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[16]_i_1__0_n_0\,
      Q => m_axis_read_package_TDATA(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[17]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[18]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[19]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[20]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[21]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[22]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[23]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[24]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[25]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[26]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[27]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[28]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[29]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[30]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[31]_i_2_n_0\,
      Q => m_axis_read_package_TDATA(31),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1_n_0\,
      Q => m_axis_read_package_TDATA(9),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\s_ready_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => load_p2,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => m_axis_read_package_TREADY,
      I4 => \^sig_echo_server_application_readrequest_v_full_n\,
      O => \s_ready_t_i_1__2_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__2_n_0\,
      Q => \^sig_echo_server_application_readrequest_v_full_n\,
      R => AS(0)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA2A"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axis_read_package_TREADY,
      I2 => state(1),
      I3 => load_p2,
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => load_p2,
      I1 => state(1),
      I2 => m_axis_read_package_TREADY,
      I3 => \^q\(0),
      O => \state[1]_i_1__9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__9_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_tx_data_reg_slice is
  port (
    sig_echo_server_application_txData_V_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axis_tx_data_TLAST[0]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_tx_data_TREADY : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 72 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_tx_data_reg_slice : entity is "echo_server_application_m_axis_tx_data_reg_slice";
end echo_server_application_ip_echo_server_application_m_axis_tx_data_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_tx_data_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[32]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[33]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[34]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[35]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[36]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[37]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[38]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[39]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[40]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[41]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[42]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[43]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[44]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[45]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[46]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[47]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[48]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[49]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[50]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[51]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[52]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[53]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[54]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[55]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[56]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[57]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[58]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[59]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[60]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[61]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[62]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[63]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[64]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[65]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[66]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[67]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[68]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[69]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[70]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[71]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[72]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[32]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[33]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[34]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[35]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[36]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[37]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[38]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[39]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[40]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[41]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[42]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[43]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[44]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[45]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[46]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[47]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[48]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[49]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[50]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[51]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[52]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[53]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[54]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[55]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[56]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[57]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[58]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[59]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[60]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[61]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[62]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[63]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[64]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[65]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[66]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[67]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[68]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[69]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[70]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[71]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[72]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \s_ready_t_i_1__3_n_0\ : STD_LOGIC;
  signal \^sig_echo_server_application_txdata_v_full_n\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__10_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_ready_t_i_1__3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[0]_i_1__1\ : label is "soft_lutpair11";
begin
  Q(0) <= \^q\(0);
  sig_echo_server_application_txData_V_full_n <= \^sig_echo_server_application_txdata_v_full_n\;
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(0),
      O => \data_p1[0]_i_1__0_n_0\
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(10),
      O => \data_p1[10]_i_1__0_n_0\
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(11),
      O => \data_p1[11]_i_1__0_n_0\
    );
\data_p1[12]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(12),
      O => \data_p1[12]_i_1__1_n_0\
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(13),
      O => \data_p1[13]_i_1__0_n_0\
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(14),
      O => \data_p1[14]_i_1__0_n_0\
    );
\data_p1[15]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(15),
      O => \data_p1[15]_i_1__2_n_0\
    );
\data_p1[16]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(16),
      O => \data_p1[16]_i_1__1_n_0\
    );
\data_p1[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(17),
      O => \data_p1[17]_i_1__0_n_0\
    );
\data_p1[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(18),
      O => \data_p1[18]_i_1__0_n_0\
    );
\data_p1[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(19),
      O => \data_p1[19]_i_1__0_n_0\
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(1),
      O => \data_p1[1]_i_1__0_n_0\
    );
\data_p1[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(20),
      O => \data_p1[20]_i_1__0_n_0\
    );
\data_p1[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(21),
      O => \data_p1[21]_i_1__0_n_0\
    );
\data_p1[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(22),
      O => \data_p1[22]_i_1__0_n_0\
    );
\data_p1[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(23),
      O => \data_p1[23]_i_1__0_n_0\
    );
\data_p1[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[24]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(24),
      O => \data_p1[24]_i_1__0_n_0\
    );
\data_p1[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[25]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(25),
      O => \data_p1[25]_i_1__0_n_0\
    );
\data_p1[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[26]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(26),
      O => \data_p1[26]_i_1__0_n_0\
    );
\data_p1[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(27),
      O => \data_p1[27]_i_1__0_n_0\
    );
\data_p1[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[28]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(28),
      O => \data_p1[28]_i_1__0_n_0\
    );
\data_p1[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[29]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(29),
      O => \data_p1[29]_i_1__0_n_0\
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(2),
      O => \data_p1[2]_i_1__0_n_0\
    );
\data_p1[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[30]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(30),
      O => \data_p1[30]_i_1__0_n_0\
    );
\data_p1[31]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(31),
      O => \data_p1[31]_i_1__1_n_0\
    );
\data_p1[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[32]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(32),
      O => \data_p1[32]_i_1_n_0\
    );
\data_p1[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[33]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(33),
      O => \data_p1[33]_i_1_n_0\
    );
\data_p1[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[34]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(34),
      O => \data_p1[34]_i_1_n_0\
    );
\data_p1[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[35]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(35),
      O => \data_p1[35]_i_1_n_0\
    );
\data_p1[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[36]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(36),
      O => \data_p1[36]_i_1_n_0\
    );
\data_p1[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[37]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(37),
      O => \data_p1[37]_i_1_n_0\
    );
\data_p1[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[38]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(38),
      O => \data_p1[38]_i_1_n_0\
    );
\data_p1[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[39]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(39),
      O => \data_p1[39]_i_1_n_0\
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(3),
      O => \data_p1[3]_i_1__0_n_0\
    );
\data_p1[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[40]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(40),
      O => \data_p1[40]_i_1_n_0\
    );
\data_p1[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[41]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(41),
      O => \data_p1[41]_i_1_n_0\
    );
\data_p1[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[42]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(42),
      O => \data_p1[42]_i_1_n_0\
    );
\data_p1[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[43]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(43),
      O => \data_p1[43]_i_1_n_0\
    );
\data_p1[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[44]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(44),
      O => \data_p1[44]_i_1_n_0\
    );
\data_p1[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[45]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(45),
      O => \data_p1[45]_i_1_n_0\
    );
\data_p1[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[46]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(46),
      O => \data_p1[46]_i_1_n_0\
    );
\data_p1[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[47]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(47),
      O => \data_p1[47]_i_1_n_0\
    );
\data_p1[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[48]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(48),
      O => \data_p1[48]_i_1_n_0\
    );
\data_p1[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[49]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(49),
      O => \data_p1[49]_i_1_n_0\
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(4),
      O => \data_p1[4]_i_1__0_n_0\
    );
\data_p1[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[50]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(50),
      O => \data_p1[50]_i_1_n_0\
    );
\data_p1[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[51]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(51),
      O => \data_p1[51]_i_1_n_0\
    );
\data_p1[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[52]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(52),
      O => \data_p1[52]_i_1_n_0\
    );
\data_p1[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[53]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(53),
      O => \data_p1[53]_i_1_n_0\
    );
\data_p1[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[54]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(54),
      O => \data_p1[54]_i_1_n_0\
    );
\data_p1[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[55]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(55),
      O => \data_p1[55]_i_1_n_0\
    );
\data_p1[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[56]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(56),
      O => \data_p1[56]_i_1_n_0\
    );
\data_p1[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[57]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(57),
      O => \data_p1[57]_i_1_n_0\
    );
\data_p1[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[58]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(58),
      O => \data_p1[58]_i_1_n_0\
    );
\data_p1[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[59]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(59),
      O => \data_p1[59]_i_1_n_0\
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(5),
      O => \data_p1[5]_i_1__0_n_0\
    );
\data_p1[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[60]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(60),
      O => \data_p1[60]_i_1_n_0\
    );
\data_p1[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[61]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(61),
      O => \data_p1[61]_i_1_n_0\
    );
\data_p1[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[62]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(62),
      O => \data_p1[62]_i_1_n_0\
    );
\data_p1[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2C0"
    )
        port map (
      I0 => m_axis_tx_data_TREADY,
      I1 => state(1),
      I2 => load_p2,
      I3 => \^q\(0),
      O => load_p1
    );
\data_p1[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[63]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(63),
      O => \data_p1[63]_i_2_n_0\
    );
\data_p1[64]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[64]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(64),
      O => \data_p1[64]_i_1_n_0\
    );
\data_p1[65]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[65]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(65),
      O => \data_p1[65]_i_1_n_0\
    );
\data_p1[66]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[66]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(66),
      O => \data_p1[66]_i_1_n_0\
    );
\data_p1[67]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[67]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(67),
      O => \data_p1[67]_i_1_n_0\
    );
\data_p1[68]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[68]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(68),
      O => \data_p1[68]_i_1_n_0\
    );
\data_p1[69]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[69]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(69),
      O => \data_p1[69]_i_1_n_0\
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(6),
      O => \data_p1[6]_i_1__0_n_0\
    );
\data_p1[70]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[70]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(70),
      O => \data_p1[70]_i_1_n_0\
    );
\data_p1[71]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[71]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(71),
      O => \data_p1[71]_i_1_n_0\
    );
\data_p1[72]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[72]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(72),
      O => \data_p1[72]_i_1__0_n_0\
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(7),
      O => \data_p1[7]_i_1__0_n_0\
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(8),
      O => \data_p1[8]_i_1__0_n_0\
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => D(9),
      O => \data_p1[9]_i_1__0_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_1__2_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[16]_i_1__1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[17]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[18]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[19]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[20]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[21]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[22]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[23]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[24]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[25]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[26]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[27]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[28]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[29]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[30]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[31]_i_1__1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(31),
      R => '0'
    );
\data_p1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[32]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(32),
      R => '0'
    );
\data_p1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[33]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(33),
      R => '0'
    );
\data_p1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[34]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(34),
      R => '0'
    );
\data_p1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[35]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(35),
      R => '0'
    );
\data_p1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[36]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(36),
      R => '0'
    );
\data_p1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[37]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(37),
      R => '0'
    );
\data_p1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[38]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(38),
      R => '0'
    );
\data_p1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[39]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(39),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(3),
      R => '0'
    );
\data_p1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[40]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(40),
      R => '0'
    );
\data_p1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[41]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(41),
      R => '0'
    );
\data_p1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[42]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(42),
      R => '0'
    );
\data_p1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[43]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(43),
      R => '0'
    );
\data_p1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[44]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(44),
      R => '0'
    );
\data_p1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[45]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(45),
      R => '0'
    );
\data_p1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[46]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(46),
      R => '0'
    );
\data_p1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[47]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(47),
      R => '0'
    );
\data_p1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[48]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(48),
      R => '0'
    );
\data_p1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[49]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(49),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(4),
      R => '0'
    );
\data_p1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[50]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(50),
      R => '0'
    );
\data_p1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[51]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(51),
      R => '0'
    );
\data_p1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[52]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(52),
      R => '0'
    );
\data_p1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[53]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(53),
      R => '0'
    );
\data_p1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[54]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(54),
      R => '0'
    );
\data_p1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[55]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(55),
      R => '0'
    );
\data_p1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[56]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(56),
      R => '0'
    );
\data_p1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[57]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(57),
      R => '0'
    );
\data_p1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[58]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(58),
      R => '0'
    );
\data_p1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[59]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(59),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(5),
      R => '0'
    );
\data_p1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[60]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(60),
      R => '0'
    );
\data_p1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[61]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(61),
      R => '0'
    );
\data_p1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[62]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(62),
      R => '0'
    );
\data_p1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[63]_i_2_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(63),
      R => '0'
    );
\data_p1_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[64]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(64),
      R => '0'
    );
\data_p1_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[65]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(65),
      R => '0'
    );
\data_p1_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[66]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(66),
      R => '0'
    );
\data_p1_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[67]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(67),
      R => '0'
    );
\data_p1_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[68]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(68),
      R => '0'
    );
\data_p1_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[69]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(69),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(6),
      R => '0'
    );
\data_p1_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[70]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(70),
      R => '0'
    );
\data_p1_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[71]_i_1_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(71),
      R => '0'
    );
\data_p1_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[72]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(72),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__0_n_0\,
      Q => \m_axis_tx_data_TLAST[0]\(9),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(32),
      Q => \data_p2_reg_n_0_[32]\,
      R => '0'
    );
\data_p2_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(33),
      Q => \data_p2_reg_n_0_[33]\,
      R => '0'
    );
\data_p2_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(34),
      Q => \data_p2_reg_n_0_[34]\,
      R => '0'
    );
\data_p2_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(35),
      Q => \data_p2_reg_n_0_[35]\,
      R => '0'
    );
\data_p2_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(36),
      Q => \data_p2_reg_n_0_[36]\,
      R => '0'
    );
\data_p2_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(37),
      Q => \data_p2_reg_n_0_[37]\,
      R => '0'
    );
\data_p2_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(38),
      Q => \data_p2_reg_n_0_[38]\,
      R => '0'
    );
\data_p2_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(39),
      Q => \data_p2_reg_n_0_[39]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(40),
      Q => \data_p2_reg_n_0_[40]\,
      R => '0'
    );
\data_p2_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(41),
      Q => \data_p2_reg_n_0_[41]\,
      R => '0'
    );
\data_p2_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(42),
      Q => \data_p2_reg_n_0_[42]\,
      R => '0'
    );
\data_p2_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(43),
      Q => \data_p2_reg_n_0_[43]\,
      R => '0'
    );
\data_p2_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(44),
      Q => \data_p2_reg_n_0_[44]\,
      R => '0'
    );
\data_p2_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(45),
      Q => \data_p2_reg_n_0_[45]\,
      R => '0'
    );
\data_p2_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(46),
      Q => \data_p2_reg_n_0_[46]\,
      R => '0'
    );
\data_p2_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(47),
      Q => \data_p2_reg_n_0_[47]\,
      R => '0'
    );
\data_p2_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(48),
      Q => \data_p2_reg_n_0_[48]\,
      R => '0'
    );
\data_p2_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(49),
      Q => \data_p2_reg_n_0_[49]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(50),
      Q => \data_p2_reg_n_0_[50]\,
      R => '0'
    );
\data_p2_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(51),
      Q => \data_p2_reg_n_0_[51]\,
      R => '0'
    );
\data_p2_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(52),
      Q => \data_p2_reg_n_0_[52]\,
      R => '0'
    );
\data_p2_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(53),
      Q => \data_p2_reg_n_0_[53]\,
      R => '0'
    );
\data_p2_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(54),
      Q => \data_p2_reg_n_0_[54]\,
      R => '0'
    );
\data_p2_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(55),
      Q => \data_p2_reg_n_0_[55]\,
      R => '0'
    );
\data_p2_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(56),
      Q => \data_p2_reg_n_0_[56]\,
      R => '0'
    );
\data_p2_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(57),
      Q => \data_p2_reg_n_0_[57]\,
      R => '0'
    );
\data_p2_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(58),
      Q => \data_p2_reg_n_0_[58]\,
      R => '0'
    );
\data_p2_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(59),
      Q => \data_p2_reg_n_0_[59]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(60),
      Q => \data_p2_reg_n_0_[60]\,
      R => '0'
    );
\data_p2_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(61),
      Q => \data_p2_reg_n_0_[61]\,
      R => '0'
    );
\data_p2_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(62),
      Q => \data_p2_reg_n_0_[62]\,
      R => '0'
    );
\data_p2_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(63),
      Q => \data_p2_reg_n_0_[63]\,
      R => '0'
    );
\data_p2_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(64),
      Q => \data_p2_reg_n_0_[64]\,
      R => '0'
    );
\data_p2_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(65),
      Q => \data_p2_reg_n_0_[65]\,
      R => '0'
    );
\data_p2_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(66),
      Q => \data_p2_reg_n_0_[66]\,
      R => '0'
    );
\data_p2_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(67),
      Q => \data_p2_reg_n_0_[67]\,
      R => '0'
    );
\data_p2_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(68),
      Q => \data_p2_reg_n_0_[68]\,
      R => '0'
    );
\data_p2_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(69),
      Q => \data_p2_reg_n_0_[69]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(70),
      Q => \data_p2_reg_n_0_[70]\,
      R => '0'
    );
\data_p2_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(71),
      Q => \data_p2_reg_n_0_[71]\,
      R => '0'
    );
\data_p2_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(72),
      Q => \data_p2_reg_n_0_[72]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\s_ready_t_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => load_p2,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => m_axis_tx_data_TREADY,
      I4 => \^sig_echo_server_application_txdata_v_full_n\,
      O => \s_ready_t_i_1__3_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__3_n_0\,
      Q => \^sig_echo_server_application_txdata_v_full_n\,
      R => AS(0)
    );
\state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA2A"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axis_tx_data_TREADY,
      I2 => state(1),
      I3 => load_p2,
      O => \state[0]_i_1__1_n_0\
    );
\state[1]_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => load_p2,
      I1 => state(1),
      I2 => m_axis_tx_data_TREADY,
      I3 => \^q\(0),
      O => \state[1]_i_1__10_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__10_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_tx_metadata_fifo is
  port (
    full_reg_0 : out STD_LOGIC;
    full_reg_1 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_out : in STD_LOGIC;
    s_ready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_tx_metadata_fifo : entity is "echo_server_application_m_axis_tx_metadata_fifo";
end echo_server_application_ip_echo_server_application_m_axis_tx_metadata_fifo;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_tx_metadata_fifo is
  signal \empty_i_1__2_n_0\ : STD_LOGIC;
  signal \empty_i_2__1_n_0\ : STD_LOGIC;
  signal \full_i_1__1_n_0\ : STD_LOGIC;
  signal \full_i_2__1_n_0\ : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \^full_reg_1\ : STD_LOGIC;
  signal \index[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \index[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \index[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \index[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \index[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][10]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][10]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][10]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][11]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][11]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][11]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][13]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][13]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][13]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][14]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][14]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][14]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][15]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][15]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][15]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][1]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][1]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][1]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][2]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][2]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][2]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][4]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][4]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][4]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][5]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][5]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][5]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][6]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][6]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][6]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_m_axis_tx_metadata_if_U/txMetaData_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \index[0]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \index[1]_i_1__1\ : label is "soft_lutpair13";
begin
  full_reg_0 <= \^full_reg_0\;
  full_reg_1 <= \^full_reg_1\;
\empty_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \empty_i_2__1_n_0\,
      O => \empty_i_1__2_n_0\
    );
\empty_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(3),
      I3 => \index_reg__0\(2),
      O => \empty_i_2__1_n_0\
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \empty_i_1__2_n_0\,
      PRE => AS(0),
      Q => \^full_reg_1\
    );
\full_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB0F0B0"
    )
        port map (
      I0 => \^full_reg_1\,
      I1 => s_ready,
      I2 => \^full_reg_0\,
      I3 => p_12_out,
      I4 => \full_i_2__1_n_0\,
      O => \full_i_1__1_n_0\
    );
\full_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000800080"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(3),
      I2 => \index_reg__0\(1),
      I3 => \index_reg__0\(0),
      I4 => \^full_reg_1\,
      I5 => s_ready,
      O => \full_i_2__1_n_0\
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => AS(0),
      D => \full_i_1__1_n_0\,
      Q => \^full_reg_0\
    );
\gen_sr[15].mem_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(0),
      Q => \out\(0)
    );
\gen_sr[15].mem_reg[15][10]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(10),
      Q => \out\(10)
    );
\gen_sr[15].mem_reg[15][11]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(11),
      Q => \out\(11)
    );
\gen_sr[15].mem_reg[15][12]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(12),
      Q => \out\(12)
    );
\gen_sr[15].mem_reg[15][13]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(13),
      Q => \out\(13)
    );
\gen_sr[15].mem_reg[15][14]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(14),
      Q => \out\(14)
    );
\gen_sr[15].mem_reg[15][15]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(15),
      Q => \out\(15)
    );
\gen_sr[15].mem_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(1),
      Q => \out\(1)
    );
\gen_sr[15].mem_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(2),
      Q => \out\(2)
    );
\gen_sr[15].mem_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(3),
      Q => \out\(3)
    );
\gen_sr[15].mem_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(4),
      Q => \out\(4)
    );
\gen_sr[15].mem_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(5),
      Q => \out\(5)
    );
\gen_sr[15].mem_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(6),
      Q => \out\(6)
    );
\gen_sr[15].mem_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(7),
      Q => \out\(7)
    );
\gen_sr[15].mem_reg[15][8]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(8)
    );
\gen_sr[15].mem_reg[15][9]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(9),
      Q => \out\(9)
    );
\index[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => \index[0]_i_1__1_n_0\
    );
\index[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \index_reg__0\(1),
      I4 => \index_reg__0\(0),
      O => \index[1]_i_1__1_n_0\
    );
\index[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFEF00FFEF0010"
    )
        port map (
      I0 => p_12_out,
      I1 => \^full_reg_1\,
      I2 => s_ready,
      I3 => \index_reg__0\(0),
      I4 => \index_reg__0\(2),
      I5 => \index_reg__0\(1),
      O => \index[2]_i_1__1_n_0\
    );
\index[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^full_reg_1\,
      I1 => s_ready,
      I2 => p_12_out,
      O => \index[3]_i_1__1_n_0\
    );
\index[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6AAA6AAAAAA9AA"
    )
        port map (
      I0 => \index_reg__0\(3),
      I1 => \index_reg__0\(2),
      I2 => \index_reg__0\(0),
      I3 => E(0),
      I4 => p_12_out,
      I5 => \index_reg__0\(1),
      O => \index[3]_i_2__1_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__1_n_0\,
      D => \index[0]_i_1__1_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(0)
    );
\index_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__1_n_0\,
      D => \index[1]_i_1__1_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(1)
    );
\index_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__1_n_0\,
      D => \index[2]_i_1__1_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(2)
    );
\index_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__1_n_0\,
      D => \index[3]_i_2__1_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_tx_metadata_reg_slice is
  port (
    s_ready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_metadata_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_tx_metadata_TREADY : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_tx_metadata_reg_slice : entity is "echo_server_application_m_axis_tx_metadata_reg_slice";
end echo_server_application_ip_echo_server_application_m_axis_tx_metadata_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_tx_metadata_reg_slice is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \^s_ready\ : STD_LOGIC;
  signal \s_ready_t_i_1__4_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_ready_t_i_1__4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \state[0]_i_1__6\ : label is "soft_lutpair12";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  s_ready <= \^s_ready\;
\data_p1[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1__4_n_0\
    );
\data_p1[10]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(10),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[10]\,
      O => \data_p1[10]_i_1__3_n_0\
    );
\data_p1[11]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(11),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[11]\,
      O => \data_p1[11]_i_1__3_n_0\
    );
\data_p1[12]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(12),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[12]\,
      O => \data_p1[12]_i_1__4_n_0\
    );
\data_p1[13]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(13),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[13]\,
      O => \data_p1[13]_i_1__3_n_0\
    );
\data_p1[14]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(14),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[14]\,
      O => \data_p1[14]_i_1__3_n_0\
    );
\data_p1[15]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7404"
    )
        port map (
      I0 => empty_reg,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => m_axis_tx_metadata_TREADY,
      O => load_p1
    );
\data_p1[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(15),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[15]\,
      O => \data_p1[15]_i_2__0_n_0\
    );
\data_p1[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(1),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[1]\,
      O => \data_p1[1]_i_1__3_n_0\
    );
\data_p1[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(2),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[2]\,
      O => \data_p1[2]_i_1__3_n_0\
    );
\data_p1[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(3),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1__4_n_0\
    );
\data_p1[4]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(4),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[4]\,
      O => \data_p1[4]_i_1__3_n_0\
    );
\data_p1[5]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(5),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[5]\,
      O => \data_p1[5]_i_1__3_n_0\
    );
\data_p1[6]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(6),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[6]\,
      O => \data_p1[6]_i_1__3_n_0\
    );
\data_p1[7]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(7),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_1__4_n_0\
    );
\data_p1[8]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(8),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[8]\,
      O => \data_p1[8]_i_1__4_n_0\
    );
\data_p1[9]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \out\(9),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[9]\,
      O => \data_p1[9]_i_1__4_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__4_n_0\,
      Q => m_axis_tx_metadata_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__4_n_0\,
      Q => m_axis_tx_metadata_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_2__0_n_0\,
      Q => m_axis_tx_metadata_TDATA(15),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__4_n_0\,
      Q => m_axis_tx_metadata_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__3_n_0\,
      Q => m_axis_tx_metadata_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__4_n_0\,
      Q => m_axis_tx_metadata_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__4_n_0\,
      Q => m_axis_tx_metadata_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__4_n_0\,
      Q => m_axis_tx_metadata_TDATA(9),
      R => '0'
    );
\data_p2[15]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_ready\,
      I1 => empty_reg,
      O => \^e\(0)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \out\(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\s_ready_t_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0FC0"
    )
        port map (
      I0 => empty_reg,
      I1 => m_axis_tx_metadata_TREADY,
      I2 => \^q\(0),
      I3 => state(1),
      I4 => \^s_ready\,
      O => \s_ready_t_i_1__4_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__4_n_0\,
      Q => \^s_ready\,
      R => AS(0)
    );
\state[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFF0C00"
    )
        port map (
      I0 => m_axis_tx_metadata_TREADY,
      I1 => \^s_ready\,
      I2 => empty_reg,
      I3 => state(1),
      I4 => \^q\(0),
      O => \state[0]_i_1__6_n_0\
    );
\state[1]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => state(1),
      I1 => empty_reg,
      I2 => m_axis_tx_metadata_TREADY,
      I3 => \^q\(0),
      O => \state[1]_i_1__5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__6_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__5_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_listen_port_status_fifo is
  port (
    sig_echo_server_application_listenPortStatus_V_dout : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    \index_reg[1]_0\ : out STD_LOGIC;
    p_12_out : in STD_LOGIC;
    listenPortStatus_V_din : in STD_LOGIC;
    aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    \waitPortStatus_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    sig_echo_server_application_listenPortStatus_V_read : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_listen_port_status_fifo : entity is "echo_server_application_s_axis_listen_port_status_fifo";
end echo_server_application_ip_echo_server_application_s_axis_listen_port_status_fifo;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_listen_port_status_fifo is
  signal \empty_i_1__3_n_0\ : STD_LOGIC;
  signal \empty_i_2__2_n_0\ : STD_LOGIC;
  signal \full_i_1__2_n_0\ : STD_LOGIC;
  signal \full_i_2__2_n_0\ : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \index[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \index[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \index[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \index[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \index[3]_i_2__3_n_0\ : STD_LOGIC;
  signal \^index_reg[1]_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_i_2__2\ : label is "soft_lutpair14";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_s_axis_listen_port_status_if_U/listenPortStatus_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_s_axis_listen_port_status_if_U/listenPortStatus_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 ";
  attribute SOFT_HLUTNM of \index[0]_i_1__2\ : label is "soft_lutpair14";
begin
  full_reg_0 <= \^full_reg_0\;
  \index_reg[1]_0\ <= \^index_reg[1]_0\;
\empty_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8F8F000F0F0"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it1_reg_0,
      I1 => \waitPortStatus_reg[0]\,
      I2 => \^index_reg[1]_0\,
      I3 => \^full_reg_0\,
      I4 => Q(0),
      I5 => \empty_i_2__2_n_0\,
      O => \empty_i_1__3_n_0\
    );
\empty_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(3),
      I3 => \index_reg__0\(2),
      O => \empty_i_2__2_n_0\
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \empty_i_1__3_n_0\,
      PRE => AS(0),
      Q => \^index_reg[1]_0\
    );
\full_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFFFAA8AAAAA"
    )
        port map (
      I0 => \^full_reg_0\,
      I1 => \^index_reg[1]_0\,
      I2 => \waitPortStatus_reg[0]\,
      I3 => ap_reg_ppiten_pp0_it1_reg,
      I4 => ap_start,
      I5 => \full_i_2__2_n_0\,
      O => \full_i_1__2_n_0\
    );
\full_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(3),
      I2 => \index_reg__0\(1),
      I3 => \index_reg__0\(0),
      I4 => \^full_reg_0\,
      I5 => Q(0),
      O => \full_i_2__2_n_0\
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => AS(0),
      D => \full_i_1__2_n_0\,
      Q => \^full_reg_0\
    );
\gen_sr[15].mem_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => listenPortStatus_V_din,
      Q => sig_echo_server_application_listenPortStatus_V_dout
    );
\index[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => \index[0]_i_1__2_n_0\
    );
\index[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555595AAAAAA6A"
    )
        port map (
      I0 => \index_reg__0\(0),
      I1 => ap_reg_ppiten_pp0_it1_reg_0,
      I2 => \waitPortStatus_reg[0]\,
      I3 => \^index_reg[1]_0\,
      I4 => p_12_out,
      I5 => \index_reg__0\(1),
      O => \index[1]_i_1__3_n_0\
    );
\index[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF7500FF75008A"
    )
        port map (
      I0 => sig_echo_server_application_listenPortStatus_V_read,
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => \index_reg__0\(0),
      I4 => \index_reg__0\(2),
      I5 => \index_reg__0\(1),
      O => \index[2]_i_1__3_n_0\
    );
\index[3]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFDF00200020"
    )
        port map (
      I0 => ap_start,
      I1 => ap_reg_ppiten_pp0_it1_reg,
      I2 => \waitPortStatus_reg[0]\,
      I3 => \^index_reg[1]_0\,
      I4 => \^full_reg_0\,
      I5 => Q(0),
      O => \index[3]_i_1__3_n_0\
    );
\index[3]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6A6AAAA9AAAA"
    )
        port map (
      I0 => \index_reg__0\(3),
      I1 => \index_reg__0\(2),
      I2 => \index_reg__0\(0),
      I3 => p_12_out,
      I4 => sig_echo_server_application_listenPortStatus_V_read,
      I5 => \index_reg__0\(1),
      O => \index[3]_i_2__3_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__3_n_0\,
      D => \index[0]_i_1__2_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(0)
    );
\index_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__3_n_0\,
      D => \index[1]_i_1__3_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(1)
    );
\index_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__3_n_0\,
      D => \index[2]_i_1__3_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(2)
    );
\index_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__3_n_0\,
      D => \index[3]_i_2__3_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_listen_port_status_reg_slice is
  port (
    s_axis_listen_port_status_TREADY : out STD_LOGIC;
    listenPortStatus_V_din : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_out : out STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_listen_port_status_TVALID : in STD_LOGIC;
    full_reg : in STD_LOGIC;
    s_axis_listen_port_status_TDATA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_listen_port_status_reg_slice : entity is "echo_server_application_s_axis_listen_port_status_reg_slice";
end echo_server_application_ip_echo_server_application_s_axis_listen_port_status_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_listen_port_status_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__8_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1_n_0\ : STD_LOGIC;
  signal \^listenportstatus_v_din\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \^s_axis_listen_port_status_tready\ : STD_LOGIC;
  signal \s_ready_t_i_1__5_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__10_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_p1[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_ready_t_i_1__5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[0]_i_1__10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[1]_i_1__6\ : label is "soft_lutpair16";
begin
  Q(0) <= \^q\(0);
  listenPortStatus_V_din <= \^listenportstatus_v_din\;
  s_axis_listen_port_status_TREADY <= \^s_axis_listen_port_status_tready\;
\data_p1[0]_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => s_axis_listen_port_status_TDATA(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => data_p2,
      I4 => load_p1,
      I5 => \^listenportstatus_v_din\,
      O => \data_p1[0]_i_1__8_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08D8"
    )
        port map (
      I0 => state(1),
      I1 => s_axis_listen_port_status_TVALID,
      I2 => \^q\(0),
      I3 => full_reg,
      O => load_p1
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \data_p1[0]_i_1__8_n_0\,
      Q => \^listenportstatus_v_din\,
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axis_listen_port_status_TDATA(0),
      I1 => \^s_axis_listen_port_status_tready\,
      I2 => s_axis_listen_port_status_TVALID,
      I3 => data_p2,
      O => \data_p2[0]_i_1_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \data_p2[0]_i_1_n_0\,
      Q => data_p2,
      R => '0'
    );
\gen_sr[15].mem_reg[15][0]_srl16_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => full_reg,
      O => p_12_out
    );
\s_ready_t_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0F30"
    )
        port map (
      I0 => s_axis_listen_port_status_TVALID,
      I1 => full_reg,
      I2 => \^q\(0),
      I3 => state(1),
      I4 => \^s_axis_listen_port_status_tready\,
      O => \s_ready_t_i_1__5_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__5_n_0\,
      Q => \^s_axis_listen_port_status_tready\,
      R => AS(0)
    );
\state[0]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF80DD80"
    )
        port map (
      I0 => state(1),
      I1 => s_axis_listen_port_status_TVALID,
      I2 => \^s_axis_listen_port_status_tready\,
      I3 => \^q\(0),
      I4 => full_reg,
      O => \state[0]_i_1__10_n_0\
    );
\state[1]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \^q\(0),
      I1 => full_reg,
      I2 => s_axis_listen_port_status_TVALID,
      I3 => state(1),
      O => \state[1]_i_1__6_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__10_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__6_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_notifications_reg_slice is
  port (
    s_axis_notifications_TREADY : out STD_LOGIC;
    \tmp_327_reg_468_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_327_reg_468_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \tmp_9_reg_464_reg[0]\ : out STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    s_axis_notifications_TVALID : in STD_LOGIC;
    s_axis_notifications_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tmp_9_reg_464 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_notifications_reg_slice : entity is "echo_server_application_s_axis_notifications_reg_slice";
end echo_server_application_ip_echo_server_application_s_axis_notifications_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_notifications_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal \echo_server_application_U/tmp_9_fu_401_p2\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^s_axis_notifications_tready\ : STD_LOGIC;
  signal \s_ready_t_i_1__6_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmp_327_reg_468[31]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_327_reg_468[31]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_327_reg_468[31]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_327_reg_468[31]_i_6_n_0\ : STD_LOGIC;
  signal \^tmp_327_reg_468_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp_327_reg_468[31]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tmp_9_reg_464[0]_i_1\ : label is "soft_lutpair17";
begin
  Q(0) <= \^q\(0);
  s_axis_notifications_TREADY <= \^s_axis_notifications_tready\;
  \tmp_327_reg_468_reg[31]_0\(31 downto 0) <= \^tmp_327_reg_468_reg[31]_0\(31 downto 0);
\data_p1[0]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1__6_n_0\
    );
\data_p1[10]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(10),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[10]\,
      O => \data_p1[10]_i_1__5_n_0\
    );
\data_p1[11]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(11),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[11]\,
      O => \data_p1[11]_i_1__5_n_0\
    );
\data_p1[12]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(12),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[12]\,
      O => \data_p1[12]_i_1__6_n_0\
    );
\data_p1[13]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(13),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[13]\,
      O => \data_p1[13]_i_1__5_n_0\
    );
\data_p1[14]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(14),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[14]\,
      O => \data_p1[14]_i_1__5_n_0\
    );
\data_p1[15]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(15),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[15]\,
      O => \data_p1[15]_i_1__5_n_0\
    );
\data_p1[16]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(16),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[16]\,
      O => \data_p1[16]_i_1__2_n_0\
    );
\data_p1[17]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(17),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[17]\,
      O => \data_p1[17]_i_1__1_n_0\
    );
\data_p1[18]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(18),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[18]\,
      O => \data_p1[18]_i_1__1_n_0\
    );
\data_p1[19]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(19),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[19]\,
      O => \data_p1[19]_i_1__1_n_0\
    );
\data_p1[1]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(1),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[1]\,
      O => \data_p1[1]_i_1__5_n_0\
    );
\data_p1[20]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(20),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[20]\,
      O => \data_p1[20]_i_1__1_n_0\
    );
\data_p1[21]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(21),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[21]\,
      O => \data_p1[21]_i_1__1_n_0\
    );
\data_p1[22]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(22),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[22]\,
      O => \data_p1[22]_i_1__1_n_0\
    );
\data_p1[23]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(23),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[23]\,
      O => \data_p1[23]_i_1__1_n_0\
    );
\data_p1[24]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(24),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[24]\,
      O => \data_p1[24]_i_1__1_n_0\
    );
\data_p1[25]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(25),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[25]\,
      O => \data_p1[25]_i_1__1_n_0\
    );
\data_p1[26]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(26),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[26]\,
      O => \data_p1[26]_i_1__1_n_0\
    );
\data_p1[27]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(27),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[27]\,
      O => \data_p1[27]_i_1__1_n_0\
    );
\data_p1[28]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(28),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[28]\,
      O => \data_p1[28]_i_1__1_n_0\
    );
\data_p1[29]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(29),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[29]\,
      O => \data_p1[29]_i_1__1_n_0\
    );
\data_p1[2]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(2),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[2]\,
      O => \data_p1[2]_i_1__5_n_0\
    );
\data_p1[30]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(30),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[30]\,
      O => \data_p1[30]_i_1__1_n_0\
    );
\data_p1[31]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F200020"
    )
        port map (
      I0 => ap_start,
      I1 => ap_reg_ppiten_pp0_it1_reg,
      I2 => \^q\(0),
      I3 => state(1),
      I4 => s_axis_notifications_TVALID,
      O => load_p1
    );
\data_p1[31]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(31),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[31]\,
      O => \data_p1[31]_i_2__0_n_0\
    );
\data_p1[3]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(3),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1__6_n_0\
    );
\data_p1[4]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(4),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[4]\,
      O => \data_p1[4]_i_1__5_n_0\
    );
\data_p1[5]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(5),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[5]\,
      O => \data_p1[5]_i_1__5_n_0\
    );
\data_p1[6]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(6),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[6]\,
      O => \data_p1[6]_i_1__5_n_0\
    );
\data_p1[7]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(7),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_1__6_n_0\
    );
\data_p1[8]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(8),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[8]\,
      O => \data_p1[8]_i_1__6_n_0\
    );
\data_p1[9]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_notifications_TDATA(9),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[9]\,
      O => \data_p1[9]_i_1__6_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__6_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__6_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[16]_i_1__2_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[17]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[18]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[19]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[20]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[21]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[22]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[23]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[24]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[25]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[26]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[27]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[28]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[29]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[30]_i_1__1_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[31]_i_2__0_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(31),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__6_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__5_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__6_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__6_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__6_n_0\,
      Q => \^tmp_327_reg_468_reg[31]_0\(9),
      R => '0'
    );
\data_p2[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_notifications_tready\,
      I1 => s_axis_notifications_TVALID,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_notifications_TDATA(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\s_ready_t_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7FFFF0030CCCC"
    )
        port map (
      I0 => s_axis_notifications_TVALID,
      I1 => state(1),
      I2 => ap_start,
      I3 => ap_reg_ppiten_pp0_it1_reg,
      I4 => \^q\(0),
      I5 => \^s_axis_notifications_tready\,
      O => \s_ready_t_i_1__6_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__6_n_0\,
      Q => \^s_axis_notifications_tready\,
      R => AS(0)
    );
\state[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFFFFF0000000"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it1_reg,
      I1 => ap_start,
      I2 => \^s_axis_notifications_tready\,
      I3 => s_axis_notifications_TVALID,
      I4 => state(1),
      I5 => \^q\(0),
      O => \state[0]_i_1__3_n_0\
    );
\state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4FFF4F"
    )
        port map (
      I0 => s_axis_notifications_TVALID,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => ap_start,
      I4 => ap_reg_ppiten_pp0_it1_reg,
      O => \state[1]_i_1__1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__3_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__1_n_0\,
      Q => state(1),
      S => AS(0)
    );
\tmp_327_reg_468[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it1_reg,
      I1 => \^q\(0),
      I2 => \echo_server_application_U/tmp_9_fu_401_p2\,
      O => \tmp_327_reg_468_reg[31]\(0)
    );
\tmp_327_reg_468[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \tmp_327_reg_468[31]_i_3_n_0\,
      I1 => \tmp_327_reg_468[31]_i_4_n_0\,
      I2 => \tmp_327_reg_468[31]_i_5_n_0\,
      I3 => \tmp_327_reg_468[31]_i_6_n_0\,
      O => \echo_server_application_U/tmp_9_fu_401_p2\
    );
\tmp_327_reg_468[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^tmp_327_reg_468_reg[31]_0\(23),
      I1 => \^tmp_327_reg_468_reg[31]_0\(22),
      I2 => \^tmp_327_reg_468_reg[31]_0\(21),
      I3 => \^tmp_327_reg_468_reg[31]_0\(20),
      O => \tmp_327_reg_468[31]_i_3_n_0\
    );
\tmp_327_reg_468[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^tmp_327_reg_468_reg[31]_0\(17),
      I1 => \^tmp_327_reg_468_reg[31]_0\(16),
      I2 => \^tmp_327_reg_468_reg[31]_0\(19),
      I3 => \^tmp_327_reg_468_reg[31]_0\(18),
      O => \tmp_327_reg_468[31]_i_4_n_0\
    );
\tmp_327_reg_468[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^tmp_327_reg_468_reg[31]_0\(27),
      I1 => \^tmp_327_reg_468_reg[31]_0\(26),
      I2 => \^tmp_327_reg_468_reg[31]_0\(25),
      I3 => \^tmp_327_reg_468_reg[31]_0\(24),
      O => \tmp_327_reg_468[31]_i_5_n_0\
    );
\tmp_327_reg_468[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^tmp_327_reg_468_reg[31]_0\(31),
      I1 => \^tmp_327_reg_468_reg[31]_0\(30),
      I2 => \^tmp_327_reg_468_reg[31]_0\(29),
      I3 => \^tmp_327_reg_468_reg[31]_0\(28),
      O => \tmp_327_reg_468[31]_i_6_n_0\
    );
\tmp_9_reg_464[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \echo_server_application_U/tmp_9_fu_401_p2\,
      I1 => \^q\(0),
      I2 => ap_reg_ppiten_pp0_it1_reg,
      I3 => tmp_9_reg_464,
      O => \tmp_9_reg_464_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_open_status_reg_slice is
  port (
    s_axis_open_status_TREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_7_reg_444_reg[0]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    s_axis_open_status_TVALID : in STD_LOGIC;
    s_axis_open_status_TDATA : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_open_status_reg_slice : entity is "echo_server_application_s_axis_open_status_reg_slice";
end echo_server_application_ip_echo_server_application_s_axis_open_status_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_open_status_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^s_axis_open_status_tready\ : STD_LOGIC;
  signal \s_ready_t_i_1__7_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[1]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tmp_7_reg_444[0]_i_1\ : label is "soft_lutpair18";
begin
  Q(0) <= \^q\(0);
  s_axis_open_status_TREADY <= \^s_axis_open_status_tready\;
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1__1_n_0\
    );
\data_p1[10]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(10),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[10]\,
      O => \data_p1[10]_i_1__1_n_0\
    );
\data_p1[11]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(11),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[11]\,
      O => \data_p1[11]_i_1__1_n_0\
    );
\data_p1[12]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(12),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[12]\,
      O => \data_p1[12]_i_1__2_n_0\
    );
\data_p1[13]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(13),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[13]\,
      O => \data_p1[13]_i_1__1_n_0\
    );
\data_p1[14]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(14),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[14]\,
      O => \data_p1[14]_i_1__1_n_0\
    );
\data_p1[15]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(15),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[15]\,
      O => \data_p1[15]_i_1__4_n_0\
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22F00200"
    )
        port map (
      I0 => ap_start,
      I1 => ap_reg_ppiten_pp0_it1_reg,
      I2 => state(1),
      I3 => \^q\(0),
      I4 => s_axis_open_status_TVALID,
      O => load_p1
    );
\data_p1[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(16),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[16]\,
      O => \data_p1[16]_i_2_n_0\
    );
\data_p1[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(1),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[1]\,
      O => \data_p1[1]_i_1__1_n_0\
    );
\data_p1[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(2),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[2]\,
      O => \data_p1[2]_i_1__1_n_0\
    );
\data_p1[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(3),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1__1_n_0\
    );
\data_p1[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(4),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[4]\,
      O => \data_p1[4]_i_1__1_n_0\
    );
\data_p1[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(5),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[5]\,
      O => \data_p1[5]_i_1__1_n_0\
    );
\data_p1[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(6),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[6]\,
      O => \data_p1[6]_i_1__1_n_0\
    );
\data_p1[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(7),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_1__1_n_0\
    );
\data_p1[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(8),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[8]\,
      O => \data_p1[8]_i_1__1_n_0\
    );
\data_p1[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_open_status_TDATA(9),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[9]\,
      O => \data_p1[9]_i_1__1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__2_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_1__4_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[16]_i_2_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(16),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__1_n_0\,
      Q => \tmp_7_reg_444_reg[0]\(9),
      R => '0'
    );
\data_p2[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_open_status_tready\,
      I1 => s_axis_open_status_TVALID,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_open_status_TDATA(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\s_ready_t_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFF7F0C0C3C0C"
    )
        port map (
      I0 => s_axis_open_status_TVALID,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => ap_start,
      I4 => ap_reg_ppiten_pp0_it1_reg,
      I5 => \^s_axis_open_status_tready\,
      O => \s_ready_t_i_1__7_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__7_n_0\,
      Q => \^s_axis_open_status_tready\,
      R => AS(0)
    );
\state[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBF000FFFF0000"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it1_reg,
      I1 => ap_start,
      I2 => \^s_axis_open_status_tready\,
      I3 => s_axis_open_status_TVALID,
      I4 => \^q\(0),
      I5 => state(1),
      O => \state[0]_i_1__4_n_0\
    );
\state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4FFF4F"
    )
        port map (
      I0 => s_axis_open_status_TVALID,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => ap_start,
      I4 => ap_reg_ppiten_pp0_it1_reg,
      O => \state[1]_i_1__2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__4_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__2_n_0\,
      Q => state(1),
      S => AS(0)
    );
\tmp_7_reg_444[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_reg_ppiten_pp0_it1_reg,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_rx_data_reg_slice is
  port (
    s_axis_rx_data_TREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ea_fsmState_V_reg[0]\ : out STD_LOGIC;
    \tmp_432_reg_490_reg[72]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_rx_data_TVALID : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    \ea_fsmState_V_reg[0]_0\ : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 72 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_rx_data_reg_slice : entity is "echo_server_application_s_axis_rx_data_reg_slice";
end echo_server_application_ip_echo_server_application_s_axis_rx_data_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_rx_data_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__7_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[30]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[37]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[38]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[39]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__7_n_0\ : STD_LOGIC;
  signal \data_p1[40]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[41]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[42]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[43]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[44]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[45]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[46]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[47]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[48]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[49]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[50]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[51]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[52]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[53]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[54]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[55]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[56]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[57]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[58]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[59]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[60]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[61]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[62]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[63]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[64]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[65]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[66]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[67]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[68]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[69]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[70]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[71]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[72]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__7_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__7_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__7_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[32]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[33]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[34]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[35]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[36]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[37]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[38]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[39]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[40]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[41]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[42]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[43]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[44]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[45]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[46]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[47]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[48]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[49]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[50]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[51]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[52]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[53]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[54]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[55]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[56]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[57]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[58]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[59]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[60]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[61]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[62]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[63]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[64]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[65]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[66]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[67]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[68]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[69]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[70]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[71]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[72]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^s_axis_rx_data_tready\ : STD_LOGIC;
  signal \s_ready_t_i_1__8_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \^tmp_432_reg_490_reg[72]\ : STD_LOGIC_VECTOR ( 72 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_ready_t_i_1__8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[0]_i_1__2\ : label is "soft_lutpair19";
begin
  Q(0) <= \^q\(0);
  s_axis_rx_data_TREADY <= \^s_axis_rx_data_tready\;
  \tmp_432_reg_490_reg[72]\(72 downto 0) <= \^tmp_432_reg_490_reg[72]\(72 downto 0);
\data_p1[0]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1__7_n_0\
    );
\data_p1[10]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(10),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[10]\,
      O => \data_p1[10]_i_1__6_n_0\
    );
\data_p1[11]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(11),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[11]\,
      O => \data_p1[11]_i_1__6_n_0\
    );
\data_p1[12]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(12),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[12]\,
      O => \data_p1[12]_i_1__7_n_0\
    );
\data_p1[13]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(13),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[13]\,
      O => \data_p1[13]_i_1__6_n_0\
    );
\data_p1[14]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(14),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[14]\,
      O => \data_p1[14]_i_1__6_n_0\
    );
\data_p1[15]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(15),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[15]\,
      O => \data_p1[15]_i_1__6_n_0\
    );
\data_p1[16]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(16),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[16]\,
      O => \data_p1[16]_i_1__3_n_0\
    );
\data_p1[17]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(17),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[17]\,
      O => \data_p1[17]_i_1__2_n_0\
    );
\data_p1[18]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(18),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[18]\,
      O => \data_p1[18]_i_1__2_n_0\
    );
\data_p1[19]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(19),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[19]\,
      O => \data_p1[19]_i_1__2_n_0\
    );
\data_p1[1]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(1),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[1]\,
      O => \data_p1[1]_i_1__6_n_0\
    );
\data_p1[20]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(20),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[20]\,
      O => \data_p1[20]_i_1__2_n_0\
    );
\data_p1[21]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(21),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[21]\,
      O => \data_p1[21]_i_1__2_n_0\
    );
\data_p1[22]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(22),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[22]\,
      O => \data_p1[22]_i_1__2_n_0\
    );
\data_p1[23]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(23),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[23]\,
      O => \data_p1[23]_i_1__2_n_0\
    );
\data_p1[24]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(24),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[24]\,
      O => \data_p1[24]_i_1__2_n_0\
    );
\data_p1[25]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(25),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[25]\,
      O => \data_p1[25]_i_1__2_n_0\
    );
\data_p1[26]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(26),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[26]\,
      O => \data_p1[26]_i_1__2_n_0\
    );
\data_p1[27]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(27),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[27]\,
      O => \data_p1[27]_i_1__2_n_0\
    );
\data_p1[28]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(28),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[28]\,
      O => \data_p1[28]_i_1__2_n_0\
    );
\data_p1[29]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(29),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[29]\,
      O => \data_p1[29]_i_1__2_n_0\
    );
\data_p1[2]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(2),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[2]\,
      O => \data_p1[2]_i_1__6_n_0\
    );
\data_p1[30]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(30),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[30]\,
      O => \data_p1[30]_i_1__2_n_0\
    );
\data_p1[31]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(31),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[31]\,
      O => \data_p1[31]_i_1__2_n_0\
    );
\data_p1[32]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(32),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[32]\,
      O => \data_p1[32]_i_1__0_n_0\
    );
\data_p1[33]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(33),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[33]\,
      O => \data_p1[33]_i_1__0_n_0\
    );
\data_p1[34]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(34),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[34]\,
      O => \data_p1[34]_i_1__0_n_0\
    );
\data_p1[35]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(35),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[35]\,
      O => \data_p1[35]_i_1__0_n_0\
    );
\data_p1[36]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(36),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[36]\,
      O => \data_p1[36]_i_1__0_n_0\
    );
\data_p1[37]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(37),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[37]\,
      O => \data_p1[37]_i_1__0_n_0\
    );
\data_p1[38]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(38),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[38]\,
      O => \data_p1[38]_i_1__0_n_0\
    );
\data_p1[39]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(39),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[39]\,
      O => \data_p1[39]_i_1__0_n_0\
    );
\data_p1[3]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(3),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1__7_n_0\
    );
\data_p1[40]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(40),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[40]\,
      O => \data_p1[40]_i_1__0_n_0\
    );
\data_p1[41]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(41),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[41]\,
      O => \data_p1[41]_i_1__0_n_0\
    );
\data_p1[42]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(42),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[42]\,
      O => \data_p1[42]_i_1__0_n_0\
    );
\data_p1[43]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(43),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[43]\,
      O => \data_p1[43]_i_1__0_n_0\
    );
\data_p1[44]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(44),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[44]\,
      O => \data_p1[44]_i_1__0_n_0\
    );
\data_p1[45]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(45),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[45]\,
      O => \data_p1[45]_i_1__0_n_0\
    );
\data_p1[46]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(46),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[46]\,
      O => \data_p1[46]_i_1__0_n_0\
    );
\data_p1[47]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(47),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[47]\,
      O => \data_p1[47]_i_1__0_n_0\
    );
\data_p1[48]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(48),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[48]\,
      O => \data_p1[48]_i_1__0_n_0\
    );
\data_p1[49]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(49),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[49]\,
      O => \data_p1[49]_i_1__0_n_0\
    );
\data_p1[4]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(4),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[4]\,
      O => \data_p1[4]_i_1__6_n_0\
    );
\data_p1[50]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(50),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[50]\,
      O => \data_p1[50]_i_1__0_n_0\
    );
\data_p1[51]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(51),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[51]\,
      O => \data_p1[51]_i_1__0_n_0\
    );
\data_p1[52]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(52),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[52]\,
      O => \data_p1[52]_i_1__0_n_0\
    );
\data_p1[53]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(53),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[53]\,
      O => \data_p1[53]_i_1__0_n_0\
    );
\data_p1[54]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(54),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[54]\,
      O => \data_p1[54]_i_1__0_n_0\
    );
\data_p1[55]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(55),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[55]\,
      O => \data_p1[55]_i_1__0_n_0\
    );
\data_p1[56]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(56),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[56]\,
      O => \data_p1[56]_i_1__0_n_0\
    );
\data_p1[57]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(57),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[57]\,
      O => \data_p1[57]_i_1__0_n_0\
    );
\data_p1[58]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(58),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[58]\,
      O => \data_p1[58]_i_1__0_n_0\
    );
\data_p1[59]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(59),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[59]\,
      O => \data_p1[59]_i_1__0_n_0\
    );
\data_p1[5]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(5),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[5]\,
      O => \data_p1[5]_i_1__6_n_0\
    );
\data_p1[60]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(60),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[60]\,
      O => \data_p1[60]_i_1__0_n_0\
    );
\data_p1[61]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(61),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[61]\,
      O => \data_p1[61]_i_1__0_n_0\
    );
\data_p1[62]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(62),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[62]\,
      O => \data_p1[62]_i_1__0_n_0\
    );
\data_p1[63]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(63),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[63]\,
      O => \data_p1[63]_i_1__0_n_0\
    );
\data_p1[64]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(64),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[64]\,
      O => \data_p1[64]_i_1__0_n_0\
    );
\data_p1[65]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(65),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[65]\,
      O => \data_p1[65]_i_1__0_n_0\
    );
\data_p1[66]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(66),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[66]\,
      O => \data_p1[66]_i_1__0_n_0\
    );
\data_p1[67]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(67),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[67]\,
      O => \data_p1[67]_i_1__0_n_0\
    );
\data_p1[68]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(68),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[68]\,
      O => \data_p1[68]_i_1__0_n_0\
    );
\data_p1[69]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(69),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[69]\,
      O => \data_p1[69]_i_1__0_n_0\
    );
\data_p1[6]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(6),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[6]\,
      O => \data_p1[6]_i_1__6_n_0\
    );
\data_p1[70]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(70),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[70]\,
      O => \data_p1[70]_i_1__0_n_0\
    );
\data_p1[71]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(71),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[71]\,
      O => \data_p1[71]_i_1__0_n_0\
    );
\data_p1[72]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D0000088888888"
    )
        port map (
      I0 => state(1),
      I1 => s_axis_rx_data_TVALID,
      I2 => ap_start,
      I3 => ap_reg_ppiten_pp0_it1_reg,
      I4 => \ea_fsmState_V_reg[0]_0\,
      I5 => \^q\(0),
      O => load_p1
    );
\data_p1[72]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(72),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[72]\,
      O => \data_p1[72]_i_2_n_0\
    );
\data_p1[7]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(7),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_1__7_n_0\
    );
\data_p1[8]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(8),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[8]\,
      O => \data_p1[8]_i_1__7_n_0\
    );
\data_p1[9]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(9),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[9]\,
      O => \data_p1[9]_i_1__7_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__7_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__7_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[16]_i_1__3_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[17]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[18]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[19]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[20]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[21]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[22]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[23]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[24]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[25]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[26]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[27]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[28]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[29]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[30]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[31]_i_1__2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(31),
      R => '0'
    );
\data_p1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[32]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(32),
      R => '0'
    );
\data_p1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[33]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(33),
      R => '0'
    );
\data_p1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[34]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(34),
      R => '0'
    );
\data_p1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[35]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(35),
      R => '0'
    );
\data_p1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[36]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(36),
      R => '0'
    );
\data_p1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[37]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(37),
      R => '0'
    );
\data_p1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[38]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(38),
      R => '0'
    );
\data_p1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[39]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(39),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__7_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(3),
      R => '0'
    );
\data_p1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[40]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(40),
      R => '0'
    );
\data_p1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[41]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(41),
      R => '0'
    );
\data_p1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[42]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(42),
      R => '0'
    );
\data_p1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[43]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(43),
      R => '0'
    );
\data_p1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[44]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(44),
      R => '0'
    );
\data_p1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[45]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(45),
      R => '0'
    );
\data_p1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[46]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(46),
      R => '0'
    );
\data_p1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[47]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(47),
      R => '0'
    );
\data_p1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[48]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(48),
      R => '0'
    );
\data_p1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[49]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(49),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(4),
      R => '0'
    );
\data_p1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[50]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(50),
      R => '0'
    );
\data_p1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[51]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(51),
      R => '0'
    );
\data_p1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[52]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(52),
      R => '0'
    );
\data_p1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[53]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(53),
      R => '0'
    );
\data_p1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[54]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(54),
      R => '0'
    );
\data_p1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[55]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(55),
      R => '0'
    );
\data_p1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[56]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(56),
      R => '0'
    );
\data_p1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[57]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(57),
      R => '0'
    );
\data_p1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[58]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(58),
      R => '0'
    );
\data_p1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[59]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(59),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(5),
      R => '0'
    );
\data_p1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[60]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(60),
      R => '0'
    );
\data_p1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[61]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(61),
      R => '0'
    );
\data_p1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[62]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(62),
      R => '0'
    );
\data_p1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[63]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(63),
      R => '0'
    );
\data_p1_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[64]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(64),
      R => '0'
    );
\data_p1_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[65]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(65),
      R => '0'
    );
\data_p1_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[66]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(66),
      R => '0'
    );
\data_p1_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[67]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(67),
      R => '0'
    );
\data_p1_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[68]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(68),
      R => '0'
    );
\data_p1_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[69]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(69),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__6_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(6),
      R => '0'
    );
\data_p1_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[70]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(70),
      R => '0'
    );
\data_p1_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[71]_i_1__0_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(71),
      R => '0'
    );
\data_p1_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[72]_i_2_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(72),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__7_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__7_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__7_n_0\,
      Q => \^tmp_432_reg_490_reg[72]\(9),
      R => '0'
    );
\data_p2[72]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_rx_data_tready\,
      I1 => s_axis_rx_data_TVALID,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(32),
      Q => \data_p2_reg_n_0_[32]\,
      R => '0'
    );
\data_p2_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(33),
      Q => \data_p2_reg_n_0_[33]\,
      R => '0'
    );
\data_p2_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(34),
      Q => \data_p2_reg_n_0_[34]\,
      R => '0'
    );
\data_p2_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(35),
      Q => \data_p2_reg_n_0_[35]\,
      R => '0'
    );
\data_p2_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(36),
      Q => \data_p2_reg_n_0_[36]\,
      R => '0'
    );
\data_p2_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(37),
      Q => \data_p2_reg_n_0_[37]\,
      R => '0'
    );
\data_p2_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(38),
      Q => \data_p2_reg_n_0_[38]\,
      R => '0'
    );
\data_p2_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(39),
      Q => \data_p2_reg_n_0_[39]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(40),
      Q => \data_p2_reg_n_0_[40]\,
      R => '0'
    );
\data_p2_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(41),
      Q => \data_p2_reg_n_0_[41]\,
      R => '0'
    );
\data_p2_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(42),
      Q => \data_p2_reg_n_0_[42]\,
      R => '0'
    );
\data_p2_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(43),
      Q => \data_p2_reg_n_0_[43]\,
      R => '0'
    );
\data_p2_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(44),
      Q => \data_p2_reg_n_0_[44]\,
      R => '0'
    );
\data_p2_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(45),
      Q => \data_p2_reg_n_0_[45]\,
      R => '0'
    );
\data_p2_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(46),
      Q => \data_p2_reg_n_0_[46]\,
      R => '0'
    );
\data_p2_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(47),
      Q => \data_p2_reg_n_0_[47]\,
      R => '0'
    );
\data_p2_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(48),
      Q => \data_p2_reg_n_0_[48]\,
      R => '0'
    );
\data_p2_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(49),
      Q => \data_p2_reg_n_0_[49]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(50),
      Q => \data_p2_reg_n_0_[50]\,
      R => '0'
    );
\data_p2_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(51),
      Q => \data_p2_reg_n_0_[51]\,
      R => '0'
    );
\data_p2_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(52),
      Q => \data_p2_reg_n_0_[52]\,
      R => '0'
    );
\data_p2_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(53),
      Q => \data_p2_reg_n_0_[53]\,
      R => '0'
    );
\data_p2_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(54),
      Q => \data_p2_reg_n_0_[54]\,
      R => '0'
    );
\data_p2_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(55),
      Q => \data_p2_reg_n_0_[55]\,
      R => '0'
    );
\data_p2_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(56),
      Q => \data_p2_reg_n_0_[56]\,
      R => '0'
    );
\data_p2_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(57),
      Q => \data_p2_reg_n_0_[57]\,
      R => '0'
    );
\data_p2_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(58),
      Q => \data_p2_reg_n_0_[58]\,
      R => '0'
    );
\data_p2_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(59),
      Q => \data_p2_reg_n_0_[59]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(60),
      Q => \data_p2_reg_n_0_[60]\,
      R => '0'
    );
\data_p2_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(61),
      Q => \data_p2_reg_n_0_[61]\,
      R => '0'
    );
\data_p2_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(62),
      Q => \data_p2_reg_n_0_[62]\,
      R => '0'
    );
\data_p2_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(63),
      Q => \data_p2_reg_n_0_[63]\,
      R => '0'
    );
\data_p2_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(64),
      Q => \data_p2_reg_n_0_[64]\,
      R => '0'
    );
\data_p2_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(65),
      Q => \data_p2_reg_n_0_[65]\,
      R => '0'
    );
\data_p2_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(66),
      Q => \data_p2_reg_n_0_[66]\,
      R => '0'
    );
\data_p2_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(67),
      Q => \data_p2_reg_n_0_[67]\,
      R => '0'
    );
\data_p2_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(68),
      Q => \data_p2_reg_n_0_[68]\,
      R => '0'
    );
\data_p2_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(69),
      Q => \data_p2_reg_n_0_[69]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(70),
      Q => \data_p2_reg_n_0_[70]\,
      R => '0'
    );
\data_p2_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(71),
      Q => \data_p2_reg_n_0_[71]\,
      R => '0'
    );
\data_p2_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(72),
      Q => \data_p2_reg_n_0_[72]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => D(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\ea_fsmState_V[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700FF00F70CFF0C"
    )
        port map (
      I0 => \^tmp_432_reg_490_reg[72]\(72),
      I1 => ap_start,
      I2 => ap_reg_ppiten_pp0_it1_reg,
      I3 => \ea_fsmState_V_reg[0]_0\,
      I4 => \^q\(0),
      I5 => empty_reg,
      O => \ea_fsmState_V_reg[0]\
    );
\s_ready_t_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0CFC"
    )
        port map (
      I0 => s_axis_rx_data_TVALID,
      I1 => ap_reg_ppiten_pp0_it1_reg_0,
      I2 => state(1),
      I3 => \^q\(0),
      I4 => \^s_axis_rx_data_tready\,
      O => \s_ready_t_i_1__8_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__8_n_0\,
      Q => \^s_axis_rx_data_tready\,
      R => AS(0)
    );
\state[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFF8080"
    )
        port map (
      I0 => s_axis_rx_data_TVALID,
      I1 => state(1),
      I2 => \^s_axis_rx_data_tready\,
      I3 => ap_reg_ppiten_pp0_it1_reg_0,
      I4 => \^q\(0),
      O => \state[0]_i_1__2_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2FFF2F2F2F2F2F"
    )
        port map (
      I0 => state(1),
      I1 => s_axis_rx_data_TVALID,
      I2 => \^q\(0),
      I3 => \ea_fsmState_V_reg[0]_0\,
      I4 => ap_reg_ppiten_pp0_it1_reg,
      I5 => ap_start,
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__2_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_rx_metadata_fifo is
  port (
    \index_reg[1]_0\ : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    \ea_fsmState_V_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    ea_fsmState_V4_out : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_rx_metadata_fifo : entity is "echo_server_application_s_axis_rx_metadata_fifo";
end echo_server_application_ip_echo_server_application_s_axis_rx_metadata_fifo;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_rx_metadata_fifo is
  signal empty_i_1_n_0 : STD_LOGIC;
  signal \empty_i_2__3_n_0\ : STD_LOGIC;
  signal \full_i_1__3_n_0\ : STD_LOGIC;
  signal \full_i_2__3_n_0\ : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \index[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \index[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \index[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \index[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \index[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \^index_reg[1]_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_i_2__3\ : label is "soft_lutpair22";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \gen_sr[15].mem_reg[15][0]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][0]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][10]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][10]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][10]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][11]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][11]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][11]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][12]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][12]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][13]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][13]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][13]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][14]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][14]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][14]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][15]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][15]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][15]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][1]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][1]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][1]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][2]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][2]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][2]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][3]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][3]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][4]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][4]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][4]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][5]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][5]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][5]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][6]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][6]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][6]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][7]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][7]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][8]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][8]_srl16 ";
  attribute srl_bus_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15] ";
  attribute srl_name of \gen_sr[15].mem_reg[15][9]_srl16\ : label is "inst/\echo_server_application_s_axis_rx_metadata_if_U/rxMetaData_V_V_fifo/gen_sr[15].mem_reg[15][9]_srl16 ";
  attribute SOFT_HLUTNM of \index[0]_i_1__3\ : label is "soft_lutpair22";
begin
  full_reg_0 <= \^full_reg_0\;
  \index_reg[1]_0\ <= \^index_reg[1]_0\;
empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF020000FF00"
    )
        port map (
      I0 => ap_start,
      I1 => ap_reg_ppiten_pp0_it1_reg,
      I2 => \ea_fsmState_V_reg[0]\,
      I3 => \^index_reg[1]_0\,
      I4 => p_12_out,
      I5 => \empty_i_2__3_n_0\,
      O => empty_i_1_n_0
    );
\empty_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(3),
      I3 => \index_reg__0\(2),
      O => \empty_i_2__3_n_0\
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => empty_i_1_n_0,
      PRE => AS(0),
      Q => \^index_reg[1]_0\
    );
\full_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFFAAA8AAAA"
    )
        port map (
      I0 => \^full_reg_0\,
      I1 => \^index_reg[1]_0\,
      I2 => \ea_fsmState_V_reg[0]\,
      I3 => ap_reg_ppiten_pp0_it1_reg,
      I4 => ap_start,
      I5 => \full_i_2__3_n_0\,
      O => \full_i_1__3_n_0\
    );
\full_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(3),
      I2 => \index_reg__0\(1),
      I3 => \index_reg__0\(0),
      I4 => \^full_reg_0\,
      I5 => Q(0),
      O => \full_i_2__3_n_0\
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => AS(0),
      D => \full_i_1__3_n_0\,
      Q => \^full_reg_0\
    );
\gen_sr[15].mem_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(0),
      Q => \out\(0)
    );
\gen_sr[15].mem_reg[15][10]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(10),
      Q => \out\(10)
    );
\gen_sr[15].mem_reg[15][11]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(11),
      Q => \out\(11)
    );
\gen_sr[15].mem_reg[15][12]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(12),
      Q => \out\(12)
    );
\gen_sr[15].mem_reg[15][13]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(13),
      Q => \out\(13)
    );
\gen_sr[15].mem_reg[15][14]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(14),
      Q => \out\(14)
    );
\gen_sr[15].mem_reg[15][15]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(15),
      Q => \out\(15)
    );
\gen_sr[15].mem_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(1),
      Q => \out\(1)
    );
\gen_sr[15].mem_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(2),
      Q => \out\(2)
    );
\gen_sr[15].mem_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(3),
      Q => \out\(3)
    );
\gen_sr[15].mem_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(4),
      Q => \out\(4)
    );
\gen_sr[15].mem_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(5),
      Q => \out\(5)
    );
\gen_sr[15].mem_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(6),
      Q => \out\(6)
    );
\gen_sr[15].mem_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(7),
      Q => \out\(7)
    );
\gen_sr[15].mem_reg[15][8]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(8)
    );
\gen_sr[15].mem_reg[15][9]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \index_reg__0\(0),
      A1 => \index_reg__0\(1),
      A2 => \index_reg__0\(2),
      A3 => \index_reg__0\(3),
      CE => p_12_out,
      CLK => aclk,
      D => \in\(9),
      Q => \out\(9)
    );
\index[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => \index[0]_i_1__3_n_0\
    );
\index[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555559AAAAAAA6"
    )
        port map (
      I0 => \index_reg__0\(0),
      I1 => ap_reg_ppiten_pp0_it1_reg_0,
      I2 => \ea_fsmState_V_reg[0]\,
      I3 => \^index_reg[1]_0\,
      I4 => p_12_out,
      I5 => \index_reg__0\(1),
      O => \index[1]_i_1__2_n_0\
    );
\index[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF7500FF75008A"
    )
        port map (
      I0 => ea_fsmState_V4_out,
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => \index_reg__0\(0),
      I4 => \index_reg__0\(2),
      I5 => \index_reg__0\(1),
      O => \index[2]_i_1__2_n_0\
    );
\index[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFD00020002"
    )
        port map (
      I0 => ap_start,
      I1 => ap_reg_ppiten_pp0_it1_reg,
      I2 => \ea_fsmState_V_reg[0]\,
      I3 => \^index_reg[1]_0\,
      I4 => \^full_reg_0\,
      I5 => Q(0),
      O => \index[3]_i_1__2_n_0\
    );
\index[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6A6AAAA9AAAA"
    )
        port map (
      I0 => \index_reg__0\(3),
      I1 => \index_reg__0\(2),
      I2 => \index_reg__0\(0),
      I3 => p_12_out,
      I4 => ea_fsmState_V4_out,
      I5 => \index_reg__0\(1),
      O => \index[3]_i_2__2_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__2_n_0\,
      D => \index[0]_i_1__3_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(0)
    );
\index_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__2_n_0\,
      D => \index[1]_i_1__2_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(1)
    );
\index_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__2_n_0\,
      D => \index[2]_i_1__2_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(2)
    );
\index_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__2_n_0\,
      D => \index[3]_i_2__2_n_0\,
      PRE => AS(0),
      Q => \index_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_rx_metadata_reg_slice is
  port (
    s_axis_rx_metadata_TREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_out : out STD_LOGIC;
    \tmp_V_2_reg_481_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_rx_metadata_TVALID : in STD_LOGIC;
    full_reg : in STD_LOGIC;
    s_axis_rx_metadata_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_rx_metadata_reg_slice : entity is "echo_server_application_s_axis_rx_metadata_reg_slice";
end echo_server_application_ip_echo_server_application_s_axis_rx_metadata_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_rx_metadata_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_2__1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^s_axis_rx_metadata_tready\ : STD_LOGIC;
  signal \s_ready_t_i_1__9_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__8_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_sr[15].mem_reg[15][0]_srl16_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_ready_t_i_1__9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[0]_i_1__8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[1]_i_1__7\ : label is "soft_lutpair21";
begin
  Q(0) <= \^q\(0);
  s_axis_rx_metadata_TREADY <= \^s_axis_rx_metadata_tready\;
\data_p1[0]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(0),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1__5_n_0\
    );
\data_p1[10]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(10),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[10]\,
      O => \data_p1[10]_i_1__4_n_0\
    );
\data_p1[11]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(11),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[11]\,
      O => \data_p1[11]_i_1__4_n_0\
    );
\data_p1[12]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(12),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[12]\,
      O => \data_p1[12]_i_1__5_n_0\
    );
\data_p1[13]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(13),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[13]\,
      O => \data_p1[13]_i_1__4_n_0\
    );
\data_p1[14]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(14),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[14]\,
      O => \data_p1[14]_i_1__4_n_0\
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08D8"
    )
        port map (
      I0 => state(1),
      I1 => s_axis_rx_metadata_TVALID,
      I2 => \^q\(0),
      I3 => full_reg,
      O => load_p1
    );
\data_p1[15]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(15),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[15]\,
      O => \data_p1[15]_i_2__1_n_0\
    );
\data_p1[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(1),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[1]\,
      O => \data_p1[1]_i_1__4_n_0\
    );
\data_p1[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(2),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[2]\,
      O => \data_p1[2]_i_1__4_n_0\
    );
\data_p1[3]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(3),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1__5_n_0\
    );
\data_p1[4]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(4),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[4]\,
      O => \data_p1[4]_i_1__4_n_0\
    );
\data_p1[5]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(5),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[5]\,
      O => \data_p1[5]_i_1__4_n_0\
    );
\data_p1[6]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(6),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[6]\,
      O => \data_p1[6]_i_1__4_n_0\
    );
\data_p1[7]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(7),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_1__5_n_0\
    );
\data_p1[8]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(8),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[8]\,
      O => \data_p1[8]_i_1__5_n_0\
    );
\data_p1[9]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_rx_metadata_TDATA(9),
      I1 => state(1),
      I2 => \^q\(0),
      I3 => \data_p2_reg_n_0_[9]\,
      O => \data_p1[9]_i_1__5_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__5_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__5_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_2__1_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(15),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__5_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__4_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__5_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__5_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__5_n_0\,
      Q => \tmp_V_2_reg_481_reg[15]\(9),
      R => '0'
    );
\data_p2[15]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_rx_metadata_tready\,
      I1 => s_axis_rx_metadata_TVALID,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => s_axis_rx_metadata_TDATA(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\gen_sr[15].mem_reg[15][0]_srl16_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => full_reg,
      O => p_12_out
    );
\s_ready_t_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0C3C"
    )
        port map (
      I0 => s_axis_rx_metadata_TVALID,
      I1 => state(1),
      I2 => \^q\(0),
      I3 => full_reg,
      I4 => \^s_axis_rx_metadata_tready\,
      O => \s_ready_t_i_1__9_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__9_n_0\,
      Q => \^s_axis_rx_metadata_tready\,
      R => AS(0)
    );
\state[0]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFC000"
    )
        port map (
      I0 => full_reg,
      I1 => \^s_axis_rx_metadata_tready\,
      I2 => state(1),
      I3 => s_axis_rx_metadata_TVALID,
      I4 => \^q\(0),
      O => \state[0]_i_1__8_n_0\
    );
\state[1]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \^q\(0),
      I1 => full_reg,
      I2 => s_axis_rx_metadata_TVALID,
      I3 => state(1),
      O => \state[1]_i_1__7_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__8_n_0\,
      Q => \^q\(0),
      R => AS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__7_n_0\,
      Q => state(1),
      S => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_tx_status_fifo is
  port (
    full_reg_0 : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[2]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    empty_reg_0 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_tx_status_fifo : entity is "echo_server_application_s_axis_tx_status_fifo";
end echo_server_application_ip_echo_server_application_s_axis_tx_status_fifo;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_tx_status_fifo is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \empty_i_1__4_n_0\ : STD_LOGIC;
  signal \empty_i_2__4_n_0\ : STD_LOGIC;
  signal \full_i_1__4_n_0\ : STD_LOGIC;
  signal \full_i_2__4_n_0\ : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \index[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \index[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \index[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \index[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \index[3]_i_2__4_n_0\ : STD_LOGIC;
  signal \^index_reg[2]_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_i_2__4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \index[0]_i_1__4\ : label is "soft_lutpair25";
begin
  SS(0) <= \^ss\(0);
  full_reg_0 <= \^full_reg_0\;
  \index_reg[2]_0\ <= \^index_reg[2]_0\;
\empty_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB00B0BBBB0000"
    )
        port map (
      I0 => \^full_reg_0\,
      I1 => Q(0),
      I2 => ap_start,
      I3 => ap_reg_ppiten_pp0_it1_reg,
      I4 => \^index_reg[2]_0\,
      I5 => \empty_i_2__4_n_0\,
      O => \empty_i_1__4_n_0\
    );
\empty_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(3),
      I3 => \index_reg__0\(2),
      O => \empty_i_2__4_n_0\
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \empty_i_1__4_n_0\,
      PRE => \^ss\(0),
      Q => \^index_reg[2]_0\
    );
\full_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFFA8AA"
    )
        port map (
      I0 => \^full_reg_0\,
      I1 => \^index_reg[2]_0\,
      I2 => ap_reg_ppiten_pp0_it1_reg,
      I3 => ap_start,
      I4 => \full_i_2__4_n_0\,
      O => \full_i_1__4_n_0\
    );
\full_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(3),
      I2 => \index_reg__0\(1),
      I3 => \index_reg__0\(0),
      I4 => \^full_reg_0\,
      I5 => Q(0),
      O => \full_i_2__4_n_0\
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ss\(0),
      D => \full_i_1__4_n_0\,
      Q => \^full_reg_0\
    );
\index[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => \index[0]_i_1__4_n_0\
    );
\index[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55559A55AAAA65AA"
    )
        port map (
      I0 => \index_reg__0\(0),
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => ap_reg_ppiten_pp0_it1_reg_0,
      I4 => \^index_reg[2]_0\,
      I5 => \index_reg__0\(1),
      O => \index[1]_i_1__4_n_0\
    );
\index[2]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFB00FFFB0004"
    )
        port map (
      I0 => \state_reg[0]\,
      I1 => ap_reg_ppiten_pp0_it1_reg_0,
      I2 => \^index_reg[2]_0\,
      I3 => \index_reg__0\(0),
      I4 => \index_reg__0\(2),
      I5 => \index_reg__0\(1),
      O => \index[2]_i_1__4_n_0\
    );
\index[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010EF10"
    )
        port map (
      I0 => \^index_reg[2]_0\,
      I1 => ap_reg_ppiten_pp0_it1_reg,
      I2 => ap_start,
      I3 => Q(0),
      I4 => \^full_reg_0\,
      O => \index[3]_i_1__4_n_0\
    );
\index[3]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6AAAAAAAAAA9"
    )
        port map (
      I0 => \index_reg__0\(3),
      I1 => \index_reg__0\(2),
      I2 => \index_reg__0\(0),
      I3 => empty_reg_0,
      I4 => \state_reg[0]\,
      I5 => \index_reg__0\(1),
      O => \index[3]_i_2__4_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__4_n_0\,
      D => \index[0]_i_1__4_n_0\,
      PRE => \^ss\(0),
      Q => \index_reg__0\(0)
    );
\index_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__4_n_0\,
      D => \index[1]_i_1__4_n_0\,
      PRE => \^ss\(0),
      Q => \index_reg__0\(1)
    );
\index_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__4_n_0\,
      D => \index[2]_i_1__4_n_0\,
      PRE => \^ss\(0),
      Q => \index_reg__0\(2)
    );
\index_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \index[3]_i_1__4_n_0\,
      D => \index[3]_i_2__4_n_0\,
      PRE => \^ss\(0),
      Q => \index_reg__0\(3)
    );
\state[0]_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_tx_status_reg_slice is
  port (
    s_axis_tx_status_TREADY : out STD_LOGIC;
    \index_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    full_reg : in STD_LOGIC;
    s_axis_tx_status_TVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_tx_status_reg_slice : entity is "echo_server_application_s_axis_tx_status_reg_slice";
end echo_server_application_ip_echo_server_application_s_axis_tx_status_reg_slice;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_tx_status_reg_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axis_tx_status_tready\ : STD_LOGIC;
  signal \s_ready_t_i_1__10_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__9_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__8_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \index[3]_i_4__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_ready_t_i_1__10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[0]_i_1__9\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[1]_i_1__8\ : label is "soft_lutpair24";
begin
  Q(0) <= \^q\(0);
  s_axis_tx_status_TREADY <= \^s_axis_tx_status_tready\;
\index[3]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => full_reg,
      O => \index_reg[2]\
    );
\s_ready_t_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0F30"
    )
        port map (
      I0 => s_axis_tx_status_TVALID,
      I1 => full_reg,
      I2 => \^q\(0),
      I3 => state(1),
      I4 => \^s_axis_tx_status_tready\,
      O => \s_ready_t_i_1__10_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__10_n_0\,
      Q => \^s_axis_tx_status_tready\,
      R => SS(0)
    );
\state[0]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFC000"
    )
        port map (
      I0 => full_reg,
      I1 => s_axis_tx_status_TVALID,
      I2 => state(1),
      I3 => \^s_axis_tx_status_tready\,
      I4 => \^q\(0),
      O => \state[0]_i_1__9_n_0\
    );
\state[1]_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => \^q\(0),
      I1 => full_reg,
      I2 => s_axis_tx_status_TVALID,
      I3 => state(1),
      O => \state[1]_i_1__8_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__9_n_0\,
      Q => \^q\(0),
      R => SS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__8_n_0\,
      Q => state(1),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_close_connection_if is
  port (
    full_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_close_connection_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    m_axis_close_connection_TREADY : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_close_connection_if : entity is "echo_server_application_m_axis_close_connection_if";
end echo_server_application_ip_echo_server_application_m_axis_close_connection_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_close_connection_if is
  signal closeConnection_V_V_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal closeConnection_V_V_fifo_n_1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal s_ready : STD_LOGIC;
begin
closeConnection_V_V_fifo: entity work.echo_server_application_ip_echo_server_application_m_axis_close_connection_fifo
     port map (
      AS(0) => AS(0),
      E(0) => load_p2,
      aclk => aclk,
      full_reg_0 => full_reg,
      full_reg_1 => closeConnection_V_V_fifo_n_1,
      \in\(15 downto 0) => \in\(15 downto 0),
      \out\(15 downto 0) => closeConnection_V_V_dout(15 downto 0),
      p_12_out => p_12_out,
      s_ready => s_ready
    );
rs: entity work.echo_server_application_ip_echo_server_application_m_axis_close_connection_reg_slice
     port map (
      AS(0) => AS(0),
      D(15 downto 0) => closeConnection_V_V_dout(15 downto 0),
      E(0) => load_p2,
      Q(0) => Q(0),
      aclk => aclk,
      empty_reg => closeConnection_V_V_fifo_n_1,
      m_axis_close_connection_TDATA(15 downto 0) => m_axis_close_connection_TDATA(15 downto 0),
      m_axis_close_connection_TREADY => m_axis_close_connection_TREADY,
      s_ready => s_ready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_listen_port_if is
  port (
    full_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_listen_port_TDATA : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    m_axis_listen_port_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_listen_port_if : entity is "echo_server_application_m_axis_listen_port_if";
end echo_server_application_ip_echo_server_application_m_axis_listen_port_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_listen_port_if is
  signal listenPort_V_V_dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal listenPort_V_V_fifo_n_1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal s_ready : STD_LOGIC;
begin
listenPort_V_V_fifo: entity work.echo_server_application_ip_echo_server_application_m_axis_listen_port_fifo
     port map (
      AS(0) => AS(0),
      E(0) => load_p2,
      aclk => aclk,
      full_reg_0 => full_reg,
      full_reg_1 => listenPort_V_V_fifo_n_1,
      \out\(5) => listenPort_V_V_dout(12),
      \out\(4 downto 2) => listenPort_V_V_dout(9 downto 7),
      \out\(1) => listenPort_V_V_dout(3),
      \out\(0) => listenPort_V_V_dout(0),
      p_12_out => p_12_out,
      s_ready => s_ready
    );
rs: entity work.echo_server_application_ip_echo_server_application_m_axis_listen_port_reg_slice
     port map (
      AS(0) => AS(0),
      D(5) => listenPort_V_V_dout(12),
      D(4 downto 2) => listenPort_V_V_dout(9 downto 7),
      D(1) => listenPort_V_V_dout(3),
      D(0) => listenPort_V_V_dout(0),
      E(0) => load_p2,
      Q(0) => Q(0),
      aclk => aclk,
      empty_reg => listenPort_V_V_fifo_n_1,
      m_axis_listen_port_TDATA(5 downto 0) => m_axis_listen_port_TDATA(5 downto 0),
      m_axis_listen_port_TREADY => m_axis_listen_port_TREADY,
      s_ready => s_ready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_open_connection_if is
  port (
    sig_echo_server_application_openConnection_V_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    tmp_reg_435 : in STD_LOGIC;
    m_axis_open_connection_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_open_connection_if : entity is "echo_server_application_m_axis_open_connection_if";
end echo_server_application_ip_echo_server_application_m_axis_open_connection_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_open_connection_if is
begin
rs: entity work.echo_server_application_ip_echo_server_application_m_axis_open_connection_reg_slice
     port map (
      AS(0) => AS(0),
      Q(0) => Q(0),
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => ap_reg_ppiten_pp0_it1_reg,
      m_axis_open_connection_TREADY => m_axis_open_connection_TREADY,
      sig_echo_server_application_openConnection_V_full_n => sig_echo_server_application_openConnection_V_full_n,
      tmp_reg_435 => tmp_reg_435
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_read_package_if is
  port (
    sig_echo_server_application_readRequest_V_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_read_package_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_read_package_TREADY : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_read_package_if : entity is "echo_server_application_m_axis_read_package_if";
end echo_server_application_ip_echo_server_application_m_axis_read_package_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_read_package_if is
begin
rs: entity work.echo_server_application_ip_echo_server_application_m_axis_read_package_reg_slice
     port map (
      AS(0) => AS(0),
      D(31 downto 0) => D(31 downto 0),
      Q(0) => Q(0),
      aclk => aclk,
      load_p2 => load_p2,
      m_axis_read_package_TDATA(31 downto 0) => m_axis_read_package_TDATA(31 downto 0),
      m_axis_read_package_TREADY => m_axis_read_package_TREADY,
      sig_echo_server_application_readRequest_V_full_n => sig_echo_server_application_readRequest_V_full_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_tx_data_if is
  port (
    sig_echo_server_application_txData_V_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axis_tx_data_TLAST[0]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_tx_data_TREADY : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 72 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_tx_data_if : entity is "echo_server_application_m_axis_tx_data_if";
end echo_server_application_ip_echo_server_application_m_axis_tx_data_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_tx_data_if is
begin
rs: entity work.echo_server_application_ip_echo_server_application_m_axis_tx_data_reg_slice
     port map (
      AS(0) => AS(0),
      D(72 downto 0) => D(72 downto 0),
      Q(0) => Q(0),
      aclk => aclk,
      load_p2 => load_p2,
      \m_axis_tx_data_TLAST[0]\(72 downto 0) => \m_axis_tx_data_TLAST[0]\(72 downto 0),
      m_axis_tx_data_TREADY => m_axis_tx_data_TREADY,
      sig_echo_server_application_txData_V_full_n => sig_echo_server_application_txData_V_full_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_m_axis_tx_metadata_if is
  port (
    full_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_metadata_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    m_axis_tx_metadata_TREADY : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_m_axis_tx_metadata_if : entity is "echo_server_application_m_axis_tx_metadata_if";
end echo_server_application_ip_echo_server_application_m_axis_tx_metadata_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_m_axis_tx_metadata_if is
  signal load_p2 : STD_LOGIC;
  signal s_ready : STD_LOGIC;
  signal txMetaData_V_V_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txMetaData_V_V_fifo_n_1 : STD_LOGIC;
begin
rs: entity work.echo_server_application_ip_echo_server_application_m_axis_tx_metadata_reg_slice
     port map (
      AS(0) => AS(0),
      E(0) => load_p2,
      Q(0) => Q(0),
      aclk => aclk,
      empty_reg => txMetaData_V_V_fifo_n_1,
      m_axis_tx_metadata_TDATA(15 downto 0) => m_axis_tx_metadata_TDATA(15 downto 0),
      m_axis_tx_metadata_TREADY => m_axis_tx_metadata_TREADY,
      \out\(15 downto 0) => txMetaData_V_V_dout(15 downto 0),
      s_ready => s_ready
    );
txMetaData_V_V_fifo: entity work.echo_server_application_ip_echo_server_application_m_axis_tx_metadata_fifo
     port map (
      AS(0) => AS(0),
      E(0) => load_p2,
      aclk => aclk,
      full_reg_0 => full_reg,
      full_reg_1 => txMetaData_V_V_fifo_n_1,
      \in\(15 downto 0) => \in\(15 downto 0),
      \out\(15 downto 0) => txMetaData_V_V_dout(15 downto 0),
      p_12_out => p_12_out,
      s_ready => s_ready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_listen_port_status_if is
  port (
    sig_echo_server_application_listenPortStatus_V_dout : out STD_LOGIC;
    s_axis_listen_port_status_TREADY : out STD_LOGIC;
    \index_reg[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    \waitPortStatus_reg[0]\ : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    sig_echo_server_application_listenPortStatus_V_read : in STD_LOGIC;
    s_axis_listen_port_status_TVALID : in STD_LOGIC;
    s_axis_listen_port_status_TDATA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_listen_port_status_if : entity is "echo_server_application_s_axis_listen_port_status_if";
end echo_server_application_ip_echo_server_application_s_axis_listen_port_status_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_listen_port_status_if is
  signal listenPortStatus_V_din : STD_LOGIC;
  signal listenPortStatus_V_fifo_n_1 : STD_LOGIC;
  signal m_valid : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
begin
listenPortStatus_V_fifo: entity work.echo_server_application_ip_echo_server_application_s_axis_listen_port_status_fifo
     port map (
      AS(0) => AS(0),
      Q(0) => m_valid,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => ap_reg_ppiten_pp0_it1_reg,
      ap_reg_ppiten_pp0_it1_reg_0 => ap_reg_ppiten_pp0_it1_reg_0,
      ap_start => ap_start,
      full_reg_0 => listenPortStatus_V_fifo_n_1,
      \index_reg[1]_0\ => \index_reg[1]\,
      listenPortStatus_V_din => listenPortStatus_V_din,
      p_12_out => p_12_out,
      sig_echo_server_application_listenPortStatus_V_dout => sig_echo_server_application_listenPortStatus_V_dout,
      sig_echo_server_application_listenPortStatus_V_read => sig_echo_server_application_listenPortStatus_V_read,
      \waitPortStatus_reg[0]\ => \waitPortStatus_reg[0]\
    );
rs: entity work.echo_server_application_ip_echo_server_application_s_axis_listen_port_status_reg_slice
     port map (
      AS(0) => AS(0),
      Q(0) => m_valid,
      aclk => aclk,
      full_reg => listenPortStatus_V_fifo_n_1,
      listenPortStatus_V_din => listenPortStatus_V_din,
      p_12_out => p_12_out,
      s_axis_listen_port_status_TDATA(0) => s_axis_listen_port_status_TDATA(0),
      s_axis_listen_port_status_TREADY => s_axis_listen_port_status_TREADY,
      s_axis_listen_port_status_TVALID => s_axis_listen_port_status_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_notifications_if is
  port (
    s_axis_notifications_TREADY : out STD_LOGIC;
    \tmp_327_reg_468_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_327_reg_468_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \tmp_9_reg_464_reg[0]\ : out STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    s_axis_notifications_TVALID : in STD_LOGIC;
    s_axis_notifications_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tmp_9_reg_464 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_notifications_if : entity is "echo_server_application_s_axis_notifications_if";
end echo_server_application_ip_echo_server_application_s_axis_notifications_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_notifications_if is
begin
rs: entity work.echo_server_application_ip_echo_server_application_s_axis_notifications_reg_slice
     port map (
      AS(0) => AS(0),
      Q(0) => Q(0),
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => ap_reg_ppiten_pp0_it1_reg,
      ap_start => ap_start,
      s_axis_notifications_TDATA(31 downto 0) => s_axis_notifications_TDATA(31 downto 0),
      s_axis_notifications_TREADY => s_axis_notifications_TREADY,
      s_axis_notifications_TVALID => s_axis_notifications_TVALID,
      \tmp_327_reg_468_reg[31]\(0) => \tmp_327_reg_468_reg[31]\(0),
      \tmp_327_reg_468_reg[31]_0\(31 downto 0) => \tmp_327_reg_468_reg[31]_0\(31 downto 0),
      tmp_9_reg_464 => tmp_9_reg_464,
      \tmp_9_reg_464_reg[0]\ => \tmp_9_reg_464_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_open_status_if is
  port (
    s_axis_open_status_TREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_7_reg_444_reg[0]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    s_axis_open_status_TVALID : in STD_LOGIC;
    s_axis_open_status_TDATA : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_open_status_if : entity is "echo_server_application_s_axis_open_status_if";
end echo_server_application_ip_echo_server_application_s_axis_open_status_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_open_status_if is
begin
rs: entity work.echo_server_application_ip_echo_server_application_s_axis_open_status_reg_slice
     port map (
      AS(0) => AS(0),
      E(0) => E(0),
      Q(0) => Q(0),
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => ap_reg_ppiten_pp0_it1_reg,
      ap_start => ap_start,
      s_axis_open_status_TDATA(16 downto 0) => s_axis_open_status_TDATA(16 downto 0),
      s_axis_open_status_TREADY => s_axis_open_status_TREADY,
      s_axis_open_status_TVALID => s_axis_open_status_TVALID,
      \tmp_7_reg_444_reg[0]\(16 downto 0) => \tmp_7_reg_444_reg[0]\(16 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_rx_data_if is
  port (
    s_axis_rx_data_TREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ea_fsmState_V_reg[0]\ : out STD_LOGIC;
    \tmp_432_reg_490_reg[72]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_rx_data_TVALID : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    \ea_fsmState_V_reg[0]_0\ : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 72 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_rx_data_if : entity is "echo_server_application_s_axis_rx_data_if";
end echo_server_application_ip_echo_server_application_s_axis_rx_data_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_rx_data_if is
begin
rs: entity work.echo_server_application_ip_echo_server_application_s_axis_rx_data_reg_slice
     port map (
      AS(0) => AS(0),
      D(72 downto 0) => D(72 downto 0),
      Q(0) => Q(0),
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => ap_reg_ppiten_pp0_it1_reg,
      ap_reg_ppiten_pp0_it1_reg_0 => ap_reg_ppiten_pp0_it1_reg_0,
      ap_start => ap_start,
      \ea_fsmState_V_reg[0]\ => \ea_fsmState_V_reg[0]\,
      \ea_fsmState_V_reg[0]_0\ => \ea_fsmState_V_reg[0]_0\,
      empty_reg => empty_reg,
      s_axis_rx_data_TREADY => s_axis_rx_data_TREADY,
      s_axis_rx_data_TVALID => s_axis_rx_data_TVALID,
      \tmp_432_reg_490_reg[72]\(72 downto 0) => \tmp_432_reg_490_reg[72]\(72 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_rx_metadata_if is
  port (
    \index_reg[1]\ : out STD_LOGIC;
    s_axis_rx_metadata_TREADY : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    \ea_fsmState_V_reg[0]\ : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    ea_fsmState_V4_out : in STD_LOGIC;
    s_axis_rx_metadata_TVALID : in STD_LOGIC;
    s_axis_rx_metadata_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_rx_metadata_if : entity is "echo_server_application_s_axis_rx_metadata_if";
end echo_server_application_ip_echo_server_application_s_axis_rx_metadata_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_rx_metadata_if is
  signal m_valid : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal rxMetaData_V_V_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxMetaData_V_V_fifo_n_1 : STD_LOGIC;
begin
rs: entity work.echo_server_application_ip_echo_server_application_s_axis_rx_metadata_reg_slice
     port map (
      AS(0) => AS(0),
      Q(0) => m_valid,
      aclk => aclk,
      full_reg => rxMetaData_V_V_fifo_n_1,
      p_12_out => p_12_out,
      s_axis_rx_metadata_TDATA(15 downto 0) => s_axis_rx_metadata_TDATA(15 downto 0),
      s_axis_rx_metadata_TREADY => s_axis_rx_metadata_TREADY,
      s_axis_rx_metadata_TVALID => s_axis_rx_metadata_TVALID,
      \tmp_V_2_reg_481_reg[15]\(15 downto 0) => rxMetaData_V_V_din(15 downto 0)
    );
rxMetaData_V_V_fifo: entity work.echo_server_application_ip_echo_server_application_s_axis_rx_metadata_fifo
     port map (
      AS(0) => AS(0),
      Q(0) => m_valid,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => ap_reg_ppiten_pp0_it1_reg,
      ap_reg_ppiten_pp0_it1_reg_0 => ap_reg_ppiten_pp0_it1_reg_0,
      ap_start => ap_start,
      ea_fsmState_V4_out => ea_fsmState_V4_out,
      \ea_fsmState_V_reg[0]\ => \ea_fsmState_V_reg[0]\,
      full_reg_0 => rxMetaData_V_V_fifo_n_1,
      \in\(15 downto 0) => rxMetaData_V_V_din(15 downto 0),
      \index_reg[1]_0\ => \index_reg[1]\,
      \out\(15 downto 0) => \out\(15 downto 0),
      p_12_out => p_12_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_s_axis_tx_status_if is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_status_TREADY : out STD_LOGIC;
    \index_reg[2]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1_reg_0 : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tx_status_TVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_s_axis_tx_status_if : entity is "echo_server_application_s_axis_tx_status_if";
end echo_server_application_ip_echo_server_application_s_axis_tx_status_if;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_s_axis_tx_status_if is
  signal \^as\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_valid : STD_LOGIC;
  signal rs_n_1 : STD_LOGIC;
  signal txStatus_V_V_fifo_n_0 : STD_LOGIC;
begin
  AS(0) <= \^as\(0);
rs: entity work.echo_server_application_ip_echo_server_application_s_axis_tx_status_reg_slice
     port map (
      Q(0) => m_valid,
      SS(0) => \^as\(0),
      aclk => aclk,
      full_reg => txStatus_V_V_fifo_n_0,
      \index_reg[2]\ => rs_n_1,
      s_axis_tx_status_TREADY => s_axis_tx_status_TREADY,
      s_axis_tx_status_TVALID => s_axis_tx_status_TVALID
    );
txStatus_V_V_fifo: entity work.echo_server_application_ip_echo_server_application_s_axis_tx_status_fifo
     port map (
      Q(0) => m_valid,
      SS(0) => \^as\(0),
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => ap_reg_ppiten_pp0_it1_reg,
      ap_reg_ppiten_pp0_it1_reg_0 => ap_reg_ppiten_pp0_it1_reg_0,
      ap_start => ap_start,
      aresetn => aresetn,
      empty_reg_0 => empty_reg,
      full_reg_0 => txStatus_V_V_fifo_n_0,
      \index_reg[2]_0\ => \index_reg[2]\,
      \state_reg[0]\ => rs_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip_echo_server_application_top is
  port (
    m_axis_close_connection_TVALID : out STD_LOGIC;
    m_axis_close_connection_TREADY : in STD_LOGIC;
    m_axis_close_connection_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_listen_port_TVALID : out STD_LOGIC;
    m_axis_listen_port_TREADY : in STD_LOGIC;
    m_axis_listen_port_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_open_connection_TVALID : out STD_LOGIC;
    m_axis_open_connection_TREADY : in STD_LOGIC;
    m_axis_open_connection_TDATA : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_read_package_TVALID : out STD_LOGIC;
    m_axis_read_package_TREADY : in STD_LOGIC;
    m_axis_read_package_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tx_data_TVALID : out STD_LOGIC;
    m_axis_tx_data_TREADY : in STD_LOGIC;
    m_axis_tx_data_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tx_data_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tx_data_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_metadata_TVALID : out STD_LOGIC;
    m_axis_tx_metadata_TREADY : in STD_LOGIC;
    m_axis_tx_metadata_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_listen_port_status_TVALID : in STD_LOGIC;
    s_axis_listen_port_status_TREADY : out STD_LOGIC;
    s_axis_listen_port_status_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_notifications_TVALID : in STD_LOGIC;
    s_axis_notifications_TREADY : out STD_LOGIC;
    s_axis_notifications_TDATA : in STD_LOGIC_VECTOR ( 87 downto 0 );
    s_axis_open_status_TVALID : in STD_LOGIC;
    s_axis_open_status_TREADY : out STD_LOGIC;
    s_axis_open_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_rx_data_TVALID : in STD_LOGIC;
    s_axis_rx_data_TREADY : out STD_LOGIC;
    s_axis_rx_data_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_rx_data_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_data_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_rx_metadata_TVALID : in STD_LOGIC;
    s_axis_rx_metadata_TREADY : out STD_LOGIC;
    s_axis_rx_metadata_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tx_status_TVALID : in STD_LOGIC;
    s_axis_tx_status_TREADY : out STD_LOGIC;
    s_axis_tx_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of echo_server_application_ip_echo_server_application_top : entity is "echo_server_application_top";
  attribute RESET_ACTIVE_LOW : integer;
  attribute RESET_ACTIVE_LOW of echo_server_application_ip_echo_server_application_top : entity is 1;
  attribute hls_module : string;
  attribute hls_module of echo_server_application_ip_echo_server_application_top : entity is "yes";
end echo_server_application_ip_echo_server_application_top;

architecture STRUCTURE of echo_server_application_ip_echo_server_application_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \closeConnection_V_V_fifo/p_12_out\ : STD_LOGIC;
  signal dout : STD_LOGIC;
  signal ea_fsmState_V4_out : STD_LOGIC;
  signal echo_server_application_U_n_11 : STD_LOGIC;
  signal echo_server_application_U_n_12 : STD_LOGIC;
  signal echo_server_application_U_n_14 : STD_LOGIC;
  signal echo_server_application_U_n_2 : STD_LOGIC;
  signal echo_server_application_U_n_3 : STD_LOGIC;
  signal echo_server_application_m_axis_close_connection_if_U_n_0 : STD_LOGIC;
  signal echo_server_application_m_axis_listen_port_if_U_n_0 : STD_LOGIC;
  signal echo_server_application_m_axis_tx_metadata_if_U_n_0 : STD_LOGIC;
  signal echo_server_application_s_axis_listen_port_status_if_U_n_2 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_19 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_20 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_21 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_22 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_23 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_24 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_25 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_26 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_27 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_28 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_29 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_30 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_31 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_32 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_33 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_34 : STD_LOGIC;
  signal echo_server_application_s_axis_notifications_if_U_n_35 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_10 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_11 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_12 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_13 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_14 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_15 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_16 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_17 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_18 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_19 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_4 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_5 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_6 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_7 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_8 : STD_LOGIC;
  signal echo_server_application_s_axis_open_status_if_U_n_9 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_10 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_11 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_12 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_13 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_14 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_15 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_16 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_17 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_18 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_19 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_2 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_20 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_21 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_22 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_23 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_24 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_25 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_26 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_27 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_28 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_29 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_30 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_31 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_32 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_33 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_34 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_35 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_36 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_37 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_38 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_39 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_4 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_40 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_41 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_42 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_43 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_44 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_45 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_46 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_47 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_48 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_49 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_5 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_50 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_51 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_52 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_53 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_54 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_55 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_56 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_57 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_58 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_59 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_6 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_60 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_61 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_62 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_63 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_64 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_65 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_66 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_67 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_68 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_69 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_7 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_70 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_71 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_72 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_73 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_74 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_75 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_8 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_data_if_U_n_9 : STD_LOGIC;
  signal echo_server_application_s_axis_rx_metadata_if_U_n_0 : STD_LOGIC;
  signal echo_server_application_s_axis_tx_status_if_U_n_2 : STD_LOGIC;
  signal \listenPort_V_V_fifo/p_12_out\ : STD_LOGIC;
  signal \^m_axis_listen_port_tdata\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \rs/load_p2\ : STD_LOGIC;
  signal \rs/load_p2_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_echo_server_application_closeConnection_V_V_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_echo_server_application_listenPortStatus_V_dout : STD_LOGIC;
  signal sig_echo_server_application_listenPortStatus_V_read : STD_LOGIC;
  signal sig_echo_server_application_notifications_V_empty_n : STD_LOGIC;
  signal sig_echo_server_application_openConStatus_V_empty_n : STD_LOGIC;
  signal sig_echo_server_application_openConnection_V_full_n : STD_LOGIC;
  signal sig_echo_server_application_readRequest_V_full_n : STD_LOGIC;
  signal sig_echo_server_application_rxData_V_dout : STD_LOGIC_VECTOR ( 72 to 72 );
  signal sig_echo_server_application_rxData_V_empty_n : STD_LOGIC;
  signal sig_echo_server_application_rxMetaData_V_V_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_echo_server_application_txData_V_full_n : STD_LOGIC;
  signal sig_echo_server_application_txMetaData_V_V_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_327_reg_468 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmp_327_reg_4680 : STD_LOGIC;
  signal tmp_432_reg_490 : STD_LOGIC_VECTOR ( 72 downto 0 );
  signal tmp_7_reg_4440 : STD_LOGIC;
  signal tmp_9_reg_464 : STD_LOGIC;
  signal tmp_reg_435 : STD_LOGIC;
  signal \txMetaData_V_V_fifo/p_12_out\ : STD_LOGIC;
begin
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_ready\;
  m_axis_listen_port_TDATA(15) <= \<const0>\;
  m_axis_listen_port_TDATA(14) <= \<const0>\;
  m_axis_listen_port_TDATA(13) <= \<const0>\;
  m_axis_listen_port_TDATA(12) <= \^m_axis_listen_port_tdata\(12);
  m_axis_listen_port_TDATA(11) <= \<const0>\;
  m_axis_listen_port_TDATA(10) <= \<const0>\;
  m_axis_listen_port_TDATA(9 downto 7) <= \^m_axis_listen_port_tdata\(9 downto 7);
  m_axis_listen_port_TDATA(6) <= \<const0>\;
  m_axis_listen_port_TDATA(5) <= \<const0>\;
  m_axis_listen_port_TDATA(4) <= \<const0>\;
  m_axis_listen_port_TDATA(3) <= \^m_axis_listen_port_tdata\(3);
  m_axis_listen_port_TDATA(2) <= \<const0>\;
  m_axis_listen_port_TDATA(1) <= \<const0>\;
  m_axis_listen_port_TDATA(0) <= \^m_axis_listen_port_tdata\(0);
  m_axis_open_connection_TDATA(47) <= \<const0>\;
  m_axis_open_connection_TDATA(46) <= \<const0>\;
  m_axis_open_connection_TDATA(45) <= \<const1>\;
  m_axis_open_connection_TDATA(44) <= \<const1>\;
  m_axis_open_connection_TDATA(43) <= \<const0>\;
  m_axis_open_connection_TDATA(42) <= \<const1>\;
  m_axis_open_connection_TDATA(41) <= \<const0>\;
  m_axis_open_connection_TDATA(40) <= \<const0>\;
  m_axis_open_connection_TDATA(39) <= \<const0>\;
  m_axis_open_connection_TDATA(38) <= \<const0>\;
  m_axis_open_connection_TDATA(37) <= \<const0>\;
  m_axis_open_connection_TDATA(36) <= \<const1>\;
  m_axis_open_connection_TDATA(35) <= \<const0>\;
  m_axis_open_connection_TDATA(34) <= \<const0>\;
  m_axis_open_connection_TDATA(33) <= \<const1>\;
  m_axis_open_connection_TDATA(32) <= \<const0>\;
  m_axis_open_connection_TDATA(31) <= \<const0>\;
  m_axis_open_connection_TDATA(30) <= \<const0>\;
  m_axis_open_connection_TDATA(29) <= \<const0>\;
  m_axis_open_connection_TDATA(28) <= \<const0>\;
  m_axis_open_connection_TDATA(27) <= \<const1>\;
  m_axis_open_connection_TDATA(26) <= \<const0>\;
  m_axis_open_connection_TDATA(25) <= \<const1>\;
  m_axis_open_connection_TDATA(24) <= \<const0>\;
  m_axis_open_connection_TDATA(23) <= \<const0>\;
  m_axis_open_connection_TDATA(22) <= \<const0>\;
  m_axis_open_connection_TDATA(21) <= \<const0>\;
  m_axis_open_connection_TDATA(20) <= \<const0>\;
  m_axis_open_connection_TDATA(19) <= \<const0>\;
  m_axis_open_connection_TDATA(18) <= \<const0>\;
  m_axis_open_connection_TDATA(17) <= \<const0>\;
  m_axis_open_connection_TDATA(16) <= \<const1>\;
  m_axis_open_connection_TDATA(15) <= \<const0>\;
  m_axis_open_connection_TDATA(14) <= \<const0>\;
  m_axis_open_connection_TDATA(13) <= \<const0>\;
  m_axis_open_connection_TDATA(12) <= \<const0>\;
  m_axis_open_connection_TDATA(11) <= \<const0>\;
  m_axis_open_connection_TDATA(10) <= \<const0>\;
  m_axis_open_connection_TDATA(9) <= \<const0>\;
  m_axis_open_connection_TDATA(8) <= \<const1>\;
  m_axis_open_connection_TDATA(7) <= \<const0>\;
  m_axis_open_connection_TDATA(6) <= \<const0>\;
  m_axis_open_connection_TDATA(5) <= \<const0>\;
  m_axis_open_connection_TDATA(4) <= \<const0>\;
  m_axis_open_connection_TDATA(3) <= \<const0>\;
  m_axis_open_connection_TDATA(2) <= \<const0>\;
  m_axis_open_connection_TDATA(1) <= \<const0>\;
  m_axis_open_connection_TDATA(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
echo_server_application_U: entity work.echo_server_application_ip_echo_server_application
     port map (
      AS(0) => dout,
      E(0) => tmp_7_reg_4440,
      Q(0) => sig_echo_server_application_openConStatus_V_empty_n,
      aclk => aclk,
      ap_done => \^ap_done\,
      ap_idle => ap_idle,
      ap_ready => \^ap_ready\,
      ap_start => ap_start,
      \data_p1_reg[16]\(16) => p_0_in,
      \data_p1_reg[16]\(15) => echo_server_application_s_axis_open_status_if_U_n_4,
      \data_p1_reg[16]\(14) => echo_server_application_s_axis_open_status_if_U_n_5,
      \data_p1_reg[16]\(13) => echo_server_application_s_axis_open_status_if_U_n_6,
      \data_p1_reg[16]\(12) => echo_server_application_s_axis_open_status_if_U_n_7,
      \data_p1_reg[16]\(11) => echo_server_application_s_axis_open_status_if_U_n_8,
      \data_p1_reg[16]\(10) => echo_server_application_s_axis_open_status_if_U_n_9,
      \data_p1_reg[16]\(9) => echo_server_application_s_axis_open_status_if_U_n_10,
      \data_p1_reg[16]\(8) => echo_server_application_s_axis_open_status_if_U_n_11,
      \data_p1_reg[16]\(7) => echo_server_application_s_axis_open_status_if_U_n_12,
      \data_p1_reg[16]\(6) => echo_server_application_s_axis_open_status_if_U_n_13,
      \data_p1_reg[16]\(5) => echo_server_application_s_axis_open_status_if_U_n_14,
      \data_p1_reg[16]\(4) => echo_server_application_s_axis_open_status_if_U_n_15,
      \data_p1_reg[16]\(3) => echo_server_application_s_axis_open_status_if_U_n_16,
      \data_p1_reg[16]\(2) => echo_server_application_s_axis_open_status_if_U_n_17,
      \data_p1_reg[16]\(1) => echo_server_application_s_axis_open_status_if_U_n_18,
      \data_p1_reg[16]\(0) => echo_server_application_s_axis_open_status_if_U_n_19,
      \data_p1_reg[31]\(31 downto 16) => sel0(15 downto 0),
      \data_p1_reg[31]\(15) => echo_server_application_s_axis_notifications_if_U_n_19,
      \data_p1_reg[31]\(14) => echo_server_application_s_axis_notifications_if_U_n_20,
      \data_p1_reg[31]\(13) => echo_server_application_s_axis_notifications_if_U_n_21,
      \data_p1_reg[31]\(12) => echo_server_application_s_axis_notifications_if_U_n_22,
      \data_p1_reg[31]\(11) => echo_server_application_s_axis_notifications_if_U_n_23,
      \data_p1_reg[31]\(10) => echo_server_application_s_axis_notifications_if_U_n_24,
      \data_p1_reg[31]\(9) => echo_server_application_s_axis_notifications_if_U_n_25,
      \data_p1_reg[31]\(8) => echo_server_application_s_axis_notifications_if_U_n_26,
      \data_p1_reg[31]\(7) => echo_server_application_s_axis_notifications_if_U_n_27,
      \data_p1_reg[31]\(6) => echo_server_application_s_axis_notifications_if_U_n_28,
      \data_p1_reg[31]\(5) => echo_server_application_s_axis_notifications_if_U_n_29,
      \data_p1_reg[31]\(4) => echo_server_application_s_axis_notifications_if_U_n_30,
      \data_p1_reg[31]\(3) => echo_server_application_s_axis_notifications_if_U_n_31,
      \data_p1_reg[31]\(2) => echo_server_application_s_axis_notifications_if_U_n_32,
      \data_p1_reg[31]\(1) => echo_server_application_s_axis_notifications_if_U_n_33,
      \data_p1_reg[31]\(0) => echo_server_application_s_axis_notifications_if_U_n_34,
      \data_p1_reg[72]\ => echo_server_application_s_axis_rx_data_if_U_n_2,
      \data_p1_reg[72]_0\(72) => sig_echo_server_application_rxData_V_dout(72),
      \data_p1_reg[72]_0\(71) => echo_server_application_s_axis_rx_data_if_U_n_4,
      \data_p1_reg[72]_0\(70) => echo_server_application_s_axis_rx_data_if_U_n_5,
      \data_p1_reg[72]_0\(69) => echo_server_application_s_axis_rx_data_if_U_n_6,
      \data_p1_reg[72]_0\(68) => echo_server_application_s_axis_rx_data_if_U_n_7,
      \data_p1_reg[72]_0\(67) => echo_server_application_s_axis_rx_data_if_U_n_8,
      \data_p1_reg[72]_0\(66) => echo_server_application_s_axis_rx_data_if_U_n_9,
      \data_p1_reg[72]_0\(65) => echo_server_application_s_axis_rx_data_if_U_n_10,
      \data_p1_reg[72]_0\(64) => echo_server_application_s_axis_rx_data_if_U_n_11,
      \data_p1_reg[72]_0\(63) => echo_server_application_s_axis_rx_data_if_U_n_12,
      \data_p1_reg[72]_0\(62) => echo_server_application_s_axis_rx_data_if_U_n_13,
      \data_p1_reg[72]_0\(61) => echo_server_application_s_axis_rx_data_if_U_n_14,
      \data_p1_reg[72]_0\(60) => echo_server_application_s_axis_rx_data_if_U_n_15,
      \data_p1_reg[72]_0\(59) => echo_server_application_s_axis_rx_data_if_U_n_16,
      \data_p1_reg[72]_0\(58) => echo_server_application_s_axis_rx_data_if_U_n_17,
      \data_p1_reg[72]_0\(57) => echo_server_application_s_axis_rx_data_if_U_n_18,
      \data_p1_reg[72]_0\(56) => echo_server_application_s_axis_rx_data_if_U_n_19,
      \data_p1_reg[72]_0\(55) => echo_server_application_s_axis_rx_data_if_U_n_20,
      \data_p1_reg[72]_0\(54) => echo_server_application_s_axis_rx_data_if_U_n_21,
      \data_p1_reg[72]_0\(53) => echo_server_application_s_axis_rx_data_if_U_n_22,
      \data_p1_reg[72]_0\(52) => echo_server_application_s_axis_rx_data_if_U_n_23,
      \data_p1_reg[72]_0\(51) => echo_server_application_s_axis_rx_data_if_U_n_24,
      \data_p1_reg[72]_0\(50) => echo_server_application_s_axis_rx_data_if_U_n_25,
      \data_p1_reg[72]_0\(49) => echo_server_application_s_axis_rx_data_if_U_n_26,
      \data_p1_reg[72]_0\(48) => echo_server_application_s_axis_rx_data_if_U_n_27,
      \data_p1_reg[72]_0\(47) => echo_server_application_s_axis_rx_data_if_U_n_28,
      \data_p1_reg[72]_0\(46) => echo_server_application_s_axis_rx_data_if_U_n_29,
      \data_p1_reg[72]_0\(45) => echo_server_application_s_axis_rx_data_if_U_n_30,
      \data_p1_reg[72]_0\(44) => echo_server_application_s_axis_rx_data_if_U_n_31,
      \data_p1_reg[72]_0\(43) => echo_server_application_s_axis_rx_data_if_U_n_32,
      \data_p1_reg[72]_0\(42) => echo_server_application_s_axis_rx_data_if_U_n_33,
      \data_p1_reg[72]_0\(41) => echo_server_application_s_axis_rx_data_if_U_n_34,
      \data_p1_reg[72]_0\(40) => echo_server_application_s_axis_rx_data_if_U_n_35,
      \data_p1_reg[72]_0\(39) => echo_server_application_s_axis_rx_data_if_U_n_36,
      \data_p1_reg[72]_0\(38) => echo_server_application_s_axis_rx_data_if_U_n_37,
      \data_p1_reg[72]_0\(37) => echo_server_application_s_axis_rx_data_if_U_n_38,
      \data_p1_reg[72]_0\(36) => echo_server_application_s_axis_rx_data_if_U_n_39,
      \data_p1_reg[72]_0\(35) => echo_server_application_s_axis_rx_data_if_U_n_40,
      \data_p1_reg[72]_0\(34) => echo_server_application_s_axis_rx_data_if_U_n_41,
      \data_p1_reg[72]_0\(33) => echo_server_application_s_axis_rx_data_if_U_n_42,
      \data_p1_reg[72]_0\(32) => echo_server_application_s_axis_rx_data_if_U_n_43,
      \data_p1_reg[72]_0\(31) => echo_server_application_s_axis_rx_data_if_U_n_44,
      \data_p1_reg[72]_0\(30) => echo_server_application_s_axis_rx_data_if_U_n_45,
      \data_p1_reg[72]_0\(29) => echo_server_application_s_axis_rx_data_if_U_n_46,
      \data_p1_reg[72]_0\(28) => echo_server_application_s_axis_rx_data_if_U_n_47,
      \data_p1_reg[72]_0\(27) => echo_server_application_s_axis_rx_data_if_U_n_48,
      \data_p1_reg[72]_0\(26) => echo_server_application_s_axis_rx_data_if_U_n_49,
      \data_p1_reg[72]_0\(25) => echo_server_application_s_axis_rx_data_if_U_n_50,
      \data_p1_reg[72]_0\(24) => echo_server_application_s_axis_rx_data_if_U_n_51,
      \data_p1_reg[72]_0\(23) => echo_server_application_s_axis_rx_data_if_U_n_52,
      \data_p1_reg[72]_0\(22) => echo_server_application_s_axis_rx_data_if_U_n_53,
      \data_p1_reg[72]_0\(21) => echo_server_application_s_axis_rx_data_if_U_n_54,
      \data_p1_reg[72]_0\(20) => echo_server_application_s_axis_rx_data_if_U_n_55,
      \data_p1_reg[72]_0\(19) => echo_server_application_s_axis_rx_data_if_U_n_56,
      \data_p1_reg[72]_0\(18) => echo_server_application_s_axis_rx_data_if_U_n_57,
      \data_p1_reg[72]_0\(17) => echo_server_application_s_axis_rx_data_if_U_n_58,
      \data_p1_reg[72]_0\(16) => echo_server_application_s_axis_rx_data_if_U_n_59,
      \data_p1_reg[72]_0\(15) => echo_server_application_s_axis_rx_data_if_U_n_60,
      \data_p1_reg[72]_0\(14) => echo_server_application_s_axis_rx_data_if_U_n_61,
      \data_p1_reg[72]_0\(13) => echo_server_application_s_axis_rx_data_if_U_n_62,
      \data_p1_reg[72]_0\(12) => echo_server_application_s_axis_rx_data_if_U_n_63,
      \data_p1_reg[72]_0\(11) => echo_server_application_s_axis_rx_data_if_U_n_64,
      \data_p1_reg[72]_0\(10) => echo_server_application_s_axis_rx_data_if_U_n_65,
      \data_p1_reg[72]_0\(9) => echo_server_application_s_axis_rx_data_if_U_n_66,
      \data_p1_reg[72]_0\(8) => echo_server_application_s_axis_rx_data_if_U_n_67,
      \data_p1_reg[72]_0\(7) => echo_server_application_s_axis_rx_data_if_U_n_68,
      \data_p1_reg[72]_0\(6) => echo_server_application_s_axis_rx_data_if_U_n_69,
      \data_p1_reg[72]_0\(5) => echo_server_application_s_axis_rx_data_if_U_n_70,
      \data_p1_reg[72]_0\(4) => echo_server_application_s_axis_rx_data_if_U_n_71,
      \data_p1_reg[72]_0\(3) => echo_server_application_s_axis_rx_data_if_U_n_72,
      \data_p1_reg[72]_0\(2) => echo_server_application_s_axis_rx_data_if_U_n_73,
      \data_p1_reg[72]_0\(1) => echo_server_application_s_axis_rx_data_if_U_n_74,
      \data_p1_reg[72]_0\(0) => echo_server_application_s_axis_rx_data_if_U_n_75,
      \data_p2_reg[15]\(15 downto 0) => sig_echo_server_application_closeConnection_V_V_din(15 downto 0),
      \data_p2_reg[15]_0\(15 downto 0) => sig_echo_server_application_txMetaData_V_V_din(15 downto 0),
      \data_p2_reg[31]\(31 downto 0) => tmp_327_reg_468(31 downto 0),
      \data_p2_reg[72]\(72 downto 0) => tmp_432_reg_490(72 downto 0),
      ea_fsmState_V4_out => ea_fsmState_V4_out,
      \ea_fsmState_V_load_reg_473_reg[0]_0\ => echo_server_application_U_n_2,
      empty_reg => echo_server_application_s_axis_rx_metadata_if_U_n_0,
      empty_reg_0 => echo_server_application_s_axis_listen_port_status_if_U_n_2,
      empty_reg_1 => echo_server_application_s_axis_tx_status_if_U_n_2,
      full_reg => echo_server_application_m_axis_tx_metadata_if_U_n_0,
      full_reg_0 => echo_server_application_m_axis_listen_port_if_U_n_0,
      full_reg_1 => echo_server_application_m_axis_close_connection_if_U_n_0,
      \index_reg[3]\ => echo_server_application_U_n_14,
      load_p2 => \rs/load_p2_0\,
      load_p2_1 => \rs/load_p2\,
      \out\(15 downto 0) => sig_echo_server_application_rxMetaData_V_V_dout(15 downto 0),
      p_12_out => \closeConnection_V_V_fifo/p_12_out\,
      p_12_out_0 => \listenPort_V_V_fifo/p_12_out\,
      p_12_out_2 => \txMetaData_V_V_fifo/p_12_out\,
      sig_echo_server_application_listenPortStatus_V_dout => sig_echo_server_application_listenPortStatus_V_dout,
      sig_echo_server_application_listenPortStatus_V_read => sig_echo_server_application_listenPortStatus_V_read,
      sig_echo_server_application_openConnection_V_full_n => sig_echo_server_application_openConnection_V_full_n,
      sig_echo_server_application_readRequest_V_full_n => sig_echo_server_application_readRequest_V_full_n,
      sig_echo_server_application_txData_V_full_n => sig_echo_server_application_txData_V_full_n,
      \state_reg[0]\ => echo_server_application_U_n_11,
      \state_reg[0]_0\(0) => sig_echo_server_application_notifications_V_empty_n,
      \state_reg[0]_1\ => echo_server_application_s_axis_notifications_if_U_n_35,
      \state_reg[0]_2\(0) => sig_echo_server_application_rxData_V_empty_n,
      \state_reg[0]_3\(0) => tmp_327_reg_4680,
      \tmp_4_reg_477_reg[0]_0\ => echo_server_application_U_n_12,
      tmp_9_reg_464 => tmp_9_reg_464,
      tmp_reg_435 => tmp_reg_435,
      \waitPortStatus_reg[0]_0\ => echo_server_application_U_n_3
    );
echo_server_application_m_axis_close_connection_if_U: entity work.echo_server_application_ip_echo_server_application_m_axis_close_connection_if
     port map (
      AS(0) => dout,
      Q(0) => m_axis_close_connection_TVALID,
      aclk => aclk,
      full_reg => echo_server_application_m_axis_close_connection_if_U_n_0,
      \in\(15 downto 0) => sig_echo_server_application_closeConnection_V_V_din(15 downto 0),
      m_axis_close_connection_TDATA(15 downto 0) => m_axis_close_connection_TDATA(15 downto 0),
      m_axis_close_connection_TREADY => m_axis_close_connection_TREADY,
      p_12_out => \closeConnection_V_V_fifo/p_12_out\
    );
echo_server_application_m_axis_listen_port_if_U: entity work.echo_server_application_ip_echo_server_application_m_axis_listen_port_if
     port map (
      AS(0) => dout,
      Q(0) => m_axis_listen_port_TVALID,
      aclk => aclk,
      full_reg => echo_server_application_m_axis_listen_port_if_U_n_0,
      m_axis_listen_port_TDATA(5) => \^m_axis_listen_port_tdata\(12),
      m_axis_listen_port_TDATA(4 downto 2) => \^m_axis_listen_port_tdata\(9 downto 7),
      m_axis_listen_port_TDATA(1) => \^m_axis_listen_port_tdata\(3),
      m_axis_listen_port_TDATA(0) => \^m_axis_listen_port_tdata\(0),
      m_axis_listen_port_TREADY => m_axis_listen_port_TREADY,
      p_12_out => \listenPort_V_V_fifo/p_12_out\
    );
echo_server_application_m_axis_open_connection_if_U: entity work.echo_server_application_ip_echo_server_application_m_axis_open_connection_if
     port map (
      AS(0) => dout,
      Q(0) => m_axis_open_connection_TVALID,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => \^ap_done\,
      m_axis_open_connection_TREADY => m_axis_open_connection_TREADY,
      sig_echo_server_application_openConnection_V_full_n => sig_echo_server_application_openConnection_V_full_n,
      tmp_reg_435 => tmp_reg_435
    );
echo_server_application_m_axis_read_package_if_U: entity work.echo_server_application_ip_echo_server_application_m_axis_read_package_if
     port map (
      AS(0) => dout,
      D(31 downto 0) => tmp_327_reg_468(31 downto 0),
      Q(0) => m_axis_read_package_TVALID,
      aclk => aclk,
      load_p2 => \rs/load_p2_0\,
      m_axis_read_package_TDATA(31 downto 0) => m_axis_read_package_TDATA(31 downto 0),
      m_axis_read_package_TREADY => m_axis_read_package_TREADY,
      sig_echo_server_application_readRequest_V_full_n => sig_echo_server_application_readRequest_V_full_n
    );
echo_server_application_m_axis_tx_data_if_U: entity work.echo_server_application_ip_echo_server_application_m_axis_tx_data_if
     port map (
      AS(0) => dout,
      D(72 downto 0) => tmp_432_reg_490(72 downto 0),
      Q(0) => m_axis_tx_data_TVALID,
      aclk => aclk,
      load_p2 => \rs/load_p2\,
      \m_axis_tx_data_TLAST[0]\(72) => m_axis_tx_data_TLAST(0),
      \m_axis_tx_data_TLAST[0]\(71 downto 64) => m_axis_tx_data_TKEEP(7 downto 0),
      \m_axis_tx_data_TLAST[0]\(63 downto 0) => m_axis_tx_data_TDATA(63 downto 0),
      m_axis_tx_data_TREADY => m_axis_tx_data_TREADY,
      sig_echo_server_application_txData_V_full_n => sig_echo_server_application_txData_V_full_n
    );
echo_server_application_m_axis_tx_metadata_if_U: entity work.echo_server_application_ip_echo_server_application_m_axis_tx_metadata_if
     port map (
      AS(0) => dout,
      Q(0) => m_axis_tx_metadata_TVALID,
      aclk => aclk,
      full_reg => echo_server_application_m_axis_tx_metadata_if_U_n_0,
      \in\(15 downto 0) => sig_echo_server_application_txMetaData_V_V_din(15 downto 0),
      m_axis_tx_metadata_TDATA(15 downto 0) => m_axis_tx_metadata_TDATA(15 downto 0),
      m_axis_tx_metadata_TREADY => m_axis_tx_metadata_TREADY,
      p_12_out => \txMetaData_V_V_fifo/p_12_out\
    );
echo_server_application_s_axis_listen_port_status_if_U: entity work.echo_server_application_ip_echo_server_application_s_axis_listen_port_status_if
     port map (
      AS(0) => dout,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => echo_server_application_U_n_12,
      ap_reg_ppiten_pp0_it1_reg_0 => \^ap_ready\,
      ap_start => ap_start,
      \index_reg[1]\ => echo_server_application_s_axis_listen_port_status_if_U_n_2,
      s_axis_listen_port_status_TDATA(0) => s_axis_listen_port_status_TDATA(0),
      s_axis_listen_port_status_TREADY => s_axis_listen_port_status_TREADY,
      s_axis_listen_port_status_TVALID => s_axis_listen_port_status_TVALID,
      sig_echo_server_application_listenPortStatus_V_dout => sig_echo_server_application_listenPortStatus_V_dout,
      sig_echo_server_application_listenPortStatus_V_read => sig_echo_server_application_listenPortStatus_V_read,
      \waitPortStatus_reg[0]\ => echo_server_application_U_n_3
    );
echo_server_application_s_axis_notifications_if_U: entity work.echo_server_application_ip_echo_server_application_s_axis_notifications_if
     port map (
      AS(0) => dout,
      Q(0) => sig_echo_server_application_notifications_V_empty_n,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => echo_server_application_U_n_12,
      ap_start => ap_start,
      s_axis_notifications_TDATA(31 downto 0) => s_axis_notifications_TDATA(31 downto 0),
      s_axis_notifications_TREADY => s_axis_notifications_TREADY,
      s_axis_notifications_TVALID => s_axis_notifications_TVALID,
      \tmp_327_reg_468_reg[31]\(0) => tmp_327_reg_4680,
      \tmp_327_reg_468_reg[31]_0\(31 downto 16) => sel0(15 downto 0),
      \tmp_327_reg_468_reg[31]_0\(15) => echo_server_application_s_axis_notifications_if_U_n_19,
      \tmp_327_reg_468_reg[31]_0\(14) => echo_server_application_s_axis_notifications_if_U_n_20,
      \tmp_327_reg_468_reg[31]_0\(13) => echo_server_application_s_axis_notifications_if_U_n_21,
      \tmp_327_reg_468_reg[31]_0\(12) => echo_server_application_s_axis_notifications_if_U_n_22,
      \tmp_327_reg_468_reg[31]_0\(11) => echo_server_application_s_axis_notifications_if_U_n_23,
      \tmp_327_reg_468_reg[31]_0\(10) => echo_server_application_s_axis_notifications_if_U_n_24,
      \tmp_327_reg_468_reg[31]_0\(9) => echo_server_application_s_axis_notifications_if_U_n_25,
      \tmp_327_reg_468_reg[31]_0\(8) => echo_server_application_s_axis_notifications_if_U_n_26,
      \tmp_327_reg_468_reg[31]_0\(7) => echo_server_application_s_axis_notifications_if_U_n_27,
      \tmp_327_reg_468_reg[31]_0\(6) => echo_server_application_s_axis_notifications_if_U_n_28,
      \tmp_327_reg_468_reg[31]_0\(5) => echo_server_application_s_axis_notifications_if_U_n_29,
      \tmp_327_reg_468_reg[31]_0\(4) => echo_server_application_s_axis_notifications_if_U_n_30,
      \tmp_327_reg_468_reg[31]_0\(3) => echo_server_application_s_axis_notifications_if_U_n_31,
      \tmp_327_reg_468_reg[31]_0\(2) => echo_server_application_s_axis_notifications_if_U_n_32,
      \tmp_327_reg_468_reg[31]_0\(1) => echo_server_application_s_axis_notifications_if_U_n_33,
      \tmp_327_reg_468_reg[31]_0\(0) => echo_server_application_s_axis_notifications_if_U_n_34,
      tmp_9_reg_464 => tmp_9_reg_464,
      \tmp_9_reg_464_reg[0]\ => echo_server_application_s_axis_notifications_if_U_n_35
    );
echo_server_application_s_axis_open_status_if_U: entity work.echo_server_application_ip_echo_server_application_s_axis_open_status_if
     port map (
      AS(0) => dout,
      E(0) => tmp_7_reg_4440,
      Q(0) => sig_echo_server_application_openConStatus_V_empty_n,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => echo_server_application_U_n_12,
      ap_start => ap_start,
      s_axis_open_status_TDATA(16 downto 0) => s_axis_open_status_TDATA(16 downto 0),
      s_axis_open_status_TREADY => s_axis_open_status_TREADY,
      s_axis_open_status_TVALID => s_axis_open_status_TVALID,
      \tmp_7_reg_444_reg[0]\(16) => p_0_in,
      \tmp_7_reg_444_reg[0]\(15) => echo_server_application_s_axis_open_status_if_U_n_4,
      \tmp_7_reg_444_reg[0]\(14) => echo_server_application_s_axis_open_status_if_U_n_5,
      \tmp_7_reg_444_reg[0]\(13) => echo_server_application_s_axis_open_status_if_U_n_6,
      \tmp_7_reg_444_reg[0]\(12) => echo_server_application_s_axis_open_status_if_U_n_7,
      \tmp_7_reg_444_reg[0]\(11) => echo_server_application_s_axis_open_status_if_U_n_8,
      \tmp_7_reg_444_reg[0]\(10) => echo_server_application_s_axis_open_status_if_U_n_9,
      \tmp_7_reg_444_reg[0]\(9) => echo_server_application_s_axis_open_status_if_U_n_10,
      \tmp_7_reg_444_reg[0]\(8) => echo_server_application_s_axis_open_status_if_U_n_11,
      \tmp_7_reg_444_reg[0]\(7) => echo_server_application_s_axis_open_status_if_U_n_12,
      \tmp_7_reg_444_reg[0]\(6) => echo_server_application_s_axis_open_status_if_U_n_13,
      \tmp_7_reg_444_reg[0]\(5) => echo_server_application_s_axis_open_status_if_U_n_14,
      \tmp_7_reg_444_reg[0]\(4) => echo_server_application_s_axis_open_status_if_U_n_15,
      \tmp_7_reg_444_reg[0]\(3) => echo_server_application_s_axis_open_status_if_U_n_16,
      \tmp_7_reg_444_reg[0]\(2) => echo_server_application_s_axis_open_status_if_U_n_17,
      \tmp_7_reg_444_reg[0]\(1) => echo_server_application_s_axis_open_status_if_U_n_18,
      \tmp_7_reg_444_reg[0]\(0) => echo_server_application_s_axis_open_status_if_U_n_19
    );
echo_server_application_s_axis_rx_data_if_U: entity work.echo_server_application_ip_echo_server_application_s_axis_rx_data_if
     port map (
      AS(0) => dout,
      D(72) => s_axis_rx_data_TLAST(0),
      D(71 downto 64) => s_axis_rx_data_TKEEP(7 downto 0),
      D(63 downto 0) => s_axis_rx_data_TDATA(63 downto 0),
      Q(0) => sig_echo_server_application_rxData_V_empty_n,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => echo_server_application_U_n_12,
      ap_reg_ppiten_pp0_it1_reg_0 => echo_server_application_U_n_11,
      ap_start => ap_start,
      \ea_fsmState_V_reg[0]\ => echo_server_application_s_axis_rx_data_if_U_n_2,
      \ea_fsmState_V_reg[0]_0\ => echo_server_application_U_n_2,
      empty_reg => echo_server_application_s_axis_rx_metadata_if_U_n_0,
      s_axis_rx_data_TREADY => s_axis_rx_data_TREADY,
      s_axis_rx_data_TVALID => s_axis_rx_data_TVALID,
      \tmp_432_reg_490_reg[72]\(72) => sig_echo_server_application_rxData_V_dout(72),
      \tmp_432_reg_490_reg[72]\(71) => echo_server_application_s_axis_rx_data_if_U_n_4,
      \tmp_432_reg_490_reg[72]\(70) => echo_server_application_s_axis_rx_data_if_U_n_5,
      \tmp_432_reg_490_reg[72]\(69) => echo_server_application_s_axis_rx_data_if_U_n_6,
      \tmp_432_reg_490_reg[72]\(68) => echo_server_application_s_axis_rx_data_if_U_n_7,
      \tmp_432_reg_490_reg[72]\(67) => echo_server_application_s_axis_rx_data_if_U_n_8,
      \tmp_432_reg_490_reg[72]\(66) => echo_server_application_s_axis_rx_data_if_U_n_9,
      \tmp_432_reg_490_reg[72]\(65) => echo_server_application_s_axis_rx_data_if_U_n_10,
      \tmp_432_reg_490_reg[72]\(64) => echo_server_application_s_axis_rx_data_if_U_n_11,
      \tmp_432_reg_490_reg[72]\(63) => echo_server_application_s_axis_rx_data_if_U_n_12,
      \tmp_432_reg_490_reg[72]\(62) => echo_server_application_s_axis_rx_data_if_U_n_13,
      \tmp_432_reg_490_reg[72]\(61) => echo_server_application_s_axis_rx_data_if_U_n_14,
      \tmp_432_reg_490_reg[72]\(60) => echo_server_application_s_axis_rx_data_if_U_n_15,
      \tmp_432_reg_490_reg[72]\(59) => echo_server_application_s_axis_rx_data_if_U_n_16,
      \tmp_432_reg_490_reg[72]\(58) => echo_server_application_s_axis_rx_data_if_U_n_17,
      \tmp_432_reg_490_reg[72]\(57) => echo_server_application_s_axis_rx_data_if_U_n_18,
      \tmp_432_reg_490_reg[72]\(56) => echo_server_application_s_axis_rx_data_if_U_n_19,
      \tmp_432_reg_490_reg[72]\(55) => echo_server_application_s_axis_rx_data_if_U_n_20,
      \tmp_432_reg_490_reg[72]\(54) => echo_server_application_s_axis_rx_data_if_U_n_21,
      \tmp_432_reg_490_reg[72]\(53) => echo_server_application_s_axis_rx_data_if_U_n_22,
      \tmp_432_reg_490_reg[72]\(52) => echo_server_application_s_axis_rx_data_if_U_n_23,
      \tmp_432_reg_490_reg[72]\(51) => echo_server_application_s_axis_rx_data_if_U_n_24,
      \tmp_432_reg_490_reg[72]\(50) => echo_server_application_s_axis_rx_data_if_U_n_25,
      \tmp_432_reg_490_reg[72]\(49) => echo_server_application_s_axis_rx_data_if_U_n_26,
      \tmp_432_reg_490_reg[72]\(48) => echo_server_application_s_axis_rx_data_if_U_n_27,
      \tmp_432_reg_490_reg[72]\(47) => echo_server_application_s_axis_rx_data_if_U_n_28,
      \tmp_432_reg_490_reg[72]\(46) => echo_server_application_s_axis_rx_data_if_U_n_29,
      \tmp_432_reg_490_reg[72]\(45) => echo_server_application_s_axis_rx_data_if_U_n_30,
      \tmp_432_reg_490_reg[72]\(44) => echo_server_application_s_axis_rx_data_if_U_n_31,
      \tmp_432_reg_490_reg[72]\(43) => echo_server_application_s_axis_rx_data_if_U_n_32,
      \tmp_432_reg_490_reg[72]\(42) => echo_server_application_s_axis_rx_data_if_U_n_33,
      \tmp_432_reg_490_reg[72]\(41) => echo_server_application_s_axis_rx_data_if_U_n_34,
      \tmp_432_reg_490_reg[72]\(40) => echo_server_application_s_axis_rx_data_if_U_n_35,
      \tmp_432_reg_490_reg[72]\(39) => echo_server_application_s_axis_rx_data_if_U_n_36,
      \tmp_432_reg_490_reg[72]\(38) => echo_server_application_s_axis_rx_data_if_U_n_37,
      \tmp_432_reg_490_reg[72]\(37) => echo_server_application_s_axis_rx_data_if_U_n_38,
      \tmp_432_reg_490_reg[72]\(36) => echo_server_application_s_axis_rx_data_if_U_n_39,
      \tmp_432_reg_490_reg[72]\(35) => echo_server_application_s_axis_rx_data_if_U_n_40,
      \tmp_432_reg_490_reg[72]\(34) => echo_server_application_s_axis_rx_data_if_U_n_41,
      \tmp_432_reg_490_reg[72]\(33) => echo_server_application_s_axis_rx_data_if_U_n_42,
      \tmp_432_reg_490_reg[72]\(32) => echo_server_application_s_axis_rx_data_if_U_n_43,
      \tmp_432_reg_490_reg[72]\(31) => echo_server_application_s_axis_rx_data_if_U_n_44,
      \tmp_432_reg_490_reg[72]\(30) => echo_server_application_s_axis_rx_data_if_U_n_45,
      \tmp_432_reg_490_reg[72]\(29) => echo_server_application_s_axis_rx_data_if_U_n_46,
      \tmp_432_reg_490_reg[72]\(28) => echo_server_application_s_axis_rx_data_if_U_n_47,
      \tmp_432_reg_490_reg[72]\(27) => echo_server_application_s_axis_rx_data_if_U_n_48,
      \tmp_432_reg_490_reg[72]\(26) => echo_server_application_s_axis_rx_data_if_U_n_49,
      \tmp_432_reg_490_reg[72]\(25) => echo_server_application_s_axis_rx_data_if_U_n_50,
      \tmp_432_reg_490_reg[72]\(24) => echo_server_application_s_axis_rx_data_if_U_n_51,
      \tmp_432_reg_490_reg[72]\(23) => echo_server_application_s_axis_rx_data_if_U_n_52,
      \tmp_432_reg_490_reg[72]\(22) => echo_server_application_s_axis_rx_data_if_U_n_53,
      \tmp_432_reg_490_reg[72]\(21) => echo_server_application_s_axis_rx_data_if_U_n_54,
      \tmp_432_reg_490_reg[72]\(20) => echo_server_application_s_axis_rx_data_if_U_n_55,
      \tmp_432_reg_490_reg[72]\(19) => echo_server_application_s_axis_rx_data_if_U_n_56,
      \tmp_432_reg_490_reg[72]\(18) => echo_server_application_s_axis_rx_data_if_U_n_57,
      \tmp_432_reg_490_reg[72]\(17) => echo_server_application_s_axis_rx_data_if_U_n_58,
      \tmp_432_reg_490_reg[72]\(16) => echo_server_application_s_axis_rx_data_if_U_n_59,
      \tmp_432_reg_490_reg[72]\(15) => echo_server_application_s_axis_rx_data_if_U_n_60,
      \tmp_432_reg_490_reg[72]\(14) => echo_server_application_s_axis_rx_data_if_U_n_61,
      \tmp_432_reg_490_reg[72]\(13) => echo_server_application_s_axis_rx_data_if_U_n_62,
      \tmp_432_reg_490_reg[72]\(12) => echo_server_application_s_axis_rx_data_if_U_n_63,
      \tmp_432_reg_490_reg[72]\(11) => echo_server_application_s_axis_rx_data_if_U_n_64,
      \tmp_432_reg_490_reg[72]\(10) => echo_server_application_s_axis_rx_data_if_U_n_65,
      \tmp_432_reg_490_reg[72]\(9) => echo_server_application_s_axis_rx_data_if_U_n_66,
      \tmp_432_reg_490_reg[72]\(8) => echo_server_application_s_axis_rx_data_if_U_n_67,
      \tmp_432_reg_490_reg[72]\(7) => echo_server_application_s_axis_rx_data_if_U_n_68,
      \tmp_432_reg_490_reg[72]\(6) => echo_server_application_s_axis_rx_data_if_U_n_69,
      \tmp_432_reg_490_reg[72]\(5) => echo_server_application_s_axis_rx_data_if_U_n_70,
      \tmp_432_reg_490_reg[72]\(4) => echo_server_application_s_axis_rx_data_if_U_n_71,
      \tmp_432_reg_490_reg[72]\(3) => echo_server_application_s_axis_rx_data_if_U_n_72,
      \tmp_432_reg_490_reg[72]\(2) => echo_server_application_s_axis_rx_data_if_U_n_73,
      \tmp_432_reg_490_reg[72]\(1) => echo_server_application_s_axis_rx_data_if_U_n_74,
      \tmp_432_reg_490_reg[72]\(0) => echo_server_application_s_axis_rx_data_if_U_n_75
    );
echo_server_application_s_axis_rx_metadata_if_U: entity work.echo_server_application_ip_echo_server_application_s_axis_rx_metadata_if
     port map (
      AS(0) => dout,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => echo_server_application_U_n_12,
      ap_reg_ppiten_pp0_it1_reg_0 => \^ap_ready\,
      ap_start => ap_start,
      ea_fsmState_V4_out => ea_fsmState_V4_out,
      \ea_fsmState_V_reg[0]\ => echo_server_application_U_n_2,
      \index_reg[1]\ => echo_server_application_s_axis_rx_metadata_if_U_n_0,
      \out\(15 downto 0) => sig_echo_server_application_rxMetaData_V_V_dout(15 downto 0),
      s_axis_rx_metadata_TDATA(15 downto 0) => s_axis_rx_metadata_TDATA(15 downto 0),
      s_axis_rx_metadata_TREADY => s_axis_rx_metadata_TREADY,
      s_axis_rx_metadata_TVALID => s_axis_rx_metadata_TVALID
    );
echo_server_application_s_axis_tx_status_if_U: entity work.echo_server_application_ip_echo_server_application_s_axis_tx_status_if
     port map (
      AS(0) => dout,
      aclk => aclk,
      ap_reg_ppiten_pp0_it1_reg => echo_server_application_U_n_12,
      ap_reg_ppiten_pp0_it1_reg_0 => \^ap_ready\,
      ap_start => ap_start,
      aresetn => aresetn,
      empty_reg => echo_server_application_U_n_14,
      \index_reg[2]\ => echo_server_application_s_axis_tx_status_if_U_n_2,
      s_axis_tx_status_TREADY => s_axis_tx_status_TREADY,
      s_axis_tx_status_TVALID => s_axis_tx_status_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_server_application_ip is
  port (
    m_axis_close_connection_TVALID : out STD_LOGIC;
    m_axis_close_connection_TREADY : in STD_LOGIC;
    m_axis_close_connection_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_listen_port_TVALID : out STD_LOGIC;
    m_axis_listen_port_TREADY : in STD_LOGIC;
    m_axis_listen_port_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_open_connection_TVALID : out STD_LOGIC;
    m_axis_open_connection_TREADY : in STD_LOGIC;
    m_axis_open_connection_TDATA : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_read_package_TVALID : out STD_LOGIC;
    m_axis_read_package_TREADY : in STD_LOGIC;
    m_axis_read_package_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tx_data_TVALID : out STD_LOGIC;
    m_axis_tx_data_TREADY : in STD_LOGIC;
    m_axis_tx_data_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tx_data_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tx_data_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_metadata_TVALID : out STD_LOGIC;
    m_axis_tx_metadata_TREADY : in STD_LOGIC;
    m_axis_tx_metadata_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_listen_port_status_TVALID : in STD_LOGIC;
    s_axis_listen_port_status_TREADY : out STD_LOGIC;
    s_axis_listen_port_status_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_notifications_TVALID : in STD_LOGIC;
    s_axis_notifications_TREADY : out STD_LOGIC;
    s_axis_notifications_TDATA : in STD_LOGIC_VECTOR ( 87 downto 0 );
    s_axis_open_status_TVALID : in STD_LOGIC;
    s_axis_open_status_TREADY : out STD_LOGIC;
    s_axis_open_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_rx_data_TVALID : in STD_LOGIC;
    s_axis_rx_data_TREADY : out STD_LOGIC;
    s_axis_rx_data_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_rx_data_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_data_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_rx_metadata_TVALID : in STD_LOGIC;
    s_axis_rx_metadata_TREADY : out STD_LOGIC;
    s_axis_rx_metadata_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tx_status_TVALID : in STD_LOGIC;
    s_axis_tx_status_TREADY : out STD_LOGIC;
    s_axis_tx_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_start : in STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of echo_server_application_ip : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of echo_server_application_ip : entity is "echo_server_application_ip,echo_server_application_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of echo_server_application_ip : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of echo_server_application_ip : entity is "echo_server_application_top,Vivado 2017.4";
end echo_server_application_ip;

architecture STRUCTURE of echo_server_application_ip is
  attribute RESET_ACTIVE_LOW : integer;
  attribute RESET_ACTIVE_LOW of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_close_connection:m_axis_listen_port:m_axis_open_connection:m_axis_read_package:m_axis_tx_data:m_axis_tx_metadata:s_axis_listen_port_status:s_axis_notifications:s_axis_open_status:s_axis_rx_data:s_axis_rx_metadata:s_axis_tx_status, ASSOCIATED_RESET aresetn";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_close_connection_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_close_connection TREADY";
  attribute X_INTERFACE_INFO of m_axis_close_connection_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_close_connection TVALID";
  attribute X_INTERFACE_INFO of m_axis_listen_port_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_listen_port TREADY";
  attribute X_INTERFACE_INFO of m_axis_listen_port_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_listen_port TVALID";
  attribute X_INTERFACE_INFO of m_axis_open_connection_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_open_connection TREADY";
  attribute X_INTERFACE_INFO of m_axis_open_connection_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_open_connection TVALID";
  attribute X_INTERFACE_INFO of m_axis_read_package_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_read_package TREADY";
  attribute X_INTERFACE_INFO of m_axis_read_package_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_read_package TVALID";
  attribute X_INTERFACE_INFO of m_axis_tx_data_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_data TREADY";
  attribute X_INTERFACE_INFO of m_axis_tx_data_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_data TVALID";
  attribute X_INTERFACE_INFO of m_axis_tx_metadata_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TREADY";
  attribute X_INTERFACE_INFO of m_axis_tx_metadata_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TVALID";
  attribute X_INTERFACE_INFO of s_axis_listen_port_status_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TREADY";
  attribute X_INTERFACE_INFO of s_axis_listen_port_status_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TVALID";
  attribute X_INTERFACE_INFO of s_axis_notifications_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_notifications TREADY";
  attribute X_INTERFACE_INFO of s_axis_notifications_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_notifications TVALID";
  attribute X_INTERFACE_INFO of s_axis_open_status_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_open_status TREADY";
  attribute X_INTERFACE_INFO of s_axis_open_status_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_open_status TVALID";
  attribute X_INTERFACE_INFO of s_axis_rx_data_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_data TREADY";
  attribute X_INTERFACE_INFO of s_axis_rx_data_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_data TVALID";
  attribute X_INTERFACE_INFO of s_axis_rx_metadata_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TREADY";
  attribute X_INTERFACE_INFO of s_axis_rx_metadata_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TVALID";
  attribute X_INTERFACE_INFO of s_axis_tx_status_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_status TREADY";
  attribute X_INTERFACE_INFO of s_axis_tx_status_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_status TVALID";
  attribute X_INTERFACE_INFO of m_axis_close_connection_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_close_connection TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_close_connection_TDATA : signal is "XIL_INTERFACENAME m_axis_close_connection, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of m_axis_listen_port_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_listen_port TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_listen_port_TDATA : signal is "XIL_INTERFACENAME m_axis_listen_port, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of m_axis_open_connection_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_open_connection TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_open_connection_TDATA : signal is "XIL_INTERFACENAME m_axis_open_connection, TDATA_NUM_BYTES 6, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of m_axis_read_package_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_read_package TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_read_package_TDATA : signal is "XIL_INTERFACENAME m_axis_read_package, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of m_axis_tx_data_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_data TDATA";
  attribute X_INTERFACE_INFO of m_axis_tx_data_TKEEP : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_data TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tx_data_TLAST : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_data TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tx_data_TLAST : signal is "XIL_INTERFACENAME m_axis_tx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1";
  attribute X_INTERFACE_INFO of m_axis_tx_metadata_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_tx_metadata TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tx_metadata_TDATA : signal is "XIL_INTERFACENAME m_axis_tx_metadata, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of s_axis_listen_port_status_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_listen_port_status TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_listen_port_status_TDATA : signal is "XIL_INTERFACENAME s_axis_listen_port_status, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of s_axis_notifications_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_notifications TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_notifications_TDATA : signal is "XIL_INTERFACENAME s_axis_notifications, TDATA_NUM_BYTES 11, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 88} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of s_axis_open_status_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_open_status TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_open_status_TDATA : signal is "XIL_INTERFACENAME s_axis_open_status, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of s_axis_rx_data_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_data TDATA";
  attribute X_INTERFACE_INFO of s_axis_rx_data_TKEEP : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_data TKEEP";
  attribute X_INTERFACE_INFO of s_axis_rx_data_TLAST : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_data TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_rx_data_TLAST : signal is "XIL_INTERFACENAME s_axis_rx_data, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1";
  attribute X_INTERFACE_INFO of s_axis_rx_metadata_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_rx_metadata TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_rx_metadata_TDATA : signal is "XIL_INTERFACENAME s_axis_rx_metadata, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
  attribute X_INTERFACE_INFO of s_axis_tx_status_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_tx_status TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tx_status_TDATA : signal is "XIL_INTERFACENAME s_axis_tx_status, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0";
begin
inst: entity work.echo_server_application_ip_echo_server_application_top
     port map (
      aclk => aclk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_start => ap_start,
      aresetn => aresetn,
      m_axis_close_connection_TDATA(15 downto 0) => m_axis_close_connection_TDATA(15 downto 0),
      m_axis_close_connection_TREADY => m_axis_close_connection_TREADY,
      m_axis_close_connection_TVALID => m_axis_close_connection_TVALID,
      m_axis_listen_port_TDATA(15 downto 0) => m_axis_listen_port_TDATA(15 downto 0),
      m_axis_listen_port_TREADY => m_axis_listen_port_TREADY,
      m_axis_listen_port_TVALID => m_axis_listen_port_TVALID,
      m_axis_open_connection_TDATA(47 downto 0) => m_axis_open_connection_TDATA(47 downto 0),
      m_axis_open_connection_TREADY => m_axis_open_connection_TREADY,
      m_axis_open_connection_TVALID => m_axis_open_connection_TVALID,
      m_axis_read_package_TDATA(31 downto 0) => m_axis_read_package_TDATA(31 downto 0),
      m_axis_read_package_TREADY => m_axis_read_package_TREADY,
      m_axis_read_package_TVALID => m_axis_read_package_TVALID,
      m_axis_tx_data_TDATA(63 downto 0) => m_axis_tx_data_TDATA(63 downto 0),
      m_axis_tx_data_TKEEP(7 downto 0) => m_axis_tx_data_TKEEP(7 downto 0),
      m_axis_tx_data_TLAST(0) => m_axis_tx_data_TLAST(0),
      m_axis_tx_data_TREADY => m_axis_tx_data_TREADY,
      m_axis_tx_data_TVALID => m_axis_tx_data_TVALID,
      m_axis_tx_metadata_TDATA(15 downto 0) => m_axis_tx_metadata_TDATA(15 downto 0),
      m_axis_tx_metadata_TREADY => m_axis_tx_metadata_TREADY,
      m_axis_tx_metadata_TVALID => m_axis_tx_metadata_TVALID,
      s_axis_listen_port_status_TDATA(7 downto 0) => s_axis_listen_port_status_TDATA(7 downto 0),
      s_axis_listen_port_status_TREADY => s_axis_listen_port_status_TREADY,
      s_axis_listen_port_status_TVALID => s_axis_listen_port_status_TVALID,
      s_axis_notifications_TDATA(87 downto 0) => s_axis_notifications_TDATA(87 downto 0),
      s_axis_notifications_TREADY => s_axis_notifications_TREADY,
      s_axis_notifications_TVALID => s_axis_notifications_TVALID,
      s_axis_open_status_TDATA(23 downto 0) => s_axis_open_status_TDATA(23 downto 0),
      s_axis_open_status_TREADY => s_axis_open_status_TREADY,
      s_axis_open_status_TVALID => s_axis_open_status_TVALID,
      s_axis_rx_data_TDATA(63 downto 0) => s_axis_rx_data_TDATA(63 downto 0),
      s_axis_rx_data_TKEEP(7 downto 0) => s_axis_rx_data_TKEEP(7 downto 0),
      s_axis_rx_data_TLAST(0) => s_axis_rx_data_TLAST(0),
      s_axis_rx_data_TREADY => s_axis_rx_data_TREADY,
      s_axis_rx_data_TVALID => s_axis_rx_data_TVALID,
      s_axis_rx_metadata_TDATA(15 downto 0) => s_axis_rx_metadata_TDATA(15 downto 0),
      s_axis_rx_metadata_TREADY => s_axis_rx_metadata_TREADY,
      s_axis_rx_metadata_TVALID => s_axis_rx_metadata_TVALID,
      s_axis_tx_status_TDATA(23 downto 0) => s_axis_tx_status_TDATA(23 downto 0),
      s_axis_tx_status_TREADY => s_axis_tx_status_TREADY,
      s_axis_tx_status_TVALID => s_axis_tx_status_TVALID
    );
end STRUCTURE;
