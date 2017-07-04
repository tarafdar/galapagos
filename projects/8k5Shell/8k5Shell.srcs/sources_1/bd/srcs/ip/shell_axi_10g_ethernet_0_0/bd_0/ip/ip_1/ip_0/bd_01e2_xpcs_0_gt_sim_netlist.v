// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Jul  2 17:23:06 2017
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/ip_0/bd_01e2_xpcs_0_gt_sim_netlist.v
// Design      : bd_01e2_xpcs_0_gt
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_01e2_xpcs_0_gt,bd_01e2_xpcs_0_gt_gtwizard_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_01e2_xpcs_0_gt_gtwizard_top,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module bd_01e2_xpcs_0_gt
   (gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_reset_qpll0reset_out,
    cpllpd_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    gthrxn_in,
    gthrxp_in,
    loopback_in,
    pcsrsvdin_in,
    qpll0clk_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1refclk_in,
    rxbufreset_in,
    rxcdrhold_in,
    rxdfelpmreset_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxpcsreset_in,
    rxpd_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxrate_in,
    rxusrclk_in,
    rxusrclk2_in,
    txdata_in,
    txdiffctrl_in,
    txelecidle_in,
    txheader_in,
    txinhibit_in,
    txlatclk_in,
    txoutclksel_in,
    txpcsreset_in,
    txpd_in,
    txpdelecidlemode_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txsequence_in,
    txusrclk_in,
    txusrclk2_in,
    dmonitorout_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    rxbufstatus_out,
    rxcdrlock_out,
    rxdata_out,
    rxdatavalid_out,
    rxheader_out,
    rxheadervalid_out,
    rxoutclk_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxstartofseq_out,
    txbufstatus_out,
    txoutclk_out,
    txpmaresetdone_out,
    txprgdivresetdone_out);
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]cpllpd_in;
  input [8:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [2:0]loopback_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [2:0]rxrate_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [127:0]txdata_in;
  input [3:0]txdiffctrl_in;
  input [0:0]txelecidle_in;
  input [5:0]txheader_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [2:0]txoutclksel_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [6:0]txsequence_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [16:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxcdrlock_out;
  output [127:0]rxdata_out;
  output [1:0]rxdatavalid_out;
  output [5:0]rxheader_out;
  output [1:0]rxheadervalid_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;

  wire [0:0]cpllpd_in;
  wire [16:0]dmonitorout_out;
  wire [8:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0lock_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [2:0]loopback_in;
  wire [15:0]pcsrsvdin_in;
  wire [0:0]qpll0clk_in;
  wire [0:0]qpll0refclk_in;
  wire [0:0]qpll1clk_in;
  wire [0:0]qpll1refclk_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [127:0]rxdata_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [1:0]rxstartofseq_out;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [1:0]txbufstatus_out;
  wire [127:0]txdata_in;
  wire [3:0]txdiffctrl_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txoutclk_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire [2:0]NLW_inst_bufgtce_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtcemask_out_UNCONNECTED;
  wire [8:0]NLW_inst_bufgtdiv_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtreset_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtrstmask_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllfbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_cplllock_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllrefclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_dmonitoroutclk_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_common_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_common_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtpowergood_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtrefclkmonitor_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED;
  wire [63:0]NLW_inst_gtwiz_userdata_rx_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtytxn_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtytxp_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierategen3_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierateidle_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllpd_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllreset_out_UNCONNECTED;
  wire [0:0]NLW_inst_pciesynctxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieusergen3rdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserphystatusrst_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserratestart_out_UNCONNECTED;
  wire [11:0]NLW_inst_pcsrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_phystatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_pinrsrvdas_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout0_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout1_out_UNCONNECTED;
  wire [0:0]NLW_inst_powerpresent_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0refclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1refclklost_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor0_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor0_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_resetexception_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyteisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyterealign_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrphdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanbondseq_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanrealign_out_UNCONNECTED;
  wire [4:0]NLW_inst_rxchbondo_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxckcaldone_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxclkcorcnt_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcominitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcommadet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomsasdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomwakedet_out_UNCONNECTED;
  wire [15:0]NLW_inst_rxctrl0_out_UNCONNECTED;
  wire [15:0]NLW_inst_rxctrl1_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxctrl2_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxctrl3_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxdataextendrsvd_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxelecidle_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpstresetdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED;
  wire [6:0]NLW_inst_rxmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobestarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphalignerr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxratedone_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk0_sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk0sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk1_sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk1sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclkout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsliderdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipoutclkrdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslippmardy_out_UNCONNECTED;
  wire [2:0]NLW_inst_rxstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxvalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_sdm0finalout_out_UNCONNECTED;
  wire [0:0]NLW_inst_sdm0testdata_out_UNCONNECTED;
  wire [0:0]NLW_inst_sdm1finalout_out_UNCONNECTED;
  wire [0:0]NLW_inst_sdm1testdata_out_UNCONNECTED;
  wire [0:0]NLW_inst_tcongpo_out_UNCONNECTED;
  wire [0:0]NLW_inst_tconrsvdout0_out_UNCONNECTED;
  wire [0:0]NLW_inst_txcomfinish_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdccdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphinitdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_txratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdaddr_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubden_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdi_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdwe_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubmdmtdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubtxuart_out_UNCONNECTED;

  (* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_COMMON_SCALING_FACTOR = "1" *) 
  (* C_CPLL_VCO_FREQUENCY = "2578.125000" *) 
  (* C_FORCE_COMMONS = "0" *) 
  (* C_FREERUN_FREQUENCY = "100.000000" *) 
  (* C_GT_REV = "17" *) 
  (* C_GT_TYPE = "0" *) 
  (* C_INCLUDE_CPLL_CAL = "2" *) 
  (* C_LOCATE_COMMON = "1" *) 
  (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) 
  (* C_LOCATE_RESET_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_TX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_USER_DATA_WIDTH_SIZING = "1" *) 
  (* C_PCIE_CORECLK_FREQ = "250" *) 
  (* C_PCIE_ENABLE = "0" *) 
  (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) 
  (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
  (* C_RX_BUFFBYPASS_MODE = "0" *) 
  (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_RX_BUFFER_MODE = "1" *) 
  (* C_RX_CB_DISP = "8'b00000000" *) 
  (* C_RX_CB_K = "8'b00000000" *) 
  (* C_RX_CB_LEN_SEQ = "1" *) 
  (* C_RX_CB_MAX_LEVEL = "1" *) 
  (* C_RX_CB_NUM_SEQ = "0" *) 
  (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_CC_DISP = "8'b00000000" *) 
  (* C_RX_CC_ENABLE = "0" *) 
  (* C_RX_CC_K = "8'b00000000" *) 
  (* C_RX_CC_LEN_SEQ = "1" *) 
  (* C_RX_CC_NUM_SEQ = "0" *) 
  (* C_RX_CC_PERIODICITY = "5000" *) 
  (* C_RX_CC_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_COMMA_M_ENABLE = "0" *) 
  (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
  (* C_RX_COMMA_P_ENABLE = "0" *) 
  (* C_RX_COMMA_P_VAL = "10'b0101111100" *) 
  (* C_RX_DATA_DECODING = "4" *) 
  (* C_RX_ENABLE = "1" *) 
  (* C_RX_INT_DATA_WIDTH = "32" *) 
  (* C_RX_LINE_RATE = "10.312500" *) 
  (* C_RX_MASTER_CHANNEL_IDX = "112" *) 
  (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_RX_OUTCLK_FREQUENCY = "312.500000" *) 
  (* C_RX_OUTCLK_SOURCE = "4" *) 
  (* C_RX_PLL_TYPE = "0" *) 
  (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_RX_SLIDE_MODE = "0" *) 
  (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "2" *) 
  (* C_RX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_RX_USER_DATA_WIDTH = "64" *) 
  (* C_RX_USRCLK2_FREQUENCY = "156.250000" *) 
  (* C_RX_USRCLK_FREQUENCY = "312.500000" *) 
  (* C_SECONDARY_QPLL_ENABLE = "0" *) 
  (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
  (* C_SIM_CPLL_CAL_BYPASS = "1'b0" *) 
  (* C_TOTAL_NUM_CHANNELS = "1" *) 
  (* C_TOTAL_NUM_COMMONS = "0" *) 
  (* C_TOTAL_NUM_COMMONS_EXAMPLE = "1" *) 
  (* C_TXPROGDIV_FREQ_ENABLE = "0" *) 
  (* C_TXPROGDIV_FREQ_SOURCE = "0" *) 
  (* C_TXPROGDIV_FREQ_VAL = "312.500000" *) 
  (* C_TX_BUFFBYPASS_MODE = "0" *) 
  (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_TX_BUFFER_MODE = "1" *) 
  (* C_TX_DATA_ENCODING = "4" *) 
  (* C_TX_ENABLE = "1" *) 
  (* C_TX_INT_DATA_WIDTH = "32" *) 
  (* C_TX_LINE_RATE = "10.312500" *) 
  (* C_TX_MASTER_CHANNEL_IDX = "112" *) 
  (* C_TX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_TX_OUTCLK_FREQUENCY = "312.500000" *) 
  (* C_TX_OUTCLK_SOURCE = "4" *) 
  (* C_TX_PLL_TYPE = "0" *) 
  (* C_TX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "2" *) 
  (* C_TX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_TX_USER_DATA_WIDTH = "64" *) 
  (* C_TX_USRCLK2_FREQUENCY = "156.250000" *) 
  (* C_TX_USRCLK_FREQUENCY = "312.500000" *) 
  bd_01e2_xpcs_0_gt_bd_01e2_xpcs_0_gt_gtwizard_top inst
       (.bgbypassb_in(1'b1),
        .bgmonitorenb_in(1'b1),
        .bgpdb_in(1'b1),
        .bgrcalovrd_in({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .bgrcalovrdenb_in(1'b1),
        .bufgtce_out(NLW_inst_bufgtce_out_UNCONNECTED[2:0]),
        .bufgtcemask_out(NLW_inst_bufgtcemask_out_UNCONNECTED[2:0]),
        .bufgtdiv_out(NLW_inst_bufgtdiv_out_UNCONNECTED[8:0]),
        .bufgtreset_out(NLW_inst_bufgtreset_out_UNCONNECTED[2:0]),
        .bufgtrstmask_out(NLW_inst_bufgtrstmask_out_UNCONNECTED[2:0]),
        .cdrstepdir_in(1'b0),
        .cdrstepsq_in(1'b0),
        .cdrstepsx_in(1'b0),
        .cfgreset_in(1'b0),
        .clkrsvd0_in(1'b0),
        .clkrsvd1_in(1'b0),
        .cpllfbclklost_out(NLW_inst_cpllfbclklost_out_UNCONNECTED[0]),
        .cpllfreqlock_in(1'b0),
        .cplllock_out(NLW_inst_cplllock_out_UNCONNECTED[0]),
        .cplllockdetclk_in(1'b0),
        .cplllocken_in(1'b0),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(NLW_inst_cpllrefclklost_out_UNCONNECTED[0]),
        .cpllrefclksel_in({1'b0,1'b0,1'b1}),
        .cpllreset_in(1'b1),
        .dmonfiforeset_in(1'b0),
        .dmonitorclk_in(1'b0),
        .dmonitorout_out(dmonitorout_out),
        .dmonitoroutclk_out(NLW_inst_dmonitoroutclk_out_UNCONNECTED[0]),
        .drpaddr_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpaddr_in(drpaddr_in),
        .drpclk_common_in(1'b0),
        .drpclk_in(drpclk_in),
        .drpdi_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdi_in(drpdi_in),
        .drpdo_common_out(NLW_inst_drpdo_common_out_UNCONNECTED[15:0]),
        .drpdo_out(drpdo_out),
        .drpen_common_in(1'b0),
        .drpen_in(drpen_in),
        .drprdy_common_out(NLW_inst_drprdy_common_out_UNCONNECTED[0]),
        .drprdy_out(drprdy_out),
        .drprst_in(1'b0),
        .drpwe_common_in(1'b0),
        .drpwe_in(drpwe_in),
        .elpcaldvorwren_in(1'b0),
        .elpcalpaorwren_in(1'b0),
        .evoddphicaldone_in(1'b0),
        .evoddphicalstart_in(1'b0),
        .evoddphidrden_in(1'b0),
        .evoddphidwren_in(1'b0),
        .evoddphixrden_in(1'b0),
        .evoddphixwren_in(1'b0),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanmode_in(1'b0),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .freqos_in(1'b0),
        .gtgrefclk0_in(1'b0),
        .gtgrefclk1_in(1'b0),
        .gtgrefclk_in(1'b0),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtnorthrefclk00_in(1'b0),
        .gtnorthrefclk01_in(1'b0),
        .gtnorthrefclk0_in(1'b0),
        .gtnorthrefclk10_in(1'b0),
        .gtnorthrefclk11_in(1'b0),
        .gtnorthrefclk1_in(1'b0),
        .gtpowergood_out(NLW_inst_gtpowergood_out_UNCONNECTED[0]),
        .gtrefclk00_in(1'b0),
        .gtrefclk01_in(1'b0),
        .gtrefclk0_in(1'b0),
        .gtrefclk10_in(1'b0),
        .gtrefclk11_in(1'b0),
        .gtrefclk1_in(1'b0),
        .gtrefclkmonitor_out(NLW_inst_gtrefclkmonitor_out_UNCONNECTED[0]),
        .gtresetsel_in(1'b0),
        .gtrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtrxreset_in(1'b0),
        .gtrxresetsel_in(1'b0),
        .gtsouthrefclk00_in(1'b0),
        .gtsouthrefclk01_in(1'b0),
        .gtsouthrefclk0_in(1'b0),
        .gtsouthrefclk10_in(1'b0),
        .gtsouthrefclk11_in(1'b0),
        .gtsouthrefclk1_in(1'b0),
        .gttxreset_in(1'b0),
        .gttxresetsel_in(1'b0),
        .gtwiz_buffbypass_rx_done_out(NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_error_out(NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_reset_in(1'b0),
        .gtwiz_buffbypass_rx_start_user_in(1'b0),
        .gtwiz_buffbypass_tx_done_out(NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_error_out(NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_reset_in(1'b0),
        .gtwiz_buffbypass_tx_start_user_in(1'b0),
        .gtwiz_gthe3_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe3_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe3_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gtye4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(gtwiz_reset_qpll0lock_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .gtwiz_reset_qpll1lock_in(1'b0),
        .gtwiz_reset_qpll1reset_out(NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_in(1'b0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_in(1'b0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_rx_active_out(NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_reset_in(1'b0),
        .gtwiz_userclk_rx_srcclk_out(NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk2_out(NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk_out(NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .gtwiz_userclk_tx_active_out(NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_reset_in(1'b0),
        .gtwiz_userclk_tx_srcclk_out(NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk2_out(NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk_out(NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userdata_rx_out(NLW_inst_gtwiz_userdata_rx_out_UNCONNECTED[63:0]),
        .gtwiz_userdata_tx_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtyrxn_in(1'b0),
        .gtyrxp_in(1'b0),
        .gtytxn_out(NLW_inst_gtytxn_out_UNCONNECTED[0]),
        .gtytxp_out(NLW_inst_gtytxp_out_UNCONNECTED[0]),
        .incpctrl_in(1'b0),
        .loopback_in(loopback_in),
        .looprsvd_in(1'b0),
        .lpbkrxtxseren_in(1'b0),
        .lpbktxrxseren_in(1'b0),
        .pcieeqrxeqadaptdone_in(1'b0),
        .pcierategen3_out(NLW_inst_pcierategen3_out_UNCONNECTED[0]),
        .pcierateidle_out(NLW_inst_pcierateidle_out_UNCONNECTED[0]),
        .pcierateqpll0_in(1'b0),
        .pcierateqpll1_in(1'b0),
        .pcierateqpllpd_out(NLW_inst_pcierateqpllpd_out_UNCONNECTED[1:0]),
        .pcierateqpllreset_out(NLW_inst_pcierateqpllreset_out_UNCONNECTED[1:0]),
        .pcierstidle_in(1'b0),
        .pciersttxsyncstart_in(1'b0),
        .pciesynctxsyncdone_out(NLW_inst_pciesynctxsyncdone_out_UNCONNECTED[0]),
        .pcieusergen3rdy_out(NLW_inst_pcieusergen3rdy_out_UNCONNECTED[0]),
        .pcieuserphystatusrst_out(NLW_inst_pcieuserphystatusrst_out_UNCONNECTED[0]),
        .pcieuserratedone_in(1'b0),
        .pcieuserratestart_out(NLW_inst_pcieuserratestart_out_UNCONNECTED[0]),
        .pcsrsvdin2_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(NLW_inst_pcsrsvdout_out_UNCONNECTED[11:0]),
        .phystatus_out(NLW_inst_phystatus_out_UNCONNECTED[0]),
        .pinrsrvdas_out(NLW_inst_pinrsrvdas_out_UNCONNECTED[7:0]),
        .pmarsvd0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvdin_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvdout0_out(NLW_inst_pmarsvdout0_out_UNCONNECTED[7:0]),
        .pmarsvdout1_out(NLW_inst_pmarsvdout1_out_UNCONNECTED[7:0]),
        .powerpresent_out(NLW_inst_powerpresent_out_UNCONNECTED[0]),
        .qpll0clk_in(qpll0clk_in),
        .qpll0clkrsvd0_in(1'b0),
        .qpll0clkrsvd1_in(1'b0),
        .qpll0fbclklost_out(NLW_inst_qpll0fbclklost_out_UNCONNECTED[0]),
        .qpll0fbdiv_in(1'b0),
        .qpll0freqlock_in(1'b0),
        .qpll0lock_out(NLW_inst_qpll0lock_out_UNCONNECTED[0]),
        .qpll0lockdetclk_in(1'b0),
        .qpll0locken_in(1'b1),
        .qpll0outclk_out(NLW_inst_qpll0outclk_out_UNCONNECTED[0]),
        .qpll0outrefclk_out(NLW_inst_qpll0outrefclk_out_UNCONNECTED[0]),
        .qpll0pd_in(1'b0),
        .qpll0refclk_in(qpll0refclk_in),
        .qpll0refclklost_out(NLW_inst_qpll0refclklost_out_UNCONNECTED[0]),
        .qpll0refclksel_in({1'b0,1'b0,1'b1}),
        .qpll0reset_in(1'b0),
        .qpll1clk_in(qpll1clk_in),
        .qpll1clkrsvd0_in(1'b0),
        .qpll1clkrsvd1_in(1'b0),
        .qpll1fbclklost_out(NLW_inst_qpll1fbclklost_out_UNCONNECTED[0]),
        .qpll1fbdiv_in(1'b0),
        .qpll1freqlock_in(1'b0),
        .qpll1lock_out(NLW_inst_qpll1lock_out_UNCONNECTED[0]),
        .qpll1lockdetclk_in(1'b0),
        .qpll1locken_in(1'b0),
        .qpll1outclk_out(NLW_inst_qpll1outclk_out_UNCONNECTED[0]),
        .qpll1outrefclk_out(NLW_inst_qpll1outrefclk_out_UNCONNECTED[0]),
        .qpll1pd_in(1'b1),
        .qpll1refclk_in(qpll1refclk_in),
        .qpll1refclklost_out(NLW_inst_qpll1refclklost_out_UNCONNECTED[0]),
        .qpll1refclksel_in({1'b0,1'b0,1'b1}),
        .qpll1reset_in(1'b1),
        .qplldmonitor0_out(NLW_inst_qplldmonitor0_out_UNCONNECTED[7:0]),
        .qplldmonitor1_out(NLW_inst_qplldmonitor1_out_UNCONNECTED[7:0]),
        .qpllrsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd2_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd3_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd4_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rcalenb_in(1'b1),
        .refclkoutmonitor0_out(NLW_inst_refclkoutmonitor0_out_UNCONNECTED[0]),
        .refclkoutmonitor1_out(NLW_inst_refclkoutmonitor1_out_UNCONNECTED[0]),
        .resetexception_out(NLW_inst_resetexception_out_UNCONNECTED[0]),
        .resetovrd_in(1'b0),
        .rstclkentx_in(1'b0),
        .rx8b10ben_in(1'b0),
        .rxafecfoken_in(1'b0),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(NLW_inst_rxbyteisaligned_out_UNCONNECTED[0]),
        .rxbyterealign_out(NLW_inst_rxbyterealign_out_UNCONNECTED[0]),
        .rxcdrfreqreset_in(1'b0),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(1'b0),
        .rxcdrphdone_out(NLW_inst_rxcdrphdone_out_UNCONNECTED[0]),
        .rxcdrreset_in(1'b0),
        .rxcdrresetrsv_in(1'b0),
        .rxchanbondseq_out(NLW_inst_rxchanbondseq_out_UNCONNECTED[0]),
        .rxchanisaligned_out(NLW_inst_rxchanisaligned_out_UNCONNECTED[0]),
        .rxchanrealign_out(NLW_inst_rxchanrealign_out_UNCONNECTED[0]),
        .rxchbonden_in(1'b0),
        .rxchbondi_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxchbondlevel_in({1'b0,1'b0,1'b0}),
        .rxchbondmaster_in(1'b0),
        .rxchbondo_out(NLW_inst_rxchbondo_out_UNCONNECTED[4:0]),
        .rxchbondslave_in(1'b0),
        .rxckcaldone_out(NLW_inst_rxckcaldone_out_UNCONNECTED[0]),
        .rxckcalreset_in(1'b0),
        .rxckcalstart_in(1'b0),
        .rxclkcorcnt_out(NLW_inst_rxclkcorcnt_out_UNCONNECTED[1:0]),
        .rxcominitdet_out(NLW_inst_rxcominitdet_out_UNCONNECTED[0]),
        .rxcommadet_out(NLW_inst_rxcommadet_out_UNCONNECTED[0]),
        .rxcommadeten_in(1'b0),
        .rxcomsasdet_out(NLW_inst_rxcomsasdet_out_UNCONNECTED[0]),
        .rxcomwakedet_out(NLW_inst_rxcomwakedet_out_UNCONNECTED[0]),
        .rxctrl0_out(NLW_inst_rxctrl0_out_UNCONNECTED[15:0]),
        .rxctrl1_out(NLW_inst_rxctrl1_out_UNCONNECTED[15:0]),
        .rxctrl2_out(NLW_inst_rxctrl2_out_UNCONNECTED[7:0]),
        .rxctrl3_out(NLW_inst_rxctrl3_out_UNCONNECTED[7:0]),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(NLW_inst_rxdataextendrsvd_out_UNCONNECTED[7:0]),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdccforcestart_in(1'b0),
        .rxdfeagcctrl_in({1'b0,1'b1}),
        .rxdfeagchold_in(1'b0),
        .rxdfeagcovrden_in(1'b0),
        .rxdfecfokfcnum_in(1'b0),
        .rxdfecfokfen_in(1'b0),
        .rxdfecfokfpulse_in(1'b0),
        .rxdfecfokhold_in(1'b0),
        .rxdfecfokovren_in(1'b0),
        .rxdfekhhold_in(1'b0),
        .rxdfekhovrden_in(1'b0),
        .rxdfelfhold_in(1'b0),
        .rxdfelfovrden_in(1'b0),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(1'b0),
        .rxdfetap10ovrden_in(1'b0),
        .rxdfetap11hold_in(1'b0),
        .rxdfetap11ovrden_in(1'b0),
        .rxdfetap12hold_in(1'b0),
        .rxdfetap12ovrden_in(1'b0),
        .rxdfetap13hold_in(1'b0),
        .rxdfetap13ovrden_in(1'b0),
        .rxdfetap14hold_in(1'b0),
        .rxdfetap14ovrden_in(1'b0),
        .rxdfetap15hold_in(1'b0),
        .rxdfetap15ovrden_in(1'b0),
        .rxdfetap2hold_in(1'b0),
        .rxdfetap2ovrden_in(1'b0),
        .rxdfetap3hold_in(1'b0),
        .rxdfetap3ovrden_in(1'b0),
        .rxdfetap4hold_in(1'b0),
        .rxdfetap4ovrden_in(1'b0),
        .rxdfetap5hold_in(1'b0),
        .rxdfetap5ovrden_in(1'b0),
        .rxdfetap6hold_in(1'b0),
        .rxdfetap6ovrden_in(1'b0),
        .rxdfetap7hold_in(1'b0),
        .rxdfetap7ovrden_in(1'b0),
        .rxdfetap8hold_in(1'b0),
        .rxdfetap8ovrden_in(1'b0),
        .rxdfetap9hold_in(1'b0),
        .rxdfetap9ovrden_in(1'b0),
        .rxdfeuthold_in(1'b0),
        .rxdfeutovrden_in(1'b0),
        .rxdfevphold_in(1'b0),
        .rxdfevpovrden_in(1'b0),
        .rxdfevsen_in(1'b0),
        .rxdfexyden_in(1'b1),
        .rxdlybypass_in(1'b1),
        .rxdlyen_in(1'b0),
        .rxdlyovrden_in(1'b0),
        .rxdlysreset_in(1'b0),
        .rxdlysresetdone_out(NLW_inst_rxdlysresetdone_out_UNCONNECTED[0]),
        .rxelecidle_out(NLW_inst_rxelecidle_out_UNCONNECTED[0]),
        .rxelecidlemode_in({1'b1,1'b1}),
        .rxeqtraining_in(1'b0),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlfpstresetdet_out(NLW_inst_rxlfpstresetdet_out_UNCONNECTED[0]),
        .rxlfpsu2lpexitdet_out(NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED[0]),
        .rxlfpsu3wakedet_out(NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED[0]),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(1'b0),
        .rxlpmgcovrden_in(1'b0),
        .rxlpmhfhold_in(1'b0),
        .rxlpmhfovrden_in(1'b0),
        .rxlpmlfhold_in(1'b0),
        .rxlpmlfklovrden_in(1'b0),
        .rxlpmoshold_in(1'b0),
        .rxlpmosovrden_in(1'b0),
        .rxmcommaalignen_in(1'b0),
        .rxmonitorout_out(NLW_inst_rxmonitorout_out_UNCONNECTED[6:0]),
        .rxmonitorsel_in({1'b0,1'b0}),
        .rxoobreset_in(1'b0),
        .rxoscalreset_in(1'b0),
        .rxoshold_in(1'b0),
        .rxosintcfg_in({1'b1,1'b1,1'b0,1'b1}),
        .rxosintdone_out(NLW_inst_rxosintdone_out_UNCONNECTED[0]),
        .rxosinten_in(1'b1),
        .rxosinthold_in(1'b0),
        .rxosintovrden_in(1'b0),
        .rxosintstarted_out(NLW_inst_rxosintstarted_out_UNCONNECTED[0]),
        .rxosintstrobe_in(1'b0),
        .rxosintstrobedone_out(NLW_inst_rxosintstrobedone_out_UNCONNECTED[0]),
        .rxosintstrobestarted_out(NLW_inst_rxosintstrobestarted_out_UNCONNECTED[0]),
        .rxosinttestovrden_in(1'b0),
        .rxosovrden_in(1'b0),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(NLW_inst_rxoutclkfabric_out_UNCONNECTED[0]),
        .rxoutclkpcs_out(NLW_inst_rxoutclkpcs_out_UNCONNECTED[0]),
        .rxoutclksel_in({1'b1,1'b0,1'b1}),
        .rxpcommaalignen_in(1'b0),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(1'b0),
        .rxphaligndone_out(NLW_inst_rxphaligndone_out_UNCONNECTED[0]),
        .rxphalignen_in(1'b0),
        .rxphalignerr_out(NLW_inst_rxphalignerr_out_UNCONNECTED[0]),
        .rxphdlypd_in(1'b1),
        .rxphdlyreset_in(1'b0),
        .rxphovrden_in(1'b0),
        .rxpllclksel_in({1'b1,1'b1}),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxprogdivreset_in(1'b0),
        .rxqpien_in(1'b0),
        .rxqpisenn_out(NLW_inst_rxqpisenn_out_UNCONNECTED[0]),
        .rxqpisenp_out(NLW_inst_rxqpisenp_out_UNCONNECTED[0]),
        .rxrate_in(rxrate_in),
        .rxratedone_out(NLW_inst_rxratedone_out_UNCONNECTED[0]),
        .rxratemode_in(1'b0),
        .rxrecclk0_sel_out(NLW_inst_rxrecclk0_sel_out_UNCONNECTED[1:0]),
        .rxrecclk0sel_out(NLW_inst_rxrecclk0sel_out_UNCONNECTED[0]),
        .rxrecclk1_sel_out(NLW_inst_rxrecclk1_sel_out_UNCONNECTED[1:0]),
        .rxrecclk1sel_out(NLW_inst_rxrecclk1sel_out_UNCONNECTED[0]),
        .rxrecclkout_out(NLW_inst_rxrecclkout_out_UNCONNECTED[0]),
        .rxresetdone_out(NLW_inst_rxresetdone_out_UNCONNECTED[0]),
        .rxslide_in(1'b0),
        .rxsliderdy_out(NLW_inst_rxsliderdy_out_UNCONNECTED[0]),
        .rxslipdone_out(NLW_inst_rxslipdone_out_UNCONNECTED[0]),
        .rxslipoutclk_in(1'b0),
        .rxslipoutclkrdy_out(NLW_inst_rxslipoutclkrdy_out_UNCONNECTED[0]),
        .rxslippma_in(1'b0),
        .rxslippmardy_out(NLW_inst_rxslippmardy_out_UNCONNECTED[0]),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(NLW_inst_rxstatus_out_UNCONNECTED[2:0]),
        .rxsyncallin_in(1'b0),
        .rxsyncdone_out(NLW_inst_rxsyncdone_out_UNCONNECTED[0]),
        .rxsyncin_in(1'b0),
        .rxsyncmode_in(1'b0),
        .rxsyncout_out(NLW_inst_rxsyncout_out_UNCONNECTED[0]),
        .rxsysclksel_in({1'b1,1'b0}),
        .rxtermination_in(1'b0),
        .rxuserrdy_in(1'b1),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(NLW_inst_rxvalid_out_UNCONNECTED[0]),
        .sdm0data_in(1'b0),
        .sdm0finalout_out(NLW_inst_sdm0finalout_out_UNCONNECTED[0]),
        .sdm0reset_in(1'b0),
        .sdm0testdata_out(NLW_inst_sdm0testdata_out_UNCONNECTED[0]),
        .sdm0toggle_in(1'b0),
        .sdm0width_in(1'b0),
        .sdm1data_in(1'b0),
        .sdm1finalout_out(NLW_inst_sdm1finalout_out_UNCONNECTED[0]),
        .sdm1reset_in(1'b0),
        .sdm1testdata_out(NLW_inst_sdm1testdata_out_UNCONNECTED[0]),
        .sdm1toggle_in(1'b0),
        .sdm1width_in(1'b0),
        .sigvalidclk_in(1'b0),
        .tcongpi_in(1'b0),
        .tcongpo_out(NLW_inst_tcongpo_out_UNCONNECTED[0]),
        .tconpowerup_in(1'b0),
        .tconreset_in(1'b0),
        .tconrsvdin1_in(1'b0),
        .tconrsvdout0_out(NLW_inst_tconrsvdout0_out_UNCONNECTED[0]),
        .tstin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10bbypass_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10ben_in(1'b0),
        .txbufdiffctrl_in({1'b0,1'b0,1'b0}),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(NLW_inst_txcomfinish_out_UNCONNECTED[0]),
        .txcominit_in(1'b0),
        .txcomsas_in(1'b0),
        .txcomwake_in(1'b0),
        .txctrl0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txctrl1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txctrl2_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdata_in(txdata_in),
        .txdataextendrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdccdone_out(NLW_inst_txdccdone_out_UNCONNECTED[0]),
        .txdccforcestart_in(1'b0),
        .txdccreset_in(1'b0),
        .txdeemph_in(1'b0),
        .txdetectrx_in(1'b0),
        .txdiffctrl_in(txdiffctrl_in),
        .txdiffpd_in(1'b0),
        .txdlybypass_in(1'b1),
        .txdlyen_in(1'b0),
        .txdlyhold_in(1'b0),
        .txdlyovrden_in(1'b0),
        .txdlysreset_in(1'b0),
        .txdlysresetdone_out(NLW_inst_txdlysresetdone_out_UNCONNECTED[0]),
        .txdlyupdown_in(1'b0),
        .txelecidle_in(txelecidle_in),
        .txelforcestart_in(1'b0),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txlfpstreset_in(1'b0),
        .txlfpsu2lpexit_in(1'b0),
        .txlfpsu3wake_in(1'b0),
        .txmaincursor_in({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txmargin_in({1'b0,1'b0,1'b0}),
        .txmuxdcdexhold_in(1'b0),
        .txmuxdcdorwren_in(1'b0),
        .txoneszeros_in(1'b0),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(NLW_inst_txoutclkfabric_out_UNCONNECTED[0]),
        .txoutclkpcs_out(NLW_inst_txoutclkpcs_out_UNCONNECTED[0]),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(1'b0),
        .txphaligndone_out(NLW_inst_txphaligndone_out_UNCONNECTED[0]),
        .txphalignen_in(1'b0),
        .txphdlypd_in(1'b1),
        .txphdlyreset_in(1'b0),
        .txphdlytstclk_in(1'b0),
        .txphinit_in(1'b0),
        .txphinitdone_out(NLW_inst_txphinitdone_out_UNCONNECTED[0]),
        .txphovrden_in(1'b0),
        .txpippmen_in(1'b0),
        .txpippmovrden_in(1'b0),
        .txpippmpd_in(1'b0),
        .txpippmsel_in(1'b0),
        .txpippmstepsize_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpisopd_in(1'b0),
        .txpllclksel_in({1'b1,1'b1}),
        .txpmareset_in(txpmareset_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txpostcursorinv_in(1'b0),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprecursorinv_in(1'b0),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txprogdivreset_in(1'b0),
        .txqpibiasen_in(1'b0),
        .txqpisenn_out(NLW_inst_txqpisenn_out_UNCONNECTED[0]),
        .txqpisenp_out(NLW_inst_txqpisenp_out_UNCONNECTED[0]),
        .txqpistrongpdown_in(1'b0),
        .txqpiweakpup_in(1'b0),
        .txrate_in({1'b0,1'b0,1'b0}),
        .txratedone_out(NLW_inst_txratedone_out_UNCONNECTED[0]),
        .txratemode_in(1'b0),
        .txresetdone_out(NLW_inst_txresetdone_out_UNCONNECTED[0]),
        .txsequence_in(txsequence_in),
        .txswing_in(1'b0),
        .txsyncallin_in(1'b0),
        .txsyncdone_out(NLW_inst_txsyncdone_out_UNCONNECTED[0]),
        .txsyncin_in(1'b0),
        .txsyncmode_in(1'b0),
        .txsyncout_out(NLW_inst_txsyncout_out_UNCONNECTED[0]),
        .txsysclksel_in({1'b1,1'b0}),
        .txuserrdy_in(1'b1),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in),
        .ubcfgstreamen_in(1'b0),
        .ubdaddr_out(NLW_inst_ubdaddr_out_UNCONNECTED[0]),
        .ubden_out(NLW_inst_ubden_out_UNCONNECTED[0]),
        .ubdi_out(NLW_inst_ubdi_out_UNCONNECTED[0]),
        .ubdo_in(1'b0),
        .ubdrdy_in(1'b0),
        .ubdwe_out(NLW_inst_ubdwe_out_UNCONNECTED[0]),
        .ubenable_in(1'b0),
        .ubgpi_in(1'b0),
        .ubintr_in(1'b0),
        .ubiolmbrst_in(1'b0),
        .ubmbrst_in(1'b0),
        .ubmdmcapture_in(1'b0),
        .ubmdmdbgrst_in(1'b0),
        .ubmdmdbgupdate_in(1'b0),
        .ubmdmregen_in(1'b0),
        .ubmdmshift_in(1'b0),
        .ubmdmsysrst_in(1'b0),
        .ubmdmtck_in(1'b0),
        .ubmdmtdi_in(1'b0),
        .ubmdmtdo_out(NLW_inst_ubmdmtdo_out_UNCONNECTED[0]),
        .ubrsvdout_out(NLW_inst_ubrsvdout_out_UNCONNECTED[0]),
        .ubtxuart_out(NLW_inst_ubtxuart_out_UNCONNECTED[0]));
endmodule

(* ORIG_REF_NAME = "bd_01e2_xpcs_0_gt_gthe3_channel_wrapper" *) 
module bd_01e2_xpcs_0_gt_bd_01e2_xpcs_0_gt_gthe3_channel_wrapper
   (cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    gtrefclkmonitor_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    pcsrsvdout_out,
    rxdata_out,
    drpdo_out,
    rxctrl0_out,
    rxctrl1_out,
    dmonitorout_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtce_out,
    bufgtcemask_out,
    bufgtreset_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxmonitorout_out,
    pinrsrvdas_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    bufgtdiv_out,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtrxreset_int,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxreset_int,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0clk_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprogdivreset_int,
    rxqpien_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxuserrdy_int,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpisopd_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprecursorinv_in,
    txprogdivreset_int,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txratemode_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txuserrdy_int,
    txusrclk_in,
    txusrclk2_in,
    txdata_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    rxdfeagcctrl_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txbufdiffctrl_in,
    txmargin_in,
    txoutclksel_in,
    txrate_in,
    rxosintcfg_in,
    rxprbssel_in,
    txdiffctrl_in,
    txprbssel_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    rxchbondi_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in);
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [11:0]pcsrsvdout_out;
  output [127:0]rxdata_out;
  output [15:0]drpdo_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [16:0]dmonitorout_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [6:0]rxmonitorout_out;
  output [7:0]pinrsrvdas_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [8:0]bufgtdiv_out;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input gtrxreset_int;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input gttxreset_int;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input rxprogdivreset_int;
  input [0:0]rxqpien_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input rxuserrdy_int;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [0:0]txpisopd_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [0:0]txprecursorinv_in;
  input txprogdivreset_int;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [0:0]txratemode_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input txuserrdy_int;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [127:0]txdata_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [1:0]rxdfeagcctrl_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txbufdiffctrl_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [2:0]txrate_in;
  input [3:0]rxosintcfg_in;
  input [3:0]rxprbssel_in;
  input [3:0]txdiffctrl_in;
  input [3:0]txprbssel_in;
  input [4:0]pcsrsvdin2_in;
  input [4:0]pmarsvdin_in;
  input [4:0]rxchbondi_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [8:0]drpaddr_in;

  wire [2:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [2:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [16:0]dmonitorout_out;
  wire [8:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drpwe_in;
  wire [0:0]evoddphicaldone_in;
  wire [0:0]evoddphicalstart_in;
  wire [0:0]evoddphidrden_in;
  wire [0:0]evoddphidwren_in;
  wire [0:0]evoddphixrden_in;
  wire [0:0]evoddphixwren_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanmode_in;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [0:0]gtresetsel_in;
  wire [15:0]gtrsvd_in;
  wire gtrxreset_int;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire gttxreset_int;
  wire [2:0]loopback_in;
  wire [0:0]lpbkrxtxseren_in;
  wire [0:0]lpbktxrxseren_in;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [4:0]pcsrsvdin2_in;
  wire [15:0]pcsrsvdin_in;
  wire [11:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [7:0]pinrsrvdas_out;
  wire [4:0]pmarsvdin_in;
  wire [0:0]qpll0clk_in;
  wire [0:0]qpll0refclk_in;
  wire [0:0]qpll1clk_in;
  wire [0:0]qpll1refclk_in;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rstclkentx_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxcdrresetrsv_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [1:0]rxdfeagcctrl_in;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfevsen_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [6:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [3:0]rxosintcfg_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosinten_in;
  wire [0:0]rxosinthold_in;
  wire [0:0]rxosintovrden_in;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobe_in;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosinttestovrden_in;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [0:0]rxphovrden_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire rxprogdivreset_int;
  wire [0:0]rxqpien_in;
  wire [0:0]rxqpisenn_out;
  wire [0:0]rxqpisenp_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire rxuserrdy_int;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [2:0]txbufdiffctrl_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [127:0]txdata_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [3:0]txdiffctrl_in;
  wire [0:0]txdiffpd_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txpostcursorinv_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprecursorinv_in;
  wire [0:0]txprgdivresetdone_out;
  wire txprogdivreset_int;
  wire [0:0]txqpibiasen_in;
  wire [0:0]txqpisenn_out;
  wire [0:0]txqpisenp_out;
  wire [0:0]txqpistrongpdown_in;
  wire [0:0]txqpiweakpup_in;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire txuserrdy_int;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;

  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_gthe3_channel channel_inst
       (.bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .evoddphicaldone_in(evoddphicaldone_in),
        .evoddphicalstart_in(evoddphicalstart_in),
        .evoddphidrden_in(evoddphidrden_in),
        .evoddphidwren_in(evoddphidwren_in),
        .evoddphixrden_in(evoddphixrden_in),
        .evoddphixwren_in(evoddphixwren_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanmode_in(eyescanmode_in),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .gtgrefclk_in(gtgrefclk_in),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtresetsel_in(gtresetsel_in),
        .gtrsvd_in(gtrsvd_in),
        .gtrxreset_int(gtrxreset_int),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxreset_int(gttxreset_int),
        .loopback_in(loopback_in),
        .lpbkrxtxseren_in(lpbkrxtxseren_in),
        .lpbktxrxseren_in(lpbktxrxseren_in),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin2_in(pcsrsvdin2_in),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .pmarsvdin_in(pmarsvdin_in),
        .qpll0clk_in(qpll0clk_in),
        .qpll0refclk_in(qpll0refclk_in),
        .qpll1clk_in(qpll1clk_in),
        .qpll1refclk_in(qpll1refclk_in),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rstclkentx_in(rstclkentx_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxcdrresetrsv_in(rxcdrresetrsv_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagcctrl_in(rxdfeagcctrl_in),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfevsen_in(rxdfevsen_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintcfg_in(rxosintcfg_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosinten_in(rxosinten_in),
        .rxosinthold_in(rxosinthold_in),
        .rxosintovrden_in(rxosintovrden_in),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobe_in(rxosintstrobe_in),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosinttestovrden_in(rxosinttestovrden_in),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxphovrden_in(rxphovrden_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxprogdivreset_int(rxprogdivreset_int),
        .rxqpien_in(rxqpien_in),
        .rxqpisenn_out(rxqpisenn_out),
        .rxqpisenp_out(rxqpisenp_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxuserrdy_int(rxuserrdy_int),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sigvalidclk_in(sigvalidclk_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufdiffctrl_in(txbufdiffctrl_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdata_in(txdata_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdiffpd_in(txdiffpd_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpisopd_in(txpisopd_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmareset_in(txpmareset_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txpostcursorinv_in(txpostcursorinv_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprecursorinv_in(txprecursorinv_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txprogdivreset_int(txprogdivreset_int),
        .txqpibiasen_in(txqpibiasen_in),
        .txqpisenn_out(txqpisenn_out),
        .txqpisenp_out(txqpisenp_out),
        .txqpistrongpdown_in(txqpistrongpdown_in),
        .txqpiweakpup_in(txqpiweakpup_in),
        .txrate_in(txrate_in),
        .txratedone_out(txratedone_out),
        .txratemode_in(txratemode_in),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txuserrdy_int(txuserrdy_int),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in));
endmodule

(* ORIG_REF_NAME = "bd_01e2_xpcs_0_gt_gtwizard_gthe3" *) 
module bd_01e2_xpcs_0_gt_bd_01e2_xpcs_0_gt_gtwizard_gthe3
   (gtpowergood_out,
    rxcdrlock_out,
    gtwiz_reset_rx_cdr_stable_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtrefclkmonitor_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    pcsrsvdout_out,
    rxdata_out,
    drpdo_out,
    rxctrl0_out,
    rxctrl1_out,
    dmonitorout_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtce_out,
    bufgtcemask_out,
    bufgtreset_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxmonitorout_out,
    pinrsrvdas_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    bufgtdiv_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_reset_qpll0reset_out,
    gtwiz_userclk_tx_active_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0clk_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxqpien_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpisopd_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprecursorinv_in,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txratemode_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txusrclk_in,
    txusrclk2_in,
    txdata_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    rxdfeagcctrl_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txbufdiffctrl_in,
    txmargin_in,
    txoutclksel_in,
    txrate_in,
    rxosintcfg_in,
    rxprbssel_in,
    txdiffctrl_in,
    txprbssel_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    rxchbondi_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in);
  output [0:0]gtpowergood_out;
  output [0:0]rxcdrlock_out;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [11:0]pcsrsvdout_out;
  output [127:0]rxdata_out;
  output [15:0]drpdo_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [16:0]dmonitorout_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [6:0]rxmonitorout_out;
  output [7:0]pinrsrvdas_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [8:0]bufgtdiv_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [0:0]rxqpien_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [0:0]txpisopd_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [0:0]txprecursorinv_in;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [0:0]txratemode_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [127:0]txdata_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [1:0]rxdfeagcctrl_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txbufdiffctrl_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [2:0]txrate_in;
  input [3:0]rxosintcfg_in;
  input [3:0]rxprbssel_in;
  input [3:0]txdiffctrl_in;
  input [3:0]txprbssel_in;
  input [4:0]pcsrsvdin2_in;
  input [4:0]pmarsvdin_in;
  input [4:0]rxchbondi_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [8:0]drpaddr_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;

  wire [2:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [2:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [16:0]dmonitorout_out;
  wire [8:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drpwe_in;
  wire [0:0]evoddphicaldone_in;
  wire [0:0]evoddphicalstart_in;
  wire [0:0]evoddphidrden_in;
  wire [0:0]evoddphidwren_in;
  wire [0:0]evoddphixrden_in;
  wire [0:0]evoddphixwren_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanmode_in;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [0:0]gtresetsel_in;
  wire [15:0]gtrsvd_in;
  wire gtrxreset_int;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire gttxreset_int;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0lock_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [2:0]loopback_in;
  wire [0:0]lpbkrxtxseren_in;
  wire [0:0]lpbktxrxseren_in;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [4:0]pcsrsvdin2_in;
  wire [15:0]pcsrsvdin_in;
  wire [11:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [7:0]pinrsrvdas_out;
  wire [4:0]pmarsvdin_in;
  wire [0:0]qpll0clk_in;
  wire [0:0]qpll0refclk_in;
  wire [0:0]qpll1clk_in;
  wire [0:0]qpll1refclk_in;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rstclkentx_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxcdrresetrsv_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [1:0]rxdfeagcctrl_in;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfevsen_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [6:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [3:0]rxosintcfg_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosinten_in;
  wire [0:0]rxosinthold_in;
  wire [0:0]rxosintovrden_in;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobe_in;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosinttestovrden_in;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [0:0]rxphovrden_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire rxprogdivreset_int;
  wire [0:0]rxqpien_in;
  wire [0:0]rxqpisenn_out;
  wire [0:0]rxqpisenp_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire rxresetdone_sync;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire rxuserrdy_int;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [2:0]txbufdiffctrl_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [127:0]txdata_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [3:0]txdiffctrl_in;
  wire [0:0]txdiffpd_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txpostcursorinv_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprecursorinv_in;
  wire [0:0]txprgdivresetdone_out;
  wire txprogdivreset_int;
  wire [0:0]txqpibiasen_in;
  wire [0:0]txqpisenn_out;
  wire [0:0]txqpisenp_out;
  wire [0:0]txqpistrongpdown_in;
  wire [0:0]txqpiweakpup_in;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire txresetdone_sync;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire txuserrdy_int;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;

  bd_01e2_xpcs_0_gt_bd_01e2_xpcs_0_gt_gthe3_channel_wrapper \gen_gtwizard_gthe3.gen_channel_container[28].gen_enabled_channel.gthe3_channel_wrapper_inst 
       (.bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .evoddphicaldone_in(evoddphicaldone_in),
        .evoddphicalstart_in(evoddphicalstart_in),
        .evoddphidrden_in(evoddphidrden_in),
        .evoddphidwren_in(evoddphidwren_in),
        .evoddphixrden_in(evoddphixrden_in),
        .evoddphixwren_in(evoddphixwren_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanmode_in(eyescanmode_in),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .gtgrefclk_in(gtgrefclk_in),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtresetsel_in(gtresetsel_in),
        .gtrsvd_in(gtrsvd_in),
        .gtrxreset_int(gtrxreset_int),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxreset_int(gttxreset_int),
        .loopback_in(loopback_in),
        .lpbkrxtxseren_in(lpbkrxtxseren_in),
        .lpbktxrxseren_in(lpbktxrxseren_in),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin2_in(pcsrsvdin2_in),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .pmarsvdin_in(pmarsvdin_in),
        .qpll0clk_in(qpll0clk_in),
        .qpll0refclk_in(qpll0refclk_in),
        .qpll1clk_in(qpll1clk_in),
        .qpll1refclk_in(qpll1refclk_in),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rstclkentx_in(rstclkentx_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxcdrresetrsv_in(rxcdrresetrsv_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagcctrl_in(rxdfeagcctrl_in),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfevsen_in(rxdfevsen_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintcfg_in(rxosintcfg_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosinten_in(rxosinten_in),
        .rxosinthold_in(rxosinthold_in),
        .rxosintovrden_in(rxosintovrden_in),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobe_in(rxosintstrobe_in),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosinttestovrden_in(rxosinttestovrden_in),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxphovrden_in(rxphovrden_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxprogdivreset_int(rxprogdivreset_int),
        .rxqpien_in(rxqpien_in),
        .rxqpisenn_out(rxqpisenn_out),
        .rxqpisenp_out(rxqpisenp_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxuserrdy_int(rxuserrdy_int),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sigvalidclk_in(sigvalidclk_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufdiffctrl_in(txbufdiffctrl_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdata_in(txdata_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdiffpd_in(txdiffpd_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpisopd_in(txpisopd_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmareset_in(txpmareset_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txpostcursorinv_in(txpostcursorinv_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprecursorinv_in(txprecursorinv_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txprogdivreset_int(txprogdivreset_int),
        .txqpibiasen_in(txqpibiasen_in),
        .txqpisenn_out(txqpisenn_out),
        .txqpisenp_out(txqpisenp_out),
        .txqpistrongpdown_in(txqpistrongpdown_in),
        .txqpiweakpup_in(txqpiweakpup_in),
        .txrate_in(txrate_in),
        .txratedone_out(txratedone_out),
        .txratemode_in(txratemode_in),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txuserrdy_int(txuserrdy_int),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer \gen_gtwizard_gthe3.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst 
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .rxresetdone_out(rxresetdone_out),
        .rxresetdone_sync(rxresetdone_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_0 \gen_gtwizard_gthe3.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst 
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .txresetdone_out(txresetdone_out),
        .txresetdone_sync(txresetdone_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_gtwiz_reset \gen_gtwizard_gthe3.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst 
       (.gtpowergood_out(gtpowergood_out),
        .gtrxreset_int(gtrxreset_int),
        .gttxreset_int(gttxreset_int),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(gtwiz_reset_qpll0lock_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxprogdivreset_int(rxprogdivreset_int),
        .rxresetdone_sync(rxresetdone_sync),
        .rxuserrdy_int(rxuserrdy_int),
        .rxusrclk2_in(rxusrclk2_in),
        .txprogdivreset_int(txprogdivreset_int),
        .txresetdone_sync(txresetdone_sync),
        .txuserrdy_int(txuserrdy_int),
        .txusrclk2_in(txusrclk2_in));
endmodule

(* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_COMMON_SCALING_FACTOR = "1" *) (* C_CPLL_VCO_FREQUENCY = "2578.125000" *) 
(* C_FORCE_COMMONS = "0" *) (* C_FREERUN_FREQUENCY = "100.000000" *) (* C_GT_REV = "17" *) 
(* C_GT_TYPE = "0" *) (* C_INCLUDE_CPLL_CAL = "2" *) (* C_LOCATE_COMMON = "1" *) 
(* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) (* C_LOCATE_RESET_CONTROLLER = "0" *) (* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) 
(* C_LOCATE_RX_USER_CLOCKING = "1" *) (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) (* C_LOCATE_TX_USER_CLOCKING = "1" *) 
(* C_LOCATE_USER_DATA_WIDTH_SIZING = "1" *) (* C_PCIE_CORECLK_FREQ = "250" *) (* C_PCIE_ENABLE = "0" *) 
(* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) (* C_RESET_SEQUENCE_INTERVAL = "0" *) (* C_RX_BUFFBYPASS_MODE = "0" *) 
(* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) (* C_RX_BUFFER_MODE = "1" *) (* C_RX_CB_DISP = "8'b00000000" *) 
(* C_RX_CB_K = "8'b00000000" *) (* C_RX_CB_LEN_SEQ = "1" *) (* C_RX_CB_MAX_LEVEL = "1" *) 
(* C_RX_CB_NUM_SEQ = "0" *) (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_RX_CC_DISP = "8'b00000000" *) 
(* C_RX_CC_ENABLE = "0" *) (* C_RX_CC_K = "8'b00000000" *) (* C_RX_CC_LEN_SEQ = "1" *) 
(* C_RX_CC_NUM_SEQ = "0" *) (* C_RX_CC_PERIODICITY = "5000" *) (* C_RX_CC_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_COMMA_M_ENABLE = "0" *) (* C_RX_COMMA_M_VAL = "10'b1010000011" *) (* C_RX_COMMA_P_ENABLE = "0" *) 
(* C_RX_COMMA_P_VAL = "10'b0101111100" *) (* C_RX_DATA_DECODING = "4" *) (* C_RX_ENABLE = "1" *) 
(* C_RX_INT_DATA_WIDTH = "32" *) (* C_RX_LINE_RATE = "10.312500" *) (* C_RX_MASTER_CHANNEL_IDX = "112" *) 
(* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) (* C_RX_OUTCLK_FREQUENCY = "312.500000" *) (* C_RX_OUTCLK_SOURCE = "4" *) 
(* C_RX_PLL_TYPE = "0" *) (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_RX_REFCLK_FREQUENCY = "156.250000" *) 
(* C_RX_SLIDE_MODE = "0" *) (* C_RX_USER_CLOCKING_CONTENTS = "0" *) (* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
(* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "2" *) (* C_RX_USER_CLOCKING_SOURCE = "0" *) 
(* C_RX_USER_DATA_WIDTH = "64" *) (* C_RX_USRCLK2_FREQUENCY = "156.250000" *) (* C_RX_USRCLK_FREQUENCY = "312.500000" *) 
(* C_SECONDARY_QPLL_ENABLE = "0" *) (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) (* C_SIM_CPLL_CAL_BYPASS = "1'b0" *) 
(* C_TOTAL_NUM_CHANNELS = "1" *) (* C_TOTAL_NUM_COMMONS = "0" *) (* C_TOTAL_NUM_COMMONS_EXAMPLE = "1" *) 
(* C_TXPROGDIV_FREQ_ENABLE = "0" *) (* C_TXPROGDIV_FREQ_SOURCE = "0" *) (* C_TXPROGDIV_FREQ_VAL = "312.500000" *) 
(* C_TX_BUFFBYPASS_MODE = "0" *) (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) (* C_TX_BUFFER_MODE = "1" *) 
(* C_TX_DATA_ENCODING = "4" *) (* C_TX_ENABLE = "1" *) (* C_TX_INT_DATA_WIDTH = "32" *) 
(* C_TX_LINE_RATE = "10.312500" *) (* C_TX_MASTER_CHANNEL_IDX = "112" *) (* C_TX_OUTCLK_BUFG_GT_DIV = "1" *) 
(* C_TX_OUTCLK_FREQUENCY = "312.500000" *) (* C_TX_OUTCLK_SOURCE = "4" *) (* C_TX_PLL_TYPE = "0" *) 
(* C_TX_REFCLK_FREQUENCY = "156.250000" *) (* C_TX_USER_CLOCKING_CONTENTS = "0" *) (* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
(* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "2" *) (* C_TX_USER_CLOCKING_SOURCE = "0" *) 
(* C_TX_USER_DATA_WIDTH = "64" *) (* C_TX_USRCLK2_FREQUENCY = "156.250000" *) (* C_TX_USRCLK_FREQUENCY = "312.500000" *) 
(* ORIG_REF_NAME = "bd_01e2_xpcs_0_gt_gtwizard_top" *) 
module bd_01e2_xpcs_0_gt_bd_01e2_xpcs_0_gt_gtwizard_top
   (gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_tx_srcclk_out,
    gtwiz_userclk_tx_usrclk_out,
    gtwiz_userclk_tx_usrclk2_out,
    gtwiz_userclk_tx_active_out,
    gtwiz_userclk_rx_reset_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_userclk_rx_srcclk_out,
    gtwiz_userclk_rx_usrclk_out,
    gtwiz_userclk_rx_usrclk2_out,
    gtwiz_userclk_rx_active_out,
    gtwiz_buffbypass_tx_reset_in,
    gtwiz_buffbypass_tx_start_user_in,
    gtwiz_buffbypass_tx_done_out,
    gtwiz_buffbypass_tx_error_out,
    gtwiz_buffbypass_rx_reset_in,
    gtwiz_buffbypass_rx_start_user_in,
    gtwiz_buffbypass_rx_done_out,
    gtwiz_buffbypass_rx_error_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_tx_done_in,
    gtwiz_reset_rx_done_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_qpll1lock_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_reset_qpll0reset_out,
    gtwiz_reset_qpll1reset_out,
    gtwiz_gthe3_cpll_cal_txoutclk_period_in,
    gtwiz_gthe3_cpll_cal_cnt_tol_in,
    gtwiz_gthe3_cpll_cal_bufg_ce_in,
    gtwiz_gthe4_cpll_cal_txoutclk_period_in,
    gtwiz_gthe4_cpll_cal_cnt_tol_in,
    gtwiz_gthe4_cpll_cal_bufg_ce_in,
    gtwiz_gtye4_cpll_cal_txoutclk_period_in,
    gtwiz_gtye4_cpll_cal_cnt_tol_in,
    gtwiz_gtye4_cpll_cal_bufg_ce_in,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrd_in,
    bgrcalovrdenb_in,
    drpaddr_common_in,
    drpclk_common_in,
    drpdi_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0fbdiv_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    qpll0refclksel_in,
    qpll0reset_in,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1fbdiv_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1refclksel_in,
    qpll1reset_in,
    qpllrsvd1_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    qpllrsvd4_in,
    rcalenb_in,
    sdm0data_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm0width_in,
    sdm1data_in,
    sdm1reset_in,
    sdm1toggle_in,
    sdm1width_in,
    tcongpi_in,
    tconpowerup_in,
    tconreset_in,
    tconrsvdin1_in,
    ubcfgstreamen_in,
    ubdo_in,
    ubdrdy_in,
    ubenable_in,
    ubgpi_in,
    ubintr_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmregen_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpdo_common_out,
    drprdy_common_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    rxrecclk0_sel_out,
    rxrecclk1_sel_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm0testdata_out,
    sdm1finalout_out,
    sdm1testdata_out,
    tcongpo_out,
    tconrsvdout0_out,
    ubdaddr_out,
    ubden_out,
    ubdi_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllrefclksel_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    elpcaldvorwren_in,
    elpcalpaorwren_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtrsvd_in,
    gtrxreset_in,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxreset_in,
    gttxresetsel_in,
    incpctrl_in,
    gtyrxn_in,
    gtyrxp_in,
    loopback_in,
    looprsvd_in,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    pcsrsvdin_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    qpll0clk_in,
    qpll0freqlock_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1freqlock_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondi_in,
    rxchbondlevel_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxckcalstart_in,
    rxcommadeten_in,
    rxdfeagcctrl_in,
    rxdccforcestart_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfcnum_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxelecidlemode_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxmonitorsel_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosintcfg_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxoutclksel_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxpd_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpllclksel_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxprogdivreset_in,
    rxqpien_in,
    rxrate_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxsysclksel_in,
    rxtermination_in,
    rxuserrdy_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tstin_in,
    tx8b10bbypass_in,
    tx8b10ben_in,
    txbufdiffctrl_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    txdata_in,
    txdataextendrsvd_in,
    txdccforcestart_in,
    txdccreset_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffctrl_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txelforcestart_in,
    txheader_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmaincursor_in,
    txmargin_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txoutclksel_in,
    txpcsreset_in,
    txpd_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpippmstepsize_in,
    txpisopd_in,
    txpllclksel_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txprecursorinv_in,
    txprogdivreset_in,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txrate_in,
    txratemode_in,
    txsequence_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txsysclksel_in,
    txuserrdy_in,
    txusrclk_in,
    txusrclk2_in,
    bufgtce_out,
    bufgtcemask_out,
    bufgtdiv_out,
    bufgtreset_out,
    bufgtrstmask_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitorout_out,
    dmonitoroutclk_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    pcsrsvdout_out,
    phystatus_out,
    pinrsrvdas_out,
    powerpresent_out,
    resetexception_out,
    rxbufstatus_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxchbondo_out,
    rxckcaldone_out,
    rxclkcorcnt_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxctrl0_out,
    rxctrl1_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdata_out,
    rxdataextendrsvd_out,
    rxdatavalid_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxheader_out,
    rxheadervalid_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxmonitorout_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxstartofseq_out,
    rxstatus_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txbufstatus_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out);
  input [0:0]gtwiz_userclk_tx_reset_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  output [0:0]gtwiz_userclk_tx_srcclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk2_out;
  output [0:0]gtwiz_userclk_tx_active_out;
  input [0:0]gtwiz_userclk_rx_reset_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  output [0:0]gtwiz_userclk_rx_srcclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk2_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]gtwiz_buffbypass_tx_reset_in;
  input [0:0]gtwiz_buffbypass_tx_start_user_in;
  output [0:0]gtwiz_buffbypass_tx_done_out;
  output [0:0]gtwiz_buffbypass_tx_error_out;
  input [0:0]gtwiz_buffbypass_rx_reset_in;
  input [0:0]gtwiz_buffbypass_rx_start_user_in;
  output [0:0]gtwiz_buffbypass_rx_done_out;
  output [0:0]gtwiz_buffbypass_rx_error_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_tx_done_in;
  input [0:0]gtwiz_reset_rx_done_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [17:0]gtwiz_gthe3_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe3_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe3_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gthe4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe4_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gtye4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gtye4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gtye4_cpll_cal_bufg_ce_in;
  input [63:0]gtwiz_userdata_tx_in;
  output [63:0]gtwiz_userdata_rx_out;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [4:0]bgrcalovrd_in;
  input [0:0]bgrcalovrdenb_in;
  input [8:0]drpaddr_common_in;
  input [0:0]drpclk_common_in;
  input [15:0]drpdi_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [0:0]pcierateqpll0_in;
  input [0:0]pcierateqpll1_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [0:0]qpll0fbdiv_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [2:0]qpll0refclksel_in;
  input [0:0]qpll0reset_in;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [0:0]qpll1fbdiv_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [2:0]qpll1refclksel_in;
  input [0:0]qpll1reset_in;
  input [7:0]qpllrsvd1_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]qpllrsvd4_in;
  input [0:0]rcalenb_in;
  input [0:0]sdm0data_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [0:0]sdm0width_in;
  input [0:0]sdm1data_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [0:0]sdm1width_in;
  input [0:0]tcongpi_in;
  input [0:0]tconpowerup_in;
  input [0:0]tconreset_in;
  input [0:0]tconrsvdin1_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdo_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubgpi_in;
  input [0:0]ubintr_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmregen_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  output [15:0]drpdo_common_out;
  output [0:0]drprdy_common_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [1:0]rxrecclk0_sel_out;
  output [1:0]rxrecclk1_sel_out;
  output [0:0]rxrecclk0sel_out;
  output [0:0]rxrecclk1sel_out;
  output [0:0]sdm0finalout_out;
  output [0:0]sdm0testdata_out;
  output [0:0]sdm1finalout_out;
  output [0:0]sdm1testdata_out;
  output [0:0]tcongpo_out;
  output [0:0]tconrsvdout0_out;
  output [0:0]ubdaddr_out;
  output [0:0]ubden_out;
  output [0:0]ubdi_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [2:0]cpllrefclksel_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [8:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]elpcaldvorwren_in;
  input [0:0]elpcalpaorwren_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input [15:0]gtrsvd_in;
  input [0:0]gtrxreset_in;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]gttxreset_in;
  input [0:0]gttxresetsel_in;
  input [0:0]incpctrl_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]looprsvd_in;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [15:0]pcsrsvdin_in;
  input [4:0]pcsrsvdin2_in;
  input [4:0]pmarsvdin_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [4:0]rxchbondi_in;
  input [2:0]rxchbondlevel_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [0:0]rxckcalstart_in;
  input [0:0]rxcommadeten_in;
  input [1:0]rxdfeagcctrl_in;
  input [0:0]rxdccforcestart_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfecfokfcnum_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [1:0]rxelecidlemode_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [1:0]rxmonitorsel_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [3:0]rxosintcfg_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [2:0]rxoutclksel_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [1:0]rxpllclksel_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [0:0]rxprogdivreset_in;
  input [0:0]rxqpien_in;
  input [2:0]rxrate_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [1:0]rxsysclksel_in;
  input [0:0]rxtermination_in;
  input [0:0]rxuserrdy_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [19:0]tstin_in;
  input [7:0]tx8b10bbypass_in;
  input [0:0]tx8b10ben_in;
  input [2:0]txbufdiffctrl_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [7:0]txctrl2_in;
  input [127:0]txdata_in;
  input [7:0]txdataextendrsvd_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [0:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [3:0]txdiffctrl_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txelforcestart_in;
  input [5:0]txheader_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [6:0]txmaincursor_in;
  input [2:0]txmargin_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [2:0]txoutclksel_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [4:0]txpippmstepsize_in;
  input [0:0]txpisopd_in;
  input [1:0]txpllclksel_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txprecursorinv_in;
  input [0:0]txprogdivreset_in;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [6:0]txsequence_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [1:0]txsysclksel_in;
  input [0:0]txuserrdy_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [2:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [8:0]bufgtdiv_out;
  output [2:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [16:0]dmonitorout_out;
  output [0:0]dmonitoroutclk_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [11:0]pcsrsvdout_out;
  output [0:0]phystatus_out;
  output [7:0]pinrsrvdas_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [4:0]rxchbondo_out;
  output [0:0]rxckcaldone_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [127:0]rxdata_out;
  output [7:0]rxdataextendrsvd_out;
  output [1:0]rxdatavalid_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [5:0]rxheader_out;
  output [1:0]rxheadervalid_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [6:0]rxmonitorout_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [1:0]rxstartofseq_out;
  output [2:0]rxstatus_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [1:0]txbufstatus_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;

  wire \<const0> ;
  wire [2:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [2:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [16:0]dmonitorout_out;
  wire [8:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drpwe_in;
  wire [0:0]evoddphicaldone_in;
  wire [0:0]evoddphicalstart_in;
  wire [0:0]evoddphidrden_in;
  wire [0:0]evoddphidwren_in;
  wire [0:0]evoddphixrden_in;
  wire [0:0]evoddphixwren_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanmode_in;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [0:0]gtresetsel_in;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0lock_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [0:0]gtwiz_reset_qpll1lock_in;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [2:0]loopback_in;
  wire [0:0]lpbkrxtxseren_in;
  wire [0:0]lpbktxrxseren_in;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [4:0]pcsrsvdin2_in;
  wire [15:0]pcsrsvdin_in;
  wire [11:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [7:0]pinrsrvdas_out;
  wire [4:0]pmarsvdin_in;
  wire [0:0]qpll0clk_in;
  wire [0:0]qpll0refclk_in;
  wire [0:0]qpll1clk_in;
  wire [0:0]qpll1refclk_in;
  wire [0:0]qpll1reset_in;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rstclkentx_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxcdrresetrsv_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [1:0]rxdfeagcctrl_in;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfevsen_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [6:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [3:0]rxosintcfg_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosinten_in;
  wire [0:0]rxosinthold_in;
  wire [0:0]rxosintovrden_in;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobe_in;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosinttestovrden_in;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [0:0]rxphovrden_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [0:0]rxqpien_in;
  wire [0:0]rxqpisenn_out;
  wire [0:0]rxqpisenp_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [2:0]txbufdiffctrl_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [127:0]txdata_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [3:0]txdiffctrl_in;
  wire [0:0]txdiffpd_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txpostcursorinv_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprecursorinv_in;
  wire [0:0]txprgdivresetdone_out;
  wire [0:0]txqpibiasen_in;
  wire [0:0]txqpisenn_out;
  wire [0:0]txqpisenp_out;
  wire [0:0]txqpistrongpdown_in;
  wire [0:0]txqpiweakpup_in;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;

  assign dmonitoroutclk_out[0] = \<const0> ;
  assign drpdo_common_out[15] = \<const0> ;
  assign drpdo_common_out[14] = \<const0> ;
  assign drpdo_common_out[13] = \<const0> ;
  assign drpdo_common_out[12] = \<const0> ;
  assign drpdo_common_out[11] = \<const0> ;
  assign drpdo_common_out[10] = \<const0> ;
  assign drpdo_common_out[9] = \<const0> ;
  assign drpdo_common_out[8] = \<const0> ;
  assign drpdo_common_out[7] = \<const0> ;
  assign drpdo_common_out[6] = \<const0> ;
  assign drpdo_common_out[5] = \<const0> ;
  assign drpdo_common_out[4] = \<const0> ;
  assign drpdo_common_out[3] = \<const0> ;
  assign drpdo_common_out[2] = \<const0> ;
  assign drpdo_common_out[1] = \<const0> ;
  assign drpdo_common_out[0] = \<const0> ;
  assign drprdy_common_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_error_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_error_out[0] = \<const0> ;
  assign gtwiz_reset_qpll1reset_out[0] = qpll1reset_in;
  assign gtwiz_userclk_rx_active_out[0] = gtwiz_userclk_rx_active_in;
  assign gtwiz_userclk_rx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_active_out[0] = gtwiz_userclk_tx_active_in;
  assign gtwiz_userclk_tx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userdata_rx_out[63] = \<const0> ;
  assign gtwiz_userdata_rx_out[62] = \<const0> ;
  assign gtwiz_userdata_rx_out[61] = \<const0> ;
  assign gtwiz_userdata_rx_out[60] = \<const0> ;
  assign gtwiz_userdata_rx_out[59] = \<const0> ;
  assign gtwiz_userdata_rx_out[58] = \<const0> ;
  assign gtwiz_userdata_rx_out[57] = \<const0> ;
  assign gtwiz_userdata_rx_out[56] = \<const0> ;
  assign gtwiz_userdata_rx_out[55] = \<const0> ;
  assign gtwiz_userdata_rx_out[54] = \<const0> ;
  assign gtwiz_userdata_rx_out[53] = \<const0> ;
  assign gtwiz_userdata_rx_out[52] = \<const0> ;
  assign gtwiz_userdata_rx_out[51] = \<const0> ;
  assign gtwiz_userdata_rx_out[50] = \<const0> ;
  assign gtwiz_userdata_rx_out[49] = \<const0> ;
  assign gtwiz_userdata_rx_out[48] = \<const0> ;
  assign gtwiz_userdata_rx_out[47] = \<const0> ;
  assign gtwiz_userdata_rx_out[46] = \<const0> ;
  assign gtwiz_userdata_rx_out[45] = \<const0> ;
  assign gtwiz_userdata_rx_out[44] = \<const0> ;
  assign gtwiz_userdata_rx_out[43] = \<const0> ;
  assign gtwiz_userdata_rx_out[42] = \<const0> ;
  assign gtwiz_userdata_rx_out[41] = \<const0> ;
  assign gtwiz_userdata_rx_out[40] = \<const0> ;
  assign gtwiz_userdata_rx_out[39] = \<const0> ;
  assign gtwiz_userdata_rx_out[38] = \<const0> ;
  assign gtwiz_userdata_rx_out[37] = \<const0> ;
  assign gtwiz_userdata_rx_out[36] = \<const0> ;
  assign gtwiz_userdata_rx_out[35] = \<const0> ;
  assign gtwiz_userdata_rx_out[34] = \<const0> ;
  assign gtwiz_userdata_rx_out[33] = \<const0> ;
  assign gtwiz_userdata_rx_out[32] = \<const0> ;
  assign gtwiz_userdata_rx_out[31] = \<const0> ;
  assign gtwiz_userdata_rx_out[30] = \<const0> ;
  assign gtwiz_userdata_rx_out[29] = \<const0> ;
  assign gtwiz_userdata_rx_out[28] = \<const0> ;
  assign gtwiz_userdata_rx_out[27] = \<const0> ;
  assign gtwiz_userdata_rx_out[26] = \<const0> ;
  assign gtwiz_userdata_rx_out[25] = \<const0> ;
  assign gtwiz_userdata_rx_out[24] = \<const0> ;
  assign gtwiz_userdata_rx_out[23] = \<const0> ;
  assign gtwiz_userdata_rx_out[22] = \<const0> ;
  assign gtwiz_userdata_rx_out[21] = \<const0> ;
  assign gtwiz_userdata_rx_out[20] = \<const0> ;
  assign gtwiz_userdata_rx_out[19] = \<const0> ;
  assign gtwiz_userdata_rx_out[18] = \<const0> ;
  assign gtwiz_userdata_rx_out[17] = \<const0> ;
  assign gtwiz_userdata_rx_out[16] = \<const0> ;
  assign gtwiz_userdata_rx_out[15] = \<const0> ;
  assign gtwiz_userdata_rx_out[14] = \<const0> ;
  assign gtwiz_userdata_rx_out[13] = \<const0> ;
  assign gtwiz_userdata_rx_out[12] = \<const0> ;
  assign gtwiz_userdata_rx_out[11] = \<const0> ;
  assign gtwiz_userdata_rx_out[10] = \<const0> ;
  assign gtwiz_userdata_rx_out[9] = \<const0> ;
  assign gtwiz_userdata_rx_out[8] = \<const0> ;
  assign gtwiz_userdata_rx_out[7] = \<const0> ;
  assign gtwiz_userdata_rx_out[6] = \<const0> ;
  assign gtwiz_userdata_rx_out[5] = \<const0> ;
  assign gtwiz_userdata_rx_out[4] = \<const0> ;
  assign gtwiz_userdata_rx_out[3] = \<const0> ;
  assign gtwiz_userdata_rx_out[2] = \<const0> ;
  assign gtwiz_userdata_rx_out[1] = \<const0> ;
  assign gtwiz_userdata_rx_out[0] = \<const0> ;
  assign gtytxn_out[0] = \<const0> ;
  assign gtytxp_out[0] = \<const0> ;
  assign pmarsvdout0_out[7] = \<const0> ;
  assign pmarsvdout0_out[6] = \<const0> ;
  assign pmarsvdout0_out[5] = \<const0> ;
  assign pmarsvdout0_out[4] = \<const0> ;
  assign pmarsvdout0_out[3] = \<const0> ;
  assign pmarsvdout0_out[2] = \<const0> ;
  assign pmarsvdout0_out[1] = \<const0> ;
  assign pmarsvdout0_out[0] = \<const0> ;
  assign pmarsvdout1_out[7] = \<const0> ;
  assign pmarsvdout1_out[6] = \<const0> ;
  assign pmarsvdout1_out[5] = \<const0> ;
  assign pmarsvdout1_out[4] = \<const0> ;
  assign pmarsvdout1_out[3] = \<const0> ;
  assign pmarsvdout1_out[2] = \<const0> ;
  assign pmarsvdout1_out[1] = \<const0> ;
  assign pmarsvdout1_out[0] = \<const0> ;
  assign powerpresent_out[0] = \<const0> ;
  assign qpll0fbclklost_out[0] = \<const0> ;
  assign qpll0lock_out[0] = gtwiz_reset_qpll0lock_in;
  assign qpll0outclk_out[0] = \<const0> ;
  assign qpll0outrefclk_out[0] = \<const0> ;
  assign qpll0refclklost_out[0] = \<const0> ;
  assign qpll1fbclklost_out[0] = \<const0> ;
  assign qpll1lock_out[0] = gtwiz_reset_qpll1lock_in;
  assign qpll1outclk_out[0] = \<const0> ;
  assign qpll1outrefclk_out[0] = \<const0> ;
  assign qpll1refclklost_out[0] = \<const0> ;
  assign qplldmonitor0_out[7] = \<const0> ;
  assign qplldmonitor0_out[6] = \<const0> ;
  assign qplldmonitor0_out[5] = \<const0> ;
  assign qplldmonitor0_out[4] = \<const0> ;
  assign qplldmonitor0_out[3] = \<const0> ;
  assign qplldmonitor0_out[2] = \<const0> ;
  assign qplldmonitor0_out[1] = \<const0> ;
  assign qplldmonitor0_out[0] = \<const0> ;
  assign qplldmonitor1_out[7] = \<const0> ;
  assign qplldmonitor1_out[6] = \<const0> ;
  assign qplldmonitor1_out[5] = \<const0> ;
  assign qplldmonitor1_out[4] = \<const0> ;
  assign qplldmonitor1_out[3] = \<const0> ;
  assign qplldmonitor1_out[2] = \<const0> ;
  assign qplldmonitor1_out[1] = \<const0> ;
  assign qplldmonitor1_out[0] = \<const0> ;
  assign refclkoutmonitor0_out[0] = \<const0> ;
  assign refclkoutmonitor1_out[0] = \<const0> ;
  assign rxckcaldone_out[0] = \<const0> ;
  assign rxlfpstresetdet_out[0] = \<const0> ;
  assign rxlfpsu2lpexitdet_out[0] = \<const0> ;
  assign rxlfpsu3wakedet_out[0] = \<const0> ;
  assign rxrecclk0_sel_out[1] = \<const0> ;
  assign rxrecclk0_sel_out[0] = \<const0> ;
  assign rxrecclk0sel_out[0] = \<const0> ;
  assign rxrecclk1_sel_out[1] = \<const0> ;
  assign rxrecclk1_sel_out[0] = \<const0> ;
  assign rxrecclk1sel_out[0] = \<const0> ;
  assign sdm0finalout_out[0] = \<const0> ;
  assign sdm0testdata_out[0] = \<const0> ;
  assign sdm1finalout_out[0] = \<const0> ;
  assign sdm1testdata_out[0] = \<const0> ;
  assign tcongpo_out[0] = \<const0> ;
  assign tconrsvdout0_out[0] = \<const0> ;
  assign txdccdone_out[0] = \<const0> ;
  assign ubdaddr_out[0] = \<const0> ;
  assign ubden_out[0] = \<const0> ;
  assign ubdi_out[0] = \<const0> ;
  assign ubdwe_out[0] = \<const0> ;
  assign ubmdmtdo_out[0] = \<const0> ;
  assign ubrsvdout_out[0] = \<const0> ;
  assign ubtxuart_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_01e2_xpcs_0_gt_bd_01e2_xpcs_0_gt_gtwizard_gthe3 \gen_gtwizard_gthe3_top.bd_01e2_xpcs_0_gt_gtwizard_gthe3_inst 
       (.bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .evoddphicaldone_in(evoddphicaldone_in),
        .evoddphicalstart_in(evoddphicalstart_in),
        .evoddphidrden_in(evoddphidrden_in),
        .evoddphidwren_in(evoddphidwren_in),
        .evoddphixrden_in(evoddphixrden_in),
        .evoddphixwren_in(evoddphixwren_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanmode_in(eyescanmode_in),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .gtgrefclk_in(gtgrefclk_in),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtresetsel_in(gtresetsel_in),
        .gtrsvd_in(gtrsvd_in),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(gtwiz_reset_qpll0lock_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .loopback_in(loopback_in),
        .lpbkrxtxseren_in(lpbkrxtxseren_in),
        .lpbktxrxseren_in(lpbktxrxseren_in),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin2_in(pcsrsvdin2_in),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .pmarsvdin_in(pmarsvdin_in),
        .qpll0clk_in(qpll0clk_in),
        .qpll0refclk_in(qpll0refclk_in),
        .qpll1clk_in(qpll1clk_in),
        .qpll1refclk_in(qpll1refclk_in),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rstclkentx_in(rstclkentx_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxcdrresetrsv_in(rxcdrresetrsv_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagcctrl_in(rxdfeagcctrl_in),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfevsen_in(rxdfevsen_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintcfg_in(rxosintcfg_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosinten_in(rxosinten_in),
        .rxosinthold_in(rxosinthold_in),
        .rxosintovrden_in(rxosintovrden_in),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobe_in(rxosintstrobe_in),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosinttestovrden_in(rxosinttestovrden_in),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxphovrden_in(rxphovrden_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxqpien_in(rxqpien_in),
        .rxqpisenn_out(rxqpisenn_out),
        .rxqpisenp_out(rxqpisenp_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sigvalidclk_in(sigvalidclk_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufdiffctrl_in(txbufdiffctrl_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdata_in(txdata_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdiffpd_in(txdiffpd_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpisopd_in(txpisopd_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmareset_in(txpmareset_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txpostcursorinv_in(txpostcursorinv_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprecursorinv_in(txprecursorinv_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txqpibiasen_in(txqpibiasen_in),
        .txqpisenn_out(txqpisenn_out),
        .txqpisenp_out(txqpisenp_out),
        .txqpistrongpdown_in(txqpistrongpdown_in),
        .txqpiweakpup_in(txqpiweakpup_in),
        .txrate_in(txrate_in),
        .txratedone_out(txratedone_out),
        .txratemode_in(txratemode_in),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer
   (rxresetdone_sync,
    rxresetdone_out,
    gtwiz_reset_clk_freerun_in);
  output rxresetdone_sync;
  input [0:0]rxresetdone_out;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]rxresetdone_out;
  wire rxresetdone_sync;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rxresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(rxresetdone_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_0
   (txresetdone_sync,
    txresetdone_out,
    gtwiz_reset_clk_freerun_in);
  output txresetdone_sync;
  input [0:0]txresetdone_out;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]txresetdone_out;
  wire txresetdone_sync;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(txresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(txresetdone_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_1
   (gtpowergood_sync,
    gtpowergood_out,
    gtwiz_reset_clk_freerun_in);
  output gtpowergood_sync;
  input [0:0]gtpowergood_out;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire [0:0]gtpowergood_out;
  wire gtpowergood_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtpowergood_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtpowergood_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_10
   (gtwiz_reset_rx_cdr_stable_out,
    sm_reset_rx_cdr_to_clr_reg,
    rxprogdivreset_out_reg,
    E,
    rxcdrlock_out,
    gtwiz_reset_clk_freerun_in,
    out,
    sm_reset_rx_timer_clr09_out,
    sm_reset_rx_cdr_to_clr,
    gtwiz_reset_rx_any_sync,
    rxprogdivreset_int,
    sm_reset_rx_cdr_to_sat,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    rxresetdone_sync,
    sm_reset_rx_timer_sat,
    sm_reset_rx_timer_clr_reg,
    gtwiz_reset_rx_pll_and_datapath_dly,
    gtwiz_reset_rx_datapath_dly);
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output sm_reset_rx_cdr_to_clr_reg;
  output rxprogdivreset_out_reg;
  output [0:0]E;
  input [0:0]rxcdrlock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input sm_reset_rx_timer_clr09_out;
  input sm_reset_rx_cdr_to_clr;
  input gtwiz_reset_rx_any_sync;
  input rxprogdivreset_int;
  input sm_reset_rx_cdr_to_sat;
  input \FSM_sequential_sm_reset_rx_reg[1] ;
  input rxresetdone_sync;
  input sm_reset_rx_timer_sat;
  input sm_reset_rx_timer_clr_reg;
  input gtwiz_reset_rx_pll_and_datapath_dly;
  input gtwiz_reset_rx_datapath_dly;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_rx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_5_n_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire gtwiz_reset_rx_datapath_dly;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire [0:0]rxcdrlock_out;
  wire rxprogdivreset_int;
  wire rxprogdivreset_out_reg;
  wire rxresetdone_sync;
  wire sm_reset_rx_cdr_to_clr;
  wire sm_reset_rx_cdr_to_clr0;
  wire sm_reset_rx_cdr_to_clr_reg;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_timer_clr09_out;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_sat;

  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \FSM_sequential_sm_reset_rx[2]_i_3 
       (.I0(rxresetdone_sync),
        .I1(out[2]),
        .I2(sm_reset_rx_timer_sat),
        .I3(sm_reset_rx_timer_clr_reg),
        .I4(out[1]),
        .I5(\FSM_sequential_sm_reset_rx[2]_i_5_n_0 ),
        .O(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEFEFEFE0)) 
    \FSM_sequential_sm_reset_rx[2]_i_5 
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(gtwiz_reset_rx_cdr_stable_out),
        .I2(out[2]),
        .I3(gtwiz_reset_rx_pll_and_datapath_dly),
        .I4(gtwiz_reset_rx_datapath_dly),
        .O(\FSM_sequential_sm_reset_rx[2]_i_5_n_0 ));
  MUXF7 \FSM_sequential_sm_reset_rx_reg[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ),
        .I1(\FSM_sequential_sm_reset_rx_reg[1] ),
        .O(E),
        .S(out[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rxcdrlock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_cdr_stable_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000330)) 
    rxprogdivreset_out_i_1
       (.I0(sm_reset_rx_cdr_to_clr0),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(rxprogdivreset_int),
        .O(rxprogdivreset_out_reg));
  LUT6 #(
    .INIT(64'hFFFF3FFF02020303)) 
    sm_reset_rx_cdr_to_clr_i_1
       (.I0(sm_reset_rx_cdr_to_clr0),
        .I1(out[1]),
        .I2(out[0]),
        .I3(sm_reset_rx_timer_clr09_out),
        .I4(out[2]),
        .I5(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_clr_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sm_reset_rx_cdr_to_clr_i_2
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(gtwiz_reset_rx_cdr_stable_out),
        .O(sm_reset_rx_cdr_to_clr0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_2
   (gtwiz_reset_rx_datapath_dly,
    in0,
    gtwiz_reset_clk_freerun_in);
  output gtwiz_reset_rx_datapath_dly;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_3
   (gtwiz_reset_rx_pll_and_datapath_dly,
    D,
    in0,
    gtwiz_reset_clk_freerun_in,
    out,
    p_0_in11_out);
  output gtwiz_reset_rx_pll_and_datapath_dly;
  output [1:0]D;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input p_0_in11_out;

  wire [1:0]D;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;
  wire p_0_in11_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0303BFBC)) 
    \FSM_sequential_sm_reset_rx[0]_i_1 
       (.I0(p_0_in11_out),
        .I1(out[1]),
        .I2(out[2]),
        .I3(gtwiz_reset_rx_pll_and_datapath_dly),
        .I4(out[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00F3FF11)) 
    \FSM_sequential_sm_reset_rx[1]_i_1 
       (.I0(gtwiz_reset_rx_pll_and_datapath_dly),
        .I1(out[2]),
        .I2(p_0_in11_out),
        .I3(out[0]),
        .I4(out[1]),
        .O(D[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_4
   (gtwiz_reset_tx_datapath_dly,
    in0,
    gtwiz_reset_clk_freerun_in);
  output gtwiz_reset_tx_datapath_dly;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_5
   (gtwiz_reset_tx_pll_and_datapath_dly,
    D,
    in0,
    gtwiz_reset_clk_freerun_in,
    out);
  output gtwiz_reset_tx_pll_and_datapath_dly;
  output [1:0]D;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;

  wire [1:0]D;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5756)) 
    \FSM_sequential_sm_reset_tx[0]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(gtwiz_reset_tx_pll_and_datapath_dly),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h03F1)) 
    \FSM_sequential_sm_reset_tx[1]_i_1 
       (.I0(gtwiz_reset_tx_pll_and_datapath_dly),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(D[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_6
   (rxuserrdy_out_reg,
    sm_reset_rx_timer_clr0,
    sm_reset_rx_timer_clr_reg,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    sm_reset_rx_timer_sat,
    sm_reset_rx_timer_clr_reg_0,
    out,
    rxresetdone_sync,
    gtwiz_reset_rx_any_sync,
    rxuserrdy_int,
    i_in_out_reg_0);
  output rxuserrdy_out_reg;
  output sm_reset_rx_timer_clr0;
  output sm_reset_rx_timer_clr_reg;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_rx_timer_sat;
  input sm_reset_rx_timer_clr_reg_0;
  input [2:0]out;
  input rxresetdone_sync;
  input gtwiz_reset_rx_any_sync;
  input rxuserrdy_int;
  input i_in_out_reg_0;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_userclk_rx_active_sync;
  wire [0:0]gtwiz_userclk_rx_active_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire rxresetdone_sync;
  wire rxuserrdy_int;
  wire rxuserrdy_out_reg;
  wire sm_reset_rx_timer_clr0;
  wire sm_reset_rx_timer_clr_i_2_n_0;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_userclk_rx_active_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_rx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEDED00000800)) 
    rxuserrdy_out_i_1
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(sm_reset_rx_timer_clr0),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(rxuserrdy_int),
        .O(rxuserrdy_out_reg));
  LUT3 #(
    .INIT(8'h40)) 
    rxuserrdy_out_i_2
       (.I0(sm_reset_rx_timer_clr_reg_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(gtwiz_reset_userclk_rx_active_sync),
        .O(sm_reset_rx_timer_clr0));
  LUT6 #(
    .INIT(64'hFAAFCCFA0AA0CC0A)) 
    sm_reset_rx_timer_clr_i_1
       (.I0(sm_reset_rx_timer_clr_i_2_n_0),
        .I1(i_in_out_reg_0),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(sm_reset_rx_timer_clr_reg_0),
        .O(sm_reset_rx_timer_clr_reg));
  LUT6 #(
    .INIT(64'h0C080008FFFFFFFF)) 
    sm_reset_rx_timer_clr_i_2
       (.I0(gtwiz_reset_userclk_rx_active_sync),
        .I1(sm_reset_rx_timer_sat),
        .I2(sm_reset_rx_timer_clr_reg_0),
        .I3(out[1]),
        .I4(rxresetdone_sync),
        .I5(out[2]),
        .O(sm_reset_rx_timer_clr_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_7
   (gtwiz_reset_userclk_tx_active_sync,
    txuserrdy_out_reg,
    E,
    gtwiz_userclk_tx_active_in,
    gtwiz_reset_clk_freerun_in,
    out,
    gtwiz_reset_tx_any_sync,
    txuserrdy_int,
    sm_reset_tx_timer_clr_reg,
    sm_reset_tx_timer_sat,
    i_in_out_reg_0,
    sm_reset_tx_timer_sat_reg,
    gtwiz_reset_tx_pll_and_datapath_dly,
    gtwiz_reset_tx_datapath_dly);
  output gtwiz_reset_userclk_tx_active_sync;
  output txuserrdy_out_reg;
  output [0:0]E;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input gtwiz_reset_tx_any_sync;
  input txuserrdy_int;
  input sm_reset_tx_timer_clr_reg;
  input sm_reset_tx_timer_sat;
  input i_in_out_reg_0;
  input sm_reset_tx_timer_sat_reg;
  input gtwiz_reset_tx_pll_and_datapath_dly;
  input gtwiz_reset_tx_datapath_dly;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_tx[2]_i_3_n_0 ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  wire gtwiz_reset_userclk_tx_active_sync;
  wire [0:0]gtwiz_userclk_tx_active_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire sm_reset_tx_timer_clr0;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_reg;
  wire txuserrdy_int;
  wire txuserrdy_out_reg;

  LUT6 #(
    .INIT(64'h40DD40DD40DD4088)) 
    \FSM_sequential_sm_reset_tx[2]_i_3 
       (.I0(out[1]),
        .I1(sm_reset_tx_timer_sat_reg),
        .I2(gtwiz_reset_userclk_tx_active_sync),
        .I3(out[2]),
        .I4(gtwiz_reset_tx_pll_and_datapath_dly),
        .I5(gtwiz_reset_tx_datapath_dly),
        .O(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ));
  MUXF7 \FSM_sequential_sm_reset_tx_reg[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ),
        .I1(i_in_out_reg_0),
        .O(E),
        .S(out[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_userclk_tx_active_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_tx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFCCF00000008)) 
    txuserrdy_out_i_1
       (.I0(sm_reset_tx_timer_clr0),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(txuserrdy_int),
        .O(txuserrdy_out_reg));
  LUT3 #(
    .INIT(8'h40)) 
    txuserrdy_out_i_2
       (.I0(sm_reset_tx_timer_clr_reg),
        .I1(sm_reset_tx_timer_sat),
        .I2(gtwiz_reset_userclk_tx_active_sync),
        .O(sm_reset_tx_timer_clr0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_8
   (gtrxreset_out_reg,
    sm_reset_rx_timer_clr09_out,
    gtwiz_reset_rx_done_int_reg,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    sm_reset_rx_timer_clr_reg,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_clk_freerun_in,
    out,
    gtwiz_reset_rx_any_sync,
    gtrxreset_int,
    p_0_in11_out,
    gtwiz_reset_rx_done_int_reg_0,
    sm_reset_rx_timer_clr_reg_0,
    sm_reset_rx_timer_sat,
    sm_reset_rx_timer_clr0,
    sm_reset_rx_pll_timer_sat,
    sm_reset_rx_pll_timer_clr_reg);
  output gtrxreset_out_reg;
  output sm_reset_rx_timer_clr09_out;
  output gtwiz_reset_rx_done_int_reg;
  output \FSM_sequential_sm_reset_rx_reg[0] ;
  output sm_reset_rx_timer_clr_reg;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input gtwiz_reset_rx_any_sync;
  input gtrxreset_int;
  input p_0_in11_out;
  input gtwiz_reset_rx_done_int_reg_0;
  input sm_reset_rx_timer_clr_reg_0;
  input sm_reset_rx_timer_sat;
  input sm_reset_rx_timer_clr0;
  input sm_reset_rx_pll_timer_sat;
  input sm_reset_rx_pll_timer_clr_reg;

  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire gtrxreset_int;
  wire gtrxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0lock_in;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_rx_done_int_reg;
  wire gtwiz_reset_rx_done_int_reg_0;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire p_0_in11_out;
  wire plllock_rx_sync;
  wire sm_reset_rx_pll_timer_clr_reg;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_timer_clr0;
  wire sm_reset_rx_timer_clr09_out;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;

  LUT6 #(
    .INIT(64'h3088308830BB3088)) 
    \FSM_sequential_sm_reset_rx[2]_i_4 
       (.I0(sm_reset_rx_timer_clr09_out),
        .I1(out[1]),
        .I2(sm_reset_rx_timer_clr0),
        .I3(out[2]),
        .I4(sm_reset_rx_pll_timer_sat),
        .I5(sm_reset_rx_pll_timer_clr_reg),
        .O(\FSM_sequential_sm_reset_rx_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000003C)) 
    gtrxreset_out_i_1
       (.I0(sm_reset_rx_timer_clr09_out),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(gtrxreset_int),
        .O(gtrxreset_out_reg));
  LUT6 #(
    .INIT(64'hFFFF77FF00800080)) 
    gtwiz_reset_rx_done_int_i_1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(p_0_in11_out),
        .I3(out[0]),
        .I4(plllock_rx_sync),
        .I5(gtwiz_reset_rx_done_int_reg_0),
        .O(gtwiz_reset_rx_done_int_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_qpll0lock_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_rx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sm_reset_rx_cdr_to_clr_i_3
       (.I0(sm_reset_rx_timer_clr_reg_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(plllock_rx_sync),
        .O(sm_reset_rx_timer_clr09_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    sm_reset_rx_timer_clr_i_3
       (.I0(plllock_rx_sync),
        .I1(out[0]),
        .I2(sm_reset_rx_timer_sat),
        .I3(sm_reset_rx_timer_clr_reg_0),
        .O(sm_reset_rx_timer_clr_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_bit_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_9
   (gttxreset_out_reg,
    sm_reset_tx_timer_clr_reg,
    gtwiz_reset_tx_done_int_reg,
    \FSM_sequential_sm_reset_tx_reg[0] ,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_clk_freerun_in,
    sm_reset_tx_timer_sat,
    sm_reset_tx_timer_clr_reg_0,
    out,
    gtwiz_reset_tx_any_sync,
    gttxreset_int,
    gtwiz_reset_tx_done_int0,
    gtwiz_reset_tx_done_int_reg_0,
    sm_reset_tx_timer_sat_reg,
    txresetdone_sync,
    sm_reset_tx_pll_timer_sat_reg,
    gtwiz_reset_userclk_tx_active_sync);
  output gttxreset_out_reg;
  output sm_reset_tx_timer_clr_reg;
  output gtwiz_reset_tx_done_int_reg;
  output \FSM_sequential_sm_reset_tx_reg[0] ;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_tx_timer_sat;
  input sm_reset_tx_timer_clr_reg_0;
  input [2:0]out;
  input gtwiz_reset_tx_any_sync;
  input gttxreset_int;
  input gtwiz_reset_tx_done_int0;
  input gtwiz_reset_tx_done_int_reg_0;
  input sm_reset_tx_timer_sat_reg;
  input txresetdone_sync;
  input sm_reset_tx_pll_timer_sat_reg;
  input gtwiz_reset_userclk_tx_active_sync;

  wire \FSM_sequential_sm_reset_tx_reg[0] ;
  wire gttxreset_int;
  wire gttxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0lock_in;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_done_int0;
  wire gtwiz_reset_tx_done_int_reg;
  wire gtwiz_reset_tx_done_int_reg_0;
  wire gtwiz_reset_userclk_tx_active_sync;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_tx_sync;
  wire sm_reset_tx_pll_timer_sat_reg;
  wire sm_reset_tx_timer_clr012_out;
  wire sm_reset_tx_timer_clr_i_2_n_0;
  wire sm_reset_tx_timer_clr_i_3_n_0;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_clr_reg_0;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_reg;
  wire txresetdone_sync;

  LUT6 #(
    .INIT(64'h3000B3B330008080)) 
    \FSM_sequential_sm_reset_tx[2]_i_4 
       (.I0(plllock_tx_sync),
        .I1(out[1]),
        .I2(sm_reset_tx_timer_sat_reg),
        .I3(txresetdone_sync),
        .I4(out[2]),
        .I5(sm_reset_tx_pll_timer_sat_reg),
        .O(\FSM_sequential_sm_reset_tx_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000003C)) 
    gttxreset_out_i_1
       (.I0(sm_reset_tx_timer_clr012_out),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(gttxreset_int),
        .O(gttxreset_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    gttxreset_out_i_2
       (.I0(sm_reset_tx_timer_clr_reg_0),
        .I1(sm_reset_tx_timer_sat),
        .I2(plllock_tx_sync),
        .O(sm_reset_tx_timer_clr012_out));
  LUT6 #(
    .INIT(64'hFFCFFFFF00008080)) 
    gtwiz_reset_tx_done_int_i_1
       (.I0(gtwiz_reset_tx_done_int0),
        .I1(out[0]),
        .I2(out[2]),
        .I3(plllock_tx_sync),
        .I4(out[1]),
        .I5(gtwiz_reset_tx_done_int_reg_0),
        .O(gtwiz_reset_tx_done_int_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_qpll0lock_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_tx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEBEB282B)) 
    sm_reset_tx_timer_clr_i_1
       (.I0(sm_reset_tx_timer_clr_i_2_n_0),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(sm_reset_tx_timer_clr_reg_0),
        .O(sm_reset_tx_timer_clr_reg));
  LUT6 #(
    .INIT(64'hCFEFC0C0CFE0C0C0)) 
    sm_reset_tx_timer_clr_i_2
       (.I0(txresetdone_sync),
        .I1(sm_reset_tx_timer_clr_i_3_n_0),
        .I2(out[0]),
        .I3(out[1]),
        .I4(sm_reset_tx_timer_sat_reg),
        .I5(gtwiz_reset_userclk_tx_active_sync),
        .O(sm_reset_tx_timer_clr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    sm_reset_tx_timer_clr_i_3
       (.I0(plllock_tx_sync),
        .I1(sm_reset_tx_timer_sat),
        .I2(sm_reset_tx_timer_clr_reg_0),
        .I3(out[2]),
        .O(sm_reset_tx_timer_clr_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_gthe3_channel" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_gthe3_channel
   (cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    gtrefclkmonitor_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    pcsrsvdout_out,
    rxdata_out,
    drpdo_out,
    rxctrl0_out,
    rxctrl1_out,
    dmonitorout_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtce_out,
    bufgtcemask_out,
    bufgtreset_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxmonitorout_out,
    pinrsrvdas_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    bufgtdiv_out,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtrxreset_int,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxreset_int,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0clk_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprogdivreset_int,
    rxqpien_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxuserrdy_int,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpisopd_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprecursorinv_in,
    txprogdivreset_int,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txratemode_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txuserrdy_int,
    txusrclk_in,
    txusrclk2_in,
    txdata_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    rxdfeagcctrl_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txbufdiffctrl_in,
    txmargin_in,
    txoutclksel_in,
    txrate_in,
    rxosintcfg_in,
    rxprbssel_in,
    txdiffctrl_in,
    txprbssel_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    rxchbondi_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in);
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [11:0]pcsrsvdout_out;
  output [127:0]rxdata_out;
  output [15:0]drpdo_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [16:0]dmonitorout_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [6:0]rxmonitorout_out;
  output [7:0]pinrsrvdas_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [8:0]bufgtdiv_out;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input gtrxreset_int;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input gttxreset_int;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input rxprogdivreset_int;
  input [0:0]rxqpien_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input rxuserrdy_int;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [0:0]txpisopd_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [0:0]txprecursorinv_in;
  input txprogdivreset_int;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [0:0]txratemode_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input txuserrdy_int;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [127:0]txdata_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [1:0]rxdfeagcctrl_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txbufdiffctrl_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [2:0]txrate_in;
  input [3:0]rxosintcfg_in;
  input [3:0]rxprbssel_in;
  input [3:0]txdiffctrl_in;
  input [3:0]txprbssel_in;
  input [4:0]pcsrsvdin2_in;
  input [4:0]pmarsvdin_in;
  input [4:0]rxchbondi_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [8:0]drpaddr_in;

  wire [2:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [2:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [16:0]dmonitorout_out;
  wire [8:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drpwe_in;
  wire [0:0]evoddphicaldone_in;
  wire [0:0]evoddphicalstart_in;
  wire [0:0]evoddphidrden_in;
  wire [0:0]evoddphidwren_in;
  wire [0:0]evoddphixrden_in;
  wire [0:0]evoddphixwren_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanmode_in;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [0:0]gtresetsel_in;
  wire [15:0]gtrsvd_in;
  wire gtrxreset_int;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire gttxreset_int;
  wire [2:0]loopback_in;
  wire [0:0]lpbkrxtxseren_in;
  wire [0:0]lpbktxrxseren_in;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [4:0]pcsrsvdin2_in;
  wire [15:0]pcsrsvdin_in;
  wire [11:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [7:0]pinrsrvdas_out;
  wire [4:0]pmarsvdin_in;
  wire [0:0]qpll0clk_in;
  wire [0:0]qpll0refclk_in;
  wire [0:0]qpll1clk_in;
  wire [0:0]qpll1refclk_in;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rstclkentx_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxcdrresetrsv_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [1:0]rxdfeagcctrl_in;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfevsen_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [6:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [3:0]rxosintcfg_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosinten_in;
  wire [0:0]rxosinthold_in;
  wire [0:0]rxosintovrden_in;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobe_in;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosinttestovrden_in;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [0:0]rxphovrden_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire rxprogdivreset_int;
  wire [0:0]rxqpien_in;
  wire [0:0]rxqpisenn_out;
  wire [0:0]rxqpisenp_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire rxuserrdy_int;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [2:0]txbufdiffctrl_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [127:0]txdata_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [3:0]txdiffctrl_in;
  wire [0:0]txdiffpd_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txpostcursorinv_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprecursorinv_in;
  wire [0:0]txprgdivresetdone_out;
  wire txprogdivreset_int;
  wire [0:0]txqpibiasen_in;
  wire [0:0]txqpisenn_out;
  wire [0:0]txqpisenp_out;
  wire [0:0]txqpistrongpdown_in;
  wire [0:0]txqpiweakpup_in;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire txuserrdy_int;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTHE3_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(16'hF800),
    .ADAPT_CFG1(16'h0000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0000000000),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("FALSE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("FALSE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .A_RXOSCALRESET(1'b0),
    .A_RXPROGDIVRESET(1'b0),
    .A_TXPROGDIVRESET(1'b0),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CDR_SWAP_MODE_EN(1'b0),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(20),
    .CLK_COR_MIN_LAT(18),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0000000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0000000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG0(16'h67F8),
    .CPLL_CFG1(16'hA4AC),
    .CPLL_CFG2(16'h5007),
    .CPLL_CFG3(6'h00),
    .CPLL_FBDIV(2),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG0(16'h02B2),
    .CPLL_INIT_CFG1(8'h00),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DDI_CTRL(2'b00),
    .DDI_REALIGN_WAIT(15),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DFE_D_X_REL_POS(1'b0),
    .DFE_VCM_COMP_EN(1'b0),
    .DMONITOR_CFG0(10'h000),
    .DMONITOR_CFG1(8'h00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER0(16'h0000),
    .ES_QUALIFIER1(16'h0000),
    .ES_QUALIFIER2(16'h0000),
    .ES_QUALIFIER3(16'h0000),
    .ES_QUALIFIER4(16'h0000),
    .ES_QUAL_MASK0(16'h0000),
    .ES_QUAL_MASK1(16'h0000),
    .ES_QUAL_MASK2(16'h0000),
    .ES_QUAL_MASK3(16'h0000),
    .ES_QUAL_MASK4(16'h0000),
    .ES_SDATA_MASK0(16'h0000),
    .ES_SDATA_MASK1(16'h0000),
    .ES_SDATA_MASK2(16'h0000),
    .ES_SDATA_MASK3(16'h0000),
    .ES_SDATA_MASK4(16'h0000),
    .EVODD_PHI_CFG(11'b00000000000),
    .EYE_SCAN_SWAP_EN(1'b0),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(5'b10001),
    .GM_BIAS_SELECT(1'b0),
    .LOCAL_MASTER(1'b1),
    .OOBDIVCTL(2'b00),
    .OOB_PWRUP(1'b0),
    .PCI3_AUTO_REALIGN("OVR_1K_BLK"),
    .PCI3_PIPE_RX_ELECIDLE(1'b0),
    .PCI3_RX_ASYNC_EBUF_BYPASS(2'b00),
    .PCI3_RX_ELECIDLE_EI2_ENABLE(1'b0),
    .PCI3_RX_ELECIDLE_H2L_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_H2L_DISABLE(3'b000),
    .PCI3_RX_ELECIDLE_HI_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_LP4_DISABLE(1'b0),
    .PCI3_RX_FIFO_DISABLE(1'b0),
    .PCIE_BUFG_DIV_CTRL(16'h1000),
    .PCIE_RXPCS_CFG_GEN3(16'h02A4),
    .PCIE_RXPMA_CFG(16'h000A),
    .PCIE_TXPCS_CFG_GEN3(16'h2CA4),
    .PCIE_TXPMA_CFG(16'h000A),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD0(16'b0000000000000000),
    .PCS_RSVD1(3'b000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PLL_SEL_MODE_GEN12(2'h3),
    .PLL_SEL_MODE_GEN3(2'h3),
    .PMA_RSV1(16'hF000),
    .PROCESS_PAR(3'b010),
    .RATE_SW_USE_DRP(1'b1),
    .RESET_POWERSAVE_DISABLE(1'b0),
    .RXBUFRESET_TIME(5'b00011),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("FALSE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(0),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(0),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG0(16'h0000),
    .RXCDR_CFG0_GEN3(16'h0000),
    .RXCDR_CFG1(16'h0000),
    .RXCDR_CFG1_GEN3(16'h0000),
    .RXCDR_CFG2(16'h07E6),
    .RXCDR_CFG2_GEN3(16'h07E6),
    .RXCDR_CFG3(16'h0000),
    .RXCDR_CFG3_GEN3(16'h0000),
    .RXCDR_CFG4(16'h0000),
    .RXCDR_CFG4_GEN3(16'h0000),
    .RXCDR_CFG5(16'h0000),
    .RXCDR_CFG5_GEN3(16'h0000),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG0(16'h4480),
    .RXCDR_LOCK_CFG1(16'h5FFF),
    .RXCDR_LOCK_CFG2(16'h77C3),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXCFOK_CFG0(16'h4000),
    .RXCFOK_CFG1(16'h0065),
    .RXCFOK_CFG2(16'h002E),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDFELPM_KL_CFG0(16'h0000),
    .RXDFELPM_KL_CFG1(16'h0002),
    .RXDFELPM_KL_CFG2(16'h0000),
    .RXDFE_CFG0(16'h0A00),
    .RXDFE_CFG1(16'h0000),
    .RXDFE_GC_CFG0(16'h0000),
    .RXDFE_GC_CFG1(16'h7870),
    .RXDFE_GC_CFG2(16'h0000),
    .RXDFE_H2_CFG0(16'h0000),
    .RXDFE_H2_CFG1(16'h0000),
    .RXDFE_H3_CFG0(16'h4000),
    .RXDFE_H3_CFG1(16'h0000),
    .RXDFE_H4_CFG0(16'h2000),
    .RXDFE_H4_CFG1(16'h0003),
    .RXDFE_H5_CFG0(16'h2000),
    .RXDFE_H5_CFG1(16'h0003),
    .RXDFE_H6_CFG0(16'h2000),
    .RXDFE_H6_CFG1(16'h0000),
    .RXDFE_H7_CFG0(16'h2000),
    .RXDFE_H7_CFG1(16'h0000),
    .RXDFE_H8_CFG0(16'h2000),
    .RXDFE_H8_CFG1(16'h0000),
    .RXDFE_H9_CFG0(16'h2000),
    .RXDFE_H9_CFG1(16'h0000),
    .RXDFE_HA_CFG0(16'h2000),
    .RXDFE_HA_CFG1(16'h0000),
    .RXDFE_HB_CFG0(16'h2000),
    .RXDFE_HB_CFG1(16'h0000),
    .RXDFE_HC_CFG0(16'h0000),
    .RXDFE_HC_CFG1(16'h0000),
    .RXDFE_HD_CFG0(16'h0000),
    .RXDFE_HD_CFG1(16'h0000),
    .RXDFE_HE_CFG0(16'h0000),
    .RXDFE_HE_CFG1(16'h0000),
    .RXDFE_HF_CFG0(16'h0000),
    .RXDFE_HF_CFG1(16'h0000),
    .RXDFE_OS_CFG0(16'h8000),
    .RXDFE_OS_CFG1(16'h0000),
    .RXDFE_UT_CFG0(16'h8000),
    .RXDFE_UT_CFG1(16'h0003),
    .RXDFE_VP_CFG0(16'hAA00),
    .RXDFE_VP_CFG1(16'h0033),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(16'h0030),
    .RXELECIDLE_CFG("Sigcfg_4"),
    .RXGBOX_FIFO_INIT_RD_ADDR(4),
    .RXGEARBOX_EN("TRUE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_CFG(16'h0000),
    .RXLPM_GC_CFG(16'h1000),
    .RXLPM_KH_CFG0(16'h0000),
    .RXLPM_KH_CFG1(16'h0002),
    .RXLPM_OS_CFG0(16'h8000),
    .RXLPM_OS_CFG1(16'h0002),
    .RXOOB_CFG(9'b000000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00011),
    .RXPHBEACON_CFG(16'h0000),
    .RXPHDLY_CFG(16'h2020),
    .RXPHSAMP_CFG(16'h2100),
    .RXPHSLIP_CFG(16'h6622),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(2'b00),
    .RXPI_CFG1(2'b00),
    .RXPI_CFG2(2'b00),
    .RXPI_CFG3(2'b00),
    .RXPI_CFG4(1'b0),
    .RXPI_CFG5(1'b1),
    .RXPI_CFG6(3'b000),
    .RXPI_LPM(1'b0),
    .RXPI_VREFSEL(1'b0),
    .RXPMACLK_SEL("DATA"),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXPRBS_LINKACQ_CNT(15),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_AFE_CM_EN(1'b0),
    .RX_BIAS_CFG0(16'h0AB4),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CAPFF_SARC_ENB(1'b0),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_EN(1'b1),
    .RX_CLK_SLIP_OVRD(5'b00000),
    .RX_CM_BUF_CFG(4'b1010),
    .RX_CM_BUF_PD(1'b0),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_CTLE3_LPF(8'b00000001),
    .RX_DATA_WIDTH(64),
    .RX_DDI_SEL(6'b000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFELPM_CFG0(4'b0110),
    .RX_DFELPM_CFG1(1'b1),
    .RX_DFELPM_KLKH_AGC_STUP_EN(1'b1),
    .RX_DFE_AGC_CFG0(2'b10),
    .RX_DFE_AGC_CFG1(3'b100),
    .RX_DFE_KL_LPM_KH_CFG0(2'b01),
    .RX_DFE_KL_LPM_KH_CFG1(3'b100),
    .RX_DFE_KL_LPM_KL_CFG0(2'b01),
    .RX_DFE_KL_LPM_KL_CFG1(3'b100),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_DIVRESET_TIME(5'b00001),
    .RX_EN_HI_LR(1'b1),
    .RX_EYESCAN_VS_CODE(7'b0000000),
    .RX_EYESCAN_VS_NEG_DIR(1'b0),
    .RX_EYESCAN_VS_RANGE(2'b00),
    .RX_EYESCAN_VS_UT_SIGN(1'b0),
    .RX_FABINT_USRCLK_FLOP(1'b0),
    .RX_INT_DATAWIDTH(1),
    .RX_PMA_POWER_SAVE(1'b0),
    .RX_PROGDIV_CFG(16.500000),
    .RX_SAMPLE_PERIOD(3'b111),
    .RX_SIG_VALID_DLY(11),
    .RX_SUM_DFETAPREP_EN(1'b0),
    .RX_SUM_IREF_TUNE(4'b0000),
    .RX_SUM_RES_CTRL(2'b00),
    .RX_SUM_VCMTUNE(4'b0000),
    .RX_SUM_VCM_OVWR(1'b0),
    .RX_SUM_VREF_TUNE(3'b000),
    .RX_TUNE_AFE_OS(2'b10),
    .RX_WIDEMODE_CDR(1'b1),
    .RX_XCLK_SEL("RXDES"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b1110),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_MODE("FAST"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL(1'b0),
    .SIM_VERSION(2),
    .TAPDLY_SET_TX(2'h0),
    .TEMPERATUR_PAR(4'b0010),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV0(8'h00),
    .TST_RSV1(8'h00),
    .TXBUF_EN("FALSE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h0009),
    .TXDLY_LCFG(16'h0050),
    .TXDRVBIAS_N(4'b1010),
    .TXDRVBIAS_P(4'b1010),
    .TXFIFO_ADDR_CFG("LOW"),
    .TXGBOX_FIFO_INIT_RD_ADDR(4),
    .TXGEARBOX_EN("TRUE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00011),
    .TXPHDLY_CFG0(16'h2020),
    .TXPHDLY_CFG1(16'h0075),
    .TXPH_CFG(16'h0980),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b1),
    .TXPI_CFG4(1'b1),
    .TXPI_CFG5(3'b000),
    .TXPI_GRAY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_LPM(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPI_VREFSEL(1'b0),
    .TXPMARESET_TIME(5'b00011),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(64),
    .TX_DCD_CFG(6'b000010),
    .TX_DCD_EN(1'b0),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DIVRESET_TIME(5'b00001),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b100),
    .TX_EIDLE_DEASSERT_DELAY(3'b011),
    .TX_EML_PHI_TUNE(1'b0),
    .TX_FABINT_USRCLK_FLOP(1'b0),
    .TX_IDLE_DATA_ZERO(1'b0),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001111),
    .TX_MARGIN_FULL_1(7'b1001110),
    .TX_MARGIN_FULL_2(7'b1001100),
    .TX_MARGIN_FULL_3(7'b1001010),
    .TX_MARGIN_FULL_4(7'b1001000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000101),
    .TX_MARGIN_LOW_2(7'b1000011),
    .TX_MARGIN_LOW_3(7'b1000010),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_MODE_SEL(3'b000),
    .TX_PMADATA_OPT(1'b0),
    .TX_PMA_POWER_SAVE(1'b0),
    .TX_PROGCLK_SEL("PREPI"),
    .TX_PROGDIV_CFG(16.500000),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h0032),
    .TX_RXDETECT_REF(3'b100),
    .TX_SAMPLE_PERIOD(3'b111),
    .TX_SARC_LPBK_ENB(1'b0),
    .TX_XCLK_SEL("TXOUT"),
    .USE_PCS_CLK_PHASE_SEL(1'b0),
    .WB_MODE(2'b00)) 
    \gthe3_channel_gen.gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST 
       (.BUFGTCE(bufgtce_out),
        .BUFGTCEMASK(bufgtcemask_out),
        .BUFGTDIV(bufgtdiv_out),
        .BUFGTRESET(bufgtreset_out),
        .BUFGTRSTMASK(bufgtrstmask_out),
        .CFGRESET(cfgreset_in),
        .CLKRSVD0(clkrsvd0_in),
        .CLKRSVD1(clkrsvd1_in),
        .CPLLFBCLKLOST(cpllfbclklost_out),
        .CPLLLOCK(cplllock_out),
        .CPLLLOCKDETCLK(cplllockdetclk_in),
        .CPLLLOCKEN(cplllocken_in),
        .CPLLPD(cpllpd_in),
        .CPLLREFCLKLOST(cpllrefclklost_out),
        .CPLLREFCLKSEL(cpllrefclksel_in),
        .CPLLRESET(cpllreset_in),
        .DMONFIFORESET(dmonfiforeset_in),
        .DMONITORCLK(dmonitorclk_in),
        .DMONITOROUT(dmonitorout_out),
        .DRPADDR(drpaddr_in),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_in),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_in),
        .DRPRDY(drprdy_out),
        .DRPWE(drpwe_in),
        .EVODDPHICALDONE(evoddphicaldone_in),
        .EVODDPHICALSTART(evoddphicalstart_in),
        .EVODDPHIDRDEN(evoddphidrden_in),
        .EVODDPHIDWREN(evoddphidwren_in),
        .EVODDPHIXRDEN(evoddphixrden_in),
        .EVODDPHIXWREN(evoddphixwren_in),
        .EYESCANDATAERROR(eyescandataerror_out),
        .EYESCANMODE(eyescanmode_in),
        .EYESCANRESET(eyescanreset_in),
        .EYESCANTRIGGER(eyescantrigger_in),
        .GTGREFCLK(gtgrefclk_in),
        .GTHRXN(gthrxn_in),
        .GTHRXP(gthrxp_in),
        .GTHTXN(gthtxn_out),
        .GTHTXP(gthtxp_out),
        .GTNORTHREFCLK0(gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gtnorthrefclk1_in),
        .GTPOWERGOOD(gtpowergood_out),
        .GTREFCLK0(gtrefclk0_in),
        .GTREFCLK1(gtrefclk1_in),
        .GTREFCLKMONITOR(gtrefclkmonitor_out),
        .GTRESETSEL(gtresetsel_in),
        .GTRSVD(gtrsvd_in),
        .GTRXRESET(gtrxreset_int),
        .GTSOUTHREFCLK0(gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gtsouthrefclk1_in),
        .GTTXRESET(gttxreset_int),
        .LOOPBACK(loopback_in),
        .LPBKRXTXSEREN(lpbkrxtxseren_in),
        .LPBKTXRXSEREN(lpbktxrxseren_in),
        .PCIEEQRXEQADAPTDONE(pcieeqrxeqadaptdone_in),
        .PCIERATEGEN3(pcierategen3_out),
        .PCIERATEIDLE(pcierateidle_out),
        .PCIERATEQPLLPD(pcierateqpllpd_out),
        .PCIERATEQPLLRESET(pcierateqpllreset_out),
        .PCIERSTIDLE(pcierstidle_in),
        .PCIERSTTXSYNCSTART(pciersttxsyncstart_in),
        .PCIESYNCTXSYNCDONE(pciesynctxsyncdone_out),
        .PCIEUSERGEN3RDY(pcieusergen3rdy_out),
        .PCIEUSERPHYSTATUSRST(pcieuserphystatusrst_out),
        .PCIEUSERRATEDONE(pcieuserratedone_in),
        .PCIEUSERRATESTART(pcieuserratestart_out),
        .PCSRSVDIN(pcsrsvdin_in),
        .PCSRSVDIN2(pcsrsvdin2_in),
        .PCSRSVDOUT(pcsrsvdout_out),
        .PHYSTATUS(phystatus_out),
        .PINRSRVDAS(pinrsrvdas_out),
        .PMARSVDIN(pmarsvdin_in),
        .QPLL0CLK(qpll0clk_in),
        .QPLL0REFCLK(qpll0refclk_in),
        .QPLL1CLK(qpll1clk_in),
        .QPLL1REFCLK(qpll1refclk_in),
        .RESETEXCEPTION(resetexception_out),
        .RESETOVRD(resetovrd_in),
        .RSTCLKENTX(rstclkentx_in),
        .RX8B10BEN(rx8b10ben_in),
        .RXBUFRESET(rxbufreset_in),
        .RXBUFSTATUS(rxbufstatus_out),
        .RXBYTEISALIGNED(rxbyteisaligned_out),
        .RXBYTEREALIGN(rxbyterealign_out),
        .RXCDRFREQRESET(rxcdrfreqreset_in),
        .RXCDRHOLD(rxcdrhold_in),
        .RXCDRLOCK(rxcdrlock_out),
        .RXCDROVRDEN(rxcdrovrden_in),
        .RXCDRPHDONE(rxcdrphdone_out),
        .RXCDRRESET(rxcdrreset_in),
        .RXCDRRESETRSV(rxcdrresetrsv_in),
        .RXCHANBONDSEQ(rxchanbondseq_out),
        .RXCHANISALIGNED(rxchanisaligned_out),
        .RXCHANREALIGN(rxchanrealign_out),
        .RXCHBONDEN(rxchbonden_in),
        .RXCHBONDI(rxchbondi_in),
        .RXCHBONDLEVEL(rxchbondlevel_in),
        .RXCHBONDMASTER(rxchbondmaster_in),
        .RXCHBONDO(rxchbondo_out),
        .RXCHBONDSLAVE(rxchbondslave_in),
        .RXCLKCORCNT(rxclkcorcnt_out),
        .RXCOMINITDET(rxcominitdet_out),
        .RXCOMMADET(rxcommadet_out),
        .RXCOMMADETEN(rxcommadeten_in),
        .RXCOMSASDET(rxcomsasdet_out),
        .RXCOMWAKEDET(rxcomwakedet_out),
        .RXCTRL0(rxctrl0_out),
        .RXCTRL1(rxctrl1_out),
        .RXCTRL2(rxctrl2_out),
        .RXCTRL3(rxctrl3_out),
        .RXDATA(rxdata_out),
        .RXDATAEXTENDRSVD(rxdataextendrsvd_out),
        .RXDATAVALID(rxdatavalid_out),
        .RXDFEAGCCTRL(rxdfeagcctrl_in),
        .RXDFEAGCHOLD(rxdfeagchold_in),
        .RXDFEAGCOVRDEN(rxdfeagcovrden_in),
        .RXDFELFHOLD(rxdfelfhold_in),
        .RXDFELFOVRDEN(rxdfelfovrden_in),
        .RXDFELPMRESET(rxdfelpmreset_in),
        .RXDFETAP10HOLD(rxdfetap10hold_in),
        .RXDFETAP10OVRDEN(rxdfetap10ovrden_in),
        .RXDFETAP11HOLD(rxdfetap11hold_in),
        .RXDFETAP11OVRDEN(rxdfetap11ovrden_in),
        .RXDFETAP12HOLD(rxdfetap12hold_in),
        .RXDFETAP12OVRDEN(rxdfetap12ovrden_in),
        .RXDFETAP13HOLD(rxdfetap13hold_in),
        .RXDFETAP13OVRDEN(rxdfetap13ovrden_in),
        .RXDFETAP14HOLD(rxdfetap14hold_in),
        .RXDFETAP14OVRDEN(rxdfetap14ovrden_in),
        .RXDFETAP15HOLD(rxdfetap15hold_in),
        .RXDFETAP15OVRDEN(rxdfetap15ovrden_in),
        .RXDFETAP2HOLD(rxdfetap2hold_in),
        .RXDFETAP2OVRDEN(rxdfetap2ovrden_in),
        .RXDFETAP3HOLD(rxdfetap3hold_in),
        .RXDFETAP3OVRDEN(rxdfetap3ovrden_in),
        .RXDFETAP4HOLD(rxdfetap4hold_in),
        .RXDFETAP4OVRDEN(rxdfetap4ovrden_in),
        .RXDFETAP5HOLD(rxdfetap5hold_in),
        .RXDFETAP5OVRDEN(rxdfetap5ovrden_in),
        .RXDFETAP6HOLD(rxdfetap6hold_in),
        .RXDFETAP6OVRDEN(rxdfetap6ovrden_in),
        .RXDFETAP7HOLD(rxdfetap7hold_in),
        .RXDFETAP7OVRDEN(rxdfetap7ovrden_in),
        .RXDFETAP8HOLD(rxdfetap8hold_in),
        .RXDFETAP8OVRDEN(rxdfetap8ovrden_in),
        .RXDFETAP9HOLD(rxdfetap9hold_in),
        .RXDFETAP9OVRDEN(rxdfetap9ovrden_in),
        .RXDFEUTHOLD(rxdfeuthold_in),
        .RXDFEUTOVRDEN(rxdfeutovrden_in),
        .RXDFEVPHOLD(rxdfevphold_in),
        .RXDFEVPOVRDEN(rxdfevpovrden_in),
        .RXDFEVSEN(rxdfevsen_in),
        .RXDFEXYDEN(rxdfexyden_in),
        .RXDLYBYPASS(rxdlybypass_in),
        .RXDLYEN(rxdlyen_in),
        .RXDLYOVRDEN(rxdlyovrden_in),
        .RXDLYSRESET(rxdlysreset_in),
        .RXDLYSRESETDONE(rxdlysresetdone_out),
        .RXELECIDLE(rxelecidle_out),
        .RXELECIDLEMODE(rxelecidlemode_in),
        .RXGEARBOXSLIP(rxgearboxslip_in),
        .RXHEADER(rxheader_out),
        .RXHEADERVALID(rxheadervalid_out),
        .RXLATCLK(rxlatclk_in),
        .RXLPMEN(rxlpmen_in),
        .RXLPMGCHOLD(rxlpmgchold_in),
        .RXLPMGCOVRDEN(rxlpmgcovrden_in),
        .RXLPMHFHOLD(rxlpmhfhold_in),
        .RXLPMHFOVRDEN(rxlpmhfovrden_in),
        .RXLPMLFHOLD(rxlpmlfhold_in),
        .RXLPMLFKLOVRDEN(rxlpmlfklovrden_in),
        .RXLPMOSHOLD(rxlpmoshold_in),
        .RXLPMOSOVRDEN(rxlpmosovrden_in),
        .RXMCOMMAALIGNEN(rxmcommaalignen_in),
        .RXMONITOROUT(rxmonitorout_out),
        .RXMONITORSEL(rxmonitorsel_in),
        .RXOOBRESET(rxoobreset_in),
        .RXOSCALRESET(rxoscalreset_in),
        .RXOSHOLD(rxoshold_in),
        .RXOSINTCFG(rxosintcfg_in),
        .RXOSINTDONE(rxosintdone_out),
        .RXOSINTEN(rxosinten_in),
        .RXOSINTHOLD(rxosinthold_in),
        .RXOSINTOVRDEN(rxosintovrden_in),
        .RXOSINTSTARTED(rxosintstarted_out),
        .RXOSINTSTROBE(rxosintstrobe_in),
        .RXOSINTSTROBEDONE(rxosintstrobedone_out),
        .RXOSINTSTROBESTARTED(rxosintstrobestarted_out),
        .RXOSINTTESTOVRDEN(rxosinttestovrden_in),
        .RXOSOVRDEN(rxosovrden_in),
        .RXOUTCLK(rxoutclk_out),
        .RXOUTCLKFABRIC(rxoutclkfabric_out),
        .RXOUTCLKPCS(rxoutclkpcs_out),
        .RXOUTCLKSEL(rxoutclksel_in),
        .RXPCOMMAALIGNEN(rxpcommaalignen_in),
        .RXPCSRESET(rxpcsreset_in),
        .RXPD(rxpd_in),
        .RXPHALIGN(rxphalign_in),
        .RXPHALIGNDONE(rxphaligndone_out),
        .RXPHALIGNEN(rxphalignen_in),
        .RXPHALIGNERR(rxphalignerr_out),
        .RXPHDLYPD(rxphdlypd_in),
        .RXPHDLYRESET(rxphdlyreset_in),
        .RXPHOVRDEN(rxphovrden_in),
        .RXPLLCLKSEL(rxpllclksel_in),
        .RXPMARESET(rxpmareset_in),
        .RXPMARESETDONE(rxpmaresetdone_out),
        .RXPOLARITY(rxpolarity_in),
        .RXPRBSCNTRESET(rxprbscntreset_in),
        .RXPRBSERR(rxprbserr_out),
        .RXPRBSLOCKED(rxprbslocked_out),
        .RXPRBSSEL(rxprbssel_in),
        .RXPRGDIVRESETDONE(rxprgdivresetdone_out),
        .RXPROGDIVRESET(rxprogdivreset_int),
        .RXQPIEN(rxqpien_in),
        .RXQPISENN(rxqpisenn_out),
        .RXQPISENP(rxqpisenp_out),
        .RXRATE(rxrate_in),
        .RXRATEDONE(rxratedone_out),
        .RXRATEMODE(rxratemode_in),
        .RXRECCLKOUT(rxrecclkout_out),
        .RXRESETDONE(rxresetdone_out),
        .RXSLIDE(rxslide_in),
        .RXSLIDERDY(rxsliderdy_out),
        .RXSLIPDONE(rxslipdone_out),
        .RXSLIPOUTCLK(rxslipoutclk_in),
        .RXSLIPOUTCLKRDY(rxslipoutclkrdy_out),
        .RXSLIPPMA(rxslippma_in),
        .RXSLIPPMARDY(rxslippmardy_out),
        .RXSTARTOFSEQ(rxstartofseq_out),
        .RXSTATUS(rxstatus_out),
        .RXSYNCALLIN(rxsyncallin_in),
        .RXSYNCDONE(rxsyncdone_out),
        .RXSYNCIN(rxsyncin_in),
        .RXSYNCMODE(rxsyncmode_in),
        .RXSYNCOUT(rxsyncout_out),
        .RXSYSCLKSEL(rxsysclksel_in),
        .RXUSERRDY(rxuserrdy_int),
        .RXUSRCLK(rxusrclk_in),
        .RXUSRCLK2(rxusrclk2_in),
        .RXVALID(rxvalid_out),
        .SIGVALIDCLK(sigvalidclk_in),
        .TSTIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BBYPASS(tx8b10bbypass_in),
        .TX8B10BEN(tx8b10ben_in),
        .TXBUFDIFFCTRL(txbufdiffctrl_in),
        .TXBUFSTATUS(txbufstatus_out),
        .TXCOMFINISH(txcomfinish_out),
        .TXCOMINIT(txcominit_in),
        .TXCOMSAS(txcomsas_in),
        .TXCOMWAKE(txcomwake_in),
        .TXCTRL0(txctrl0_in),
        .TXCTRL1(txctrl1_in),
        .TXCTRL2(txctrl2_in),
        .TXDATA(txdata_in),
        .TXDATAEXTENDRSVD(txdataextendrsvd_in),
        .TXDEEMPH(txdeemph_in),
        .TXDETECTRX(txdetectrx_in),
        .TXDIFFCTRL(txdiffctrl_in),
        .TXDIFFPD(txdiffpd_in),
        .TXDLYBYPASS(txdlybypass_in),
        .TXDLYEN(txdlyen_in),
        .TXDLYHOLD(txdlyhold_in),
        .TXDLYOVRDEN(txdlyovrden_in),
        .TXDLYSRESET(txdlysreset_in),
        .TXDLYSRESETDONE(txdlysresetdone_out),
        .TXDLYUPDOWN(txdlyupdown_in),
        .TXELECIDLE(txelecidle_in),
        .TXHEADER(txheader_in),
        .TXINHIBIT(txinhibit_in),
        .TXLATCLK(txlatclk_in),
        .TXMAINCURSOR(txmaincursor_in),
        .TXMARGIN(txmargin_in),
        .TXOUTCLK(txoutclk_out),
        .TXOUTCLKFABRIC(txoutclkfabric_out),
        .TXOUTCLKPCS(txoutclkpcs_out),
        .TXOUTCLKSEL(txoutclksel_in),
        .TXPCSRESET(txpcsreset_in),
        .TXPD(txpd_in),
        .TXPDELECIDLEMODE(txpdelecidlemode_in),
        .TXPHALIGN(txphalign_in),
        .TXPHALIGNDONE(txphaligndone_out),
        .TXPHALIGNEN(txphalignen_in),
        .TXPHDLYPD(txphdlypd_in),
        .TXPHDLYRESET(txphdlyreset_in),
        .TXPHDLYTSTCLK(txphdlytstclk_in),
        .TXPHINIT(txphinit_in),
        .TXPHINITDONE(txphinitdone_out),
        .TXPHOVRDEN(txphovrden_in),
        .TXPIPPMEN(txpippmen_in),
        .TXPIPPMOVRDEN(txpippmovrden_in),
        .TXPIPPMPD(txpippmpd_in),
        .TXPIPPMSEL(txpippmsel_in),
        .TXPIPPMSTEPSIZE(txpippmstepsize_in),
        .TXPISOPD(txpisopd_in),
        .TXPLLCLKSEL(txpllclksel_in),
        .TXPMARESET(txpmareset_in),
        .TXPMARESETDONE(txpmaresetdone_out),
        .TXPOLARITY(txpolarity_in),
        .TXPOSTCURSOR(txpostcursor_in),
        .TXPOSTCURSORINV(txpostcursorinv_in),
        .TXPRBSFORCEERR(txprbsforceerr_in),
        .TXPRBSSEL(txprbssel_in),
        .TXPRECURSOR(txprecursor_in),
        .TXPRECURSORINV(txprecursorinv_in),
        .TXPRGDIVRESETDONE(txprgdivresetdone_out),
        .TXPROGDIVRESET(txprogdivreset_int),
        .TXQPIBIASEN(txqpibiasen_in),
        .TXQPISENN(txqpisenn_out),
        .TXQPISENP(txqpisenp_out),
        .TXQPISTRONGPDOWN(txqpistrongpdown_in),
        .TXQPIWEAKPUP(txqpiweakpup_in),
        .TXRATE(txrate_in),
        .TXRATEDONE(txratedone_out),
        .TXRATEMODE(txratemode_in),
        .TXRESETDONE(txresetdone_out),
        .TXSEQUENCE(txsequence_in),
        .TXSWING(txswing_in),
        .TXSYNCALLIN(txsyncallin_in),
        .TXSYNCDONE(txsyncdone_out),
        .TXSYNCIN(txsyncin_in),
        .TXSYNCMODE(txsyncmode_in),
        .TXSYNCOUT(txsyncout_out),
        .TXSYSCLKSEL(txsysclksel_in),
        .TXUSERRDY(txuserrdy_int),
        .TXUSRCLK(txusrclk_in),
        .TXUSRCLK2(txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_gtwiz_reset" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_gtwiz_reset
   (txprogdivreset_int,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_rx_done_out,
    gttxreset_int,
    txuserrdy_int,
    rxprogdivreset_int,
    gtrxreset_int,
    rxuserrdy_int,
    gtwiz_reset_qpll0reset_out,
    gtpowergood_out,
    gtwiz_userclk_tx_active_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_userclk_rx_active_in,
    rxcdrlock_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    txusrclk2_in,
    rxusrclk2_in,
    rxresetdone_sync,
    txresetdone_sync,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in);
  output txprogdivreset_int;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output gttxreset_int;
  output txuserrdy_int;
  output rxprogdivreset_int;
  output gtrxreset_int;
  output rxuserrdy_int;
  output [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]gtpowergood_out;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]rxcdrlock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]txusrclk2_in;
  input [0:0]rxusrclk2_in;
  input rxresetdone_sync;
  input txresetdone_sync;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;

  wire \FSM_sequential_sm_reset_all[0]_i_1_n_0 ;
  wire \FSM_sequential_sm_reset_all[1]_i_1_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_1_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_5_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_6_n_0 ;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_0;
  wire bit_synchronizer_plllock_rx_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_3;
  wire bit_synchronizer_plllock_rx_inst_n_4;
  wire bit_synchronizer_plllock_tx_inst_n_0;
  wire bit_synchronizer_plllock_tx_inst_n_1;
  wire bit_synchronizer_plllock_tx_inst_n_2;
  wire bit_synchronizer_plllock_tx_inst_n_3;
  wire bit_synchronizer_rxcdrlock_inst_n_1;
  wire bit_synchronizer_rxcdrlock_inst_n_2;
  wire bit_synchronizer_rxcdrlock_inst_n_3;
  wire [0:0]gtpowergood_out;
  wire gtpowergood_sync;
  wire gtrxreset_int;
  wire gttxreset_int;
  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_pllreset_rx_int;
  wire gtwiz_reset_pllreset_tx_int;
  wire [0:0]gtwiz_reset_qpll0lock_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire gtwiz_reset_rx_datapath_dly;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_datapath_sync;
  wire gtwiz_reset_rx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_sync;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_datapath_sync;
  wire gtwiz_reset_tx_done_int0;
  wire gtwiz_reset_tx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_sync;
  wire gtwiz_reset_userclk_tx_active_sync;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire p_0_in;
  wire p_0_in11_out;
  wire [9:0]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire [2:0]p_1_in;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_1;
  wire reset_synchronizer_gtwiz_reset_tx_any_inst_n_1;
  wire [0:0]rxcdrlock_out;
  wire rxprogdivreset_int;
  wire rxresetdone_sync;
  wire rxuserrdy_int;
  wire [0:0]rxusrclk2_in;
  wire sel;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_all;
  wire sm_reset_all_timer_clr_i_1_n_0;
  wire sm_reset_all_timer_clr_i_2_n_0;
  wire sm_reset_all_timer_clr_reg_n_0;
  wire [2:0]sm_reset_all_timer_ctr;
  wire \sm_reset_all_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_all_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_all_timer_sat;
  wire sm_reset_all_timer_sat_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_rx;
  wire sm_reset_rx_cdr_to_clr;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_10_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_11_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_12_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_13_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_14_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_15_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_16_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_9_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_4_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_5_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_6_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_7_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_8_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[16]_i_9_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[24]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[24]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_4_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_5_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_6_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_7_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_8_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[8]_i_9_n_0 ;
  wire [25:0]sm_reset_rx_cdr_to_ctr_reg;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_cdr_to_sat_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_reg_n_0;
  wire \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_rx_pll_timer_ctr_reg__0;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_pll_timer_sat_i_1_n_0;
  wire sm_reset_rx_timer_clr0;
  wire sm_reset_rx_timer_clr09_out;
  wire sm_reset_rx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_rx_timer_ctr;
  wire \sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_rx_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_tx;
  wire sm_reset_tx_pll_timer_clr_i_1_n_0;
  wire sm_reset_tx_pll_timer_clr_reg_n_0;
  wire \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_tx_pll_timer_ctr_reg__0;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_pll_timer_sat_i_1_n_0;
  wire sm_reset_tx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_tx_timer_ctr;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_i_1_n_0;
  wire txprogdivreset_int;
  wire txresetdone_sync;
  wire txuserrdy_int;
  wire [0:0]txusrclk2_in;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_DI_UNCONNECTED ;
  wire [7:2]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:2]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_S_UNCONNECTED ;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h77777777DDDD5DDD)) 
    \FSM_sequential_sm_reset_all[0]_i_1 
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(gtwiz_reset_rx_done_int_reg_n_0),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .I5(sm_reset_all[1]),
        .O(\FSM_sequential_sm_reset_all[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_sm_reset_all[1]_i_1 
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[1]),
        .O(\FSM_sequential_sm_reset_all[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000AAEA)) 
    \FSM_sequential_sm_reset_all[2]_i_1 
       (.I0(sm_reset_all[0]),
        .I1(gtwiz_reset_tx_done_int_reg_n_0),
        .I2(sm_reset_all_timer_sat),
        .I3(sm_reset_all_timer_clr_reg_n_0),
        .I4(sm_reset_all[2]),
        .I5(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ),
        .O(\FSM_sequential_sm_reset_all[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2C)) 
    \FSM_sequential_sm_reset_all[2]_i_2 
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(sm_reset_all[1]),
        .O(\FSM_sequential_sm_reset_all[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88833333333)) 
    \FSM_sequential_sm_reset_all[2]_i_3 
       (.I0(gtpowergood_sync),
        .I1(sm_reset_all[1]),
        .I2(gtwiz_reset_rx_done_int_reg_n_0),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .I5(sm_reset_all[0]),
        .O(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\FSM_sequential_sm_reset_all[2]_i_1_n_0 ),
        .D(\FSM_sequential_sm_reset_all[0]_i_1_n_0 ),
        .Q(sm_reset_all[0]),
        .R(gtwiz_reset_all_sync));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\FSM_sequential_sm_reset_all[2]_i_1_n_0 ),
        .D(\FSM_sequential_sm_reset_all[1]_i_1_n_0 ),
        .Q(sm_reset_all[1]),
        .R(gtwiz_reset_all_sync));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\FSM_sequential_sm_reset_all[2]_i_1_n_0 ),
        .D(\FSM_sequential_sm_reset_all[2]_i_2_n_0 ),
        .Q(sm_reset_all[2]),
        .R(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_rx[1]_i_2 
       (.I0(sm_reset_rx_timer_clr_reg_n_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(rxresetdone_sync),
        .O(p_0_in11_out));
  LUT6 #(
    .INIT(64'hCCCCECCCAAAAAAAA)) 
    \FSM_sequential_sm_reset_rx[2]_i_2 
       (.I0(sm_reset_rx[2]),
        .I1(sm_reset_rx[0]),
        .I2(rxresetdone_sync),
        .I3(sm_reset_rx_timer_sat),
        .I4(sm_reset_rx_timer_clr_reg_n_0),
        .I5(sm_reset_rx[1]),
        .O(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_rxcdrlock_inst_n_3),
        .D(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2),
        .Q(sm_reset_rx[0]),
        .R(gtwiz_reset_rx_any_sync));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_rxcdrlock_inst_n_3),
        .D(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1),
        .Q(sm_reset_rx[1]),
        .R(gtwiz_reset_rx_any_sync));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_rxcdrlock_inst_n_3),
        .D(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ),
        .Q(sm_reset_rx[2]),
        .R(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_sm_reset_tx[2]_i_2 
       (.I0(sm_reset_tx[0]),
        .I1(sm_reset_tx[1]),
        .I2(sm_reset_tx[2]),
        .O(\FSM_sequential_sm_reset_tx[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_sm_reset_tx[2]_i_5 
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_tx[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_sm_reset_tx[2]_i_6 
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_tx[2]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2),
        .Q(sm_reset_tx[0]),
        .R(gtwiz_reset_tx_any_sync));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1),
        .Q(sm_reset_tx[1]),
        .R(gtwiz_reset_tx_any_sync));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(\FSM_sequential_sm_reset_tx[2]_i_2_n_0 ),
        .Q(sm_reset_tx[2]),
        .R(gtwiz_reset_tx_any_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_1 bit_synchronizer_gtpowergood_inst
       (.gtpowergood_out(gtpowergood_out),
        .gtpowergood_sync(gtpowergood_sync),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_2 bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_datapath_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_3 bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst
       (.D({bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2}),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_dly(gtwiz_reset_rx_pll_and_datapath_dly),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .out(sm_reset_rx),
        .p_0_in11_out(p_0_in11_out));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_4 bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_datapath_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_5 bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst
       (.D({bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2}),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_pll_and_datapath_dly(gtwiz_reset_tx_pll_and_datapath_dly),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .out(sm_reset_tx));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_6 bit_synchronizer_gtwiz_reset_userclk_rx_active_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .i_in_out_reg_0(bit_synchronizer_plllock_rx_inst_n_4),
        .out(sm_reset_rx),
        .rxresetdone_sync(rxresetdone_sync),
        .rxuserrdy_int(rxuserrdy_int),
        .rxuserrdy_out_reg(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .sm_reset_rx_timer_clr0(sm_reset_rx_timer_clr0),
        .sm_reset_rx_timer_clr_reg(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .sm_reset_rx_timer_clr_reg_0(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_7 bit_synchronizer_gtwiz_reset_userclk_tx_active_inst
       (.E(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .gtwiz_reset_tx_pll_and_datapath_dly(gtwiz_reset_tx_pll_and_datapath_dly),
        .gtwiz_reset_userclk_tx_active_sync(gtwiz_reset_userclk_tx_active_sync),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .i_in_out_reg_0(bit_synchronizer_plllock_tx_inst_n_3),
        .out(sm_reset_tx),
        .sm_reset_tx_timer_clr_reg(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat),
        .sm_reset_tx_timer_sat_reg(\FSM_sequential_sm_reset_tx[2]_i_5_n_0 ),
        .txuserrdy_int(txuserrdy_int),
        .txuserrdy_out_reg(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_8 bit_synchronizer_plllock_rx_inst
       (.\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_plllock_rx_inst_n_3),
        .gtrxreset_int(gtrxreset_int),
        .gtrxreset_out_reg(bit_synchronizer_plllock_rx_inst_n_0),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(gtwiz_reset_qpll0lock_in),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_done_int_reg(bit_synchronizer_plllock_rx_inst_n_2),
        .gtwiz_reset_rx_done_int_reg_0(gtwiz_reset_rx_done_int_reg_n_0),
        .out(sm_reset_rx),
        .p_0_in11_out(p_0_in11_out),
        .sm_reset_rx_pll_timer_clr_reg(sm_reset_rx_pll_timer_clr_reg_n_0),
        .sm_reset_rx_pll_timer_sat(sm_reset_rx_pll_timer_sat),
        .sm_reset_rx_timer_clr0(sm_reset_rx_timer_clr0),
        .sm_reset_rx_timer_clr09_out(sm_reset_rx_timer_clr09_out),
        .sm_reset_rx_timer_clr_reg(bit_synchronizer_plllock_rx_inst_n_4),
        .sm_reset_rx_timer_clr_reg_0(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_9 bit_synchronizer_plllock_tx_inst
       (.\FSM_sequential_sm_reset_tx_reg[0] (bit_synchronizer_plllock_tx_inst_n_3),
        .gttxreset_int(gttxreset_int),
        .gttxreset_out_reg(bit_synchronizer_plllock_tx_inst_n_0),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(gtwiz_reset_qpll0lock_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_done_int0(gtwiz_reset_tx_done_int0),
        .gtwiz_reset_tx_done_int_reg(bit_synchronizer_plllock_tx_inst_n_2),
        .gtwiz_reset_tx_done_int_reg_0(gtwiz_reset_tx_done_int_reg_n_0),
        .gtwiz_reset_userclk_tx_active_sync(gtwiz_reset_userclk_tx_active_sync),
        .out(sm_reset_tx),
        .sm_reset_tx_pll_timer_sat_reg(\FSM_sequential_sm_reset_tx[2]_i_6_n_0 ),
        .sm_reset_tx_timer_clr_reg(bit_synchronizer_plllock_tx_inst_n_1),
        .sm_reset_tx_timer_clr_reg_0(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat),
        .sm_reset_tx_timer_sat_reg(\FSM_sequential_sm_reset_tx[2]_i_5_n_0 ),
        .txresetdone_sync(txresetdone_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_bit_synchronizer_10 bit_synchronizer_rxcdrlock_inst
       (.E(bit_synchronizer_rxcdrlock_inst_n_3),
        .\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_plllock_rx_inst_n_3),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .gtwiz_reset_rx_pll_and_datapath_dly(gtwiz_reset_rx_pll_and_datapath_dly),
        .out(sm_reset_rx),
        .rxcdrlock_out(rxcdrlock_out),
        .rxprogdivreset_int(rxprogdivreset_int),
        .rxprogdivreset_out_reg(bit_synchronizer_rxcdrlock_inst_n_2),
        .rxresetdone_sync(rxresetdone_sync),
        .sm_reset_rx_cdr_to_clr(sm_reset_rx_cdr_to_clr),
        .sm_reset_rx_cdr_to_clr_reg(bit_synchronizer_rxcdrlock_inst_n_1),
        .sm_reset_rx_cdr_to_sat(sm_reset_rx_cdr_to_sat),
        .sm_reset_rx_timer_clr09_out(sm_reset_rx_timer_clr09_out),
        .sm_reset_rx_timer_clr_reg(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat));
  FDRE #(
    .INIT(1'b1)) 
    gtrxreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_0),
        .Q(gtrxreset_int),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    gttxreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_0),
        .Q(gttxreset_int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gtwiz_reset_qpll0reset_out[0]_INST_0 
       (.I0(gtwiz_reset_pllreset_tx_int),
        .I1(gtwiz_reset_pllreset_rx_int),
        .O(gtwiz_reset_qpll0reset_out));
  LUT4 #(
    .INIT(16'hF720)) 
    gtwiz_reset_rx_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_done_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_2),
        .Q(gtwiz_reset_rx_done_int_reg_n_0),
        .R(gtwiz_reset_rx_any_sync));
  LUT4 #(
    .INIT(16'hF704)) 
    gtwiz_reset_rx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_pll_and_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h40)) 
    gtwiz_reset_tx_done_int_i_2
       (.I0(sm_reset_tx_timer_clr_reg_n_0),
        .I1(sm_reset_tx_timer_sat),
        .I2(txresetdone_sync),
        .O(gtwiz_reset_tx_done_int0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_done_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_2),
        .Q(gtwiz_reset_tx_done_int_reg_n_0),
        .R(gtwiz_reset_tx_any_sync));
  LUT4 #(
    .INIT(16'hFD04)) 
    gtwiz_reset_tx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[1]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[2]),
        .I3(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_pll_and_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    pllreset_rx_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(gtwiz_reset_pllreset_rx_int),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    pllreset_tx_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(gtwiz_reset_pllreset_tx_int),
        .R(1'b0));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer reset_synchronizer_gtwiz_reset_all_inst
       (.SR(gtwiz_reset_all_sync),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_11 reset_synchronizer_gtwiz_reset_rx_any_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_pllreset_rx_int(gtwiz_reset_pllreset_rx_int),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_datapath_int_reg(gtwiz_reset_rx_datapath_int_reg_n_0),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_rx_pll_and_datapath_int_reg(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .out(sm_reset_rx),
        .pllreset_rx_out_reg(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_12 reset_synchronizer_gtwiz_reset_rx_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_datapath_int_reg(gtwiz_reset_rx_datapath_int_reg_n_0),
        .in0(gtwiz_reset_rx_datapath_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_13 reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_rx_pll_and_datapath_int_reg(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_14 reset_synchronizer_gtwiz_reset_tx_any_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_pllreset_tx_int(gtwiz_reset_pllreset_tx_int),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_int_reg(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .out(sm_reset_tx),
        .pllreset_tx_out_reg(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_15 reset_synchronizer_gtwiz_reset_tx_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .in0(gtwiz_reset_tx_datapath_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_16 reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_int_reg(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer reset_synchronizer_rx_done_inst
       (.gtwiz_reset_rx_done_int_reg(gtwiz_reset_rx_done_int_reg_n_0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .rxusrclk2_in(rxusrclk2_in));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer_17 reset_synchronizer_tx_done_inst
       (.gtwiz_reset_tx_done_int_reg(gtwiz_reset_tx_done_int_reg_n_0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .txusrclk2_in(txusrclk2_in));
  bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_18 reset_synchronizer_txprogdivreset_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(gtwiz_reset_qpll0lock_in),
        .txprogdivreset_int(txprogdivreset_int));
  FDRE #(
    .INIT(1'b1)) 
    rxprogdivreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_2),
        .Q(rxprogdivreset_int),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxuserrdy_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .Q(rxuserrdy_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFA200A)) 
    sm_reset_all_timer_clr_i_1
       (.I0(sm_reset_all_timer_clr_i_2_n_0),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[0]),
        .I3(sm_reset_all[2]),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_clr_i_1_n_0));
  LUT6 #(
    .INIT(64'h05050505DD0D0505)) 
    sm_reset_all_timer_clr_i_2
       (.I0(sm_reset_all[1]),
        .I1(gtwiz_reset_tx_done_int_reg_n_0),
        .I2(sm_reset_all[2]),
        .I3(gtwiz_reset_rx_done_int_reg_n_0),
        .I4(sm_reset_all_timer_sat),
        .I5(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_clr_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_all_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_clr_i_1_n_0),
        .Q(sm_reset_all_timer_clr_reg_n_0),
        .S(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_all_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_all_timer_ctr[0]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .O(\sm_reset_all_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_all_timer_ctr[1]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_all_timer_ctr[2]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .I2(sm_reset_all_timer_ctr[2]),
        .O(\sm_reset_all_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[0]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[1]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[2]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_all_timer_sat_i_1
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_all_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_sat_i_1_n_0),
        .Q(sm_reset_all_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_cdr_to_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_1),
        .Q(sm_reset_rx_cdr_to_clr),
        .S(gtwiz_reset_rx_any_sync));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_1 
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ),
        .I1(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ),
        .I2(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ),
        .I3(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ),
        .I4(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ),
        .I5(\sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_10 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[6]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_11 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[5]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_12 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[4]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_13 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[3]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_14 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[2]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_15 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[1]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_16 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[0]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[7]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[2]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[11]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[8]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_4 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[14]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[13]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[12]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_5 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[4]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[1]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[3]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[0]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[16]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[18]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_6 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[10]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[9]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[6]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[5]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_7 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[17]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[15]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[19]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_8 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[24]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[23]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[25]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[20]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[21]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[22]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_9 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[7]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_2 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[23]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[22]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_4 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[21]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_5 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[20]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_6 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[19]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_7 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[18]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_8 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[17]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[16]_i_9 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[16]),
        .O(\sm_reset_rx_cdr_to_ctr[16]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[24]_i_2 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[25]),
        .O(\sm_reset_rx_cdr_to_ctr[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[24]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[24]),
        .O(\sm_reset_rx_cdr_to_ctr[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_2 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[15]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[14]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_4 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[13]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_5 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[12]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_6 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[11]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_7 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[10]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_8 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[9]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sm_reset_rx_cdr_to_ctr[8]_i_9 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[8]),
        .O(\sm_reset_rx_cdr_to_ctr[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[0]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 }),
        .S({\sm_reset_rx_cdr_to_ctr[0]_i_9_n_0 ,\sm_reset_rx_cdr_to_ctr[0]_i_10_n_0 ,\sm_reset_rx_cdr_to_ctr[0]_i_11_n_0 ,\sm_reset_rx_cdr_to_ctr[0]_i_12_n_0 ,\sm_reset_rx_cdr_to_ctr[0]_i_13_n_0 ,\sm_reset_rx_cdr_to_ctr[0]_i_14_n_0 ,\sm_reset_rx_cdr_to_ctr[0]_i_15_n_0 ,\sm_reset_rx_cdr_to_ctr[0]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[10] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[10]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[11] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[11]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[12] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[12]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[13] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[13]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[14] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[14]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[15] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[15]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[16] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[16]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[16]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 }),
        .S({\sm_reset_rx_cdr_to_ctr[16]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr[16]_i_3_n_0 ,\sm_reset_rx_cdr_to_ctr[16]_i_4_n_0 ,\sm_reset_rx_cdr_to_ctr[16]_i_5_n_0 ,\sm_reset_rx_cdr_to_ctr[16]_i_6_n_0 ,\sm_reset_rx_cdr_to_ctr[16]_i_7_n_0 ,\sm_reset_rx_cdr_to_ctr[16]_i_8_n_0 ,\sm_reset_rx_cdr_to_ctr[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[17] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[17]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[18] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[18]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[19] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[19]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[1]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[20] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[20]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[21] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[21]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[22] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[22]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[23] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[23]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[24] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[24]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[24]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED [7:1],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 }),
        .DI({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_DI_UNCONNECTED [7:2],1'b0,1'b0}),
        .O({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED [7:2],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 }),
        .S({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_S_UNCONNECTED [7:2],\sm_reset_rx_cdr_to_ctr[24]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr[24]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[25] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[25]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[2]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[3]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[4]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[5]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[6]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[7]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[8]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[8]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 }),
        .S({\sm_reset_rx_cdr_to_ctr[8]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr[8]_i_3_n_0 ,\sm_reset_rx_cdr_to_ctr[8]_i_4_n_0 ,\sm_reset_rx_cdr_to_ctr[8]_i_5_n_0 ,\sm_reset_rx_cdr_to_ctr[8]_i_6_n_0 ,\sm_reset_rx_cdr_to_ctr[8]_i_7_n_0 ,\sm_reset_rx_cdr_to_ctr[8]_i_8_n_0 ,\sm_reset_rx_cdr_to_ctr[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[9]),
        .R(sm_reset_rx_cdr_to_clr));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_rx_cdr_to_sat_i_1
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .I1(sm_reset_rx_cdr_to_sat),
        .I2(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_cdr_to_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_cdr_to_sat_i_1_n_0),
        .Q(sm_reset_rx_cdr_to_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_rx_pll_timer_clr_i_1
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(sm_reset_rx[0]),
        .I2(sm_reset_rx[1]),
        .I3(sm_reset_rx[2]),
        .I4(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_pll_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_rx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[7]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[8]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I5(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_2 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .O(p_0_in__1[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[8]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[9]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_rx_pll_timer_sat_i_1
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .I1(sm_reset_rx_pll_timer_sat),
        .I2(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_pll_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .Q(sm_reset_rx_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_rx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .O(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .I2(sm_reset_rx_timer_ctr[2]),
        .O(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[0]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[1]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[2]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_rx_timer_sat_i_1
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .I3(sm_reset_rx_timer_sat),
        .I4(sm_reset_rx_timer_clr_reg_n_0),
        .O(sm_reset_rx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_timer_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_tx_pll_timer_clr_i_1
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(sm_reset_tx[0]),
        .I2(sm_reset_tx[1]),
        .I3(sm_reset_tx[2]),
        .I4(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_pll_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_tx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[7]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[8]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I5(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_2 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[0]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[4]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[5]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[6]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[7]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[8]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(sel),
        .D(p_0_in__0[9]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_tx_pll_timer_sat_i_1
       (.I0(sel),
        .I1(sm_reset_tx_pll_timer_sat),
        .I2(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_pll_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_1),
        .Q(sm_reset_tx_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_tx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .I2(sm_reset_tx_timer_ctr[2]),
        .O(p_1_in[2]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[0]),
        .Q(sm_reset_tx_timer_ctr[0]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[1]),
        .Q(sm_reset_tx_timer_ctr[1]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[2]),
        .Q(sm_reset_tx_timer_ctr[2]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_tx_timer_sat_i_1
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .I3(sm_reset_tx_timer_sat),
        .I4(sm_reset_tx_timer_clr_reg_n_0),
        .O(sm_reset_tx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_timer_sat),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txuserrdy_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1),
        .Q(txuserrdy_int),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer
   (gtwiz_reset_rx_done_out,
    rxusrclk2_in,
    gtwiz_reset_rx_done_int_reg);
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]rxusrclk2_in;
  input gtwiz_reset_rx_done_int_reg;

  wire gtwiz_reset_rx_done_int_reg;
  wire [0:0]gtwiz_reset_rx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1__0_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]rxusrclk2_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1__0
       (.I0(gtwiz_reset_rx_done_int_reg),
        .O(rst_in_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_rx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_inv_synchronizer_17
   (gtwiz_reset_tx_done_out,
    txusrclk2_in,
    gtwiz_reset_tx_done_int_reg);
  output [0:0]gtwiz_reset_tx_done_out;
  input [0:0]txusrclk2_in;
  input gtwiz_reset_tx_done_int_reg;

  wire gtwiz_reset_tx_done_int_reg;
  wire [0:0]gtwiz_reset_tx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]txusrclk2_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1
       (.I0(gtwiz_reset_tx_done_int_reg),
        .O(rst_in_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_tx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer
   (SR,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in);
  output [0:0]SR;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;

  wire [0:0]SR;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_all_in),
        .Q(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_11
   (gtwiz_reset_rx_any_sync,
    pllreset_rx_out_reg,
    gtwiz_reset_clk_freerun_in,
    out,
    gtwiz_reset_pllreset_rx_int,
    gtwiz_reset_rx_datapath_int_reg,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_int_reg);
  output gtwiz_reset_rx_any_sync;
  output pllreset_rx_out_reg;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input gtwiz_reset_pllreset_rx_int;
  input gtwiz_reset_rx_datapath_int_reg;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input gtwiz_reset_rx_pll_and_datapath_int_reg;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_pllreset_rx_int;
  wire gtwiz_reset_rx_any;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_reg;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg;
  wire [2:0]out;
  wire pllreset_rx_out_reg;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_rx_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(gtwiz_reset_pllreset_rx_int),
        .O(pllreset_rx_out_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_in_meta_i_1__1
       (.I0(gtwiz_reset_rx_datapath_int_reg),
        .I1(gtwiz_reset_rx_datapath_in),
        .I2(gtwiz_reset_rx_pll_and_datapath_in),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg),
        .O(gtwiz_reset_rx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_rx_any),
        .Q(gtwiz_reset_rx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_12
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_datapath_int_reg);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input gtwiz_reset_rx_datapath_int_reg;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_reg;
  wire in0;
  wire rst_in0_2;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__3
       (.I0(gtwiz_reset_rx_datapath_in),
        .I1(gtwiz_reset_rx_datapath_int_reg),
        .O(rst_in0_2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0_2),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0_2),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0_2),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0_2),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0_2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_13
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_rx_pll_and_datapath_int_reg,
    gtwiz_reset_rx_pll_and_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_rx_pll_and_datapath_int_reg;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg;
  wire in0;
  wire p_0_in_1;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__2
       (.I0(gtwiz_reset_rx_pll_and_datapath_int_reg),
        .I1(gtwiz_reset_rx_pll_and_datapath_in),
        .O(p_0_in_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(p_0_in_1),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(p_0_in_1),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(p_0_in_1),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(p_0_in_1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(p_0_in_1),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_14
   (gtwiz_reset_tx_any_sync,
    pllreset_tx_out_reg,
    gtwiz_reset_clk_freerun_in,
    out,
    gtwiz_reset_pllreset_tx_int,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_int_reg);
  output gtwiz_reset_tx_any_sync;
  output pllreset_tx_out_reg;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input gtwiz_reset_pllreset_tx_int;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input gtwiz_reset_tx_pll_and_datapath_int_reg;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_pllreset_tx_int;
  wire gtwiz_reset_tx_any;
  wire gtwiz_reset_tx_any_sync;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg;
  wire [2:0]out;
  wire pllreset_tx_out_reg;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_tx_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_tx_any_sync),
        .I4(gtwiz_reset_pllreset_tx_int),
        .O(pllreset_tx_out_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    rst_in_meta_i_1
       (.I0(gtwiz_reset_tx_datapath_in),
        .I1(gtwiz_reset_tx_pll_and_datapath_in),
        .I2(gtwiz_reset_tx_pll_and_datapath_int_reg),
        .O(gtwiz_reset_tx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_any),
        .Q(gtwiz_reset_tx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_15
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_tx_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_16
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_pll_and_datapath_int_reg,
    gtwiz_reset_tx_pll_and_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_tx_pll_and_datapath_int_reg;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg;
  wire in0;
  wire p_1_in_0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__0
       (.I0(gtwiz_reset_tx_pll_and_datapath_int_reg),
        .I1(gtwiz_reset_tx_pll_and_datapath_in),
        .O(p_1_in_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(p_1_in_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(p_1_in_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(p_1_in_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(p_1_in_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(p_1_in_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_6_5_reset_synchronizer" *) 
module bd_01e2_xpcs_0_gt_gtwizard_ultrascale_v1_6_5_reset_synchronizer_18
   (txprogdivreset_int,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_qpll0lock_in);
  output txprogdivreset_int;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_qpll0lock_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0lock_in;
  wire rst_in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire txprogdivreset_int;

  LUT1 #(
    .INIT(2'h1)) 
    rst_in_meta_i_1__4
       (.I0(gtwiz_reset_qpll0lock_in),
        .O(rst_in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0),
        .Q(txprogdivreset_int));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0),
        .Q(rst_in_sync3));
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
