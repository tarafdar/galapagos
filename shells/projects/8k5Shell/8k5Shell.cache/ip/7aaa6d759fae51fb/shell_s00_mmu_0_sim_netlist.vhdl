-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon Jul  3 18:16:25 2017
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_s00_mmu_0_sim_netlist.vhdl
-- Design      : shell_s00_mmu_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_decerr_slave is
  port (
    err_bvalid : out STD_LOGIC;
    err_wready : out STD_LOGIC;
    err_rvalid : out STD_LOGIC;
    err_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    \gen_axilite.gen_write.s_axi_awready_i_reg_0\ : out STD_LOGIC;
    \gen_write.w_state_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    \gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \m_payload_i_reg[32]\ : in STD_LOGIC;
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_write.w_cnt_reg[0]\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_awready_i : in STD_LOGIC;
    \m_payload_i_reg[32]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    mr_axi_arvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_decerr_slave;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_decerr_slave is
  signal \^err_arready\ : STD_LOGIC;
  signal \^err_bvalid\ : STD_LOGIC;
  signal \^err_rvalid\ : STD_LOGIC;
  signal \^err_wready\ : STD_LOGIC;
  signal \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal \gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axilite.gen_read.s_axi_rvalid_i_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_axilite.gen_write.s_axi_awready_i_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_axilite.gen_write.s_axi_bvalid_i_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_write.w_state[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair0";
begin
  err_arready <= \^err_arready\;
  err_bvalid <= \^err_bvalid\;
  err_rvalid <= \^err_rvalid\;
  err_wready <= \^err_wready\;
  \gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ <= \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\;
\gen_axilite.gen_read.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]\,
      Q => \^err_arready\,
      R => '0'
    );
\gen_axilite.gen_read.s_axi_rvalid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744444444444444"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^err_rvalid\,
      I2 => \m_payload_i_reg[32]_0\(0),
      I3 => mr_axi_arvalid,
      I4 => \^err_arready\,
      I5 => \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\,
      O => \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0\
    );
\gen_axilite.gen_read.s_axi_rvalid_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_read.r_state_reg[1]\(0),
      I1 => \gen_read.r_state_reg[1]\(1),
      O => \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\
    );
\gen_axilite.gen_read.s_axi_rvalid_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0\,
      Q => \^err_rvalid\,
      R => SR(0)
    );
\gen_axilite.gen_write.s_axi_awready_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \gen_axilite.gen_write.s_axi_awready_i_reg_0\
    );
\gen_axilite.gen_write.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[32]\,
      Q => \^err_wready\,
      R => SR(0)
    );
\gen_axilite.gen_write.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3444"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^err_bvalid\,
      I2 => \^err_wready\,
      I3 => s_axi_awready_i,
      O => \gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axilite.gen_write.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0\,
      Q => \^err_bvalid\,
      R => SR(0)
    );
\gen_read.r_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0FFFF88F00000"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => s_axi_rready,
      I2 => \gen_read.ar_cnt_reg[0]\,
      I3 => \gen_read.r_state_reg[1]\(1),
      I4 => \gen_read.r_state_reg[1]\(0),
      I5 => m_valid_i_reg,
      O => E(0)
    );
\gen_write.w_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^err_bvalid\,
      I1 => s_axi_bready,
      O => \gen_write.w_state_reg[0]\
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^err_bvalid\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => m_axi_bvalid,
      O => s_axi_bvalid
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => \gen_read.r_state_reg[1]\(0),
      I2 => \gen_read.r_state_reg[1]\(1),
      I3 => m_axi_rvalid,
      O => s_axi_rvalid
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000ACCC"
    )
        port map (
      I0 => \^err_wready\,
      I1 => m_axi_wready,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write.w_cnt_reg[0]\,
      O => s_axi_wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice is
  port (
    \m_payload_i_reg[0]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axilite.gen_read.s_axi_arready_i_reg\ : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    \gen_read.r_state_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 35 downto 0 );
    \gen_read.r_state_reg[0]\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_read.ar_cnt_reg[5]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \gen_axilite.gen_read.s_axi_arready_i_reg_0\ : out STD_LOGIC;
    \gen_write.w_mask_reg\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \aresetn_d_reg[0]\ : in STD_LOGIC;
    \aresetn_d_reg[0]_0\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_read.ar_cnt_reg[5]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    err_arready : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_0\ : in STD_LOGIC;
    \s_axi_arprot[2]\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    aresetn : in STD_LOGIC;
    \gen_read.r_state_reg[0]_0\ : in STD_LOGIC;
    err_rvalid : in STD_LOGIC;
    w_mask : in STD_LOGIC;
    w_mask0 : in STD_LOGIC;
    \gen_write.w_state_reg[0]\ : in STD_LOGIC;
    \s_axi_awaddr[22]\ : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \^gen_axilite.gen_read.s_axi_arready_i_reg\ : STD_LOGIC;
  signal \gen_read.ar_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_3__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_4__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_5__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_6__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_7__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_8__0_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[0]_0\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal \m_valid_i_i_2__0_n_0\ : STD_LOGIC;
  signal r_match : STD_LOGIC;
  signal \s_ready_i_i_1__0_n_0\ : STD_LOGIC;
  signal sr_axi_arready : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_read.r_state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_read.r_state[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_read.r_state[1]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of m_valid_i_i_1 : label is "soft_lutpair6";
begin
  Q(35 downto 0) <= \^q\(35 downto 0);
  SR(0) <= \^sr\(0);
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \gen_axilite.gen_read.s_axi_arready_i_reg\ <= \^gen_axilite.gen_read.s_axi_arready_i_reg\;
  \m_payload_i_reg[0]_0\ <= \^m_payload_i_reg[0]_0\;
\aresetn_d[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_d_reg[1]_0\
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[0]_0\,
      Q => \^gen_axilite.gen_read.s_axi_arready_i_reg\,
      R => \^aresetn_d_reg[1]_0\
    );
\gen_axilite.gen_read.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0AAAA2AAA"
    )
        port map (
      I0 => \^gen_axilite.gen_read.s_axi_arready_i_reg\,
      I1 => \gen_read.r_state_reg[0]_0\,
      I2 => err_arready,
      I3 => \^m_payload_i_reg[0]_0\,
      I4 => \^q\(32),
      I5 => err_rvalid,
      O => \gen_axilite.gen_read.s_axi_arready_i_reg_0\
    );
\gen_read.ar_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I1 => \gen_read.ar_cnt_reg[5]_1\(0),
      I2 => \gen_read.ar_cnt_reg[5]_1\(1),
      O => \gen_read.ar_cnt_reg[5]_0\(0)
    );
\gen_read.ar_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_1\(2),
      I1 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I2 => \gen_read.ar_cnt_reg[5]_1\(0),
      I3 => \gen_read.ar_cnt_reg[5]_1\(1),
      O => \gen_read.ar_cnt_reg[5]_0\(1)
    );
\gen_read.ar_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I1 => \gen_read.ar_cnt_reg[5]_1\(1),
      I2 => \gen_read.ar_cnt_reg[5]_1\(0),
      I3 => \gen_read.ar_cnt_reg[5]_1\(2),
      I4 => \gen_read.ar_cnt_reg[5]_1\(3),
      O => \gen_read.ar_cnt_reg[5]_0\(2)
    );
\gen_read.ar_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_1\(4),
      I1 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I2 => \gen_read.ar_cnt_reg[5]_1\(1),
      I3 => \gen_read.ar_cnt_reg[5]_1\(0),
      I4 => \gen_read.ar_cnt_reg[5]_1\(3),
      I5 => \gen_read.ar_cnt_reg[5]_1\(2),
      O => \gen_read.ar_cnt_reg[5]_0\(3)
    );
\gen_read.ar_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[0]_0\,
      I1 => \m_payload_i[32]_i_2__0_n_0\,
      I2 => s_axi_arvalid,
      I3 => \gen_read.ar_cnt_reg[5]_1\(5),
      I4 => sr_axi_arready,
      O => \gen_read.ar_cnt[4]_i_2_n_0\
    );
\gen_read.ar_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \gen_read.ar_cnt[5]_i_3_n_0\,
      I1 => \gen_read.ar_cnt_reg[0]\,
      I2 => m_axi_rvalid,
      I3 => s_axi_rready,
      O => \gen_read.ar_cnt_reg[5]\(0)
    );
\gen_read.ar_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_1\(5),
      I1 => \gen_read.ar_cnt_reg[5]_1\(4),
      I2 => \gen_read.ar_cnt_reg[5]_1\(2),
      I3 => \gen_read.ar_cnt_reg[5]_1\(3),
      I4 => \gen_read.ar_cnt[5]_i_4_n_0\,
      O => \gen_read.ar_cnt_reg[5]_0\(4)
    );
\gen_read.ar_cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sr_axi_arready,
      I1 => \gen_read.ar_cnt_reg[5]_1\(5),
      I2 => s_axi_arvalid,
      I3 => \m_payload_i[32]_i_2__0_n_0\,
      O => \gen_read.ar_cnt[5]_i_3_n_0\
    );
\gen_read.ar_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008EEEEEEEF"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_1\(0),
      I1 => \gen_read.ar_cnt_reg[5]_1\(1),
      I2 => \gen_read.ar_cnt[5]_i_5_n_0\,
      I3 => \m_payload_i[32]_i_2__0_n_0\,
      I4 => \gen_read.ar_cnt_reg[0]_0\,
      I5 => \gen_read.ar_cnt_reg[5]_1\(2),
      O => \gen_read.ar_cnt[5]_i_4_n_0\
    );
\gen_read.ar_cnt[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gen_read.ar_cnt_reg[5]_1\(5),
      I2 => sr_axi_arready,
      O => \gen_read.ar_cnt[5]_i_5_n_0\
    );
\gen_read.r_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^m_payload_i_reg[0]_0\,
      I2 => \gen_read.r_state_reg[1]_0\(1),
      I3 => \gen_read.r_state_reg[1]_0\(0),
      O => \gen_read.r_state_reg[1]\(0)
    );
\gen_read.r_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F00"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      I1 => \^q\(32),
      I2 => \gen_read.r_state_reg[1]_0\(1),
      I3 => \gen_read.r_state_reg[1]_0\(0),
      O => \gen_read.r_state_reg[1]\(1)
    );
\gen_read.r_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      I1 => \^q\(32),
      O => \gen_read.r_state_reg[0]\
    );
\gen_write.w_mask_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0000000E000E0"
    )
        port map (
      I0 => w_mask,
      I1 => w_mask0,
      I2 => \^gen_axilite.gen_read.s_axi_arready_i_reg\,
      I3 => \gen_write.w_state_reg[0]\,
      I4 => \s_axi_awaddr[22]\,
      I5 => s_axi_awready,
      O => \gen_write.w_mask_reg\
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^m_payload_i_reg[0]_0\,
      I2 => \gen_read.r_state_reg[1]_0\(0),
      O => m_axi_arvalid
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      O => \m_payload_i[31]_i_1__0_n_0\
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_payload_i[32]_i_2__0_n_0\,
      O => r_match
    );
\m_payload_i[32]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => \m_payload_i[32]_i_3__0_n_0\,
      I1 => \m_payload_i[32]_i_4__0_n_0\,
      I2 => \m_payload_i[32]_i_5__0_n_0\,
      I3 => \m_payload_i[32]_i_6__0_n_0\,
      I4 => \m_payload_i[32]_i_7__0_n_0\,
      I5 => \m_payload_i[32]_i_8__0_n_0\,
      O => \m_payload_i[32]_i_2__0_n_0\
    );
\m_payload_i[32]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500005545"
    )
        port map (
      I0 => \s_axi_arprot[2]\(21),
      I1 => \s_axi_arprot[2]\(27),
      I2 => \s_axi_arprot[2]\(31),
      I3 => \s_axi_arprot[2]\(22),
      I4 => \s_axi_arprot[2]\(24),
      I5 => \s_axi_arprot[2]\(26),
      O => \m_payload_i[32]_i_3__0_n_0\
    );
\m_payload_i[32]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA8A"
    )
        port map (
      I0 => \s_axi_arprot[2]\(24),
      I1 => \s_axi_arprot[2]\(14),
      I2 => \s_axi_arprot[2]\(22),
      I3 => \s_axi_arprot[2]\(12),
      I4 => \s_axi_arprot[2]\(15),
      I5 => \s_axi_arprot[2]\(13),
      O => \m_payload_i[32]_i_4__0_n_0\
    );
\m_payload_i[32]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBFFFFFFFFFBBB"
    )
        port map (
      I0 => \s_axi_arprot[2]\(20),
      I1 => \s_axi_arprot[2]\(30),
      I2 => \s_axi_arprot[2]\(22),
      I3 => \s_axi_arprot[2]\(21),
      I4 => \s_axi_arprot[2]\(23),
      I5 => \s_axi_arprot[2]\(26),
      O => \m_payload_i[32]_i_5__0_n_0\
    );
\m_payload_i[32]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \s_axi_arprot[2]\(29),
      I1 => \s_axi_arprot[2]\(28),
      I2 => \s_axi_arprot[2]\(25),
      O => \m_payload_i[32]_i_6__0_n_0\
    );
\m_payload_i[32]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_arprot[2]\(31),
      I1 => \s_axi_arprot[2]\(27),
      I2 => \s_axi_arprot[2]\(18),
      I3 => \s_axi_arprot[2]\(16),
      I4 => \s_axi_arprot[2]\(19),
      I5 => \s_axi_arprot[2]\(17),
      O => \m_payload_i[32]_i_7__0_n_0\
    );
\m_payload_i[32]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \s_axi_arprot[2]\(21),
      I1 => \s_axi_arprot[2]\(27),
      I2 => \s_axi_arprot[2]\(31),
      I3 => \s_axi_arprot[2]\(22),
      O => \m_payload_i[32]_i_8__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => r_match,
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(32),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(33),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(34),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1__0_n_0\,
      D => \s_axi_arprot[2]\(9),
      Q => \^q\(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"440F"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_1\(5),
      I1 => s_axi_arvalid,
      I2 => \m_valid_i_i_2__0_n_0\,
      I3 => sr_axi_arready,
      O => m_valid_i_i_1_n_0
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_axilite.gen_read.s_axi_arready_i_reg\,
      O => \^sr\(0)
    );
\m_valid_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30008888"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^q\(32),
      I2 => err_arready,
      I3 => \gen_read.r_state_reg[1]_0\(1),
      I4 => \gen_read.r_state_reg[1]_0\(0),
      O => \m_valid_i_i_2__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => \^m_payload_i_reg[0]_0\,
      R => \^sr\(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_axi_arready,
      I1 => \gen_read.ar_cnt_reg[5]_1\(5),
      O => s_axi_arready
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BFFFF"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_1\(5),
      I1 => s_axi_arvalid,
      I2 => \^m_payload_i_reg[0]_0\,
      I3 => \m_valid_i_i_2__0_n_0\,
      I4 => \^gen_axilite.gen_read.s_axi_arready_i_reg\,
      O => \s_ready_i_i_1__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__0_n_0\,
      Q => sr_axi_arready,
      R => \aresetn_d_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice_0 is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready_i : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_write.aw_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \m_payload_i_reg[32]_0\ : out STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[32]_1\ : out STD_LOGIC;
    \m_payload_i_reg[32]_2\ : out STD_LOGIC;
    \m_payload_i_reg[32]_3\ : out STD_LOGIC;
    \m_payload_i_reg[32]_4\ : out STD_LOGIC;
    \m_payload_i_reg[32]_5\ : out STD_LOGIC;
    \m_payload_i_reg[32]_6\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    \gen_axilite.gen_write.s_axi_awready_i_reg\ : out STD_LOGIC;
    \m_axi_awprot[2]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    err_bvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awready : in STD_LOGIC;
    err_wready : in STD_LOGIC;
    \gen_write.w_state_reg[0]\ : in STD_LOGIC;
    \gen_axilite.gen_write.s_axi_bvalid_i_reg\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_2\ : in STD_LOGIC;
    \s_axi_awaddr[13]\ : in STD_LOGIC;
    \s_axi_awprot[2]\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \gen_write.w_state_reg[1]\ : in STD_LOGIC;
    \aresetn_d_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice_0 : entity is "axi_register_slice_v2_1_11_axic_register_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice_0 is
  signal \^aresetn_d_reg[1]\ : STD_LOGIC;
  signal \gen_write.aw_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_1\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_2\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_3\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_4\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_5\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_6\ : STD_LOGIC;
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal m_valid_i_i_3_n_0 : STD_LOGIC;
  signal mr_axi_awaddr : STD_LOGIC_VECTOR ( 32 to 32 );
  signal mr_axi_awvalid : STD_LOGIC;
  signal s_ready_i_i_2_n_0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal sr_axi_awready : STD_LOGIC;
  signal w_match : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_write.w_state[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of m_axi_awvalid_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of m_valid_i_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axi_awready_INST_0 : label is "soft_lutpair10";
begin
  \aresetn_d_reg[1]\ <= \^aresetn_d_reg[1]\;
  \m_payload_i_reg[32]_0\ <= \^m_payload_i_reg[32]_0\;
  \m_payload_i_reg[32]_1\ <= \^m_payload_i_reg[32]_1\;
  \m_payload_i_reg[32]_2\ <= \^m_payload_i_reg[32]_2\;
  \m_payload_i_reg[32]_3\ <= \^m_payload_i_reg[32]_3\;
  \m_payload_i_reg[32]_4\ <= \^m_payload_i_reg[32]_4\;
  \m_payload_i_reg[32]_5\ <= \^m_payload_i_reg[32]_5\;
  \m_payload_i_reg[32]_6\ <= \^m_payload_i_reg[32]_6\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \^aresetn_d_reg[1]\,
      R => aresetn
    );
\gen_axilite.gen_write.s_axi_awready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00002000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => mr_axi_awaddr(32),
      I2 => mr_axi_awvalid,
      I3 => \gen_write.w_state_reg[1]\,
      I4 => err_bvalid,
      I5 => err_wready,
      O => \gen_axilite.gen_write.s_axi_awready_i_reg\
    );
\gen_axilite.gen_write.s_axi_bvalid_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => err_bvalid,
      I1 => Q(1),
      I2 => Q(0),
      I3 => mr_axi_awvalid,
      I4 => mr_axi_awaddr(32),
      I5 => s_axi_wvalid,
      O => s_axi_awready_i
    );
\gen_write.aw_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I1 => \gen_write.aw_cnt_reg[5]_1\(0),
      I2 => \gen_write.aw_cnt_reg[5]_1\(1),
      O => \gen_write.aw_cnt_reg[5]\(0)
    );
\gen_write.aw_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_1\(2),
      I1 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I2 => \gen_write.aw_cnt_reg[5]_1\(0),
      I3 => \gen_write.aw_cnt_reg[5]_1\(1),
      O => \gen_write.aw_cnt_reg[5]\(1)
    );
\gen_write.aw_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I1 => \gen_write.aw_cnt_reg[5]_1\(1),
      I2 => \gen_write.aw_cnt_reg[5]_1\(0),
      I3 => \gen_write.aw_cnt_reg[5]_1\(2),
      I4 => \gen_write.aw_cnt_reg[5]_1\(3),
      O => \gen_write.aw_cnt_reg[5]\(2)
    );
\gen_write.aw_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_1\(4),
      I1 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I2 => \gen_write.aw_cnt_reg[5]_1\(1),
      I3 => \gen_write.aw_cnt_reg[5]_1\(0),
      I4 => \gen_write.aw_cnt_reg[5]_1\(3),
      I5 => \gen_write.aw_cnt_reg[5]_1\(2),
      O => \gen_write.aw_cnt_reg[5]\(3)
    );
\gen_write.aw_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_0\,
      I1 => \^m_payload_i_reg[32]_2\,
      I2 => \^m_payload_i_reg[32]_3\,
      I3 => \^m_payload_i_reg[32]_4\,
      I4 => \gen_write.aw_cnt[5]_i_6_n_0\,
      I5 => \gen_write.aw_cnt_reg[5]_2\,
      O => \gen_write.aw_cnt[4]_i_2_n_0\
    );
\gen_write.aw_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAAAA"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_2\,
      I1 => \^m_payload_i_reg[32]_1\,
      I2 => sr_axi_awready,
      I3 => \gen_write.aw_cnt_reg[5]_1\(5),
      I4 => s_axi_awvalid,
      O => \gen_write.aw_cnt_reg[5]_0\(0)
    );
\gen_write.aw_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAA96AAAAAAA"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_1\(5),
      I1 => \gen_write.aw_cnt_reg[5]_1\(4),
      I2 => \gen_write.aw_cnt_reg[5]_1\(2),
      I3 => \gen_write.aw_cnt_reg[5]_1\(3),
      I4 => \gen_write.aw_cnt[5]_i_4_n_0\,
      I5 => \gen_write.aw_cnt[5]_i_5_n_0\,
      O => \gen_write.aw_cnt_reg[5]\(4)
    );
\gen_write.aw_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_2\,
      I1 => \gen_write.aw_cnt[5]_i_6_n_0\,
      I2 => \s_axi_awaddr[13]\,
      I3 => \^m_payload_i_reg[32]_0\,
      I4 => \gen_write.aw_cnt_reg[5]_1\(0),
      I5 => \gen_write.aw_cnt_reg[5]_1\(1),
      O => \gen_write.aw_cnt[5]_i_4_n_0\
    );
\gen_write.aw_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_1\(0),
      I1 => \gen_write.aw_cnt_reg[5]_1\(1),
      I2 => \gen_write.aw_cnt_reg[5]_2\,
      I3 => \gen_write.aw_cnt[5]_i_6_n_0\,
      I4 => \s_axi_awaddr[13]\,
      I5 => \^m_payload_i_reg[32]_0\,
      O => \gen_write.aw_cnt[5]_i_5_n_0\
    );
\gen_write.aw_cnt[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sr_axi_awready,
      I1 => \gen_write.aw_cnt_reg[5]_1\(5),
      I2 => s_axi_awvalid,
      O => \gen_write.aw_cnt[5]_i_6_n_0\
    );
\gen_write.w_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => mr_axi_awaddr(32),
      I1 => mr_axi_awvalid,
      I2 => Q(0),
      I3 => Q(1),
      O => D(0)
    );
\gen_write.w_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEFAFEAAAEAAA"
    )
        port map (
      I0 => \gen_write.w_state_reg[0]\,
      I1 => \gen_axilite.gen_write.s_axi_bvalid_i_reg\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => mr_axi_awaddr(32),
      I5 => mr_axi_awvalid,
      O => E(0)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mr_axi_awaddr(32),
      I1 => mr_axi_awvalid,
      I2 => Q(0),
      O => m_axi_awvalid
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mr_axi_awvalid,
      O => \m_payload_i[31]_i_1_n_0\
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_1\,
      O => w_match
    );
\m_payload_i[32]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_0\,
      I1 => \^m_payload_i_reg[32]_2\,
      I2 => \^m_payload_i_reg[32]_3\,
      I3 => \^m_payload_i_reg[32]_4\,
      O => \^m_payload_i_reg[32]_1\
    );
\m_payload_i[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFF00"
    )
        port map (
      I0 => \s_axi_awprot[2]\(24),
      I1 => \s_axi_awprot[2]\(22),
      I2 => \^m_payload_i_reg[32]_6\,
      I3 => \s_axi_awprot[2]\(20),
      I4 => \s_axi_awprot[2]\(26),
      I5 => \s_axi_awprot[2]\(21),
      O => \^m_payload_i_reg[32]_0\
    );
\m_payload_i[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA8AAAA"
    )
        port map (
      I0 => \s_axi_awprot[2]\(24),
      I1 => \s_axi_awprot[2]\(14),
      I2 => \s_axi_awprot[2]\(12),
      I3 => \s_axi_awprot[2]\(15),
      I4 => \s_axi_awprot[2]\(22),
      I5 => \s_axi_awprot[2]\(13),
      O => \^m_payload_i_reg[32]_2\
    );
\m_payload_i[32]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFB"
    )
        port map (
      I0 => \s_axi_awprot[2]\(28),
      I1 => \s_axi_awprot[2]\(30),
      I2 => \s_axi_awprot[2]\(25),
      I3 => \s_axi_awprot[2]\(29),
      I4 => \s_axi_awprot[2]\(23),
      I5 => \s_axi_awprot[2]\(26),
      O => \^m_payload_i_reg[32]_3\
    );
\m_payload_i[32]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2F2F200F2F2"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_5\,
      I1 => \s_axi_awprot[2]\(24),
      I2 => \^m_payload_i_reg[32]_6\,
      I3 => \s_axi_awprot[2]\(27),
      I4 => \s_axi_awprot[2]\(31),
      I5 => \s_axi_awprot[2]\(22),
      O => \^m_payload_i_reg[32]_4\
    );
\m_payload_i[32]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_awprot[2]\(18),
      I1 => \s_axi_awprot[2]\(16),
      I2 => \s_axi_awprot[2]\(19),
      I3 => \s_axi_awprot[2]\(17),
      I4 => \s_axi_awprot[2]\(31),
      I5 => \s_axi_awprot[2]\(27),
      O => \^m_payload_i_reg[32]_6\
    );
\m_payload_i[32]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \s_axi_awprot[2]\(20),
      I1 => \s_axi_awprot[2]\(21),
      I2 => \s_axi_awprot[2]\(22),
      O => \^m_payload_i_reg[32]_5\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(0),
      Q => \m_axi_awprot[2]\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(10),
      Q => \m_axi_awprot[2]\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(11),
      Q => \m_axi_awprot[2]\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(12),
      Q => \m_axi_awprot[2]\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(13),
      Q => \m_axi_awprot[2]\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(14),
      Q => \m_axi_awprot[2]\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(15),
      Q => \m_axi_awprot[2]\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(16),
      Q => \m_axi_awprot[2]\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(17),
      Q => \m_axi_awprot[2]\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(18),
      Q => \m_axi_awprot[2]\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(19),
      Q => \m_axi_awprot[2]\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(1),
      Q => \m_axi_awprot[2]\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(20),
      Q => \m_axi_awprot[2]\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(21),
      Q => \m_axi_awprot[2]\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(22),
      Q => \m_axi_awprot[2]\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(23),
      Q => \m_axi_awprot[2]\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(24),
      Q => \m_axi_awprot[2]\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(25),
      Q => \m_axi_awprot[2]\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(26),
      Q => \m_axi_awprot[2]\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(27),
      Q => \m_axi_awprot[2]\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(28),
      Q => \m_axi_awprot[2]\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(29),
      Q => \m_axi_awprot[2]\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(2),
      Q => \m_axi_awprot[2]\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(30),
      Q => \m_axi_awprot[2]\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(31),
      Q => \m_axi_awprot[2]\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => w_match,
      Q => mr_axi_awaddr(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(32),
      Q => \m_axi_awprot[2]\(32),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(33),
      Q => \m_axi_awprot[2]\(33),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(34),
      Q => \m_axi_awprot[2]\(34),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(3),
      Q => \m_axi_awprot[2]\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(4),
      Q => \m_axi_awprot[2]\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(5),
      Q => \m_axi_awprot[2]\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(6),
      Q => \m_axi_awprot[2]\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(7),
      Q => \m_axi_awprot[2]\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(8),
      Q => \m_axi_awprot[2]\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_awprot[2]\(9),
      Q => \m_axi_awprot[2]\(9),
      R => '0'
    );
m_valid_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C55"
    )
        port map (
      I0 => m_valid_i_i_3_n_0,
      I1 => s_axi_awvalid,
      I2 => \gen_write.aw_cnt_reg[5]_1\(5),
      I3 => sr_axi_awready,
      O => m_valid_i_i_2_n_0
    );
m_valid_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38080808"
    )
        port map (
      I0 => m_axi_awready,
      I1 => mr_axi_awaddr(32),
      I2 => Q(0),
      I3 => Q(1),
      I4 => err_wready,
      O => m_valid_i_i_3_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_2_n_0,
      Q => mr_axi_awvalid,
      R => SR(0)
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_axi_awready,
      I1 => \gen_write.aw_cnt_reg[5]_1\(5),
      O => s_axi_awready
    );
s_ready_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]\,
      O => \^s_ready_i_reg_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBFFFF"
    )
        port map (
      I0 => m_valid_i_i_3_n_0,
      I1 => mr_axi_awvalid,
      I2 => \gen_write.aw_cnt_reg[5]_1\(5),
      I3 => s_axi_awvalid,
      I4 => \aresetn_d_reg[1]_0\,
      O => s_ready_i_i_2_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_2_n_0,
      Q => sr_axi_awready,
      R => \^s_ready_i_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axi_register_slice is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mr_axi_arvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready_i : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_read.r_state_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_axi_arprot[2]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    \gen_read.r_state_reg[0]\ : out STD_LOGIC;
    \gen_write.aw_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \m_payload_i_reg[32]\ : out STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[32]_0\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_read.ar_cnt_reg[5]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arready : out STD_LOGIC;
    \m_payload_i_reg[32]_1\ : out STD_LOGIC;
    \m_payload_i_reg[32]_2\ : out STD_LOGIC;
    \m_payload_i_reg[32]_3\ : out STD_LOGIC;
    \m_payload_i_reg[32]_4\ : out STD_LOGIC;
    \m_payload_i_reg[32]_5\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \gen_axilite.gen_read.s_axi_arready_i_reg\ : out STD_LOGIC;
    \gen_write.w_mask_reg\ : out STD_LOGIC;
    \gen_axilite.gen_write.s_axi_awready_i_reg\ : out STD_LOGIC;
    \m_axi_awprot[2]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    err_bvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awready : in STD_LOGIC;
    err_wready : in STD_LOGIC;
    \gen_write.w_state_reg[0]\ : in STD_LOGIC;
    \gen_axilite.gen_write.s_axi_bvalid_i_reg\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_read.ar_cnt_reg[5]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    err_arready : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_2\ : in STD_LOGIC;
    \s_axi_awaddr[13]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_0\ : in STD_LOGIC;
    \s_axi_awprot[2]\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \s_axi_arprot[2]\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    aresetn : in STD_LOGIC;
    \gen_read.r_state_reg[0]_0\ : in STD_LOGIC;
    err_rvalid : in STD_LOGIC;
    w_mask : in STD_LOGIC;
    w_mask0 : in STD_LOGIC;
    \gen_write.w_state_reg[1]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axi_register_slice is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ar_pipe_n_2 : STD_LOGIC;
  signal ar_pipe_n_3 : STD_LOGIC;
  signal aw_pipe_n_0 : STD_LOGIC;
  signal aw_pipe_n_1 : STD_LOGIC;
  signal \^m_payload_i_reg[32]_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
  \m_payload_i_reg[32]_0\ <= \^m_payload_i_reg[32]_0\;
  s_axi_awready <= \^s_axi_awready\;
ar_pipe: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice
     port map (
      Q(35 downto 0) => \m_axi_arprot[2]\(35 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]\ => aw_pipe_n_0,
      \aresetn_d_reg[0]_0\ => aw_pipe_n_1,
      \aresetn_d_reg[1]_0\ => ar_pipe_n_3,
      err_arready => err_arready,
      err_rvalid => err_rvalid,
      \gen_axilite.gen_read.s_axi_arready_i_reg\ => ar_pipe_n_2,
      \gen_axilite.gen_read.s_axi_arready_i_reg_0\ => \gen_axilite.gen_read.s_axi_arready_i_reg\,
      \gen_read.ar_cnt_reg[0]\ => \gen_read.ar_cnt_reg[0]\,
      \gen_read.ar_cnt_reg[0]_0\ => \gen_read.ar_cnt_reg[0]_0\,
      \gen_read.ar_cnt_reg[5]\(0) => \gen_read.ar_cnt_reg[5]\(0),
      \gen_read.ar_cnt_reg[5]_0\(4 downto 0) => \gen_read.ar_cnt_reg[5]_0\(4 downto 0),
      \gen_read.ar_cnt_reg[5]_1\(5 downto 0) => \gen_read.ar_cnt_reg[5]_1\(5 downto 0),
      \gen_read.r_state_reg[0]\ => \gen_read.r_state_reg[0]\,
      \gen_read.r_state_reg[0]_0\ => \gen_read.r_state_reg[0]_0\,
      \gen_read.r_state_reg[1]\(1 downto 0) => \gen_read.r_state_reg[1]\(1 downto 0),
      \gen_read.r_state_reg[1]_0\(1 downto 0) => \gen_read.r_state_reg[1]_0\(1 downto 0),
      \gen_write.w_mask_reg\ => \gen_write.w_mask_reg\,
      \gen_write.w_state_reg[0]\ => \gen_write.w_state_reg[0]\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[0]_0\ => mr_axi_arvalid,
      \s_axi_arprot[2]\(34 downto 0) => \s_axi_arprot[2]\(34 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \s_axi_awaddr[22]\ => \^m_payload_i_reg[32]_0\,
      s_axi_awready => \^s_axi_awready\,
      s_axi_rready => s_axi_rready,
      w_mask => w_mask,
      w_mask0 => w_mask0
    );
aw_pipe: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice_0
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      aresetn => ar_pipe_n_3,
      \aresetn_d_reg[1]\ => aw_pipe_n_1,
      \aresetn_d_reg[1]_0\ => ar_pipe_n_2,
      err_bvalid => err_bvalid,
      err_wready => err_wready,
      \gen_axilite.gen_write.s_axi_awready_i_reg\ => \gen_axilite.gen_write.s_axi_awready_i_reg\,
      \gen_axilite.gen_write.s_axi_bvalid_i_reg\ => \gen_axilite.gen_write.s_axi_bvalid_i_reg\,
      \gen_write.aw_cnt_reg[5]\(4 downto 0) => \gen_write.aw_cnt_reg[5]\(4 downto 0),
      \gen_write.aw_cnt_reg[5]_0\(0) => \gen_write.aw_cnt_reg[5]_0\(0),
      \gen_write.aw_cnt_reg[5]_1\(5 downto 0) => \gen_write.aw_cnt_reg[5]_1\(5 downto 0),
      \gen_write.aw_cnt_reg[5]_2\ => \gen_write.aw_cnt_reg[5]_2\,
      \gen_write.w_state_reg[0]\ => \gen_write.w_state_reg[0]\,
      \gen_write.w_state_reg[1]\ => \gen_write.w_state_reg[1]\,
      \m_axi_awprot[2]\(34 downto 0) => \m_axi_awprot[2]\(34 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \m_payload_i_reg[32]_0\ => \m_payload_i_reg[32]\,
      \m_payload_i_reg[32]_1\ => \^m_payload_i_reg[32]_0\,
      \m_payload_i_reg[32]_2\ => \m_payload_i_reg[32]_1\,
      \m_payload_i_reg[32]_3\ => \m_payload_i_reg[32]_2\,
      \m_payload_i_reg[32]_4\ => \m_payload_i_reg[32]_3\,
      \m_payload_i_reg[32]_5\ => \m_payload_i_reg[32]_4\,
      \m_payload_i_reg[32]_6\ => \m_payload_i_reg[32]_5\,
      \s_axi_awaddr[13]\ => \s_axi_awaddr[13]\,
      \s_axi_awprot[2]\(34 downto 0) => \s_axi_awprot[2]\(34 downto 0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awready_i => s_axi_awready_i,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      s_ready_i_reg_0 => aw_pipe_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_BASE_ADDR : string;
  attribute C_BASE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "256'b0000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000100010010100000000000000000000000000000000000000000000000000000010000010100000000000000000000000000000000000000000000000000000001000000001000000000000000000000";
  attribute C_DEST : string;
  attribute C_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "4'b0000";
  attribute C_DEST_WIDTH : integer;
  attribute C_DEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "kintexu";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 32;
  attribute C_M_AXI_SUPPORTS_READ : string;
  attribute C_M_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "4'b1111";
  attribute C_M_AXI_SUPPORTS_WRITE : string;
  attribute C_M_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "4'b1111";
  attribute C_NUM_RANGES : integer;
  attribute C_NUM_RANGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 4;
  attribute C_PREFIX : string;
  attribute C_PREFIX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "4'b0000";
  attribute C_PREFIX_WIDTH : integer;
  attribute C_PREFIX_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_RANGE_SIZE : string;
  attribute C_RANGE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "128'b00000000000000000000000000010100000000000000000000000000000100000000000000000000000000000000110000000000000000000000000000010000";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 32;
  attribute C_S_AXI_SUPPORTS_READ : integer;
  attribute C_S_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_S_AXI_SUPPORTS_WRITE : integer;
  attribute C_S_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute C_USES_DEST : integer;
  attribute C_USES_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "2'b11";
  attribute P_NUM_RANGES_LOG : integer;
  attribute P_NUM_RANGES_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is 2;
  attribute R_DECERR : string;
  attribute R_DECERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "2'b11";
  attribute R_IDLE : string;
  attribute R_IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "2'b00";
  attribute R_PENDING : string;
  attribute R_PENDING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "2'b01";
  attribute W_DECERR : string;
  attribute W_DECERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "2'b11";
  attribute W_IDLE : string;
  attribute W_IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "2'b00";
  attribute W_PENDING : string;
  attribute W_PENDING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top : entity is "2'b01";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal decerr_slave_inst_n_10 : STD_LOGIC;
  signal decerr_slave_inst_n_6 : STD_LOGIC;
  signal decerr_slave_inst_n_7 : STD_LOGIC;
  signal decerr_slave_inst_n_8 : STD_LOGIC;
  signal err_arready : STD_LOGIC;
  signal err_bvalid : STD_LOGIC;
  signal err_rvalid : STD_LOGIC;
  signal err_wready : STD_LOGIC;
  signal \gen_read.ar_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_read.r_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_read.r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_read.r_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_write.aw_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_8_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_write.w_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_8_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_write.w_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.w_state[1]_i_5_n_0\ : STD_LOGIC;
  signal mr_axi_araddr : STD_LOGIC_VECTOR ( 32 to 32 );
  signal mr_axi_arvalid : STD_LOGIC;
  signal r_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal register_slice_inst_n_0 : STD_LOGIC;
  signal register_slice_inst_n_2 : STD_LOGIC;
  signal register_slice_inst_n_4 : STD_LOGIC;
  signal register_slice_inst_n_43 : STD_LOGIC;
  signal register_slice_inst_n_44 : STD_LOGIC;
  signal register_slice_inst_n_45 : STD_LOGIC;
  signal register_slice_inst_n_46 : STD_LOGIC;
  signal register_slice_inst_n_47 : STD_LOGIC;
  signal register_slice_inst_n_48 : STD_LOGIC;
  signal register_slice_inst_n_49 : STD_LOGIC;
  signal register_slice_inst_n_50 : STD_LOGIC;
  signal register_slice_inst_n_51 : STD_LOGIC;
  signal register_slice_inst_n_52 : STD_LOGIC;
  signal register_slice_inst_n_53 : STD_LOGIC;
  signal register_slice_inst_n_54 : STD_LOGIC;
  signal register_slice_inst_n_55 : STD_LOGIC;
  signal register_slice_inst_n_56 : STD_LOGIC;
  signal register_slice_inst_n_57 : STD_LOGIC;
  signal register_slice_inst_n_59 : STD_LOGIC;
  signal register_slice_inst_n_60 : STD_LOGIC;
  signal register_slice_inst_n_61 : STD_LOGIC;
  signal register_slice_inst_n_62 : STD_LOGIC;
  signal register_slice_inst_n_63 : STD_LOGIC;
  signal register_slice_inst_n_67 : STD_LOGIC;
  signal register_slice_inst_n_68 : STD_LOGIC;
  signal register_slice_inst_n_69 : STD_LOGIC;
  signal s_axi_awready_i : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_mask : STD_LOGIC;
  signal w_mask0 : STD_LOGIC;
  signal w_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_write.w_cnt[1]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_7\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_write.w_state[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_write.w_state[1]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair19";
begin
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const1>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const1>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const1>\;
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const1>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
decerr_slave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_decerr_slave
     port map (
      E(0) => decerr_slave_inst_n_8,
      Q(1 downto 0) => w_state(1 downto 0),
      SR(0) => register_slice_inst_n_0,
      aclk => aclk,
      \aresetn_d_reg[1]\ => register_slice_inst_n_67,
      err_arready => err_arready,
      err_bvalid => err_bvalid,
      err_rvalid => err_rvalid,
      err_wready => err_wready,
      \gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ => decerr_slave_inst_n_10,
      \gen_axilite.gen_write.s_axi_awready_i_reg_0\ => decerr_slave_inst_n_6,
      \gen_read.ar_cnt_reg[0]\ => \gen_read.r_state[1]_i_3_n_0\,
      \gen_read.r_state_reg[1]\(1) => \gen_read.r_state_reg_n_0_[1]\,
      \gen_read.r_state_reg[1]\(0) => \gen_read.r_state_reg_n_0_[0]\,
      \gen_write.w_cnt_reg[0]\ => s_axi_wready_INST_0_i_1_n_0,
      \gen_write.w_state_reg[0]\ => decerr_slave_inst_n_7,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      \m_payload_i_reg[32]\ => register_slice_inst_n_69,
      \m_payload_i_reg[32]_0\(0) => mr_axi_araddr(32),
      m_valid_i_reg => register_slice_inst_n_43,
      mr_axi_arvalid => mr_axi_arvalid,
      s_axi_awready_i => s_axi_awready_i,
      s_axi_bready => \^s_axi_bready\,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rready => \^s_axi_rready\,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wready => s_axi_wready
    );
\gen_read.ar_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(0),
      O => \gen_read.ar_cnt[0]_i_1_n_0\
    );
\gen_read.ar_cnt[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \gen_read.r_state[1]_i_3_n_0\,
      I1 => m_axi_rvalid,
      I2 => \^s_axi_rready\,
      O => \gen_read.ar_cnt[5]_i_6_n_0\
    );
\gen_read.ar_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_52,
      D => \gen_read.ar_cnt[0]_i_1_n_0\,
      Q => \gen_read.ar_cnt_reg__0\(0),
      R => register_slice_inst_n_0
    );
\gen_read.ar_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_52,
      D => register_slice_inst_n_57,
      Q => \gen_read.ar_cnt_reg__0\(1),
      R => register_slice_inst_n_0
    );
\gen_read.ar_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_52,
      D => register_slice_inst_n_56,
      Q => \gen_read.ar_cnt_reg__0\(2),
      R => register_slice_inst_n_0
    );
\gen_read.ar_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_52,
      D => register_slice_inst_n_55,
      Q => \gen_read.ar_cnt_reg__0\(3),
      R => register_slice_inst_n_0
    );
\gen_read.ar_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_52,
      D => register_slice_inst_n_54,
      Q => \gen_read.ar_cnt_reg__0\(4),
      R => register_slice_inst_n_0
    );
\gen_read.ar_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_52,
      D => register_slice_inst_n_53,
      Q => \gen_read.ar_cnt_reg__0\(5),
      R => register_slice_inst_n_0
    );
\gen_read.r_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(0),
      I1 => \gen_read.ar_cnt_reg__0\(1),
      I2 => \gen_read.ar_cnt_reg__0\(4),
      I3 => \gen_read.ar_cnt_reg__0\(5),
      I4 => \gen_read.ar_cnt_reg__0\(2),
      I5 => \gen_read.ar_cnt_reg__0\(3),
      O => \gen_read.r_state[1]_i_3_n_0\
    );
\gen_read.r_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => decerr_slave_inst_n_8,
      D => r_state(0),
      Q => \gen_read.r_state_reg_n_0_[0]\,
      R => register_slice_inst_n_0
    );
\gen_read.r_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => decerr_slave_inst_n_8,
      D => r_state(1),
      Q => \gen_read.r_state_reg_n_0_[1]\,
      R => register_slice_inst_n_0
    );
\gen_write.aw_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.aw_cnt[0]_i_1_n_0\
    );
\gen_write.aw_cnt[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_write.w_state[1]_i_5_n_0\,
      I1 => m_axi_bvalid,
      I2 => \^s_axi_bready\,
      O => \gen_write.aw_cnt[5]_i_3_n_0\
    );
\gen_write.aw_cnt[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4544"
    )
        port map (
      I0 => \gen_write.aw_cnt[5]_i_8_n_0\,
      I1 => register_slice_inst_n_63,
      I2 => s_axi_awaddr(24),
      I3 => register_slice_inst_n_62,
      I4 => register_slice_inst_n_60,
      I5 => register_slice_inst_n_59,
      O => \gen_write.aw_cnt[5]_i_7_n_0\
    );
\gen_write.aw_cnt[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_awaddr(22),
      I1 => s_axi_awaddr(31),
      I2 => s_axi_awaddr(27),
      O => \gen_write.aw_cnt[5]_i_8_n_0\
    );
\gen_write.aw_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_50,
      D => \gen_write.aw_cnt[0]_i_1_n_0\,
      Q => \gen_write.aw_cnt_reg__0\(0),
      R => register_slice_inst_n_0
    );
\gen_write.aw_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_50,
      D => register_slice_inst_n_48,
      Q => \gen_write.aw_cnt_reg__0\(1),
      R => register_slice_inst_n_0
    );
\gen_write.aw_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_50,
      D => register_slice_inst_n_47,
      Q => \gen_write.aw_cnt_reg__0\(2),
      R => register_slice_inst_n_0
    );
\gen_write.aw_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_50,
      D => register_slice_inst_n_46,
      Q => \gen_write.aw_cnt_reg__0\(3),
      R => register_slice_inst_n_0
    );
\gen_write.aw_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_50,
      D => register_slice_inst_n_45,
      Q => \gen_write.aw_cnt_reg__0\(4),
      R => register_slice_inst_n_0
    );
\gen_write.aw_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_50,
      D => register_slice_inst_n_44,
      Q => \gen_write.aw_cnt_reg__0\(5),
      R => register_slice_inst_n_0
    );
\gen_write.w_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[0]_i_1_n_0\
    );
\gen_write.w_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB00040004FFFB"
    )
        port map (
      I0 => register_slice_inst_n_51,
      I1 => w_mask0,
      I2 => w_mask,
      I3 => \gen_write.w_cnt[5]_i_3_n_0\,
      I4 => \gen_write.w_cnt_reg__0\(0),
      I5 => \gen_write.w_cnt_reg__0\(1),
      O => \gen_write.w_cnt[1]_i_1_n_0\
    );
\gen_write.w_cnt[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gen_write.aw_cnt_reg__0\(5),
      O => w_mask0
    );
\gen_write.w_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      I1 => \gen_write.w_cnt_reg__0\(1),
      I2 => \gen_write.w_cnt[4]_i_2_n_0\,
      I3 => \gen_write.w_cnt_reg__0\(2),
      O => \gen_write.w_cnt[2]_i_1_n_0\
    );
\gen_write.w_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFB2004"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(2),
      I1 => \gen_write.w_cnt[4]_i_2_n_0\,
      I2 => \gen_write.w_cnt_reg__0\(1),
      I3 => \gen_write.w_cnt_reg__0\(0),
      I4 => \gen_write.w_cnt_reg__0\(3),
      O => \gen_write.w_cnt[3]_i_1_n_0\
    );
\gen_write.w_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(4),
      I1 => \gen_write.w_cnt_reg__0\(0),
      I2 => \gen_write.w_cnt_reg__0\(1),
      I3 => \gen_write.w_cnt[4]_i_2_n_0\,
      I4 => \gen_write.w_cnt_reg__0\(2),
      I5 => \gen_write.w_cnt_reg__0\(3),
      O => \gen_write.w_cnt[4]_i_1_n_0\
    );
\gen_write.w_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_3_n_0\,
      I1 => \gen_write.w_cnt[5]_i_8_n_0\,
      I2 => register_slice_inst_n_49,
      I3 => register_slice_inst_n_59,
      I4 => register_slice_inst_n_60,
      I5 => register_slice_inst_n_61,
      O => \gen_write.w_cnt[4]_i_2_n_0\
    );
\gen_write.w_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA9AA"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_3_n_0\,
      I1 => w_mask,
      I2 => \gen_write.aw_cnt_reg__0\(5),
      I3 => s_axi_awvalid,
      I4 => register_slice_inst_n_51,
      O => \gen_write.w_cnt[5]_i_1_n_0\
    );
\gen_write.w_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955AAAAA9"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(5),
      I1 => \gen_write.w_cnt[5]_i_4_n_0\,
      I2 => \gen_write.w_cnt_reg__0\(2),
      I3 => \gen_write.w_cnt_reg__0\(3),
      I4 => \gen_write.w_cnt_reg__0\(4),
      I5 => \gen_write.w_cnt[5]_i_5_n_0\,
      O => \gen_write.w_cnt[5]_i_2_n_0\
    );
\gen_write.w_cnt[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000888"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => m_axi_wready,
      I2 => w_state(0),
      I3 => w_state(1),
      I4 => s_axi_wready_INST_0_i_1_n_0,
      O => \gen_write.w_cnt[5]_i_3_n_0\
    );
\gen_write.w_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555755"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_6_n_0\,
      I1 => \gen_write.aw_cnt[5]_i_7_n_0\,
      I2 => register_slice_inst_n_49,
      I3 => w_mask0,
      I4 => w_mask,
      I5 => \gen_write.w_cnt[5]_i_3_n_0\,
      O => \gen_write.w_cnt[5]_i_4_n_0\
    );
\gen_write.w_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_7_n_0\,
      I1 => \gen_write.w_cnt[5]_i_3_n_0\,
      I2 => \gen_write.w_cnt[5]_i_8_n_0\,
      I3 => register_slice_inst_n_49,
      I4 => \gen_write.aw_cnt[5]_i_7_n_0\,
      I5 => \gen_write.w_cnt_reg__0\(2),
      O => \gen_write.w_cnt[5]_i_5_n_0\
    );
\gen_write.w_cnt[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(1),
      I1 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[5]_i_6_n_0\
    );
\gen_write.w_cnt[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(1),
      I1 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[5]_i_7_n_0\
    );
\gen_write.w_cnt[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => w_mask,
      I1 => \gen_write.aw_cnt_reg__0\(5),
      I2 => s_axi_awvalid,
      O => \gen_write.w_cnt[5]_i_8_n_0\
    );
\gen_write.w_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[0]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(0),
      R => register_slice_inst_n_0
    );
\gen_write.w_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[1]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(1),
      R => register_slice_inst_n_0
    );
\gen_write.w_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[2]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(2),
      R => register_slice_inst_n_0
    );
\gen_write.w_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[3]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(3),
      R => register_slice_inst_n_0
    );
\gen_write.w_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[4]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(4),
      R => register_slice_inst_n_0
    );
\gen_write.w_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[5]_i_2_n_0\,
      Q => \gen_write.w_cnt_reg__0\(5),
      R => register_slice_inst_n_0
    );
\gen_write.w_mask_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_68,
      Q => w_mask,
      R => '0'
    );
\gen_write.w_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => w_state(0),
      I1 => w_state(1),
      O => \gen_write.w_state[1]_i_2_n_0\
    );
\gen_write.w_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => w_state(0),
      I2 => w_state(1),
      I3 => \gen_write.w_state[1]_i_5_n_0\,
      O => \gen_write.w_state[1]_i_3_n_0\
    );
\gen_write.w_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(5),
      I1 => \gen_write.aw_cnt_reg__0\(4),
      I2 => \gen_write.aw_cnt_reg__0\(2),
      I3 => \gen_write.aw_cnt_reg__0\(3),
      I4 => \gen_write.aw_cnt_reg__0\(1),
      I5 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.w_state[1]_i_5_n_0\
    );
\gen_write.w_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_4,
      D => register_slice_inst_n_2,
      Q => w_state(0),
      R => register_slice_inst_n_0
    );
\gen_write.w_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_4,
      D => \gen_write.w_state[1]_i_2_n_0\,
      Q => w_state(1),
      R => register_slice_inst_n_0
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_wready_INST_0_i_1_n_0,
      I2 => w_state(1),
      I3 => w_state(0),
      O => m_axi_wvalid
    );
register_slice_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axi_register_slice
     port map (
      D(0) => register_slice_inst_n_2,
      E(0) => register_slice_inst_n_4,
      Q(1 downto 0) => w_state(1 downto 0),
      SR(0) => register_slice_inst_n_0,
      aclk => aclk,
      aresetn => aresetn,
      err_arready => err_arready,
      err_bvalid => err_bvalid,
      err_rvalid => err_rvalid,
      err_wready => err_wready,
      \gen_axilite.gen_read.s_axi_arready_i_reg\ => register_slice_inst_n_67,
      \gen_axilite.gen_write.s_axi_awready_i_reg\ => register_slice_inst_n_69,
      \gen_axilite.gen_write.s_axi_bvalid_i_reg\ => decerr_slave_inst_n_7,
      \gen_read.ar_cnt_reg[0]\ => \gen_read.r_state[1]_i_3_n_0\,
      \gen_read.ar_cnt_reg[0]_0\ => \gen_read.ar_cnt[5]_i_6_n_0\,
      \gen_read.ar_cnt_reg[5]\(0) => register_slice_inst_n_52,
      \gen_read.ar_cnt_reg[5]_0\(4) => register_slice_inst_n_53,
      \gen_read.ar_cnt_reg[5]_0\(3) => register_slice_inst_n_54,
      \gen_read.ar_cnt_reg[5]_0\(2) => register_slice_inst_n_55,
      \gen_read.ar_cnt_reg[5]_0\(1) => register_slice_inst_n_56,
      \gen_read.ar_cnt_reg[5]_0\(0) => register_slice_inst_n_57,
      \gen_read.ar_cnt_reg[5]_1\(5 downto 0) => \gen_read.ar_cnt_reg__0\(5 downto 0),
      \gen_read.r_state_reg[0]\ => register_slice_inst_n_43,
      \gen_read.r_state_reg[0]_0\ => decerr_slave_inst_n_10,
      \gen_read.r_state_reg[1]\(1 downto 0) => r_state(1 downto 0),
      \gen_read.r_state_reg[1]_0\(1) => \gen_read.r_state_reg_n_0_[1]\,
      \gen_read.r_state_reg[1]_0\(0) => \gen_read.r_state_reg_n_0_[0]\,
      \gen_write.aw_cnt_reg[5]\(4) => register_slice_inst_n_44,
      \gen_write.aw_cnt_reg[5]\(3) => register_slice_inst_n_45,
      \gen_write.aw_cnt_reg[5]\(2) => register_slice_inst_n_46,
      \gen_write.aw_cnt_reg[5]\(1) => register_slice_inst_n_47,
      \gen_write.aw_cnt_reg[5]\(0) => register_slice_inst_n_48,
      \gen_write.aw_cnt_reg[5]_0\(0) => register_slice_inst_n_50,
      \gen_write.aw_cnt_reg[5]_1\(5 downto 0) => \gen_write.aw_cnt_reg__0\(5 downto 0),
      \gen_write.aw_cnt_reg[5]_2\ => \gen_write.aw_cnt[5]_i_3_n_0\,
      \gen_write.w_mask_reg\ => register_slice_inst_n_68,
      \gen_write.w_state_reg[0]\ => \gen_write.w_state[1]_i_3_n_0\,
      \gen_write.w_state_reg[1]\ => decerr_slave_inst_n_6,
      \m_axi_arprot[2]\(35 downto 33) => m_axi_arprot(2 downto 0),
      \m_axi_arprot[2]\(32) => mr_axi_araddr(32),
      \m_axi_arprot[2]\(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \m_axi_awprot[2]\(34 downto 32) => m_axi_awprot(2 downto 0),
      \m_axi_awprot[2]\(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[32]\ => register_slice_inst_n_49,
      \m_payload_i_reg[32]_0\ => register_slice_inst_n_51,
      \m_payload_i_reg[32]_1\ => register_slice_inst_n_59,
      \m_payload_i_reg[32]_2\ => register_slice_inst_n_60,
      \m_payload_i_reg[32]_3\ => register_slice_inst_n_61,
      \m_payload_i_reg[32]_4\ => register_slice_inst_n_62,
      \m_payload_i_reg[32]_5\ => register_slice_inst_n_63,
      mr_axi_arvalid => mr_axi_arvalid,
      \s_axi_arprot[2]\(34 downto 32) => s_axi_arprot(2 downto 0),
      \s_axi_arprot[2]\(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \s_axi_awaddr[13]\ => \gen_write.aw_cnt[5]_i_7_n_0\,
      \s_axi_awprot[2]\(34 downto 32) => s_axi_awprot(2 downto 0),
      \s_axi_awprot[2]\(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awready_i => s_axi_awready_i,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => \^s_axi_rready\,
      s_axi_wvalid => s_axi_wvalid,
      w_mask => w_mask,
      w_mask0 => w_mask0
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => w_state(0),
      I2 => w_state(1),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_bresp(1),
      I1 => w_state(0),
      I2 => w_state(1),
      O => s_axi_bresp(1)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rdata(9)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \gen_read.r_state_reg_n_0_[1]\,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      O => s_axi_rresp(1)
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      I1 => \gen_write.w_cnt_reg__0\(1),
      I2 => \gen_write.w_cnt_reg__0\(2),
      I3 => \gen_write.w_cnt_reg__0\(3),
      I4 => \gen_write.w_cnt_reg__0\(4),
      I5 => \gen_write.w_cnt_reg__0\(5),
      O => s_axi_wready_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_s00_mmu_0,axi_mmu_v2_1_9_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_mmu_v2_1_9_top,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_BASE_ADDR : string;
  attribute C_BASE_ADDR of inst : label is "256'b0000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000100010010100000000000000000000000000000000000000000000000000000010000010100000000000000000000000000000000000000000000000000000001000000001000000000000000000000";
  attribute C_DEST : string;
  attribute C_DEST of inst : label is "4'b0000";
  attribute C_DEST_WIDTH : integer;
  attribute C_DEST_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "kintexu";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_M_AXI_SUPPORTS_READ : string;
  attribute C_M_AXI_SUPPORTS_READ of inst : label is "4'b1111";
  attribute C_M_AXI_SUPPORTS_WRITE : string;
  attribute C_M_AXI_SUPPORTS_WRITE of inst : label is "4'b1111";
  attribute C_NUM_RANGES : integer;
  attribute C_NUM_RANGES of inst : label is 4;
  attribute C_PREFIX : string;
  attribute C_PREFIX of inst : label is "4'b0000";
  attribute C_PREFIX_WIDTH : integer;
  attribute C_PREFIX_WIDTH of inst : label is 1;
  attribute C_RANGE_SIZE : string;
  attribute C_RANGE_SIZE of inst : label is "128'b00000000000000000000000000010100000000000000000000000000000100000000000000000000000000000000110000000000000000000000000000010000";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_S_AXI_SUPPORTS_READ : integer;
  attribute C_S_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_S_AXI_SUPPORTS_WRITE : integer;
  attribute C_S_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_USES_DEST : integer;
  attribute C_USES_DEST of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_NUM_RANGES_LOG : integer;
  attribute P_NUM_RANGES_LOG of inst : label is 2;
  attribute R_DECERR : string;
  attribute R_DECERR of inst : label is "2'b11";
  attribute R_IDLE : string;
  attribute R_IDLE of inst : label is "2'b00";
  attribute R_PENDING : string;
  attribute R_PENDING of inst : label is "2'b01";
  attribute W_DECERR : string;
  attribute W_DECERR of inst : label is "2'b11";
  attribute W_IDLE : string;
  attribute W_IDLE of inst : label is "2'b00";
  attribute W_PENDING : string;
  attribute W_PENDING of inst : label is "2'b01";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_9_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '1',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '1',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
