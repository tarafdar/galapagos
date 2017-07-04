// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jul  3 18:01:55 2017
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_01e2_xpcs_0_gt_stub.v
// Design      : bd_01e2_xpcs_0_gt
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_01e2_xpcs_0_gt_gtwizard_top,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(gtwiz_userclk_tx_active_in, 
  gtwiz_userclk_rx_active_in, gtwiz_reset_clk_freerun_in, gtwiz_reset_all_in, 
  gtwiz_reset_tx_pll_and_datapath_in, gtwiz_reset_tx_datapath_in, 
  gtwiz_reset_rx_pll_and_datapath_in, gtwiz_reset_rx_datapath_in, 
  gtwiz_reset_qpll0lock_in, gtwiz_reset_rx_cdr_stable_out, gtwiz_reset_tx_done_out, 
  gtwiz_reset_rx_done_out, gtwiz_reset_qpll0reset_out, cpllpd_in, drpaddr_in, drpclk_in, 
  drpdi_in, drpen_in, drpwe_in, eyescanreset_in, eyescantrigger_in, gthrxn_in, gthrxp_in, 
  loopback_in, pcsrsvdin_in, qpll0clk_in, qpll0refclk_in, qpll1clk_in, qpll1refclk_in, 
  rxbufreset_in, rxcdrhold_in, rxdfelpmreset_in, rxgearboxslip_in, rxlatclk_in, rxlpmen_in, 
  rxpcsreset_in, rxpd_in, rxpmareset_in, rxpolarity_in, rxprbscntreset_in, rxprbssel_in, 
  rxrate_in, rxusrclk_in, rxusrclk2_in, txdata_in, txdiffctrl_in, txelecidle_in, txheader_in, 
  txinhibit_in, txlatclk_in, txoutclksel_in, txpcsreset_in, txpd_in, txpdelecidlemode_in, 
  txpmareset_in, txpolarity_in, txpostcursor_in, txprbsforceerr_in, txprbssel_in, 
  txprecursor_in, txsequence_in, txusrclk_in, txusrclk2_in, dmonitorout_out, drpdo_out, 
  drprdy_out, eyescandataerror_out, gthtxn_out, gthtxp_out, rxbufstatus_out, rxcdrlock_out, 
  rxdata_out, rxdatavalid_out, rxheader_out, rxheadervalid_out, rxoutclk_out, 
  rxpmaresetdone_out, rxprbserr_out, rxprbslocked_out, rxprgdivresetdone_out, 
  rxstartofseq_out, txbufstatus_out, txoutclk_out, txpmaresetdone_out, 
  txprgdivresetdone_out)
/* synthesis syn_black_box black_box_pad_pin="gtwiz_userclk_tx_active_in[0:0],gtwiz_userclk_rx_active_in[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_qpll0lock_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_reset_qpll0reset_out[0:0],cpllpd_in[0:0],drpaddr_in[8:0],drpclk_in[0:0],drpdi_in[15:0],drpen_in[0:0],drpwe_in[0:0],eyescanreset_in[0:0],eyescantrigger_in[0:0],gthrxn_in[0:0],gthrxp_in[0:0],loopback_in[2:0],pcsrsvdin_in[15:0],qpll0clk_in[0:0],qpll0refclk_in[0:0],qpll1clk_in[0:0],qpll1refclk_in[0:0],rxbufreset_in[0:0],rxcdrhold_in[0:0],rxdfelpmreset_in[0:0],rxgearboxslip_in[0:0],rxlatclk_in[0:0],rxlpmen_in[0:0],rxpcsreset_in[0:0],rxpd_in[1:0],rxpmareset_in[0:0],rxpolarity_in[0:0],rxprbscntreset_in[0:0],rxprbssel_in[3:0],rxrate_in[2:0],rxusrclk_in[0:0],rxusrclk2_in[0:0],txdata_in[127:0],txdiffctrl_in[3:0],txelecidle_in[0:0],txheader_in[5:0],txinhibit_in[0:0],txlatclk_in[0:0],txoutclksel_in[2:0],txpcsreset_in[0:0],txpd_in[1:0],txpdelecidlemode_in[0:0],txpmareset_in[0:0],txpolarity_in[0:0],txpostcursor_in[4:0],txprbsforceerr_in[0:0],txprbssel_in[3:0],txprecursor_in[4:0],txsequence_in[6:0],txusrclk_in[0:0],txusrclk2_in[0:0],dmonitorout_out[16:0],drpdo_out[15:0],drprdy_out[0:0],eyescandataerror_out[0:0],gthtxn_out[0:0],gthtxp_out[0:0],rxbufstatus_out[2:0],rxcdrlock_out[0:0],rxdata_out[127:0],rxdatavalid_out[1:0],rxheader_out[5:0],rxheadervalid_out[1:0],rxoutclk_out[0:0],rxpmaresetdone_out[0:0],rxprbserr_out[0:0],rxprbslocked_out[0:0],rxprgdivresetdone_out[0:0],rxstartofseq_out[1:0],txbufstatus_out[1:0],txoutclk_out[0:0],txpmaresetdone_out[0:0],txprgdivresetdone_out[0:0]" */;
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
endmodule
