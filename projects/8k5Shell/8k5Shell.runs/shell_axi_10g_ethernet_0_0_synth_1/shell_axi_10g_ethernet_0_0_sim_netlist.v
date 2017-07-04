// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Jul  2 17:27:58 2017
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_axi_10g_ethernet_0_0_sim_netlist.v
// Design      : shell_axi_10g_ethernet_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "shell_axi_10g_ethernet_0_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2
   (areset_coreclk_out,
    areset_datapathclk_out,
    coreclk_out,
    dclk,
    gtrxreset_out,
    gttxreset_out,
    m_axis_rx_tdata,
    m_axis_rx_tkeep,
    m_axis_rx_tlast,
    m_axis_rx_tuser,
    m_axis_rx_tvalid,
    mac_rx_configuration_vector,
    mac_status_vector,
    mac_tx_configuration_vector,
    pcs_pma_configuration_vector,
    pcs_pma_status_vector,
    pcspma_status,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    refclk_n,
    refclk_p,
    reset,
    reset_counter_done_out,
    resetdone_out,
    rx_axis_aresetn,
    rx_statistics_valid,
    rx_statistics_vector,
    rxn,
    rxp,
    rxrecclk_out,
    s_axis_pause_tdata,
    s_axis_pause_tvalid,
    s_axis_tx_tdata,
    s_axis_tx_tkeep,
    s_axis_tx_tlast,
    s_axis_tx_tready,
    s_axis_tx_tuser,
    s_axis_tx_tvalid,
    signal_detect,
    sim_speedup_control,
    tx_axis_aresetn,
    tx_disable,
    tx_fault,
    tx_ifg_delay,
    tx_statistics_valid,
    tx_statistics_vector,
    txn,
    txp,
    txuserrdy_out,
    txusrclk2_out,
    txusrclk_out);
  output areset_coreclk_out;
  output areset_datapathclk_out;
  output coreclk_out;
  input dclk;
  output gtrxreset_out;
  output gttxreset_out;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tuser;
  output m_axis_rx_tvalid;
  input [79:0]mac_rx_configuration_vector;
  output [2:0]mac_status_vector;
  input [79:0]mac_tx_configuration_vector;
  input [535:0]pcs_pma_configuration_vector;
  output [447:0]pcs_pma_status_vector;
  output [7:0]pcspma_status;
  output qpll0lock_out;
  output qpll0outclk_out;
  output qpll0outrefclk_out;
  input refclk_n;
  input refclk_p;
  input reset;
  output reset_counter_done_out;
  output resetdone_out;
  input rx_axis_aresetn;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  output rxrecclk_out;
  input [15:0]s_axis_pause_tdata;
  input s_axis_pause_tvalid;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  output s_axis_tx_tready;
  input [0:0]s_axis_tx_tuser;
  input s_axis_tx_tvalid;
  input signal_detect;
  input sim_speedup_control;
  input tx_axis_aresetn;
  output tx_disable;
  input tx_fault;
  input [7:0]tx_ifg_delay;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output txn;
  output txp;
  output txuserrdy_out;
  output txusrclk2_out;
  output txusrclk_out;

  wire areset_coreclk_out;
  wire areset_datapathclk_out;
  wire coreclk_out;
  wire dclk;
  wire dcm_locked_driver_dout;
  wire gtrxreset_out;
  wire gttxreset_out;
  wire [63:0]m_axis_rx_tdata;
  wire [7:0]m_axis_rx_tkeep;
  wire m_axis_rx_tlast;
  wire m_axis_rx_tuser;
  wire m_axis_rx_tvalid;
  wire [79:0]mac_rx_configuration_vector;
  wire [2:0]mac_status_vector;
  wire [79:0]mac_tx_configuration_vector;
  wire [535:0]pcs_pma_configuration_vector;
  wire [447:0]pcs_pma_status_vector;
  wire [7:0]pcspma_status;
  wire [2:0]pma_pmd_type_driver_dout;
  wire qpll0lock_out;
  wire qpll0outclk_out;
  wire qpll0outrefclk_out;
  wire refclk_n;
  wire refclk_p;
  wire reset;
  wire reset_counter_done_out;
  wire resetdone_out;
  wire rx_axis_aresetn;
  wire rx_statistics_valid;
  wire [29:0]rx_statistics_vector;
  wire rxn;
  wire rxp;
  wire rxrecclk_out;
  wire [15:0]s_axis_pause_tdata;
  wire s_axis_pause_tvalid;
  wire [63:0]s_axis_tx_tdata;
  wire [7:0]s_axis_tx_tkeep;
  wire s_axis_tx_tlast;
  wire s_axis_tx_tready;
  wire [0:0]s_axis_tx_tuser;
  wire s_axis_tx_tvalid;
  wire signal_detect;
  wire sim_speedup_control;
  wire tx_axis_aresetn;
  wire tx_disable;
  wire tx_fault;
  wire [7:0]tx_ifg_delay;
  wire tx_statistics_valid;
  wire [25:0]tx_statistics_vector;
  wire txn;
  wire txp;
  wire txuserrdy_out;
  wire txusrclk2_out;
  wire txusrclk_out;
  wire [7:0]xmac_xgmii_xgmac_RXC;
  wire [63:0]xmac_xgmii_xgmac_RXD;
  wire [7:0]xmac_xgmii_xgmac_TXC;
  wire [63:0]xmac_xgmii_xgmac_TXD;
  wire [15:0]xpcs_core_to_gt_drp_DADDR;
  wire xpcs_core_to_gt_drp_DEN;
  wire [15:0]xpcs_core_to_gt_drp_DI;
  wire [15:0]xpcs_core_to_gt_drp_DO;
  wire xpcs_core_to_gt_drp_DRDY;
  wire xpcs_core_to_gt_drp_DWE;
  wire xpcs_drp_req;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_dcm_locked_driver_0 dcm_locked_driver
       (.dout(dcm_locked_driver_dout));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_pma_pmd_type_driver_0 pma_pmd_type_driver
       (.dout(pma_pmd_type_driver_dout));
  (* X_CORE_INFO = "ten_gig_eth_mac_v15_1_2,Vivado 2016.4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xmac_0 xmac
       (.pause_req(s_axis_pause_tvalid),
        .pause_val(s_axis_pause_tdata),
        .reset(reset),
        .rx_axis_aresetn(rx_axis_aresetn),
        .rx_axis_tdata(m_axis_rx_tdata),
        .rx_axis_tkeep(m_axis_rx_tkeep),
        .rx_axis_tlast(m_axis_rx_tlast),
        .rx_axis_tuser(m_axis_rx_tuser),
        .rx_axis_tvalid(m_axis_rx_tvalid),
        .rx_clk0(txusrclk2_out),
        .rx_configuration_vector(mac_rx_configuration_vector),
        .rx_dcm_locked(dcm_locked_driver_dout),
        .rx_statistics_valid(rx_statistics_valid),
        .rx_statistics_vector(rx_statistics_vector),
        .status_vector(mac_status_vector),
        .tx_axis_aresetn(tx_axis_aresetn),
        .tx_axis_tdata(s_axis_tx_tdata),
        .tx_axis_tkeep(s_axis_tx_tkeep),
        .tx_axis_tlast(s_axis_tx_tlast),
        .tx_axis_tready(s_axis_tx_tready),
        .tx_axis_tuser(s_axis_tx_tuser),
        .tx_axis_tvalid(s_axis_tx_tvalid),
        .tx_clk0(txusrclk2_out),
        .tx_configuration_vector(mac_tx_configuration_vector),
        .tx_dcm_locked(dcm_locked_driver_dout),
        .tx_ifg_delay(tx_ifg_delay),
        .tx_statistics_valid(tx_statistics_valid),
        .tx_statistics_vector(tx_statistics_vector),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
  (* X_CORE_INFO = "ten_gig_eth_pcs_pma_wrapper,Vivado 2016.4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0 xpcs
       (.areset_coreclk_out(areset_coreclk_out),
        .areset_datapathclk_out(areset_datapathclk_out),
        .configuration_vector(pcs_pma_configuration_vector),
        .core_status(pcspma_status),
        .core_to_gt_drpaddr(xpcs_core_to_gt_drp_DADDR),
        .core_to_gt_drpdi(xpcs_core_to_gt_drp_DI),
        .core_to_gt_drpdo(xpcs_core_to_gt_drp_DO),
        .core_to_gt_drpen(xpcs_core_to_gt_drp_DEN),
        .core_to_gt_drprdy(xpcs_core_to_gt_drp_DRDY),
        .core_to_gt_drpwe(xpcs_core_to_gt_drp_DWE),
        .coreclk_out(coreclk_out),
        .dclk(dclk),
        .drp_gnt(xpcs_drp_req),
        .drp_req(xpcs_drp_req),
        .gt_drpaddr(xpcs_core_to_gt_drp_DADDR),
        .gt_drpdi(xpcs_core_to_gt_drp_DI),
        .gt_drpdo(xpcs_core_to_gt_drp_DO),
        .gt_drpen(xpcs_core_to_gt_drp_DEN),
        .gt_drprdy(xpcs_core_to_gt_drp_DRDY),
        .gt_drpwe(xpcs_core_to_gt_drp_DWE),
        .gtrxreset_out(gtrxreset_out),
        .gttxreset_out(gttxreset_out),
        .pma_pmd_type(pma_pmd_type_driver_dout),
        .qpll0lock_out(qpll0lock_out),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .refclk_n(refclk_n),
        .refclk_p(refclk_p),
        .reset(reset),
        .reset_counter_done_out(reset_counter_done_out),
        .resetdone_out(resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .rxrecclk_out(rxrecclk_out),
        .signal_detect(signal_detect),
        .sim_speedup_control(sim_speedup_control),
        .status_vector(pcs_pma_status_vector),
        .tx_disable(tx_disable),
        .tx_fault(tx_fault),
        .txn(txn),
        .txp(txp),
        .txuserrdy_out(txuserrdy_out),
        .txusrclk2_out(txusrclk2_out),
        .txusrclk_out(txusrclk_out),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_dcm_locked_driver_0
   (dout);
  output [0:0]dout;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_pma_pmd_type_driver_0
   (dout);
  output [2:0]dout;


endmodule

(* X_CORE_INFO = "ten_gig_eth_mac_v15_1_2,Vivado 2016.4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xmac_0
   (tx_clk0,
    reset,
    tx_axis_aresetn,
    tx_axis_tdata,
    tx_axis_tkeep,
    tx_axis_tvalid,
    tx_axis_tlast,
    tx_axis_tuser,
    tx_ifg_delay,
    tx_axis_tready,
    tx_statistics_vector,
    tx_statistics_valid,
    pause_val,
    pause_req,
    rx_axis_aresetn,
    rx_axis_tdata,
    rx_axis_tkeep,
    rx_axis_tvalid,
    rx_axis_tuser,
    rx_axis_tlast,
    rx_statistics_vector,
    rx_statistics_valid,
    tx_configuration_vector,
    rx_configuration_vector,
    status_vector,
    tx_dcm_locked,
    xgmii_txd,
    xgmii_txc,
    rx_clk0,
    rx_dcm_locked,
    xgmii_rxd,
    xgmii_rxc);
  input tx_clk0;
  input reset;
  input tx_axis_aresetn;
  input [63:0]tx_axis_tdata;
  input [7:0]tx_axis_tkeep;
  input tx_axis_tvalid;
  input tx_axis_tlast;
  input tx_axis_tuser;
  input [7:0]tx_ifg_delay;
  output tx_axis_tready;
  output [25:0]tx_statistics_vector;
  output tx_statistics_valid;
  input [15:0]pause_val;
  input pause_req;
  input rx_axis_aresetn;
  output [63:0]rx_axis_tdata;
  output [7:0]rx_axis_tkeep;
  output rx_axis_tvalid;
  output rx_axis_tuser;
  output rx_axis_tlast;
  output [29:0]rx_statistics_vector;
  output rx_statistics_valid;
  input [79:0]tx_configuration_vector;
  input [79:0]rx_configuration_vector;
  output [2:0]status_vector;
  input tx_dcm_locked;
  output [63:0]xgmii_txd;
  output [7:0]xgmii_txc;
  input rx_clk0;
  input rx_dcm_locked;
  input [63:0]xgmii_rxd;
  input [7:0]xgmii_rxc;


endmodule

(* X_CORE_INFO = "ten_gig_eth_pcs_pma_wrapper,Vivado 2016.4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2_xpcs_0
   (dclk,
    rxrecclk_out,
    refclk_p,
    refclk_n,
    sim_speedup_control,
    coreclk_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0lock_out,
    txusrclk_out,
    txusrclk2_out,
    areset_datapathclk_out,
    areset_coreclk_out,
    gttxreset_out,
    gtrxreset_out,
    txuserrdy_out,
    reset_counter_done_out,
    reset,
    xgmii_txd,
    xgmii_txc,
    xgmii_rxd,
    xgmii_rxc,
    txp,
    txn,
    rxp,
    rxn,
    configuration_vector,
    status_vector,
    core_status,
    resetdone_out,
    signal_detect,
    tx_fault,
    drp_req,
    drp_gnt,
    core_to_gt_drpen,
    core_to_gt_drpwe,
    core_to_gt_drpaddr,
    core_to_gt_drpdi,
    gt_drprdy,
    gt_drpdo,
    gt_drpen,
    gt_drpwe,
    gt_drpaddr,
    gt_drpdi,
    core_to_gt_drprdy,
    core_to_gt_drpdo,
    pma_pmd_type,
    tx_disable);
  input dclk;
  output rxrecclk_out;
  input refclk_p;
  input refclk_n;
  input sim_speedup_control;
  output coreclk_out;
  output qpll0outclk_out;
  output qpll0outrefclk_out;
  output qpll0lock_out;
  output txusrclk_out;
  output txusrclk2_out;
  output areset_datapathclk_out;
  output areset_coreclk_out;
  output gttxreset_out;
  output gtrxreset_out;
  output txuserrdy_out;
  output reset_counter_done_out;
  input reset;
  input [63:0]xgmii_txd;
  input [7:0]xgmii_txc;
  output [63:0]xgmii_rxd;
  output [7:0]xgmii_rxc;
  output txp;
  output txn;
  input rxp;
  input rxn;
  input [535:0]configuration_vector;
  output [447:0]status_vector;
  output [7:0]core_status;
  output resetdone_out;
  input signal_detect;
  input tx_fault;
  output drp_req;
  input drp_gnt;
  output core_to_gt_drpen;
  output core_to_gt_drpwe;
  output [15:0]core_to_gt_drpaddr;
  output [15:0]core_to_gt_drpdi;
  output gt_drprdy;
  output [15:0]gt_drpdo;
  input gt_drpen;
  input gt_drpwe;
  input [15:0]gt_drpaddr;
  input [15:0]gt_drpdi;
  input core_to_gt_drprdy;
  input [15:0]core_to_gt_drpdo;
  input [2:0]pma_pmd_type;
  output tx_disable;


endmodule

(* CHECK_LICENSE_TYPE = "shell_axi_10g_ethernet_0_0,bd_01e2,{ten_gig_eth_mac=bought,ten_gig_eth_pcs_pma_basekr=design_linking}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_01e2,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tx_axis_aresetn,
    rx_axis_aresetn,
    tx_ifg_delay,
    dclk,
    txp,
    txn,
    rxp,
    rxn,
    signal_detect,
    tx_fault,
    tx_disable,
    pcspma_status,
    sim_speedup_control,
    rxrecclk_out,
    mac_tx_configuration_vector,
    mac_rx_configuration_vector,
    mac_status_vector,
    pcs_pma_configuration_vector,
    pcs_pma_status_vector,
    areset_datapathclk_out,
    txusrclk_out,
    txusrclk2_out,
    gttxreset_out,
    gtrxreset_out,
    txuserrdy_out,
    coreclk_out,
    resetdone_out,
    reset_counter_done_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    areset_coreclk_out,
    refclk_p,
    refclk_n,
    reset,
    s_axis_tx_tdata,
    s_axis_tx_tkeep,
    s_axis_tx_tlast,
    s_axis_tx_tready,
    s_axis_tx_tuser,
    s_axis_tx_tvalid,
    s_axis_pause_tdata,
    s_axis_pause_tvalid,
    m_axis_rx_tdata,
    m_axis_rx_tkeep,
    m_axis_rx_tlast,
    m_axis_rx_tuser,
    m_axis_rx_tvalid,
    tx_statistics_valid,
    tx_statistics_vector,
    rx_statistics_valid,
    rx_statistics_vector);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.tx_axis_aresetn RST" *) input tx_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.rx_axis_aresetn RST" *) input rx_axis_aresetn;
  input [7:0]tx_ifg_delay;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dclk CLK" *) input dclk;
  (* CLOCK_BUFFER_TYPE = "none" *) output txp;
  (* CLOCK_BUFFER_TYPE = "none" *) output txn;
  (* CLOCK_BUFFER_TYPE = "none" *) input rxp;
  (* CLOCK_BUFFER_TYPE = "none" *) input rxn;
  input signal_detect;
  input tx_fault;
  output tx_disable;
  output [7:0]pcspma_status;
  input sim_speedup_control;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rxrecclk_out CLK" *) output rxrecclk_out;
  input [79:0]mac_tx_configuration_vector;
  input [79:0]mac_rx_configuration_vector;
  output [2:0]mac_status_vector;
  input [535:0]pcs_pma_configuration_vector;
  output [447:0]pcs_pma_status_vector;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.areset_datapathclk_out RST" *) output areset_datapathclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk_out CLK" *) output txusrclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk2_out CLK" *) output txusrclk2_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gttxreset_out RST" *) output gttxreset_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gtrxreset_out RST" *) output gtrxreset_out;
  output txuserrdy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.coreclk_out CLK" *) output coreclk_out;
  output resetdone_out;
  output reset_counter_done_out;
  output qpll0lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.qpll0outclk_out CLK" *) output qpll0outclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.qpll0outrefclk_out CLK" *) output qpll0outrefclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.areset_coreclk_out RST" *) output areset_coreclk_out;
  (* CLOCK_BUFFER_TYPE = "none" *) input refclk_p;
  (* CLOCK_BUFFER_TYPE = "none" *) input refclk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.reset RST" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TDATA" *) input [63:0]s_axis_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP" *) input [7:0]s_axis_tx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TLAST" *) input s_axis_tx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TREADY" *) output s_axis_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TUSER" *) input [0:0]s_axis_tx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TVALID" *) input s_axis_tx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TDATA" *) input [15:0]s_axis_pause_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TVALID" *) input s_axis_pause_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *) output [63:0]m_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP" *) output [7:0]m_axis_rx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TLAST" *) output m_axis_rx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TUSER" *) output m_axis_rx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *) output m_axis_rx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid" *) output tx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector" *) output [25:0]tx_statistics_vector;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid" *) output rx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector" *) output [29:0]rx_statistics_vector;

  wire areset_coreclk_out;
  wire areset_datapathclk_out;
  wire coreclk_out;
  wire dclk;
  wire gtrxreset_out;
  wire gttxreset_out;
  wire [63:0]m_axis_rx_tdata;
  wire [7:0]m_axis_rx_tkeep;
  wire m_axis_rx_tlast;
  wire m_axis_rx_tuser;
  wire m_axis_rx_tvalid;
  wire [79:0]mac_rx_configuration_vector;
  wire [2:0]mac_status_vector;
  wire [79:0]mac_tx_configuration_vector;
  wire [535:0]pcs_pma_configuration_vector;
  wire [447:0]pcs_pma_status_vector;
  wire [7:0]pcspma_status;
  wire qpll0lock_out;
  wire qpll0outclk_out;
  wire qpll0outrefclk_out;
  wire refclk_n;
  wire refclk_p;
  wire reset;
  wire reset_counter_done_out;
  wire resetdone_out;
  wire rx_axis_aresetn;
  wire rx_statistics_valid;
  wire [29:0]rx_statistics_vector;
  wire rxn;
  wire rxp;
  wire rxrecclk_out;
  wire [15:0]s_axis_pause_tdata;
  wire s_axis_pause_tvalid;
  wire [63:0]s_axis_tx_tdata;
  wire [7:0]s_axis_tx_tkeep;
  wire s_axis_tx_tlast;
  wire s_axis_tx_tready;
  wire [0:0]s_axis_tx_tuser;
  wire s_axis_tx_tvalid;
  wire signal_detect;
  wire sim_speedup_control;
  wire tx_axis_aresetn;
  wire tx_disable;
  wire tx_fault;
  wire [7:0]tx_ifg_delay;
  wire tx_statistics_valid;
  wire [25:0]tx_statistics_vector;
  wire txn;
  wire txp;
  wire txuserrdy_out;
  wire txusrclk2_out;
  wire txusrclk_out;

  (* HW_HANDOFF = "shell_axi_10g_ethernet_0_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_01e2 inst
       (.areset_coreclk_out(areset_coreclk_out),
        .areset_datapathclk_out(areset_datapathclk_out),
        .coreclk_out(coreclk_out),
        .dclk(dclk),
        .gtrxreset_out(gtrxreset_out),
        .gttxreset_out(gttxreset_out),
        .m_axis_rx_tdata(m_axis_rx_tdata),
        .m_axis_rx_tkeep(m_axis_rx_tkeep),
        .m_axis_rx_tlast(m_axis_rx_tlast),
        .m_axis_rx_tuser(m_axis_rx_tuser),
        .m_axis_rx_tvalid(m_axis_rx_tvalid),
        .mac_rx_configuration_vector(mac_rx_configuration_vector),
        .mac_status_vector(mac_status_vector),
        .mac_tx_configuration_vector(mac_tx_configuration_vector),
        .pcs_pma_configuration_vector(pcs_pma_configuration_vector),
        .pcs_pma_status_vector(pcs_pma_status_vector),
        .pcspma_status(pcspma_status),
        .qpll0lock_out(qpll0lock_out),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .refclk_n(refclk_n),
        .refclk_p(refclk_p),
        .reset(reset),
        .reset_counter_done_out(reset_counter_done_out),
        .resetdone_out(resetdone_out),
        .rx_axis_aresetn(rx_axis_aresetn),
        .rx_statistics_valid(rx_statistics_valid),
        .rx_statistics_vector(rx_statistics_vector),
        .rxn(rxn),
        .rxp(rxp),
        .rxrecclk_out(rxrecclk_out),
        .s_axis_pause_tdata(s_axis_pause_tdata),
        .s_axis_pause_tvalid(s_axis_pause_tvalid),
        .s_axis_tx_tdata(s_axis_tx_tdata),
        .s_axis_tx_tkeep(s_axis_tx_tkeep),
        .s_axis_tx_tlast(s_axis_tx_tlast),
        .s_axis_tx_tready(s_axis_tx_tready),
        .s_axis_tx_tuser(s_axis_tx_tuser),
        .s_axis_tx_tvalid(s_axis_tx_tvalid),
        .signal_detect(signal_detect),
        .sim_speedup_control(sim_speedup_control),
        .tx_axis_aresetn(tx_axis_aresetn),
        .tx_disable(tx_disable),
        .tx_fault(tx_fault),
        .tx_ifg_delay(tx_ifg_delay),
        .tx_statistics_valid(tx_statistics_valid),
        .tx_statistics_vector(tx_statistics_vector),
        .txn(txn),
        .txp(txp),
        .txuserrdy_out(txuserrdy_out),
        .txusrclk2_out(txusrclk2_out),
        .txusrclk_out(txusrclk_out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
