-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Sun May 13 22:59:01 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_axi_10g_ethernet_0_0_sim_netlist.vhdl
-- Design      : shell_axi_10g_ethernet_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2 is
  port (
    areset_coreclk_out : out STD_LOGIC;
    areset_datapathclk_out : out STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    dclk : in STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    mac_rx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    mac_status_vector : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mac_tx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    pcs_pma_configuration_vector : in STD_LOGIC_VECTOR ( 535 downto 0 );
    pcs_pma_status_vector : out STD_LOGIC_VECTOR ( 447 downto 0 );
    pcspma_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0lock_out : out STD_LOGIC;
    qpll0outclk_out : out STD_LOGIC;
    qpll0outrefclk_out : out STD_LOGIC;
    refclk_n : in STD_LOGIC;
    refclk_p : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    resetdone_out : out STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    rx_statistics_valid : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    s_axis_pause_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_pause_tvalid : in STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_tvalid : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    sim_speedup_control : in STD_LOGIC;
    tx_axis_aresetn : in STD_LOGIC;
    tx_disable : out STD_LOGIC;
    tx_fault : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_statistics_valid : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2 : entity is "shell_axi_10g_ethernet_0_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_dcm_locked_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_dcm_locked_driver_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_pma_pmd_type_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_pma_pmd_type_driver_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xmac_0 is
  port (
    tx_clk0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_axis_aresetn : in STD_LOGIC;
    tx_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tvalid : in STD_LOGIC;
    tx_axis_tlast : in STD_LOGIC;
    tx_axis_tuser : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tready : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    tx_statistics_valid : out STD_LOGIC;
    pause_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pause_req : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_tvalid : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    tx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    rx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_dcm_locked : in STD_LOGIC;
    xgmii_txd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk0 : in STD_LOGIC;
    rx_dcm_locked : in STD_LOGIC;
    xgmii_rxd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xmac_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0 is
  port (
    dclk : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    refclk_p : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    sim_speedup_control : in STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    qpll0outclk_out : out STD_LOGIC;
    qpll0outrefclk_out : out STD_LOGIC;
    qpll0lock_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    areset_datapathclk_out : out STD_LOGIC;
    areset_coreclk_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 535 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 447 downto 0 );
    core_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    resetdone_out : out STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    drp_req : out STD_LOGIC;
    drp_gnt : in STD_LOGIC;
    core_to_gt_drpen : out STD_LOGIC;
    core_to_gt_drpwe : out STD_LOGIC;
    core_to_gt_drpaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    core_to_gt_drpdi : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt_drprdy : out STD_LOGIC;
    gt_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt_drpen : in STD_LOGIC;
    gt_drpwe : in STD_LOGIC;
    gt_drpaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    core_to_gt_drprdy : in STD_LOGIC;
    core_to_gt_drpdo : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pma_pmd_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_disable : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0;
  signal dcm_locked_driver_dout : STD_LOGIC;
  signal pma_pmd_type_driver_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^txusrclk2_out\ : STD_LOGIC;
  signal xmac_xgmii_xgmac_RXC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xmac_xgmii_xgmac_RXD : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xmac_xgmii_xgmac_TXC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xmac_xgmii_xgmac_TXD : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xpcs_core_to_gt_drp_DADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xpcs_core_to_gt_drp_DEN : STD_LOGIC;
  signal xpcs_core_to_gt_drp_DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xpcs_core_to_gt_drp_DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xpcs_core_to_gt_drp_DRDY : STD_LOGIC;
  signal xpcs_core_to_gt_drp_DWE : STD_LOGIC;
  signal xpcs_drp_req : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dcm_locked_driver : label is "xlconstant_v1_1_4_xlconstant,Vivado 2018.1";
  attribute X_CORE_INFO of pma_pmd_type_driver : label is "xlconstant_v1_1_4_xlconstant,Vivado 2018.1";
  attribute X_CORE_INFO of xmac : label is "ten_gig_eth_mac_v15_1_5,Vivado 2018.1";
  attribute X_CORE_INFO of xpcs : label is "ten_gig_eth_pcs_pma_v6_0_12,Vivado 2018.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of areset_coreclk_out : signal is "xilinx.com:signal:reset:1.0 RST.ARESET_CORECLK_OUT RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of areset_coreclk_out : signal is "XIL_INTERFACENAME RST.ARESET_CORECLK_OUT, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of areset_datapathclk_out : signal is "xilinx.com:signal:reset:1.0 RST.ARESET_DATAPATHCLK_OUT RST";
  attribute X_INTERFACE_PARAMETER of areset_datapathclk_out : signal is "XIL_INTERFACENAME RST.ARESET_DATAPATHCLK_OUT, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of coreclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.CORECLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of coreclk_out : signal is "XIL_INTERFACENAME CLK.CORECLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_coreclk_out, FREQ_HZ 156250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of dclk : signal is "xilinx.com:signal:clock:1.0 CLK.DCLK CLK";
  attribute X_INTERFACE_PARAMETER of dclk : signal is "XIL_INTERFACENAME CLK.DCLK, CLK_DOMAIN shell_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, PHASE 0.0";
  attribute X_INTERFACE_INFO of gtrxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.GTRXRESET_OUT RST";
  attribute X_INTERFACE_PARAMETER of gtrxreset_out : signal is "XIL_INTERFACENAME RST.GTRXRESET_OUT, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of gttxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.GTTXRESET_OUT RST";
  attribute X_INTERFACE_PARAMETER of gttxreset_out : signal is "XIL_INTERFACENAME RST.GTTXRESET_OUT, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of m_axis_rx_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TLAST";
  attribute X_INTERFACE_INFO of m_axis_rx_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TUSER";
  attribute X_INTERFACE_INFO of m_axis_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TVALID";
  attribute X_INTERFACE_INFO of qpll0outclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.QPLL0OUTCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of qpll0outclk_out : signal is "XIL_INTERFACENAME CLK.QPLL0OUTCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_qpll0outclk_out, FREQ_HZ 156250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of qpll0outrefclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.QPLL0OUTREFCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of qpll0outrefclk_out : signal is "XIL_INTERFACENAME CLK.QPLL0OUTREFCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_qpll0outrefclk_out, FREQ_HZ 156250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of rx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.RX_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of rx_axis_aresetn : signal is "XIL_INTERFACENAME RST.RX_AXIS_ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of rx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid";
  attribute X_INTERFACE_INFO of rxrecclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.RXRECCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of rxrecclk_out : signal is "XIL_INTERFACENAME CLK.RXRECCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_rxrecclk_out, FREQ_HZ 156250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axis_pause_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TVALID";
  attribute X_INTERFACE_INFO of s_axis_tx_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TLAST";
  attribute X_INTERFACE_INFO of s_axis_tx_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TREADY";
  attribute X_INTERFACE_INFO of s_axis_tx_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TVALID";
  attribute X_INTERFACE_INFO of tx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.TX_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of tx_axis_aresetn : signal is "XIL_INTERFACENAME RST.TX_AXIS_ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of tx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid";
  attribute X_INTERFACE_INFO of txusrclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK2_OUT CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk2_out : signal is "XIL_INTERFACENAME CLK.TXUSRCLK2_OUT, ASSOCIATED_ASYNC_RESET tx_axis_aresetn:rx_axis_aresetn, ASSOCIATED_BUSIF m_axis_rx:s_axis_pause:s_axis_tx, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of txusrclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk_out : signal is "XIL_INTERFACENAME CLK.TXUSRCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk_out, FREQ_HZ 312500000, PHASE 0.000";
  attribute X_INTERFACE_INFO of m_axis_rx_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_rx_tdata : signal is "XIL_INTERFACENAME m_axis_rx, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of m_axis_rx_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP";
  attribute X_INTERFACE_INFO of rx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector";
  attribute X_INTERFACE_INFO of s_axis_pause_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_pause_tdata : signal is "XIL_INTERFACENAME s_axis_pause, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axis_tx_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tx_tdata : signal is "XIL_INTERFACENAME s_axis_tx, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axis_tx_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tx_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TUSER";
  attribute X_INTERFACE_INFO of tx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector";
begin
  txusrclk2_out <= \^txusrclk2_out\;
dcm_locked_driver: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_dcm_locked_driver_0
     port map (
      dout(0) => dcm_locked_driver_dout
    );
pma_pmd_type_driver: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_pma_pmd_type_driver_0
     port map (
      dout(2 downto 0) => pma_pmd_type_driver_dout(2 downto 0)
    );
xmac: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xmac_0
     port map (
      pause_req => s_axis_pause_tvalid,
      pause_val(15 downto 0) => s_axis_pause_tdata(15 downto 0),
      reset => reset,
      rx_axis_aresetn => rx_axis_aresetn,
      rx_axis_tdata(63 downto 0) => m_axis_rx_tdata(63 downto 0),
      rx_axis_tkeep(7 downto 0) => m_axis_rx_tkeep(7 downto 0),
      rx_axis_tlast => m_axis_rx_tlast,
      rx_axis_tuser => m_axis_rx_tuser,
      rx_axis_tvalid => m_axis_rx_tvalid,
      rx_clk0 => \^txusrclk2_out\,
      rx_configuration_vector(79 downto 0) => mac_rx_configuration_vector(79 downto 0),
      rx_dcm_locked => dcm_locked_driver_dout,
      rx_statistics_valid => rx_statistics_valid,
      rx_statistics_vector(29 downto 0) => rx_statistics_vector(29 downto 0),
      status_vector(2 downto 0) => mac_status_vector(2 downto 0),
      tx_axis_aresetn => tx_axis_aresetn,
      tx_axis_tdata(63 downto 0) => s_axis_tx_tdata(63 downto 0),
      tx_axis_tkeep(7 downto 0) => s_axis_tx_tkeep(7 downto 0),
      tx_axis_tlast => s_axis_tx_tlast,
      tx_axis_tready => s_axis_tx_tready,
      tx_axis_tuser => s_axis_tx_tuser(0),
      tx_axis_tvalid => s_axis_tx_tvalid,
      tx_clk0 => \^txusrclk2_out\,
      tx_configuration_vector(79 downto 0) => mac_tx_configuration_vector(79 downto 0),
      tx_dcm_locked => dcm_locked_driver_dout,
      tx_ifg_delay(7 downto 0) => tx_ifg_delay(7 downto 0),
      tx_statistics_valid => tx_statistics_valid,
      tx_statistics_vector(25 downto 0) => tx_statistics_vector(25 downto 0),
      xgmii_rxc(7 downto 0) => xmac_xgmii_xgmac_RXC(7 downto 0),
      xgmii_rxd(63 downto 0) => xmac_xgmii_xgmac_RXD(63 downto 0),
      xgmii_txc(7 downto 0) => xmac_xgmii_xgmac_TXC(7 downto 0),
      xgmii_txd(63 downto 0) => xmac_xgmii_xgmac_TXD(63 downto 0)
    );
xpcs: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0
     port map (
      areset_coreclk_out => areset_coreclk_out,
      areset_datapathclk_out => areset_datapathclk_out,
      configuration_vector(535 downto 0) => pcs_pma_configuration_vector(535 downto 0),
      core_status(7 downto 0) => pcspma_status(7 downto 0),
      core_to_gt_drpaddr(15 downto 0) => xpcs_core_to_gt_drp_DADDR(15 downto 0),
      core_to_gt_drpdi(15 downto 0) => xpcs_core_to_gt_drp_DI(15 downto 0),
      core_to_gt_drpdo(15 downto 0) => xpcs_core_to_gt_drp_DO(15 downto 0),
      core_to_gt_drpen => xpcs_core_to_gt_drp_DEN,
      core_to_gt_drprdy => xpcs_core_to_gt_drp_DRDY,
      core_to_gt_drpwe => xpcs_core_to_gt_drp_DWE,
      coreclk_out => coreclk_out,
      dclk => dclk,
      drp_gnt => xpcs_drp_req,
      drp_req => xpcs_drp_req,
      gt_drpaddr(15 downto 0) => xpcs_core_to_gt_drp_DADDR(15 downto 0),
      gt_drpdi(15 downto 0) => xpcs_core_to_gt_drp_DI(15 downto 0),
      gt_drpdo(15 downto 0) => xpcs_core_to_gt_drp_DO(15 downto 0),
      gt_drpen => xpcs_core_to_gt_drp_DEN,
      gt_drprdy => xpcs_core_to_gt_drp_DRDY,
      gt_drpwe => xpcs_core_to_gt_drp_DWE,
      gtrxreset_out => gtrxreset_out,
      gttxreset_out => gttxreset_out,
      pma_pmd_type(2 downto 0) => pma_pmd_type_driver_dout(2 downto 0),
      qpll0lock_out => qpll0lock_out,
      qpll0outclk_out => qpll0outclk_out,
      qpll0outrefclk_out => qpll0outrefclk_out,
      refclk_n => refclk_n,
      refclk_p => refclk_p,
      reset => reset,
      reset_counter_done_out => reset_counter_done_out,
      resetdone_out => resetdone_out,
      rxn => rxn,
      rxp => rxp,
      rxrecclk_out => rxrecclk_out,
      signal_detect => signal_detect,
      sim_speedup_control => sim_speedup_control,
      status_vector(447 downto 0) => pcs_pma_status_vector(447 downto 0),
      tx_disable => tx_disable,
      tx_fault => tx_fault,
      txn => txn,
      txp => txp,
      txuserrdy_out => txuserrdy_out,
      txusrclk2_out => \^txusrclk2_out\,
      txusrclk_out => txusrclk_out,
      xgmii_rxc(7 downto 0) => xmac_xgmii_xgmac_RXC(7 downto 0),
      xgmii_rxd(63 downto 0) => xmac_xgmii_xgmac_RXD(63 downto 0),
      xgmii_txc(7 downto 0) => xmac_xgmii_xgmac_TXC(7 downto 0),
      xgmii_txd(63 downto 0) => xmac_xgmii_xgmac_TXD(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    tx_axis_aresetn : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dclk : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    tx_disable : out STD_LOGIC;
    pcspma_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sim_speedup_control : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    mac_tx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    mac_rx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    mac_status_vector : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pcs_pma_configuration_vector : in STD_LOGIC_VECTOR ( 535 downto 0 );
    pcs_pma_status_vector : out STD_LOGIC_VECTOR ( 447 downto 0 );
    areset_datapathclk_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    resetdone_out : out STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    qpll0lock_out : out STD_LOGIC;
    qpll0outclk_out : out STD_LOGIC;
    qpll0outrefclk_out : out STD_LOGIC;
    areset_coreclk_out : out STD_LOGIC;
    refclk_p : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_tvalid : in STD_LOGIC;
    s_axis_pause_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_pause_tvalid : in STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    tx_statistics_valid : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_axi_10g_ethernet_0_0,bd_01e2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_01e2,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "shell_axi_10g_ethernet_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of areset_coreclk_out : signal is "xilinx.com:signal:reset:1.0 RST.areset_coreclk_out RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of areset_coreclk_out : signal is "XIL_INTERFACENAME RST.areset_coreclk_out, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of areset_datapathclk_out : signal is "xilinx.com:signal:reset:1.0 RST.areset_datapathclk_out RST";
  attribute X_INTERFACE_PARAMETER of areset_datapathclk_out : signal is "XIL_INTERFACENAME RST.areset_datapathclk_out, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of coreclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.coreclk_out CLK";
  attribute X_INTERFACE_PARAMETER of coreclk_out : signal is "XIL_INTERFACENAME CLK.coreclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_coreclk_out";
  attribute X_INTERFACE_INFO of dclk : signal is "xilinx.com:signal:clock:1.0 CLK.dclk CLK";
  attribute X_INTERFACE_PARAMETER of dclk : signal is "XIL_INTERFACENAME CLK.dclk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN shell_clk_wiz_0_0_clk_out1";
  attribute X_INTERFACE_INFO of gtrxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.gtrxreset_out RST";
  attribute X_INTERFACE_PARAMETER of gtrxreset_out : signal is "XIL_INTERFACENAME RST.gtrxreset_out, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of gttxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.gttxreset_out RST";
  attribute X_INTERFACE_PARAMETER of gttxreset_out : signal is "XIL_INTERFACENAME RST.gttxreset_out, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of m_axis_rx_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TLAST";
  attribute X_INTERFACE_INFO of m_axis_rx_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TUSER";
  attribute X_INTERFACE_INFO of m_axis_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_rx_tvalid : signal is "XIL_INTERFACENAME m_axis_rx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of qpll0outclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.qpll0outclk_out CLK";
  attribute X_INTERFACE_PARAMETER of qpll0outclk_out : signal is "XIL_INTERFACENAME CLK.qpll0outclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_qpll0outclk_out";
  attribute X_INTERFACE_INFO of qpll0outrefclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.qpll0outrefclk_out CLK";
  attribute X_INTERFACE_PARAMETER of qpll0outrefclk_out : signal is "XIL_INTERFACENAME CLK.qpll0outrefclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_qpll0outrefclk_out";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.reset, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of rx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.rx_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of rx_axis_aresetn : signal is "XIL_INTERFACENAME RST.rx_axis_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of rx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid";
  attribute X_INTERFACE_INFO of rxrecclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.rxrecclk_out CLK";
  attribute X_INTERFACE_PARAMETER of rxrecclk_out : signal is "XIL_INTERFACENAME CLK.rxrecclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_rxrecclk_out";
  attribute X_INTERFACE_INFO of s_axis_pause_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_pause_tvalid : signal is "XIL_INTERFACENAME s_axis_pause, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tx_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TLAST";
  attribute X_INTERFACE_INFO of s_axis_tx_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TREADY";
  attribute X_INTERFACE_INFO of s_axis_tx_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tx_tvalid : signal is "XIL_INTERFACENAME s_axis_tx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}";
  attribute X_INTERFACE_INFO of tx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.tx_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of tx_axis_aresetn : signal is "XIL_INTERFACENAME RST.tx_axis_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of tx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid";
  attribute X_INTERFACE_INFO of txusrclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.txusrclk2_out CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk2_out : signal is "XIL_INTERFACENAME CLK.txusrclk2_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, ASSOCIATED_BUSIF m_axis_rx:s_axis_pause:s_axis_tx, ASSOCIATED_ASYNC_RESET tx_axis_aresetn:rx_axis_aresetn";
  attribute X_INTERFACE_INFO of txusrclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.txusrclk_out CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk_out : signal is "XIL_INTERFACENAME CLK.txusrclk_out, FREQ_HZ 312500000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk_out";
  attribute X_INTERFACE_INFO of m_axis_rx_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TDATA";
  attribute X_INTERFACE_INFO of m_axis_rx_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP";
  attribute X_INTERFACE_INFO of rx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector";
  attribute X_INTERFACE_INFO of s_axis_pause_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TDATA";
  attribute X_INTERFACE_INFO of s_axis_tx_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TDATA";
  attribute X_INTERFACE_INFO of s_axis_tx_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tx_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TUSER";
  attribute X_INTERFACE_INFO of tx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2
     port map (
      areset_coreclk_out => areset_coreclk_out,
      areset_datapathclk_out => areset_datapathclk_out,
      coreclk_out => coreclk_out,
      dclk => dclk,
      gtrxreset_out => gtrxreset_out,
      gttxreset_out => gttxreset_out,
      m_axis_rx_tdata(63 downto 0) => m_axis_rx_tdata(63 downto 0),
      m_axis_rx_tkeep(7 downto 0) => m_axis_rx_tkeep(7 downto 0),
      m_axis_rx_tlast => m_axis_rx_tlast,
      m_axis_rx_tuser => m_axis_rx_tuser,
      m_axis_rx_tvalid => m_axis_rx_tvalid,
      mac_rx_configuration_vector(79 downto 0) => mac_rx_configuration_vector(79 downto 0),
      mac_status_vector(2 downto 0) => mac_status_vector(2 downto 0),
      mac_tx_configuration_vector(79 downto 0) => mac_tx_configuration_vector(79 downto 0),
      pcs_pma_configuration_vector(535 downto 0) => pcs_pma_configuration_vector(535 downto 0),
      pcs_pma_status_vector(447 downto 0) => pcs_pma_status_vector(447 downto 0),
      pcspma_status(7 downto 0) => pcspma_status(7 downto 0),
      qpll0lock_out => qpll0lock_out,
      qpll0outclk_out => qpll0outclk_out,
      qpll0outrefclk_out => qpll0outrefclk_out,
      refclk_n => refclk_n,
      refclk_p => refclk_p,
      reset => reset,
      reset_counter_done_out => reset_counter_done_out,
      resetdone_out => resetdone_out,
      rx_axis_aresetn => rx_axis_aresetn,
      rx_statistics_valid => rx_statistics_valid,
      rx_statistics_vector(29 downto 0) => rx_statistics_vector(29 downto 0),
      rxn => rxn,
      rxp => rxp,
      rxrecclk_out => rxrecclk_out,
      s_axis_pause_tdata(15 downto 0) => s_axis_pause_tdata(15 downto 0),
      s_axis_pause_tvalid => s_axis_pause_tvalid,
      s_axis_tx_tdata(63 downto 0) => s_axis_tx_tdata(63 downto 0),
      s_axis_tx_tkeep(7 downto 0) => s_axis_tx_tkeep(7 downto 0),
      s_axis_tx_tlast => s_axis_tx_tlast,
      s_axis_tx_tready => s_axis_tx_tready,
      s_axis_tx_tuser(0) => s_axis_tx_tuser(0),
      s_axis_tx_tvalid => s_axis_tx_tvalid,
      signal_detect => signal_detect,
      sim_speedup_control => sim_speedup_control,
      tx_axis_aresetn => tx_axis_aresetn,
      tx_disable => tx_disable,
      tx_fault => tx_fault,
      tx_ifg_delay(7 downto 0) => tx_ifg_delay(7 downto 0),
      tx_statistics_valid => tx_statistics_valid,
      tx_statistics_vector(25 downto 0) => tx_statistics_vector(25 downto 0),
      txn => txn,
      txp => txp,
      txuserrdy_out => txuserrdy_out,
      txusrclk2_out => txusrclk2_out,
      txusrclk_out => txusrclk_out
    );
end STRUCTURE;
