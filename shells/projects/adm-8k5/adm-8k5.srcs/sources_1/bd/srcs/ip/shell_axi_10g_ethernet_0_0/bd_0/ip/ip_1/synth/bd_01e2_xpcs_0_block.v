//-----------------------------------------------------------------------------
// Title      : Block level
// Project    : 10GBASE-R
//-----------------------------------------------------------------------------
// File       : bd_01e2_xpcs_0_block.v
//-----------------------------------------------------------------------------
// Description: This file is a wrapper for the 10GBASE-R core. It contains the
// 10GBASE-R core, the transceiver and some transceiver-related logic.
//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and 
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

`timescale 1ps / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module bd_01e2_xpcs_0_block
  (
  input           dclk,
  input           coreclk,
  input           txusrclk,
  input           txusrclk2,
  output          rxrecclk_out,
  output          txoutclk,
  input           areset,
  input           areset_coreclk,
  input           txuserrdy,
  input           gttxreset,
  input           gtrxreset,
  input           sim_speedup_control,
  input           qpll0lock,
  input           qpll0outclk,
  input           qpll0outrefclk,
  output          qpll0reset,
  output wire     reset_tx_bufg_gt,
  input           reset_counter_done,
  input  [63:0]   xgmii_txd,
  input  [7:0]    xgmii_txc,
  output [63:0]   xgmii_rxd,
  output [7:0]    xgmii_rxc,
  output          txp,
  output          txn,
  input           rxp,
  input           rxn,
  input  [535 : 0] configuration_vector,
  output [447 : 0] status_vector,
  output [7 : 0]  core_status,
  output          tx_resetdone,
  output          rx_resetdone,
  input           signal_detect,
  input           tx_fault,
  output          drp_req,
  input           drp_gnt,
  output          core_to_gt_drpen,
  output          core_to_gt_drpwe,
  output [15 : 0] core_to_gt_drpaddr,
  output [15 : 0] core_to_gt_drpdi,
  output          gt_drprdy,
  output [15 : 0] gt_drpdo,
  input           gt_drpen,
  input           gt_drpwe,
  input  [15 : 0] gt_drpaddr,
  input  [15 : 0] gt_drpdi,
  input           core_to_gt_drprdy,
  input  [15 : 0] core_to_gt_drpdo,
  input [2:0]     pma_pmd_type,
  output          tx_disable);

// for debug
//  wire [447:0] status_vector_i;

  wire [63:0]     gt_txd;
  wire [7:0]      gt_txc;

  wire [63:0]     gt_rxd;
  wire [7:0]      gt_rxc;

  reg [63:0]     gt_rxd_d1;
  reg [7:0]      gt_rxc_d1;
  wire gt0_rxgearboxslip_i;

  wire [2:0] gt0_loopback_i;
  wire gt0_clear_rx_prbs_err_count_i;

  wire rxoutclk;
  wire rxusrclk;
  wire rxusrclk2;
  wire gt0_gtrxreset_c;
  wire gt0_gttxreset_c;
  reg  gt0_gtrxreset_i;
  reg  gt0_gttxreset_i;
  wire gt0_txpcsreset_i;
  wire gt0_rxpcsreset_i;

  wire rx_prbs31_en;
  wire tx_prbs31_en;

  reg pma_resetout_reg = 1'b0;
  reg pma_resetout_rising;
  reg cable_pull_rising = 1'b0;
  reg cable_pull_falling = 1'b0;
  reg pcs_resetout_reg = 1'b0;
  reg pcs_resetout_rising = 1'b0;

  reg qpll0lock_reg = 1'b0;
  wire qpll0lock_rising;
  wire rxprogdivresetdone;
  wire txprogdivresetdone;
  reg rxprogdivresetdone_reg = 1'b0;
  wire rxprogdivresetdone_rising;
  wire block_lock_coreclk;
  wire core_in_testmode_coreclk;
  wire gttxreset_coreclk;

  wire pma_resetout;
  wire pcs_resetout;

  wire dclk_reset;

  wire [7:0] core_status_i;
  wire cable_pull;

  // Aid the detection of a cable/board being pulled
  wire cable_pull_reset_rising_reg;
  wire cable_is_pulled;

  // Aid the detection of a cable/board being plugged back in
  wire cable_unpull_reset_rising_reg;

  wire gt_latclk = 1'b0;
  wire gt_rxpmaresetdone = 0;
  wire gt_eyescanreset = 0;
  wire gt_eyescantrigger = 0;
  wire gt_rxcdrhold = 0;
  wire gt_txprbsforceerr = 0;
  wire gt_txpolarity = 0;
  wire gt_rxpolarity = 0;
  wire [2:0] gt_rxrate = 0;
  wire [2:0] gt_loopback = 0;
  wire [4:0] gt_txprecursor = 0;
  wire [4:0] gt_txpostcursor = 0;
  wire [3:0] gt_txdiffctrl = 4'b1110;
  wire gt_eyescandataerror;
  wire [1:0] gt_txbufstatus;
  wire [2:0] gt_rxbufstatus;
  wire [2:0] gt_txoutclksel = 3'b101;
  wire gt_txpcsreset = 0;
  wire gt_txpmareset = 0;
  wire gt_rxpmareset = 0;
  wire gt_rxdfelpmreset = 0;
  wire gt_rxlpmen = 0;
  wire [15:0] gt_pcsrsvdin = 16'b0;
  wire gt_rxprbserr;
  wire gt_rxprbslocked;
  wire        gt_cpllpd = 1'b1;
  wire gt_txelecidle = 1'b0;
  wire gt_txpdelecidlemode = 1'b0;
  wire[1 : 0] gt_rxpd = 2'b0;
  wire[1 : 0] gt_txpd = 2'b0;
  wire [16:0] gt_dmonitorout;

  wire gt0_rxuserrdy_i;

  wire gt_progdiv_reset;
  reg signal_detect_comb = 1'b1;
  wire signal_detect_rxusrclk2;
  wire signal_detect_coreclk;

  // 750ms is equivalent to 117188000 cycles of coreclk (6.4ns per cycle)
  // 117188000 in hex = x6FC25A0
  localparam [28:0] MASTER_WATCHDOG_TIMER_RESET = 29'b00110111111000010010110100000;

  reg [28:0] master_watchdog = MASTER_WATCHDOG_TIMER_RESET;
  reg master_watchdog_barking = 1'b0;
  wire core_in_testmode;

  wire qplllock_int = qpll0lock;

  reg gt0_txresetdone_reg     = 1'b0;
  reg gt0_txresetdone_reg1    = 1'b0;
(* dont_touch = "yes" *) 
  reg gt0_rxresetdone_reg     = 1'b0;
(* dont_touch = "yes" *) 
  reg gt0_rxresetdone_reg_dup = 1'b0;
  reg gt0_rxresetdone_reg1    = 1'b0;

  // Signals to and from the GTHE3/GTYE3/GTHE4/GTYE4
  wire [0 : 0] cpllpd_in;
  wire [16 : 0] dmonitorout_out;
  wire [8 : 0] drpaddr_in;
  wire [0 : 0] drpclk_in;
  wire [15 : 0] drpdi_in;
  wire [15 : 0] drpdo_out;
  wire [0 : 0] drpen_in;
  wire [0 : 0] drprdy_out;
  wire [0 : 0] drpwe_in;
  wire [0 : 0] eyescandataerror_out;
  wire [0 : 0] eyescanreset_in;
  wire [0 : 0] eyescantrigger_in;
  wire [0 : 0] gthrxn_in;
  wire [0 : 0] gthrxp_in;
  wire [0 : 0] gthtxn_out;
  wire [0 : 0] gthtxp_out;
  wire [0 : 0] gtpowergood_out;
  wire [0 : 0] gtwiz_reset_all_in;
  wire [0 : 0] gtwiz_reset_clk_freerun_in;
  wire [0 : 0] gtwiz_reset_qpll0lock_in;
  wire [0 : 0] gtwiz_reset_qpll0reset_out;
  wire [0 : 0] gtwiz_reset_rx_cdr_stable_out;
  wire [0 : 0] gtwiz_reset_rx_datapath_in;
  wire [0 : 0] gtwiz_reset_rx_done_out;
  wire [0 : 0] gtwiz_reset_rx_pll_and_datapath_in;
  wire [0 : 0] gtwiz_reset_tx_datapath_in;
  wire [0 : 0] gtwiz_reset_tx_done_out;
  wire [0 : 0] gtwiz_reset_tx_pll_and_datapath_in;
  wire [0 : 0] gtwiz_userclk_rx_active_in;
  wire [0 : 0] gtwiz_userclk_tx_active_in;
  wire [2 : 0] loopback_in;
  wire [15 : 0] pcsrsvdin_in;
  wire [0 : 0] qpll0clk_in;
  wire [0 : 0] qpll0refclk_in;
  wire [0 : 0] qpll1clk_in;
  wire [0 : 0] qpll1refclk_in;
  wire [0 : 0] rxbufreset_in;
  wire [2 : 0] rxbufstatus_out;
  wire [0 : 0] rxcdrhold_in;
  wire [0 : 0] rxcdrlock_out;
  wire [127 : 0] rxdata_out;
  wire [1 : 0] rxdatavalid_out;
  wire [0 : 0] rxdfelpmreset_in;
  wire [0 : 0] rxgearboxslip_in;
  wire [5 : 0] rxheader_out;
  wire [1 : 0] rxheadervalid_out;
  wire [0 : 0] rxlatclk_in;
  wire [0 : 0] rxlpmen_in;
  wire [0 : 0] rxoutclk_out;
  wire [0 : 0] rxpcsreset_in;
  wire [1 : 0] rxpd_in;
  wire [0 : 0] rxpmareset_in;
  wire [0 : 0] rxpmaresetdone_out;
  wire [0 : 0] rxpolarity_in;
  wire [0 : 0] rxprbscntreset_in;
  wire [0 : 0] rxprbserr_out;
  wire [0 : 0] rxprbslocked_out;
  wire [3 : 0] rxprbssel_in;
  wire [0 : 0] rxprgdivresetdone_out;
  wire [2 : 0] rxrate_in;
  wire [1 : 0] rxstartofseq_out;
  wire [0 : 0] rxusrclk2_in;
  wire [0 : 0] rxusrclk_in;
  wire [1 : 0] txbufstatus_out;
  wire [127 : 0] txdata_in;
  wire [3 : 0] txdiffctrl_in;
  wire [0 : 0] txelecidle_in;
  wire [5 : 0] txheader_in;
  wire [0 : 0] txinhibit_in;
  wire [0 : 0] txlatclk_in;
  wire [0 : 0] txoutclk_out;
  wire [2 : 0] txoutclksel_in;
  wire [0 : 0] txpcsreset_in;
  wire [1 : 0] txpd_in;
  wire [0 : 0] txpdelecidlemode_in;
  wire [0 : 0] txpmareset_in;
  wire [0 : 0] txpmaresetdone_out;
  wire [0 : 0] txpolarity_in;
  wire [4 : 0] txpostcursor_in;
  wire [0 : 0] txprbsforceerr_in;
  wire [3 : 0] txprbssel_in;
  wire [4 : 0] txprecursor_in;
  wire [0 : 0] txprgdivresetdone_out;
  wire [6 : 0] txsequence_in;
  wire [0 : 0] txusrclk2_in;
  wire [0 : 0] txusrclk_in;



  wire areset_txusrclk2;
  wire resetdone_txusrclk2;
  wire gt0_rxresetdone_reg_txusrclk2;
  wire pma_resetout_coreclk_sync;
  reg  pma_resetout_reg_txuserclk2 = 1'b0;
  wire pcs_resetout_coreclk_sync;
  reg  pcs_resetout_reg_txuserclk2 = 1'b0;
  wire cable_pull_coreclk_sync;
  reg  cable_pull_reg;

  wire gtrxreset_coreclk;
  wire qplllock_coreclk;
  wire qplllock_txusrclk2;
  wire qplllock_rxusrclk2;

  wire coreclk_reset_tx;
  wire txreset_txusrclk2;
  wire rxreset_rxusrclk2;
  wire areset_rxusrclk2;
  wire pma_resetout_rising_rxusrclk2;
  wire resetdone;

  wire reset_rx_bufg_gt;
  wire reset_tx_bufg_gt_sig;


  assign reset_rx_bufg_gt = !(rxprogdivresetdone);

  assign rxrecclk_out = rxusrclk2;


  // Local clocking/reset block
  bd_01e2_xpcs_0_local_clock_and_reset bd_01e2_xpcs_0_local_clock_reset_block
    (
     .areset(areset),
     .coreclk(coreclk),
     .dclk(dclk),
     .txusrclk2(txusrclk2),
     .rxoutclk(rxoutclk),
     .signal_detect(signal_detect),
     .sim_speedup_control(sim_speedup_control),
     .tx_resetdone(tx_resetdone),
     .rx_resetdone(rx_resetdone),
     .pma_resetout_rising(pma_resetout_rising),
     .qplllock_rxusrclk2(qplllock_rxusrclk2),
     .gtrxreset(gt0_gtrxreset_i),
     .reset_rx_bufg_gt(reset_rx_bufg_gt),
     .coreclk_reset_tx(coreclk_reset_tx),
     .txreset_txusrclk2(txreset_txusrclk2),
     .rxreset_rxusrclk2(rxreset_rxusrclk2),
     .dclk_reset(dclk_reset),
     .areset_rxusrclk2(areset_rxusrclk2),
     .pma_resetout_rising_rxusrclk2(pma_resetout_rising_rxusrclk2),
     .rxuserrdy(gt0_rxuserrdy_i),
     .rxusrclk(rxusrclk),
     .rxusrclk2(rxusrclk2)
    );

  ten_gig_eth_pcs_pma_v6_0_12 #(
      .C_HAS_MDIO                  (1'b0),
      .C_HAS_FEC                   (1'b0),
      .C_HAS_AN                    (1'b0),
      .C_IS_KR                     (1'b0),
      .C_GTTYPE                    (2),
      .C_GTIF_WIDTH                (64),
      .C_NO_EBUFF                  (1'b0),
      .C_IS_32BIT                  (1'b0),
      .C_DP_WIDTH                  (64),
      .C_SPEED10_25                (10),
      .C_REFCLKRATE                (156),
      .C_1588                      (0))
      bd_01e2_xpcs_0_core (
      .reset(txreset_txusrclk2),
      .areset_coreclk(areset_txusrclk2),
      .txreset_txusrclk2(txreset_txusrclk2),
      .rxreset_rxusrclk2(rxreset_rxusrclk2),
      .areset_rxusrclk2(areset_rxusrclk2),
      .dclk_reset(dclk_reset),
      .pma_resetout(pma_resetout),
      .pcs_resetout(pcs_resetout),
      .coreclk(txusrclk2),
      .txusrclk2(txusrclk2),
      .rxusrclk2(rxusrclk2),
      .dclk(dclk),
      .fr_clk(coreclk),
      .sim_speedup_control(sim_speedup_control),
      .xgmii_txd(xgmii_txd),
      .xgmii_txc(xgmii_txc),
      .xgmii_rxd(xgmii_rxd),
      .xgmii_rxc(xgmii_rxc),
      .mdc(1'b0),
      .mdio_in(1'b0),
      .mdio_out(),
      .mdio_tri(),
      .prtad(5'b0),
      .configuration_vector(configuration_vector),
      .status_vector(status_vector),
      .core_status(core_status_i),
      .pma_pmd_type(pma_pmd_type),
      .cable_pull(cable_pull),
      .gt_latclk                   (1'b0),
      .txphy_async_gb_latency      (),
      .lfreset                     (1'b0),
      .systemtimer_s_field         (48'b0),
      .systemtimer_ns_field        (32'b0),
      .correction_timer            (64'b0),
      .rxphy_s_field               (),
      .rxphy_ns_field              (),
      .rxphy_correction_timer      (),
      .gt_rxstartofseq             (1'b0),
      .drp_req(drp_req),
      .drp_gnt(drp_gnt),
      .drp_den(core_to_gt_drpen),
      .drp_dwe(core_to_gt_drpwe),
      .drp_daddr(core_to_gt_drpaddr),
      .drp_di(core_to_gt_drpdi),
      .drp_drdy(core_to_gt_drprdy),
      .drp_drpdo(core_to_gt_drpdo),
      .resetdone(resetdone_txusrclk2),
      .gt_txd(gt_txd),
      .gt_txc(gt_txc),
      .gt_rxd(gt_rxd_d1),
      .gt_rxc(gt_rxc_d1),
      .gt_slip(gt0_rxgearboxslip_i),
      .signal_detect(signal_detect_comb),
      .tx_fault(tx_fault),
      .tx_disable(tx_disable),
      .tx_prbs31_en(tx_prbs31_en),
      .rx_prbs31_en(rx_prbs31_en),
      .core_in_testmode(core_in_testmode),
      .clear_rx_prbs_err_count(gt0_clear_rx_prbs_err_count_i),
      .loopback_ctrl(gt0_loopback_i),
      .is_eval(),
      .gt_progdiv_reset(),
      .an_enable(1'b0),
      .coeff_minus_1(),
      .coeff_plus_1(),
      .coeff_zero(),
      .txdiffctrl(),
      .training_enable(1'b0),
      .training_addr(21'b0),
      .training_rnw(1'b0),
      .training_wrdata(16'b0),
      .training_ipif_cs(1'b0),
      .training_drp_cs(1'b0),
      .training_rddata(),
      .training_rdack(),
      .training_wrack());

  wire gt0_txresetdone_i;
  wire gt0_rxresetdone_i;


  assign gt_progdiv_reset = 1'b0;

  bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b1))
  gtrxreset_coreclk_sync_i
    (
     .clk(coreclk),
     .rst(gtrxreset),
     .data_in(1'b0),
     .data_out(gtrxreset_coreclk)
    );

  bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b0))
  qplllock_coreclk_sync_i
    (
     .clk(coreclk),
     .rst(!qplllock_int),
     .data_in(1'b1),
     .data_out(qplllock_coreclk)
    );

  bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b0))
  qplllock_txusrclk2_sync_i
    (
     .clk(txusrclk2),
     .rst(!qplllock_int),
     .data_in(1'b1),
     .data_out(qplllock_txusrclk2)
    );

  bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b0))
  qplllock_rxusrclk2_sync_i
    (
     .clk(rxusrclk2),
     .rst(!qplllock_int),
     .data_in(1'b1),
     .data_out(qplllock_rxusrclk2)
    );

  always @(posedge txusrclk2)
  begin
    gt0_txresetdone_reg  <= gt0_txresetdone_i && qplllock_txusrclk2;
//To resolve CDC-11 Critical Fan-out from launch flop to destination clock 
    gt0_txresetdone_reg1 <= gt0_txresetdone_reg;
  end
  
  always @(posedge rxusrclk2)
  begin
    gt0_rxresetdone_reg     <= gt0_rxresetdone_i && qplllock_rxusrclk2;
//To resolve CDC-11 Critical Fan-out from launch flop to destination clock 
    gt0_rxresetdone_reg_dup <= gt0_rxresetdone_i && qplllock_rxusrclk2;
    gt0_rxresetdone_reg1    <= gt0_rxresetdone_reg;
  end

  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  gt0_rxresetdone_reg_sync_i
    (
     .clk(txusrclk2),
     .data_in(gt0_rxresetdone_reg),
     .data_out(gt0_rxresetdone_reg_txusrclk2)
    );

  wire gt0_txresetdone_i_reg;
  wire gt0_rxresetdone_i_reg;

  wire gt0_rxresetdone_i_reg_rxusrclk2;

  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  gt0_txresetdone_i_sync_i
    (
     .clk(coreclk),
     .data_in(gt0_txresetdone_reg1),
     .data_out(gt0_txresetdone_i_reg)
    );

  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  gt0_rxresetdone_i_sync_i
    (
     .clk(coreclk),
     .data_in(gt0_rxresetdone_reg1),
     .data_out(gt0_rxresetdone_i_reg)
    );

  assign resetdone = gt0_txresetdone_i_reg && gt0_rxresetdone_i_reg;
  assign tx_resetdone = gt0_txresetdone_i_reg;
  assign rx_resetdone = gt0_rxresetdone_i_reg;
  assign resetdone_txusrclk2 = gt0_txresetdone_reg && gt0_rxresetdone_reg_txusrclk2;

  wire [1:0] gt0_txheader_i;
  wire [6:0] gt0_txsequence_i;

  reg gt0_rxbufreset_i = 1'b0;
  wire [2:0] gt0_rxbufstatus_i;


  wire [63:0] gt0_txdata_i;

  assign gt0_txdata_i[0 ] = gt_txd[63];
  assign gt0_txdata_i[1 ] = gt_txd[62];
  assign gt0_txdata_i[2 ] = gt_txd[61];
  assign gt0_txdata_i[3 ] = gt_txd[60];
  assign gt0_txdata_i[4 ] = gt_txd[59];
  assign gt0_txdata_i[5 ] = gt_txd[58];
  assign gt0_txdata_i[6 ] = gt_txd[57];
  assign gt0_txdata_i[7 ] = gt_txd[56];
  assign gt0_txdata_i[8 ] = gt_txd[55];
  assign gt0_txdata_i[9 ] = gt_txd[54];
  assign gt0_txdata_i[10] = gt_txd[53];
  assign gt0_txdata_i[11] = gt_txd[52];
  assign gt0_txdata_i[12] = gt_txd[51];
  assign gt0_txdata_i[13] = gt_txd[50];
  assign gt0_txdata_i[14] = gt_txd[49];
  assign gt0_txdata_i[15] = gt_txd[48];
  assign gt0_txdata_i[16] = gt_txd[47];
  assign gt0_txdata_i[17] = gt_txd[46];
  assign gt0_txdata_i[18] = gt_txd[45];
  assign gt0_txdata_i[19] = gt_txd[44];
  assign gt0_txdata_i[20] = gt_txd[43];
  assign gt0_txdata_i[21] = gt_txd[42];
  assign gt0_txdata_i[22] = gt_txd[41];
  assign gt0_txdata_i[23] = gt_txd[40];
  assign gt0_txdata_i[24] = gt_txd[39];
  assign gt0_txdata_i[25] = gt_txd[38];
  assign gt0_txdata_i[26] = gt_txd[37];
  assign gt0_txdata_i[27] = gt_txd[36];
  assign gt0_txdata_i[28] = gt_txd[35];
  assign gt0_txdata_i[29] = gt_txd[34];
  assign gt0_txdata_i[30] = gt_txd[33];
  assign gt0_txdata_i[31] = gt_txd[32];
  assign gt0_txdata_i[32] = gt_txd[31];
  assign gt0_txdata_i[33] = gt_txd[30];
  assign gt0_txdata_i[34] = gt_txd[29];
  assign gt0_txdata_i[35] = gt_txd[28];
  assign gt0_txdata_i[36] = gt_txd[27];
  assign gt0_txdata_i[37] = gt_txd[26];
  assign gt0_txdata_i[38] = gt_txd[25];
  assign gt0_txdata_i[39] = gt_txd[24];
  assign gt0_txdata_i[40] = gt_txd[23];
  assign gt0_txdata_i[41] = gt_txd[22];
  assign gt0_txdata_i[42] = gt_txd[21];
  assign gt0_txdata_i[43] = gt_txd[20];
  assign gt0_txdata_i[44] = gt_txd[19];
  assign gt0_txdata_i[45] = gt_txd[18];
  assign gt0_txdata_i[46] = gt_txd[17];
  assign gt0_txdata_i[47] = gt_txd[16];
  assign gt0_txdata_i[48] = gt_txd[15];
  assign gt0_txdata_i[49] = gt_txd[14];
  assign gt0_txdata_i[50] = gt_txd[13];
  assign gt0_txdata_i[51] = gt_txd[12];
  assign gt0_txdata_i[52] = gt_txd[11];
  assign gt0_txdata_i[53] = gt_txd[10];
  assign gt0_txdata_i[54] = gt_txd[9 ];
  assign gt0_txdata_i[55] = gt_txd[8 ];
  assign gt0_txdata_i[56] = gt_txd[7 ];
  assign gt0_txdata_i[57] = gt_txd[6 ];
  assign gt0_txdata_i[58] = gt_txd[5 ];
  assign gt0_txdata_i[59] = gt_txd[4 ];
  assign gt0_txdata_i[60] = gt_txd[3 ];
  assign gt0_txdata_i[61] = gt_txd[2 ];
  assign gt0_txdata_i[62] = gt_txd[1 ];
  assign gt0_txdata_i[63] = gt_txd[0 ];
  assign gt0_txheader_i[0] = gt_txc[1];
  assign gt0_txheader_i[1] = gt_txc[0];
  assign gt0_txsequence_i = {1'b0, gt_txc[7:2]};

  wire [63:0] gt0_rxdata_i;
  wire [1:0] gt0_rxheader_i;
  wire gt0_rxheadervalid_i;
  wire gt0_rxdatavalid_i;
  wire gt0_rxstartofseq_i;

  assign gt_rxd[0 ] = gt0_rxdata_i[63];
  assign gt_rxd[1 ] = gt0_rxdata_i[62];
  assign gt_rxd[2 ] = gt0_rxdata_i[61];
  assign gt_rxd[3 ] = gt0_rxdata_i[60];
  assign gt_rxd[4 ] = gt0_rxdata_i[59];
  assign gt_rxd[5 ] = gt0_rxdata_i[58];
  assign gt_rxd[6 ] = gt0_rxdata_i[57];
  assign gt_rxd[7 ] = gt0_rxdata_i[56];
  assign gt_rxd[8 ] = gt0_rxdata_i[55];
  assign gt_rxd[9 ] = gt0_rxdata_i[54];
  assign gt_rxd[10] = gt0_rxdata_i[53];
  assign gt_rxd[11] = gt0_rxdata_i[52];
  assign gt_rxd[12] = gt0_rxdata_i[51];
  assign gt_rxd[13] = gt0_rxdata_i[50];
  assign gt_rxd[14] = gt0_rxdata_i[49];
  assign gt_rxd[15] = gt0_rxdata_i[48];
  assign gt_rxd[16] = gt0_rxdata_i[47];
  assign gt_rxd[17] = gt0_rxdata_i[46];
  assign gt_rxd[18] = gt0_rxdata_i[45];
  assign gt_rxd[19] = gt0_rxdata_i[44];
  assign gt_rxd[20] = gt0_rxdata_i[43];
  assign gt_rxd[21] = gt0_rxdata_i[42];
  assign gt_rxd[22] = gt0_rxdata_i[41];
  assign gt_rxd[23] = gt0_rxdata_i[40];
  assign gt_rxd[24] = gt0_rxdata_i[39];
  assign gt_rxd[25] = gt0_rxdata_i[38];
  assign gt_rxd[26] = gt0_rxdata_i[37];
  assign gt_rxd[27] = gt0_rxdata_i[36];
  assign gt_rxd[28] = gt0_rxdata_i[35];
  assign gt_rxd[29] = gt0_rxdata_i[34];
  assign gt_rxd[30] = gt0_rxdata_i[33];
  assign gt_rxd[31] = gt0_rxdata_i[32];
  assign gt_rxd[32] = gt0_rxdata_i[31];
  assign gt_rxd[33] = gt0_rxdata_i[30];
  assign gt_rxd[34] = gt0_rxdata_i[29];
  assign gt_rxd[35] = gt0_rxdata_i[28];
  assign gt_rxd[36] = gt0_rxdata_i[27];
  assign gt_rxd[37] = gt0_rxdata_i[26];
  assign gt_rxd[38] = gt0_rxdata_i[25];
  assign gt_rxd[39] = gt0_rxdata_i[24];
  assign gt_rxd[40] = gt0_rxdata_i[23];
  assign gt_rxd[41] = gt0_rxdata_i[22];
  assign gt_rxd[42] = gt0_rxdata_i[21];
  assign gt_rxd[43] = gt0_rxdata_i[20];
  assign gt_rxd[44] = gt0_rxdata_i[19];
  assign gt_rxd[45] = gt0_rxdata_i[18];
  assign gt_rxd[46] = gt0_rxdata_i[17];
  assign gt_rxd[47] = gt0_rxdata_i[16];
  assign gt_rxd[48] = gt0_rxdata_i[15];
  assign gt_rxd[49] = gt0_rxdata_i[14];
  assign gt_rxd[50] = gt0_rxdata_i[13];
  assign gt_rxd[51] = gt0_rxdata_i[12];
  assign gt_rxd[52] = gt0_rxdata_i[11];
  assign gt_rxd[53] = gt0_rxdata_i[10];
  assign gt_rxd[54] = gt0_rxdata_i[9 ];
  assign gt_rxd[55] = gt0_rxdata_i[8 ];
  assign gt_rxd[56] = gt0_rxdata_i[7 ];
  assign gt_rxd[57] = gt0_rxdata_i[6 ];
  assign gt_rxd[58] = gt0_rxdata_i[5 ];
  assign gt_rxd[59] = gt0_rxdata_i[4 ];
  assign gt_rxd[60] = gt0_rxdata_i[3 ];
  assign gt_rxd[61] = gt0_rxdata_i[2 ];
  assign gt_rxd[62] = gt0_rxdata_i[1 ];
  assign gt_rxd[63] = gt0_rxdata_i[0 ];
  assign gt_rxc = {4'b0000, gt0_rxheadervalid_i,gt0_rxdatavalid_i, gt0_rxheader_i[0], gt0_rxheader_i[1]};

  always @(posedge rxusrclk2) begin
    gt_rxc_d1 <= gt_rxc;
    gt_rxd_d1 <= gt_rxd;
  end

  // The route from the GT to the fabric for this signal may be longer than the clock period
  // so add a synchronizer
  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  gt0_rxresetdone_i_reg_rxusrclk2_sync_i
    (
     .clk(rxusrclk2),
     .data_in(gt0_rxresetdone_reg_dup),
     .data_out(gt0_rxresetdone_i_reg_rxusrclk2)
    );

  // Create a watchdog which samples 4 bits from the gt_rxd vector and checks that it does
  // vary from a 1010 or 0101 or 0000 pattern. If not then there may well have been a cable pull
  // and the gt rx side needs to be reset.
  bd_01e2_xpcs_0_cable_pull_logic cable_pull_logic_i
  (
    .coreclk(coreclk),
    .rxusrclk2(rxusrclk2),
    .areset_rxusrclk2(areset_rxusrclk2),
    .pma_resetout_rising_rxusrclk2(pma_resetout_rising_rxusrclk2),
    .gt0_rxresetdone_i_reg_rxusrclk2(gt0_rxresetdone_i_reg_rxusrclk2),
    .gearboxslip(gt0_rxgearboxslip_i),
    .rx_sample_in(gt_rxd[7:4]),
    .cable_pull_reset_rising_reg(cable_pull_reset_rising_reg),
    .cable_unpull_reset_rising_reg(cable_unpull_reset_rising_reg),
    .cable_is_pulled(cable_is_pulled));

  // Sync the sig_det signal to the rxusrclk2 domain
  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  signal_detect_rxusrclk2_sync_i
    (
     .clk(rxusrclk2),
     .data_in(signal_detect),
     .data_out(signal_detect_rxusrclk2)
    );

  // Create the signal_detect signal as an AND of the external signal and (not) the local cable_is_pulled
  always @(posedge rxusrclk2)
  begin
    signal_detect_comb <= signal_detect_rxusrclk2 && !cable_is_pulled;
  end

  assign core_status = core_status_i;


  bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b1))
  areset_txusrclk2_sync_i
    (
     .clk(txusrclk2),
     .rst(areset_coreclk),
     .data_in(1'b0),
     .data_out(areset_txusrclk2)
    );

  always @(posedge txusrclk2)
  begin
    if(areset_txusrclk2)
      pma_resetout_reg_txuserclk2 <= 1'b0;
    else
      pma_resetout_reg_txuserclk2 <= pma_resetout;
  end

  bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b1))
  pma_resetout_coreclk_sync_i
    (
     .clk(coreclk),
     .rst(pma_resetout_reg_txuserclk2),
     .data_in(1'b0),
     .data_out(pma_resetout_coreclk_sync)
    );

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      pma_resetout_reg <= 1'b0;
    else
      pma_resetout_reg <= pma_resetout_coreclk_sync;
  end

  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  cable_pull_coreclk_sync_i 
    (
     .clk(coreclk),
     .data_in(cable_pull),
     .data_out(cable_pull_coreclk_sync)
    );

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      cable_pull_reg <= 1'b0;
    else
      cable_pull_reg <= cable_pull_coreclk_sync;
  end

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      pma_resetout_rising <= 1'b0;
    else
      if (pma_resetout_coreclk_sync == 1'b1 && pma_resetout_reg == 1'b0)
         pma_resetout_rising <= 1'b1;
      else
         pma_resetout_rising <= 1'b0;
  end

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      cable_pull_rising <= 1'b0;
    else
      if (cable_pull_coreclk_sync == 1'b1 && cable_pull_reg == 1'b0)
         cable_pull_rising <= 1'b1;
      else
         cable_pull_rising <= 1'b0;
  end

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      cable_pull_falling <= 1'b0;
    else
      if (cable_pull_coreclk_sync == 1'b0 && cable_pull_reg == 1'b1)
         cable_pull_falling <= 1'b1;
      else
         cable_pull_falling <= 1'b0;
  end

  always @(posedge txusrclk2)
  begin
    if(areset_txusrclk2)
      pcs_resetout_reg_txuserclk2 <= 1'b0;
    else
      pcs_resetout_reg_txuserclk2 <= pcs_resetout;
  end

  bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b1))
  pcs_resetout_coreclk_sync_i
    (
     .clk(coreclk),
     .rst(pcs_resetout_reg_txuserclk2),
     .data_in(1'b0),
     .data_out(pcs_resetout_coreclk_sync)
    );

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      pcs_resetout_reg <= 1'b0;
    else
      pcs_resetout_reg <= pcs_resetout_coreclk_sync;
  end


  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      pcs_resetout_rising <= 1'b0;
    else
      if (pcs_resetout_coreclk_sync == 1'b1 && pcs_resetout_reg == 1'b0)
         pcs_resetout_rising <= 1'b1;
      else
         pcs_resetout_rising <= 1'b0;
  end

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      qpll0lock_reg <= 1'b0;
    else
      qpll0lock_reg <= qplllock_coreclk;
  end

  assign qpll0lock_rising = qplllock_coreclk && !qpll0lock_reg;

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      rxprogdivresetdone_reg <= 1'b0;
    else
      rxprogdivresetdone_reg <= rxprogdivresetdone;
  end

  assign rxprogdivresetdone_rising = rxprogdivresetdone && !rxprogdivresetdone_reg;

  reg reset_tx_bufg_gt_reg = 1'b0;
  wire reset_tx_bufg_gt_reg_falling;

  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  reset_tx_bufg_gt_sync_i
    (
     .clk(coreclk),
     .data_in(reset_tx_bufg_gt),
     .data_out(reset_tx_bufg_gt_sig)
    );

  always @(posedge coreclk)
  begin
    if(areset_coreclk)
      reset_tx_bufg_gt_reg <= 1'b0;
    else
      reset_tx_bufg_gt_reg <= reset_tx_bufg_gt_sig;
  end

  assign reset_tx_bufg_gt_reg_falling = !reset_tx_bufg_gt_sig && reset_tx_bufg_gt_reg;

  // Sync the sig_det signal to the coreclk domain
  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  signal_detect_coreclk_sync_i
    (
     .clk(coreclk),
     .data_in(signal_detect),
     .data_out(signal_detect_coreclk)
    );

  // Create a master reset watchdog which toggles GTRXRESET after 750ms of not getting to PCS Block Lock
  // Sync the necessary signals to the free-running clock domain
  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  block_lock_sync_i
    (
     .clk(coreclk),
     .data_in(core_status_i[0]),
     .data_out(block_lock_coreclk)
    );

  bd_01e2_xpcs_0_ff_synchronizer
    #(
      .C_NUM_SYNC_REGS(5))
  core_in_testmode_sync_i
    (
     .clk(coreclk),
     .data_in(core_in_testmode),
     .data_out(core_in_testmode_coreclk)
    );

  always @(posedge coreclk)
  begin
    if(resetdone == 1'b0 || block_lock_coreclk == 1'b1 || core_in_testmode_coreclk == 1'b1)
      master_watchdog <= MASTER_WATCHDOG_TIMER_RESET;
    else
      master_watchdog <= master_watchdog - 1;
  end

  always @(posedge coreclk)
  begin
    if (master_watchdog == 0)
      master_watchdog_barking <= 1'b1;
    else
      master_watchdog_barking <= 1'b0;
  end

bd_01e2_xpcs_0_ff_synchronizer_rst
    #(
      .C_NUM_SYNC_REGS(5),
      .C_RVAL(1'b1))
  gttxreset_coreclk_sync_i
    (
     .clk(coreclk),
     .rst(gttxreset),
     .data_in(1'b0),
     .data_out(gttxreset_coreclk)
    );

  // Incorporate the pma_resetout_rising and cable_pull/unpull_reset_rising bits generated in code below.
  assign  gt0_gtrxreset_c = (gtrxreset_coreclk || pma_resetout_rising || !signal_detect_coreclk || master_watchdog_barking ||
                             cable_pull_reset_rising_reg || cable_unpull_reset_rising_reg || cable_pull_rising || cable_pull_falling);
  assign  gt0_gttxreset_c = (gttxreset_coreclk || pma_resetout_rising || reset_tx_bufg_gt_reg_falling);

  always @(posedge coreclk)
  begin
      gt0_gtrxreset_i <= gt0_gtrxreset_c;
      gt0_gttxreset_i <= gt0_gttxreset_c;
  end

  assign  gt0_rxpcsreset_i = pcs_resetout_rising;
  assign  gt0_txpcsreset_i = pcs_resetout_rising;

  // reset the GT RX Buffer when over/underflowing
  always @(posedge rxusrclk2)
  begin
    if(gt0_rxbufstatus_i[2] == 1'b1 && gt0_rxresetdone_i_reg_rxusrclk2)
      gt0_rxbufreset_i <= 1'b1;
    else
      gt0_rxbufreset_i <= 1'b0;
  end



  // Assign signals to the GT

  assign drpaddr_in  = gt_drpaddr[8:0];


  assign drpclk_in   = dclk;
  assign drpdi_in    = gt_drpdi;
  assign gt_drpdo = drpdo_out;
  assign drpen_in    = gt_drpen;
  assign gt_drprdy  = drprdy_out;
  assign drpwe_in    = gt_drpwe;
  assign gthrxn_in   = rxn;
  assign gthrxp_in   = rxp;
  assign txn         = gthtxn_out;
  assign txp         = gthtxp_out;
  
  assign gtwiz_reset_clk_freerun_in = dclk;
  assign gtwiz_reset_rx_datapath_in = gt0_gtrxreset_i;
  assign gtwiz_reset_rx_pll_and_datapath_in = 1'b0;
  assign gtwiz_reset_tx_datapath_in = gt0_gttxreset_i;
  assign gtwiz_reset_tx_pll_and_datapath_in = 1'b0;
  
  assign gtwiz_reset_all_in = areset;
  assign gtwiz_reset_qpll0lock_in = qpll0lock && !gt_progdiv_reset;
  assign qpll0reset = gtwiz_reset_qpll0reset_out;

  assign gtwiz_userclk_rx_active_in = rxprogdivresetdone && rxpmaresetdone_out;
  assign gtwiz_userclk_tx_active_in = txprogdivresetdone && txpmaresetdone_out;

  assign loopback_in       = gt0_loopback_i | gt_loopback;
  assign qpll0clk_in       = qpll0outclk;
  assign qpll0refclk_in    = qpll0outrefclk;
  assign qpll1clk_in       = 1'b0;
  assign qpll1refclk_in    = 1'b0;
  assign rxbufreset_in     = gt0_rxbufreset_i;
  assign gt0_rxbufstatus_i = rxbufstatus_out;
  assign gt0_rxdata_i    = rxdata_out[63:0];

  assign rxgearboxslip_in    = gt0_rxgearboxslip_i;

  assign gt0_rxheader_i      = rxheader_out[1:0];

  assign gt0_rxdatavalid_i   = rxdatavalid_out[0];

  assign gt0_rxheadervalid_i = rxheadervalid_out[0];
  assign rxoutclk      = rxoutclk_out;
  assign rxpcsreset_in = gt0_rxpcsreset_i;
  assign rxprbscntreset_in = gt0_clear_rx_prbs_err_count_i;
  assign rxprbssel_in = {1'b0,rx_prbs31_en,1'b0,rx_prbs31_en};
  assign gt0_rxresetdone_i = gtwiz_reset_rx_done_out;
  assign rxusrclk2_in = rxusrclk2;
  assign rxusrclk_in  = rxusrclk;
  assign txdata_in[63:0]   = gt0_txdata_i;
  assign txdata_in[127:64] = 0;
  assign txheader_in[5:2]  = 0;
  assign txheader_in[1:0]  = gt0_txheader_i;
  assign txpolarity_in = gt_txpolarity;
  assign rxpolarity_in = gt_rxpolarity;
  assign txprbsforceerr_in = gt_txprbsforceerr;
  assign rxrate_in = gt_rxrate;
  assign eyescanreset_in = gt_eyescanreset;
  assign eyescantrigger_in = gt_eyescantrigger;
  assign txinhibit_in = tx_disable;
  assign rxcdrhold_in = gt_rxcdrhold;
  assign txdiffctrl_in   = gt_txdiffctrl;
  assign txpostcursor_in = gt_txpostcursor;
  assign txprecursor_in  = gt_txprecursor;
  assign rxlpmen_in  = gt_rxlpmen;
  assign rxprogdivresetdone = rxprgdivresetdone_out;
  assign txprogdivresetdone = txprgdivresetdone_out;
  assign txoutclk          = txoutclk_out;
  assign txpcsreset_in     = gt0_txpcsreset_i || gt_txpcsreset;
  assign txoutclksel_in    = gt_txoutclksel;
  assign txprbssel_in      = {1'b0,tx_prbs31_en,1'b0,tx_prbs31_en};
  assign gt0_txresetdone_i = gtwiz_reset_tx_done_out;
  assign txsequence_in     = gt0_txsequence_i;
  assign txusrclk2_in      = txusrclk2;
  assign txusrclk_in       = txusrclk;
  assign txlatclk_in       = gt_latclk;
  assign rxlatclk_in       = gt_latclk;

  assign gt_eyescandataerror = eyescandataerror_out;
  assign gt_txbufstatus = txbufstatus_out;
  assign gt_rxbufstatus = rxbufstatus_out;
  assign gt_rxprbserr = rxprbserr_out;
  assign gt_rxprbslocked = rxprbslocked_out;
  assign txpmareset_in = gt_txpmareset;
  assign rxpmareset_in = gt_rxpmareset;
  assign rxdfelpmreset_in = gt_rxdfelpmreset;
  assign pcsrsvdin_in = gt_pcsrsvdin;
  assign gt_rxpmaresetdone = rxpmaresetdone_out;
  assign gt_dmonitorout = dmonitorout_out;
  assign cpllpd_in = gt_cpllpd;
  assign rxpd_in = gt_rxpd;
  assign txpd_in = gt_txpd;
  assign txelecidle_in = gt_txelecidle;
  assign txpdelecidlemode_in = gt_txpdelecidlemode;

  assign reset_tx_bufg_gt = !(txprogdivresetdone);

  bd_01e2_xpcs_0_gt bd_01e2_xpcs_0_gt_i
  (
   .cpllpd_in(cpllpd_in),
   .dmonitorout_out(dmonitorout_out),
   .drpaddr_in(drpaddr_in),
   .drpclk_in(drpclk_in),
   .drpdi_in(drpdi_in),
   .drpdo_out(drpdo_out),
   .drpen_in(drpen_in),
   .drprdy_out(drprdy_out),
   .drpwe_in(drpwe_in),
   .eyescandataerror_out(eyescandataerror_out),
   .eyescanreset_in(eyescanreset_in),
   .eyescantrigger_in(eyescantrigger_in),
   .gthrxn_in(gthrxn_in),
   .gthrxp_in(gthrxp_in),
   .gthtxn_out(gthtxn_out),
   .gthtxp_out(gthtxp_out),
   .gtpowergood_out(gtpowergood_out),
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
   .pcsrsvdin_in(pcsrsvdin_in),
   .qpll0clk_in(qpll0clk_in),
   .qpll0refclk_in(qpll0refclk_in),
   .qpll1clk_in(qpll1clk_in),
   .qpll1refclk_in(qpll1refclk_in),
   .rxbufreset_in(rxbufreset_in),
   .rxbufstatus_out(rxbufstatus_out),
   .rxcdrhold_in(rxcdrhold_in),
   .rxcdrlock_out(rxcdrlock_out),
   .rxdata_out(rxdata_out),
   .rxdatavalid_out(rxdatavalid_out),
   .rxdfelpmreset_in(rxdfelpmreset_in),
   .rxgearboxslip_in(rxgearboxslip_in),
   .rxheader_out(rxheader_out),
   .rxheadervalid_out(rxheadervalid_out),
   .rxlatclk_in(rxlatclk_in),
   .rxlpmen_in(rxlpmen_in),
   .rxoutclk_out(rxoutclk_out),
   .rxpcsreset_in(rxpcsreset_in),
   .rxpd_in(rxpd_in),
   .rxpmareset_in(rxpmareset_in),
   .rxpmaresetdone_out(rxpmaresetdone_out),
   .rxpolarity_in(rxpolarity_in),
   .rxprbscntreset_in(rxprbscntreset_in),
   .rxprbserr_out(rxprbserr_out),
   .rxprbslocked_out(rxprbslocked_out),
   .rxprbssel_in(rxprbssel_in),
   .rxprgdivresetdone_out(rxprgdivresetdone_out),
   .rxrate_in(rxrate_in),
   .rxstartofseq_out(rxstartofseq_out),
   .rxusrclk2_in(rxusrclk2_in),
   .rxusrclk_in(rxusrclk_in),
   .txbufstatus_out(txbufstatus_out),
   .txdata_in(txdata_in),
   .txdiffctrl_in(txdiffctrl_in),
   .txelecidle_in(txelecidle_in),
   .txheader_in(txheader_in),
   .txinhibit_in(txinhibit_in),
   .txlatclk_in(txlatclk_in),
   .txoutclk_out(txoutclk_out),
   .txoutclksel_in(txoutclksel_in),
   .txpcsreset_in(txpcsreset_in),
   .txpd_in(txpd_in),
   .txpdelecidlemode_in(txpdelecidlemode_in),
   .txpmareset_in(txpmareset_in),
   .txpmaresetdone_out(txpmaresetdone_out),
   .txpolarity_in(txpolarity_in),
   .txpostcursor_in(txpostcursor_in),
   .txprbsforceerr_in(txprbsforceerr_in),
   .txprbssel_in(txprbssel_in),
   .txprecursor_in(txprecursor_in),
   .txprgdivresetdone_out(txprgdivresetdone_out),
   .txsequence_in(txsequence_in),
   .txusrclk2_in(txusrclk2_in),
   .txusrclk_in(txusrclk_in)
  );


// For debug
//assign status_vector[436:0] = status_vector_i[436:0];
//assign status_vector[437] = gt_progdiv_reset;
//assign status_vector[438] = reset_rx_bufg_gt;
//assign status_vector[439] = reset_tx_bufg_gt;
//assign status_vector[440] = tx_resetdone;
//assign status_vector[441] = rx_resetdone;
//assign status_vector[442] = master_watchdog_barking;
//assign status_vector[443] = cable_pull_reset_rising_reg;
//assign status_vector[444] = cable_unpull_reset_rising_reg;
//assign status_vector[445] = rxprogdivresetdone_rising;
//assign status_vector[446] = gtrxreset_in;
//assign status_vector[447] = gttxreset_in;


endmodule



