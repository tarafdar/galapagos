//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_01e2.bd
//Design : bd_01e2
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_01e2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_01e2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "shell_axi_10g_ethernet_0_0.hwdef" *) 
module bd_01e2
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESET_CORECLK_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESET_CORECLK_OUT, POLARITY ACTIVE_HIGH" *) output areset_coreclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESET_DATAPATHCLK_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESET_DATAPATHCLK_OUT, POLARITY ACTIVE_HIGH" *) output areset_datapathclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CORECLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CORECLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_coreclk_out, FREQ_HZ 156250000, PHASE 0.000" *) output coreclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DCLK, CLK_DOMAIN shell_clk_wiz_0_0_clk_out1, FREQ_HZ 100000000, PHASE 0.0" *) input dclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.GTRXRESET_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.GTRXRESET_OUT, POLARITY ACTIVE_HIGH" *) output gtrxreset_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.GTTXRESET_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.GTTXRESET_OUT, POLARITY ACTIVE_HIGH" *) output gttxreset_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [63:0]m_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP" *) output [7:0]m_axis_rx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TLAST" *) output m_axis_rx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TUSER" *) output m_axis_rx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *) output m_axis_rx_tvalid;
  input [79:0]mac_rx_configuration_vector;
  output [2:0]mac_status_vector;
  input [79:0]mac_tx_configuration_vector;
  input [535:0]pcs_pma_configuration_vector;
  output [447:0]pcs_pma_status_vector;
  output [7:0]pcspma_status;
  output qpll0lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QPLL0OUTCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QPLL0OUTCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_qpll0outclk_out, FREQ_HZ 156250000, PHASE 0.000" *) output qpll0outclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QPLL0OUTREFCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QPLL0OUTREFCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_qpll0outrefclk_out, FREQ_HZ 156250000, PHASE 0.000" *) output qpll0outrefclk_out;
  input refclk_n;
  input refclk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  output reset_counter_done_out;
  output resetdone_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RX_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RX_AXIS_ARESETN, POLARITY ACTIVE_LOW" *) input rx_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid" *) output rx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector" *) output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RXRECCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RXRECCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_rxrecclk_out, FREQ_HZ 156250000, PHASE 0.000" *) output rxrecclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_pause, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]s_axis_pause_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TVALID" *) input s_axis_pause_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]s_axis_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP" *) input [7:0]s_axis_tx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TLAST" *) input s_axis_tx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TREADY" *) output s_axis_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TUSER" *) input [0:0]s_axis_tx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TVALID" *) input s_axis_tx_tvalid;
  input signal_detect;
  input sim_speedup_control;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.TX_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.TX_AXIS_ARESETN, POLARITY ACTIVE_LOW" *) input tx_axis_aresetn;
  output tx_disable;
  input tx_fault;
  input [7:0]tx_ifg_delay;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid" *) output tx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector" *) output [25:0]tx_statistics_vector;
  output txn;
  output txp;
  output txuserrdy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK2_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXUSRCLK2_OUT, ASSOCIATED_ASYNC_RESET tx_axis_aresetn:rx_axis_aresetn, ASSOCIATED_BUSIF m_axis_rx:s_axis_pause:s_axis_tx, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, PHASE 0.000" *) output txusrclk2_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXUSRCLK_OUT, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk_out, FREQ_HZ 312500000, PHASE 0.000" *) output txusrclk_out;

  wire dclk_1;
  wire [0:0]dcm_locked_driver_dout;
  wire [79:0]mac_rx_configuration_vector_1;
  wire [79:0]mac_tx_configuration_vector_1;
  wire [535:0]pcs_pma_configuration_vector_1;
  wire [2:0]pma_pmd_type_driver_dout;
  wire refclk_n_1;
  wire refclk_p_1;
  wire reset_1;
  wire rx_axis_aresetn_1;
  wire rxn_1;
  wire rxp_1;
  wire [15:0]s_axis_pause_1_TDATA;
  wire s_axis_pause_1_TVALID;
  wire [63:0]s_axis_tx_1_TDATA;
  wire [7:0]s_axis_tx_1_TKEEP;
  wire s_axis_tx_1_TLAST;
  wire s_axis_tx_1_TREADY;
  wire [0:0]s_axis_tx_1_TUSER;
  wire s_axis_tx_1_TVALID;
  wire signal_detect_1;
  wire sim_speedup_control_1;
  wire tx_axis_aresetn_1;
  wire tx_fault_1;
  wire [7:0]tx_ifg_delay_1;
  wire [63:0]xmac_m_axis_rx_TDATA;
  wire [7:0]xmac_m_axis_rx_TKEEP;
  wire xmac_m_axis_rx_TLAST;
  wire xmac_m_axis_rx_TUSER;
  wire xmac_m_axis_rx_TVALID;
  wire xmac_rx_statistics_valid;
  wire [29:0]xmac_rx_statistics_vector;
  wire [2:0]xmac_status_vector;
  wire xmac_tx_statistics_valid;
  wire [25:0]xmac_tx_statistics_vector;
  wire [7:0]xmac_xgmii_xgmac_RXC;
  wire [63:0]xmac_xgmii_xgmac_RXD;
  wire [7:0]xmac_xgmii_xgmac_TXC;
  wire [63:0]xmac_xgmii_xgmac_TXD;
  wire xpcs_areset_coreclk_out;
  wire xpcs_areset_datapathclk_out;
  wire [7:0]xpcs_core_status;
  wire [15:0]xpcs_core_to_gt_drp_DADDR;
  wire xpcs_core_to_gt_drp_DEN;
  wire [15:0]xpcs_core_to_gt_drp_DI;
  wire [15:0]xpcs_core_to_gt_drp_DO;
  wire xpcs_core_to_gt_drp_DRDY;
  wire xpcs_core_to_gt_drp_DWE;
  wire xpcs_coreclk_out;
  wire xpcs_drp_req;
  wire xpcs_gtrxreset_out;
  wire xpcs_gttxreset_out;
  wire xpcs_qpll0lock_out;
  wire xpcs_qpll0outclk_out;
  wire xpcs_qpll0outrefclk_out;
  wire xpcs_reset_counter_done_out;
  wire xpcs_resetdone_out;
  wire xpcs_rxrecclk_out;
  wire [447:0]xpcs_status_vector;
  wire xpcs_tx_disable;
  wire xpcs_txn;
  wire xpcs_txp;
  wire xpcs_txuserrdy_out;
  wire xpcs_txusrclk2_out;
  wire xpcs_txusrclk_out;

  assign areset_coreclk_out = xpcs_areset_coreclk_out;
  assign areset_datapathclk_out = xpcs_areset_datapathclk_out;
  assign coreclk_out = xpcs_coreclk_out;
  assign dclk_1 = dclk;
  assign gtrxreset_out = xpcs_gtrxreset_out;
  assign gttxreset_out = xpcs_gttxreset_out;
  assign m_axis_rx_tdata[63:0] = xmac_m_axis_rx_TDATA;
  assign m_axis_rx_tkeep[7:0] = xmac_m_axis_rx_TKEEP;
  assign m_axis_rx_tlast = xmac_m_axis_rx_TLAST;
  assign m_axis_rx_tuser = xmac_m_axis_rx_TUSER;
  assign m_axis_rx_tvalid = xmac_m_axis_rx_TVALID;
  assign mac_rx_configuration_vector_1 = mac_rx_configuration_vector[79:0];
  assign mac_status_vector[2:0] = xmac_status_vector;
  assign mac_tx_configuration_vector_1 = mac_tx_configuration_vector[79:0];
  assign pcs_pma_configuration_vector_1 = pcs_pma_configuration_vector[535:0];
  assign pcs_pma_status_vector[447:0] = xpcs_status_vector;
  assign pcspma_status[7:0] = xpcs_core_status;
  assign qpll0lock_out = xpcs_qpll0lock_out;
  assign qpll0outclk_out = xpcs_qpll0outclk_out;
  assign qpll0outrefclk_out = xpcs_qpll0outrefclk_out;
  assign refclk_n_1 = refclk_n;
  assign refclk_p_1 = refclk_p;
  assign reset_1 = reset;
  assign reset_counter_done_out = xpcs_reset_counter_done_out;
  assign resetdone_out = xpcs_resetdone_out;
  assign rx_axis_aresetn_1 = rx_axis_aresetn;
  assign rx_statistics_valid = xmac_rx_statistics_valid;
  assign rx_statistics_vector[29:0] = xmac_rx_statistics_vector;
  assign rxn_1 = rxn;
  assign rxp_1 = rxp;
  assign rxrecclk_out = xpcs_rxrecclk_out;
  assign s_axis_pause_1_TDATA = s_axis_pause_tdata[15:0];
  assign s_axis_pause_1_TVALID = s_axis_pause_tvalid;
  assign s_axis_tx_1_TDATA = s_axis_tx_tdata[63:0];
  assign s_axis_tx_1_TKEEP = s_axis_tx_tkeep[7:0];
  assign s_axis_tx_1_TLAST = s_axis_tx_tlast;
  assign s_axis_tx_1_TUSER = s_axis_tx_tuser[0];
  assign s_axis_tx_1_TVALID = s_axis_tx_tvalid;
  assign s_axis_tx_tready = s_axis_tx_1_TREADY;
  assign signal_detect_1 = signal_detect;
  assign sim_speedup_control_1 = sim_speedup_control;
  assign tx_axis_aresetn_1 = tx_axis_aresetn;
  assign tx_disable = xpcs_tx_disable;
  assign tx_fault_1 = tx_fault;
  assign tx_ifg_delay_1 = tx_ifg_delay[7:0];
  assign tx_statistics_valid = xmac_tx_statistics_valid;
  assign tx_statistics_vector[25:0] = xmac_tx_statistics_vector;
  assign txn = xpcs_txn;
  assign txp = xpcs_txp;
  assign txuserrdy_out = xpcs_txuserrdy_out;
  assign txusrclk2_out = xpcs_txusrclk2_out;
  assign txusrclk_out = xpcs_txusrclk_out;
  bd_01e2_dcm_locked_driver_0 dcm_locked_driver
       (.dout(dcm_locked_driver_dout));
  bd_01e2_pma_pmd_type_driver_0 pma_pmd_type_driver
       (.dout(pma_pmd_type_driver_dout));
  bd_01e2_xmac_0 xmac
       (.pause_req(s_axis_pause_1_TVALID),
        .pause_val(s_axis_pause_1_TDATA),
        .reset(reset_1),
        .rx_axis_aresetn(rx_axis_aresetn_1),
        .rx_axis_tdata(xmac_m_axis_rx_TDATA),
        .rx_axis_tkeep(xmac_m_axis_rx_TKEEP),
        .rx_axis_tlast(xmac_m_axis_rx_TLAST),
        .rx_axis_tuser(xmac_m_axis_rx_TUSER),
        .rx_axis_tvalid(xmac_m_axis_rx_TVALID),
        .rx_clk0(xpcs_txusrclk2_out),
        .rx_configuration_vector(mac_rx_configuration_vector_1),
        .rx_dcm_locked(dcm_locked_driver_dout),
        .rx_statistics_valid(xmac_rx_statistics_valid),
        .rx_statistics_vector(xmac_rx_statistics_vector),
        .status_vector(xmac_status_vector),
        .tx_axis_aresetn(tx_axis_aresetn_1),
        .tx_axis_tdata(s_axis_tx_1_TDATA),
        .tx_axis_tkeep(s_axis_tx_1_TKEEP),
        .tx_axis_tlast(s_axis_tx_1_TLAST),
        .tx_axis_tready(s_axis_tx_1_TREADY),
        .tx_axis_tuser(s_axis_tx_1_TUSER),
        .tx_axis_tvalid(s_axis_tx_1_TVALID),
        .tx_clk0(xpcs_txusrclk2_out),
        .tx_configuration_vector(mac_tx_configuration_vector_1),
        .tx_dcm_locked(dcm_locked_driver_dout),
        .tx_ifg_delay(tx_ifg_delay_1),
        .tx_statistics_valid(xmac_tx_statistics_valid),
        .tx_statistics_vector(xmac_tx_statistics_vector),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
  bd_01e2_xpcs_0 xpcs
       (.areset_coreclk_out(xpcs_areset_coreclk_out),
        .areset_datapathclk_out(xpcs_areset_datapathclk_out),
        .configuration_vector(pcs_pma_configuration_vector_1),
        .core_status(xpcs_core_status),
        .core_to_gt_drpaddr(xpcs_core_to_gt_drp_DADDR),
        .core_to_gt_drpdi(xpcs_core_to_gt_drp_DI),
        .core_to_gt_drpdo(xpcs_core_to_gt_drp_DO),
        .core_to_gt_drpen(xpcs_core_to_gt_drp_DEN),
        .core_to_gt_drprdy(xpcs_core_to_gt_drp_DRDY),
        .core_to_gt_drpwe(xpcs_core_to_gt_drp_DWE),
        .coreclk_out(xpcs_coreclk_out),
        .dclk(dclk_1),
        .drp_gnt(xpcs_drp_req),
        .drp_req(xpcs_drp_req),
        .gt_drpaddr(xpcs_core_to_gt_drp_DADDR),
        .gt_drpdi(xpcs_core_to_gt_drp_DI),
        .gt_drpdo(xpcs_core_to_gt_drp_DO),
        .gt_drpen(xpcs_core_to_gt_drp_DEN),
        .gt_drprdy(xpcs_core_to_gt_drp_DRDY),
        .gt_drpwe(xpcs_core_to_gt_drp_DWE),
        .gtrxreset_out(xpcs_gtrxreset_out),
        .gttxreset_out(xpcs_gttxreset_out),
        .pma_pmd_type(pma_pmd_type_driver_dout),
        .qpll0lock_out(xpcs_qpll0lock_out),
        .qpll0outclk_out(xpcs_qpll0outclk_out),
        .qpll0outrefclk_out(xpcs_qpll0outrefclk_out),
        .refclk_n(refclk_n_1),
        .refclk_p(refclk_p_1),
        .reset(reset_1),
        .reset_counter_done_out(xpcs_reset_counter_done_out),
        .resetdone_out(xpcs_resetdone_out),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .rxrecclk_out(xpcs_rxrecclk_out),
        .signal_detect(signal_detect_1),
        .sim_speedup_control(sim_speedup_control_1),
        .status_vector(xpcs_status_vector),
        .tx_disable(xpcs_tx_disable),
        .tx_fault(tx_fault_1),
        .txn(xpcs_txn),
        .txp(xpcs_txp),
        .txuserrdy_out(xpcs_txuserrdy_out),
        .txusrclk2_out(xpcs_txusrclk2_out),
        .txusrclk_out(xpcs_txusrclk_out),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
endmodule
