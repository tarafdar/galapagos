// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Fri May 11 11:47:16 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_01e2_xpcs_0_stub.v
// Design      : bd_01e2_xpcs_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ten_gig_eth_pcs_pma_v6_0_12,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(dclk, rxrecclk_out, refclk_p, refclk_n, 
  sim_speedup_control, coreclk_out, qpll0outclk_out, qpll0outrefclk_out, qpll0lock_out, 
  txusrclk_out, txusrclk2_out, areset_datapathclk_out, areset_coreclk_out, gttxreset_out, 
  gtrxreset_out, txuserrdy_out, reset_counter_done_out, reset, xgmii_txd, xgmii_txc, xgmii_rxd, 
  xgmii_rxc, txp, txn, rxp, rxn, configuration_vector, status_vector, core_status, resetdone_out, 
  signal_detect, tx_fault, drp_req, drp_gnt, core_to_gt_drpen, core_to_gt_drpwe, 
  core_to_gt_drpaddr, core_to_gt_drpdi, gt_drprdy, gt_drpdo, gt_drpen, gt_drpwe, gt_drpaddr, 
  gt_drpdi, core_to_gt_drprdy, core_to_gt_drpdo, pma_pmd_type, tx_disable)
/* synthesis syn_black_box black_box_pad_pin="dclk,rxrecclk_out,refclk_p,refclk_n,sim_speedup_control,coreclk_out,qpll0outclk_out,qpll0outrefclk_out,qpll0lock_out,txusrclk_out,txusrclk2_out,areset_datapathclk_out,areset_coreclk_out,gttxreset_out,gtrxreset_out,txuserrdy_out,reset_counter_done_out,reset,xgmii_txd[63:0],xgmii_txc[7:0],xgmii_rxd[63:0],xgmii_rxc[7:0],txp,txn,rxp,rxn,configuration_vector[535:0],status_vector[447:0],core_status[7:0],resetdone_out,signal_detect,tx_fault,drp_req,drp_gnt,core_to_gt_drpen,core_to_gt_drpwe,core_to_gt_drpaddr[15:0],core_to_gt_drpdi[15:0],gt_drprdy,gt_drpdo[15:0],gt_drpen,gt_drpwe,gt_drpaddr[15:0],gt_drpdi[15:0],core_to_gt_drprdy,core_to_gt_drpdo[15:0],pma_pmd_type[2:0],tx_disable" */;
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
