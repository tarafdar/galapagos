-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Sun Jul  2 17:23:05 2017
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_01e2_xpcs_0_gt_sim_netlist.vhdl
-- Design      : bd_01e2_xpcs_0_gt
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer is
  port (
    rxresetdone_sync : out STD_LOGIC;
    rxresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rxresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => rxresetdone_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_0 is
  port (
    txresetdone_sync : out STD_LOGIC;
    txresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_0 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_0 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => txresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => txresetdone_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_1 is
  port (
    gtpowergood_sync : out STD_LOGIC;
    gtpowergood_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_1 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_1 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtpowergood_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtpowergood_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_10 is
  port (
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_rx_cdr_to_clr_reg : out STD_LOGIC;
    rxprogdivreset_out_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_rx_timer_clr09_out : in STD_LOGIC;
    sm_reset_rx_cdr_to_clr : in STD_LOGIC;
    gtwiz_reset_rx_any_sync : in STD_LOGIC;
    rxprogdivreset_int : in STD_LOGIC;
    sm_reset_rx_cdr_to_sat : in STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[1]\ : in STD_LOGIC;
    rxresetdone_sync : in STD_LOGIC;
    sm_reset_rx_timer_sat : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg : in STD_LOGIC;
    gtwiz_reset_rx_pll_and_datapath_dly : in STD_LOGIC;
    gtwiz_reset_rx_datapath_dly : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_10 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_10 is
  signal \FSM_sequential_sm_reset_rx[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[2]_i_5_n_0\ : STD_LOGIC;
  signal \^gtwiz_reset_rx_cdr_stable_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal sm_reset_rx_cdr_to_clr0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[2]_i_5\ : label is "soft_lutpair4";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
  attribute SOFT_HLUTNM of sm_reset_rx_cdr_to_clr_i_2 : label is "soft_lutpair4";
begin
  gtwiz_reset_rx_cdr_stable_out(0) <= \^gtwiz_reset_rx_cdr_stable_out\(0);
\FSM_sequential_sm_reset_rx[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => rxresetdone_sync,
      I1 => \out\(2),
      I2 => sm_reset_rx_timer_sat,
      I3 => sm_reset_rx_timer_clr_reg,
      I4 => \out\(1),
      I5 => \FSM_sequential_sm_reset_rx[2]_i_5_n_0\,
      O => \FSM_sequential_sm_reset_rx[2]_i_3_n_0\
    );
\FSM_sequential_sm_reset_rx[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFE0"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => \^gtwiz_reset_rx_cdr_stable_out\(0),
      I2 => \out\(2),
      I3 => gtwiz_reset_rx_pll_and_datapath_dly,
      I4 => gtwiz_reset_rx_datapath_dly,
      O => \FSM_sequential_sm_reset_rx[2]_i_5_n_0\
    );
\FSM_sequential_sm_reset_rx_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_sm_reset_rx[2]_i_3_n_0\,
      I1 => \FSM_sequential_sm_reset_rx_reg[1]\,
      O => E(0),
      S => \out\(0)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rxcdrlock_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_rx_cdr_stable_out\(0),
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
rxprogdivreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000330"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_clr0,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => gtwiz_reset_rx_any_sync,
      I5 => rxprogdivreset_int,
      O => rxprogdivreset_out_reg
    );
sm_reset_rx_cdr_to_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3FFF02020303"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_clr0,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => sm_reset_rx_timer_clr09_out,
      I4 => \out\(2),
      I5 => sm_reset_rx_cdr_to_clr,
      O => sm_reset_rx_cdr_to_clr_reg
    );
sm_reset_rx_cdr_to_clr_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => \^gtwiz_reset_rx_cdr_stable_out\(0),
      O => sm_reset_rx_cdr_to_clr0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_2 is
  port (
    gtwiz_reset_rx_datapath_dly : out STD_LOGIC;
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_2 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_2 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_rx_datapath_dly,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_3 is
  port (
    gtwiz_reset_rx_pll_and_datapath_dly : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in11_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_3 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_3 is
  signal \^gtwiz_reset_rx_pll_and_datapath_dly\ : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[1]_i_1\ : label is "soft_lutpair0";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_rx_pll_and_datapath_dly <= \^gtwiz_reset_rx_pll_and_datapath_dly\;
\FSM_sequential_sm_reset_rx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0303BFBC"
    )
        port map (
      I0 => p_0_in11_out,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \^gtwiz_reset_rx_pll_and_datapath_dly\,
      I4 => \out\(0),
      O => D(0)
    );
\FSM_sequential_sm_reset_rx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F3FF11"
    )
        port map (
      I0 => \^gtwiz_reset_rx_pll_and_datapath_dly\,
      I1 => \out\(2),
      I2 => p_0_in11_out,
      I3 => \out\(0),
      I4 => \out\(1),
      O => D(1)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_rx_pll_and_datapath_dly\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_4 is
  port (
    gtwiz_reset_tx_datapath_dly : out STD_LOGIC;
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_4 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_4 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_tx_datapath_dly,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_5 is
  port (
    gtwiz_reset_tx_pll_and_datapath_dly : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_5 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_5 is
  signal \^gtwiz_reset_tx_pll_and_datapath_dly\ : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[1]_i_1\ : label is "soft_lutpair1";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_tx_pll_and_datapath_dly <= \^gtwiz_reset_tx_pll_and_datapath_dly\;
\FSM_sequential_sm_reset_tx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5756"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      O => D(0)
    );
\FSM_sequential_sm_reset_tx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03F1"
    )
        port map (
      I0 => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      O => D(1)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_6 is
  port (
    rxuserrdy_out_reg : out STD_LOGIC;
    sm_reset_rx_timer_clr0 : out STD_LOGIC;
    sm_reset_rx_timer_clr_reg : out STD_LOGIC;
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_rx_timer_sat : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxresetdone_sync : in STD_LOGIC;
    gtwiz_reset_rx_any_sync : in STD_LOGIC;
    rxuserrdy_int : in STD_LOGIC;
    i_in_out_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_6 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_6 is
  signal gtwiz_reset_userclk_rx_active_sync : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal \^sm_reset_rx_timer_clr0\ : STD_LOGIC;
  signal sm_reset_rx_timer_clr_i_2_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  sm_reset_rx_timer_clr0 <= \^sm_reset_rx_timer_clr0\;
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_userclk_rx_active_in(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_userclk_rx_active_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
rxuserrdy_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEDED00000800"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \^sm_reset_rx_timer_clr0\,
      I4 => gtwiz_reset_rx_any_sync,
      I5 => rxuserrdy_int,
      O => rxuserrdy_out_reg
    );
rxuserrdy_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_0,
      I1 => sm_reset_rx_timer_sat,
      I2 => gtwiz_reset_userclk_rx_active_sync,
      O => \^sm_reset_rx_timer_clr0\
    );
sm_reset_rx_timer_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAFCCFA0AA0CC0A"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_i_2_n_0,
      I1 => i_in_out_reg_0,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => sm_reset_rx_timer_clr_reg_0,
      O => sm_reset_rx_timer_clr_reg
    );
sm_reset_rx_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C080008FFFFFFFF"
    )
        port map (
      I0 => gtwiz_reset_userclk_rx_active_sync,
      I1 => sm_reset_rx_timer_sat,
      I2 => sm_reset_rx_timer_clr_reg_0,
      I3 => \out\(1),
      I4 => rxresetdone_sync,
      I5 => \out\(2),
      O => sm_reset_rx_timer_clr_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_7 is
  port (
    gtwiz_reset_userclk_tx_active_sync : out STD_LOGIC;
    txuserrdy_out_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gtwiz_reset_tx_any_sync : in STD_LOGIC;
    txuserrdy_int : in STD_LOGIC;
    sm_reset_tx_timer_clr_reg : in STD_LOGIC;
    sm_reset_tx_timer_sat : in STD_LOGIC;
    i_in_out_reg_0 : in STD_LOGIC;
    sm_reset_tx_timer_sat_reg : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_dly : in STD_LOGIC;
    gtwiz_reset_tx_datapath_dly : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_7 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_7 is
  signal \FSM_sequential_sm_reset_tx[2]_i_3_n_0\ : STD_LOGIC;
  signal \^gtwiz_reset_userclk_tx_active_sync\ : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal sm_reset_tx_timer_clr0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_userclk_tx_active_sync <= \^gtwiz_reset_userclk_tx_active_sync\;
\FSM_sequential_sm_reset_tx[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40DD40DD40DD4088"
    )
        port map (
      I0 => \out\(1),
      I1 => sm_reset_tx_timer_sat_reg,
      I2 => \^gtwiz_reset_userclk_tx_active_sync\,
      I3 => \out\(2),
      I4 => gtwiz_reset_tx_pll_and_datapath_dly,
      I5 => gtwiz_reset_tx_datapath_dly,
      O => \FSM_sequential_sm_reset_tx[2]_i_3_n_0\
    );
\FSM_sequential_sm_reset_tx_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_sm_reset_tx[2]_i_3_n_0\,
      I1 => i_in_out_reg_0,
      O => E(0),
      S => \out\(0)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_userclk_tx_active_in(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_userclk_tx_active_sync\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
txuserrdy_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCCF00000008"
    )
        port map (
      I0 => sm_reset_tx_timer_clr0,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => gtwiz_reset_tx_any_sync,
      I5 => txuserrdy_int,
      O => txuserrdy_out_reg
    );
txuserrdy_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_tx_timer_clr_reg,
      I1 => sm_reset_tx_timer_sat,
      I2 => \^gtwiz_reset_userclk_tx_active_sync\,
      O => sm_reset_tx_timer_clr0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_8 is
  port (
    gtrxreset_out_reg : out STD_LOGIC;
    sm_reset_rx_timer_clr09_out : out STD_LOGIC;
    gtwiz_reset_rx_done_int_reg : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[0]\ : out STD_LOGIC;
    sm_reset_rx_timer_clr_reg : out STD_LOGIC;
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gtwiz_reset_rx_any_sync : in STD_LOGIC;
    gtrxreset_int : in STD_LOGIC;
    p_0_in11_out : in STD_LOGIC;
    gtwiz_reset_rx_done_int_reg_0 : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg_0 : in STD_LOGIC;
    sm_reset_rx_timer_sat : in STD_LOGIC;
    sm_reset_rx_timer_clr0 : in STD_LOGIC;
    sm_reset_rx_pll_timer_sat : in STD_LOGIC;
    sm_reset_rx_pll_timer_clr_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_8 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_8 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal plllock_rx_sync : STD_LOGIC;
  signal \^sm_reset_rx_timer_clr09_out\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sm_reset_rx_cdr_to_clr_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sm_reset_rx_timer_clr_i_3 : label is "soft_lutpair2";
begin
  sm_reset_rx_timer_clr09_out <= \^sm_reset_rx_timer_clr09_out\;
\FSM_sequential_sm_reset_rx[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088308830BB3088"
    )
        port map (
      I0 => \^sm_reset_rx_timer_clr09_out\,
      I1 => \out\(1),
      I2 => sm_reset_rx_timer_clr0,
      I3 => \out\(2),
      I4 => sm_reset_rx_pll_timer_sat,
      I5 => sm_reset_rx_pll_timer_clr_reg,
      O => \FSM_sequential_sm_reset_rx_reg[0]\
    );
gtrxreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F0000003C"
    )
        port map (
      I0 => \^sm_reset_rx_timer_clr09_out\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => gtwiz_reset_rx_any_sync,
      I5 => gtrxreset_int,
      O => gtrxreset_out_reg
    );
gtwiz_reset_rx_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF77FF00800080"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(1),
      I2 => p_0_in11_out,
      I3 => \out\(0),
      I4 => plllock_rx_sync,
      I5 => gtwiz_reset_rx_done_int_reg_0,
      O => gtwiz_reset_rx_done_int_reg
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_qpll0lock_in(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => plllock_rx_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
sm_reset_rx_cdr_to_clr_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_0,
      I1 => sm_reset_rx_timer_sat,
      I2 => plllock_rx_sync,
      O => \^sm_reset_rx_timer_clr09_out\
    );
sm_reset_rx_timer_clr_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => plllock_rx_sync,
      I1 => \out\(0),
      I2 => sm_reset_rx_timer_sat,
      I3 => sm_reset_rx_timer_clr_reg_0,
      O => sm_reset_rx_timer_clr_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_9 is
  port (
    gttxreset_out_reg : out STD_LOGIC;
    sm_reset_tx_timer_clr_reg : out STD_LOGIC;
    gtwiz_reset_tx_done_int_reg : out STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[0]\ : out STD_LOGIC;
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_tx_timer_sat : in STD_LOGIC;
    sm_reset_tx_timer_clr_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gtwiz_reset_tx_any_sync : in STD_LOGIC;
    gttxreset_int : in STD_LOGIC;
    gtwiz_reset_tx_done_int0 : in STD_LOGIC;
    gtwiz_reset_tx_done_int_reg_0 : in STD_LOGIC;
    sm_reset_tx_timer_sat_reg : in STD_LOGIC;
    txresetdone_sync : in STD_LOGIC;
    sm_reset_tx_pll_timer_sat_reg : in STD_LOGIC;
    gtwiz_reset_userclk_tx_active_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_9 : entity is "gtwizard_ultrascale_v1_6_5_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_9 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal plllock_tx_sync : STD_LOGIC;
  signal sm_reset_tx_timer_clr012_out : STD_LOGIC;
  signal sm_reset_tx_timer_clr_i_2_n_0 : STD_LOGIC;
  signal sm_reset_tx_timer_clr_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gttxreset_out_i_2 : label is "soft_lutpair3";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
  attribute SOFT_HLUTNM of sm_reset_tx_timer_clr_i_3 : label is "soft_lutpair3";
begin
\FSM_sequential_sm_reset_tx[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000B3B330008080"
    )
        port map (
      I0 => plllock_tx_sync,
      I1 => \out\(1),
      I2 => sm_reset_tx_timer_sat_reg,
      I3 => txresetdone_sync,
      I4 => \out\(2),
      I5 => sm_reset_tx_pll_timer_sat_reg,
      O => \FSM_sequential_sm_reset_tx_reg[0]\
    );
gttxreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F0000003C"
    )
        port map (
      I0 => sm_reset_tx_timer_clr012_out,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => gtwiz_reset_tx_any_sync,
      I5 => gttxreset_int,
      O => gttxreset_out_reg
    );
gttxreset_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_tx_timer_clr_reg_0,
      I1 => sm_reset_tx_timer_sat,
      I2 => plllock_tx_sync,
      O => sm_reset_tx_timer_clr012_out
    );
gtwiz_reset_tx_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFFF00008080"
    )
        port map (
      I0 => gtwiz_reset_tx_done_int0,
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => plllock_tx_sync,
      I4 => \out\(1),
      I5 => gtwiz_reset_tx_done_int_reg_0,
      O => gtwiz_reset_tx_done_int_reg
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_qpll0lock_in(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => plllock_tx_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
sm_reset_tx_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBEB282B"
    )
        port map (
      I0 => sm_reset_tx_timer_clr_i_2_n_0,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => sm_reset_tx_timer_clr_reg_0,
      O => sm_reset_tx_timer_clr_reg
    );
sm_reset_tx_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFEFC0C0CFE0C0C0"
    )
        port map (
      I0 => txresetdone_sync,
      I1 => sm_reset_tx_timer_clr_i_3_n_0,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => sm_reset_tx_timer_sat_reg,
      I5 => gtwiz_reset_userclk_tx_active_sync,
      O => sm_reset_tx_timer_clr_i_2_n_0
    );
sm_reset_tx_timer_clr_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => plllock_tx_sync,
      I1 => sm_reset_tx_timer_sat,
      I2 => sm_reset_tx_timer_clr_reg_0,
      I3 => \out\(2),
      O => sm_reset_tx_timer_clr_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gthe3_channel is
  port (
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicaldone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_int : in STD_LOGIC;
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxreset_int : in STD_LOGIC;
    lpbkrxtxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbktxrxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rstclkentx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrresetrsv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevsen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinttestovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprogdivreset_int : in STD_LOGIC;
    rxqpien_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_int : in STD_LOGIC;
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdiffpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprecursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_int : in STD_LOGIC;
    txqpibiasen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpistrongpdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpiweakpup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txuserrdy_int : in STD_LOGIC;
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdfeagcctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txbufdiffctrl_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxosintcfg_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcsrsvdin2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvdin_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gthe3_channel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gthe3_channel is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gthe3_channel_gen.gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST\ : label is "PRIMITIVE";
begin
\gthe3_channel_gen.gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST\: unisim.vcomponents.GTHE3_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => X"F800",
      ADAPT_CFG1 => X"0000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0000000000",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "FALSE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "FALSE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      A_RXOSCALRESET => '0',
      A_RXPROGDIVRESET => '0',
      A_TXPROGDIVRESET => '0',
      CBCC_DATA_SOURCE_SEL => "ENCODED",
      CDR_SWAP_MODE_EN => '0',
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 20,
      CLK_COR_MIN_LAT => 18,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0000000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0000000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG0 => X"67F8",
      CPLL_CFG1 => X"A4AC",
      CPLL_CFG2 => X"5007",
      CPLL_CFG3 => B"00" & X"0",
      CPLL_FBDIV => 2,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG0 => X"02B2",
      CPLL_INIT_CFG1 => X"00",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DDI_CTRL => B"00",
      DDI_REALIGN_WAIT => 15,
      DEC_MCOMMA_DETECT => "FALSE",
      DEC_PCOMMA_DETECT => "FALSE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DFE_D_X_REL_POS => '0',
      DFE_VCM_COMP_EN => '0',
      DMONITOR_CFG0 => B"00" & X"00",
      DMONITOR_CFG1 => X"00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER0 => X"0000",
      ES_QUALIFIER1 => X"0000",
      ES_QUALIFIER2 => X"0000",
      ES_QUALIFIER3 => X"0000",
      ES_QUALIFIER4 => X"0000",
      ES_QUAL_MASK0 => X"0000",
      ES_QUAL_MASK1 => X"0000",
      ES_QUAL_MASK2 => X"0000",
      ES_QUAL_MASK3 => X"0000",
      ES_QUAL_MASK4 => X"0000",
      ES_SDATA_MASK0 => X"0000",
      ES_SDATA_MASK1 => X"0000",
      ES_SDATA_MASK2 => X"0000",
      ES_SDATA_MASK3 => X"0000",
      ES_SDATA_MASK4 => X"0000",
      EVODD_PHI_CFG => B"00000000000",
      EYE_SCAN_SWAP_EN => '0',
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"10001",
      GM_BIAS_SELECT => '0',
      LOCAL_MASTER => '1',
      OOBDIVCTL => B"00",
      OOB_PWRUP => '0',
      PCI3_AUTO_REALIGN => "OVR_1K_BLK",
      PCI3_PIPE_RX_ELECIDLE => '0',
      PCI3_RX_ASYNC_EBUF_BYPASS => B"00",
      PCI3_RX_ELECIDLE_EI2_ENABLE => '0',
      PCI3_RX_ELECIDLE_H2L_COUNT => B"000000",
      PCI3_RX_ELECIDLE_H2L_DISABLE => B"000",
      PCI3_RX_ELECIDLE_HI_COUNT => B"000000",
      PCI3_RX_ELECIDLE_LP4_DISABLE => '0',
      PCI3_RX_FIFO_DISABLE => '0',
      PCIE_BUFG_DIV_CTRL => X"1000",
      PCIE_RXPCS_CFG_GEN3 => X"02A4",
      PCIE_RXPMA_CFG => X"000A",
      PCIE_TXPCS_CFG_GEN3 => X"2CA4",
      PCIE_TXPMA_CFG => X"000A",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD0 => B"0000000000000000",
      PCS_RSVD1 => B"000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PLL_SEL_MODE_GEN12 => B"11",
      PLL_SEL_MODE_GEN3 => B"11",
      PMA_RSV1 => X"F000",
      PROCESS_PAR => B"010",
      RATE_SW_USE_DRP => '1',
      RESET_POWERSAVE_DISABLE => '0',
      RXBUFRESET_TIME => B"00011",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "FALSE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 0,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 0,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG0 => X"0000",
      RXCDR_CFG0_GEN3 => X"0000",
      RXCDR_CFG1 => X"0000",
      RXCDR_CFG1_GEN3 => X"0000",
      RXCDR_CFG2 => X"07E6",
      RXCDR_CFG2_GEN3 => X"07E6",
      RXCDR_CFG3 => X"0000",
      RXCDR_CFG3_GEN3 => X"0000",
      RXCDR_CFG4 => X"0000",
      RXCDR_CFG4_GEN3 => X"0000",
      RXCDR_CFG5 => X"0000",
      RXCDR_CFG5_GEN3 => X"0000",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG0 => X"4480",
      RXCDR_LOCK_CFG1 => X"5FFF",
      RXCDR_LOCK_CFG2 => X"77C3",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXCFOK_CFG0 => X"4000",
      RXCFOK_CFG1 => X"0065",
      RXCFOK_CFG2 => X"002E",
      RXDFELPMRESET_TIME => B"0001111",
      RXDFELPM_KL_CFG0 => X"0000",
      RXDFELPM_KL_CFG1 => X"0002",
      RXDFELPM_KL_CFG2 => X"0000",
      RXDFE_CFG0 => X"0A00",
      RXDFE_CFG1 => X"0000",
      RXDFE_GC_CFG0 => X"0000",
      RXDFE_GC_CFG1 => X"7870",
      RXDFE_GC_CFG2 => X"0000",
      RXDFE_H2_CFG0 => X"0000",
      RXDFE_H2_CFG1 => X"0000",
      RXDFE_H3_CFG0 => X"4000",
      RXDFE_H3_CFG1 => X"0000",
      RXDFE_H4_CFG0 => X"2000",
      RXDFE_H4_CFG1 => X"0003",
      RXDFE_H5_CFG0 => X"2000",
      RXDFE_H5_CFG1 => X"0003",
      RXDFE_H6_CFG0 => X"2000",
      RXDFE_H6_CFG1 => X"0000",
      RXDFE_H7_CFG0 => X"2000",
      RXDFE_H7_CFG1 => X"0000",
      RXDFE_H8_CFG0 => X"2000",
      RXDFE_H8_CFG1 => X"0000",
      RXDFE_H9_CFG0 => X"2000",
      RXDFE_H9_CFG1 => X"0000",
      RXDFE_HA_CFG0 => X"2000",
      RXDFE_HA_CFG1 => X"0000",
      RXDFE_HB_CFG0 => X"2000",
      RXDFE_HB_CFG1 => X"0000",
      RXDFE_HC_CFG0 => X"0000",
      RXDFE_HC_CFG1 => X"0000",
      RXDFE_HD_CFG0 => X"0000",
      RXDFE_HD_CFG1 => X"0000",
      RXDFE_HE_CFG0 => X"0000",
      RXDFE_HE_CFG1 => X"0000",
      RXDFE_HF_CFG0 => X"0000",
      RXDFE_HF_CFG1 => X"0000",
      RXDFE_OS_CFG0 => X"8000",
      RXDFE_OS_CFG1 => X"0000",
      RXDFE_UT_CFG0 => X"8000",
      RXDFE_UT_CFG1 => X"0003",
      RXDFE_VP_CFG0 => X"AA00",
      RXDFE_VP_CFG1 => X"0033",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"0030",
      RXELECIDLE_CFG => "Sigcfg_4",
      RXGBOX_FIFO_INIT_RD_ADDR => 4,
      RXGEARBOX_EN => "TRUE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_CFG => X"0000",
      RXLPM_GC_CFG => X"1000",
      RXLPM_KH_CFG0 => X"0000",
      RXLPM_KH_CFG1 => X"0002",
      RXLPM_OS_CFG0 => X"8000",
      RXLPM_OS_CFG1 => X"0002",
      RXOOB_CFG => B"000000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00011",
      RXPHBEACON_CFG => X"0000",
      RXPHDLY_CFG => X"2020",
      RXPHSAMP_CFG => X"2100",
      RXPHSLIP_CFG => X"6622",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"00",
      RXPI_CFG1 => B"00",
      RXPI_CFG2 => B"00",
      RXPI_CFG3 => B"00",
      RXPI_CFG4 => '0',
      RXPI_CFG5 => '1',
      RXPI_CFG6 => B"000",
      RXPI_LPM => '0',
      RXPI_VREFSEL => '0',
      RXPMACLK_SEL => "DATA",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXPRBS_LINKACQ_CNT => 15,
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_AFE_CM_EN => '0',
      RX_BIAS_CFG0 => X"0AB4",
      RX_BUFFER_CFG => B"000000",
      RX_CAPFF_SARC_ENB => '0',
      RX_CLK25_DIV => 7,
      RX_CLKMUX_EN => '1',
      RX_CLK_SLIP_OVRD => B"00000",
      RX_CM_BUF_CFG => B"1010",
      RX_CM_BUF_PD => '0',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_CTLE3_LPF => B"00000001",
      RX_DATA_WIDTH => 64,
      RX_DDI_SEL => B"000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFELPM_CFG0 => B"0110",
      RX_DFELPM_CFG1 => '1',
      RX_DFELPM_KLKH_AGC_STUP_EN => '1',
      RX_DFE_AGC_CFG0 => B"10",
      RX_DFE_AGC_CFG1 => B"100",
      RX_DFE_KL_LPM_KH_CFG0 => B"01",
      RX_DFE_KL_LPM_KH_CFG1 => B"100",
      RX_DFE_KL_LPM_KL_CFG0 => B"01",
      RX_DFE_KL_LPM_KL_CFG1 => B"100",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_DIVRESET_TIME => B"00001",
      RX_EN_HI_LR => '1',
      RX_EYESCAN_VS_CODE => B"0000000",
      RX_EYESCAN_VS_NEG_DIR => '0',
      RX_EYESCAN_VS_RANGE => B"00",
      RX_EYESCAN_VS_UT_SIGN => '0',
      RX_FABINT_USRCLK_FLOP => '0',
      RX_INT_DATAWIDTH => 1,
      RX_PMA_POWER_SAVE => '0',
      RX_PROGDIV_CFG => 16.500000,
      RX_SAMPLE_PERIOD => B"111",
      RX_SIG_VALID_DLY => 11,
      RX_SUM_DFETAPREP_EN => '0',
      RX_SUM_IREF_TUNE => B"0000",
      RX_SUM_RES_CTRL => B"00",
      RX_SUM_VCMTUNE => B"0000",
      RX_SUM_VCM_OVWR => '0',
      RX_SUM_VREF_TUNE => B"000",
      RX_TUNE_AFE_OS => B"10",
      RX_WIDEMODE_CDR => '1',
      RX_XCLK_SEL => "RXDES",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"1110",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_MODE => "FAST",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => '0',
      SIM_VERSION => 2,
      TAPDLY_SET_TX => B"00",
      TEMPERATUR_PAR => B"0010",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV0 => X"00",
      TST_RSV1 => X"00",
      TXBUF_EN => "FALSE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"0009",
      TXDLY_LCFG => X"0050",
      TXDRVBIAS_N => B"1010",
      TXDRVBIAS_P => B"1010",
      TXFIFO_ADDR_CFG => "LOW",
      TXGBOX_FIFO_INIT_RD_ADDR => 4,
      TXGEARBOX_EN => "TRUE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00011",
      TXPHDLY_CFG0 => X"2020",
      TXPHDLY_CFG1 => X"0075",
      TXPH_CFG => X"0980",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '1',
      TXPI_CFG4 => '1',
      TXPI_CFG5 => B"000",
      TXPI_GRAY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_LPM => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPI_VREFSEL => '0',
      TXPMARESET_TIME => B"00011",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 7,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 64,
      TX_DCD_CFG => B"000010",
      TX_DCD_EN => '0',
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DIVRESET_TIME => B"00001",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"100",
      TX_EIDLE_DEASSERT_DELAY => B"011",
      TX_EML_PHI_TUNE => '0',
      TX_FABINT_USRCLK_FLOP => '0',
      TX_IDLE_DATA_ZERO => '0',
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001111",
      TX_MARGIN_FULL_1 => B"1001110",
      TX_MARGIN_FULL_2 => B"1001100",
      TX_MARGIN_FULL_3 => B"1001010",
      TX_MARGIN_FULL_4 => B"1001000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000101",
      TX_MARGIN_LOW_2 => B"1000011",
      TX_MARGIN_LOW_3 => B"1000010",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_MODE_SEL => B"000",
      TX_PMADATA_OPT => '0',
      TX_PMA_POWER_SAVE => '0',
      TX_PROGCLK_SEL => "PREPI",
      TX_PROGDIV_CFG => 16.500000,
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => B"00" & X"032",
      TX_RXDETECT_REF => B"100",
      TX_SAMPLE_PERIOD => B"111",
      TX_SARC_LPBK_ENB => '0',
      TX_XCLK_SEL => "TXOUT",
      USE_PCS_CLK_PHASE_SEL => '0',
      WB_MODE => B"00"
    )
        port map (
      BUFGTCE(2 downto 0) => bufgtce_out(2 downto 0),
      BUFGTCEMASK(2 downto 0) => bufgtcemask_out(2 downto 0),
      BUFGTDIV(8 downto 0) => bufgtdiv_out(8 downto 0),
      BUFGTRESET(2 downto 0) => bufgtreset_out(2 downto 0),
      BUFGTRSTMASK(2 downto 0) => bufgtrstmask_out(2 downto 0),
      CFGRESET => cfgreset_in(0),
      CLKRSVD0 => clkrsvd0_in(0),
      CLKRSVD1 => clkrsvd1_in(0),
      CPLLFBCLKLOST => cpllfbclklost_out(0),
      CPLLLOCK => cplllock_out(0),
      CPLLLOCKDETCLK => cplllockdetclk_in(0),
      CPLLLOCKEN => cplllocken_in(0),
      CPLLPD => cpllpd_in(0),
      CPLLREFCLKLOST => cpllrefclklost_out(0),
      CPLLREFCLKSEL(2 downto 0) => cpllrefclksel_in(2 downto 0),
      CPLLRESET => cpllreset_in(0),
      DMONFIFORESET => dmonfiforeset_in(0),
      DMONITORCLK => dmonitorclk_in(0),
      DMONITOROUT(16 downto 0) => dmonitorout_out(16 downto 0),
      DRPADDR(8 downto 0) => drpaddr_in(8 downto 0),
      DRPCLK => drpclk_in(0),
      DRPDI(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN => drpen_in(0),
      DRPRDY => drprdy_out(0),
      DRPWE => drpwe_in(0),
      EVODDPHICALDONE => evoddphicaldone_in(0),
      EVODDPHICALSTART => evoddphicalstart_in(0),
      EVODDPHIDRDEN => evoddphidrden_in(0),
      EVODDPHIDWREN => evoddphidwren_in(0),
      EVODDPHIXRDEN => evoddphixrden_in(0),
      EVODDPHIXWREN => evoddphixwren_in(0),
      EYESCANDATAERROR => eyescandataerror_out(0),
      EYESCANMODE => eyescanmode_in(0),
      EYESCANRESET => eyescanreset_in(0),
      EYESCANTRIGGER => eyescantrigger_in(0),
      GTGREFCLK => gtgrefclk_in(0),
      GTHRXN => gthrxn_in(0),
      GTHRXP => gthrxp_in(0),
      GTHTXN => gthtxn_out(0),
      GTHTXP => gthtxp_out(0),
      GTNORTHREFCLK0 => gtnorthrefclk0_in(0),
      GTNORTHREFCLK1 => gtnorthrefclk1_in(0),
      GTPOWERGOOD => gtpowergood_out(0),
      GTREFCLK0 => gtrefclk0_in(0),
      GTREFCLK1 => gtrefclk1_in(0),
      GTREFCLKMONITOR => gtrefclkmonitor_out(0),
      GTRESETSEL => gtresetsel_in(0),
      GTRSVD(15 downto 0) => gtrsvd_in(15 downto 0),
      GTRXRESET => gtrxreset_int,
      GTSOUTHREFCLK0 => gtsouthrefclk0_in(0),
      GTSOUTHREFCLK1 => gtsouthrefclk1_in(0),
      GTTXRESET => gttxreset_int,
      LOOPBACK(2 downto 0) => loopback_in(2 downto 0),
      LPBKRXTXSEREN => lpbkrxtxseren_in(0),
      LPBKTXRXSEREN => lpbktxrxseren_in(0),
      PCIEEQRXEQADAPTDONE => pcieeqrxeqadaptdone_in(0),
      PCIERATEGEN3 => pcierategen3_out(0),
      PCIERATEIDLE => pcierateidle_out(0),
      PCIERATEQPLLPD(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      PCIERATEQPLLRESET(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      PCIERSTIDLE => pcierstidle_in(0),
      PCIERSTTXSYNCSTART => pciersttxsyncstart_in(0),
      PCIESYNCTXSYNCDONE => pciesynctxsyncdone_out(0),
      PCIEUSERGEN3RDY => pcieusergen3rdy_out(0),
      PCIEUSERPHYSTATUSRST => pcieuserphystatusrst_out(0),
      PCIEUSERRATEDONE => pcieuserratedone_in(0),
      PCIEUSERRATESTART => pcieuserratestart_out(0),
      PCSRSVDIN(15 downto 0) => pcsrsvdin_in(15 downto 0),
      PCSRSVDIN2(4 downto 0) => pcsrsvdin2_in(4 downto 0),
      PCSRSVDOUT(11 downto 0) => pcsrsvdout_out(11 downto 0),
      PHYSTATUS => phystatus_out(0),
      PINRSRVDAS(7 downto 0) => pinrsrvdas_out(7 downto 0),
      PMARSVDIN(4 downto 0) => pmarsvdin_in(4 downto 0),
      QPLL0CLK => qpll0clk_in(0),
      QPLL0REFCLK => qpll0refclk_in(0),
      QPLL1CLK => qpll1clk_in(0),
      QPLL1REFCLK => qpll1refclk_in(0),
      RESETEXCEPTION => resetexception_out(0),
      RESETOVRD => resetovrd_in(0),
      RSTCLKENTX => rstclkentx_in(0),
      RX8B10BEN => rx8b10ben_in(0),
      RXBUFRESET => rxbufreset_in(0),
      RXBUFSTATUS(2 downto 0) => rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => rxbyteisaligned_out(0),
      RXBYTEREALIGN => rxbyterealign_out(0),
      RXCDRFREQRESET => rxcdrfreqreset_in(0),
      RXCDRHOLD => rxcdrhold_in(0),
      RXCDRLOCK => rxcdrlock_out(0),
      RXCDROVRDEN => rxcdrovrden_in(0),
      RXCDRPHDONE => rxcdrphdone_out(0),
      RXCDRRESET => rxcdrreset_in(0),
      RXCDRRESETRSV => rxcdrresetrsv_in(0),
      RXCHANBONDSEQ => rxchanbondseq_out(0),
      RXCHANISALIGNED => rxchanisaligned_out(0),
      RXCHANREALIGN => rxchanrealign_out(0),
      RXCHBONDEN => rxchbonden_in(0),
      RXCHBONDI(4 downto 0) => rxchbondi_in(4 downto 0),
      RXCHBONDLEVEL(2 downto 0) => rxchbondlevel_in(2 downto 0),
      RXCHBONDMASTER => rxchbondmaster_in(0),
      RXCHBONDO(4 downto 0) => rxchbondo_out(4 downto 0),
      RXCHBONDSLAVE => rxchbondslave_in(0),
      RXCLKCORCNT(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      RXCOMINITDET => rxcominitdet_out(0),
      RXCOMMADET => rxcommadet_out(0),
      RXCOMMADETEN => rxcommadeten_in(0),
      RXCOMSASDET => rxcomsasdet_out(0),
      RXCOMWAKEDET => rxcomwakedet_out(0),
      RXCTRL0(15 downto 0) => rxctrl0_out(15 downto 0),
      RXCTRL1(15 downto 0) => rxctrl1_out(15 downto 0),
      RXCTRL2(7 downto 0) => rxctrl2_out(7 downto 0),
      RXCTRL3(7 downto 0) => rxctrl3_out(7 downto 0),
      RXDATA(127 downto 0) => rxdata_out(127 downto 0),
      RXDATAEXTENDRSVD(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      RXDATAVALID(1 downto 0) => rxdatavalid_out(1 downto 0),
      RXDFEAGCCTRL(1 downto 0) => rxdfeagcctrl_in(1 downto 0),
      RXDFEAGCHOLD => rxdfeagchold_in(0),
      RXDFEAGCOVRDEN => rxdfeagcovrden_in(0),
      RXDFELFHOLD => rxdfelfhold_in(0),
      RXDFELFOVRDEN => rxdfelfovrden_in(0),
      RXDFELPMRESET => rxdfelpmreset_in(0),
      RXDFETAP10HOLD => rxdfetap10hold_in(0),
      RXDFETAP10OVRDEN => rxdfetap10ovrden_in(0),
      RXDFETAP11HOLD => rxdfetap11hold_in(0),
      RXDFETAP11OVRDEN => rxdfetap11ovrden_in(0),
      RXDFETAP12HOLD => rxdfetap12hold_in(0),
      RXDFETAP12OVRDEN => rxdfetap12ovrden_in(0),
      RXDFETAP13HOLD => rxdfetap13hold_in(0),
      RXDFETAP13OVRDEN => rxdfetap13ovrden_in(0),
      RXDFETAP14HOLD => rxdfetap14hold_in(0),
      RXDFETAP14OVRDEN => rxdfetap14ovrden_in(0),
      RXDFETAP15HOLD => rxdfetap15hold_in(0),
      RXDFETAP15OVRDEN => rxdfetap15ovrden_in(0),
      RXDFETAP2HOLD => rxdfetap2hold_in(0),
      RXDFETAP2OVRDEN => rxdfetap2ovrden_in(0),
      RXDFETAP3HOLD => rxdfetap3hold_in(0),
      RXDFETAP3OVRDEN => rxdfetap3ovrden_in(0),
      RXDFETAP4HOLD => rxdfetap4hold_in(0),
      RXDFETAP4OVRDEN => rxdfetap4ovrden_in(0),
      RXDFETAP5HOLD => rxdfetap5hold_in(0),
      RXDFETAP5OVRDEN => rxdfetap5ovrden_in(0),
      RXDFETAP6HOLD => rxdfetap6hold_in(0),
      RXDFETAP6OVRDEN => rxdfetap6ovrden_in(0),
      RXDFETAP7HOLD => rxdfetap7hold_in(0),
      RXDFETAP7OVRDEN => rxdfetap7ovrden_in(0),
      RXDFETAP8HOLD => rxdfetap8hold_in(0),
      RXDFETAP8OVRDEN => rxdfetap8ovrden_in(0),
      RXDFETAP9HOLD => rxdfetap9hold_in(0),
      RXDFETAP9OVRDEN => rxdfetap9ovrden_in(0),
      RXDFEUTHOLD => rxdfeuthold_in(0),
      RXDFEUTOVRDEN => rxdfeutovrden_in(0),
      RXDFEVPHOLD => rxdfevphold_in(0),
      RXDFEVPOVRDEN => rxdfevpovrden_in(0),
      RXDFEVSEN => rxdfevsen_in(0),
      RXDFEXYDEN => rxdfexyden_in(0),
      RXDLYBYPASS => rxdlybypass_in(0),
      RXDLYEN => rxdlyen_in(0),
      RXDLYOVRDEN => rxdlyovrden_in(0),
      RXDLYSRESET => rxdlysreset_in(0),
      RXDLYSRESETDONE => rxdlysresetdone_out(0),
      RXELECIDLE => rxelecidle_out(0),
      RXELECIDLEMODE(1 downto 0) => rxelecidlemode_in(1 downto 0),
      RXGEARBOXSLIP => rxgearboxslip_in(0),
      RXHEADER(5 downto 0) => rxheader_out(5 downto 0),
      RXHEADERVALID(1 downto 0) => rxheadervalid_out(1 downto 0),
      RXLATCLK => rxlatclk_in(0),
      RXLPMEN => rxlpmen_in(0),
      RXLPMGCHOLD => rxlpmgchold_in(0),
      RXLPMGCOVRDEN => rxlpmgcovrden_in(0),
      RXLPMHFHOLD => rxlpmhfhold_in(0),
      RXLPMHFOVRDEN => rxlpmhfovrden_in(0),
      RXLPMLFHOLD => rxlpmlfhold_in(0),
      RXLPMLFKLOVRDEN => rxlpmlfklovrden_in(0),
      RXLPMOSHOLD => rxlpmoshold_in(0),
      RXLPMOSOVRDEN => rxlpmosovrden_in(0),
      RXMCOMMAALIGNEN => rxmcommaalignen_in(0),
      RXMONITOROUT(6 downto 0) => rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => rxmonitorsel_in(1 downto 0),
      RXOOBRESET => rxoobreset_in(0),
      RXOSCALRESET => rxoscalreset_in(0),
      RXOSHOLD => rxoshold_in(0),
      RXOSINTCFG(3 downto 0) => rxosintcfg_in(3 downto 0),
      RXOSINTDONE => rxosintdone_out(0),
      RXOSINTEN => rxosinten_in(0),
      RXOSINTHOLD => rxosinthold_in(0),
      RXOSINTOVRDEN => rxosintovrden_in(0),
      RXOSINTSTARTED => rxosintstarted_out(0),
      RXOSINTSTROBE => rxosintstrobe_in(0),
      RXOSINTSTROBEDONE => rxosintstrobedone_out(0),
      RXOSINTSTROBESTARTED => rxosintstrobestarted_out(0),
      RXOSINTTESTOVRDEN => rxosinttestovrden_in(0),
      RXOSOVRDEN => rxosovrden_in(0),
      RXOUTCLK => rxoutclk_out(0),
      RXOUTCLKFABRIC => rxoutclkfabric_out(0),
      RXOUTCLKPCS => rxoutclkpcs_out(0),
      RXOUTCLKSEL(2 downto 0) => rxoutclksel_in(2 downto 0),
      RXPCOMMAALIGNEN => rxpcommaalignen_in(0),
      RXPCSRESET => rxpcsreset_in(0),
      RXPD(1 downto 0) => rxpd_in(1 downto 0),
      RXPHALIGN => rxphalign_in(0),
      RXPHALIGNDONE => rxphaligndone_out(0),
      RXPHALIGNEN => rxphalignen_in(0),
      RXPHALIGNERR => rxphalignerr_out(0),
      RXPHDLYPD => rxphdlypd_in(0),
      RXPHDLYRESET => rxphdlyreset_in(0),
      RXPHOVRDEN => rxphovrden_in(0),
      RXPLLCLKSEL(1 downto 0) => rxpllclksel_in(1 downto 0),
      RXPMARESET => rxpmareset_in(0),
      RXPMARESETDONE => rxpmaresetdone_out(0),
      RXPOLARITY => rxpolarity_in(0),
      RXPRBSCNTRESET => rxprbscntreset_in(0),
      RXPRBSERR => rxprbserr_out(0),
      RXPRBSLOCKED => rxprbslocked_out(0),
      RXPRBSSEL(3 downto 0) => rxprbssel_in(3 downto 0),
      RXPRGDIVRESETDONE => rxprgdivresetdone_out(0),
      RXPROGDIVRESET => rxprogdivreset_int,
      RXQPIEN => rxqpien_in(0),
      RXQPISENN => rxqpisenn_out(0),
      RXQPISENP => rxqpisenp_out(0),
      RXRATE(2 downto 0) => rxrate_in(2 downto 0),
      RXRATEDONE => rxratedone_out(0),
      RXRATEMODE => rxratemode_in(0),
      RXRECCLKOUT => rxrecclkout_out(0),
      RXRESETDONE => rxresetdone_out(0),
      RXSLIDE => rxslide_in(0),
      RXSLIDERDY => rxsliderdy_out(0),
      RXSLIPDONE => rxslipdone_out(0),
      RXSLIPOUTCLK => rxslipoutclk_in(0),
      RXSLIPOUTCLKRDY => rxslipoutclkrdy_out(0),
      RXSLIPPMA => rxslippma_in(0),
      RXSLIPPMARDY => rxslippmardy_out(0),
      RXSTARTOFSEQ(1 downto 0) => rxstartofseq_out(1 downto 0),
      RXSTATUS(2 downto 0) => rxstatus_out(2 downto 0),
      RXSYNCALLIN => rxsyncallin_in(0),
      RXSYNCDONE => rxsyncdone_out(0),
      RXSYNCIN => rxsyncin_in(0),
      RXSYNCMODE => rxsyncmode_in(0),
      RXSYNCOUT => rxsyncout_out(0),
      RXSYSCLKSEL(1 downto 0) => rxsysclksel_in(1 downto 0),
      RXUSERRDY => rxuserrdy_int,
      RXUSRCLK => rxusrclk_in(0),
      RXUSRCLK2 => rxusrclk2_in(0),
      RXVALID => rxvalid_out(0),
      SIGVALIDCLK => sigvalidclk_in(0),
      TSTIN(19 downto 0) => B"00000000000000000000",
      TX8B10BBYPASS(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      TX8B10BEN => tx8b10ben_in(0),
      TXBUFDIFFCTRL(2 downto 0) => txbufdiffctrl_in(2 downto 0),
      TXBUFSTATUS(1 downto 0) => txbufstatus_out(1 downto 0),
      TXCOMFINISH => txcomfinish_out(0),
      TXCOMINIT => txcominit_in(0),
      TXCOMSAS => txcomsas_in(0),
      TXCOMWAKE => txcomwake_in(0),
      TXCTRL0(15 downto 0) => txctrl0_in(15 downto 0),
      TXCTRL1(15 downto 0) => txctrl1_in(15 downto 0),
      TXCTRL2(7 downto 0) => txctrl2_in(7 downto 0),
      TXDATA(127 downto 0) => txdata_in(127 downto 0),
      TXDATAEXTENDRSVD(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      TXDEEMPH => txdeemph_in(0),
      TXDETECTRX => txdetectrx_in(0),
      TXDIFFCTRL(3 downto 0) => txdiffctrl_in(3 downto 0),
      TXDIFFPD => txdiffpd_in(0),
      TXDLYBYPASS => txdlybypass_in(0),
      TXDLYEN => txdlyen_in(0),
      TXDLYHOLD => txdlyhold_in(0),
      TXDLYOVRDEN => txdlyovrden_in(0),
      TXDLYSRESET => txdlysreset_in(0),
      TXDLYSRESETDONE => txdlysresetdone_out(0),
      TXDLYUPDOWN => txdlyupdown_in(0),
      TXELECIDLE => txelecidle_in(0),
      TXHEADER(5 downto 0) => txheader_in(5 downto 0),
      TXINHIBIT => txinhibit_in(0),
      TXLATCLK => txlatclk_in(0),
      TXMAINCURSOR(6 downto 0) => txmaincursor_in(6 downto 0),
      TXMARGIN(2 downto 0) => txmargin_in(2 downto 0),
      TXOUTCLK => txoutclk_out(0),
      TXOUTCLKFABRIC => txoutclkfabric_out(0),
      TXOUTCLKPCS => txoutclkpcs_out(0),
      TXOUTCLKSEL(2 downto 0) => txoutclksel_in(2 downto 0),
      TXPCSRESET => txpcsreset_in(0),
      TXPD(1 downto 0) => txpd_in(1 downto 0),
      TXPDELECIDLEMODE => txpdelecidlemode_in(0),
      TXPHALIGN => txphalign_in(0),
      TXPHALIGNDONE => txphaligndone_out(0),
      TXPHALIGNEN => txphalignen_in(0),
      TXPHDLYPD => txphdlypd_in(0),
      TXPHDLYRESET => txphdlyreset_in(0),
      TXPHDLYTSTCLK => txphdlytstclk_in(0),
      TXPHINIT => txphinit_in(0),
      TXPHINITDONE => txphinitdone_out(0),
      TXPHOVRDEN => txphovrden_in(0),
      TXPIPPMEN => txpippmen_in(0),
      TXPIPPMOVRDEN => txpippmovrden_in(0),
      TXPIPPMPD => txpippmpd_in(0),
      TXPIPPMSEL => txpippmsel_in(0),
      TXPIPPMSTEPSIZE(4 downto 0) => txpippmstepsize_in(4 downto 0),
      TXPISOPD => txpisopd_in(0),
      TXPLLCLKSEL(1 downto 0) => txpllclksel_in(1 downto 0),
      TXPMARESET => txpmareset_in(0),
      TXPMARESETDONE => txpmaresetdone_out(0),
      TXPOLARITY => txpolarity_in(0),
      TXPOSTCURSOR(4 downto 0) => txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => txpostcursorinv_in(0),
      TXPRBSFORCEERR => txprbsforceerr_in(0),
      TXPRBSSEL(3 downto 0) => txprbssel_in(3 downto 0),
      TXPRECURSOR(4 downto 0) => txprecursor_in(4 downto 0),
      TXPRECURSORINV => txprecursorinv_in(0),
      TXPRGDIVRESETDONE => txprgdivresetdone_out(0),
      TXPROGDIVRESET => txprogdivreset_int,
      TXQPIBIASEN => txqpibiasen_in(0),
      TXQPISENN => txqpisenn_out(0),
      TXQPISENP => txqpisenp_out(0),
      TXQPISTRONGPDOWN => txqpistrongpdown_in(0),
      TXQPIWEAKPUP => txqpiweakpup_in(0),
      TXRATE(2 downto 0) => txrate_in(2 downto 0),
      TXRATEDONE => txratedone_out(0),
      TXRATEMODE => txratemode_in(0),
      TXRESETDONE => txresetdone_out(0),
      TXSEQUENCE(6 downto 0) => txsequence_in(6 downto 0),
      TXSWING => txswing_in(0),
      TXSYNCALLIN => txsyncallin_in(0),
      TXSYNCDONE => txsyncdone_out(0),
      TXSYNCIN => txsyncin_in(0),
      TXSYNCMODE => txsyncmode_in(0),
      TXSYNCOUT => txsyncout_out(0),
      TXSYSCLKSEL(1 downto 0) => txsysclksel_in(1 downto 0),
      TXUSERRDY => txuserrdy_int,
      TXUSRCLK => txusrclk_in(0),
      TXUSRCLK2 => txusrclk2_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer is
  port (
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_int_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal \rst_in_out_i_1__0_n_0\ : STD_LOGIC;
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => '1',
      Q => rst_in_meta
    );
\rst_in_out_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gtwiz_reset_rx_done_int_reg,
      O => \rst_in_out_i_1__0_n_0\
    );
rst_in_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync3,
      Q => gtwiz_reset_rx_done_out(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_meta,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer_17 is
  port (
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer_17 : entity is "gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer_17;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer_17 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_out_i_1_n_0 : STD_LOGIC;
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => '1',
      Q => rst_in_meta
    );
rst_in_out_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gtwiz_reset_tx_done_int_reg,
      O => rst_in_out_i_1_n_0
    );
rst_in_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync3,
      Q => gtwiz_reset_tx_done_out(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_meta,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_all_in(0),
      Q => SR(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_11 is
  port (
    gtwiz_reset_rx_any_sync : out STD_LOGIC;
    pllreset_rx_out_reg : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gtwiz_reset_pllreset_rx_int : in STD_LOGIC;
    gtwiz_reset_rx_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_11 : entity is "gtwizard_ultrascale_v1_6_5_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_11 is
  signal gtwiz_reset_rx_any : STD_LOGIC;
  signal \^gtwiz_reset_rx_any_sync\ : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_rx_any_sync <= \^gtwiz_reset_rx_any_sync\;
pllreset_rx_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \^gtwiz_reset_rx_any_sync\,
      I4 => gtwiz_reset_pllreset_rx_int,
      O => pllreset_rx_out_reg
    );
\rst_in_meta_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gtwiz_reset_rx_datapath_int_reg,
      I1 => gtwiz_reset_rx_datapath_in(0),
      I2 => gtwiz_reset_rx_pll_and_datapath_in(0),
      I3 => gtwiz_reset_rx_pll_and_datapath_int_reg,
      O => gtwiz_reset_rx_any
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_rx_any,
      Q => \^gtwiz_reset_rx_any_sync\
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_12 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_12 : entity is "gtwizard_ultrascale_v1_6_5_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_12 is
  signal rst_in0_2 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_rx_datapath_in(0),
      I1 => gtwiz_reset_rx_datapath_int_reg,
      O => rst_in0_2
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => rst_in0_2,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => rst_in0_2,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => rst_in0_2,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => rst_in0_2,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => rst_in0_2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_13 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_13 : entity is "gtwizard_ultrascale_v1_6_5_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_13 is
  signal p_0_in_1 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_rx_pll_and_datapath_int_reg,
      I1 => gtwiz_reset_rx_pll_and_datapath_in(0),
      O => p_0_in_1
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => p_0_in_1,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => p_0_in_1,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => p_0_in_1,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => p_0_in_1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => p_0_in_1,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_14 is
  port (
    gtwiz_reset_tx_any_sync : out STD_LOGIC;
    pllreset_tx_out_reg : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gtwiz_reset_pllreset_tx_int : in STD_LOGIC;
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_14 : entity is "gtwizard_ultrascale_v1_6_5_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_14 is
  signal gtwiz_reset_tx_any : STD_LOGIC;
  signal \^gtwiz_reset_tx_any_sync\ : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_tx_any_sync <= \^gtwiz_reset_tx_any_sync\;
pllreset_tx_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \^gtwiz_reset_tx_any_sync\,
      I4 => gtwiz_reset_pllreset_tx_int,
      O => pllreset_tx_out_reg
    );
rst_in_meta_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gtwiz_reset_tx_datapath_in(0),
      I1 => gtwiz_reset_tx_pll_and_datapath_in(0),
      I2 => gtwiz_reset_tx_pll_and_datapath_int_reg,
      O => gtwiz_reset_tx_any
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_tx_any,
      Q => \^gtwiz_reset_tx_any_sync\
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_15 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_15 : entity is "gtwizard_ultrascale_v1_6_5_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_15 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_16 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_16 : entity is "gtwizard_ultrascale_v1_6_5_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_16 is
  signal p_1_in_0 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_tx_pll_and_datapath_int_reg,
      I1 => gtwiz_reset_tx_pll_and_datapath_in(0),
      O => p_1_in_0
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => p_1_in_0,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => p_1_in_0,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => p_1_in_0,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => p_1_in_0,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => p_1_in_0,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_18 is
  port (
    txprogdivreset_int : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_18 : entity is "gtwizard_ultrascale_v1_6_5_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_18 is
  signal rst_in0 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gtwiz_reset_qpll0lock_in(0),
      O => rst_in0
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => rst_in0,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => rst_in0,
      Q => txprogdivreset_int
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => rst_in0,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => rst_in0,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => rst_in0,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gthe3_channel_wrapper is
  port (
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicaldone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_int : in STD_LOGIC;
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxreset_int : in STD_LOGIC;
    lpbkrxtxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbktxrxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rstclkentx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrresetrsv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevsen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinttestovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprogdivreset_int : in STD_LOGIC;
    rxqpien_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_int : in STD_LOGIC;
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdiffpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprecursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_int : in STD_LOGIC;
    txqpibiasen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpistrongpdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpiweakpup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txuserrdy_int : in STD_LOGIC;
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdfeagcctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txbufdiffctrl_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxosintcfg_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcsrsvdin2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvdin_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gthe3_channel_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gthe3_channel_wrapper is
begin
channel_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gthe3_channel
     port map (
      bufgtce_out(2 downto 0) => bufgtce_out(2 downto 0),
      bufgtcemask_out(2 downto 0) => bufgtcemask_out(2 downto 0),
      bufgtdiv_out(8 downto 0) => bufgtdiv_out(8 downto 0),
      bufgtreset_out(2 downto 0) => bufgtreset_out(2 downto 0),
      bufgtrstmask_out(2 downto 0) => bufgtrstmask_out(2 downto 0),
      cfgreset_in(0) => cfgreset_in(0),
      clkrsvd0_in(0) => clkrsvd0_in(0),
      clkrsvd1_in(0) => clkrsvd1_in(0),
      cpllfbclklost_out(0) => cpllfbclklost_out(0),
      cplllock_out(0) => cplllock_out(0),
      cplllockdetclk_in(0) => cplllockdetclk_in(0),
      cplllocken_in(0) => cplllocken_in(0),
      cpllpd_in(0) => cpllpd_in(0),
      cpllrefclklost_out(0) => cpllrefclklost_out(0),
      cpllrefclksel_in(2 downto 0) => cpllrefclksel_in(2 downto 0),
      cpllreset_in(0) => cpllreset_in(0),
      dmonfiforeset_in(0) => dmonfiforeset_in(0),
      dmonitorclk_in(0) => dmonitorclk_in(0),
      dmonitorout_out(16 downto 0) => dmonitorout_out(16 downto 0),
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drpwe_in(0) => drpwe_in(0),
      evoddphicaldone_in(0) => evoddphicaldone_in(0),
      evoddphicalstart_in(0) => evoddphicalstart_in(0),
      evoddphidrden_in(0) => evoddphidrden_in(0),
      evoddphidwren_in(0) => evoddphidwren_in(0),
      evoddphixrden_in(0) => evoddphixrden_in(0),
      evoddphixwren_in(0) => evoddphixwren_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanmode_in(0) => eyescanmode_in(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => eyescantrigger_in(0),
      gtgrefclk_in(0) => gtgrefclk_in(0),
      gthrxn_in(0) => gthrxn_in(0),
      gthrxp_in(0) => gthrxp_in(0),
      gthtxn_out(0) => gthtxn_out(0),
      gthtxp_out(0) => gthtxp_out(0),
      gtnorthrefclk0_in(0) => gtnorthrefclk0_in(0),
      gtnorthrefclk1_in(0) => gtnorthrefclk1_in(0),
      gtpowergood_out(0) => gtpowergood_out(0),
      gtrefclk0_in(0) => gtrefclk0_in(0),
      gtrefclk1_in(0) => gtrefclk1_in(0),
      gtrefclkmonitor_out(0) => gtrefclkmonitor_out(0),
      gtresetsel_in(0) => gtresetsel_in(0),
      gtrsvd_in(15 downto 0) => gtrsvd_in(15 downto 0),
      gtrxreset_int => gtrxreset_int,
      gtsouthrefclk0_in(0) => gtsouthrefclk0_in(0),
      gtsouthrefclk1_in(0) => gtsouthrefclk1_in(0),
      gttxreset_int => gttxreset_int,
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      lpbkrxtxseren_in(0) => lpbkrxtxseren_in(0),
      lpbktxrxseren_in(0) => lpbktxrxseren_in(0),
      pcieeqrxeqadaptdone_in(0) => pcieeqrxeqadaptdone_in(0),
      pcierategen3_out(0) => pcierategen3_out(0),
      pcierateidle_out(0) => pcierateidle_out(0),
      pcierateqpllpd_out(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      pcierstidle_in(0) => pcierstidle_in(0),
      pciersttxsyncstart_in(0) => pciersttxsyncstart_in(0),
      pciesynctxsyncdone_out(0) => pciesynctxsyncdone_out(0),
      pcieusergen3rdy_out(0) => pcieusergen3rdy_out(0),
      pcieuserphystatusrst_out(0) => pcieuserphystatusrst_out(0),
      pcieuserratedone_in(0) => pcieuserratedone_in(0),
      pcieuserratestart_out(0) => pcieuserratestart_out(0),
      pcsrsvdin2_in(4 downto 0) => pcsrsvdin2_in(4 downto 0),
      pcsrsvdin_in(15 downto 0) => pcsrsvdin_in(15 downto 0),
      pcsrsvdout_out(11 downto 0) => pcsrsvdout_out(11 downto 0),
      phystatus_out(0) => phystatus_out(0),
      pinrsrvdas_out(7 downto 0) => pinrsrvdas_out(7 downto 0),
      pmarsvdin_in(4 downto 0) => pmarsvdin_in(4 downto 0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1refclk_in(0) => qpll1refclk_in(0),
      resetexception_out(0) => resetexception_out(0),
      resetovrd_in(0) => resetovrd_in(0),
      rstclkentx_in(0) => rstclkentx_in(0),
      rx8b10ben_in(0) => rx8b10ben_in(0),
      rxbufreset_in(0) => rxbufreset_in(0),
      rxbufstatus_out(2 downto 0) => rxbufstatus_out(2 downto 0),
      rxbyteisaligned_out(0) => rxbyteisaligned_out(0),
      rxbyterealign_out(0) => rxbyterealign_out(0),
      rxcdrfreqreset_in(0) => rxcdrfreqreset_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxcdrovrden_in(0) => rxcdrovrden_in(0),
      rxcdrphdone_out(0) => rxcdrphdone_out(0),
      rxcdrreset_in(0) => rxcdrreset_in(0),
      rxcdrresetrsv_in(0) => rxcdrresetrsv_in(0),
      rxchanbondseq_out(0) => rxchanbondseq_out(0),
      rxchanisaligned_out(0) => rxchanisaligned_out(0),
      rxchanrealign_out(0) => rxchanrealign_out(0),
      rxchbonden_in(0) => rxchbonden_in(0),
      rxchbondi_in(4 downto 0) => rxchbondi_in(4 downto 0),
      rxchbondlevel_in(2 downto 0) => rxchbondlevel_in(2 downto 0),
      rxchbondmaster_in(0) => rxchbondmaster_in(0),
      rxchbondo_out(4 downto 0) => rxchbondo_out(4 downto 0),
      rxchbondslave_in(0) => rxchbondslave_in(0),
      rxclkcorcnt_out(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      rxcominitdet_out(0) => rxcominitdet_out(0),
      rxcommadet_out(0) => rxcommadet_out(0),
      rxcommadeten_in(0) => rxcommadeten_in(0),
      rxcomsasdet_out(0) => rxcomsasdet_out(0),
      rxcomwakedet_out(0) => rxcomwakedet_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxctrl2_out(7 downto 0) => rxctrl2_out(7 downto 0),
      rxctrl3_out(7 downto 0) => rxctrl3_out(7 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      rxdatavalid_out(1 downto 0) => rxdatavalid_out(1 downto 0),
      rxdfeagcctrl_in(1 downto 0) => rxdfeagcctrl_in(1 downto 0),
      rxdfeagchold_in(0) => rxdfeagchold_in(0),
      rxdfeagcovrden_in(0) => rxdfeagcovrden_in(0),
      rxdfelfhold_in(0) => rxdfelfhold_in(0),
      rxdfelfovrden_in(0) => rxdfelfovrden_in(0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => rxdfetap10hold_in(0),
      rxdfetap10ovrden_in(0) => rxdfetap10ovrden_in(0),
      rxdfetap11hold_in(0) => rxdfetap11hold_in(0),
      rxdfetap11ovrden_in(0) => rxdfetap11ovrden_in(0),
      rxdfetap12hold_in(0) => rxdfetap12hold_in(0),
      rxdfetap12ovrden_in(0) => rxdfetap12ovrden_in(0),
      rxdfetap13hold_in(0) => rxdfetap13hold_in(0),
      rxdfetap13ovrden_in(0) => rxdfetap13ovrden_in(0),
      rxdfetap14hold_in(0) => rxdfetap14hold_in(0),
      rxdfetap14ovrden_in(0) => rxdfetap14ovrden_in(0),
      rxdfetap15hold_in(0) => rxdfetap15hold_in(0),
      rxdfetap15ovrden_in(0) => rxdfetap15ovrden_in(0),
      rxdfetap2hold_in(0) => rxdfetap2hold_in(0),
      rxdfetap2ovrden_in(0) => rxdfetap2ovrden_in(0),
      rxdfetap3hold_in(0) => rxdfetap3hold_in(0),
      rxdfetap3ovrden_in(0) => rxdfetap3ovrden_in(0),
      rxdfetap4hold_in(0) => rxdfetap4hold_in(0),
      rxdfetap4ovrden_in(0) => rxdfetap4ovrden_in(0),
      rxdfetap5hold_in(0) => rxdfetap5hold_in(0),
      rxdfetap5ovrden_in(0) => rxdfetap5ovrden_in(0),
      rxdfetap6hold_in(0) => rxdfetap6hold_in(0),
      rxdfetap6ovrden_in(0) => rxdfetap6ovrden_in(0),
      rxdfetap7hold_in(0) => rxdfetap7hold_in(0),
      rxdfetap7ovrden_in(0) => rxdfetap7ovrden_in(0),
      rxdfetap8hold_in(0) => rxdfetap8hold_in(0),
      rxdfetap8ovrden_in(0) => rxdfetap8ovrden_in(0),
      rxdfetap9hold_in(0) => rxdfetap9hold_in(0),
      rxdfetap9ovrden_in(0) => rxdfetap9ovrden_in(0),
      rxdfeuthold_in(0) => rxdfeuthold_in(0),
      rxdfeutovrden_in(0) => rxdfeutovrden_in(0),
      rxdfevphold_in(0) => rxdfevphold_in(0),
      rxdfevpovrden_in(0) => rxdfevpovrden_in(0),
      rxdfevsen_in(0) => rxdfevsen_in(0),
      rxdfexyden_in(0) => rxdfexyden_in(0),
      rxdlybypass_in(0) => rxdlybypass_in(0),
      rxdlyen_in(0) => rxdlyen_in(0),
      rxdlyovrden_in(0) => rxdlyovrden_in(0),
      rxdlysreset_in(0) => rxdlysreset_in(0),
      rxdlysresetdone_out(0) => rxdlysresetdone_out(0),
      rxelecidle_out(0) => rxelecidle_out(0),
      rxelecidlemode_in(1 downto 0) => rxelecidlemode_in(1 downto 0),
      rxgearboxslip_in(0) => rxgearboxslip_in(0),
      rxheader_out(5 downto 0) => rxheader_out(5 downto 0),
      rxheadervalid_out(1 downto 0) => rxheadervalid_out(1 downto 0),
      rxlatclk_in(0) => rxlatclk_in(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => rxlpmgchold_in(0),
      rxlpmgcovrden_in(0) => rxlpmgcovrden_in(0),
      rxlpmhfhold_in(0) => rxlpmhfhold_in(0),
      rxlpmhfovrden_in(0) => rxlpmhfovrden_in(0),
      rxlpmlfhold_in(0) => rxlpmlfhold_in(0),
      rxlpmlfklovrden_in(0) => rxlpmlfklovrden_in(0),
      rxlpmoshold_in(0) => rxlpmoshold_in(0),
      rxlpmosovrden_in(0) => rxlpmosovrden_in(0),
      rxmcommaalignen_in(0) => rxmcommaalignen_in(0),
      rxmonitorout_out(6 downto 0) => rxmonitorout_out(6 downto 0),
      rxmonitorsel_in(1 downto 0) => rxmonitorsel_in(1 downto 0),
      rxoobreset_in(0) => rxoobreset_in(0),
      rxoscalreset_in(0) => rxoscalreset_in(0),
      rxoshold_in(0) => rxoshold_in(0),
      rxosintcfg_in(3 downto 0) => rxosintcfg_in(3 downto 0),
      rxosintdone_out(0) => rxosintdone_out(0),
      rxosinten_in(0) => rxosinten_in(0),
      rxosinthold_in(0) => rxosinthold_in(0),
      rxosintovrden_in(0) => rxosintovrden_in(0),
      rxosintstarted_out(0) => rxosintstarted_out(0),
      rxosintstrobe_in(0) => rxosintstrobe_in(0),
      rxosintstrobedone_out(0) => rxosintstrobedone_out(0),
      rxosintstrobestarted_out(0) => rxosintstrobestarted_out(0),
      rxosinttestovrden_in(0) => rxosinttestovrden_in(0),
      rxosovrden_in(0) => rxosovrden_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => rxoutclkfabric_out(0),
      rxoutclkpcs_out(0) => rxoutclkpcs_out(0),
      rxoutclksel_in(2 downto 0) => rxoutclksel_in(2 downto 0),
      rxpcommaalignen_in(0) => rxpcommaalignen_in(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => rxphalign_in(0),
      rxphaligndone_out(0) => rxphaligndone_out(0),
      rxphalignen_in(0) => rxphalignen_in(0),
      rxphalignerr_out(0) => rxphalignerr_out(0),
      rxphdlypd_in(0) => rxphdlypd_in(0),
      rxphdlyreset_in(0) => rxphdlyreset_in(0),
      rxphovrden_in(0) => rxphovrden_in(0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxprogdivreset_int => rxprogdivreset_int,
      rxqpien_in(0) => rxqpien_in(0),
      rxqpisenn_out(0) => rxqpisenn_out(0),
      rxqpisenp_out(0) => rxqpisenp_out(0),
      rxrate_in(2 downto 0) => rxrate_in(2 downto 0),
      rxratedone_out(0) => rxratedone_out(0),
      rxratemode_in(0) => rxratemode_in(0),
      rxrecclkout_out(0) => rxrecclkout_out(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxslide_in(0) => rxslide_in(0),
      rxsliderdy_out(0) => rxsliderdy_out(0),
      rxslipdone_out(0) => rxslipdone_out(0),
      rxslipoutclk_in(0) => rxslipoutclk_in(0),
      rxslipoutclkrdy_out(0) => rxslipoutclkrdy_out(0),
      rxslippma_in(0) => rxslippma_in(0),
      rxslippmardy_out(0) => rxslippmardy_out(0),
      rxstartofseq_out(1 downto 0) => rxstartofseq_out(1 downto 0),
      rxstatus_out(2 downto 0) => rxstatus_out(2 downto 0),
      rxsyncallin_in(0) => rxsyncallin_in(0),
      rxsyncdone_out(0) => rxsyncdone_out(0),
      rxsyncin_in(0) => rxsyncin_in(0),
      rxsyncmode_in(0) => rxsyncmode_in(0),
      rxsyncout_out(0) => rxsyncout_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxuserrdy_int => rxuserrdy_int,
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => rxvalid_out(0),
      sigvalidclk_in(0) => sigvalidclk_in(0),
      tx8b10bbypass_in(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      tx8b10ben_in(0) => tx8b10ben_in(0),
      txbufdiffctrl_in(2 downto 0) => txbufdiffctrl_in(2 downto 0),
      txbufstatus_out(1 downto 0) => txbufstatus_out(1 downto 0),
      txcomfinish_out(0) => txcomfinish_out(0),
      txcominit_in(0) => txcominit_in(0),
      txcomsas_in(0) => txcomsas_in(0),
      txcomwake_in(0) => txcomwake_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txctrl2_in(7 downto 0) => txctrl2_in(7 downto 0),
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdataextendrsvd_in(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      txdeemph_in(0) => txdeemph_in(0),
      txdetectrx_in(0) => txdetectrx_in(0),
      txdiffctrl_in(3 downto 0) => txdiffctrl_in(3 downto 0),
      txdiffpd_in(0) => txdiffpd_in(0),
      txdlybypass_in(0) => txdlybypass_in(0),
      txdlyen_in(0) => txdlyen_in(0),
      txdlyhold_in(0) => txdlyhold_in(0),
      txdlyovrden_in(0) => txdlyovrden_in(0),
      txdlysreset_in(0) => txdlysreset_in(0),
      txdlysresetdone_out(0) => txdlysresetdone_out(0),
      txdlyupdown_in(0) => txdlyupdown_in(0),
      txelecidle_in(0) => txelecidle_in(0),
      txheader_in(5 downto 0) => txheader_in(5 downto 0),
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => txlatclk_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txmargin_in(2 downto 0) => txmargin_in(2 downto 0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => txoutclkfabric_out(0),
      txoutclkpcs_out(0) => txoutclkpcs_out(0),
      txoutclksel_in(2 downto 0) => txoutclksel_in(2 downto 0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => txphalign_in(0),
      txphaligndone_out(0) => txphaligndone_out(0),
      txphalignen_in(0) => txphalignen_in(0),
      txphdlypd_in(0) => txphdlypd_in(0),
      txphdlyreset_in(0) => txphdlyreset_in(0),
      txphdlytstclk_in(0) => txphdlytstclk_in(0),
      txphinit_in(0) => txphinit_in(0),
      txphinitdone_out(0) => txphinitdone_out(0),
      txphovrden_in(0) => txphovrden_in(0),
      txpippmen_in(0) => txpippmen_in(0),
      txpippmovrden_in(0) => txpippmovrden_in(0),
      txpippmpd_in(0) => txpippmpd_in(0),
      txpippmsel_in(0) => txpippmsel_in(0),
      txpippmstepsize_in(4 downto 0) => txpippmstepsize_in(4 downto 0),
      txpisopd_in(0) => txpisopd_in(0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmareset_in(0) => txpmareset_in(0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txpostcursorinv_in(0) => txpostcursorinv_in(0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprecursorinv_in(0) => txprecursorinv_in(0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_int => txprogdivreset_int,
      txqpibiasen_in(0) => txqpibiasen_in(0),
      txqpisenn_out(0) => txqpisenn_out(0),
      txqpisenp_out(0) => txqpisenp_out(0),
      txqpistrongpdown_in(0) => txqpistrongpdown_in(0),
      txqpiweakpup_in(0) => txqpiweakpup_in(0),
      txrate_in(2 downto 0) => txrate_in(2 downto 0),
      txratedone_out(0) => txratedone_out(0),
      txratemode_in(0) => txratemode_in(0),
      txresetdone_out(0) => txresetdone_out(0),
      txsequence_in(6 downto 0) => txsequence_in(6 downto 0),
      txswing_in(0) => txswing_in(0),
      txsyncallin_in(0) => txsyncallin_in(0),
      txsyncdone_out(0) => txsyncdone_out(0),
      txsyncin_in(0) => txsyncin_in(0),
      txsyncmode_in(0) => txsyncmode_in(0),
      txsyncout_out(0) => txsyncout_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txuserrdy_int => txuserrdy_int,
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gtwiz_reset is
  port (
    txprogdivreset_int : out STD_LOGIC;
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gttxreset_int : out STD_LOGIC;
    txuserrdy_int : out STD_LOGIC;
    rxprogdivreset_int : out STD_LOGIC;
    gtrxreset_int : out STD_LOGIC;
    rxuserrdy_int : out STD_LOGIC;
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_sync : in STD_LOGIC;
    txresetdone_sync : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gtwiz_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gtwiz_reset is
  signal \FSM_sequential_sm_reset_all[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_6_n_0\ : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_3 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_4 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_3 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_3 : STD_LOGIC;
  signal gtpowergood_sync : STD_LOGIC;
  signal \^gtrxreset_int\ : STD_LOGIC;
  signal \^gttxreset_int\ : STD_LOGIC;
  signal gtwiz_reset_all_sync : STD_LOGIC;
  signal gtwiz_reset_pllreset_rx_int : STD_LOGIC;
  signal gtwiz_reset_pllreset_tx_int : STD_LOGIC;
  signal gtwiz_reset_rx_any_sync : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_rx_done_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_tx_any_sync : STD_LOGIC;
  signal gtwiz_reset_tx_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_tx_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_tx_done_int0 : STD_LOGIC;
  signal gtwiz_reset_tx_done_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_userclk_tx_active_sync : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in11_out : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset_synchronizer_gtwiz_reset_rx_any_inst_n_1 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_tx_any_inst_n_1 : STD_LOGIC;
  signal \^rxprogdivreset_int\ : STD_LOGIC;
  signal \^rxuserrdy_int\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sm_reset_all : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sm_reset_all : signal is "yes";
  signal sm_reset_all_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_clr_i_2_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sm_reset_all_timer_ctr0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal sm_reset_all_timer_sat : STD_LOGIC;
  signal sm_reset_all_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of sm_reset_rx : signal is "yes";
  signal sm_reset_rx_cdr_to_clr : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_10_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_11_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_12_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_13_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_14_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_15_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_16_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_8_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_9_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_2_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_5_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_6_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_7_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_8_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[16]_i_9_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[24]_i_2_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[24]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_2_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_5_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_6_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_7_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_8_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[8]_i_9_n_0\ : STD_LOGIC;
  signal sm_reset_rx_cdr_to_ctr_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_clr_reg_n_0 : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sm_reset_rx_pll_timer_sat : STD_LOGIC;
  signal sm_reset_rx_pll_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_clr0 : STD_LOGIC;
  signal sm_reset_rx_timer_clr09_out : STD_LOGIC;
  signal sm_reset_rx_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal sm_reset_rx_timer_sat : STD_LOGIC;
  signal sm_reset_rx_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of sm_reset_tx : signal is "yes";
  signal sm_reset_tx_pll_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx_pll_timer_clr_reg_n_0 : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sm_reset_tx_pll_timer_sat : STD_LOGIC;
  signal sm_reset_tx_pll_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_tx_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sm_reset_tx_timer_sat : STD_LOGIC;
  signal sm_reset_tx_timer_sat_i_1_n_0 : STD_LOGIC;
  signal \^txuserrdy_int\ : STD_LOGIC;
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_sm_reset_all_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sm_reset_all_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sm_reset_all_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sm_reset_rx_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sm_reset_rx_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sm_reset_rx_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[2]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[2]_i_6\ : label is "soft_lutpair11";
  attribute KEEP of \FSM_sequential_sm_reset_tx_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sm_reset_tx_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sm_reset_tx_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \sm_reset_all_timer_ctr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sm_reset_all_timer_ctr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[9]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sm_reset_rx_timer_ctr[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sm_reset_rx_timer_ctr[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[9]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sm_reset_tx_pll_timer_sat_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sm_reset_tx_timer_ctr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sm_reset_tx_timer_ctr[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of sm_reset_tx_timer_sat_i_1 : label is "soft_lutpair6";
begin
  gtrxreset_int <= \^gtrxreset_int\;
  gttxreset_int <= \^gttxreset_int\;
  rxprogdivreset_int <= \^rxprogdivreset_int\;
  rxuserrdy_int <= \^rxuserrdy_int\;
  txuserrdy_int <= \^txuserrdy_int\;
\FSM_sequential_sm_reset_all[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777DDDD5DDD"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(2),
      I2 => gtwiz_reset_rx_done_int_reg_n_0,
      I3 => sm_reset_all_timer_sat,
      I4 => sm_reset_all_timer_clr_reg_n_0,
      I5 => sm_reset_all(1),
      O => \FSM_sequential_sm_reset_all[0]_i_1_n_0\
    );
\FSM_sequential_sm_reset_all[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(1),
      O => \FSM_sequential_sm_reset_all[1]_i_1_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000AAEA"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => gtwiz_reset_tx_done_int_reg_n_0,
      I2 => sm_reset_all_timer_sat,
      I3 => sm_reset_all_timer_clr_reg_n_0,
      I4 => sm_reset_all(2),
      I5 => \FSM_sequential_sm_reset_all[2]_i_3_n_0\,
      O => \FSM_sequential_sm_reset_all[2]_i_1_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(2),
      I2 => sm_reset_all(1),
      O => \FSM_sequential_sm_reset_all[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B88833333333"
    )
        port map (
      I0 => gtpowergood_sync,
      I1 => sm_reset_all(1),
      I2 => gtwiz_reset_rx_done_int_reg_n_0,
      I3 => sm_reset_all_timer_sat,
      I4 => sm_reset_all_timer_clr_reg_n_0,
      I5 => sm_reset_all(0),
      O => \FSM_sequential_sm_reset_all[2]_i_3_n_0\
    );
\FSM_sequential_sm_reset_all_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \FSM_sequential_sm_reset_all[2]_i_1_n_0\,
      D => \FSM_sequential_sm_reset_all[0]_i_1_n_0\,
      Q => sm_reset_all(0),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_all_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \FSM_sequential_sm_reset_all[2]_i_1_n_0\,
      D => \FSM_sequential_sm_reset_all[1]_i_1_n_0\,
      Q => sm_reset_all(1),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_all_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \FSM_sequential_sm_reset_all[2]_i_1_n_0\,
      D => \FSM_sequential_sm_reset_all[2]_i_2_n_0\,
      Q => sm_reset_all(2),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_rx[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_n_0,
      I1 => sm_reset_rx_timer_sat,
      I2 => rxresetdone_sync,
      O => p_0_in11_out
    );
\FSM_sequential_sm_reset_rx[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCECCCAAAAAAAA"
    )
        port map (
      I0 => sm_reset_rx(2),
      I1 => sm_reset_rx(0),
      I2 => rxresetdone_sync,
      I3 => sm_reset_rx_timer_sat,
      I4 => sm_reset_rx_timer_clr_reg_n_0,
      I5 => sm_reset_rx(1),
      O => \FSM_sequential_sm_reset_rx[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_rxcdrlock_inst_n_3,
      D => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      Q => sm_reset_rx(0),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_rxcdrlock_inst_n_3,
      D => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,
      Q => sm_reset_rx(1),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_rxcdrlock_inst_n_3,
      D => \FSM_sequential_sm_reset_rx[2]_i_2_n_0\,
      Q => sm_reset_rx(2),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_tx[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => sm_reset_tx(0),
      I1 => sm_reset_tx(1),
      I2 => sm_reset_tx(2),
      O => \FSM_sequential_sm_reset_tx[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_tx[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_tx_timer_sat,
      I1 => sm_reset_tx_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_tx[2]_i_5_n_0\
    );
\FSM_sequential_sm_reset_tx[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_tx_pll_timer_sat,
      I1 => sm_reset_tx_pll_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_tx[2]_i_6_n_0\
    );
\FSM_sequential_sm_reset_tx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      D => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2,
      Q => sm_reset_tx(0),
      R => gtwiz_reset_tx_any_sync
    );
\FSM_sequential_sm_reset_tx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      D => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,
      Q => sm_reset_tx(1),
      R => gtwiz_reset_tx_any_sync
    );
\FSM_sequential_sm_reset_tx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      D => \FSM_sequential_sm_reset_tx[2]_i_2_n_0\,
      Q => sm_reset_tx(2),
      R => gtwiz_reset_tx_any_sync
    );
bit_synchronizer_gtpowergood_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_1
     port map (
      gtpowergood_out(0) => gtpowergood_out(0),
      gtpowergood_sync => gtpowergood_sync,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0)
    );
bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_2
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_datapath_dly => gtwiz_reset_rx_datapath_dly,
      in0 => gtwiz_reset_rx_datapath_sync
    );
bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_3
     port map (
      D(1) => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,
      D(0) => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_pll_and_datapath_dly => gtwiz_reset_rx_pll_and_datapath_dly,
      in0 => gtwiz_reset_rx_pll_and_datapath_sync,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      p_0_in11_out => p_0_in11_out
    );
bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_4
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_dly => gtwiz_reset_tx_datapath_dly,
      in0 => gtwiz_reset_tx_datapath_sync
    );
bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_5
     port map (
      D(1) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,
      D(0) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_dly => gtwiz_reset_tx_pll_and_datapath_dly,
      in0 => gtwiz_reset_tx_pll_and_datapath_sync,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0)
    );
bit_synchronizer_gtwiz_reset_userclk_rx_active_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_6
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_userclk_rx_active_in(0) => gtwiz_userclk_rx_active_in(0),
      i_in_out_reg_0 => bit_synchronizer_plllock_rx_inst_n_4,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      rxresetdone_sync => rxresetdone_sync,
      rxuserrdy_int => \^rxuserrdy_int\,
      rxuserrdy_out_reg => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0,
      sm_reset_rx_timer_clr0 => sm_reset_rx_timer_clr0,
      sm_reset_rx_timer_clr_reg => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2,
      sm_reset_rx_timer_clr_reg_0 => sm_reset_rx_timer_clr_reg_n_0,
      sm_reset_rx_timer_sat => sm_reset_rx_timer_sat
    );
bit_synchronizer_gtwiz_reset_userclk_tx_active_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_7
     port map (
      E(0) => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_datapath_dly => gtwiz_reset_tx_datapath_dly,
      gtwiz_reset_tx_pll_and_datapath_dly => gtwiz_reset_tx_pll_and_datapath_dly,
      gtwiz_reset_userclk_tx_active_sync => gtwiz_reset_userclk_tx_active_sync,
      gtwiz_userclk_tx_active_in(0) => gtwiz_userclk_tx_active_in(0),
      i_in_out_reg_0 => bit_synchronizer_plllock_tx_inst_n_3,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0),
      sm_reset_tx_timer_clr_reg => sm_reset_tx_timer_clr_reg_n_0,
      sm_reset_tx_timer_sat => sm_reset_tx_timer_sat,
      sm_reset_tx_timer_sat_reg => \FSM_sequential_sm_reset_tx[2]_i_5_n_0\,
      txuserrdy_int => \^txuserrdy_int\,
      txuserrdy_out_reg => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1
    );
bit_synchronizer_plllock_rx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_8
     port map (
      \FSM_sequential_sm_reset_rx_reg[0]\ => bit_synchronizer_plllock_rx_inst_n_3,
      gtrxreset_int => \^gtrxreset_int\,
      gtrxreset_out_reg => bit_synchronizer_plllock_rx_inst_n_0,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => gtwiz_reset_qpll0lock_in(0),
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_reset_rx_done_int_reg => bit_synchronizer_plllock_rx_inst_n_2,
      gtwiz_reset_rx_done_int_reg_0 => gtwiz_reset_rx_done_int_reg_n_0,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      p_0_in11_out => p_0_in11_out,
      sm_reset_rx_pll_timer_clr_reg => sm_reset_rx_pll_timer_clr_reg_n_0,
      sm_reset_rx_pll_timer_sat => sm_reset_rx_pll_timer_sat,
      sm_reset_rx_timer_clr0 => sm_reset_rx_timer_clr0,
      sm_reset_rx_timer_clr09_out => sm_reset_rx_timer_clr09_out,
      sm_reset_rx_timer_clr_reg => bit_synchronizer_plllock_rx_inst_n_4,
      sm_reset_rx_timer_clr_reg_0 => sm_reset_rx_timer_clr_reg_n_0,
      sm_reset_rx_timer_sat => sm_reset_rx_timer_sat
    );
bit_synchronizer_plllock_tx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_9
     port map (
      \FSM_sequential_sm_reset_tx_reg[0]\ => bit_synchronizer_plllock_tx_inst_n_3,
      gttxreset_int => \^gttxreset_int\,
      gttxreset_out_reg => bit_synchronizer_plllock_tx_inst_n_0,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => gtwiz_reset_qpll0lock_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_done_int0 => gtwiz_reset_tx_done_int0,
      gtwiz_reset_tx_done_int_reg => bit_synchronizer_plllock_tx_inst_n_2,
      gtwiz_reset_tx_done_int_reg_0 => gtwiz_reset_tx_done_int_reg_n_0,
      gtwiz_reset_userclk_tx_active_sync => gtwiz_reset_userclk_tx_active_sync,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0),
      sm_reset_tx_pll_timer_sat_reg => \FSM_sequential_sm_reset_tx[2]_i_6_n_0\,
      sm_reset_tx_timer_clr_reg => bit_synchronizer_plllock_tx_inst_n_1,
      sm_reset_tx_timer_clr_reg_0 => sm_reset_tx_timer_clr_reg_n_0,
      sm_reset_tx_timer_sat => sm_reset_tx_timer_sat,
      sm_reset_tx_timer_sat_reg => \FSM_sequential_sm_reset_tx[2]_i_5_n_0\,
      txresetdone_sync => txresetdone_sync
    );
bit_synchronizer_rxcdrlock_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_10
     port map (
      E(0) => bit_synchronizer_rxcdrlock_inst_n_3,
      \FSM_sequential_sm_reset_rx_reg[1]\ => bit_synchronizer_plllock_rx_inst_n_3,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_dly => gtwiz_reset_rx_datapath_dly,
      gtwiz_reset_rx_pll_and_datapath_dly => gtwiz_reset_rx_pll_and_datapath_dly,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxprogdivreset_int => \^rxprogdivreset_int\,
      rxprogdivreset_out_reg => bit_synchronizer_rxcdrlock_inst_n_2,
      rxresetdone_sync => rxresetdone_sync,
      sm_reset_rx_cdr_to_clr => sm_reset_rx_cdr_to_clr,
      sm_reset_rx_cdr_to_clr_reg => bit_synchronizer_rxcdrlock_inst_n_1,
      sm_reset_rx_cdr_to_sat => sm_reset_rx_cdr_to_sat,
      sm_reset_rx_timer_clr09_out => sm_reset_rx_timer_clr09_out,
      sm_reset_rx_timer_clr_reg => sm_reset_rx_timer_clr_reg_n_0,
      sm_reset_rx_timer_sat => sm_reset_rx_timer_sat
    );
gtrxreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_rx_inst_n_0,
      Q => \^gtrxreset_int\,
      R => '0'
    );
gttxreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_tx_inst_n_0,
      Q => \^gttxreset_int\,
      R => '0'
    );
\gtwiz_reset_qpll0reset_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_pllreset_tx_int,
      I1 => gtwiz_reset_pllreset_rx_int,
      O => gtwiz_reset_qpll0reset_out(0)
    );
gtwiz_reset_rx_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F720"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(2),
      I2 => sm_reset_all(1),
      I3 => gtwiz_reset_rx_datapath_int_reg_n_0,
      O => gtwiz_reset_rx_datapath_int_i_1_n_0
    );
gtwiz_reset_rx_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_rx_datapath_int_i_1_n_0,
      Q => gtwiz_reset_rx_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
gtwiz_reset_rx_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_rx_inst_n_2,
      Q => gtwiz_reset_rx_done_int_reg_n_0,
      R => gtwiz_reset_rx_any_sync
    );
gtwiz_reset_rx_pll_and_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(2),
      I2 => sm_reset_all(1),
      I3 => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      O => gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0
    );
gtwiz_reset_rx_pll_and_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0,
      Q => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
gtwiz_reset_tx_done_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_tx_timer_clr_reg_n_0,
      I1 => sm_reset_tx_timer_sat,
      I2 => txresetdone_sync,
      O => gtwiz_reset_tx_done_int0
    );
gtwiz_reset_tx_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_tx_inst_n_2,
      Q => gtwiz_reset_tx_done_int_reg_n_0,
      R => gtwiz_reset_tx_any_sync
    );
gtwiz_reset_tx_pll_and_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD04"
    )
        port map (
      I0 => sm_reset_all(1),
      I1 => sm_reset_all(0),
      I2 => sm_reset_all(2),
      I3 => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      O => gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0
    );
gtwiz_reset_tx_pll_and_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0,
      Q => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
pllreset_rx_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_rx_any_inst_n_1,
      Q => gtwiz_reset_pllreset_rx_int,
      R => '0'
    );
pllreset_tx_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_tx_any_inst_n_1,
      Q => gtwiz_reset_pllreset_tx_int,
      R => '0'
    );
reset_synchronizer_gtwiz_reset_all_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer
     port map (
      SR(0) => gtwiz_reset_all_sync,
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0)
    );
reset_synchronizer_gtwiz_reset_rx_any_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_11
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_pllreset_rx_int => gtwiz_reset_pllreset_rx_int,
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_datapath_int_reg => gtwiz_reset_rx_datapath_int_reg_n_0,
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_rx_pll_and_datapath_int_reg => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      pllreset_rx_out_reg => reset_synchronizer_gtwiz_reset_rx_any_inst_n_1
    );
reset_synchronizer_gtwiz_reset_rx_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_12
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_datapath_int_reg => gtwiz_reset_rx_datapath_int_reg_n_0,
      in0 => gtwiz_reset_rx_datapath_sync
    );
reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_13
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_rx_pll_and_datapath_int_reg => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      in0 => gtwiz_reset_rx_pll_and_datapath_sync
    );
reset_synchronizer_gtwiz_reset_tx_any_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_14
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_pllreset_tx_int => gtwiz_reset_pllreset_tx_int,
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_int_reg => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0),
      pllreset_tx_out_reg => reset_synchronizer_gtwiz_reset_tx_any_inst_n_1
    );
reset_synchronizer_gtwiz_reset_tx_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_15
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      in0 => gtwiz_reset_tx_datapath_sync
    );
reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_16
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_int_reg => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      in0 => gtwiz_reset_tx_pll_and_datapath_sync
    );
reset_synchronizer_rx_done_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer
     port map (
      gtwiz_reset_rx_done_int_reg => gtwiz_reset_rx_done_int_reg_n_0,
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      rxusrclk2_in(0) => rxusrclk2_in(0)
    );
reset_synchronizer_tx_done_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer_17
     port map (
      gtwiz_reset_tx_done_int_reg => gtwiz_reset_tx_done_int_reg_n_0,
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      txusrclk2_in(0) => txusrclk2_in(0)
    );
reset_synchronizer_txprogdivreset_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_reset_synchronizer_18
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => gtwiz_reset_qpll0lock_in(0),
      txprogdivreset_int => txprogdivreset_int
    );
rxprogdivreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_rxcdrlock_inst_n_2,
      Q => \^rxprogdivreset_int\,
      R => '0'
    );
rxuserrdy_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0,
      Q => \^rxuserrdy_int\,
      R => '0'
    );
sm_reset_all_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFA200A"
    )
        port map (
      I0 => sm_reset_all_timer_clr_i_2_n_0,
      I1 => sm_reset_all(1),
      I2 => sm_reset_all(0),
      I3 => sm_reset_all(2),
      I4 => sm_reset_all_timer_clr_reg_n_0,
      O => sm_reset_all_timer_clr_i_1_n_0
    );
sm_reset_all_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05050505DD0D0505"
    )
        port map (
      I0 => sm_reset_all(1),
      I1 => gtwiz_reset_tx_done_int_reg_n_0,
      I2 => sm_reset_all(2),
      I3 => gtwiz_reset_rx_done_int_reg_n_0,
      I4 => sm_reset_all_timer_sat,
      I5 => sm_reset_all_timer_clr_reg_n_0,
      O => sm_reset_all_timer_clr_i_2_n_0
    );
sm_reset_all_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_all_timer_clr_i_1_n_0,
      Q => sm_reset_all_timer_clr_reg_n_0,
      S => gtwiz_reset_all_sync
    );
\sm_reset_all_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(2),
      I1 => sm_reset_all_timer_ctr(0),
      I2 => sm_reset_all_timer_ctr(1),
      O => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\
    );
\sm_reset_all_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      O => \sm_reset_all_timer_ctr[0]_i_1_n_0\
    );
\sm_reset_all_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      I1 => sm_reset_all_timer_ctr(1),
      O => \sm_reset_all_timer_ctr[1]_i_1_n_0\
    );
\sm_reset_all_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      I1 => sm_reset_all_timer_ctr(1),
      I2 => sm_reset_all_timer_ctr(2),
      O => \sm_reset_all_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_all_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[0]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(0),
      R => sm_reset_all_timer_clr_reg_n_0
    );
\sm_reset_all_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[1]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(1),
      R => sm_reset_all_timer_clr_reg_n_0
    );
\sm_reset_all_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[2]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(2),
      R => sm_reset_all_timer_clr_reg_n_0
    );
sm_reset_all_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(2),
      I1 => sm_reset_all_timer_ctr(0),
      I2 => sm_reset_all_timer_ctr(1),
      I3 => sm_reset_all_timer_sat,
      I4 => sm_reset_all_timer_clr_reg_n_0,
      O => sm_reset_all_timer_sat_i_1_n_0
    );
sm_reset_all_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_all_timer_sat_i_1_n_0,
      Q => sm_reset_all_timer_sat,
      R => '0'
    );
sm_reset_rx_cdr_to_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_rxcdrlock_inst_n_1,
      Q => sm_reset_rx_cdr_to_clr,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_cdr_to_ctr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\,
      I1 => \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\,
      I2 => \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\,
      I3 => \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\,
      I4 => \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\,
      I5 => \sm_reset_rx_cdr_to_ctr[0]_i_8_n_0\,
      O => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(6),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_10_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(5),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_11_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(4),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_12_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(3),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_13_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(2),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_14_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(1),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_15_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(0),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_16_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(7),
      I1 => sm_reset_rx_cdr_to_ctr_reg(2),
      I2 => sm_reset_rx_cdr_to_ctr_reg(11),
      I3 => sm_reset_rx_cdr_to_ctr_reg(8),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(14),
      I1 => sm_reset_rx_cdr_to_ctr_reg(13),
      I2 => sm_reset_rx_cdr_to_ctr_reg(12),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(4),
      I1 => sm_reset_rx_cdr_to_ctr_reg(1),
      I2 => sm_reset_rx_cdr_to_ctr_reg(3),
      I3 => sm_reset_rx_cdr_to_ctr_reg(0),
      I4 => sm_reset_rx_cdr_to_ctr_reg(16),
      I5 => sm_reset_rx_cdr_to_ctr_reg(18),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(10),
      I1 => sm_reset_rx_cdr_to_ctr_reg(9),
      I2 => sm_reset_rx_cdr_to_ctr_reg(6),
      I3 => sm_reset_rx_cdr_to_ctr_reg(5),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(17),
      I1 => sm_reset_rx_cdr_to_ctr_reg(15),
      I2 => sm_reset_rx_cdr_to_ctr_reg(19),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(24),
      I1 => sm_reset_rx_cdr_to_ctr_reg(23),
      I2 => sm_reset_rx_cdr_to_ctr_reg(25),
      I3 => sm_reset_rx_cdr_to_ctr_reg(20),
      I4 => sm_reset_rx_cdr_to_ctr_reg(21),
      I5 => sm_reset_rx_cdr_to_ctr_reg(22),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_8_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(7),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_9_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(23),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_2_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(22),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_3_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(21),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_4_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(20),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_5_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(19),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_6_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(18),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_7_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(17),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_8_n_0\
    );
\sm_reset_rx_cdr_to_ctr[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(16),
      O => \sm_reset_rx_cdr_to_ctr[16]_i_9_n_0\
    );
\sm_reset_rx_cdr_to_ctr[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(25),
      O => \sm_reset_rx_cdr_to_ctr[24]_i_2_n_0\
    );
\sm_reset_rx_cdr_to_ctr[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(24),
      O => \sm_reset_rx_cdr_to_ctr[24]_i_3_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(15),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_2_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(14),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_3_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(13),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_4_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(12),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_5_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(11),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_6_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(10),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_7_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(9),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_8_n_0\
    );
\sm_reset_rx_cdr_to_ctr[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(8),
      O => \sm_reset_rx_cdr_to_ctr[8]_i_9_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(0),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3\,
      CO(3) => \NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\,
      S(7) => \sm_reset_rx_cdr_to_ctr[0]_i_9_n_0\,
      S(6) => \sm_reset_rx_cdr_to_ctr[0]_i_10_n_0\,
      S(5) => \sm_reset_rx_cdr_to_ctr[0]_i_11_n_0\,
      S(4) => \sm_reset_rx_cdr_to_ctr[0]_i_12_n_0\,
      S(3) => \sm_reset_rx_cdr_to_ctr[0]_i_13_n_0\,
      S(2) => \sm_reset_rx_cdr_to_ctr[0]_i_14_n_0\,
      S(1) => \sm_reset_rx_cdr_to_ctr[0]_i_15_n_0\,
      S(0) => \sm_reset_rx_cdr_to_ctr[0]_i_16_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(10),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(11),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(12),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(13),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(14),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(15),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(16),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3\,
      CO(3) => \NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\,
      S(7) => \sm_reset_rx_cdr_to_ctr[16]_i_2_n_0\,
      S(6) => \sm_reset_rx_cdr_to_ctr[16]_i_3_n_0\,
      S(5) => \sm_reset_rx_cdr_to_ctr[16]_i_4_n_0\,
      S(4) => \sm_reset_rx_cdr_to_ctr[16]_i_5_n_0\,
      S(3) => \sm_reset_rx_cdr_to_ctr[16]_i_6_n_0\,
      S(2) => \sm_reset_rx_cdr_to_ctr[16]_i_7_n_0\,
      S(1) => \sm_reset_rx_cdr_to_ctr[16]_i_8_n_0\,
      S(0) => \sm_reset_rx_cdr_to_ctr[16]_i_9_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(17),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(18),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(19),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(1),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(20),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(21),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(22),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(23),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(24),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7\,
      DI(7 downto 2) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_DI_UNCONNECTED\(7 downto 2),
      DI(1 downto 0) => B"00",
      O(7 downto 2) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\,
      S(7 downto 2) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_S_UNCONNECTED\(7 downto 2),
      S(1) => \sm_reset_rx_cdr_to_ctr[24]_i_2_n_0\,
      S(0) => \sm_reset_rx_cdr_to_ctr[24]_i_3_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(25),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(2),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(3),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(4),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(5),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(6),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(7),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(8),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3\,
      CO(3) => \NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\,
      S(7) => \sm_reset_rx_cdr_to_ctr[8]_i_2_n_0\,
      S(6) => \sm_reset_rx_cdr_to_ctr[8]_i_3_n_0\,
      S(5) => \sm_reset_rx_cdr_to_ctr[8]_i_4_n_0\,
      S(4) => \sm_reset_rx_cdr_to_ctr[8]_i_5_n_0\,
      S(3) => \sm_reset_rx_cdr_to_ctr[8]_i_6_n_0\,
      S(2) => \sm_reset_rx_cdr_to_ctr[8]_i_7_n_0\,
      S(1) => \sm_reset_rx_cdr_to_ctr[8]_i_8_n_0\,
      S(0) => \sm_reset_rx_cdr_to_ctr[8]_i_9_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(9),
      R => sm_reset_rx_cdr_to_clr
    );
sm_reset_rx_cdr_to_sat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      I1 => sm_reset_rx_cdr_to_sat,
      I2 => sm_reset_rx_cdr_to_clr,
      O => sm_reset_rx_cdr_to_sat_i_1_n_0
    );
sm_reset_rx_cdr_to_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_cdr_to_sat_i_1_n_0,
      Q => sm_reset_rx_cdr_to_sat,
      R => '0'
    );
sm_reset_rx_pll_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3000B"
    )
        port map (
      I0 => sm_reset_rx_pll_timer_sat,
      I1 => sm_reset_rx(0),
      I2 => sm_reset_rx(1),
      I3 => sm_reset_rx(2),
      I4 => sm_reset_rx_pll_timer_clr_reg_n_0,
      O => sm_reset_rx_pll_timer_clr_i_1_n_0
    );
sm_reset_rx_pll_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_pll_timer_clr_i_1_n_0,
      Q => sm_reset_rx_pll_timer_clr_reg_n_0,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_pll_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\sm_reset_rx_pll_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\sm_reset_rx_pll_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\sm_reset_rx_pll_timer_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\sm_reset_rx_pll_timer_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\sm_reset_rx_pll_timer_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\sm_reset_rx_pll_timer_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\sm_reset_rx_pll_timer_ctr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\sm_reset_rx_pll_timer_ctr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I5 => \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\,
      O => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I1 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      O => \p_0_in__1\(9)
    );
\sm_reset_rx_pll_timer_ctr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\
    );
\sm_reset_rx_pll_timer_ctr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\
    );
\sm_reset_rx_pll_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\,
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(3),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(4),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(5),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(6),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(7),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(8),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(9),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
sm_reset_rx_pll_timer_sat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      I1 => sm_reset_rx_pll_timer_sat,
      I2 => sm_reset_rx_pll_timer_clr_reg_n_0,
      O => sm_reset_rx_pll_timer_sat_i_1_n_0
    );
sm_reset_rx_pll_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_pll_timer_sat_i_1_n_0,
      Q => sm_reset_rx_pll_timer_sat,
      R => '0'
    );
sm_reset_rx_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2,
      Q => sm_reset_rx_timer_clr_reg_n_0,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(2),
      I1 => sm_reset_rx_timer_ctr(0),
      I2 => sm_reset_rx_timer_ctr(1),
      O => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\
    );
\sm_reset_rx_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      O => \sm_reset_rx_timer_ctr[0]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      I1 => sm_reset_rx_timer_ctr(1),
      O => \sm_reset_rx_timer_ctr[1]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      I1 => sm_reset_rx_timer_ctr(1),
      I2 => sm_reset_rx_timer_ctr(2),
      O => \sm_reset_rx_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[0]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(0),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
\sm_reset_rx_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[1]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(1),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
\sm_reset_rx_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[2]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(2),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
sm_reset_rx_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(2),
      I1 => sm_reset_rx_timer_ctr(0),
      I2 => sm_reset_rx_timer_ctr(1),
      I3 => sm_reset_rx_timer_sat,
      I4 => sm_reset_rx_timer_clr_reg_n_0,
      O => sm_reset_rx_timer_sat_i_1_n_0
    );
sm_reset_rx_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_timer_sat_i_1_n_0,
      Q => sm_reset_rx_timer_sat,
      R => '0'
    );
sm_reset_tx_pll_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3000B"
    )
        port map (
      I0 => sm_reset_tx_pll_timer_sat,
      I1 => sm_reset_tx(0),
      I2 => sm_reset_tx(1),
      I3 => sm_reset_tx(2),
      I4 => sm_reset_tx_pll_timer_clr_reg_n_0,
      O => sm_reset_tx_pll_timer_clr_i_1_n_0
    );
sm_reset_tx_pll_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_pll_timer_clr_i_1_n_0,
      Q => sm_reset_tx_pll_timer_clr_reg_n_0,
      S => gtwiz_reset_tx_any_sync
    );
\sm_reset_tx_pll_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\sm_reset_tx_pll_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\sm_reset_tx_pll_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_tx_pll_timer_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\sm_reset_tx_pll_timer_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\sm_reset_tx_pll_timer_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\sm_reset_tx_pll_timer_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\sm_reset_tx_pll_timer_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\sm_reset_tx_pll_timer_ctr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\sm_reset_tx_pll_timer_ctr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I5 => \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\,
      O => sel
    );
\sm_reset_tx_pll_timer_ctr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I1 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\sm_reset_tx_pll_timer_ctr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\
    );
\sm_reset_tx_pll_timer_ctr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\
    );
\sm_reset_tx_pll_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(0),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(1),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\,
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(3),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(4),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(5),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(6),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(7),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(8),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => sel,
      D => \p_0_in__0\(9),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
sm_reset_tx_pll_timer_sat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sel,
      I1 => sm_reset_tx_pll_timer_sat,
      I2 => sm_reset_tx_pll_timer_clr_reg_n_0,
      O => sm_reset_tx_pll_timer_sat_i_1_n_0
    );
sm_reset_tx_pll_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_pll_timer_sat_i_1_n_0,
      Q => sm_reset_tx_pll_timer_sat,
      R => '0'
    );
sm_reset_tx_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_tx_inst_n_1,
      Q => sm_reset_tx_timer_clr_reg_n_0,
      S => gtwiz_reset_tx_any_sync
    );
\sm_reset_tx_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(2),
      I1 => sm_reset_tx_timer_ctr(0),
      I2 => sm_reset_tx_timer_ctr(1),
      O => p_0_in
    );
\sm_reset_tx_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      O => p_1_in(0)
    );
\sm_reset_tx_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      I1 => sm_reset_tx_timer_ctr(1),
      O => p_1_in(1)
    );
\sm_reset_tx_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      I1 => sm_reset_tx_timer_ctr(1),
      I2 => sm_reset_tx_timer_ctr(2),
      O => p_1_in(2)
    );
\sm_reset_tx_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(0),
      Q => sm_reset_tx_timer_ctr(0),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
\sm_reset_tx_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(1),
      Q => sm_reset_tx_timer_ctr(1),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
\sm_reset_tx_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(2),
      Q => sm_reset_tx_timer_ctr(2),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
sm_reset_tx_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(2),
      I1 => sm_reset_tx_timer_ctr(0),
      I2 => sm_reset_tx_timer_ctr(1),
      I3 => sm_reset_tx_timer_sat,
      I4 => sm_reset_tx_timer_clr_reg_n_0,
      O => sm_reset_tx_timer_sat_i_1_n_0
    );
sm_reset_tx_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_timer_sat_i_1_n_0,
      Q => sm_reset_tx_timer_sat,
      R => '0'
    );
txuserrdy_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1,
      Q => \^txuserrdy_int\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_gthe3 is
  port (
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicaldone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbkrxtxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbktxrxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rstclkentx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrresetrsv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevsen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinttestovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpien_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdiffpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprecursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpibiasen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpistrongpdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpiweakpup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdfeagcctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txbufdiffctrl_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxosintcfg_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcsrsvdin2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvdin_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_gthe3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_gthe3 is
  signal \^gtpowergood_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gtrxreset_int : STD_LOGIC;
  signal gttxreset_int : STD_LOGIC;
  signal \^rxcdrlock_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rxprogdivreset_int : STD_LOGIC;
  signal \^rxresetdone_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rxresetdone_sync : STD_LOGIC;
  signal rxuserrdy_int : STD_LOGIC;
  signal txprogdivreset_int : STD_LOGIC;
  signal \^txresetdone_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal txresetdone_sync : STD_LOGIC;
  signal txuserrdy_int : STD_LOGIC;
begin
  gtpowergood_out(0) <= \^gtpowergood_out\(0);
  rxcdrlock_out(0) <= \^rxcdrlock_out\(0);
  rxresetdone_out(0) <= \^rxresetdone_out\(0);
  txresetdone_out(0) <= \^txresetdone_out\(0);
\gen_gtwizard_gthe3.gen_channel_container[28].gen_enabled_channel.gthe3_channel_wrapper_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gthe3_channel_wrapper
     port map (
      bufgtce_out(2 downto 0) => bufgtce_out(2 downto 0),
      bufgtcemask_out(2 downto 0) => bufgtcemask_out(2 downto 0),
      bufgtdiv_out(8 downto 0) => bufgtdiv_out(8 downto 0),
      bufgtreset_out(2 downto 0) => bufgtreset_out(2 downto 0),
      bufgtrstmask_out(2 downto 0) => bufgtrstmask_out(2 downto 0),
      cfgreset_in(0) => cfgreset_in(0),
      clkrsvd0_in(0) => clkrsvd0_in(0),
      clkrsvd1_in(0) => clkrsvd1_in(0),
      cpllfbclklost_out(0) => cpllfbclklost_out(0),
      cplllock_out(0) => cplllock_out(0),
      cplllockdetclk_in(0) => cplllockdetclk_in(0),
      cplllocken_in(0) => cplllocken_in(0),
      cpllpd_in(0) => cpllpd_in(0),
      cpllrefclklost_out(0) => cpllrefclklost_out(0),
      cpllrefclksel_in(2 downto 0) => cpllrefclksel_in(2 downto 0),
      cpllreset_in(0) => cpllreset_in(0),
      dmonfiforeset_in(0) => dmonfiforeset_in(0),
      dmonitorclk_in(0) => dmonitorclk_in(0),
      dmonitorout_out(16 downto 0) => dmonitorout_out(16 downto 0),
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drpwe_in(0) => drpwe_in(0),
      evoddphicaldone_in(0) => evoddphicaldone_in(0),
      evoddphicalstart_in(0) => evoddphicalstart_in(0),
      evoddphidrden_in(0) => evoddphidrden_in(0),
      evoddphidwren_in(0) => evoddphidwren_in(0),
      evoddphixrden_in(0) => evoddphixrden_in(0),
      evoddphixwren_in(0) => evoddphixwren_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanmode_in(0) => eyescanmode_in(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => eyescantrigger_in(0),
      gtgrefclk_in(0) => gtgrefclk_in(0),
      gthrxn_in(0) => gthrxn_in(0),
      gthrxp_in(0) => gthrxp_in(0),
      gthtxn_out(0) => gthtxn_out(0),
      gthtxp_out(0) => gthtxp_out(0),
      gtnorthrefclk0_in(0) => gtnorthrefclk0_in(0),
      gtnorthrefclk1_in(0) => gtnorthrefclk1_in(0),
      gtpowergood_out(0) => \^gtpowergood_out\(0),
      gtrefclk0_in(0) => gtrefclk0_in(0),
      gtrefclk1_in(0) => gtrefclk1_in(0),
      gtrefclkmonitor_out(0) => gtrefclkmonitor_out(0),
      gtresetsel_in(0) => gtresetsel_in(0),
      gtrsvd_in(15 downto 0) => gtrsvd_in(15 downto 0),
      gtrxreset_int => gtrxreset_int,
      gtsouthrefclk0_in(0) => gtsouthrefclk0_in(0),
      gtsouthrefclk1_in(0) => gtsouthrefclk1_in(0),
      gttxreset_int => gttxreset_int,
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      lpbkrxtxseren_in(0) => lpbkrxtxseren_in(0),
      lpbktxrxseren_in(0) => lpbktxrxseren_in(0),
      pcieeqrxeqadaptdone_in(0) => pcieeqrxeqadaptdone_in(0),
      pcierategen3_out(0) => pcierategen3_out(0),
      pcierateidle_out(0) => pcierateidle_out(0),
      pcierateqpllpd_out(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      pcierstidle_in(0) => pcierstidle_in(0),
      pciersttxsyncstart_in(0) => pciersttxsyncstart_in(0),
      pciesynctxsyncdone_out(0) => pciesynctxsyncdone_out(0),
      pcieusergen3rdy_out(0) => pcieusergen3rdy_out(0),
      pcieuserphystatusrst_out(0) => pcieuserphystatusrst_out(0),
      pcieuserratedone_in(0) => pcieuserratedone_in(0),
      pcieuserratestart_out(0) => pcieuserratestart_out(0),
      pcsrsvdin2_in(4 downto 0) => pcsrsvdin2_in(4 downto 0),
      pcsrsvdin_in(15 downto 0) => pcsrsvdin_in(15 downto 0),
      pcsrsvdout_out(11 downto 0) => pcsrsvdout_out(11 downto 0),
      phystatus_out(0) => phystatus_out(0),
      pinrsrvdas_out(7 downto 0) => pinrsrvdas_out(7 downto 0),
      pmarsvdin_in(4 downto 0) => pmarsvdin_in(4 downto 0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1refclk_in(0) => qpll1refclk_in(0),
      resetexception_out(0) => resetexception_out(0),
      resetovrd_in(0) => resetovrd_in(0),
      rstclkentx_in(0) => rstclkentx_in(0),
      rx8b10ben_in(0) => rx8b10ben_in(0),
      rxbufreset_in(0) => rxbufreset_in(0),
      rxbufstatus_out(2 downto 0) => rxbufstatus_out(2 downto 0),
      rxbyteisaligned_out(0) => rxbyteisaligned_out(0),
      rxbyterealign_out(0) => rxbyterealign_out(0),
      rxcdrfreqreset_in(0) => rxcdrfreqreset_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => \^rxcdrlock_out\(0),
      rxcdrovrden_in(0) => rxcdrovrden_in(0),
      rxcdrphdone_out(0) => rxcdrphdone_out(0),
      rxcdrreset_in(0) => rxcdrreset_in(0),
      rxcdrresetrsv_in(0) => rxcdrresetrsv_in(0),
      rxchanbondseq_out(0) => rxchanbondseq_out(0),
      rxchanisaligned_out(0) => rxchanisaligned_out(0),
      rxchanrealign_out(0) => rxchanrealign_out(0),
      rxchbonden_in(0) => rxchbonden_in(0),
      rxchbondi_in(4 downto 0) => rxchbondi_in(4 downto 0),
      rxchbondlevel_in(2 downto 0) => rxchbondlevel_in(2 downto 0),
      rxchbondmaster_in(0) => rxchbondmaster_in(0),
      rxchbondo_out(4 downto 0) => rxchbondo_out(4 downto 0),
      rxchbondslave_in(0) => rxchbondslave_in(0),
      rxclkcorcnt_out(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      rxcominitdet_out(0) => rxcominitdet_out(0),
      rxcommadet_out(0) => rxcommadet_out(0),
      rxcommadeten_in(0) => rxcommadeten_in(0),
      rxcomsasdet_out(0) => rxcomsasdet_out(0),
      rxcomwakedet_out(0) => rxcomwakedet_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxctrl2_out(7 downto 0) => rxctrl2_out(7 downto 0),
      rxctrl3_out(7 downto 0) => rxctrl3_out(7 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      rxdatavalid_out(1 downto 0) => rxdatavalid_out(1 downto 0),
      rxdfeagcctrl_in(1 downto 0) => rxdfeagcctrl_in(1 downto 0),
      rxdfeagchold_in(0) => rxdfeagchold_in(0),
      rxdfeagcovrden_in(0) => rxdfeagcovrden_in(0),
      rxdfelfhold_in(0) => rxdfelfhold_in(0),
      rxdfelfovrden_in(0) => rxdfelfovrden_in(0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => rxdfetap10hold_in(0),
      rxdfetap10ovrden_in(0) => rxdfetap10ovrden_in(0),
      rxdfetap11hold_in(0) => rxdfetap11hold_in(0),
      rxdfetap11ovrden_in(0) => rxdfetap11ovrden_in(0),
      rxdfetap12hold_in(0) => rxdfetap12hold_in(0),
      rxdfetap12ovrden_in(0) => rxdfetap12ovrden_in(0),
      rxdfetap13hold_in(0) => rxdfetap13hold_in(0),
      rxdfetap13ovrden_in(0) => rxdfetap13ovrden_in(0),
      rxdfetap14hold_in(0) => rxdfetap14hold_in(0),
      rxdfetap14ovrden_in(0) => rxdfetap14ovrden_in(0),
      rxdfetap15hold_in(0) => rxdfetap15hold_in(0),
      rxdfetap15ovrden_in(0) => rxdfetap15ovrden_in(0),
      rxdfetap2hold_in(0) => rxdfetap2hold_in(0),
      rxdfetap2ovrden_in(0) => rxdfetap2ovrden_in(0),
      rxdfetap3hold_in(0) => rxdfetap3hold_in(0),
      rxdfetap3ovrden_in(0) => rxdfetap3ovrden_in(0),
      rxdfetap4hold_in(0) => rxdfetap4hold_in(0),
      rxdfetap4ovrden_in(0) => rxdfetap4ovrden_in(0),
      rxdfetap5hold_in(0) => rxdfetap5hold_in(0),
      rxdfetap5ovrden_in(0) => rxdfetap5ovrden_in(0),
      rxdfetap6hold_in(0) => rxdfetap6hold_in(0),
      rxdfetap6ovrden_in(0) => rxdfetap6ovrden_in(0),
      rxdfetap7hold_in(0) => rxdfetap7hold_in(0),
      rxdfetap7ovrden_in(0) => rxdfetap7ovrden_in(0),
      rxdfetap8hold_in(0) => rxdfetap8hold_in(0),
      rxdfetap8ovrden_in(0) => rxdfetap8ovrden_in(0),
      rxdfetap9hold_in(0) => rxdfetap9hold_in(0),
      rxdfetap9ovrden_in(0) => rxdfetap9ovrden_in(0),
      rxdfeuthold_in(0) => rxdfeuthold_in(0),
      rxdfeutovrden_in(0) => rxdfeutovrden_in(0),
      rxdfevphold_in(0) => rxdfevphold_in(0),
      rxdfevpovrden_in(0) => rxdfevpovrden_in(0),
      rxdfevsen_in(0) => rxdfevsen_in(0),
      rxdfexyden_in(0) => rxdfexyden_in(0),
      rxdlybypass_in(0) => rxdlybypass_in(0),
      rxdlyen_in(0) => rxdlyen_in(0),
      rxdlyovrden_in(0) => rxdlyovrden_in(0),
      rxdlysreset_in(0) => rxdlysreset_in(0),
      rxdlysresetdone_out(0) => rxdlysresetdone_out(0),
      rxelecidle_out(0) => rxelecidle_out(0),
      rxelecidlemode_in(1 downto 0) => rxelecidlemode_in(1 downto 0),
      rxgearboxslip_in(0) => rxgearboxslip_in(0),
      rxheader_out(5 downto 0) => rxheader_out(5 downto 0),
      rxheadervalid_out(1 downto 0) => rxheadervalid_out(1 downto 0),
      rxlatclk_in(0) => rxlatclk_in(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => rxlpmgchold_in(0),
      rxlpmgcovrden_in(0) => rxlpmgcovrden_in(0),
      rxlpmhfhold_in(0) => rxlpmhfhold_in(0),
      rxlpmhfovrden_in(0) => rxlpmhfovrden_in(0),
      rxlpmlfhold_in(0) => rxlpmlfhold_in(0),
      rxlpmlfklovrden_in(0) => rxlpmlfklovrden_in(0),
      rxlpmoshold_in(0) => rxlpmoshold_in(0),
      rxlpmosovrden_in(0) => rxlpmosovrden_in(0),
      rxmcommaalignen_in(0) => rxmcommaalignen_in(0),
      rxmonitorout_out(6 downto 0) => rxmonitorout_out(6 downto 0),
      rxmonitorsel_in(1 downto 0) => rxmonitorsel_in(1 downto 0),
      rxoobreset_in(0) => rxoobreset_in(0),
      rxoscalreset_in(0) => rxoscalreset_in(0),
      rxoshold_in(0) => rxoshold_in(0),
      rxosintcfg_in(3 downto 0) => rxosintcfg_in(3 downto 0),
      rxosintdone_out(0) => rxosintdone_out(0),
      rxosinten_in(0) => rxosinten_in(0),
      rxosinthold_in(0) => rxosinthold_in(0),
      rxosintovrden_in(0) => rxosintovrden_in(0),
      rxosintstarted_out(0) => rxosintstarted_out(0),
      rxosintstrobe_in(0) => rxosintstrobe_in(0),
      rxosintstrobedone_out(0) => rxosintstrobedone_out(0),
      rxosintstrobestarted_out(0) => rxosintstrobestarted_out(0),
      rxosinttestovrden_in(0) => rxosinttestovrden_in(0),
      rxosovrden_in(0) => rxosovrden_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => rxoutclkfabric_out(0),
      rxoutclkpcs_out(0) => rxoutclkpcs_out(0),
      rxoutclksel_in(2 downto 0) => rxoutclksel_in(2 downto 0),
      rxpcommaalignen_in(0) => rxpcommaalignen_in(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => rxphalign_in(0),
      rxphaligndone_out(0) => rxphaligndone_out(0),
      rxphalignen_in(0) => rxphalignen_in(0),
      rxphalignerr_out(0) => rxphalignerr_out(0),
      rxphdlypd_in(0) => rxphdlypd_in(0),
      rxphdlyreset_in(0) => rxphdlyreset_in(0),
      rxphovrden_in(0) => rxphovrden_in(0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxprogdivreset_int => rxprogdivreset_int,
      rxqpien_in(0) => rxqpien_in(0),
      rxqpisenn_out(0) => rxqpisenn_out(0),
      rxqpisenp_out(0) => rxqpisenp_out(0),
      rxrate_in(2 downto 0) => rxrate_in(2 downto 0),
      rxratedone_out(0) => rxratedone_out(0),
      rxratemode_in(0) => rxratemode_in(0),
      rxrecclkout_out(0) => rxrecclkout_out(0),
      rxresetdone_out(0) => \^rxresetdone_out\(0),
      rxslide_in(0) => rxslide_in(0),
      rxsliderdy_out(0) => rxsliderdy_out(0),
      rxslipdone_out(0) => rxslipdone_out(0),
      rxslipoutclk_in(0) => rxslipoutclk_in(0),
      rxslipoutclkrdy_out(0) => rxslipoutclkrdy_out(0),
      rxslippma_in(0) => rxslippma_in(0),
      rxslippmardy_out(0) => rxslippmardy_out(0),
      rxstartofseq_out(1 downto 0) => rxstartofseq_out(1 downto 0),
      rxstatus_out(2 downto 0) => rxstatus_out(2 downto 0),
      rxsyncallin_in(0) => rxsyncallin_in(0),
      rxsyncdone_out(0) => rxsyncdone_out(0),
      rxsyncin_in(0) => rxsyncin_in(0),
      rxsyncmode_in(0) => rxsyncmode_in(0),
      rxsyncout_out(0) => rxsyncout_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxuserrdy_int => rxuserrdy_int,
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => rxvalid_out(0),
      sigvalidclk_in(0) => sigvalidclk_in(0),
      tx8b10bbypass_in(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      tx8b10ben_in(0) => tx8b10ben_in(0),
      txbufdiffctrl_in(2 downto 0) => txbufdiffctrl_in(2 downto 0),
      txbufstatus_out(1 downto 0) => txbufstatus_out(1 downto 0),
      txcomfinish_out(0) => txcomfinish_out(0),
      txcominit_in(0) => txcominit_in(0),
      txcomsas_in(0) => txcomsas_in(0),
      txcomwake_in(0) => txcomwake_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txctrl2_in(7 downto 0) => txctrl2_in(7 downto 0),
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdataextendrsvd_in(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      txdeemph_in(0) => txdeemph_in(0),
      txdetectrx_in(0) => txdetectrx_in(0),
      txdiffctrl_in(3 downto 0) => txdiffctrl_in(3 downto 0),
      txdiffpd_in(0) => txdiffpd_in(0),
      txdlybypass_in(0) => txdlybypass_in(0),
      txdlyen_in(0) => txdlyen_in(0),
      txdlyhold_in(0) => txdlyhold_in(0),
      txdlyovrden_in(0) => txdlyovrden_in(0),
      txdlysreset_in(0) => txdlysreset_in(0),
      txdlysresetdone_out(0) => txdlysresetdone_out(0),
      txdlyupdown_in(0) => txdlyupdown_in(0),
      txelecidle_in(0) => txelecidle_in(0),
      txheader_in(5 downto 0) => txheader_in(5 downto 0),
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => txlatclk_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txmargin_in(2 downto 0) => txmargin_in(2 downto 0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => txoutclkfabric_out(0),
      txoutclkpcs_out(0) => txoutclkpcs_out(0),
      txoutclksel_in(2 downto 0) => txoutclksel_in(2 downto 0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => txphalign_in(0),
      txphaligndone_out(0) => txphaligndone_out(0),
      txphalignen_in(0) => txphalignen_in(0),
      txphdlypd_in(0) => txphdlypd_in(0),
      txphdlyreset_in(0) => txphdlyreset_in(0),
      txphdlytstclk_in(0) => txphdlytstclk_in(0),
      txphinit_in(0) => txphinit_in(0),
      txphinitdone_out(0) => txphinitdone_out(0),
      txphovrden_in(0) => txphovrden_in(0),
      txpippmen_in(0) => txpippmen_in(0),
      txpippmovrden_in(0) => txpippmovrden_in(0),
      txpippmpd_in(0) => txpippmpd_in(0),
      txpippmsel_in(0) => txpippmsel_in(0),
      txpippmstepsize_in(4 downto 0) => txpippmstepsize_in(4 downto 0),
      txpisopd_in(0) => txpisopd_in(0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmareset_in(0) => txpmareset_in(0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txpostcursorinv_in(0) => txpostcursorinv_in(0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprecursorinv_in(0) => txprecursorinv_in(0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_int => txprogdivreset_int,
      txqpibiasen_in(0) => txqpibiasen_in(0),
      txqpisenn_out(0) => txqpisenn_out(0),
      txqpisenp_out(0) => txqpisenp_out(0),
      txqpistrongpdown_in(0) => txqpistrongpdown_in(0),
      txqpiweakpup_in(0) => txqpiweakpup_in(0),
      txrate_in(2 downto 0) => txrate_in(2 downto 0),
      txratedone_out(0) => txratedone_out(0),
      txratemode_in(0) => txratemode_in(0),
      txresetdone_out(0) => \^txresetdone_out\(0),
      txsequence_in(6 downto 0) => txsequence_in(6 downto 0),
      txswing_in(0) => txswing_in(0),
      txsyncallin_in(0) => txsyncallin_in(0),
      txsyncdone_out(0) => txsyncdone_out(0),
      txsyncin_in(0) => txsyncin_in(0),
      txsyncmode_in(0) => txsyncmode_in(0),
      txsyncout_out(0) => txsyncout_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txuserrdy_int => txuserrdy_int,
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
\gen_gtwizard_gthe3.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      rxresetdone_out(0) => \^rxresetdone_out\(0),
      rxresetdone_sync => rxresetdone_sync
    );
\gen_gtwizard_gthe3.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_bit_synchronizer_0
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      txresetdone_out(0) => \^txresetdone_out\(0),
      txresetdone_sync => txresetdone_sync
    );
\gen_gtwizard_gthe3.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_6_5_gtwiz_reset
     port map (
      gtpowergood_out(0) => \^gtpowergood_out\(0),
      gtrxreset_int => gtrxreset_int,
      gttxreset_int => gttxreset_int,
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => gtwiz_reset_qpll0lock_in(0),
      gtwiz_reset_qpll0reset_out(0) => gtwiz_reset_qpll0reset_out(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_in(0) => gtwiz_userclk_rx_active_in(0),
      gtwiz_userclk_tx_active_in(0) => gtwiz_userclk_tx_active_in(0),
      rxcdrlock_out(0) => \^rxcdrlock_out\(0),
      rxprogdivreset_int => rxprogdivreset_int,
      rxresetdone_sync => rxresetdone_sync,
      rxuserrdy_int => rxuserrdy_int,
      rxusrclk2_in(0) => rxusrclk2_in(0),
      txprogdivreset_int => txprogdivreset_int,
      txresetdone_sync => txresetdone_sync,
      txuserrdy_int => txuserrdy_int,
      txusrclk2_in(0) => txusrclk2_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top is
  port (
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gthe3_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe3_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe3_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gthe4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gtye4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gtye4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gtye4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tcongpi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconpowerup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdin1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk0_sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1_sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    tcongpo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdout0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    elpcaldvorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    elpcalpaorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicaldone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    looprsvd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbkrxtxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbktxrxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvdin_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rstclkentx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrresetrsv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevsen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintcfg_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxosinten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinttestovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpien_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txbufdiffctrl_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdiffpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpibiasen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpistrongpdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpiweakpup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "2578.125000";
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "100.000000";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 17;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 4;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 32;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "10.312500";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 112;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "312.500000";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 4;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 2;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 64;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "312.500000";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : string;
  attribute C_SIM_CPLL_CAL_BYPASS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "1'b0";
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "312.500000";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 4;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 32;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "10.312500";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 112;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "312.500000";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 2;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is 64;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top : entity is "312.500000";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^gtwiz_reset_qpll0lock_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_reset_qpll1lock_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_rx_active_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_tx_active_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll1reset_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^gtwiz_reset_qpll0lock_in\(0) <= gtwiz_reset_qpll0lock_in(0);
  \^gtwiz_reset_qpll1lock_in\(0) <= gtwiz_reset_qpll1lock_in(0);
  \^gtwiz_userclk_rx_active_in\(0) <= gtwiz_userclk_rx_active_in(0);
  \^gtwiz_userclk_tx_active_in\(0) <= gtwiz_userclk_tx_active_in(0);
  \^qpll1reset_in\(0) <= qpll1reset_in(0);
  dmonitoroutclk_out(0) <= \<const0>\;
  drpdo_common_out(15) <= \<const0>\;
  drpdo_common_out(14) <= \<const0>\;
  drpdo_common_out(13) <= \<const0>\;
  drpdo_common_out(12) <= \<const0>\;
  drpdo_common_out(11) <= \<const0>\;
  drpdo_common_out(10) <= \<const0>\;
  drpdo_common_out(9) <= \<const0>\;
  drpdo_common_out(8) <= \<const0>\;
  drpdo_common_out(7) <= \<const0>\;
  drpdo_common_out(6) <= \<const0>\;
  drpdo_common_out(5) <= \<const0>\;
  drpdo_common_out(4) <= \<const0>\;
  drpdo_common_out(3) <= \<const0>\;
  drpdo_common_out(2) <= \<const0>\;
  drpdo_common_out(1) <= \<const0>\;
  drpdo_common_out(0) <= \<const0>\;
  drprdy_common_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_error_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_error_out(0) <= \<const0>\;
  gtwiz_reset_qpll1reset_out(0) <= \^qpll1reset_in\(0);
  gtwiz_userclk_rx_active_out(0) <= \^gtwiz_userclk_rx_active_in\(0);
  gtwiz_userclk_rx_srcclk_out(0) <= \<const0>\;
  gtwiz_userclk_rx_usrclk2_out(0) <= \<const0>\;
  gtwiz_userclk_rx_usrclk_out(0) <= \<const0>\;
  gtwiz_userclk_tx_active_out(0) <= \^gtwiz_userclk_tx_active_in\(0);
  gtwiz_userclk_tx_srcclk_out(0) <= \<const0>\;
  gtwiz_userclk_tx_usrclk2_out(0) <= \<const0>\;
  gtwiz_userclk_tx_usrclk_out(0) <= \<const0>\;
  gtwiz_userdata_rx_out(63) <= \<const0>\;
  gtwiz_userdata_rx_out(62) <= \<const0>\;
  gtwiz_userdata_rx_out(61) <= \<const0>\;
  gtwiz_userdata_rx_out(60) <= \<const0>\;
  gtwiz_userdata_rx_out(59) <= \<const0>\;
  gtwiz_userdata_rx_out(58) <= \<const0>\;
  gtwiz_userdata_rx_out(57) <= \<const0>\;
  gtwiz_userdata_rx_out(56) <= \<const0>\;
  gtwiz_userdata_rx_out(55) <= \<const0>\;
  gtwiz_userdata_rx_out(54) <= \<const0>\;
  gtwiz_userdata_rx_out(53) <= \<const0>\;
  gtwiz_userdata_rx_out(52) <= \<const0>\;
  gtwiz_userdata_rx_out(51) <= \<const0>\;
  gtwiz_userdata_rx_out(50) <= \<const0>\;
  gtwiz_userdata_rx_out(49) <= \<const0>\;
  gtwiz_userdata_rx_out(48) <= \<const0>\;
  gtwiz_userdata_rx_out(47) <= \<const0>\;
  gtwiz_userdata_rx_out(46) <= \<const0>\;
  gtwiz_userdata_rx_out(45) <= \<const0>\;
  gtwiz_userdata_rx_out(44) <= \<const0>\;
  gtwiz_userdata_rx_out(43) <= \<const0>\;
  gtwiz_userdata_rx_out(42) <= \<const0>\;
  gtwiz_userdata_rx_out(41) <= \<const0>\;
  gtwiz_userdata_rx_out(40) <= \<const0>\;
  gtwiz_userdata_rx_out(39) <= \<const0>\;
  gtwiz_userdata_rx_out(38) <= \<const0>\;
  gtwiz_userdata_rx_out(37) <= \<const0>\;
  gtwiz_userdata_rx_out(36) <= \<const0>\;
  gtwiz_userdata_rx_out(35) <= \<const0>\;
  gtwiz_userdata_rx_out(34) <= \<const0>\;
  gtwiz_userdata_rx_out(33) <= \<const0>\;
  gtwiz_userdata_rx_out(32) <= \<const0>\;
  gtwiz_userdata_rx_out(31) <= \<const0>\;
  gtwiz_userdata_rx_out(30) <= \<const0>\;
  gtwiz_userdata_rx_out(29) <= \<const0>\;
  gtwiz_userdata_rx_out(28) <= \<const0>\;
  gtwiz_userdata_rx_out(27) <= \<const0>\;
  gtwiz_userdata_rx_out(26) <= \<const0>\;
  gtwiz_userdata_rx_out(25) <= \<const0>\;
  gtwiz_userdata_rx_out(24) <= \<const0>\;
  gtwiz_userdata_rx_out(23) <= \<const0>\;
  gtwiz_userdata_rx_out(22) <= \<const0>\;
  gtwiz_userdata_rx_out(21) <= \<const0>\;
  gtwiz_userdata_rx_out(20) <= \<const0>\;
  gtwiz_userdata_rx_out(19) <= \<const0>\;
  gtwiz_userdata_rx_out(18) <= \<const0>\;
  gtwiz_userdata_rx_out(17) <= \<const0>\;
  gtwiz_userdata_rx_out(16) <= \<const0>\;
  gtwiz_userdata_rx_out(15) <= \<const0>\;
  gtwiz_userdata_rx_out(14) <= \<const0>\;
  gtwiz_userdata_rx_out(13) <= \<const0>\;
  gtwiz_userdata_rx_out(12) <= \<const0>\;
  gtwiz_userdata_rx_out(11) <= \<const0>\;
  gtwiz_userdata_rx_out(10) <= \<const0>\;
  gtwiz_userdata_rx_out(9) <= \<const0>\;
  gtwiz_userdata_rx_out(8) <= \<const0>\;
  gtwiz_userdata_rx_out(7) <= \<const0>\;
  gtwiz_userdata_rx_out(6) <= \<const0>\;
  gtwiz_userdata_rx_out(5) <= \<const0>\;
  gtwiz_userdata_rx_out(4) <= \<const0>\;
  gtwiz_userdata_rx_out(3) <= \<const0>\;
  gtwiz_userdata_rx_out(2) <= \<const0>\;
  gtwiz_userdata_rx_out(1) <= \<const0>\;
  gtwiz_userdata_rx_out(0) <= \<const0>\;
  gtytxn_out(0) <= \<const0>\;
  gtytxp_out(0) <= \<const0>\;
  pmarsvdout0_out(7) <= \<const0>\;
  pmarsvdout0_out(6) <= \<const0>\;
  pmarsvdout0_out(5) <= \<const0>\;
  pmarsvdout0_out(4) <= \<const0>\;
  pmarsvdout0_out(3) <= \<const0>\;
  pmarsvdout0_out(2) <= \<const0>\;
  pmarsvdout0_out(1) <= \<const0>\;
  pmarsvdout0_out(0) <= \<const0>\;
  pmarsvdout1_out(7) <= \<const0>\;
  pmarsvdout1_out(6) <= \<const0>\;
  pmarsvdout1_out(5) <= \<const0>\;
  pmarsvdout1_out(4) <= \<const0>\;
  pmarsvdout1_out(3) <= \<const0>\;
  pmarsvdout1_out(2) <= \<const0>\;
  pmarsvdout1_out(1) <= \<const0>\;
  pmarsvdout1_out(0) <= \<const0>\;
  powerpresent_out(0) <= \<const0>\;
  qpll0fbclklost_out(0) <= \<const0>\;
  qpll0lock_out(0) <= \^gtwiz_reset_qpll0lock_in\(0);
  qpll0outclk_out(0) <= \<const0>\;
  qpll0outrefclk_out(0) <= \<const0>\;
  qpll0refclklost_out(0) <= \<const0>\;
  qpll1fbclklost_out(0) <= \<const0>\;
  qpll1lock_out(0) <= \^gtwiz_reset_qpll1lock_in\(0);
  qpll1outclk_out(0) <= \<const0>\;
  qpll1outrefclk_out(0) <= \<const0>\;
  qpll1refclklost_out(0) <= \<const0>\;
  qplldmonitor0_out(7) <= \<const0>\;
  qplldmonitor0_out(6) <= \<const0>\;
  qplldmonitor0_out(5) <= \<const0>\;
  qplldmonitor0_out(4) <= \<const0>\;
  qplldmonitor0_out(3) <= \<const0>\;
  qplldmonitor0_out(2) <= \<const0>\;
  qplldmonitor0_out(1) <= \<const0>\;
  qplldmonitor0_out(0) <= \<const0>\;
  qplldmonitor1_out(7) <= \<const0>\;
  qplldmonitor1_out(6) <= \<const0>\;
  qplldmonitor1_out(5) <= \<const0>\;
  qplldmonitor1_out(4) <= \<const0>\;
  qplldmonitor1_out(3) <= \<const0>\;
  qplldmonitor1_out(2) <= \<const0>\;
  qplldmonitor1_out(1) <= \<const0>\;
  qplldmonitor1_out(0) <= \<const0>\;
  refclkoutmonitor0_out(0) <= \<const0>\;
  refclkoutmonitor1_out(0) <= \<const0>\;
  rxckcaldone_out(0) <= \<const0>\;
  rxlfpstresetdet_out(0) <= \<const0>\;
  rxlfpsu2lpexitdet_out(0) <= \<const0>\;
  rxlfpsu3wakedet_out(0) <= \<const0>\;
  rxrecclk0_sel_out(1) <= \<const0>\;
  rxrecclk0_sel_out(0) <= \<const0>\;
  rxrecclk0sel_out(0) <= \<const0>\;
  rxrecclk1_sel_out(1) <= \<const0>\;
  rxrecclk1_sel_out(0) <= \<const0>\;
  rxrecclk1sel_out(0) <= \<const0>\;
  sdm0finalout_out(0) <= \<const0>\;
  sdm0testdata_out(0) <= \<const0>\;
  sdm1finalout_out(0) <= \<const0>\;
  sdm1testdata_out(0) <= \<const0>\;
  tcongpo_out(0) <= \<const0>\;
  tconrsvdout0_out(0) <= \<const0>\;
  txdccdone_out(0) <= \<const0>\;
  ubdaddr_out(0) <= \<const0>\;
  ubden_out(0) <= \<const0>\;
  ubdi_out(0) <= \<const0>\;
  ubdwe_out(0) <= \<const0>\;
  ubmdmtdo_out(0) <= \<const0>\;
  ubrsvdout_out(0) <= \<const0>\;
  ubtxuart_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_gtwizard_gthe3_top.bd_01e2_xpcs_0_gt_gtwizard_gthe3_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_gthe3
     port map (
      bufgtce_out(2 downto 0) => bufgtce_out(2 downto 0),
      bufgtcemask_out(2 downto 0) => bufgtcemask_out(2 downto 0),
      bufgtdiv_out(8 downto 0) => bufgtdiv_out(8 downto 0),
      bufgtreset_out(2 downto 0) => bufgtreset_out(2 downto 0),
      bufgtrstmask_out(2 downto 0) => bufgtrstmask_out(2 downto 0),
      cfgreset_in(0) => cfgreset_in(0),
      clkrsvd0_in(0) => clkrsvd0_in(0),
      clkrsvd1_in(0) => clkrsvd1_in(0),
      cpllfbclklost_out(0) => cpllfbclklost_out(0),
      cplllock_out(0) => cplllock_out(0),
      cplllockdetclk_in(0) => cplllockdetclk_in(0),
      cplllocken_in(0) => cplllocken_in(0),
      cpllpd_in(0) => cpllpd_in(0),
      cpllrefclklost_out(0) => cpllrefclklost_out(0),
      cpllrefclksel_in(2 downto 0) => cpllrefclksel_in(2 downto 0),
      cpllreset_in(0) => cpllreset_in(0),
      dmonfiforeset_in(0) => dmonfiforeset_in(0),
      dmonitorclk_in(0) => dmonitorclk_in(0),
      dmonitorout_out(16 downto 0) => dmonitorout_out(16 downto 0),
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drpwe_in(0) => drpwe_in(0),
      evoddphicaldone_in(0) => evoddphicaldone_in(0),
      evoddphicalstart_in(0) => evoddphicalstart_in(0),
      evoddphidrden_in(0) => evoddphidrden_in(0),
      evoddphidwren_in(0) => evoddphidwren_in(0),
      evoddphixrden_in(0) => evoddphixrden_in(0),
      evoddphixwren_in(0) => evoddphixwren_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanmode_in(0) => eyescanmode_in(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => eyescantrigger_in(0),
      gtgrefclk_in(0) => gtgrefclk_in(0),
      gthrxn_in(0) => gthrxn_in(0),
      gthrxp_in(0) => gthrxp_in(0),
      gthtxn_out(0) => gthtxn_out(0),
      gthtxp_out(0) => gthtxp_out(0),
      gtnorthrefclk0_in(0) => gtnorthrefclk0_in(0),
      gtnorthrefclk1_in(0) => gtnorthrefclk1_in(0),
      gtpowergood_out(0) => gtpowergood_out(0),
      gtrefclk0_in(0) => gtrefclk0_in(0),
      gtrefclk1_in(0) => gtrefclk1_in(0),
      gtrefclkmonitor_out(0) => gtrefclkmonitor_out(0),
      gtresetsel_in(0) => gtresetsel_in(0),
      gtrsvd_in(15 downto 0) => gtrsvd_in(15 downto 0),
      gtsouthrefclk0_in(0) => gtsouthrefclk0_in(0),
      gtsouthrefclk1_in(0) => gtsouthrefclk1_in(0),
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => \^gtwiz_reset_qpll0lock_in\(0),
      gtwiz_reset_qpll0reset_out(0) => gtwiz_reset_qpll0reset_out(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_in(0) => \^gtwiz_userclk_rx_active_in\(0),
      gtwiz_userclk_tx_active_in(0) => \^gtwiz_userclk_tx_active_in\(0),
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      lpbkrxtxseren_in(0) => lpbkrxtxseren_in(0),
      lpbktxrxseren_in(0) => lpbktxrxseren_in(0),
      pcieeqrxeqadaptdone_in(0) => pcieeqrxeqadaptdone_in(0),
      pcierategen3_out(0) => pcierategen3_out(0),
      pcierateidle_out(0) => pcierateidle_out(0),
      pcierateqpllpd_out(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      pcierstidle_in(0) => pcierstidle_in(0),
      pciersttxsyncstart_in(0) => pciersttxsyncstart_in(0),
      pciesynctxsyncdone_out(0) => pciesynctxsyncdone_out(0),
      pcieusergen3rdy_out(0) => pcieusergen3rdy_out(0),
      pcieuserphystatusrst_out(0) => pcieuserphystatusrst_out(0),
      pcieuserratedone_in(0) => pcieuserratedone_in(0),
      pcieuserratestart_out(0) => pcieuserratestart_out(0),
      pcsrsvdin2_in(4 downto 0) => pcsrsvdin2_in(4 downto 0),
      pcsrsvdin_in(15 downto 0) => pcsrsvdin_in(15 downto 0),
      pcsrsvdout_out(11 downto 0) => pcsrsvdout_out(11 downto 0),
      phystatus_out(0) => phystatus_out(0),
      pinrsrvdas_out(7 downto 0) => pinrsrvdas_out(7 downto 0),
      pmarsvdin_in(4 downto 0) => pmarsvdin_in(4 downto 0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1refclk_in(0) => qpll1refclk_in(0),
      resetexception_out(0) => resetexception_out(0),
      resetovrd_in(0) => resetovrd_in(0),
      rstclkentx_in(0) => rstclkentx_in(0),
      rx8b10ben_in(0) => rx8b10ben_in(0),
      rxbufreset_in(0) => rxbufreset_in(0),
      rxbufstatus_out(2 downto 0) => rxbufstatus_out(2 downto 0),
      rxbyteisaligned_out(0) => rxbyteisaligned_out(0),
      rxbyterealign_out(0) => rxbyterealign_out(0),
      rxcdrfreqreset_in(0) => rxcdrfreqreset_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxcdrovrden_in(0) => rxcdrovrden_in(0),
      rxcdrphdone_out(0) => rxcdrphdone_out(0),
      rxcdrreset_in(0) => rxcdrreset_in(0),
      rxcdrresetrsv_in(0) => rxcdrresetrsv_in(0),
      rxchanbondseq_out(0) => rxchanbondseq_out(0),
      rxchanisaligned_out(0) => rxchanisaligned_out(0),
      rxchanrealign_out(0) => rxchanrealign_out(0),
      rxchbonden_in(0) => rxchbonden_in(0),
      rxchbondi_in(4 downto 0) => rxchbondi_in(4 downto 0),
      rxchbondlevel_in(2 downto 0) => rxchbondlevel_in(2 downto 0),
      rxchbondmaster_in(0) => rxchbondmaster_in(0),
      rxchbondo_out(4 downto 0) => rxchbondo_out(4 downto 0),
      rxchbondslave_in(0) => rxchbondslave_in(0),
      rxclkcorcnt_out(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      rxcominitdet_out(0) => rxcominitdet_out(0),
      rxcommadet_out(0) => rxcommadet_out(0),
      rxcommadeten_in(0) => rxcommadeten_in(0),
      rxcomsasdet_out(0) => rxcomsasdet_out(0),
      rxcomwakedet_out(0) => rxcomwakedet_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxctrl2_out(7 downto 0) => rxctrl2_out(7 downto 0),
      rxctrl3_out(7 downto 0) => rxctrl3_out(7 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      rxdatavalid_out(1 downto 0) => rxdatavalid_out(1 downto 0),
      rxdfeagcctrl_in(1 downto 0) => rxdfeagcctrl_in(1 downto 0),
      rxdfeagchold_in(0) => rxdfeagchold_in(0),
      rxdfeagcovrden_in(0) => rxdfeagcovrden_in(0),
      rxdfelfhold_in(0) => rxdfelfhold_in(0),
      rxdfelfovrden_in(0) => rxdfelfovrden_in(0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => rxdfetap10hold_in(0),
      rxdfetap10ovrden_in(0) => rxdfetap10ovrden_in(0),
      rxdfetap11hold_in(0) => rxdfetap11hold_in(0),
      rxdfetap11ovrden_in(0) => rxdfetap11ovrden_in(0),
      rxdfetap12hold_in(0) => rxdfetap12hold_in(0),
      rxdfetap12ovrden_in(0) => rxdfetap12ovrden_in(0),
      rxdfetap13hold_in(0) => rxdfetap13hold_in(0),
      rxdfetap13ovrden_in(0) => rxdfetap13ovrden_in(0),
      rxdfetap14hold_in(0) => rxdfetap14hold_in(0),
      rxdfetap14ovrden_in(0) => rxdfetap14ovrden_in(0),
      rxdfetap15hold_in(0) => rxdfetap15hold_in(0),
      rxdfetap15ovrden_in(0) => rxdfetap15ovrden_in(0),
      rxdfetap2hold_in(0) => rxdfetap2hold_in(0),
      rxdfetap2ovrden_in(0) => rxdfetap2ovrden_in(0),
      rxdfetap3hold_in(0) => rxdfetap3hold_in(0),
      rxdfetap3ovrden_in(0) => rxdfetap3ovrden_in(0),
      rxdfetap4hold_in(0) => rxdfetap4hold_in(0),
      rxdfetap4ovrden_in(0) => rxdfetap4ovrden_in(0),
      rxdfetap5hold_in(0) => rxdfetap5hold_in(0),
      rxdfetap5ovrden_in(0) => rxdfetap5ovrden_in(0),
      rxdfetap6hold_in(0) => rxdfetap6hold_in(0),
      rxdfetap6ovrden_in(0) => rxdfetap6ovrden_in(0),
      rxdfetap7hold_in(0) => rxdfetap7hold_in(0),
      rxdfetap7ovrden_in(0) => rxdfetap7ovrden_in(0),
      rxdfetap8hold_in(0) => rxdfetap8hold_in(0),
      rxdfetap8ovrden_in(0) => rxdfetap8ovrden_in(0),
      rxdfetap9hold_in(0) => rxdfetap9hold_in(0),
      rxdfetap9ovrden_in(0) => rxdfetap9ovrden_in(0),
      rxdfeuthold_in(0) => rxdfeuthold_in(0),
      rxdfeutovrden_in(0) => rxdfeutovrden_in(0),
      rxdfevphold_in(0) => rxdfevphold_in(0),
      rxdfevpovrden_in(0) => rxdfevpovrden_in(0),
      rxdfevsen_in(0) => rxdfevsen_in(0),
      rxdfexyden_in(0) => rxdfexyden_in(0),
      rxdlybypass_in(0) => rxdlybypass_in(0),
      rxdlyen_in(0) => rxdlyen_in(0),
      rxdlyovrden_in(0) => rxdlyovrden_in(0),
      rxdlysreset_in(0) => rxdlysreset_in(0),
      rxdlysresetdone_out(0) => rxdlysresetdone_out(0),
      rxelecidle_out(0) => rxelecidle_out(0),
      rxelecidlemode_in(1 downto 0) => rxelecidlemode_in(1 downto 0),
      rxgearboxslip_in(0) => rxgearboxslip_in(0),
      rxheader_out(5 downto 0) => rxheader_out(5 downto 0),
      rxheadervalid_out(1 downto 0) => rxheadervalid_out(1 downto 0),
      rxlatclk_in(0) => rxlatclk_in(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => rxlpmgchold_in(0),
      rxlpmgcovrden_in(0) => rxlpmgcovrden_in(0),
      rxlpmhfhold_in(0) => rxlpmhfhold_in(0),
      rxlpmhfovrden_in(0) => rxlpmhfovrden_in(0),
      rxlpmlfhold_in(0) => rxlpmlfhold_in(0),
      rxlpmlfklovrden_in(0) => rxlpmlfklovrden_in(0),
      rxlpmoshold_in(0) => rxlpmoshold_in(0),
      rxlpmosovrden_in(0) => rxlpmosovrden_in(0),
      rxmcommaalignen_in(0) => rxmcommaalignen_in(0),
      rxmonitorout_out(6 downto 0) => rxmonitorout_out(6 downto 0),
      rxmonitorsel_in(1 downto 0) => rxmonitorsel_in(1 downto 0),
      rxoobreset_in(0) => rxoobreset_in(0),
      rxoscalreset_in(0) => rxoscalreset_in(0),
      rxoshold_in(0) => rxoshold_in(0),
      rxosintcfg_in(3 downto 0) => rxosintcfg_in(3 downto 0),
      rxosintdone_out(0) => rxosintdone_out(0),
      rxosinten_in(0) => rxosinten_in(0),
      rxosinthold_in(0) => rxosinthold_in(0),
      rxosintovrden_in(0) => rxosintovrden_in(0),
      rxosintstarted_out(0) => rxosintstarted_out(0),
      rxosintstrobe_in(0) => rxosintstrobe_in(0),
      rxosintstrobedone_out(0) => rxosintstrobedone_out(0),
      rxosintstrobestarted_out(0) => rxosintstrobestarted_out(0),
      rxosinttestovrden_in(0) => rxosinttestovrden_in(0),
      rxosovrden_in(0) => rxosovrden_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => rxoutclkfabric_out(0),
      rxoutclkpcs_out(0) => rxoutclkpcs_out(0),
      rxoutclksel_in(2 downto 0) => rxoutclksel_in(2 downto 0),
      rxpcommaalignen_in(0) => rxpcommaalignen_in(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => rxphalign_in(0),
      rxphaligndone_out(0) => rxphaligndone_out(0),
      rxphalignen_in(0) => rxphalignen_in(0),
      rxphalignerr_out(0) => rxphalignerr_out(0),
      rxphdlypd_in(0) => rxphdlypd_in(0),
      rxphdlyreset_in(0) => rxphdlyreset_in(0),
      rxphovrden_in(0) => rxphovrden_in(0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxqpien_in(0) => rxqpien_in(0),
      rxqpisenn_out(0) => rxqpisenn_out(0),
      rxqpisenp_out(0) => rxqpisenp_out(0),
      rxrate_in(2 downto 0) => rxrate_in(2 downto 0),
      rxratedone_out(0) => rxratedone_out(0),
      rxratemode_in(0) => rxratemode_in(0),
      rxrecclkout_out(0) => rxrecclkout_out(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxslide_in(0) => rxslide_in(0),
      rxsliderdy_out(0) => rxsliderdy_out(0),
      rxslipdone_out(0) => rxslipdone_out(0),
      rxslipoutclk_in(0) => rxslipoutclk_in(0),
      rxslipoutclkrdy_out(0) => rxslipoutclkrdy_out(0),
      rxslippma_in(0) => rxslippma_in(0),
      rxslippmardy_out(0) => rxslippmardy_out(0),
      rxstartofseq_out(1 downto 0) => rxstartofseq_out(1 downto 0),
      rxstatus_out(2 downto 0) => rxstatus_out(2 downto 0),
      rxsyncallin_in(0) => rxsyncallin_in(0),
      rxsyncdone_out(0) => rxsyncdone_out(0),
      rxsyncin_in(0) => rxsyncin_in(0),
      rxsyncmode_in(0) => rxsyncmode_in(0),
      rxsyncout_out(0) => rxsyncout_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => rxvalid_out(0),
      sigvalidclk_in(0) => sigvalidclk_in(0),
      tx8b10bbypass_in(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      tx8b10ben_in(0) => tx8b10ben_in(0),
      txbufdiffctrl_in(2 downto 0) => txbufdiffctrl_in(2 downto 0),
      txbufstatus_out(1 downto 0) => txbufstatus_out(1 downto 0),
      txcomfinish_out(0) => txcomfinish_out(0),
      txcominit_in(0) => txcominit_in(0),
      txcomsas_in(0) => txcomsas_in(0),
      txcomwake_in(0) => txcomwake_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txctrl2_in(7 downto 0) => txctrl2_in(7 downto 0),
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdataextendrsvd_in(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      txdeemph_in(0) => txdeemph_in(0),
      txdetectrx_in(0) => txdetectrx_in(0),
      txdiffctrl_in(3 downto 0) => txdiffctrl_in(3 downto 0),
      txdiffpd_in(0) => txdiffpd_in(0),
      txdlybypass_in(0) => txdlybypass_in(0),
      txdlyen_in(0) => txdlyen_in(0),
      txdlyhold_in(0) => txdlyhold_in(0),
      txdlyovrden_in(0) => txdlyovrden_in(0),
      txdlysreset_in(0) => txdlysreset_in(0),
      txdlysresetdone_out(0) => txdlysresetdone_out(0),
      txdlyupdown_in(0) => txdlyupdown_in(0),
      txelecidle_in(0) => txelecidle_in(0),
      txheader_in(5 downto 0) => txheader_in(5 downto 0),
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => txlatclk_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txmargin_in(2 downto 0) => txmargin_in(2 downto 0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => txoutclkfabric_out(0),
      txoutclkpcs_out(0) => txoutclkpcs_out(0),
      txoutclksel_in(2 downto 0) => txoutclksel_in(2 downto 0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => txphalign_in(0),
      txphaligndone_out(0) => txphaligndone_out(0),
      txphalignen_in(0) => txphalignen_in(0),
      txphdlypd_in(0) => txphdlypd_in(0),
      txphdlyreset_in(0) => txphdlyreset_in(0),
      txphdlytstclk_in(0) => txphdlytstclk_in(0),
      txphinit_in(0) => txphinit_in(0),
      txphinitdone_out(0) => txphinitdone_out(0),
      txphovrden_in(0) => txphovrden_in(0),
      txpippmen_in(0) => txpippmen_in(0),
      txpippmovrden_in(0) => txpippmovrden_in(0),
      txpippmpd_in(0) => txpippmpd_in(0),
      txpippmsel_in(0) => txpippmsel_in(0),
      txpippmstepsize_in(4 downto 0) => txpippmstepsize_in(4 downto 0),
      txpisopd_in(0) => txpisopd_in(0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmareset_in(0) => txpmareset_in(0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txpostcursorinv_in(0) => txpostcursorinv_in(0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprecursorinv_in(0) => txprecursorinv_in(0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txqpibiasen_in(0) => txqpibiasen_in(0),
      txqpisenn_out(0) => txqpisenn_out(0),
      txqpisenp_out(0) => txqpisenp_out(0),
      txqpistrongpdown_in(0) => txqpistrongpdown_in(0),
      txqpiweakpup_in(0) => txqpiweakpup_in(0),
      txrate_in(2 downto 0) => txrate_in(2 downto 0),
      txratedone_out(0) => txratedone_out(0),
      txratemode_in(0) => txratemode_in(0),
      txresetdone_out(0) => txresetdone_out(0),
      txsequence_in(6 downto 0) => txsequence_in(6 downto 0),
      txswing_in(0) => txswing_in(0),
      txsyncallin_in(0) => txsyncallin_in(0),
      txsyncdone_out(0) => txsyncdone_out(0),
      txsyncin_in(0) => txsyncin_in(0),
      txsyncmode_in(0) => txsyncmode_in(0),
      txsyncout_out(0) => txsyncout_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_01e2_xpcs_0_gt,bd_01e2_xpcs_0_gt_gtwizard_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_01e2_xpcs_0_gt_gtwizard_top,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_bufgtce_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_bufgtcemask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_bufgtdiv_out_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_bufgtreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_bufgtrstmask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_cpllfbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_cplllock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_cpllrefclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dmonitoroutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_drpdo_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_drprdy_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtpowergood_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtrefclkmonitor_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userdata_rx_out_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_gtytxn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtytxp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierategen3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierateidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierateqpllpd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcierateqpllreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pciesynctxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieusergen3rdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieuserphystatusrst_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieuserratestart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcsrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_phystatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pinrsrvdas_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_pmarsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_pmarsvdout1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_powerpresent_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0outclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0outrefclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outrefclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qplldmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_qplldmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_refclkoutmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_refclkoutmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_resetexception_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxbyterealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcdrphdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanbondseq_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanrealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchbondo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_rxckcaldone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxclkcorcnt_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcominitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcommadet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcomsasdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcomwakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxctrl0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxctrl1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxctrl2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxctrl3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxdataextendrsvd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxelecidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxlfpstresetdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_rxosintdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstrobedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstrobestarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxphalignerr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk0_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclk0sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk1_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclk1sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclkout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxsliderdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslipdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslipoutclkrdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslippmardy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_rxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxvalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_sdm0finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_sdm0testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_sdm1finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_sdm1testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_tcongpo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_tconrsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txcomfinish_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txdccdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txphinitdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdaddr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubden_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdi_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdwe_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubmdmtdo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubtxuart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of inst : label is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of inst : label is "2578.125000";
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of inst : label is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of inst : label is "100.000000";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of inst : label is 17;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of inst : label is 0;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of inst : label is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of inst : label is 1;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of inst : label is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of inst : label is 1;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of inst : label is 1;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of inst : label is 1;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of inst : label is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of inst : label is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of inst : label is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of inst : label is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of inst : label is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of inst : label is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of inst : label is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of inst : label is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of inst : label is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of inst : label is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of inst : label is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of inst : label is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of inst : label is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of inst : label is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of inst : label is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of inst : label is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of inst : label is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of inst : label is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of inst : label is 4;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of inst : label is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of inst : label is 32;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of inst : label is "10.312500";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of inst : label is 112;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of inst : label is "312.500000";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of inst : label is 4;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of inst : label is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of inst : label is "156.250000";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of inst : label is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 2;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of inst : label is 64;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of inst : label is "156.250000";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of inst : label is "312.500000";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of inst : label is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of inst : label is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : string;
  attribute C_SIM_CPLL_CAL_BYPASS of inst : label is "1'b0";
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of inst : label is 1;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of inst : label is 0;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of inst : label is 1;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of inst : label is "312.500000";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of inst : label is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of inst : label is 4;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of inst : label is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of inst : label is 32;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of inst : label is "10.312500";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of inst : label is 112;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of inst : label is "312.500000";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of inst : label is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of inst : label is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of inst : label is "156.250000";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 2;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of inst : label is 64;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of inst : label is "156.250000";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of inst : label is "312.500000";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0_gt_gtwizard_top
     port map (
      bgbypassb_in(0) => '1',
      bgmonitorenb_in(0) => '1',
      bgpdb_in(0) => '1',
      bgrcalovrd_in(4 downto 0) => B"11111",
      bgrcalovrdenb_in(0) => '1',
      bufgtce_out(2 downto 0) => NLW_inst_bufgtce_out_UNCONNECTED(2 downto 0),
      bufgtcemask_out(2 downto 0) => NLW_inst_bufgtcemask_out_UNCONNECTED(2 downto 0),
      bufgtdiv_out(8 downto 0) => NLW_inst_bufgtdiv_out_UNCONNECTED(8 downto 0),
      bufgtreset_out(2 downto 0) => NLW_inst_bufgtreset_out_UNCONNECTED(2 downto 0),
      bufgtrstmask_out(2 downto 0) => NLW_inst_bufgtrstmask_out_UNCONNECTED(2 downto 0),
      cdrstepdir_in(0) => '0',
      cdrstepsq_in(0) => '0',
      cdrstepsx_in(0) => '0',
      cfgreset_in(0) => '0',
      clkrsvd0_in(0) => '0',
      clkrsvd1_in(0) => '0',
      cpllfbclklost_out(0) => NLW_inst_cpllfbclklost_out_UNCONNECTED(0),
      cpllfreqlock_in(0) => '0',
      cplllock_out(0) => NLW_inst_cplllock_out_UNCONNECTED(0),
      cplllockdetclk_in(0) => '0',
      cplllocken_in(0) => '0',
      cpllpd_in(0) => cpllpd_in(0),
      cpllrefclklost_out(0) => NLW_inst_cpllrefclklost_out_UNCONNECTED(0),
      cpllrefclksel_in(2 downto 0) => B"001",
      cpllreset_in(0) => '1',
      dmonfiforeset_in(0) => '0',
      dmonitorclk_in(0) => '0',
      dmonitorout_out(16 downto 0) => dmonitorout_out(16 downto 0),
      dmonitoroutclk_out(0) => NLW_inst_dmonitoroutclk_out_UNCONNECTED(0),
      drpaddr_common_in(8 downto 0) => B"000000000",
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_common_in(0) => '0',
      drpclk_in(0) => drpclk_in(0),
      drpdi_common_in(15 downto 0) => B"0000000000000000",
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_common_out(15 downto 0) => NLW_inst_drpdo_common_out_UNCONNECTED(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_common_in(0) => '0',
      drpen_in(0) => drpen_in(0),
      drprdy_common_out(0) => NLW_inst_drprdy_common_out_UNCONNECTED(0),
      drprdy_out(0) => drprdy_out(0),
      drprst_in(0) => '0',
      drpwe_common_in(0) => '0',
      drpwe_in(0) => drpwe_in(0),
      elpcaldvorwren_in(0) => '0',
      elpcalpaorwren_in(0) => '0',
      evoddphicaldone_in(0) => '0',
      evoddphicalstart_in(0) => '0',
      evoddphidrden_in(0) => '0',
      evoddphidwren_in(0) => '0',
      evoddphixrden_in(0) => '0',
      evoddphixwren_in(0) => '0',
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanmode_in(0) => '0',
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => eyescantrigger_in(0),
      freqos_in(0) => '0',
      gtgrefclk0_in(0) => '0',
      gtgrefclk1_in(0) => '0',
      gtgrefclk_in(0) => '0',
      gthrxn_in(0) => gthrxn_in(0),
      gthrxp_in(0) => gthrxp_in(0),
      gthtxn_out(0) => gthtxn_out(0),
      gthtxp_out(0) => gthtxp_out(0),
      gtnorthrefclk00_in(0) => '0',
      gtnorthrefclk01_in(0) => '0',
      gtnorthrefclk0_in(0) => '0',
      gtnorthrefclk10_in(0) => '0',
      gtnorthrefclk11_in(0) => '0',
      gtnorthrefclk1_in(0) => '0',
      gtpowergood_out(0) => NLW_inst_gtpowergood_out_UNCONNECTED(0),
      gtrefclk00_in(0) => '0',
      gtrefclk01_in(0) => '0',
      gtrefclk0_in(0) => '0',
      gtrefclk10_in(0) => '0',
      gtrefclk11_in(0) => '0',
      gtrefclk1_in(0) => '0',
      gtrefclkmonitor_out(0) => NLW_inst_gtrefclkmonitor_out_UNCONNECTED(0),
      gtresetsel_in(0) => '0',
      gtrsvd_in(15 downto 0) => B"0000000000000000",
      gtrxreset_in(0) => '0',
      gtrxresetsel_in(0) => '0',
      gtsouthrefclk00_in(0) => '0',
      gtsouthrefclk01_in(0) => '0',
      gtsouthrefclk0_in(0) => '0',
      gtsouthrefclk10_in(0) => '0',
      gtsouthrefclk11_in(0) => '0',
      gtsouthrefclk1_in(0) => '0',
      gttxreset_in(0) => '0',
      gttxresetsel_in(0) => '0',
      gtwiz_buffbypass_rx_done_out(0) => NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_error_out(0) => NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_reset_in(0) => '0',
      gtwiz_buffbypass_rx_start_user_in(0) => '0',
      gtwiz_buffbypass_tx_done_out(0) => NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_error_out(0) => NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_reset_in(0) => '0',
      gtwiz_buffbypass_tx_start_user_in(0) => '0',
      gtwiz_gthe3_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gthe3_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe3_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe4_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gthe4_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe4_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_gtye4_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gtye4_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gtye4_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => gtwiz_reset_qpll0lock_in(0),
      gtwiz_reset_qpll0reset_out(0) => gtwiz_reset_qpll0reset_out(0),
      gtwiz_reset_qpll1lock_in(0) => '0',
      gtwiz_reset_qpll1reset_out(0) => NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_in(0) => '0',
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_in(0) => '0',
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_in(0) => gtwiz_userclk_rx_active_in(0),
      gtwiz_userclk_rx_active_out(0) => NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED(0),
      gtwiz_userclk_rx_reset_in(0) => '0',
      gtwiz_userclk_rx_srcclk_out(0) => NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED(0),
      gtwiz_userclk_rx_usrclk2_out(0) => NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED(0),
      gtwiz_userclk_rx_usrclk_out(0) => NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED(0),
      gtwiz_userclk_tx_active_in(0) => gtwiz_userclk_tx_active_in(0),
      gtwiz_userclk_tx_active_out(0) => NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED(0),
      gtwiz_userclk_tx_reset_in(0) => '0',
      gtwiz_userclk_tx_srcclk_out(0) => NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED(0),
      gtwiz_userclk_tx_usrclk2_out(0) => NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED(0),
      gtwiz_userclk_tx_usrclk_out(0) => NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED(0),
      gtwiz_userdata_rx_out(63 downto 0) => NLW_inst_gtwiz_userdata_rx_out_UNCONNECTED(63 downto 0),
      gtwiz_userdata_tx_in(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      gtyrxn_in(0) => '0',
      gtyrxp_in(0) => '0',
      gtytxn_out(0) => NLW_inst_gtytxn_out_UNCONNECTED(0),
      gtytxp_out(0) => NLW_inst_gtytxp_out_UNCONNECTED(0),
      incpctrl_in(0) => '0',
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      looprsvd_in(0) => '0',
      lpbkrxtxseren_in(0) => '0',
      lpbktxrxseren_in(0) => '0',
      pcieeqrxeqadaptdone_in(0) => '0',
      pcierategen3_out(0) => NLW_inst_pcierategen3_out_UNCONNECTED(0),
      pcierateidle_out(0) => NLW_inst_pcierateidle_out_UNCONNECTED(0),
      pcierateqpll0_in(0) => '0',
      pcierateqpll1_in(0) => '0',
      pcierateqpllpd_out(1 downto 0) => NLW_inst_pcierateqpllpd_out_UNCONNECTED(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => NLW_inst_pcierateqpllreset_out_UNCONNECTED(1 downto 0),
      pcierstidle_in(0) => '0',
      pciersttxsyncstart_in(0) => '0',
      pciesynctxsyncdone_out(0) => NLW_inst_pciesynctxsyncdone_out_UNCONNECTED(0),
      pcieusergen3rdy_out(0) => NLW_inst_pcieusergen3rdy_out_UNCONNECTED(0),
      pcieuserphystatusrst_out(0) => NLW_inst_pcieuserphystatusrst_out_UNCONNECTED(0),
      pcieuserratedone_in(0) => '0',
      pcieuserratestart_out(0) => NLW_inst_pcieuserratestart_out_UNCONNECTED(0),
      pcsrsvdin2_in(4 downto 0) => B"00000",
      pcsrsvdin_in(15 downto 0) => pcsrsvdin_in(15 downto 0),
      pcsrsvdout_out(11 downto 0) => NLW_inst_pcsrsvdout_out_UNCONNECTED(11 downto 0),
      phystatus_out(0) => NLW_inst_phystatus_out_UNCONNECTED(0),
      pinrsrvdas_out(7 downto 0) => NLW_inst_pinrsrvdas_out_UNCONNECTED(7 downto 0),
      pmarsvd0_in(7 downto 0) => B"00000000",
      pmarsvd1_in(7 downto 0) => B"00000000",
      pmarsvdin_in(4 downto 0) => B"00000",
      pmarsvdout0_out(7 downto 0) => NLW_inst_pmarsvdout0_out_UNCONNECTED(7 downto 0),
      pmarsvdout1_out(7 downto 0) => NLW_inst_pmarsvdout1_out_UNCONNECTED(7 downto 0),
      powerpresent_out(0) => NLW_inst_powerpresent_out_UNCONNECTED(0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0clkrsvd0_in(0) => '0',
      qpll0clkrsvd1_in(0) => '0',
      qpll0fbclklost_out(0) => NLW_inst_qpll0fbclklost_out_UNCONNECTED(0),
      qpll0fbdiv_in(0) => '0',
      qpll0freqlock_in(0) => '0',
      qpll0lock_out(0) => NLW_inst_qpll0lock_out_UNCONNECTED(0),
      qpll0lockdetclk_in(0) => '0',
      qpll0locken_in(0) => '1',
      qpll0outclk_out(0) => NLW_inst_qpll0outclk_out_UNCONNECTED(0),
      qpll0outrefclk_out(0) => NLW_inst_qpll0outrefclk_out_UNCONNECTED(0),
      qpll0pd_in(0) => '0',
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll0refclklost_out(0) => NLW_inst_qpll0refclklost_out_UNCONNECTED(0),
      qpll0refclksel_in(2 downto 0) => B"001",
      qpll0reset_in(0) => '0',
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1clkrsvd0_in(0) => '0',
      qpll1clkrsvd1_in(0) => '0',
      qpll1fbclklost_out(0) => NLW_inst_qpll1fbclklost_out_UNCONNECTED(0),
      qpll1fbdiv_in(0) => '0',
      qpll1freqlock_in(0) => '0',
      qpll1lock_out(0) => NLW_inst_qpll1lock_out_UNCONNECTED(0),
      qpll1lockdetclk_in(0) => '0',
      qpll1locken_in(0) => '0',
      qpll1outclk_out(0) => NLW_inst_qpll1outclk_out_UNCONNECTED(0),
      qpll1outrefclk_out(0) => NLW_inst_qpll1outrefclk_out_UNCONNECTED(0),
      qpll1pd_in(0) => '1',
      qpll1refclk_in(0) => qpll1refclk_in(0),
      qpll1refclklost_out(0) => NLW_inst_qpll1refclklost_out_UNCONNECTED(0),
      qpll1refclksel_in(2 downto 0) => B"001",
      qpll1reset_in(0) => '1',
      qplldmonitor0_out(7 downto 0) => NLW_inst_qplldmonitor0_out_UNCONNECTED(7 downto 0),
      qplldmonitor1_out(7 downto 0) => NLW_inst_qplldmonitor1_out_UNCONNECTED(7 downto 0),
      qpllrsvd1_in(7 downto 0) => B"00000000",
      qpllrsvd2_in(4 downto 0) => B"00000",
      qpllrsvd3_in(4 downto 0) => B"00000",
      qpllrsvd4_in(7 downto 0) => B"00000000",
      rcalenb_in(0) => '1',
      refclkoutmonitor0_out(0) => NLW_inst_refclkoutmonitor0_out_UNCONNECTED(0),
      refclkoutmonitor1_out(0) => NLW_inst_refclkoutmonitor1_out_UNCONNECTED(0),
      resetexception_out(0) => NLW_inst_resetexception_out_UNCONNECTED(0),
      resetovrd_in(0) => '0',
      rstclkentx_in(0) => '0',
      rx8b10ben_in(0) => '0',
      rxafecfoken_in(0) => '0',
      rxbufreset_in(0) => rxbufreset_in(0),
      rxbufstatus_out(2 downto 0) => rxbufstatus_out(2 downto 0),
      rxbyteisaligned_out(0) => NLW_inst_rxbyteisaligned_out_UNCONNECTED(0),
      rxbyterealign_out(0) => NLW_inst_rxbyterealign_out_UNCONNECTED(0),
      rxcdrfreqreset_in(0) => '0',
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxcdrovrden_in(0) => '0',
      rxcdrphdone_out(0) => NLW_inst_rxcdrphdone_out_UNCONNECTED(0),
      rxcdrreset_in(0) => '0',
      rxcdrresetrsv_in(0) => '0',
      rxchanbondseq_out(0) => NLW_inst_rxchanbondseq_out_UNCONNECTED(0),
      rxchanisaligned_out(0) => NLW_inst_rxchanisaligned_out_UNCONNECTED(0),
      rxchanrealign_out(0) => NLW_inst_rxchanrealign_out_UNCONNECTED(0),
      rxchbonden_in(0) => '0',
      rxchbondi_in(4 downto 0) => B"00000",
      rxchbondlevel_in(2 downto 0) => B"000",
      rxchbondmaster_in(0) => '0',
      rxchbondo_out(4 downto 0) => NLW_inst_rxchbondo_out_UNCONNECTED(4 downto 0),
      rxchbondslave_in(0) => '0',
      rxckcaldone_out(0) => NLW_inst_rxckcaldone_out_UNCONNECTED(0),
      rxckcalreset_in(0) => '0',
      rxckcalstart_in(0) => '0',
      rxclkcorcnt_out(1 downto 0) => NLW_inst_rxclkcorcnt_out_UNCONNECTED(1 downto 0),
      rxcominitdet_out(0) => NLW_inst_rxcominitdet_out_UNCONNECTED(0),
      rxcommadet_out(0) => NLW_inst_rxcommadet_out_UNCONNECTED(0),
      rxcommadeten_in(0) => '0',
      rxcomsasdet_out(0) => NLW_inst_rxcomsasdet_out_UNCONNECTED(0),
      rxcomwakedet_out(0) => NLW_inst_rxcomwakedet_out_UNCONNECTED(0),
      rxctrl0_out(15 downto 0) => NLW_inst_rxctrl0_out_UNCONNECTED(15 downto 0),
      rxctrl1_out(15 downto 0) => NLW_inst_rxctrl1_out_UNCONNECTED(15 downto 0),
      rxctrl2_out(7 downto 0) => NLW_inst_rxctrl2_out_UNCONNECTED(7 downto 0),
      rxctrl3_out(7 downto 0) => NLW_inst_rxctrl3_out_UNCONNECTED(7 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => NLW_inst_rxdataextendrsvd_out_UNCONNECTED(7 downto 0),
      rxdatavalid_out(1 downto 0) => rxdatavalid_out(1 downto 0),
      rxdccforcestart_in(0) => '0',
      rxdfeagcctrl_in(1 downto 0) => B"01",
      rxdfeagchold_in(0) => '0',
      rxdfeagcovrden_in(0) => '0',
      rxdfecfokfcnum_in(0) => '0',
      rxdfecfokfen_in(0) => '0',
      rxdfecfokfpulse_in(0) => '0',
      rxdfecfokhold_in(0) => '0',
      rxdfecfokovren_in(0) => '0',
      rxdfekhhold_in(0) => '0',
      rxdfekhovrden_in(0) => '0',
      rxdfelfhold_in(0) => '0',
      rxdfelfovrden_in(0) => '0',
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => '0',
      rxdfetap10ovrden_in(0) => '0',
      rxdfetap11hold_in(0) => '0',
      rxdfetap11ovrden_in(0) => '0',
      rxdfetap12hold_in(0) => '0',
      rxdfetap12ovrden_in(0) => '0',
      rxdfetap13hold_in(0) => '0',
      rxdfetap13ovrden_in(0) => '0',
      rxdfetap14hold_in(0) => '0',
      rxdfetap14ovrden_in(0) => '0',
      rxdfetap15hold_in(0) => '0',
      rxdfetap15ovrden_in(0) => '0',
      rxdfetap2hold_in(0) => '0',
      rxdfetap2ovrden_in(0) => '0',
      rxdfetap3hold_in(0) => '0',
      rxdfetap3ovrden_in(0) => '0',
      rxdfetap4hold_in(0) => '0',
      rxdfetap4ovrden_in(0) => '0',
      rxdfetap5hold_in(0) => '0',
      rxdfetap5ovrden_in(0) => '0',
      rxdfetap6hold_in(0) => '0',
      rxdfetap6ovrden_in(0) => '0',
      rxdfetap7hold_in(0) => '0',
      rxdfetap7ovrden_in(0) => '0',
      rxdfetap8hold_in(0) => '0',
      rxdfetap8ovrden_in(0) => '0',
      rxdfetap9hold_in(0) => '0',
      rxdfetap9ovrden_in(0) => '0',
      rxdfeuthold_in(0) => '0',
      rxdfeutovrden_in(0) => '0',
      rxdfevphold_in(0) => '0',
      rxdfevpovrden_in(0) => '0',
      rxdfevsen_in(0) => '0',
      rxdfexyden_in(0) => '1',
      rxdlybypass_in(0) => '1',
      rxdlyen_in(0) => '0',
      rxdlyovrden_in(0) => '0',
      rxdlysreset_in(0) => '0',
      rxdlysresetdone_out(0) => NLW_inst_rxdlysresetdone_out_UNCONNECTED(0),
      rxelecidle_out(0) => NLW_inst_rxelecidle_out_UNCONNECTED(0),
      rxelecidlemode_in(1 downto 0) => B"11",
      rxeqtraining_in(0) => '0',
      rxgearboxslip_in(0) => rxgearboxslip_in(0),
      rxheader_out(5 downto 0) => rxheader_out(5 downto 0),
      rxheadervalid_out(1 downto 0) => rxheadervalid_out(1 downto 0),
      rxlatclk_in(0) => rxlatclk_in(0),
      rxlfpstresetdet_out(0) => NLW_inst_rxlfpstresetdet_out_UNCONNECTED(0),
      rxlfpsu2lpexitdet_out(0) => NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED(0),
      rxlfpsu3wakedet_out(0) => NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => '0',
      rxlpmgcovrden_in(0) => '0',
      rxlpmhfhold_in(0) => '0',
      rxlpmhfovrden_in(0) => '0',
      rxlpmlfhold_in(0) => '0',
      rxlpmlfklovrden_in(0) => '0',
      rxlpmoshold_in(0) => '0',
      rxlpmosovrden_in(0) => '0',
      rxmcommaalignen_in(0) => '0',
      rxmonitorout_out(6 downto 0) => NLW_inst_rxmonitorout_out_UNCONNECTED(6 downto 0),
      rxmonitorsel_in(1 downto 0) => B"00",
      rxoobreset_in(0) => '0',
      rxoscalreset_in(0) => '0',
      rxoshold_in(0) => '0',
      rxosintcfg_in(3 downto 0) => B"1101",
      rxosintdone_out(0) => NLW_inst_rxosintdone_out_UNCONNECTED(0),
      rxosinten_in(0) => '1',
      rxosinthold_in(0) => '0',
      rxosintovrden_in(0) => '0',
      rxosintstarted_out(0) => NLW_inst_rxosintstarted_out_UNCONNECTED(0),
      rxosintstrobe_in(0) => '0',
      rxosintstrobedone_out(0) => NLW_inst_rxosintstrobedone_out_UNCONNECTED(0),
      rxosintstrobestarted_out(0) => NLW_inst_rxosintstrobestarted_out_UNCONNECTED(0),
      rxosinttestovrden_in(0) => '0',
      rxosovrden_in(0) => '0',
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => NLW_inst_rxoutclkfabric_out_UNCONNECTED(0),
      rxoutclkpcs_out(0) => NLW_inst_rxoutclkpcs_out_UNCONNECTED(0),
      rxoutclksel_in(2 downto 0) => B"101",
      rxpcommaalignen_in(0) => '0',
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => '0',
      rxphaligndone_out(0) => NLW_inst_rxphaligndone_out_UNCONNECTED(0),
      rxphalignen_in(0) => '0',
      rxphalignerr_out(0) => NLW_inst_rxphalignerr_out_UNCONNECTED(0),
      rxphdlypd_in(0) => '1',
      rxphdlyreset_in(0) => '0',
      rxphovrden_in(0) => '0',
      rxpllclksel_in(1 downto 0) => B"11",
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxprogdivreset_in(0) => '0',
      rxqpien_in(0) => '0',
      rxqpisenn_out(0) => NLW_inst_rxqpisenn_out_UNCONNECTED(0),
      rxqpisenp_out(0) => NLW_inst_rxqpisenp_out_UNCONNECTED(0),
      rxrate_in(2 downto 0) => rxrate_in(2 downto 0),
      rxratedone_out(0) => NLW_inst_rxratedone_out_UNCONNECTED(0),
      rxratemode_in(0) => '0',
      rxrecclk0_sel_out(1 downto 0) => NLW_inst_rxrecclk0_sel_out_UNCONNECTED(1 downto 0),
      rxrecclk0sel_out(0) => NLW_inst_rxrecclk0sel_out_UNCONNECTED(0),
      rxrecclk1_sel_out(1 downto 0) => NLW_inst_rxrecclk1_sel_out_UNCONNECTED(1 downto 0),
      rxrecclk1sel_out(0) => NLW_inst_rxrecclk1sel_out_UNCONNECTED(0),
      rxrecclkout_out(0) => NLW_inst_rxrecclkout_out_UNCONNECTED(0),
      rxresetdone_out(0) => NLW_inst_rxresetdone_out_UNCONNECTED(0),
      rxslide_in(0) => '0',
      rxsliderdy_out(0) => NLW_inst_rxsliderdy_out_UNCONNECTED(0),
      rxslipdone_out(0) => NLW_inst_rxslipdone_out_UNCONNECTED(0),
      rxslipoutclk_in(0) => '0',
      rxslipoutclkrdy_out(0) => NLW_inst_rxslipoutclkrdy_out_UNCONNECTED(0),
      rxslippma_in(0) => '0',
      rxslippmardy_out(0) => NLW_inst_rxslippmardy_out_UNCONNECTED(0),
      rxstartofseq_out(1 downto 0) => rxstartofseq_out(1 downto 0),
      rxstatus_out(2 downto 0) => NLW_inst_rxstatus_out_UNCONNECTED(2 downto 0),
      rxsyncallin_in(0) => '0',
      rxsyncdone_out(0) => NLW_inst_rxsyncdone_out_UNCONNECTED(0),
      rxsyncin_in(0) => '0',
      rxsyncmode_in(0) => '0',
      rxsyncout_out(0) => NLW_inst_rxsyncout_out_UNCONNECTED(0),
      rxsysclksel_in(1 downto 0) => B"10",
      rxtermination_in(0) => '0',
      rxuserrdy_in(0) => '1',
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => NLW_inst_rxvalid_out_UNCONNECTED(0),
      sdm0data_in(0) => '0',
      sdm0finalout_out(0) => NLW_inst_sdm0finalout_out_UNCONNECTED(0),
      sdm0reset_in(0) => '0',
      sdm0testdata_out(0) => NLW_inst_sdm0testdata_out_UNCONNECTED(0),
      sdm0toggle_in(0) => '0',
      sdm0width_in(0) => '0',
      sdm1data_in(0) => '0',
      sdm1finalout_out(0) => NLW_inst_sdm1finalout_out_UNCONNECTED(0),
      sdm1reset_in(0) => '0',
      sdm1testdata_out(0) => NLW_inst_sdm1testdata_out_UNCONNECTED(0),
      sdm1toggle_in(0) => '0',
      sdm1width_in(0) => '0',
      sigvalidclk_in(0) => '0',
      tcongpi_in(0) => '0',
      tcongpo_out(0) => NLW_inst_tcongpo_out_UNCONNECTED(0),
      tconpowerup_in(0) => '0',
      tconreset_in(0) => '0',
      tconrsvdin1_in(0) => '0',
      tconrsvdout0_out(0) => NLW_inst_tconrsvdout0_out_UNCONNECTED(0),
      tstin_in(19 downto 0) => B"00000000000000000000",
      tx8b10bbypass_in(7 downto 0) => B"00000000",
      tx8b10ben_in(0) => '0',
      txbufdiffctrl_in(2 downto 0) => B"000",
      txbufstatus_out(1 downto 0) => txbufstatus_out(1 downto 0),
      txcomfinish_out(0) => NLW_inst_txcomfinish_out_UNCONNECTED(0),
      txcominit_in(0) => '0',
      txcomsas_in(0) => '0',
      txcomwake_in(0) => '0',
      txctrl0_in(15 downto 0) => B"0000000000000000",
      txctrl1_in(15 downto 0) => B"0000000000000000",
      txctrl2_in(7 downto 0) => B"00000000",
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdataextendrsvd_in(7 downto 0) => B"00000000",
      txdccdone_out(0) => NLW_inst_txdccdone_out_UNCONNECTED(0),
      txdccforcestart_in(0) => '0',
      txdccreset_in(0) => '0',
      txdeemph_in(0) => '0',
      txdetectrx_in(0) => '0',
      txdiffctrl_in(3 downto 0) => txdiffctrl_in(3 downto 0),
      txdiffpd_in(0) => '0',
      txdlybypass_in(0) => '1',
      txdlyen_in(0) => '0',
      txdlyhold_in(0) => '0',
      txdlyovrden_in(0) => '0',
      txdlysreset_in(0) => '0',
      txdlysresetdone_out(0) => NLW_inst_txdlysresetdone_out_UNCONNECTED(0),
      txdlyupdown_in(0) => '0',
      txelecidle_in(0) => txelecidle_in(0),
      txelforcestart_in(0) => '0',
      txheader_in(5 downto 0) => txheader_in(5 downto 0),
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => txlatclk_in(0),
      txlfpstreset_in(0) => '0',
      txlfpsu2lpexit_in(0) => '0',
      txlfpsu3wake_in(0) => '0',
      txmaincursor_in(6 downto 0) => B"1000000",
      txmargin_in(2 downto 0) => B"000",
      txmuxdcdexhold_in(0) => '0',
      txmuxdcdorwren_in(0) => '0',
      txoneszeros_in(0) => '0',
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => NLW_inst_txoutclkfabric_out_UNCONNECTED(0),
      txoutclkpcs_out(0) => NLW_inst_txoutclkpcs_out_UNCONNECTED(0),
      txoutclksel_in(2 downto 0) => txoutclksel_in(2 downto 0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => '0',
      txphaligndone_out(0) => NLW_inst_txphaligndone_out_UNCONNECTED(0),
      txphalignen_in(0) => '0',
      txphdlypd_in(0) => '1',
      txphdlyreset_in(0) => '0',
      txphdlytstclk_in(0) => '0',
      txphinit_in(0) => '0',
      txphinitdone_out(0) => NLW_inst_txphinitdone_out_UNCONNECTED(0),
      txphovrden_in(0) => '0',
      txpippmen_in(0) => '0',
      txpippmovrden_in(0) => '0',
      txpippmpd_in(0) => '0',
      txpippmsel_in(0) => '0',
      txpippmstepsize_in(4 downto 0) => B"00000",
      txpisopd_in(0) => '0',
      txpllclksel_in(1 downto 0) => B"11",
      txpmareset_in(0) => txpmareset_in(0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txpostcursorinv_in(0) => '0',
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprecursorinv_in(0) => '0',
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_in(0) => '0',
      txqpibiasen_in(0) => '0',
      txqpisenn_out(0) => NLW_inst_txqpisenn_out_UNCONNECTED(0),
      txqpisenp_out(0) => NLW_inst_txqpisenp_out_UNCONNECTED(0),
      txqpistrongpdown_in(0) => '0',
      txqpiweakpup_in(0) => '0',
      txrate_in(2 downto 0) => B"000",
      txratedone_out(0) => NLW_inst_txratedone_out_UNCONNECTED(0),
      txratemode_in(0) => '0',
      txresetdone_out(0) => NLW_inst_txresetdone_out_UNCONNECTED(0),
      txsequence_in(6 downto 0) => txsequence_in(6 downto 0),
      txswing_in(0) => '0',
      txsyncallin_in(0) => '0',
      txsyncdone_out(0) => NLW_inst_txsyncdone_out_UNCONNECTED(0),
      txsyncin_in(0) => '0',
      txsyncmode_in(0) => '0',
      txsyncout_out(0) => NLW_inst_txsyncout_out_UNCONNECTED(0),
      txsysclksel_in(1 downto 0) => B"10",
      txuserrdy_in(0) => '1',
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0),
      ubcfgstreamen_in(0) => '0',
      ubdaddr_out(0) => NLW_inst_ubdaddr_out_UNCONNECTED(0),
      ubden_out(0) => NLW_inst_ubden_out_UNCONNECTED(0),
      ubdi_out(0) => NLW_inst_ubdi_out_UNCONNECTED(0),
      ubdo_in(0) => '0',
      ubdrdy_in(0) => '0',
      ubdwe_out(0) => NLW_inst_ubdwe_out_UNCONNECTED(0),
      ubenable_in(0) => '0',
      ubgpi_in(0) => '0',
      ubintr_in(0) => '0',
      ubiolmbrst_in(0) => '0',
      ubmbrst_in(0) => '0',
      ubmdmcapture_in(0) => '0',
      ubmdmdbgrst_in(0) => '0',
      ubmdmdbgupdate_in(0) => '0',
      ubmdmregen_in(0) => '0',
      ubmdmshift_in(0) => '0',
      ubmdmsysrst_in(0) => '0',
      ubmdmtck_in(0) => '0',
      ubmdmtdi_in(0) => '0',
      ubmdmtdo_out(0) => NLW_inst_ubmdmtdo_out_UNCONNECTED(0),
      ubrsvdout_out(0) => NLW_inst_ubrsvdout_out_UNCONNECTED(0),
      ubtxuart_out(0) => NLW_inst_ubtxuart_out_UNCONNECTED(0)
    );
end STRUCTURE;
