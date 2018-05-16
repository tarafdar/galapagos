-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed May 16 15:52:52 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_pr_decoupler_0_0/shell_pr_decoupler_0_0_sim_netlist.vhdl
-- Design      : shell_pr_decoupler_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_pr_decoupler_0_0_axi_lite_if is
  port (
    decouple_status : out STD_LOGIC;
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_rvalid : out STD_LOGIC;
    s_stream_out_TREADY : out STD_LOGIC;
    rp_stream_out_TVALID : out STD_LOGIC;
    rp_stream_in_TREADY : out STD_LOGIC;
    s_stream_in_TVALID : out STD_LOGIC;
    s_control_WREADY : out STD_LOGIC;
    rp_control_WVALID : out STD_LOGIC;
    rp_control_RREADY : out STD_LOGIC;
    s_control_RVALID : out STD_LOGIC;
    rp_control_BREADY : out STD_LOGIC;
    s_control_BVALID : out STD_LOGIC;
    s_control_AWREADY : out STD_LOGIC;
    rp_control_AWVALID : out STD_LOGIC;
    s_control_ARREADY : out STD_LOGIC;
    rp_control_ARVALID : out STD_LOGIC;
    rp_pr_axi_mem_WREADY : out STD_LOGIC;
    s_pr_axi_mem_WVALID : out STD_LOGIC;
    s_pr_axi_mem_RREADY : out STD_LOGIC;
    rp_pr_axi_mem_RVALID : out STD_LOGIC;
    s_pr_axi_mem_BREADY : out STD_LOGIC;
    rp_pr_axi_mem_BVALID : out STD_LOGIC;
    rp_pr_axi_mem_AWREADY : out STD_LOGIC;
    s_pr_axi_mem_AWVALID : out STD_LOGIC;
    rp_pr_axi_mem_ARREADY : out STD_LOGIC;
    s_pr_axi_mem_ARVALID : out STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    s_axi_reg_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    s_axi_reg_arvalid : in STD_LOGIC;
    rp_stream_out_TREADY : in STD_LOGIC;
    s_stream_out_TVALID : in STD_LOGIC;
    s_stream_in_TREADY : in STD_LOGIC;
    rp_stream_in_TVALID : in STD_LOGIC;
    rp_control_WREADY : in STD_LOGIC;
    s_control_WVALID : in STD_LOGIC;
    s_control_RREADY : in STD_LOGIC;
    rp_control_RVALID : in STD_LOGIC;
    s_control_BREADY : in STD_LOGIC;
    rp_control_BVALID : in STD_LOGIC;
    rp_control_AWREADY : in STD_LOGIC;
    s_control_AWVALID : in STD_LOGIC;
    rp_control_ARREADY : in STD_LOGIC;
    s_control_ARVALID : in STD_LOGIC;
    s_pr_axi_mem_WREADY : in STD_LOGIC;
    rp_pr_axi_mem_WVALID : in STD_LOGIC;
    rp_pr_axi_mem_RREADY : in STD_LOGIC;
    s_pr_axi_mem_RVALID : in STD_LOGIC;
    rp_pr_axi_mem_BREADY : in STD_LOGIC;
    s_pr_axi_mem_BVALID : in STD_LOGIC;
    s_pr_axi_mem_AWREADY : in STD_LOGIC;
    rp_pr_axi_mem_AWVALID : in STD_LOGIC;
    s_pr_axi_mem_ARREADY : in STD_LOGIC;
    rp_pr_axi_mem_ARVALID : in STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_wvalid : in STD_LOGIC;
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_aresetn : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_pr_decoupler_0_0_axi_lite_if : entity is "axi_lite_if";
end shell_pr_decoupler_0_0_axi_lite_if;

architecture STRUCTURE of shell_pr_decoupler_0_0_axi_lite_if is
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal decouple_bit_i_i_1_n_0 : STD_LOGIC;
  signal \^decouple_status\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_rdata_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_reg_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_reg_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_reg_rvalid\ : STD_LOGIC;
  signal \s_axi_rresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "st_write:011,st_read:100,st_read_resp:010,st_idle:000,st_write_resp:001";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "st_write:011,st_read:100,st_read_resp:010,st_idle:000,st_write_resp:001";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "st_write:011,st_read:100,st_read_resp:010,st_idle:000,st_write_resp:001";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_control_ARVALID_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of rp_control_AWVALID_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of rp_control_BREADY_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rp_control_RREADY_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of rp_control_WVALID_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rp_pr_axi_mem_ARREADY_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of rp_pr_axi_mem_AWREADY_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of rp_pr_axi_mem_BVALID_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of rp_pr_axi_mem_RVALID_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of rp_pr_axi_mem_WREADY_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of rp_stream_in_TREADY_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of rp_stream_out_TVALID_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_control_ARREADY_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_control_AWREADY_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_control_BVALID_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_control_RVALID_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_control_WREADY_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_pr_axi_mem_ARVALID_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of s_pr_axi_mem_AWVALID_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_pr_axi_mem_BREADY_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_pr_axi_mem_RREADY_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_pr_axi_mem_WVALID_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_stream_in_TVALID_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_stream_out_TREADY_INST_0 : label is "soft_lutpair0";
begin
  decouple_status <= \^decouple_status\;
  s_axi_reg_rdata(0) <= \^s_axi_reg_rdata\(0);
  s_axi_reg_rresp(0) <= \^s_axi_reg_rresp\(0);
  s_axi_reg_rvalid <= \^s_axi_reg_rvalid\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400043"
    )
        port map (
      I0 => s_axi_reg_bready,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => s_axi_reg_arvalid,
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011101"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => s_axi_reg_arvalid,
      I3 => current_state(2),
      I4 => s_axi_reg_rready,
      O => next_state(1)
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11101010"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => s_axi_reg_arvalid,
      I3 => s_axi_reg_wvalid,
      I4 => s_axi_reg_awvalid,
      I5 => \FSM_sequential_current_state[2]_i_3_n_0\,
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => s_axi_reg_arvalid,
      I3 => current_state(1),
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55504A4A"
    )
        port map (
      I0 => current_state(2),
      I1 => s_axi_reg_rready,
      I2 => current_state(1),
      I3 => s_axi_reg_bready,
      I4 => current_state(0),
      O => \FSM_sequential_current_state[2]_i_3_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \FSM_sequential_current_state[2]_i_1_n_0\,
      D => next_state(0),
      Q => current_state(0),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \FSM_sequential_current_state[2]_i_1_n_0\,
      D => next_state(1),
      Q => current_state(1),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \FSM_sequential_current_state[2]_i_1_n_0\,
      D => \FSM_sequential_current_state[2]_i_2_n_0\,
      Q => current_state(2),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
decouple_bit_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_reg_wdata(0),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => s_axi_reg_awaddr(0),
      I4 => \^decouple_status\,
      O => decouple_bit_i_i_1_n_0
    );
decouple_bit_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => decouple_bit_i_i_1_n_0,
      Q => \^decouple_status\,
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
rp_control_ARVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_control_ARVALID,
      I1 => \^decouple_status\,
      O => rp_control_ARVALID
    );
rp_control_AWVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_control_AWVALID,
      I1 => \^decouple_status\,
      O => rp_control_AWVALID
    );
rp_control_BREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_control_BREADY,
      I1 => \^decouple_status\,
      O => rp_control_BREADY
    );
rp_control_RREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_control_RREADY,
      I1 => \^decouple_status\,
      O => rp_control_RREADY
    );
rp_control_WVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_control_WVALID,
      I1 => \^decouple_status\,
      O => rp_control_WVALID
    );
rp_pr_axi_mem_ARREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_pr_axi_mem_ARREADY,
      I1 => \^decouple_status\,
      O => rp_pr_axi_mem_ARREADY
    );
rp_pr_axi_mem_AWREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_pr_axi_mem_AWREADY,
      I1 => \^decouple_status\,
      O => rp_pr_axi_mem_AWREADY
    );
rp_pr_axi_mem_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_pr_axi_mem_BVALID,
      I1 => \^decouple_status\,
      O => rp_pr_axi_mem_BVALID
    );
rp_pr_axi_mem_RVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_pr_axi_mem_RVALID,
      I1 => \^decouple_status\,
      O => rp_pr_axi_mem_RVALID
    );
rp_pr_axi_mem_WREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_pr_axi_mem_WREADY,
      I1 => \^decouple_status\,
      O => rp_pr_axi_mem_WREADY
    );
rp_stream_in_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_stream_in_TREADY,
      I1 => \^decouple_status\,
      O => rp_stream_in_TREADY
    );
rp_stream_out_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_stream_out_TVALID,
      I1 => \^decouple_status\,
      O => rp_stream_out_TVALID
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_reg_aresetn,
      O => \s_axi_rdata_i[0]_i_1_n_0\
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEF0220"
    )
        port map (
      I0 => \^decouple_status\,
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => \^s_axi_reg_rdata\(0),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_axi_rdata_i[0]_i_2_n_0\,
      Q => \^s_axi_reg_rdata\(0),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
s_axi_reg_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      O => s_axi_reg_arready
    );
\s_axi_reg_bresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => s_axi_reg_awaddr(0),
      O => s_axi_reg_bresp(0)
    );
s_axi_reg_bvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      O => s_axi_reg_bvalid
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888CC888888008"
    )
        port map (
      I0 => \^s_axi_reg_rresp\(0),
      I1 => s_axi_reg_aresetn,
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => s_axi_reg_araddr(0),
      O => \s_axi_rresp_i[1]_i_1_n_0\
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_axi_rresp_i[1]_i_1_n_0\,
      Q => \^s_axi_reg_rresp\(0),
      R => '0'
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06FF0606"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => s_axi_reg_rready,
      I4 => \^s_axi_reg_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_reg_rvalid\,
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
s_control_ARREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_control_ARREADY,
      I1 => \^decouple_status\,
      O => s_control_ARREADY
    );
s_control_AWREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_control_AWREADY,
      I1 => \^decouple_status\,
      O => s_control_AWREADY
    );
s_control_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_control_BVALID,
      I1 => \^decouple_status\,
      O => s_control_BVALID
    );
s_control_RVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_control_RVALID,
      I1 => \^decouple_status\,
      O => s_control_RVALID
    );
s_control_WREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_control_WREADY,
      I1 => \^decouple_status\,
      O => s_control_WREADY
    );
s_pr_axi_mem_ARVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_pr_axi_mem_ARVALID,
      I1 => \^decouple_status\,
      O => s_pr_axi_mem_ARVALID
    );
s_pr_axi_mem_AWVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_pr_axi_mem_AWVALID,
      I1 => \^decouple_status\,
      O => s_pr_axi_mem_AWVALID
    );
s_pr_axi_mem_BREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_pr_axi_mem_BREADY,
      I1 => \^decouple_status\,
      O => s_pr_axi_mem_BREADY
    );
s_pr_axi_mem_RREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_pr_axi_mem_RREADY,
      I1 => \^decouple_status\,
      O => s_pr_axi_mem_RREADY
    );
s_pr_axi_mem_WVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_pr_axi_mem_WVALID,
      I1 => \^decouple_status\,
      O => s_pr_axi_mem_WVALID
    );
s_stream_in_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_stream_in_TVALID,
      I1 => \^decouple_status\,
      O => s_stream_in_TVALID
    );
s_stream_out_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_stream_out_TREADY,
      I1 => \^decouple_status\,
      O => s_stream_out_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0 is
  port (
    s_pr_axi_mem_ARVALID : out STD_LOGIC;
    rp_pr_axi_mem_ARVALID : in STD_LOGIC;
    s_pr_axi_mem_ARREADY : in STD_LOGIC;
    rp_pr_axi_mem_ARREADY : out STD_LOGIC;
    s_pr_axi_mem_AWVALID : out STD_LOGIC;
    rp_pr_axi_mem_AWVALID : in STD_LOGIC;
    s_pr_axi_mem_AWREADY : in STD_LOGIC;
    rp_pr_axi_mem_AWREADY : out STD_LOGIC;
    s_pr_axi_mem_BVALID : in STD_LOGIC;
    rp_pr_axi_mem_BVALID : out STD_LOGIC;
    s_pr_axi_mem_BREADY : out STD_LOGIC;
    rp_pr_axi_mem_BREADY : in STD_LOGIC;
    s_pr_axi_mem_RVALID : in STD_LOGIC;
    rp_pr_axi_mem_RVALID : out STD_LOGIC;
    s_pr_axi_mem_RREADY : out STD_LOGIC;
    rp_pr_axi_mem_RREADY : in STD_LOGIC;
    s_pr_axi_mem_WVALID : out STD_LOGIC;
    rp_pr_axi_mem_WVALID : in STD_LOGIC;
    s_pr_axi_mem_WREADY : in STD_LOGIC;
    rp_pr_axi_mem_WREADY : out STD_LOGIC;
    s_pr_axi_mem_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_pr_axi_mem_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pr_axi_mem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_pr_axi_mem_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pr_axi_mem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_WID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_pr_axi_mem_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_pr_axi_mem_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_pr_axi_mem_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_pr_axi_mem_WLAST : out STD_LOGIC;
    rp_pr_axi_mem_WLAST : in STD_LOGIC;
    s_pr_axi_mem_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_pr_axi_mem_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pr_axi_mem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_pr_axi_mem_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pr_axi_mem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_pr_axi_mem_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_pr_axi_mem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_RLAST : in STD_LOGIC;
    rp_pr_axi_mem_RLAST : out STD_LOGIC;
    s_control_ARVALID : in STD_LOGIC;
    rp_control_ARVALID : out STD_LOGIC;
    s_control_ARREADY : out STD_LOGIC;
    rp_control_ARREADY : in STD_LOGIC;
    s_control_AWVALID : in STD_LOGIC;
    rp_control_AWVALID : out STD_LOGIC;
    s_control_AWREADY : out STD_LOGIC;
    rp_control_AWREADY : in STD_LOGIC;
    s_control_BVALID : out STD_LOGIC;
    rp_control_BVALID : in STD_LOGIC;
    s_control_BREADY : in STD_LOGIC;
    rp_control_BREADY : out STD_LOGIC;
    s_control_RVALID : out STD_LOGIC;
    rp_control_RVALID : in STD_LOGIC;
    s_control_RREADY : in STD_LOGIC;
    rp_control_RREADY : out STD_LOGIC;
    s_control_WVALID : in STD_LOGIC;
    rp_control_WVALID : out STD_LOGIC;
    s_control_WREADY : out STD_LOGIC;
    rp_control_WREADY : in STD_LOGIC;
    s_control_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_control_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_control_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_control_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_control_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_control_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_control_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_control_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_stream_in_TVALID : out STD_LOGIC;
    rp_stream_in_TVALID : in STD_LOGIC;
    s_stream_in_TREADY : in STD_LOGIC;
    rp_stream_in_TREADY : out STD_LOGIC;
    s_stream_in_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_stream_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_stream_in_TLAST : out STD_LOGIC;
    rp_stream_in_TLAST : in STD_LOGIC;
    s_stream_in_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_stream_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_stream_out_TVALID : in STD_LOGIC;
    rp_stream_out_TVALID : out STD_LOGIC;
    s_stream_out_TREADY : out STD_LOGIC;
    rp_stream_out_TREADY : in STD_LOGIC;
    s_stream_out_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_stream_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_stream_out_TLAST : in STD_LOGIC;
    rp_stream_out_TLAST : out STD_LOGIC;
    s_stream_out_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_stream_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_reg_aresetn : in STD_LOGIC;
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_awready : out STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_wvalid : in STD_LOGIC;
    s_axi_reg_wready : out STD_LOGIC;
    s_axi_reg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    s_axi_reg_bready : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_arvalid : in STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_rvalid : out STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0 : entity is "kintexu";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0 : entity is "prd_shell_pr_decoupler_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0 : entity is "yes";
end shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0;

architecture STRUCTURE of shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^rp_control_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rp_control_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_control_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rp_pr_axi_mem_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_pr_axi_mem_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rp_pr_axi_mem_arcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rp_pr_axi_mem_arid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rp_pr_axi_mem_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rp_pr_axi_mem_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rp_pr_axi_mem_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^rp_pr_axi_mem_arqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rp_pr_axi_mem_arregion\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rp_pr_axi_mem_arsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^rp_pr_axi_mem_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_pr_axi_mem_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rp_pr_axi_mem_awcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rp_pr_axi_mem_awid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rp_pr_axi_mem_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rp_pr_axi_mem_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rp_pr_axi_mem_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^rp_pr_axi_mem_awqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rp_pr_axi_mem_awregion\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rp_pr_axi_mem_awsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^rp_pr_axi_mem_wdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^rp_pr_axi_mem_wid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rp_pr_axi_mem_wlast\ : STD_LOGIC;
  signal \^rp_pr_axi_mem_wstrb\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^rp_stream_in_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^rp_stream_in_tkeep\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rp_stream_in_tlast\ : STD_LOGIC;
  signal \^s_axi_reg_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_reg_bvalid\ : STD_LOGIC;
  signal \^s_axi_reg_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_reg_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_control_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_control_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_control_arqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_control_arregion\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_control_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_control_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_control_awqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_control_awregion\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_control_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_control_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_pr_axi_mem_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_pr_axi_mem_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_pr_axi_mem_rdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^s_pr_axi_mem_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_pr_axi_mem_rlast\ : STD_LOGIC;
  signal \^s_pr_axi_mem_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_stream_out_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_stream_out_tkeep\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_stream_out_tlast\ : STD_LOGIC;
begin
  \^rp_control_bresp\(1 downto 0) <= rp_control_BRESP(1 downto 0);
  \^rp_control_rdata\(31 downto 0) <= rp_control_RDATA(31 downto 0);
  \^rp_control_rresp\(1 downto 0) <= rp_control_RRESP(1 downto 0);
  \^rp_pr_axi_mem_araddr\(31 downto 0) <= rp_pr_axi_mem_ARADDR(31 downto 0);
  \^rp_pr_axi_mem_arburst\(1 downto 0) <= rp_pr_axi_mem_ARBURST(1 downto 0);
  \^rp_pr_axi_mem_arcache\(3 downto 0) <= rp_pr_axi_mem_ARCACHE(3 downto 0);
  \^rp_pr_axi_mem_arid\(0) <= rp_pr_axi_mem_ARID(0);
  \^rp_pr_axi_mem_arlen\(7 downto 0) <= rp_pr_axi_mem_ARLEN(7 downto 0);
  \^rp_pr_axi_mem_arlock\(0) <= rp_pr_axi_mem_ARLOCK(0);
  \^rp_pr_axi_mem_arprot\(2 downto 0) <= rp_pr_axi_mem_ARPROT(2 downto 0);
  \^rp_pr_axi_mem_arqos\(3 downto 0) <= rp_pr_axi_mem_ARQOS(3 downto 0);
  \^rp_pr_axi_mem_arregion\(3 downto 0) <= rp_pr_axi_mem_ARREGION(3 downto 0);
  \^rp_pr_axi_mem_arsize\(2 downto 0) <= rp_pr_axi_mem_ARSIZE(2 downto 0);
  \^rp_pr_axi_mem_awaddr\(31 downto 0) <= rp_pr_axi_mem_AWADDR(31 downto 0);
  \^rp_pr_axi_mem_awburst\(1 downto 0) <= rp_pr_axi_mem_AWBURST(1 downto 0);
  \^rp_pr_axi_mem_awcache\(3 downto 0) <= rp_pr_axi_mem_AWCACHE(3 downto 0);
  \^rp_pr_axi_mem_awid\(0) <= rp_pr_axi_mem_AWID(0);
  \^rp_pr_axi_mem_awlen\(7 downto 0) <= rp_pr_axi_mem_AWLEN(7 downto 0);
  \^rp_pr_axi_mem_awlock\(0) <= rp_pr_axi_mem_AWLOCK(0);
  \^rp_pr_axi_mem_awprot\(2 downto 0) <= rp_pr_axi_mem_AWPROT(2 downto 0);
  \^rp_pr_axi_mem_awqos\(3 downto 0) <= rp_pr_axi_mem_AWQOS(3 downto 0);
  \^rp_pr_axi_mem_awregion\(3 downto 0) <= rp_pr_axi_mem_AWREGION(3 downto 0);
  \^rp_pr_axi_mem_awsize\(2 downto 0) <= rp_pr_axi_mem_AWSIZE(2 downto 0);
  \^rp_pr_axi_mem_wdata\(511 downto 0) <= rp_pr_axi_mem_WDATA(511 downto 0);
  \^rp_pr_axi_mem_wid\(0) <= rp_pr_axi_mem_WID(0);
  \^rp_pr_axi_mem_wlast\ <= rp_pr_axi_mem_WLAST;
  \^rp_pr_axi_mem_wstrb\(63 downto 0) <= rp_pr_axi_mem_WSTRB(63 downto 0);
  \^rp_stream_in_tdata\(63 downto 0) <= rp_stream_in_TDATA(63 downto 0);
  \^rp_stream_in_tkeep\(7 downto 0) <= rp_stream_in_TKEEP(7 downto 0);
  \^rp_stream_in_tlast\ <= rp_stream_in_TLAST;
  \^s_control_araddr\(31 downto 0) <= s_control_ARADDR(31 downto 0);
  \^s_control_arprot\(2 downto 0) <= s_control_ARPROT(2 downto 0);
  \^s_control_arqos\(3 downto 0) <= s_control_ARQOS(3 downto 0);
  \^s_control_arregion\(3 downto 0) <= s_control_ARREGION(3 downto 0);
  \^s_control_awaddr\(31 downto 0) <= s_control_AWADDR(31 downto 0);
  \^s_control_awprot\(2 downto 0) <= s_control_AWPROT(2 downto 0);
  \^s_control_awqos\(3 downto 0) <= s_control_AWQOS(3 downto 0);
  \^s_control_awregion\(3 downto 0) <= s_control_AWREGION(3 downto 0);
  \^s_control_wdata\(31 downto 0) <= s_control_WDATA(31 downto 0);
  \^s_control_wstrb\(3 downto 0) <= s_control_WSTRB(3 downto 0);
  \^s_pr_axi_mem_bid\(0) <= s_pr_axi_mem_BID(0);
  \^s_pr_axi_mem_bresp\(1 downto 0) <= s_pr_axi_mem_BRESP(1 downto 0);
  \^s_pr_axi_mem_rdata\(511 downto 0) <= s_pr_axi_mem_RDATA(511 downto 0);
  \^s_pr_axi_mem_rid\(0) <= s_pr_axi_mem_RID(0);
  \^s_pr_axi_mem_rlast\ <= s_pr_axi_mem_RLAST;
  \^s_pr_axi_mem_rresp\(1 downto 0) <= s_pr_axi_mem_RRESP(1 downto 0);
  \^s_stream_out_tdata\(63 downto 0) <= s_stream_out_TDATA(63 downto 0);
  \^s_stream_out_tkeep\(7 downto 0) <= s_stream_out_TKEEP(7 downto 0);
  \^s_stream_out_tlast\ <= s_stream_out_TLAST;
  rp_control_ARADDR(31 downto 0) <= \^s_control_araddr\(31 downto 0);
  rp_control_ARPROT(2 downto 0) <= \^s_control_arprot\(2 downto 0);
  rp_control_ARQOS(3 downto 0) <= \^s_control_arqos\(3 downto 0);
  rp_control_ARREGION(3 downto 0) <= \^s_control_arregion\(3 downto 0);
  rp_control_AWADDR(31 downto 0) <= \^s_control_awaddr\(31 downto 0);
  rp_control_AWPROT(2 downto 0) <= \^s_control_awprot\(2 downto 0);
  rp_control_AWQOS(3 downto 0) <= \^s_control_awqos\(3 downto 0);
  rp_control_AWREGION(3 downto 0) <= \^s_control_awregion\(3 downto 0);
  rp_control_WDATA(31 downto 0) <= \^s_control_wdata\(31 downto 0);
  rp_control_WSTRB(3 downto 0) <= \^s_control_wstrb\(3 downto 0);
  rp_pr_axi_mem_BID(0) <= \^s_pr_axi_mem_bid\(0);
  rp_pr_axi_mem_BRESP(1 downto 0) <= \^s_pr_axi_mem_bresp\(1 downto 0);
  rp_pr_axi_mem_RDATA(511 downto 0) <= \^s_pr_axi_mem_rdata\(511 downto 0);
  rp_pr_axi_mem_RID(0) <= \^s_pr_axi_mem_rid\(0);
  rp_pr_axi_mem_RLAST <= \^s_pr_axi_mem_rlast\;
  rp_pr_axi_mem_RRESP(1 downto 0) <= \^s_pr_axi_mem_rresp\(1 downto 0);
  rp_stream_out_TDATA(63 downto 0) <= \^s_stream_out_tdata\(63 downto 0);
  rp_stream_out_TKEEP(7 downto 0) <= \^s_stream_out_tkeep\(7 downto 0);
  rp_stream_out_TLAST <= \^s_stream_out_tlast\;
  s_axi_reg_awready <= \^s_axi_reg_bvalid\;
  s_axi_reg_bresp(1) <= \^s_axi_reg_bresp\(1);
  s_axi_reg_bresp(0) <= \<const0>\;
  s_axi_reg_bvalid <= \^s_axi_reg_bvalid\;
  s_axi_reg_rdata(31) <= \<const0>\;
  s_axi_reg_rdata(30) <= \<const0>\;
  s_axi_reg_rdata(29) <= \<const0>\;
  s_axi_reg_rdata(28) <= \<const0>\;
  s_axi_reg_rdata(27) <= \<const0>\;
  s_axi_reg_rdata(26) <= \<const0>\;
  s_axi_reg_rdata(25) <= \<const0>\;
  s_axi_reg_rdata(24) <= \<const0>\;
  s_axi_reg_rdata(23) <= \<const0>\;
  s_axi_reg_rdata(22) <= \<const0>\;
  s_axi_reg_rdata(21) <= \<const0>\;
  s_axi_reg_rdata(20) <= \<const0>\;
  s_axi_reg_rdata(19) <= \<const0>\;
  s_axi_reg_rdata(18) <= \<const0>\;
  s_axi_reg_rdata(17) <= \<const0>\;
  s_axi_reg_rdata(16) <= \<const0>\;
  s_axi_reg_rdata(15) <= \<const0>\;
  s_axi_reg_rdata(14) <= \<const0>\;
  s_axi_reg_rdata(13) <= \<const0>\;
  s_axi_reg_rdata(12) <= \<const0>\;
  s_axi_reg_rdata(11) <= \<const0>\;
  s_axi_reg_rdata(10) <= \<const0>\;
  s_axi_reg_rdata(9) <= \<const0>\;
  s_axi_reg_rdata(8) <= \<const0>\;
  s_axi_reg_rdata(7) <= \<const0>\;
  s_axi_reg_rdata(6) <= \<const0>\;
  s_axi_reg_rdata(5) <= \<const0>\;
  s_axi_reg_rdata(4) <= \<const0>\;
  s_axi_reg_rdata(3) <= \<const0>\;
  s_axi_reg_rdata(2) <= \<const0>\;
  s_axi_reg_rdata(1) <= \<const0>\;
  s_axi_reg_rdata(0) <= \^s_axi_reg_rdata\(0);
  s_axi_reg_rresp(1) <= \^s_axi_reg_rresp\(1);
  s_axi_reg_rresp(0) <= \<const0>\;
  s_axi_reg_wready <= \^s_axi_reg_bvalid\;
  s_control_BRESP(1 downto 0) <= \^rp_control_bresp\(1 downto 0);
  s_control_RDATA(31 downto 0) <= \^rp_control_rdata\(31 downto 0);
  s_control_RRESP(1 downto 0) <= \^rp_control_rresp\(1 downto 0);
  s_pr_axi_mem_ARADDR(31 downto 0) <= \^rp_pr_axi_mem_araddr\(31 downto 0);
  s_pr_axi_mem_ARBURST(1 downto 0) <= \^rp_pr_axi_mem_arburst\(1 downto 0);
  s_pr_axi_mem_ARCACHE(3 downto 0) <= \^rp_pr_axi_mem_arcache\(3 downto 0);
  s_pr_axi_mem_ARID(0) <= \^rp_pr_axi_mem_arid\(0);
  s_pr_axi_mem_ARLEN(7 downto 0) <= \^rp_pr_axi_mem_arlen\(7 downto 0);
  s_pr_axi_mem_ARLOCK(0) <= \^rp_pr_axi_mem_arlock\(0);
  s_pr_axi_mem_ARPROT(2 downto 0) <= \^rp_pr_axi_mem_arprot\(2 downto 0);
  s_pr_axi_mem_ARQOS(3 downto 0) <= \^rp_pr_axi_mem_arqos\(3 downto 0);
  s_pr_axi_mem_ARREGION(3 downto 0) <= \^rp_pr_axi_mem_arregion\(3 downto 0);
  s_pr_axi_mem_ARSIZE(2 downto 0) <= \^rp_pr_axi_mem_arsize\(2 downto 0);
  s_pr_axi_mem_AWADDR(31 downto 0) <= \^rp_pr_axi_mem_awaddr\(31 downto 0);
  s_pr_axi_mem_AWBURST(1 downto 0) <= \^rp_pr_axi_mem_awburst\(1 downto 0);
  s_pr_axi_mem_AWCACHE(3 downto 0) <= \^rp_pr_axi_mem_awcache\(3 downto 0);
  s_pr_axi_mem_AWID(0) <= \^rp_pr_axi_mem_awid\(0);
  s_pr_axi_mem_AWLEN(7 downto 0) <= \^rp_pr_axi_mem_awlen\(7 downto 0);
  s_pr_axi_mem_AWLOCK(0) <= \^rp_pr_axi_mem_awlock\(0);
  s_pr_axi_mem_AWPROT(2 downto 0) <= \^rp_pr_axi_mem_awprot\(2 downto 0);
  s_pr_axi_mem_AWQOS(3 downto 0) <= \^rp_pr_axi_mem_awqos\(3 downto 0);
  s_pr_axi_mem_AWREGION(3 downto 0) <= \^rp_pr_axi_mem_awregion\(3 downto 0);
  s_pr_axi_mem_AWSIZE(2 downto 0) <= \^rp_pr_axi_mem_awsize\(2 downto 0);
  s_pr_axi_mem_WDATA(511 downto 0) <= \^rp_pr_axi_mem_wdata\(511 downto 0);
  s_pr_axi_mem_WID(0) <= \^rp_pr_axi_mem_wid\(0);
  s_pr_axi_mem_WLAST <= \^rp_pr_axi_mem_wlast\;
  s_pr_axi_mem_WSTRB(63 downto 0) <= \^rp_pr_axi_mem_wstrb\(63 downto 0);
  s_stream_in_TDATA(63 downto 0) <= \^rp_stream_in_tdata\(63 downto 0);
  s_stream_in_TKEEP(7 downto 0) <= \^rp_stream_in_tkeep\(7 downto 0);
  s_stream_in_TLAST <= \^rp_stream_in_tlast\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_axi_lite_if: entity work.shell_pr_decoupler_0_0_axi_lite_if
     port map (
      aclk => aclk,
      decouple_status => decouple_status,
      rp_control_ARREADY => rp_control_ARREADY,
      rp_control_ARVALID => rp_control_ARVALID,
      rp_control_AWREADY => rp_control_AWREADY,
      rp_control_AWVALID => rp_control_AWVALID,
      rp_control_BREADY => rp_control_BREADY,
      rp_control_BVALID => rp_control_BVALID,
      rp_control_RREADY => rp_control_RREADY,
      rp_control_RVALID => rp_control_RVALID,
      rp_control_WREADY => rp_control_WREADY,
      rp_control_WVALID => rp_control_WVALID,
      rp_pr_axi_mem_ARREADY => rp_pr_axi_mem_ARREADY,
      rp_pr_axi_mem_ARVALID => rp_pr_axi_mem_ARVALID,
      rp_pr_axi_mem_AWREADY => rp_pr_axi_mem_AWREADY,
      rp_pr_axi_mem_AWVALID => rp_pr_axi_mem_AWVALID,
      rp_pr_axi_mem_BREADY => rp_pr_axi_mem_BREADY,
      rp_pr_axi_mem_BVALID => rp_pr_axi_mem_BVALID,
      rp_pr_axi_mem_RREADY => rp_pr_axi_mem_RREADY,
      rp_pr_axi_mem_RVALID => rp_pr_axi_mem_RVALID,
      rp_pr_axi_mem_WREADY => rp_pr_axi_mem_WREADY,
      rp_pr_axi_mem_WVALID => rp_pr_axi_mem_WVALID,
      rp_stream_in_TREADY => rp_stream_in_TREADY,
      rp_stream_in_TVALID => rp_stream_in_TVALID,
      rp_stream_out_TREADY => rp_stream_out_TREADY,
      rp_stream_out_TVALID => rp_stream_out_TVALID,
      s_axi_reg_araddr(0) => s_axi_reg_araddr(0),
      s_axi_reg_aresetn => s_axi_reg_aresetn,
      s_axi_reg_arready => s_axi_reg_arready,
      s_axi_reg_arvalid => s_axi_reg_arvalid,
      s_axi_reg_awaddr(0) => s_axi_reg_awaddr(0),
      s_axi_reg_awvalid => s_axi_reg_awvalid,
      s_axi_reg_bready => s_axi_reg_bready,
      s_axi_reg_bresp(0) => \^s_axi_reg_bresp\(1),
      s_axi_reg_bvalid => \^s_axi_reg_bvalid\,
      s_axi_reg_rdata(0) => \^s_axi_reg_rdata\(0),
      s_axi_reg_rready => s_axi_reg_rready,
      s_axi_reg_rresp(0) => \^s_axi_reg_rresp\(1),
      s_axi_reg_rvalid => s_axi_reg_rvalid,
      s_axi_reg_wdata(0) => s_axi_reg_wdata(0),
      s_axi_reg_wvalid => s_axi_reg_wvalid,
      s_control_ARREADY => s_control_ARREADY,
      s_control_ARVALID => s_control_ARVALID,
      s_control_AWREADY => s_control_AWREADY,
      s_control_AWVALID => s_control_AWVALID,
      s_control_BREADY => s_control_BREADY,
      s_control_BVALID => s_control_BVALID,
      s_control_RREADY => s_control_RREADY,
      s_control_RVALID => s_control_RVALID,
      s_control_WREADY => s_control_WREADY,
      s_control_WVALID => s_control_WVALID,
      s_pr_axi_mem_ARREADY => s_pr_axi_mem_ARREADY,
      s_pr_axi_mem_ARVALID => s_pr_axi_mem_ARVALID,
      s_pr_axi_mem_AWREADY => s_pr_axi_mem_AWREADY,
      s_pr_axi_mem_AWVALID => s_pr_axi_mem_AWVALID,
      s_pr_axi_mem_BREADY => s_pr_axi_mem_BREADY,
      s_pr_axi_mem_BVALID => s_pr_axi_mem_BVALID,
      s_pr_axi_mem_RREADY => s_pr_axi_mem_RREADY,
      s_pr_axi_mem_RVALID => s_pr_axi_mem_RVALID,
      s_pr_axi_mem_WREADY => s_pr_axi_mem_WREADY,
      s_pr_axi_mem_WVALID => s_pr_axi_mem_WVALID,
      s_stream_in_TREADY => s_stream_in_TREADY,
      s_stream_in_TVALID => s_stream_in_TVALID,
      s_stream_out_TREADY => s_stream_out_TREADY,
      s_stream_out_TVALID => s_stream_out_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_pr_decoupler_0_0 is
  port (
    s_pr_axi_mem_ARVALID : out STD_LOGIC;
    rp_pr_axi_mem_ARVALID : in STD_LOGIC;
    s_pr_axi_mem_ARREADY : in STD_LOGIC;
    rp_pr_axi_mem_ARREADY : out STD_LOGIC;
    s_pr_axi_mem_AWVALID : out STD_LOGIC;
    rp_pr_axi_mem_AWVALID : in STD_LOGIC;
    s_pr_axi_mem_AWREADY : in STD_LOGIC;
    rp_pr_axi_mem_AWREADY : out STD_LOGIC;
    s_pr_axi_mem_BVALID : in STD_LOGIC;
    rp_pr_axi_mem_BVALID : out STD_LOGIC;
    s_pr_axi_mem_BREADY : out STD_LOGIC;
    rp_pr_axi_mem_BREADY : in STD_LOGIC;
    s_pr_axi_mem_RVALID : in STD_LOGIC;
    rp_pr_axi_mem_RVALID : out STD_LOGIC;
    s_pr_axi_mem_RREADY : out STD_LOGIC;
    rp_pr_axi_mem_RREADY : in STD_LOGIC;
    s_pr_axi_mem_WVALID : out STD_LOGIC;
    rp_pr_axi_mem_WVALID : in STD_LOGIC;
    s_pr_axi_mem_WREADY : in STD_LOGIC;
    rp_pr_axi_mem_WREADY : out STD_LOGIC;
    s_pr_axi_mem_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_pr_axi_mem_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pr_axi_mem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_pr_axi_mem_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pr_axi_mem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_WID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_pr_axi_mem_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_pr_axi_mem_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_pr_axi_mem_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_pr_axi_mem_WLAST : out STD_LOGIC;
    rp_pr_axi_mem_WLAST : in STD_LOGIC;
    s_pr_axi_mem_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_pr_axi_mem_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pr_axi_mem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_pr_axi_mem_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pr_axi_mem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_pr_axi_mem_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_pr_axi_mem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_RLAST : in STD_LOGIC;
    rp_pr_axi_mem_RLAST : out STD_LOGIC;
    s_control_ARVALID : in STD_LOGIC;
    rp_control_ARVALID : out STD_LOGIC;
    s_control_ARREADY : out STD_LOGIC;
    rp_control_ARREADY : in STD_LOGIC;
    s_control_AWVALID : in STD_LOGIC;
    rp_control_AWVALID : out STD_LOGIC;
    s_control_AWREADY : out STD_LOGIC;
    rp_control_AWREADY : in STD_LOGIC;
    s_control_BVALID : out STD_LOGIC;
    rp_control_BVALID : in STD_LOGIC;
    s_control_BREADY : in STD_LOGIC;
    rp_control_BREADY : out STD_LOGIC;
    s_control_RVALID : out STD_LOGIC;
    rp_control_RVALID : in STD_LOGIC;
    s_control_RREADY : in STD_LOGIC;
    rp_control_RREADY : out STD_LOGIC;
    s_control_WVALID : in STD_LOGIC;
    rp_control_WVALID : out STD_LOGIC;
    s_control_WREADY : out STD_LOGIC;
    rp_control_WREADY : in STD_LOGIC;
    s_control_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_control_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_control_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_control_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_control_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_control_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_control_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_control_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_stream_in_TVALID : out STD_LOGIC;
    rp_stream_in_TVALID : in STD_LOGIC;
    s_stream_in_TREADY : in STD_LOGIC;
    rp_stream_in_TREADY : out STD_LOGIC;
    s_stream_in_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_stream_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_stream_in_TLAST : out STD_LOGIC;
    rp_stream_in_TLAST : in STD_LOGIC;
    s_stream_in_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_stream_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_stream_out_TVALID : in STD_LOGIC;
    rp_stream_out_TVALID : out STD_LOGIC;
    s_stream_out_TREADY : out STD_LOGIC;
    rp_stream_out_TREADY : in STD_LOGIC;
    s_stream_out_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_stream_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_stream_out_TLAST : in STD_LOGIC;
    rp_stream_out_TLAST : out STD_LOGIC;
    s_stream_out_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_stream_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decouple_status : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_awready : out STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_wvalid : in STD_LOGIC;
    s_axi_reg_wready : out STD_LOGIC;
    s_axi_reg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    s_axi_reg_bready : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_arvalid : in STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_rvalid : out STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    s_axi_reg_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of shell_pr_decoupler_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shell_pr_decoupler_0_0 : entity is "shell_pr_decoupler_0_0,prd_shell_pr_decoupler_0_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of shell_pr_decoupler_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of shell_pr_decoupler_0_0 : entity is "prd_shell_pr_decoupler_0_0,Vivado 2018.1";
end shell_pr_decoupler_0_0;

architecture STRUCTURE of shell_pr_decoupler_0_0 is
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "kintexu";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_CLOCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_CLOCK, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, ASSOCIATED_BUSIF s_axi_reg";
  attribute x_interface_info of rp_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 rp_control ARREADY";
  attribute x_interface_info of rp_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 rp_control ARVALID";
  attribute x_interface_parameter of rp_control_ARVALID : signal is "XIL_INTERFACENAME rp_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 rp_control AWREADY";
  attribute x_interface_info of rp_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 rp_control AWVALID";
  attribute x_interface_info of rp_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 rp_control BREADY";
  attribute x_interface_info of rp_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 rp_control BVALID";
  attribute x_interface_info of rp_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 rp_control RREADY";
  attribute x_interface_info of rp_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 rp_control RVALID";
  attribute x_interface_info of rp_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 rp_control WREADY";
  attribute x_interface_info of rp_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 rp_control WVALID";
  attribute x_interface_info of rp_pr_axi_mem_ARREADY : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARREADY";
  attribute x_interface_info of rp_pr_axi_mem_ARVALID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARVALID";
  attribute x_interface_parameter of rp_pr_axi_mem_ARVALID : signal is "XIL_INTERFACENAME rp_pr_axi_mem, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 156250000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_pr_axi_mem_AWREADY : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWREADY";
  attribute x_interface_info of rp_pr_axi_mem_AWVALID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWVALID";
  attribute x_interface_info of rp_pr_axi_mem_BREADY : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BREADY";
  attribute x_interface_info of rp_pr_axi_mem_BVALID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BVALID";
  attribute x_interface_info of rp_pr_axi_mem_RLAST : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RLAST";
  attribute x_interface_info of rp_pr_axi_mem_RREADY : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RREADY";
  attribute x_interface_info of rp_pr_axi_mem_RVALID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RVALID";
  attribute x_interface_info of rp_pr_axi_mem_WLAST : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WLAST";
  attribute x_interface_info of rp_pr_axi_mem_WREADY : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WREADY";
  attribute x_interface_info of rp_pr_axi_mem_WVALID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WVALID";
  attribute x_interface_info of rp_stream_in_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_stream_in TLAST";
  attribute x_interface_info of rp_stream_in_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_stream_in TREADY";
  attribute x_interface_info of rp_stream_in_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_stream_in TVALID";
  attribute x_interface_parameter of rp_stream_in_TVALID : signal is "XIL_INTERFACENAME rp_stream_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_stream_out_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_stream_out TLAST";
  attribute x_interface_info of rp_stream_out_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_stream_out TREADY";
  attribute x_interface_info of rp_stream_out_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_stream_out TVALID";
  attribute x_interface_parameter of rp_stream_out_TVALID : signal is "XIL_INTERFACENAME rp_stream_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_axi_reg_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_RESET RST";
  attribute x_interface_parameter of s_axi_reg_aresetn : signal is "XIL_INTERFACENAME AXI_RESET, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_reg_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg ARREADY";
  attribute x_interface_info of s_axi_reg_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg ARVALID";
  attribute x_interface_info of s_axi_reg_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg AWREADY";
  attribute x_interface_info of s_axi_reg_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg AWVALID";
  attribute x_interface_info of s_axi_reg_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg BREADY";
  attribute x_interface_info of s_axi_reg_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg BVALID";
  attribute x_interface_info of s_axi_reg_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RREADY";
  attribute x_interface_info of s_axi_reg_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RVALID";
  attribute x_interface_info of s_axi_reg_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg WREADY";
  attribute x_interface_info of s_axi_reg_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg WVALID";
  attribute x_interface_info of s_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_control ARREADY";
  attribute x_interface_info of s_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_control ARVALID";
  attribute x_interface_parameter of s_control_ARVALID : signal is "XIL_INTERFACENAME s_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_control AWREADY";
  attribute x_interface_info of s_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_control AWVALID";
  attribute x_interface_info of s_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_control BREADY";
  attribute x_interface_info of s_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_control BVALID";
  attribute x_interface_info of s_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_control RREADY";
  attribute x_interface_info of s_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_control RVALID";
  attribute x_interface_info of s_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_control WREADY";
  attribute x_interface_info of s_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_control WVALID";
  attribute x_interface_info of s_pr_axi_mem_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARREADY";
  attribute x_interface_info of s_pr_axi_mem_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARVALID";
  attribute x_interface_parameter of s_pr_axi_mem_ARVALID : signal is "XIL_INTERFACENAME s_pr_axi_mem, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 156250000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_pr_axi_mem_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWREADY";
  attribute x_interface_info of s_pr_axi_mem_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWVALID";
  attribute x_interface_info of s_pr_axi_mem_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BREADY";
  attribute x_interface_info of s_pr_axi_mem_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BVALID";
  attribute x_interface_info of s_pr_axi_mem_RLAST : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RLAST";
  attribute x_interface_info of s_pr_axi_mem_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RREADY";
  attribute x_interface_info of s_pr_axi_mem_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RVALID";
  attribute x_interface_info of s_pr_axi_mem_WLAST : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WLAST";
  attribute x_interface_info of s_pr_axi_mem_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WREADY";
  attribute x_interface_info of s_pr_axi_mem_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WVALID";
  attribute x_interface_info of s_stream_in_TLAST : signal is "xilinx.com:interface:axis:1.0 s_stream_in TLAST";
  attribute x_interface_info of s_stream_in_TREADY : signal is "xilinx.com:interface:axis:1.0 s_stream_in TREADY";
  attribute x_interface_info of s_stream_in_TVALID : signal is "xilinx.com:interface:axis:1.0 s_stream_in TVALID";
  attribute x_interface_parameter of s_stream_in_TVALID : signal is "XIL_INTERFACENAME s_stream_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_stream_out_TLAST : signal is "xilinx.com:interface:axis:1.0 s_stream_out TLAST";
  attribute x_interface_info of s_stream_out_TREADY : signal is "xilinx.com:interface:axis:1.0 s_stream_out TREADY";
  attribute x_interface_info of s_stream_out_TVALID : signal is "xilinx.com:interface:axis:1.0 s_stream_out TVALID";
  attribute x_interface_parameter of s_stream_out_TVALID : signal is "XIL_INTERFACENAME s_stream_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 rp_control ARADDR";
  attribute x_interface_info of rp_control_ARPROT : signal is "xilinx.com:interface:aximm:1.0 rp_control ARPROT";
  attribute x_interface_info of rp_control_ARQOS : signal is "xilinx.com:interface:aximm:1.0 rp_control ARQOS";
  attribute x_interface_info of rp_control_ARREGION : signal is "xilinx.com:interface:aximm:1.0 rp_control ARREGION";
  attribute x_interface_info of rp_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 rp_control AWADDR";
  attribute x_interface_info of rp_control_AWPROT : signal is "xilinx.com:interface:aximm:1.0 rp_control AWPROT";
  attribute x_interface_info of rp_control_AWQOS : signal is "xilinx.com:interface:aximm:1.0 rp_control AWQOS";
  attribute x_interface_info of rp_control_AWREGION : signal is "xilinx.com:interface:aximm:1.0 rp_control AWREGION";
  attribute x_interface_info of rp_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 rp_control BRESP";
  attribute x_interface_info of rp_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 rp_control RDATA";
  attribute x_interface_info of rp_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 rp_control RRESP";
  attribute x_interface_info of rp_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 rp_control WDATA";
  attribute x_interface_info of rp_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 rp_control WSTRB";
  attribute x_interface_info of rp_pr_axi_mem_ARADDR : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARADDR";
  attribute x_interface_info of rp_pr_axi_mem_ARBURST : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARBURST";
  attribute x_interface_info of rp_pr_axi_mem_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARCACHE";
  attribute x_interface_info of rp_pr_axi_mem_ARID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARID";
  attribute x_interface_info of rp_pr_axi_mem_ARLEN : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARLEN";
  attribute x_interface_info of rp_pr_axi_mem_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARLOCK";
  attribute x_interface_info of rp_pr_axi_mem_ARPROT : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARPROT";
  attribute x_interface_info of rp_pr_axi_mem_ARQOS : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARQOS";
  attribute x_interface_info of rp_pr_axi_mem_ARREGION : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARREGION";
  attribute x_interface_info of rp_pr_axi_mem_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARSIZE";
  attribute x_interface_info of rp_pr_axi_mem_AWADDR : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWADDR";
  attribute x_interface_info of rp_pr_axi_mem_AWBURST : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWBURST";
  attribute x_interface_info of rp_pr_axi_mem_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWCACHE";
  attribute x_interface_info of rp_pr_axi_mem_AWID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWID";
  attribute x_interface_info of rp_pr_axi_mem_AWLEN : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWLEN";
  attribute x_interface_info of rp_pr_axi_mem_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWLOCK";
  attribute x_interface_info of rp_pr_axi_mem_AWPROT : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWPROT";
  attribute x_interface_info of rp_pr_axi_mem_AWQOS : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWQOS";
  attribute x_interface_info of rp_pr_axi_mem_AWREGION : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWREGION";
  attribute x_interface_info of rp_pr_axi_mem_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWSIZE";
  attribute x_interface_info of rp_pr_axi_mem_BID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BID";
  attribute x_interface_info of rp_pr_axi_mem_BRESP : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BRESP";
  attribute x_interface_info of rp_pr_axi_mem_RDATA : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RDATA";
  attribute x_interface_info of rp_pr_axi_mem_RID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RID";
  attribute x_interface_info of rp_pr_axi_mem_RRESP : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RRESP";
  attribute x_interface_info of rp_pr_axi_mem_WDATA : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WDATA";
  attribute x_interface_info of rp_pr_axi_mem_WID : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WID";
  attribute x_interface_info of rp_pr_axi_mem_WSTRB : signal is "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WSTRB";
  attribute x_interface_info of rp_stream_in_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_stream_in TDATA";
  attribute x_interface_info of rp_stream_in_TKEEP : signal is "xilinx.com:interface:axis:1.0 rp_stream_in TKEEP";
  attribute x_interface_info of rp_stream_out_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_stream_out TDATA";
  attribute x_interface_info of rp_stream_out_TKEEP : signal is "xilinx.com:interface:axis:1.0 rp_stream_out TKEEP";
  attribute x_interface_info of s_axi_reg_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg ARADDR";
  attribute x_interface_info of s_axi_reg_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg AWADDR";
  attribute x_interface_parameter of s_axi_reg_awaddr : signal is "XIL_INTERFACENAME s_axi_reg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_reg_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg BRESP";
  attribute x_interface_info of s_axi_reg_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RDATA";
  attribute x_interface_info of s_axi_reg_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RRESP";
  attribute x_interface_info of s_axi_reg_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg WDATA";
  attribute x_interface_info of s_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_control ARADDR";
  attribute x_interface_info of s_control_ARPROT : signal is "xilinx.com:interface:aximm:1.0 s_control ARPROT";
  attribute x_interface_info of s_control_ARQOS : signal is "xilinx.com:interface:aximm:1.0 s_control ARQOS";
  attribute x_interface_info of s_control_ARREGION : signal is "xilinx.com:interface:aximm:1.0 s_control ARREGION";
  attribute x_interface_info of s_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_control AWADDR";
  attribute x_interface_info of s_control_AWPROT : signal is "xilinx.com:interface:aximm:1.0 s_control AWPROT";
  attribute x_interface_info of s_control_AWQOS : signal is "xilinx.com:interface:aximm:1.0 s_control AWQOS";
  attribute x_interface_info of s_control_AWREGION : signal is "xilinx.com:interface:aximm:1.0 s_control AWREGION";
  attribute x_interface_info of s_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_control BRESP";
  attribute x_interface_info of s_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_control RDATA";
  attribute x_interface_info of s_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_control RRESP";
  attribute x_interface_info of s_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_control WDATA";
  attribute x_interface_info of s_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_control WSTRB";
  attribute x_interface_info of s_pr_axi_mem_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARADDR";
  attribute x_interface_info of s_pr_axi_mem_ARBURST : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARBURST";
  attribute x_interface_info of s_pr_axi_mem_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARCACHE";
  attribute x_interface_info of s_pr_axi_mem_ARID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARID";
  attribute x_interface_info of s_pr_axi_mem_ARLEN : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARLEN";
  attribute x_interface_info of s_pr_axi_mem_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARLOCK";
  attribute x_interface_info of s_pr_axi_mem_ARPROT : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARPROT";
  attribute x_interface_info of s_pr_axi_mem_ARQOS : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARQOS";
  attribute x_interface_info of s_pr_axi_mem_ARREGION : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARREGION";
  attribute x_interface_info of s_pr_axi_mem_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARSIZE";
  attribute x_interface_info of s_pr_axi_mem_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWADDR";
  attribute x_interface_info of s_pr_axi_mem_AWBURST : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWBURST";
  attribute x_interface_info of s_pr_axi_mem_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWCACHE";
  attribute x_interface_info of s_pr_axi_mem_AWID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWID";
  attribute x_interface_info of s_pr_axi_mem_AWLEN : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWLEN";
  attribute x_interface_info of s_pr_axi_mem_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWLOCK";
  attribute x_interface_info of s_pr_axi_mem_AWPROT : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWPROT";
  attribute x_interface_info of s_pr_axi_mem_AWQOS : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWQOS";
  attribute x_interface_info of s_pr_axi_mem_AWREGION : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWREGION";
  attribute x_interface_info of s_pr_axi_mem_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWSIZE";
  attribute x_interface_info of s_pr_axi_mem_BID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BID";
  attribute x_interface_info of s_pr_axi_mem_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BRESP";
  attribute x_interface_info of s_pr_axi_mem_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RDATA";
  attribute x_interface_info of s_pr_axi_mem_RID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RID";
  attribute x_interface_info of s_pr_axi_mem_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RRESP";
  attribute x_interface_info of s_pr_axi_mem_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WDATA";
  attribute x_interface_info of s_pr_axi_mem_WID : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WID";
  attribute x_interface_info of s_pr_axi_mem_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WSTRB";
  attribute x_interface_info of s_stream_in_TDATA : signal is "xilinx.com:interface:axis:1.0 s_stream_in TDATA";
  attribute x_interface_info of s_stream_in_TKEEP : signal is "xilinx.com:interface:axis:1.0 s_stream_in TKEEP";
  attribute x_interface_info of s_stream_out_TDATA : signal is "xilinx.com:interface:axis:1.0 s_stream_out TDATA";
  attribute x_interface_info of s_stream_out_TKEEP : signal is "xilinx.com:interface:axis:1.0 s_stream_out TKEEP";
begin
U0: entity work.shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0
     port map (
      aclk => aclk,
      decouple_status => decouple_status,
      rp_control_ARADDR(31 downto 0) => rp_control_ARADDR(31 downto 0),
      rp_control_ARPROT(2 downto 0) => rp_control_ARPROT(2 downto 0),
      rp_control_ARQOS(3 downto 0) => rp_control_ARQOS(3 downto 0),
      rp_control_ARREADY => rp_control_ARREADY,
      rp_control_ARREGION(3 downto 0) => rp_control_ARREGION(3 downto 0),
      rp_control_ARVALID => rp_control_ARVALID,
      rp_control_AWADDR(31 downto 0) => rp_control_AWADDR(31 downto 0),
      rp_control_AWPROT(2 downto 0) => rp_control_AWPROT(2 downto 0),
      rp_control_AWQOS(3 downto 0) => rp_control_AWQOS(3 downto 0),
      rp_control_AWREADY => rp_control_AWREADY,
      rp_control_AWREGION(3 downto 0) => rp_control_AWREGION(3 downto 0),
      rp_control_AWVALID => rp_control_AWVALID,
      rp_control_BREADY => rp_control_BREADY,
      rp_control_BRESP(1 downto 0) => rp_control_BRESP(1 downto 0),
      rp_control_BVALID => rp_control_BVALID,
      rp_control_RDATA(31 downto 0) => rp_control_RDATA(31 downto 0),
      rp_control_RREADY => rp_control_RREADY,
      rp_control_RRESP(1 downto 0) => rp_control_RRESP(1 downto 0),
      rp_control_RVALID => rp_control_RVALID,
      rp_control_WDATA(31 downto 0) => rp_control_WDATA(31 downto 0),
      rp_control_WREADY => rp_control_WREADY,
      rp_control_WSTRB(3 downto 0) => rp_control_WSTRB(3 downto 0),
      rp_control_WVALID => rp_control_WVALID,
      rp_pr_axi_mem_ARADDR(31 downto 0) => rp_pr_axi_mem_ARADDR(31 downto 0),
      rp_pr_axi_mem_ARBURST(1 downto 0) => rp_pr_axi_mem_ARBURST(1 downto 0),
      rp_pr_axi_mem_ARCACHE(3 downto 0) => rp_pr_axi_mem_ARCACHE(3 downto 0),
      rp_pr_axi_mem_ARID(0) => rp_pr_axi_mem_ARID(0),
      rp_pr_axi_mem_ARLEN(7 downto 0) => rp_pr_axi_mem_ARLEN(7 downto 0),
      rp_pr_axi_mem_ARLOCK(0) => rp_pr_axi_mem_ARLOCK(0),
      rp_pr_axi_mem_ARPROT(2 downto 0) => rp_pr_axi_mem_ARPROT(2 downto 0),
      rp_pr_axi_mem_ARQOS(3 downto 0) => rp_pr_axi_mem_ARQOS(3 downto 0),
      rp_pr_axi_mem_ARREADY => rp_pr_axi_mem_ARREADY,
      rp_pr_axi_mem_ARREGION(3 downto 0) => rp_pr_axi_mem_ARREGION(3 downto 0),
      rp_pr_axi_mem_ARSIZE(2 downto 0) => rp_pr_axi_mem_ARSIZE(2 downto 0),
      rp_pr_axi_mem_ARVALID => rp_pr_axi_mem_ARVALID,
      rp_pr_axi_mem_AWADDR(31 downto 0) => rp_pr_axi_mem_AWADDR(31 downto 0),
      rp_pr_axi_mem_AWBURST(1 downto 0) => rp_pr_axi_mem_AWBURST(1 downto 0),
      rp_pr_axi_mem_AWCACHE(3 downto 0) => rp_pr_axi_mem_AWCACHE(3 downto 0),
      rp_pr_axi_mem_AWID(0) => rp_pr_axi_mem_AWID(0),
      rp_pr_axi_mem_AWLEN(7 downto 0) => rp_pr_axi_mem_AWLEN(7 downto 0),
      rp_pr_axi_mem_AWLOCK(0) => rp_pr_axi_mem_AWLOCK(0),
      rp_pr_axi_mem_AWPROT(2 downto 0) => rp_pr_axi_mem_AWPROT(2 downto 0),
      rp_pr_axi_mem_AWQOS(3 downto 0) => rp_pr_axi_mem_AWQOS(3 downto 0),
      rp_pr_axi_mem_AWREADY => rp_pr_axi_mem_AWREADY,
      rp_pr_axi_mem_AWREGION(3 downto 0) => rp_pr_axi_mem_AWREGION(3 downto 0),
      rp_pr_axi_mem_AWSIZE(2 downto 0) => rp_pr_axi_mem_AWSIZE(2 downto 0),
      rp_pr_axi_mem_AWVALID => rp_pr_axi_mem_AWVALID,
      rp_pr_axi_mem_BID(0) => rp_pr_axi_mem_BID(0),
      rp_pr_axi_mem_BREADY => rp_pr_axi_mem_BREADY,
      rp_pr_axi_mem_BRESP(1 downto 0) => rp_pr_axi_mem_BRESP(1 downto 0),
      rp_pr_axi_mem_BVALID => rp_pr_axi_mem_BVALID,
      rp_pr_axi_mem_RDATA(511 downto 0) => rp_pr_axi_mem_RDATA(511 downto 0),
      rp_pr_axi_mem_RID(0) => rp_pr_axi_mem_RID(0),
      rp_pr_axi_mem_RLAST => rp_pr_axi_mem_RLAST,
      rp_pr_axi_mem_RREADY => rp_pr_axi_mem_RREADY,
      rp_pr_axi_mem_RRESP(1 downto 0) => rp_pr_axi_mem_RRESP(1 downto 0),
      rp_pr_axi_mem_RVALID => rp_pr_axi_mem_RVALID,
      rp_pr_axi_mem_WDATA(511 downto 0) => rp_pr_axi_mem_WDATA(511 downto 0),
      rp_pr_axi_mem_WID(0) => rp_pr_axi_mem_WID(0),
      rp_pr_axi_mem_WLAST => rp_pr_axi_mem_WLAST,
      rp_pr_axi_mem_WREADY => rp_pr_axi_mem_WREADY,
      rp_pr_axi_mem_WSTRB(63 downto 0) => rp_pr_axi_mem_WSTRB(63 downto 0),
      rp_pr_axi_mem_WVALID => rp_pr_axi_mem_WVALID,
      rp_stream_in_TDATA(63 downto 0) => rp_stream_in_TDATA(63 downto 0),
      rp_stream_in_TKEEP(7 downto 0) => rp_stream_in_TKEEP(7 downto 0),
      rp_stream_in_TLAST => rp_stream_in_TLAST,
      rp_stream_in_TREADY => rp_stream_in_TREADY,
      rp_stream_in_TVALID => rp_stream_in_TVALID,
      rp_stream_out_TDATA(63 downto 0) => rp_stream_out_TDATA(63 downto 0),
      rp_stream_out_TKEEP(7 downto 0) => rp_stream_out_TKEEP(7 downto 0),
      rp_stream_out_TLAST => rp_stream_out_TLAST,
      rp_stream_out_TREADY => rp_stream_out_TREADY,
      rp_stream_out_TVALID => rp_stream_out_TVALID,
      s_axi_reg_araddr(0) => s_axi_reg_araddr(0),
      s_axi_reg_aresetn => s_axi_reg_aresetn,
      s_axi_reg_arready => s_axi_reg_arready,
      s_axi_reg_arvalid => s_axi_reg_arvalid,
      s_axi_reg_awaddr(0) => s_axi_reg_awaddr(0),
      s_axi_reg_awready => s_axi_reg_awready,
      s_axi_reg_awvalid => s_axi_reg_awvalid,
      s_axi_reg_bready => s_axi_reg_bready,
      s_axi_reg_bresp(1 downto 0) => s_axi_reg_bresp(1 downto 0),
      s_axi_reg_bvalid => s_axi_reg_bvalid,
      s_axi_reg_rdata(31 downto 0) => s_axi_reg_rdata(31 downto 0),
      s_axi_reg_rready => s_axi_reg_rready,
      s_axi_reg_rresp(1 downto 0) => s_axi_reg_rresp(1 downto 0),
      s_axi_reg_rvalid => s_axi_reg_rvalid,
      s_axi_reg_wdata(31 downto 0) => s_axi_reg_wdata(31 downto 0),
      s_axi_reg_wready => s_axi_reg_wready,
      s_axi_reg_wvalid => s_axi_reg_wvalid,
      s_control_ARADDR(31 downto 0) => s_control_ARADDR(31 downto 0),
      s_control_ARPROT(2 downto 0) => s_control_ARPROT(2 downto 0),
      s_control_ARQOS(3 downto 0) => s_control_ARQOS(3 downto 0),
      s_control_ARREADY => s_control_ARREADY,
      s_control_ARREGION(3 downto 0) => s_control_ARREGION(3 downto 0),
      s_control_ARVALID => s_control_ARVALID,
      s_control_AWADDR(31 downto 0) => s_control_AWADDR(31 downto 0),
      s_control_AWPROT(2 downto 0) => s_control_AWPROT(2 downto 0),
      s_control_AWQOS(3 downto 0) => s_control_AWQOS(3 downto 0),
      s_control_AWREADY => s_control_AWREADY,
      s_control_AWREGION(3 downto 0) => s_control_AWREGION(3 downto 0),
      s_control_AWVALID => s_control_AWVALID,
      s_control_BREADY => s_control_BREADY,
      s_control_BRESP(1 downto 0) => s_control_BRESP(1 downto 0),
      s_control_BVALID => s_control_BVALID,
      s_control_RDATA(31 downto 0) => s_control_RDATA(31 downto 0),
      s_control_RREADY => s_control_RREADY,
      s_control_RRESP(1 downto 0) => s_control_RRESP(1 downto 0),
      s_control_RVALID => s_control_RVALID,
      s_control_WDATA(31 downto 0) => s_control_WDATA(31 downto 0),
      s_control_WREADY => s_control_WREADY,
      s_control_WSTRB(3 downto 0) => s_control_WSTRB(3 downto 0),
      s_control_WVALID => s_control_WVALID,
      s_pr_axi_mem_ARADDR(31 downto 0) => s_pr_axi_mem_ARADDR(31 downto 0),
      s_pr_axi_mem_ARBURST(1 downto 0) => s_pr_axi_mem_ARBURST(1 downto 0),
      s_pr_axi_mem_ARCACHE(3 downto 0) => s_pr_axi_mem_ARCACHE(3 downto 0),
      s_pr_axi_mem_ARID(0) => s_pr_axi_mem_ARID(0),
      s_pr_axi_mem_ARLEN(7 downto 0) => s_pr_axi_mem_ARLEN(7 downto 0),
      s_pr_axi_mem_ARLOCK(0) => s_pr_axi_mem_ARLOCK(0),
      s_pr_axi_mem_ARPROT(2 downto 0) => s_pr_axi_mem_ARPROT(2 downto 0),
      s_pr_axi_mem_ARQOS(3 downto 0) => s_pr_axi_mem_ARQOS(3 downto 0),
      s_pr_axi_mem_ARREADY => s_pr_axi_mem_ARREADY,
      s_pr_axi_mem_ARREGION(3 downto 0) => s_pr_axi_mem_ARREGION(3 downto 0),
      s_pr_axi_mem_ARSIZE(2 downto 0) => s_pr_axi_mem_ARSIZE(2 downto 0),
      s_pr_axi_mem_ARVALID => s_pr_axi_mem_ARVALID,
      s_pr_axi_mem_AWADDR(31 downto 0) => s_pr_axi_mem_AWADDR(31 downto 0),
      s_pr_axi_mem_AWBURST(1 downto 0) => s_pr_axi_mem_AWBURST(1 downto 0),
      s_pr_axi_mem_AWCACHE(3 downto 0) => s_pr_axi_mem_AWCACHE(3 downto 0),
      s_pr_axi_mem_AWID(0) => s_pr_axi_mem_AWID(0),
      s_pr_axi_mem_AWLEN(7 downto 0) => s_pr_axi_mem_AWLEN(7 downto 0),
      s_pr_axi_mem_AWLOCK(0) => s_pr_axi_mem_AWLOCK(0),
      s_pr_axi_mem_AWPROT(2 downto 0) => s_pr_axi_mem_AWPROT(2 downto 0),
      s_pr_axi_mem_AWQOS(3 downto 0) => s_pr_axi_mem_AWQOS(3 downto 0),
      s_pr_axi_mem_AWREADY => s_pr_axi_mem_AWREADY,
      s_pr_axi_mem_AWREGION(3 downto 0) => s_pr_axi_mem_AWREGION(3 downto 0),
      s_pr_axi_mem_AWSIZE(2 downto 0) => s_pr_axi_mem_AWSIZE(2 downto 0),
      s_pr_axi_mem_AWVALID => s_pr_axi_mem_AWVALID,
      s_pr_axi_mem_BID(0) => s_pr_axi_mem_BID(0),
      s_pr_axi_mem_BREADY => s_pr_axi_mem_BREADY,
      s_pr_axi_mem_BRESP(1 downto 0) => s_pr_axi_mem_BRESP(1 downto 0),
      s_pr_axi_mem_BVALID => s_pr_axi_mem_BVALID,
      s_pr_axi_mem_RDATA(511 downto 0) => s_pr_axi_mem_RDATA(511 downto 0),
      s_pr_axi_mem_RID(0) => s_pr_axi_mem_RID(0),
      s_pr_axi_mem_RLAST => s_pr_axi_mem_RLAST,
      s_pr_axi_mem_RREADY => s_pr_axi_mem_RREADY,
      s_pr_axi_mem_RRESP(1 downto 0) => s_pr_axi_mem_RRESP(1 downto 0),
      s_pr_axi_mem_RVALID => s_pr_axi_mem_RVALID,
      s_pr_axi_mem_WDATA(511 downto 0) => s_pr_axi_mem_WDATA(511 downto 0),
      s_pr_axi_mem_WID(0) => s_pr_axi_mem_WID(0),
      s_pr_axi_mem_WLAST => s_pr_axi_mem_WLAST,
      s_pr_axi_mem_WREADY => s_pr_axi_mem_WREADY,
      s_pr_axi_mem_WSTRB(63 downto 0) => s_pr_axi_mem_WSTRB(63 downto 0),
      s_pr_axi_mem_WVALID => s_pr_axi_mem_WVALID,
      s_stream_in_TDATA(63 downto 0) => s_stream_in_TDATA(63 downto 0),
      s_stream_in_TKEEP(7 downto 0) => s_stream_in_TKEEP(7 downto 0),
      s_stream_in_TLAST => s_stream_in_TLAST,
      s_stream_in_TREADY => s_stream_in_TREADY,
      s_stream_in_TVALID => s_stream_in_TVALID,
      s_stream_out_TDATA(63 downto 0) => s_stream_out_TDATA(63 downto 0),
      s_stream_out_TKEEP(7 downto 0) => s_stream_out_TKEEP(7 downto 0),
      s_stream_out_TLAST => s_stream_out_TLAST,
      s_stream_out_TREADY => s_stream_out_TREADY,
      s_stream_out_TVALID => s_stream_out_TVALID
    );
end STRUCTURE;
