-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Fri Jun  8 20:57:11 2018
-- Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/eskand38/IP_package_test/project_1/project_1.srcs/sources_1/bd/TCP_bridge/ip/TCP_bridge_blk_mem_gen_0_0/TCP_bridge_blk_mem_gen_0_0_sim_netlist.vhdl
-- Design      : TCP_bridge_blk_mem_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_bindec : entity is "bindec";
end TCP_bridge_blk_mem_gen_0_0_bindec;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_bindec is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0\ : label is "soft_lutpair0";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addra(0),
      I1 => ena,
      O => ena_array(1)
    );
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ena,
      I1 => addra(0),
      O => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_bindec_0 is
  port (
    enb_array : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_bindec_0 : entity is "bindec";
end TCP_bridge_blk_mem_gen_0_0_bindec_0;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_bindec_0 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0\ : label is "soft_lutpair1";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addrb(0),
      I1 => enb,
      O => enb_array(1)
    );
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enb,
      I1 => addrb(0),
      O => enb_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    DOUTADOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPADOUTP : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux is
  signal \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \douta[10]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \douta[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \douta[12]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \douta[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \douta[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \douta[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \douta[16]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \douta[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \douta[18]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \douta[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \douta[20]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \douta[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \douta[22]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \douta[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \douta[24]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \douta[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \douta[26]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \douta[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \douta[28]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \douta[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \douta[30]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \douta[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \douta[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \douta[8]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \douta[9]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1\ : label is "soft_lutpair2";
begin
\douta[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(4),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4),
      O => douta(4)
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(5),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5),
      O => douta(5)
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(6),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6),
      O => douta(6)
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(7),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7),
      O => douta(7)
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTPADOUTP(0),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      O => douta(8)
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0),
      O => douta(9)
    );
\douta[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(1),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(1),
      O => douta(10)
    );
\douta[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(2),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(2),
      O => douta(11)
    );
\douta[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(3),
      O => douta(12)
    );
\douta[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(4),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(4),
      O => douta(13)
    );
\douta[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(5),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(5),
      O => douta(14)
    );
\douta[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(6),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(6),
      O => douta(15)
    );
\douta[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(7),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(7),
      O => douta(16)
    );
\douta[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0),
      O => douta(17)
    );
\douta[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0),
      O => douta(18)
    );
\douta[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(1),
      O => douta(19)
    );
\douta[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(2),
      O => douta(20)
    );
\douta[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(3),
      O => douta(21)
    );
\douta[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(4),
      O => douta(22)
    );
\douta[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(5),
      O => douta(23)
    );
\douta[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(6),
      O => douta(24)
    );
\douta[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(7),
      O => douta(25)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(0),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      O => douta(0)
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(1),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1),
      O => douta(1)
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(2),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2),
      O => douta(2)
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(3),
      I1 => sel_pipe,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3),
      O => douta(3)
    );
\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addra(0),
      I1 => ena,
      I2 => sel_pipe,
      O => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\,
      Q => sel_pipe,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb : in STD_LOGIC;
    DOUTBDOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPBDOUTP : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux__parameterized0\ : entity is "blk_mem_gen_mux";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux__parameterized0\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux__parameterized0\ is
  signal \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \doutb[10]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \doutb[11]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \doutb[12]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \doutb[13]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \doutb[14]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \doutb[15]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \doutb[16]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \doutb[17]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \doutb[18]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \doutb[19]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \doutb[20]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \doutb[21]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \doutb[22]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \doutb[23]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \doutb[24]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \doutb[25]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \doutb[26]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \doutb[27]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \doutb[28]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \doutb[29]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \doutb[30]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \doutb[6]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \doutb[7]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \doutb[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \doutb[9]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0\ : label is "soft_lutpair15";
begin
\doutb[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4),
      O => doutb(4)
    );
\doutb[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5),
      O => doutb(5)
    );
\doutb[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6),
      O => doutb(6)
    );
\doutb[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7),
      O => doutb(7)
    );
\doutb[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTPBDOUTP(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      O => doutb(8)
    );
\doutb[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0),
      O => doutb(9)
    );
\doutb[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(1),
      O => doutb(10)
    );
\doutb[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(2),
      O => doutb(11)
    );
\doutb[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(3),
      O => doutb(12)
    );
\doutb[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(4),
      O => doutb(13)
    );
\doutb[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(5),
      O => doutb(14)
    );
\doutb[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(6),
      O => doutb(15)
    );
\doutb[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(7),
      O => doutb(16)
    );
\doutb[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0),
      O => doutb(17)
    );
\doutb[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0),
      O => doutb(18)
    );
\doutb[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(1),
      O => doutb(19)
    );
\doutb[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(2),
      O => doutb(20)
    );
\doutb[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(3),
      O => doutb(21)
    );
\doutb[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(4),
      O => doutb(22)
    );
\doutb[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(5),
      O => doutb(23)
    );
\doutb[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(6),
      O => doutb(24)
    );
\doutb[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(7),
      O => doutb(25)
    );
\doutb[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      O => doutb(0)
    );
\doutb[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1),
      O => doutb(1)
    );
\doutb[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2),
      O => doutb(2)
    );
\doutb[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3),
      O => doutb(3)
    );
\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addrb(0),
      I1 => enb,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      O => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1__0_n_0\,
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 1 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
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
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(13 downto 1) => addra(12 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(13 downto 1) => addrb(12 downto 0),
      ADDRBWRADDR(0) => '0',
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
      CASDOUTA(15 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DINADIN(15 downto 2) => B"00000000000000",
      DINADIN(1 downto 0) => dina(1 downto 0),
      DINBDIN(15 downto 2) => B"00000000000000",
      DINBDIN(1 downto 0) => dinb(1 downto 0),
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15 downto 2) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED\(15 downto 2),
      DOUTADOUT(1 downto 0) => douta(1 downto 0),
      DOUTBDOUT(15 downto 2) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED\(15 downto 2),
      DOUTBDOUT(1 downto 0) => doutb(1 downto 0),
      DOUTPADOUTP(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED\(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED\(1 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => sleep,
      WEA(1) => '0',
      WEA(0) => wea(0),
      WEBWE(3 downto 1) => B"000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_01 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_02 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_03 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_04 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_05 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_06 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_07 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_08 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_09 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_10 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_11 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_12 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_13 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_14 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_15 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_16 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_17 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_18 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_19 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_20 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_21 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_22 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_23 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_24 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_25 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_26 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_27 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_28 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_29 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_30 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_31 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_32 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_33 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_34 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_35 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_36 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_37 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_38 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_39 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_40 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_41 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_42 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_43 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_44 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_45 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_46 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_47 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_48 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_49 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_50 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_51 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_52 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_53 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_54 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_55 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_56 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_57 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_58 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_59 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_5A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_5B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_5C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_5D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_5E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_5F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_60 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_61 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_62 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_63 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_64 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_65 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_66 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_67 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_68 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_69 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_70 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_71 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_72 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_73 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_74 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_75 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_76 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_77 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_78 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_79 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
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
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(14 downto 2) => addra(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"00",
      ADDRBWRADDR(14 downto 2) => addrb(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"00",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 4) => B"0000000000000000000000000000",
      DINADIN(3 downto 0) => dina(3 downto 0),
      DINBDIN(31 downto 4) => B"0000000000000000000000000000",
      DINBDIN(3 downto 0) => dinb(3 downto 0),
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 4) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 4),
      DOUTADOUT(3 downto 0) => douta(3 downto 0),
      DOUTBDOUT(31 downto 4) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 4),
      DOUTBDOUT(3 downto 0) => doutb(3 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 1) => B"000",
      WEA(0) => wea(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_01 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_02 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_03 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_04 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_05 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_06 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_07 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_08 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_09 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_10 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_11 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_12 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_13 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_14 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_15 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_16 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_17 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_18 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_19 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_20 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_21 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_22 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_23 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_24 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_25 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_26 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_27 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_28 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_29 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_30 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_31 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_32 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_33 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_34 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_35 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_36 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_37 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_38 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_39 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_40 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_41 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_42 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_43 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_44 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_45 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_46 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_47 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_48 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_49 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_50 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_51 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_52 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_53 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_54 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_55 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_56 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_57 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_58 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_59 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_60 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_61 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_62 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_63 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_64 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_65 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_66 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_67 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_68 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_69 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_70 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_71 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_72 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_73 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_74 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_75 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_76 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_77 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_78 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_79 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 8) => B"000000000000000000000000",
      DINADIN(7 downto 0) => dina(7 downto 0),
      DINBDIN(31 downto 8) => B"000000000000000000000000",
      DINBDIN(7 downto 0) => dinb(7 downto 0),
      DINPADINP(3 downto 1) => B"000",
      DINPADINP(0) => dina(8),
      DINPBDINP(3 downto 1) => B"000",
      DINPBDINP(0) => dinb(8),
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[13]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[13]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[14]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[14]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 1) => B"000",
      WEA(0) => wea(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPADOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    DOUTPBDOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_01 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_02 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_03 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_04 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_05 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_06 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_07 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_08 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_09 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_0F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_10 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_11 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_12 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_13 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_14 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_15 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_16 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_17 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_18 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_19 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_1F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_20 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_21 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_22 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_23 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_24 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_25 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_26 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_27 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_28 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_29 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_2F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_30 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_31 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_32 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_33 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_34 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_35 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_36 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_37 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_38 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_39 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_3F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_40 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_41 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_42 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_43 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_44 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_45 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_46 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_47 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_48 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_49 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_4F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_50 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_51 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_52 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_53 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_54 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_55 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_56 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_57 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_58 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_59 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_5F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_60 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_61 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_62 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_63 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_64 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_65 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_66 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_67 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_68 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_69 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_6F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_70 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_71 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_72 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_73 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_74 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_75 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_76 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_77 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_78 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_79 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7A => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7B => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7C => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7D => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7E => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_7F => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 8) => B"000000000000000000000000",
      DINADIN(7 downto 0) => dina(7 downto 0),
      DINBDIN(31 downto 8) => B"000000000000000000000000",
      DINBDIN(7 downto 0) => dinb(7 downto 0),
      DINPADINP(3 downto 1) => B"000",
      DINPADINP(0) => dina(8),
      DINPBDINP(3 downto 1) => B"000",
      DINPBDINP(0) => dinb(8),
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => DOUTADOUT(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => DOUTBDOUT(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => DOUTPADOUTP(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => DOUTPBDOUTP(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 1) => B"000",
      WEA(0) => wea(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 8) => B"000000000000000000000000",
      DINADIN(7 downto 0) => dina(7 downto 0),
      DINBDIN(31 downto 8) => B"000000000000000000000000",
      DINBDIN(7 downto 0) => dinb(7 downto 0),
      DINPADINP(3 downto 1) => B"000",
      DINPADINP(0) => dina(8),
      DINPBDINP(3 downto 1) => B"000",
      DINPBDINP(0) => dinb(8),
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[22]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[22]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[23]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[23]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 1) => B"000",
      WEA(0) => wea(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 8) => B"000000000000000000000000",
      DINADIN(7 downto 0) => dina(7 downto 0),
      DINBDIN(31 downto 8) => B"000000000000000000000000",
      DINBDIN(7 downto 0) => dinb(7 downto 0),
      DINPADINP(3 downto 1) => B"000",
      DINPADINP(0) => dina(8),
      DINPBDINP(3 downto 1) => B"000",
      DINPBDINP(0) => dinb(8),
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[22]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[22]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[23]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[23]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 1) => B"000",
      WEA(0) => wea(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    \douta[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 8) => B"000000000000000000000000",
      DINADIN(7 downto 0) => dina(7 downto 0),
      DINBDIN(31 downto 8) => B"000000000000000000000000",
      DINBDIN(7 downto 0) => dinb(7 downto 0),
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[31]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[31]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143\,
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 1) => B"000",
      WEA(0) => wea(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \douta[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143\ : STD_LOGIC;
  signal \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 8) => B"000000000000000000000000",
      DINADIN(7 downto 0) => dina(7 downto 0),
      DINBDIN(31 downto 8) => B"000000000000000000000000",
      DINBDIN(7 downto 0) => dinb(7 downto 0),
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[31]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[31]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143\,
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 1) => B"000",
      WEA(0) => wea(0),
      WEBWE(7 downto 1) => B"0000000",
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 1 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dina(1 downto 0) => dina(1 downto 0),
      dinb(1 downto 0) => dinb(1 downto 0),
      douta(1 downto 0) => douta(1 downto 0),
      doutb(1 downto 0) => doutb(1 downto 0),
      ena => ena,
      enb => enb,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dina(3 downto 0) => dina(3 downto 0),
      dinb(3 downto 0) => dinb(3 downto 0),
      douta(3 downto 0) => douta(3 downto 0),
      doutb(3 downto 0) => doutb(3 downto 0),
      ena => ena,
      enb => enb,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      \doutb[13]\(7 downto 0) => \doutb[13]\(7 downto 0),
      \doutb[14]\(0) => \doutb[14]\(0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized2\ is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPADOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    DOUTPBDOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      DOUTADOUT(7 downto 0) => DOUTADOUT(7 downto 0),
      DOUTBDOUT(7 downto 0) => DOUTBDOUT(7 downto 0),
      DOUTPADOUTP(0) => DOUTPADOUTP(0),
      DOUTPBDOUTP(0) => DOUTPBDOUTP(0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      \doutb[22]\(7 downto 0) => \doutb[22]\(7 downto 0),
      \doutb[23]\(0) => \doutb[23]\(0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized4\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      \doutb[22]\(7 downto 0) => \doutb[22]\(7 downto 0),
      \doutb[23]\(0) => \doutb[23]\(0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized5\ is
  port (
    \douta[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      \douta[31]\(7 downto 0) => \douta[31]\(7 downto 0),
      \doutb[31]\(7 downto 0) => \doutb[31]\(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \douta[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      \douta[31]\(7 downto 0) => \douta[31]\(7 downto 0),
      \doutb[31]\(7 downto 0) => \doutb[31]\(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal enb_array : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_9\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.TCP_bridge_blk_mem_gen_0_0_bindec
     port map (
      addra(0) => addra(12),
      ena => ena,
      ena_array(1 downto 0) => ena_array(1 downto 0)
    );
\bindec_b.bindec_inst_b\: entity work.TCP_bridge_blk_mem_gen_0_0_bindec_0
     port map (
      addrb(0) => addrb(12),
      enb => enb,
      enb_array(1 downto 0) => enb_array(1 downto 0)
    );
\has_mux_a.A\: entity work.TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux
     port map (
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7) => \ramloop[2].ram.r_n_0\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6) => \ramloop[2].ram.r_n_1\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5) => \ramloop[2].ram.r_n_2\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4) => \ramloop[2].ram.r_n_3\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3) => \ramloop[2].ram.r_n_4\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2) => \ramloop[2].ram.r_n_5\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1) => \ramloop[2].ram.r_n_6\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \ramloop[2].ram.r_n_7\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_16\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(7) => \ramloop[5].ram.r_n_0\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(6) => \ramloop[5].ram.r_n_1\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(5) => \ramloop[5].ram.r_n_2\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(4) => \ramloop[5].ram.r_n_3\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3) => \ramloop[5].ram.r_n_4\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(2) => \ramloop[5].ram.r_n_5\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(1) => \ramloop[5].ram.r_n_6\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[5].ram.r_n_7\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(7) => \ramloop[4].ram.r_n_0\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(6) => \ramloop[4].ram.r_n_1\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(5) => \ramloop[4].ram.r_n_2\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(4) => \ramloop[4].ram.r_n_3\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(3) => \ramloop[4].ram.r_n_4\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(2) => \ramloop[4].ram.r_n_5\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(1) => \ramloop[4].ram.r_n_6\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[4].ram.r_n_7\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[5].ram.r_n_16\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[4].ram.r_n_16\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7) => \ramloop[7].ram.r_n_0\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6) => \ramloop[7].ram.r_n_1\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5) => \ramloop[7].ram.r_n_2\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4) => \ramloop[7].ram.r_n_3\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3) => \ramloop[7].ram.r_n_4\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2) => \ramloop[7].ram.r_n_5\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1) => \ramloop[7].ram.r_n_6\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[7].ram.r_n_7\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(7) => \ramloop[6].ram.r_n_0\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(6) => \ramloop[6].ram.r_n_1\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(5) => \ramloop[6].ram.r_n_2\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(4) => \ramloop[6].ram.r_n_3\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(3) => \ramloop[6].ram.r_n_4\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(2) => \ramloop[6].ram.r_n_5\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(1) => \ramloop[6].ram.r_n_6\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[6].ram.r_n_7\,
      DOUTADOUT(7) => \ramloop[3].ram.r_n_0\,
      DOUTADOUT(6) => \ramloop[3].ram.r_n_1\,
      DOUTADOUT(5) => \ramloop[3].ram.r_n_2\,
      DOUTADOUT(4) => \ramloop[3].ram.r_n_3\,
      DOUTADOUT(3) => \ramloop[3].ram.r_n_4\,
      DOUTADOUT(2) => \ramloop[3].ram.r_n_5\,
      DOUTADOUT(1) => \ramloop[3].ram.r_n_6\,
      DOUTADOUT(0) => \ramloop[3].ram.r_n_7\,
      DOUTPADOUTP(0) => \ramloop[3].ram.r_n_16\,
      addra(0) => addra(12),
      clka => clka,
      douta(25 downto 0) => douta(31 downto 6),
      ena => ena
    );
\has_mux_b.B\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_mux__parameterized0\
     port map (
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7) => \ramloop[2].ram.r_n_8\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6) => \ramloop[2].ram.r_n_9\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5) => \ramloop[2].ram.r_n_10\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4) => \ramloop[2].ram.r_n_11\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3) => \ramloop[2].ram.r_n_12\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2) => \ramloop[2].ram.r_n_13\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1) => \ramloop[2].ram.r_n_14\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \ramloop[2].ram.r_n_15\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_17\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(7) => \ramloop[5].ram.r_n_8\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(6) => \ramloop[5].ram.r_n_9\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(5) => \ramloop[5].ram.r_n_10\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(4) => \ramloop[5].ram.r_n_11\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3) => \ramloop[5].ram.r_n_12\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(2) => \ramloop[5].ram.r_n_13\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(1) => \ramloop[5].ram.r_n_14\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[5].ram.r_n_15\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(7) => \ramloop[4].ram.r_n_8\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(6) => \ramloop[4].ram.r_n_9\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(5) => \ramloop[4].ram.r_n_10\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(4) => \ramloop[4].ram.r_n_11\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(3) => \ramloop[4].ram.r_n_12\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(2) => \ramloop[4].ram.r_n_13\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(1) => \ramloop[4].ram.r_n_14\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[4].ram.r_n_15\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[5].ram.r_n_17\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[4].ram.r_n_17\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7) => \ramloop[7].ram.r_n_8\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6) => \ramloop[7].ram.r_n_9\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5) => \ramloop[7].ram.r_n_10\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4) => \ramloop[7].ram.r_n_11\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3) => \ramloop[7].ram.r_n_12\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2) => \ramloop[7].ram.r_n_13\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1) => \ramloop[7].ram.r_n_14\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[7].ram.r_n_15\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(7) => \ramloop[6].ram.r_n_8\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(6) => \ramloop[6].ram.r_n_9\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(5) => \ramloop[6].ram.r_n_10\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(4) => \ramloop[6].ram.r_n_11\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(3) => \ramloop[6].ram.r_n_12\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(2) => \ramloop[6].ram.r_n_13\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(1) => \ramloop[6].ram.r_n_14\,
      \DEVICE_8SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[6].ram.r_n_15\,
      DOUTBDOUT(7) => \ramloop[3].ram.r_n_8\,
      DOUTBDOUT(6) => \ramloop[3].ram.r_n_9\,
      DOUTBDOUT(5) => \ramloop[3].ram.r_n_10\,
      DOUTBDOUT(4) => \ramloop[3].ram.r_n_11\,
      DOUTBDOUT(3) => \ramloop[3].ram.r_n_12\,
      DOUTBDOUT(2) => \ramloop[3].ram.r_n_13\,
      DOUTBDOUT(1) => \ramloop[3].ram.r_n_14\,
      DOUTBDOUT(0) => \ramloop[3].ram.r_n_15\,
      DOUTPBDOUTP(0) => \ramloop[3].ram.r_n_17\,
      addrb(0) => addrb(12),
      clkb => clkb,
      doutb(25 downto 0) => doutb(31 downto 6),
      enb => enb
    );
\ramloop[0].ram.r\: entity work.TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dina(1 downto 0) => dina(1 downto 0),
      dinb(1 downto 0) => dinb(1 downto 0),
      douta(1 downto 0) => douta(1 downto 0),
      doutb(1 downto 0) => doutb(1 downto 0),
      ena => ena,
      enb => enb,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[1].ram.r\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dina(3 downto 0) => dina(5 downto 2),
      dinb(3 downto 0) => dinb(5 downto 2),
      douta(3 downto 0) => douta(5 downto 2),
      doutb(3 downto 0) => doutb(5 downto 2),
      ena => ena,
      enb => enb,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[2].ram.r\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(14 downto 6),
      dinb(8 downto 0) => dinb(14 downto 6),
      \douta[13]\(7) => \ramloop[2].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[2].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[2].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[2].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[2].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[2].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[2].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[2].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[2].ram.r_n_16\,
      \doutb[13]\(7) => \ramloop[2].ram.r_n_8\,
      \doutb[13]\(6) => \ramloop[2].ram.r_n_9\,
      \doutb[13]\(5) => \ramloop[2].ram.r_n_10\,
      \doutb[13]\(4) => \ramloop[2].ram.r_n_11\,
      \doutb[13]\(3) => \ramloop[2].ram.r_n_12\,
      \doutb[13]\(2) => \ramloop[2].ram.r_n_13\,
      \doutb[13]\(1) => \ramloop[2].ram.r_n_14\,
      \doutb[13]\(0) => \ramloop[2].ram.r_n_15\,
      \doutb[14]\(0) => \ramloop[2].ram.r_n_17\,
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[3].ram.r\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized2\
     port map (
      DOUTADOUT(7) => \ramloop[3].ram.r_n_0\,
      DOUTADOUT(6) => \ramloop[3].ram.r_n_1\,
      DOUTADOUT(5) => \ramloop[3].ram.r_n_2\,
      DOUTADOUT(4) => \ramloop[3].ram.r_n_3\,
      DOUTADOUT(3) => \ramloop[3].ram.r_n_4\,
      DOUTADOUT(2) => \ramloop[3].ram.r_n_5\,
      DOUTADOUT(1) => \ramloop[3].ram.r_n_6\,
      DOUTADOUT(0) => \ramloop[3].ram.r_n_7\,
      DOUTBDOUT(7) => \ramloop[3].ram.r_n_8\,
      DOUTBDOUT(6) => \ramloop[3].ram.r_n_9\,
      DOUTBDOUT(5) => \ramloop[3].ram.r_n_10\,
      DOUTBDOUT(4) => \ramloop[3].ram.r_n_11\,
      DOUTBDOUT(3) => \ramloop[3].ram.r_n_12\,
      DOUTBDOUT(2) => \ramloop[3].ram.r_n_13\,
      DOUTBDOUT(1) => \ramloop[3].ram.r_n_14\,
      DOUTBDOUT(0) => \ramloop[3].ram.r_n_15\,
      DOUTPADOUTP(0) => \ramloop[3].ram.r_n_16\,
      DOUTPBDOUTP(0) => \ramloop[3].ram.r_n_17\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(14 downto 6),
      dinb(8 downto 0) => dinb(14 downto 6),
      ena_array(0) => ena_array(1),
      enb_array(0) => enb_array(1),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[4].ram.r\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(23 downto 15),
      dinb(8 downto 0) => dinb(23 downto 15),
      \douta[22]\(7) => \ramloop[4].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[4].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[4].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[4].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[4].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[4].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[4].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[4].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[4].ram.r_n_16\,
      \doutb[22]\(7) => \ramloop[4].ram.r_n_8\,
      \doutb[22]\(6) => \ramloop[4].ram.r_n_9\,
      \doutb[22]\(5) => \ramloop[4].ram.r_n_10\,
      \doutb[22]\(4) => \ramloop[4].ram.r_n_11\,
      \doutb[22]\(3) => \ramloop[4].ram.r_n_12\,
      \doutb[22]\(2) => \ramloop[4].ram.r_n_13\,
      \doutb[22]\(1) => \ramloop[4].ram.r_n_14\,
      \doutb[22]\(0) => \ramloop[4].ram.r_n_15\,
      \doutb[23]\(0) => \ramloop[4].ram.r_n_17\,
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[5].ram.r\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(23 downto 15),
      dinb(8 downto 0) => dinb(23 downto 15),
      \douta[22]\(7) => \ramloop[5].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[5].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[5].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[5].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[5].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[5].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[5].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[5].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[5].ram.r_n_16\,
      \doutb[22]\(7) => \ramloop[5].ram.r_n_8\,
      \doutb[22]\(6) => \ramloop[5].ram.r_n_9\,
      \doutb[22]\(5) => \ramloop[5].ram.r_n_10\,
      \doutb[22]\(4) => \ramloop[5].ram.r_n_11\,
      \doutb[22]\(3) => \ramloop[5].ram.r_n_12\,
      \doutb[22]\(2) => \ramloop[5].ram.r_n_13\,
      \doutb[22]\(1) => \ramloop[5].ram.r_n_14\,
      \doutb[22]\(0) => \ramloop[5].ram.r_n_15\,
      \doutb[23]\(0) => \ramloop[5].ram.r_n_17\,
      ena_array(0) => ena_array(1),
      enb_array(0) => enb_array(1),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[6].ram.r\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(31 downto 24),
      dinb(7 downto 0) => dinb(31 downto 24),
      \douta[31]\(7) => \ramloop[6].ram.r_n_0\,
      \douta[31]\(6) => \ramloop[6].ram.r_n_1\,
      \douta[31]\(5) => \ramloop[6].ram.r_n_2\,
      \douta[31]\(4) => \ramloop[6].ram.r_n_3\,
      \douta[31]\(3) => \ramloop[6].ram.r_n_4\,
      \douta[31]\(2) => \ramloop[6].ram.r_n_5\,
      \douta[31]\(1) => \ramloop[6].ram.r_n_6\,
      \douta[31]\(0) => \ramloop[6].ram.r_n_7\,
      \doutb[31]\(7) => \ramloop[6].ram.r_n_8\,
      \doutb[31]\(6) => \ramloop[6].ram.r_n_9\,
      \doutb[31]\(5) => \ramloop[6].ram.r_n_10\,
      \doutb[31]\(4) => \ramloop[6].ram.r_n_11\,
      \doutb[31]\(3) => \ramloop[6].ram.r_n_12\,
      \doutb[31]\(2) => \ramloop[6].ram.r_n_13\,
      \doutb[31]\(1) => \ramloop[6].ram.r_n_14\,
      \doutb[31]\(0) => \ramloop[6].ram.r_n_15\,
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[7].ram.r\: entity work.\TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(31 downto 24),
      dinb(7 downto 0) => dinb(31 downto 24),
      \douta[31]\(7) => \ramloop[7].ram.r_n_0\,
      \douta[31]\(6) => \ramloop[7].ram.r_n_1\,
      \douta[31]\(5) => \ramloop[7].ram.r_n_2\,
      \douta[31]\(4) => \ramloop[7].ram.r_n_3\,
      \douta[31]\(3) => \ramloop[7].ram.r_n_4\,
      \douta[31]\(2) => \ramloop[7].ram.r_n_5\,
      \douta[31]\(1) => \ramloop[7].ram.r_n_6\,
      \douta[31]\(0) => \ramloop[7].ram.r_n_7\,
      \doutb[31]\(7) => \ramloop[7].ram.r_n_8\,
      \doutb[31]\(6) => \ramloop[7].ram.r_n_9\,
      \doutb[31]\(5) => \ramloop[7].ram.r_n_10\,
      \doutb[31]\(4) => \ramloop[7].ram.r_n_11\,
      \doutb[31]\(3) => \ramloop[7].ram.r_n_12\,
      \doutb[31]\(2) => \ramloop[7].ram.r_n_13\,
      \doutb[31]\(1) => \ramloop[7].ram.r_n_14\,
      \doutb[31]\(0) => \ramloop[7].ram.r_n_15\,
      ena_array(0) => ena_array(1),
      enb_array(0) => enb_array(1),
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_top;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_generic_cstr
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => dinb(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      ena => ena,
      enb => enb,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_top
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => dinb(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      ena => ena,
      enb => enb,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 13;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 13;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "7";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "3E8";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     23.322586 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "kintexu";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 8192;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 8192;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 8192;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 8192;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "kintexu";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "yes";
end TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => dinb(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      ena => ena,
      enb => enb,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TCP_bridge_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TCP_bridge_blk_mem_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TCP_bridge_blk_mem_gen_0_0 : entity is "TCP_bridge_blk_mem_gen_0_0,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TCP_bridge_blk_mem_gen_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of TCP_bridge_blk_mem_gen_0_0 : entity is "blk_mem_gen_v8_4_1,Vivado 2018.1";
end TCP_bridge_blk_mem_gen_0_0;

architecture STRUCTURE of TCP_bridge_blk_mem_gen_0_0 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 13;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 13;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "7";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "3E8";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     23.322586 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintexu";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 8192;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 8192;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 8192;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 8192;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "kintexu";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 512, MEM_WIDTH 16, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 512, MEM_WIDTH 16, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of enb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of dinb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of web : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
begin
U0: entity work.TCP_bridge_blk_mem_gen_0_0_blk_mem_gen_v8_4_1
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      addrb(12 downto 0) => addrb(12 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => dinb(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(12 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(12 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(12 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(12 downto 0),
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
