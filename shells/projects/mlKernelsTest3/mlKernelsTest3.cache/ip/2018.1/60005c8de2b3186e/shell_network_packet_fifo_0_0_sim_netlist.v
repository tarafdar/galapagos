// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Jun 18 17:29:12 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_network_packet_fifo_0_0_sim_netlist.v
// Design      : shell_network_packet_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_sync_fifo
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    force_tlast_to_fifo_reg,
    D,
    \state_rd_reg[3] ,
    \state_rd_reg[0] ,
    aclk,
    aresetn,
    Q,
    \axi_str_tkeep_from_xgmac_r_reg[7] ,
    m_axis_tready,
    force_tlast_to_fifo_reg_0,
    s_axis_tvalid,
    s_axis_tlast,
    \state_wr_reg[3] ,
    \state_wr_reg[0] ,
    \state_wr_reg[2] ,
    full,
    axi_str_tlast_from_xgmac_r,
    axi_str_tvalid_from_xgmac_r,
    force_tlast_to_fifo_reg_1,
    \state_rd_reg[3]_0 ,
    \state_rd_reg[1] ,
    dout,
    m_axis_tready_0);
  output m_axis_tvalid;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output force_tlast_to_fifo_reg;
  output [2:0]D;
  output [1:0]\state_rd_reg[3] ;
  output \state_rd_reg[0] ;
  input aclk;
  input aresetn;
  input [63:0]Q;
  input [7:0]\axi_str_tkeep_from_xgmac_r_reg[7] ;
  input m_axis_tready;
  input force_tlast_to_fifo_reg_0;
  input s_axis_tvalid;
  input s_axis_tlast;
  input [3:0]\state_wr_reg[3] ;
  input \state_wr_reg[0] ;
  input \state_wr_reg[2] ;
  input full;
  input axi_str_tlast_from_xgmac_r;
  input axi_str_tvalid_from_xgmac_r;
  input force_tlast_to_fifo_reg_1;
  input [3:0]\state_rd_reg[3]_0 ;
  input \state_rd_reg[1] ;
  input [1:0]dout;
  input m_axis_tready_0;

  wire [2:0]D;
  wire [63:0]Q;
  wire aclk;
  wire aresetn;
  wire [7:0]\axi_str_tkeep_from_xgmac_r_reg[7] ;
  wire axi_str_tlast_from_xgmac_r;
  wire axi_str_tvalid_from_xgmac_r;
  wire axis_wr_tlast;
  wire axis_wr_tvalid;
  wire [1:0]dout;
  wire force_tlast_to_fifo_reg;
  wire force_tlast_to_fifo_reg_0;
  wire force_tlast_to_fifo_reg_1;
  wire full;
  wire [63:0]m_axis_tdata;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tready_0;
  wire m_axis_tvalid;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire \state_rd[3]_i_2_n_0 ;
  wire \state_rd_reg[0] ;
  wire \state_rd_reg[1] ;
  wire [1:0]\state_rd_reg[3] ;
  wire [3:0]\state_rd_reg[3]_0 ;
  wire \state_wr[1]_i_2_n_0 ;
  wire \state_wr[1]_i_3_n_0 ;
  wire \state_wr[1]_i_4_n_0 ;
  wire \state_wr[1]_i_5_n_0 ;
  wire \state_wr[1]_i_6_n_0 ;
  wire \state_wr[3]_i_2_n_0 ;
  wire \state_wr[3]_i_4_n_0 ;
  wire \state_wr[3]_i_5_n_0 ;
  wire \state_wr[3]_i_6_n_0 ;
  wire \state_wr[3]_i_7_n_0 ;
  wire \state_wr_reg[0] ;
  wire \state_wr_reg[2] ;
  wire [3:0]\state_wr_reg[3] ;
  wire [10:0]wr_data_count;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [17:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "8" *) 
  (* C_AXIS_TSTRB_WIDTH = "8" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "73" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "1" *) 
  (* C_HAS_AXIS_TLAST = "1" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "1" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(wr_data_count),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[17:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[7:0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(Q),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(\axi_str_tkeep_from_xgmac_r_reg[7] ),
        .s_axis_tlast(axis_wr_tlast),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(axis_wr_tvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA0EA)) 
    U0_i_1__0
       (.I0(axi_str_tvalid_from_xgmac_r),
        .I1(force_tlast_to_fifo_reg_0),
        .I2(\state_wr_reg[3] [2]),
        .I3(\state_wr_reg[3] [3]),
        .I4(\state_wr_reg[3] [1]),
        .I5(\state_wr_reg[3] [0]),
        .O(axis_wr_tvalid));
  LUT2 #(
    .INIT(4'hE)) 
    U0_i_2
       (.I0(force_tlast_to_fifo_reg_0),
        .I1(axi_str_tlast_from_xgmac_r),
        .O(axis_wr_tlast));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    force_tlast_to_fifo_i_1
       (.I0(force_tlast_to_fifo_reg_0),
        .I1(s_axis_tvalid),
        .I2(s_axis_tlast),
        .I3(\state_wr[1]_i_3_n_0 ),
        .O(force_tlast_to_fifo_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    m_axis_tvalid_INST_0_i_1
       (.I0(\state_rd_reg[3]_0 [0]),
        .I1(\state_rd_reg[3]_0 [1]),
        .I2(\state_rd_reg[3]_0 [2]),
        .I3(\state_rd_reg[3]_0 [3]),
        .O(\state_rd_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFDCCC3FFFDFFC3)) 
    \state_rd[0]_i_1 
       (.I0(\state_rd[3]_i_2_n_0 ),
        .I1(\state_rd_reg[3]_0 [2]),
        .I2(\state_rd_reg[3]_0 [1]),
        .I3(\state_rd_reg[3]_0 [0]),
        .I4(\state_rd_reg[3]_0 [3]),
        .I5(\state_rd_reg[1] ),
        .O(\state_rd_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01010200)) 
    \state_rd[3]_i_1 
       (.I0(\state_rd_reg[3]_0 [3]),
        .I1(\state_rd_reg[3]_0 [1]),
        .I2(\state_rd_reg[3]_0 [0]),
        .I3(\state_rd[3]_i_2_n_0 ),
        .I4(\state_rd_reg[3]_0 [2]),
        .O(\state_rd_reg[3] [1]));
  LUT6 #(
    .INIT(64'h7F7F7F7FFF7F7F7F)) 
    \state_rd[3]_i_2 
       (.I0(\state_rd_reg[0] ),
        .I1(m_axis_tvalid),
        .I2(m_axis_tlast),
        .I3(dout[0]),
        .I4(dout[1]),
        .I5(m_axis_tready_0),
        .O(\state_rd[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF54FF)) 
    \state_wr[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\state_wr_reg[3] [0]),
        .I2(\state_wr[1]_i_2_n_0 ),
        .I3(\state_wr_reg[0] ),
        .I4(\state_wr_reg[2] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAE000000000000)) 
    \state_wr[1]_i_1 
       (.I0(\state_wr[1]_i_2_n_0 ),
        .I1(\state_wr_reg[3] [0]),
        .I2(full),
        .I3(\state_wr[1]_i_3_n_0 ),
        .I4(\state_wr_reg[0] ),
        .I5(s_axis_tvalid),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8A000000)) 
    \state_wr[1]_i_2 
       (.I0(\state_wr_reg[3] [3]),
        .I1(\state_wr[3]_i_6_n_0 ),
        .I2(\state_wr[3]_i_5_n_0 ),
        .I3(axi_str_tlast_from_xgmac_r),
        .I4(axi_str_tvalid_from_xgmac_r),
        .O(\state_wr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4002404040024000)) 
    \state_wr[1]_i_3 
       (.I0(wr_data_count[10]),
        .I1(wr_data_count[9]),
        .I2(wr_data_count[8]),
        .I3(\state_wr[1]_i_4_n_0 ),
        .I4(\state_wr[1]_i_5_n_0 ),
        .I5(\state_wr[1]_i_6_n_0 ),
        .O(\state_wr[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state_wr[1]_i_4 
       (.I0(wr_data_count[6]),
        .I1(wr_data_count[7]),
        .O(\state_wr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state_wr[1]_i_5 
       (.I0(wr_data_count[2]),
        .I1(wr_data_count[1]),
        .I2(wr_data_count[0]),
        .I3(wr_data_count[3]),
        .I4(wr_data_count[5]),
        .I5(wr_data_count[4]),
        .O(\state_wr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \state_wr[1]_i_6 
       (.I0(wr_data_count[0]),
        .I1(wr_data_count[1]),
        .I2(wr_data_count[2]),
        .I3(wr_data_count[3]),
        .I4(wr_data_count[4]),
        .I5(wr_data_count[5]),
        .O(\state_wr[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \state_wr[3]_i_1 
       (.I0(\state_wr_reg[0] ),
        .I1(\state_wr[3]_i_2_n_0 ),
        .I2(\state_wr_reg[3] [3]),
        .I3(force_tlast_to_fifo_reg_1),
        .I4(\state_wr_reg[3] [0]),
        .I5(\state_wr[3]_i_4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h77F7)) 
    \state_wr[3]_i_2 
       (.I0(axi_str_tvalid_from_xgmac_r),
        .I1(axi_str_tlast_from_xgmac_r),
        .I2(\state_wr[3]_i_5_n_0 ),
        .I3(\state_wr[3]_i_6_n_0 ),
        .O(\state_wr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \state_wr[3]_i_4 
       (.I0(s_axis_tvalid),
        .I1(\state_wr[1]_i_3_n_0 ),
        .I2(full),
        .O(\state_wr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFEF0000)) 
    \state_wr[3]_i_5 
       (.I0(wr_data_count[6]),
        .I1(wr_data_count[7]),
        .I2(\state_wr[1]_i_5_n_0 ),
        .I3(wr_data_count[8]),
        .I4(wr_data_count[9]),
        .I5(wr_data_count[10]),
        .O(\state_wr[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015555554)) 
    \state_wr[3]_i_6 
       (.I0(wr_data_count[8]),
        .I1(wr_data_count[5]),
        .I2(wr_data_count[4]),
        .I3(\state_wr[3]_i_7_n_0 ),
        .I4(wr_data_count[6]),
        .I5(wr_data_count[7]),
        .O(\state_wr[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_wr[3]_i_7 
       (.I0(wr_data_count[3]),
        .I1(wr_data_count[0]),
        .I2(wr_data_count[1]),
        .I3(wr_data_count[2]),
        .O(\state_wr[3]_i_7_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_fifo_xgemac_rxif
   (dout,
    full,
    SR,
    rd_en_reg,
    rd_en_reg_0,
    m_axis_tvalid,
    m_axis_tready,
    D,
    aclk,
    din,
    wr_en,
    rd_en,
    aresetn,
    Q,
    \state_rd_reg[3] ,
    \state_rd_reg[0] ,
    empty_fwft_i_reg,
    m_axis_tready_0);
  output [1:0]dout;
  output full;
  output [0:0]SR;
  output rd_en_reg;
  output rd_en_reg_0;
  output m_axis_tvalid;
  output m_axis_tready;
  output [0:0]D;
  input aclk;
  input [15:0]din;
  input wr_en;
  input rd_en;
  input aresetn;
  input [3:0]Q;
  input \state_rd_reg[3] ;
  input \state_rd_reg[0] ;
  input empty_fwft_i_reg;
  input m_axis_tready_0;

  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire [15:0]din;
  wire [1:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire full;
  wire m_axis_tready;
  wire m_axis_tready_0;
  wire m_axis_tvalid;
  wire rd_en;
  wire rd_en_reg;
  wire rd_en_reg_0;
  wire \state_rd_reg[0] ;
  wire \state_rd_reg[3] ;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [15:2]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized1 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout({NLW_U0_dout_UNCONNECTED[15:2],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    U0_i_1
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    U0_i_3
       (.I0(\state_rd_reg[0] ),
        .I1(m_axis_tready_0),
        .I2(dout[1]),
        .I3(dout[0]),
        .O(m_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    m_axis_tvalid_INST_0
       (.I0(dout[0]),
        .I1(dout[1]),
        .I2(\state_rd_reg[0] ),
        .I3(empty_fwft_i_reg),
        .O(m_axis_tvalid));
  LUT6 #(
    .INIT(64'hFBFFFFFF88800000)) 
    rd_en_i_1
       (.I0(rd_en_reg_0),
        .I1(aresetn),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\state_rd_reg[3] ),
        .I5(rd_en),
        .O(rd_en_reg));
  LUT3 #(
    .INIT(8'h04)) 
    \state_rd[0]_i_2 
       (.I0(Q[1]),
        .I1(m_axis_tready_0),
        .I2(empty),
        .O(rd_en_reg_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \state_rd[1]_i_1 
       (.I0(empty),
        .I1(m_axis_tready_0),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_interface
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tvalid,
    aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tlast,
    rx_statistics_vector,
    rx_statistics_valid,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tuser,
    m_axis_tready);
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output m_axis_tvalid;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input s_axis_tlast;
  input [13:0]rx_statistics_vector;
  input rx_statistics_valid;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tuser;
  input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire [63:0]axi_str_tdata_from_xgmac_r;
  wire [7:0]axi_str_tkeep_from_xgmac_r;
  wire axi_str_tlast_from_xgmac_r;
  wire axi_str_tvalid_from_xgmac_r;
  wire axis_fifo_inst1_n_74;
  wire axis_fifo_inst1_n_80;
  wire axis_rd_tready__0;
  wire axis_rd_tvalid;
  wire cmd_fifo_inst_n_3;
  wire cmd_fifo_inst_n_4;
  wire cmd_fifo_inst_n_5;
  wire [15:15]cmd_in;
  wire \cmd_in[0]_i_1_n_0 ;
  wire \cmd_in[15]_i_1_n_0 ;
  wire \cmd_in[1]_i_1_n_0 ;
  wire \cmd_in[2]_i_1_n_0 ;
  wire \cmd_in[2]_i_2_n_0 ;
  wire \cmd_in[3]_i_1_n_0 ;
  wire \cmd_in[3]_i_2_n_0 ;
  wire \cmd_in[4]_i_1_n_0 ;
  wire \cmd_in[4]_i_2_n_0 ;
  wire \cmd_in[4]_i_3_n_0 ;
  wire \cmd_in[5]_i_1_n_0 ;
  wire \cmd_in[6]_i_1_n_0 ;
  wire \cmd_in[7]_i_1_n_0 ;
  wire \cmd_in[8]_i_2_n_0 ;
  wire \cmd_in[8]_i_3_n_0 ;
  wire \cmd_in[8]_i_4_n_0 ;
  wire \cmd_in[8]_i_5_n_0 ;
  wire \cmd_in_reg_n_0_[0] ;
  wire \cmd_in_reg_n_0_[10] ;
  wire \cmd_in_reg_n_0_[11] ;
  wire \cmd_in_reg_n_0_[12] ;
  wire \cmd_in_reg_n_0_[13] ;
  wire \cmd_in_reg_n_0_[14] ;
  wire \cmd_in_reg_n_0_[15] ;
  wire \cmd_in_reg_n_0_[1] ;
  wire \cmd_in_reg_n_0_[2] ;
  wire \cmd_in_reg_n_0_[3] ;
  wire \cmd_in_reg_n_0_[4] ;
  wire \cmd_in_reg_n_0_[5] ;
  wire \cmd_in_reg_n_0_[6] ;
  wire \cmd_in_reg_n_0_[7] ;
  wire \cmd_in_reg_n_0_[8] ;
  wire \cmd_in_reg_n_0_[9] ;
  wire [1:0]cmd_out;
  wire force_tlast_to_fifo_reg_n_0;
  wire frame_len_ctr;
  wire \frame_len_ctr[3]_i_1_n_0 ;
  wire [3:0]frame_len_ctr_reg__0;
  wire full;
  wire [63:0]m_axis_tdata;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in_0;
  wire [3:0]p_0_in__0;
  wire rd_en_i_2_n_0;
  wire rd_en_reg_n_0;
  wire rx_statistics_valid;
  wire [13:0]rx_statistics_vector;
  wire [13:0]rx_stats_vec_reg;
  wire [13:1]rx_stats_vec_reg0;
  wire \rx_stats_vec_reg[13]_i_2_n_0 ;
  wire \rx_stats_vec_reg[13]_i_3_n_0 ;
  wire \rx_stats_vec_reg[13]_i_4_n_0 ;
  wire \rx_stats_vec_reg[13]_i_5_n_0 ;
  wire \rx_stats_vec_reg[13]_i_6_n_0 ;
  wire \rx_stats_vec_reg[8]_i_2_n_0 ;
  wire \rx_stats_vec_reg[8]_i_3_n_0 ;
  wire \rx_stats_vec_reg[8]_i_4_n_0 ;
  wire \rx_stats_vec_reg[8]_i_5_n_0 ;
  wire \rx_stats_vec_reg[8]_i_6_n_0 ;
  wire \rx_stats_vec_reg[8]_i_7_n_0 ;
  wire \rx_stats_vec_reg[8]_i_8_n_0 ;
  wire \rx_stats_vec_reg_reg[13]_i_1_n_5 ;
  wire \rx_stats_vec_reg_reg[13]_i_1_n_6 ;
  wire \rx_stats_vec_reg_reg[13]_i_1_n_7 ;
  wire \rx_stats_vec_reg_reg[8]_i_1_n_0 ;
  wire \rx_stats_vec_reg_reg[8]_i_1_n_1 ;
  wire \rx_stats_vec_reg_reg[8]_i_1_n_2 ;
  wire \rx_stats_vec_reg_reg[8]_i_1_n_3 ;
  wire \rx_stats_vec_reg_reg[8]_i_1_n_5 ;
  wire \rx_stats_vec_reg_reg[8]_i_1_n_6 ;
  wire \rx_stats_vec_reg_reg[8]_i_1_n_7 ;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire [3:0]state_rd;
  wire \state_wr[0]_i_2_n_0 ;
  wire \state_wr[3]_i_3_n_0 ;
  wire [3:0]state_wr__0;
  wire state_wr_n_0;
  wire wr_en2_out;
  wire wr_en_i_1_n_0;
  wire wr_en_reg_n_0;
  wire [7:3]\NLW_rx_stats_vec_reg_reg[13]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_rx_stats_vec_reg_reg[13]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_rx_stats_vec_reg_reg[8]_i_1_CO_UNCONNECTED ;

  FDRE \axi_str_tdata_from_xgmac_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[0]),
        .Q(axi_str_tdata_from_xgmac_r[0]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[10]),
        .Q(axi_str_tdata_from_xgmac_r[10]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[11]),
        .Q(axi_str_tdata_from_xgmac_r[11]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[12]),
        .Q(axi_str_tdata_from_xgmac_r[12]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[13]),
        .Q(axi_str_tdata_from_xgmac_r[13]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[14]),
        .Q(axi_str_tdata_from_xgmac_r[14]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[15]),
        .Q(axi_str_tdata_from_xgmac_r[15]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[16]),
        .Q(axi_str_tdata_from_xgmac_r[16]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[17]),
        .Q(axi_str_tdata_from_xgmac_r[17]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[18]),
        .Q(axi_str_tdata_from_xgmac_r[18]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[19]),
        .Q(axi_str_tdata_from_xgmac_r[19]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[1]),
        .Q(axi_str_tdata_from_xgmac_r[1]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[20]),
        .Q(axi_str_tdata_from_xgmac_r[20]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[21]),
        .Q(axi_str_tdata_from_xgmac_r[21]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[22]),
        .Q(axi_str_tdata_from_xgmac_r[22]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[23]),
        .Q(axi_str_tdata_from_xgmac_r[23]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[24]),
        .Q(axi_str_tdata_from_xgmac_r[24]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[25]),
        .Q(axi_str_tdata_from_xgmac_r[25]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[26]),
        .Q(axi_str_tdata_from_xgmac_r[26]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[27]),
        .Q(axi_str_tdata_from_xgmac_r[27]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[28]),
        .Q(axi_str_tdata_from_xgmac_r[28]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[29]),
        .Q(axi_str_tdata_from_xgmac_r[29]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[2]),
        .Q(axi_str_tdata_from_xgmac_r[2]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[30]),
        .Q(axi_str_tdata_from_xgmac_r[30]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[31]),
        .Q(axi_str_tdata_from_xgmac_r[31]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[32]),
        .Q(axi_str_tdata_from_xgmac_r[32]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[33]),
        .Q(axi_str_tdata_from_xgmac_r[33]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[34]),
        .Q(axi_str_tdata_from_xgmac_r[34]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[35]),
        .Q(axi_str_tdata_from_xgmac_r[35]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[36]),
        .Q(axi_str_tdata_from_xgmac_r[36]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[37]),
        .Q(axi_str_tdata_from_xgmac_r[37]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[38]),
        .Q(axi_str_tdata_from_xgmac_r[38]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[39]),
        .Q(axi_str_tdata_from_xgmac_r[39]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[3]),
        .Q(axi_str_tdata_from_xgmac_r[3]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[40]),
        .Q(axi_str_tdata_from_xgmac_r[40]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[41]),
        .Q(axi_str_tdata_from_xgmac_r[41]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[42]),
        .Q(axi_str_tdata_from_xgmac_r[42]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[43]),
        .Q(axi_str_tdata_from_xgmac_r[43]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[44]),
        .Q(axi_str_tdata_from_xgmac_r[44]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[45]),
        .Q(axi_str_tdata_from_xgmac_r[45]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[46]),
        .Q(axi_str_tdata_from_xgmac_r[46]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[47]),
        .Q(axi_str_tdata_from_xgmac_r[47]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[48]),
        .Q(axi_str_tdata_from_xgmac_r[48]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[49]),
        .Q(axi_str_tdata_from_xgmac_r[49]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[4]),
        .Q(axi_str_tdata_from_xgmac_r[4]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[50]),
        .Q(axi_str_tdata_from_xgmac_r[50]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[51]),
        .Q(axi_str_tdata_from_xgmac_r[51]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[52]),
        .Q(axi_str_tdata_from_xgmac_r[52]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[53]),
        .Q(axi_str_tdata_from_xgmac_r[53]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[54]),
        .Q(axi_str_tdata_from_xgmac_r[54]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[55]),
        .Q(axi_str_tdata_from_xgmac_r[55]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[56]),
        .Q(axi_str_tdata_from_xgmac_r[56]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[57]),
        .Q(axi_str_tdata_from_xgmac_r[57]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[58]),
        .Q(axi_str_tdata_from_xgmac_r[58]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[59]),
        .Q(axi_str_tdata_from_xgmac_r[59]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[5]),
        .Q(axi_str_tdata_from_xgmac_r[5]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[60]),
        .Q(axi_str_tdata_from_xgmac_r[60]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[61]),
        .Q(axi_str_tdata_from_xgmac_r[61]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[62]),
        .Q(axi_str_tdata_from_xgmac_r[62]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[63]),
        .Q(axi_str_tdata_from_xgmac_r[63]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[6]),
        .Q(axi_str_tdata_from_xgmac_r[6]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[7]),
        .Q(axi_str_tdata_from_xgmac_r[7]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[8]),
        .Q(axi_str_tdata_from_xgmac_r[8]),
        .R(1'b0));
  FDRE \axi_str_tdata_from_xgmac_r_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[9]),
        .Q(axi_str_tdata_from_xgmac_r[9]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[0]),
        .Q(axi_str_tkeep_from_xgmac_r[0]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[1]),
        .Q(axi_str_tkeep_from_xgmac_r[1]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[2]),
        .Q(axi_str_tkeep_from_xgmac_r[2]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[3]),
        .Q(axi_str_tkeep_from_xgmac_r[3]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[4]),
        .Q(axi_str_tkeep_from_xgmac_r[4]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[5]),
        .Q(axi_str_tkeep_from_xgmac_r[5]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[6]),
        .Q(axi_str_tkeep_from_xgmac_r[6]),
        .R(1'b0));
  FDRE \axi_str_tkeep_from_xgmac_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tkeep[7]),
        .Q(axi_str_tkeep_from_xgmac_r[7]),
        .R(1'b0));
  FDRE axi_str_tlast_from_xgmac_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(axi_str_tlast_from_xgmac_r),
        .R(1'b0));
  FDRE axi_str_tvalid_from_xgmac_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(axi_str_tvalid_from_xgmac_r),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_sync_fifo axis_fifo_inst1
       (.D({p_0_in__0[3],p_0_in__0[1:0]}),
        .Q(axi_str_tdata_from_xgmac_r),
        .aclk(aclk),
        .aresetn(aresetn),
        .\axi_str_tkeep_from_xgmac_r_reg[7] (axi_str_tkeep_from_xgmac_r),
        .axi_str_tlast_from_xgmac_r(axi_str_tlast_from_xgmac_r),
        .axi_str_tvalid_from_xgmac_r(axi_str_tvalid_from_xgmac_r),
        .dout(cmd_out),
        .force_tlast_to_fifo_reg(axis_fifo_inst1_n_74),
        .force_tlast_to_fifo_reg_0(force_tlast_to_fifo_reg_n_0),
        .force_tlast_to_fifo_reg_1(\state_wr[3]_i_3_n_0 ),
        .full(full),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(axis_rd_tready__0),
        .m_axis_tready_0(m_axis_tready),
        .m_axis_tvalid(axis_rd_tvalid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_rd_reg[0] (axis_fifo_inst1_n_80),
        .\state_rd_reg[1] (cmd_fifo_inst_n_5),
        .\state_rd_reg[3] ({p_0_in_0[3],p_0_in_0[0]}),
        .\state_rd_reg[3]_0 (state_rd),
        .\state_wr_reg[0] (state_wr_n_0),
        .\state_wr_reg[2] (\state_wr[0]_i_2_n_0 ),
        .\state_wr_reg[3] (state_wr__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_fifo_xgemac_rxif cmd_fifo_inst
       (.D(p_0_in_0[1]),
        .Q(state_rd),
        .SR(cmd_fifo_inst_n_3),
        .aclk(aclk),
        .aresetn(aresetn),
        .din({\cmd_in_reg_n_0_[15] ,\cmd_in_reg_n_0_[14] ,\cmd_in_reg_n_0_[13] ,\cmd_in_reg_n_0_[12] ,\cmd_in_reg_n_0_[11] ,\cmd_in_reg_n_0_[10] ,\cmd_in_reg_n_0_[9] ,\cmd_in_reg_n_0_[8] ,\cmd_in_reg_n_0_[7] ,\cmd_in_reg_n_0_[6] ,\cmd_in_reg_n_0_[5] ,\cmd_in_reg_n_0_[4] ,\cmd_in_reg_n_0_[3] ,\cmd_in_reg_n_0_[2] ,\cmd_in_reg_n_0_[1] ,\cmd_in_reg_n_0_[0] }),
        .dout(cmd_out),
        .empty_fwft_i_reg(axis_rd_tvalid),
        .full(full),
        .m_axis_tready(axis_rd_tready__0),
        .m_axis_tready_0(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rd_en(rd_en_reg_n_0),
        .rd_en_reg(cmd_fifo_inst_n_4),
        .rd_en_reg_0(cmd_fifo_inst_n_5),
        .\state_rd_reg[0] (axis_fifo_inst1_n_80),
        .\state_rd_reg[3] (rd_en_i_2_n_0),
        .wr_en(wr_en_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \cmd_in[0]_i_1 
       (.I0(s_axis_tuser),
        .I1(force_tlast_to_fifo_reg_n_0),
        .I2(state_wr__0[2]),
        .I3(s_axis_tvalid),
        .I4(s_axis_tlast),
        .O(\cmd_in[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00080000)) 
    \cmd_in[15]_i_1 
       (.I0(\cmd_in[8]_i_5_n_0 ),
        .I1(aresetn),
        .I2(state_wr__0[1]),
        .I3(state_wr__0[3]),
        .I4(state_wr__0[2]),
        .I5(state_wr__0[0]),
        .O(\cmd_in[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000400)) 
    \cmd_in[1]_i_1 
       (.I0(state_wr__0[3]),
        .I1(aresetn),
        .I2(state_wr__0[0]),
        .I3(state_wr__0[1]),
        .I4(state_wr__0[2]),
        .I5(\cmd_in_reg_n_0_[1] ),
        .O(\cmd_in[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A030A000A0)) 
    \cmd_in[2]_i_1 
       (.I0(rx_stats_vec_reg[0]),
        .I1(\cmd_in[2]_i_2_n_0 ),
        .I2(state_wr__0[2]),
        .I3(\cmd_in[8]_i_5_n_0 ),
        .I4(s_axis_tkeep[0]),
        .I5(s_axis_tkeep[7]),
        .O(\cmd_in[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7DFFFEFFFFFFFFFE)) 
    \cmd_in[2]_i_2 
       (.I0(s_axis_tkeep[4]),
        .I1(s_axis_tkeep[6]),
        .I2(s_axis_tkeep[5]),
        .I3(s_axis_tkeep[1]),
        .I4(s_axis_tkeep[3]),
        .I5(s_axis_tkeep[2]),
        .O(\cmd_in[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A0C0A000A0)) 
    \cmd_in[3]_i_1 
       (.I0(rx_stats_vec_reg[1]),
        .I1(\cmd_in[3]_i_2_n_0 ),
        .I2(state_wr__0[2]),
        .I3(\cmd_in[8]_i_5_n_0 ),
        .I4(s_axis_tkeep[0]),
        .I5(s_axis_tkeep[7]),
        .O(\cmd_in[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA000001000000010)) 
    \cmd_in[3]_i_2 
       (.I0(s_axis_tkeep[5]),
        .I1(s_axis_tkeep[6]),
        .I2(s_axis_tkeep[1]),
        .I3(s_axis_tkeep[4]),
        .I4(s_axis_tkeep[3]),
        .I5(s_axis_tkeep[2]),
        .O(\cmd_in[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003AAAA00000000)) 
    \cmd_in[4]_i_1 
       (.I0(rx_stats_vec_reg[2]),
        .I1(\cmd_in[4]_i_2_n_0 ),
        .I2(\cmd_in[4]_i_3_n_0 ),
        .I3(s_axis_tkeep[7]),
        .I4(\cmd_in[8]_i_5_n_0 ),
        .I5(state_wr__0[2]),
        .O(\cmd_in[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cmd_in[4]_i_2 
       (.I0(s_axis_tkeep[1]),
        .I1(s_axis_tkeep[0]),
        .I2(s_axis_tkeep[2]),
        .I3(s_axis_tkeep[3]),
        .O(\cmd_in[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cmd_in[4]_i_3 
       (.I0(s_axis_tkeep[4]),
        .I1(s_axis_tkeep[5]),
        .I2(s_axis_tkeep[6]),
        .O(\cmd_in[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3CAA0000)) 
    \cmd_in[5]_i_1 
       (.I0(rx_stats_vec_reg[3]),
        .I1(frame_len_ctr_reg__0[0]),
        .I2(\cmd_in[8]_i_4_n_0 ),
        .I3(\cmd_in[8]_i_5_n_0 ),
        .I4(state_wr__0[2]),
        .O(\cmd_in[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2EEEE22200000000)) 
    \cmd_in[6]_i_1 
       (.I0(rx_stats_vec_reg[4]),
        .I1(\cmd_in[8]_i_5_n_0 ),
        .I2(\cmd_in[8]_i_4_n_0 ),
        .I3(frame_len_ctr_reg__0[0]),
        .I4(frame_len_ctr_reg__0[1]),
        .I5(state_wr__0[2]),
        .O(\cmd_in[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2EEEE22200000000)) 
    \cmd_in[7]_i_1 
       (.I0(rx_stats_vec_reg[5]),
        .I1(\cmd_in[8]_i_5_n_0 ),
        .I2(\cmd_in[8]_i_3_n_0 ),
        .I3(\cmd_in[8]_i_4_n_0 ),
        .I4(frame_len_ctr_reg__0[2]),
        .I5(state_wr__0[2]),
        .O(\cmd_in[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00060000)) 
    \cmd_in[8]_i_1 
       (.I0(state_wr__0[0]),
        .I1(state_wr__0[2]),
        .I2(state_wr__0[3]),
        .I3(state_wr__0[1]),
        .I4(aresetn),
        .O(cmd_in));
  LUT6 #(
    .INIT(64'h80008000FF000000)) 
    \cmd_in[8]_i_2 
       (.I0(frame_len_ctr_reg__0[2]),
        .I1(\cmd_in[8]_i_3_n_0 ),
        .I2(\cmd_in[8]_i_4_n_0 ),
        .I3(state_wr__0[2]),
        .I4(rx_stats_vec_reg[6]),
        .I5(\cmd_in[8]_i_5_n_0 ),
        .O(\cmd_in[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_in[8]_i_3 
       (.I0(frame_len_ctr_reg__0[0]),
        .I1(frame_len_ctr_reg__0[1]),
        .O(\cmd_in[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \cmd_in[8]_i_4 
       (.I0(\cmd_in[4]_i_2_n_0 ),
        .I1(s_axis_tkeep[6]),
        .I2(s_axis_tkeep[7]),
        .I3(s_axis_tkeep[5]),
        .I4(s_axis_tkeep[4]),
        .O(\cmd_in[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \cmd_in[8]_i_5 
       (.I0(frame_len_ctr_reg__0[0]),
        .I1(frame_len_ctr_reg__0[1]),
        .I2(frame_len_ctr_reg__0[2]),
        .I3(s_axis_tvalid),
        .I4(s_axis_tlast),
        .I5(frame_len_ctr_reg__0[3]),
        .O(\cmd_in[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[0] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[0]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[10] 
       (.C(aclk),
        .CE(cmd_in),
        .D(rx_stats_vec_reg[8]),
        .Q(\cmd_in_reg_n_0_[10] ),
        .R(\cmd_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[11] 
       (.C(aclk),
        .CE(cmd_in),
        .D(rx_stats_vec_reg[9]),
        .Q(\cmd_in_reg_n_0_[11] ),
        .R(\cmd_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[12] 
       (.C(aclk),
        .CE(cmd_in),
        .D(rx_stats_vec_reg[10]),
        .Q(\cmd_in_reg_n_0_[12] ),
        .R(\cmd_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[13] 
       (.C(aclk),
        .CE(cmd_in),
        .D(rx_stats_vec_reg[11]),
        .Q(\cmd_in_reg_n_0_[13] ),
        .R(\cmd_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[14] 
       (.C(aclk),
        .CE(cmd_in),
        .D(rx_stats_vec_reg[12]),
        .Q(\cmd_in_reg_n_0_[14] ),
        .R(\cmd_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[15] 
       (.C(aclk),
        .CE(cmd_in),
        .D(rx_stats_vec_reg[13]),
        .Q(\cmd_in_reg_n_0_[15] ),
        .R(\cmd_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cmd_in[1]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[2] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[2]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[3] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[3]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[4] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[4]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[5] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[5]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[6] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[6]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[7] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[7]_i_1_n_0 ),
        .Q(\cmd_in_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[8] 
       (.C(aclk),
        .CE(cmd_in),
        .D(\cmd_in[8]_i_2_n_0 ),
        .Q(\cmd_in_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_in_reg[9] 
       (.C(aclk),
        .CE(cmd_in),
        .D(rx_stats_vec_reg[7]),
        .Q(\cmd_in_reg_n_0_[9] ),
        .R(\cmd_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    force_tlast_to_fifo_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axis_fifo_inst1_n_74),
        .Q(force_tlast_to_fifo_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_len_ctr[0]_i_1 
       (.I0(frame_len_ctr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \frame_len_ctr[1]_i_1 
       (.I0(frame_len_ctr_reg__0[0]),
        .I1(frame_len_ctr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \frame_len_ctr[2]_i_1 
       (.I0(frame_len_ctr_reg__0[2]),
        .I1(frame_len_ctr_reg__0[1]),
        .I2(frame_len_ctr_reg__0[0]),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    \frame_len_ctr[3]_i_1 
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .O(\frame_len_ctr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \frame_len_ctr[3]_i_2 
       (.I0(s_axis_tvalid),
        .I1(frame_len_ctr_reg__0[2]),
        .I2(frame_len_ctr_reg__0[1]),
        .I3(frame_len_ctr_reg__0[0]),
        .I4(frame_len_ctr_reg__0[3]),
        .O(frame_len_ctr));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \frame_len_ctr[3]_i_3 
       (.I0(frame_len_ctr_reg__0[3]),
        .I1(frame_len_ctr_reg__0[2]),
        .I2(frame_len_ctr_reg__0[0]),
        .I3(frame_len_ctr_reg__0[1]),
        .O(p_0_in[3]));
  FDRE \frame_len_ctr_reg[0] 
       (.C(aclk),
        .CE(frame_len_ctr),
        .D(p_0_in[0]),
        .Q(frame_len_ctr_reg__0[0]),
        .R(\frame_len_ctr[3]_i_1_n_0 ));
  FDRE \frame_len_ctr_reg[1] 
       (.C(aclk),
        .CE(frame_len_ctr),
        .D(p_0_in[1]),
        .Q(frame_len_ctr_reg__0[1]),
        .R(\frame_len_ctr[3]_i_1_n_0 ));
  FDRE \frame_len_ctr_reg[2] 
       (.C(aclk),
        .CE(frame_len_ctr),
        .D(p_0_in[2]),
        .Q(frame_len_ctr_reg__0[2]),
        .R(\frame_len_ctr[3]_i_1_n_0 ));
  FDRE \frame_len_ctr_reg[3] 
       (.C(aclk),
        .CE(frame_len_ctr),
        .D(p_0_in[3]),
        .Q(frame_len_ctr_reg__0[3]),
        .R(\frame_len_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rd_en_i_2
       (.I0(state_rd[3]),
        .I1(state_rd[2]),
        .O(rd_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cmd_fifo_inst_n_4),
        .Q(rd_en_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[13]_i_2 
       (.I0(rx_statistics_vector[13]),
        .O(\rx_stats_vec_reg[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[13]_i_3 
       (.I0(rx_statistics_vector[12]),
        .O(\rx_stats_vec_reg[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[13]_i_4 
       (.I0(rx_statistics_vector[11]),
        .O(\rx_stats_vec_reg[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[13]_i_5 
       (.I0(rx_statistics_vector[10]),
        .O(\rx_stats_vec_reg[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[13]_i_6 
       (.I0(rx_statistics_vector[9]),
        .O(\rx_stats_vec_reg[13]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[8]_i_2 
       (.I0(rx_statistics_vector[8]),
        .O(\rx_stats_vec_reg[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[8]_i_3 
       (.I0(rx_statistics_vector[7]),
        .O(\rx_stats_vec_reg[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[8]_i_4 
       (.I0(rx_statistics_vector[6]),
        .O(\rx_stats_vec_reg[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[8]_i_5 
       (.I0(rx_statistics_vector[5]),
        .O(\rx_stats_vec_reg[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[8]_i_6 
       (.I0(rx_statistics_vector[4]),
        .O(\rx_stats_vec_reg[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[8]_i_7 
       (.I0(rx_statistics_vector[3]),
        .O(\rx_stats_vec_reg[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_stats_vec_reg[8]_i_8 
       (.I0(rx_statistics_vector[2]),
        .O(\rx_stats_vec_reg[8]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[0] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_statistics_vector[0]),
        .Q(rx_stats_vec_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[10] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[10]),
        .Q(rx_stats_vec_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[11] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[11]),
        .Q(rx_stats_vec_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[12] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[12]),
        .Q(rx_stats_vec_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[13] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[13]),
        .Q(rx_stats_vec_reg[13]),
        .R(1'b0));
  CARRY8 \rx_stats_vec_reg_reg[13]_i_1 
       (.CI(\rx_stats_vec_reg_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_rx_stats_vec_reg_reg[13]_i_1_CO_UNCONNECTED [7:3],\rx_stats_vec_reg_reg[13]_i_1_n_5 ,\rx_stats_vec_reg_reg[13]_i_1_n_6 ,\rx_stats_vec_reg_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,rx_statistics_vector[12:9]}),
        .O({\NLW_rx_stats_vec_reg_reg[13]_i_1_O_UNCONNECTED [7:5],rx_stats_vec_reg0[13:9]}),
        .S({1'b0,1'b0,1'b0,\rx_stats_vec_reg[13]_i_2_n_0 ,\rx_stats_vec_reg[13]_i_3_n_0 ,\rx_stats_vec_reg[13]_i_4_n_0 ,\rx_stats_vec_reg[13]_i_5_n_0 ,\rx_stats_vec_reg[13]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[1] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[1]),
        .Q(rx_stats_vec_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[2] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[2]),
        .Q(rx_stats_vec_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[3] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[3]),
        .Q(rx_stats_vec_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[4] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[4]),
        .Q(rx_stats_vec_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[5] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[5]),
        .Q(rx_stats_vec_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[6] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[6]),
        .Q(rx_stats_vec_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[7] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[7]),
        .Q(rx_stats_vec_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[8] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[8]),
        .Q(rx_stats_vec_reg[8]),
        .R(1'b0));
  CARRY8 \rx_stats_vec_reg_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\rx_stats_vec_reg_reg[8]_i_1_n_0 ,\rx_stats_vec_reg_reg[8]_i_1_n_1 ,\rx_stats_vec_reg_reg[8]_i_1_n_2 ,\rx_stats_vec_reg_reg[8]_i_1_n_3 ,\NLW_rx_stats_vec_reg_reg[8]_i_1_CO_UNCONNECTED [3],\rx_stats_vec_reg_reg[8]_i_1_n_5 ,\rx_stats_vec_reg_reg[8]_i_1_n_6 ,\rx_stats_vec_reg_reg[8]_i_1_n_7 }),
        .DI({rx_statistics_vector[8:2],1'b0}),
        .O(rx_stats_vec_reg0[8:1]),
        .S({\rx_stats_vec_reg[8]_i_2_n_0 ,\rx_stats_vec_reg[8]_i_3_n_0 ,\rx_stats_vec_reg[8]_i_4_n_0 ,\rx_stats_vec_reg[8]_i_5_n_0 ,\rx_stats_vec_reg[8]_i_6_n_0 ,\rx_stats_vec_reg[8]_i_7_n_0 ,\rx_stats_vec_reg[8]_i_8_n_0 ,rx_statistics_vector[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \rx_stats_vec_reg_reg[9] 
       (.C(aclk),
        .CE(rx_statistics_valid),
        .D(rx_stats_vec_reg0[9]),
        .Q(rx_stats_vec_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \state_rd[2]_i_1 
       (.I0(state_rd[2]),
        .I1(state_rd[3]),
        .I2(state_rd[1]),
        .I3(state_rd[0]),
        .O(p_0_in_0[2]));
  (* FSM_ENCODED_STATES = "PREP_READ_2:0100,PREP_READ_1:0010,BEGIN_READ:1000,IDLE_RD:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_rd_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in_0[0]),
        .Q(state_rd[0]),
        .S(cmd_fifo_inst_n_3));
  (* FSM_ENCODED_STATES = "PREP_READ_2:0100,PREP_READ_1:0010,BEGIN_READ:1000,IDLE_RD:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_rd_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in_0[1]),
        .Q(state_rd[1]),
        .R(cmd_fifo_inst_n_3));
  (* FSM_ENCODED_STATES = "PREP_READ_2:0100,PREP_READ_1:0010,BEGIN_READ:1000,IDLE_RD:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_rd_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in_0[2]),
        .Q(state_rd[2]),
        .R(cmd_fifo_inst_n_3));
  (* FSM_ENCODED_STATES = "PREP_READ_2:0100,PREP_READ_1:0010,BEGIN_READ:1000,IDLE_RD:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_rd_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in_0[3]),
        .Q(state_rd[3]),
        .R(cmd_fifo_inst_n_3));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    state_wr
       (.I0(state_wr__0[0]),
        .I1(state_wr__0[1]),
        .I2(state_wr__0[2]),
        .I3(state_wr__0[3]),
        .O(state_wr_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \state_wr[0]_i_2 
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(state_wr__0[2]),
        .I3(force_tlast_to_fifo_reg_n_0),
        .O(\state_wr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888A8A8A8)) 
    \state_wr[2]_i_1 
       (.I0(state_wr_n_0),
        .I1(state_wr__0[1]),
        .I2(state_wr__0[2]),
        .I3(s_axis_tvalid),
        .I4(s_axis_tlast),
        .I5(force_tlast_to_fifo_reg_n_0),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_wr[3]_i_3 
       (.I0(force_tlast_to_fifo_reg_n_0),
        .I1(state_wr__0[2]),
        .O(\state_wr[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "BEGIN_WRITE:0100,DROP_FRAME:1000,IDLE_WR:0001,DA_DECODE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_wr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(state_wr__0[0]),
        .S(cmd_fifo_inst_n_3));
  (* FSM_ENCODED_STATES = "BEGIN_WRITE:0100,DROP_FRAME:1000,IDLE_WR:0001,DA_DECODE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_wr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(state_wr__0[1]),
        .R(cmd_fifo_inst_n_3));
  (* FSM_ENCODED_STATES = "BEGIN_WRITE:0100,DROP_FRAME:1000,IDLE_WR:0001,DA_DECODE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_wr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(state_wr__0[2]),
        .R(cmd_fifo_inst_n_3));
  (* FSM_ENCODED_STATES = "BEGIN_WRITE:0100,DROP_FRAME:1000,IDLE_WR:0001,DA_DECODE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_wr_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(state_wr__0[3]),
        .R(cmd_fifo_inst_n_3));
  LUT6 #(
    .INIT(64'hAA80FFFFAA800000)) 
    wr_en_i_1
       (.I0(state_wr__0[2]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tlast),
        .I3(force_tlast_to_fifo_reg_n_0),
        .I4(wr_en2_out),
        .I5(wr_en_reg_n_0),
        .O(wr_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00020228)) 
    wr_en_i_2
       (.I0(aresetn),
        .I1(state_wr__0[0]),
        .I2(state_wr__0[2]),
        .I3(state_wr__0[1]),
        .I4(state_wr__0[3]),
        .O(wr_en2_out));
  FDRE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wr_en_i_1_n_0),
        .Q(wr_en_reg_n_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_interface_wrapper
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tvalid,
    m_axis_tlast,
    rx_statistics_vector,
    rx_statistics_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  input aresetn;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tvalid;
  input s_axis_tlast;
  input s_axis_tuser;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tvalid;
  output m_axis_tlast;
  input [29:0]rx_statistics_vector;
  input rx_statistics_valid;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rx_statistics_valid;
  wire [29:0]rx_statistics_vector;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_interface rx_interface_inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rx_statistics_valid(rx_statistics_valid),
        .rx_statistics_vector(rx_statistics_vector[18:5]),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "shell_network_packet_fifo_0_0,rx_interface_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "rx_interface_wrapper,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tvalid,
    m_axis_tlast,
    rx_statistics_vector,
    rx_statistics_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA undef" *) input s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [7:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA undef" *) output m_axis_tlast;
  input [29:0]rx_statistics_vector;
  input rx_statistics_valid;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rx_statistics_valid;
  wire [29:0]rx_statistics_vector;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_interface_wrapper inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rx_statistics_valid(rx_statistics_valid),
        .rx_statistics_vector(rx_statistics_vector),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    E,
    out,
    s_axis_tvalid);
  output [72:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]E;
  input out;
  input s_axis_tvalid;

  wire [72:0]D;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire POR_A;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire s_aclk;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D[17:0]),
        .DIADI({s_axis_tdata[7:0],s_axis_tkeep[6:0],s_axis_tlast}),
        .DIPADIP({s_axis_tdata[8],s_axis_tkeep[7]}),
        .E(E),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .s_aclk(s_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.D(D[53:18]),
        .E(E),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[44:9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.D(D[72:54]),
        .E(E),
        .ENA_I(ENA_I),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[63:45]),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr__parameterized0
   (dout,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    ENB_dly_D,
    clk,
    ENB_I,
    ram_rstram_b,
    \gcc0.gc0.count_d1_reg[9] ,
    Q,
    din,
    E,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    wr_en,
    out);
  output [1:0]dout;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output ENB_dly_D;
  input clk;
  input ENB_I;
  input ram_rstram_b;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]Q;
  input [15:0]din;
  input [0:0]E;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input wr_en;
  input out;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_dly_D;
  wire [9:0]Q;
  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_rstram_b;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    DIADI,
    DIPADIP,
    E);
  output [17:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [15:0]DIADI;
  input [1:0]DIPADIP;
  input [0:0]E;

  wire [17:0]D;
  wire [15:0]DIADI;
  wire [1:0]DIPADIP;
  wire [0:0]E;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire s_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .DIADI(DIADI),
        .DIPADIP(DIPADIP),
        .E(E),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    E);
  output [35:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [35:0]s_axis_tdata;
  input [0:0]E;

  wire [35:0]D;
  wire [0:0]E;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire s_aclk;
  wire [35:0]s_axis_tdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.D(D),
        .E(E),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (D,
    ENA_I,
    POR_A,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    E,
    out,
    s_axis_tvalid);
  output [18:0]D;
  output ENA_I;
  output POR_A;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [18:0]s_axis_tdata;
  input [0:0]E;
  input out;
  input s_axis_tvalid;

  wire [18:0]D;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly;
  wire ENA_dly_D;
  wire ENB_I;
  wire POR_A;
  wire \SAFETY_CKT_GEN.POR_A_i_1_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire s_aclk;
  wire [18:0]s_axis_tdata;
  wire s_axis_tvalid;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENA_dly),
        .Q(ENA_dly_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_A),
        .Q(ENA_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_A_i_1 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_A_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ),
        .Q(POR_A),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\rx_interface_inst/axis_fifo_inst1/U0 /\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\rx_interface_inst/axis_fifo_inst1/U0 /\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.D(D),
        .E(E),
        .ENA_I(ENA_I),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .\SAFETY_CKT_GEN.POR_A_reg (POR_A),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (dout,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    ENB_dly_D,
    clk,
    ENB_I,
    ram_rstram_b,
    \gcc0.gc0.count_d1_reg[9] ,
    Q,
    din,
    E,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    wr_en,
    out);
  output [1:0]dout;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output ENB_dly_D;
  input clk;
  input ENB_I;
  input ram_rstram_b;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]Q;
  input [15:0]din;
  input [0:0]E;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input wr_en;
  input out;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire ENA_dly;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly;
  wire ENB_dly_D;
  wire [9:0]Q;
  wire [4:0]RSTA_SHFT_REG;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire p_3_out;
  wire ram_rstram_b;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(clk),
        .CE(1'b1),
        .D(ENA_dly),
        .Q(ENA_dly_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .Q(ENA_dly),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(clk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .Q(ENB_dly),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_A_i_1 
       (.I0(RSTA_SHFT_REG[0]),
        .I1(RSTA_SHFT_REG[4]),
        .O(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_A_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTA_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "inst/\rx_interface_inst/cmd_fifo_inst/U0 /\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\rx_interface_inst/cmd_fifo_inst/U0 /\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(RSTA_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTA_SHFT_REG[4]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .Q(Q),
        .\SAFETY_CKT_GEN.POR_A_reg (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    DIADI,
    DIPADIP,
    E);
  output [17:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [15:0]DIADI;
  input [1:0]DIPADIP;
  input [0:0]E;

  wire [17:0]D;
  wire [15:0]DIADI;
  wire [1:0]DIPADIP;
  wire [0:0]E;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire s_aclk;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "RAMB18E1" *) 
  (* XILINX_TRANSFORM_PINMAP = "DIADI[0]:DINADIN[0] DIADI[10]:DINADIN[10] DIADI[11]:DINADIN[11] DIADI[12]:DINADIN[12] DIADI[13]:DINADIN[13] DIADI[14]:DINADIN[14] DIADI[15]:DINADIN[15] DIADI[1]:DINADIN[1] DIADI[2]:DINADIN[2] DIADI[3]:DINADIN[3] DIADI[4]:DINADIN[4] DIADI[5]:DINADIN[5] DIADI[6]:DINADIN[6] DIADI[7]:DINADIN[7] DIADI[8]:DINADIN[8] DIADI[9]:DINADIN[9] DIBDI[0]:DINBDIN[0] DIBDI[10]:DINBDIN[10] DIBDI[11]:DINBDIN[11] DIBDI[12]:DINBDIN[12] DIBDI[13]:DINBDIN[13] DIBDI[14]:DINBDIN[14] DIBDI[15]:DINBDIN[15] DIBDI[1]:DINBDIN[1] DIBDI[2]:DINBDIN[2] DIBDI[3]:DINBDIN[3] DIBDI[4]:DINBDIN[4] DIBDI[5]:DINBDIN[5] DIBDI[6]:DINBDIN[6] DIBDI[7]:DINBDIN[7] DIBDI[8]:DINBDIN[8] DIBDI[9]:DINBDIN[9] DIPADIP[0]:DINPADINP[0] DIPADIP[1]:DINPADINP[1] DIPBDIP[0]:DINPBDINP[0] DIPBDIP[1]:DINPBDINP[1] DOADO[0]:DOUTADOUT[0] DOADO[10]:DOUTADOUT[10] DOADO[11]:DOUTADOUT[11] DOADO[12]:DOUTADOUT[12] DOADO[13]:DOUTADOUT[13] DOADO[14]:DOUTADOUT[14] DOADO[15]:DOUTADOUT[15] DOADO[1]:DOUTADOUT[1] DOADO[2]:DOUTADOUT[2] DOADO[3]:DOUTADOUT[3] DOADO[4]:DOUTADOUT[4] DOADO[5]:DOUTADOUT[5] DOADO[6]:DOUTADOUT[6] DOADO[7]:DOUTADOUT[7] DOADO[8]:DOUTADOUT[8] DOADO[9]:DOUTADOUT[9] DOBDO[0]:DOUTBDOUT[0] DOBDO[10]:DOUTBDOUT[10] DOBDO[11]:DOUTBDOUT[11] DOBDO[12]:DOUTBDOUT[12] DOBDO[13]:DOUTBDOUT[13] DOBDO[14]:DOUTBDOUT[14] DOBDO[15]:DOUTBDOUT[15] DOBDO[1]:DOUTBDOUT[1] DOBDO[2]:DOUTBDOUT[2] DOBDO[3]:DOUTBDOUT[3] DOBDO[4]:DOUTBDOUT[4] DOBDO[5]:DOUTBDOUT[5] DOBDO[6]:DOUTBDOUT[6] DOBDO[7]:DOUTBDOUT[7] DOBDO[8]:DOUTBDOUT[8] DOBDO[9]:DOUTBDOUT[9] DOPADOP[0]:DOUTPADOUTP[0] DOPADOP[1]:DOUTPADOUTP[1] DOPBDOP[0]:DOUTPBDOUTP[0] DOPBDOP[1]:DOUTPBDOUTP[1]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E2 #(
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[9] ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[9] ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DINADIN(DIADI),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP(DIPADIP),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED [15:0]),
        .DOUTBDOUT({D[16:9],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP({D[17],D[8]}),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized0
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    E);
  output [35:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [35:0]s_axis_tdata;
  input [0:0]E;

  wire [35:0]D;
  wire [0:0]E;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire s_aclk;
  wire [35:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "RAMB36E1" *) 
  (* XILINX_TRANSFORM_PINMAP = "CASCADEINA:CASDINA[0] CASCADEINB:CASDINB[0] CASCADEOUTA:CASDOUTA[0] CASCADEOUTB:CASDOUTB[0] DIADI[0]:DINADIN[0] DIADI[10]:DINADIN[10] DIADI[11]:DINADIN[11] DIADI[12]:DINADIN[12] DIADI[13]:DINADIN[13] DIADI[14]:DINADIN[14] DIADI[15]:DINADIN[15] DIADI[16]:DINADIN[16] DIADI[17]:DINADIN[17] DIADI[18]:DINADIN[18] DIADI[19]:DINADIN[19] DIADI[1]:DINADIN[1] DIADI[20]:DINADIN[20] DIADI[21]:DINADIN[21] DIADI[22]:DINADIN[22] DIADI[23]:DINADIN[23] DIADI[24]:DINADIN[24] DIADI[25]:DINADIN[25] DIADI[26]:DINADIN[26] DIADI[27]:DINADIN[27] DIADI[28]:DINADIN[28] DIADI[29]:DINADIN[29] DIADI[2]:DINADIN[2] DIADI[30]:DINADIN[30] DIADI[31]:DINADIN[31] DIADI[3]:DINADIN[3] DIADI[4]:DINADIN[4] DIADI[5]:DINADIN[5] DIADI[6]:DINADIN[6] DIADI[7]:DINADIN[7] DIADI[8]:DINADIN[8] DIADI[9]:DINADIN[9] DIBDI[0]:DINBDIN[0] DIBDI[10]:DINBDIN[10] DIBDI[11]:DINBDIN[11] DIBDI[12]:DINBDIN[12] DIBDI[13]:DINBDIN[13] DIBDI[14]:DINBDIN[14] DIBDI[15]:DINBDIN[15] DIBDI[16]:DINBDIN[16] DIBDI[17]:DINBDIN[17] DIBDI[18]:DINBDIN[18] DIBDI[19]:DINBDIN[19] DIBDI[1]:DINBDIN[1] DIBDI[20]:DINBDIN[20] DIBDI[21]:DINBDIN[21] DIBDI[22]:DINBDIN[22] DIBDI[23]:DINBDIN[23] DIBDI[24]:DINBDIN[24] DIBDI[25]:DINBDIN[25] DIBDI[26]:DINBDIN[26] DIBDI[27]:DINBDIN[27] DIBDI[28]:DINBDIN[28] DIBDI[29]:DINBDIN[29] DIBDI[2]:DINBDIN[2] DIBDI[30]:DINBDIN[30] DIBDI[31]:DINBDIN[31] DIBDI[3]:DINBDIN[3] DIBDI[4]:DINBDIN[4] DIBDI[5]:DINBDIN[5] DIBDI[6]:DINBDIN[6] DIBDI[7]:DINBDIN[7] DIBDI[8]:DINBDIN[8] DIBDI[9]:DINBDIN[9] DIPADIP[0]:DINPADINP[0] DIPADIP[1]:DINPADINP[1] DIPADIP[2]:DINPADINP[2] DIPADIP[3]:DINPADINP[3] DIPBDIP[0]:DINPBDINP[0] DIPBDIP[1]:DINPBDINP[1] DIPBDIP[2]:DINPBDINP[2] DIPBDIP[3]:DINPBDINP[3] DOADO[0]:DOUTADOUT[0] DOADO[10]:DOUTADOUT[10] DOADO[11]:DOUTADOUT[11] DOADO[12]:DOUTADOUT[12] DOADO[13]:DOUTADOUT[13] DOADO[14]:DOUTADOUT[14] DOADO[15]:DOUTADOUT[15] DOADO[16]:DOUTADOUT[16] DOADO[17]:DOUTADOUT[17] DOADO[18]:DOUTADOUT[18] DOADO[19]:DOUTADOUT[19] DOADO[1]:DOUTADOUT[1] DOADO[20]:DOUTADOUT[20] DOADO[21]:DOUTADOUT[21] DOADO[22]:DOUTADOUT[22] DOADO[23]:DOUTADOUT[23] DOADO[24]:DOUTADOUT[24] DOADO[25]:DOUTADOUT[25] DOADO[26]:DOUTADOUT[26] DOADO[27]:DOUTADOUT[27] DOADO[28]:DOUTADOUT[28] DOADO[29]:DOUTADOUT[29] DOADO[2]:DOUTADOUT[2] DOADO[30]:DOUTADOUT[30] DOADO[31]:DOUTADOUT[31] DOADO[3]:DOUTADOUT[3] DOADO[4]:DOUTADOUT[4] DOADO[5]:DOUTADOUT[5] DOADO[6]:DOUTADOUT[6] DOADO[7]:DOUTADOUT[7] DOADO[8]:DOUTADOUT[8] DOADO[9]:DOUTADOUT[9] DOBDO[0]:DOUTBDOUT[0] DOBDO[10]:DOUTBDOUT[10] DOBDO[11]:DOUTBDOUT[11] DOBDO[12]:DOUTBDOUT[12] DOBDO[13]:DOUTBDOUT[13] DOBDO[14]:DOUTBDOUT[14] DOBDO[15]:DOUTBDOUT[15] DOBDO[16]:DOUTBDOUT[16] DOBDO[17]:DOUTBDOUT[17] DOBDO[18]:DOUTBDOUT[18] DOBDO[19]:DOUTBDOUT[19] DOBDO[1]:DOUTBDOUT[1] DOBDO[20]:DOUTBDOUT[20] DOBDO[21]:DOUTBDOUT[21] DOBDO[22]:DOUTBDOUT[22] DOBDO[23]:DOUTBDOUT[23] DOBDO[24]:DOUTBDOUT[24] DOBDO[25]:DOUTBDOUT[25] DOBDO[26]:DOUTBDOUT[26] DOBDO[27]:DOUTBDOUT[27] DOBDO[28]:DOUTBDOUT[28] DOBDO[29]:DOUTBDOUT[29] DOBDO[2]:DOUTBDOUT[2] DOBDO[30]:DOUTBDOUT[30] DOBDO[31]:DOUTBDOUT[31] DOBDO[3]:DOUTBDOUT[3] DOBDO[4]:DOUTBDOUT[4] DOBDO[5]:DOUTBDOUT[5] DOBDO[6]:DOUTBDOUT[6] DOBDO[7]:DOUTBDOUT[7] DOBDO[8]:DOUTBDOUT[8] DOBDO[9]:DOUTBDOUT[9] DOPADOP[0]:DOUTPADOUTP[0] DOPADOP[1]:DOUTPADOUTP[1] DOPADOP[2]:DOUTPADOUTP[2] DOPADOP[3]:DOUTPADOUTP[3] DOPBDOP[0]:DOUTPBDOUTP[0] DOPBDOP[1]:DOUTPBDOUTP[1] DOPBDOP[2]:DOUTPBDOUTP[2] DOPBDOP[3]:DOUTPBDOUTP[3] ADDRARDADDR[15]:CASDOMUXEN_A ADDRBWRADDR[15]:CASDOMUXEN_B" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[9] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\gc0.count_d1_reg[9] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({s_axis_tdata[34:27],s_axis_tdata[25:18],s_axis_tdata[16:9],s_axis_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({s_axis_tdata[35],s_axis_tdata[26],s_axis_tdata[17],s_axis_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({D[34:27],D[25:18],D[16:9],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({D[35],D[26],D[17],D[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({E,E,E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized1
   (D,
    ENA_I,
    s_aclk,
    ENB_I,
    \SAFETY_CKT_GEN.POR_A_reg ,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    E,
    ENA_dly_D,
    out,
    s_axis_tvalid);
  output [18:0]D;
  output ENA_I;
  input s_aclk;
  input ENB_I;
  input \SAFETY_CKT_GEN.POR_A_reg ;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [18:0]s_axis_tdata;
  input [0:0]E;
  input ENA_dly_D;
  input out;
  input s_axis_tvalid;

  wire [18:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_36 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_37 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_38 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_39 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_44 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_46 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_52 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_53 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_54 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_61 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_62 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire \SAFETY_CKT_GEN.POR_A_reg ;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire s_aclk;
  wire [18:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axis_tvalid),
        .O(ENA_I));
  (* XILINX_LEGACY_PRIM = "RAMB36E1" *) 
  (* XILINX_TRANSFORM_PINMAP = "CASCADEINA:CASDINA[0] CASCADEINB:CASDINB[0] CASCADEOUTA:CASDOUTA[0] CASCADEOUTB:CASDOUTB[0] DIADI[0]:DINADIN[0] DIADI[10]:DINADIN[10] DIADI[11]:DINADIN[11] DIADI[12]:DINADIN[12] DIADI[13]:DINADIN[13] DIADI[14]:DINADIN[14] DIADI[15]:DINADIN[15] DIADI[16]:DINADIN[16] DIADI[17]:DINADIN[17] DIADI[18]:DINADIN[18] DIADI[19]:DINADIN[19] DIADI[1]:DINADIN[1] DIADI[20]:DINADIN[20] DIADI[21]:DINADIN[21] DIADI[22]:DINADIN[22] DIADI[23]:DINADIN[23] DIADI[24]:DINADIN[24] DIADI[25]:DINADIN[25] DIADI[26]:DINADIN[26] DIADI[27]:DINADIN[27] DIADI[28]:DINADIN[28] DIADI[29]:DINADIN[29] DIADI[2]:DINADIN[2] DIADI[30]:DINADIN[30] DIADI[31]:DINADIN[31] DIADI[3]:DINADIN[3] DIADI[4]:DINADIN[4] DIADI[5]:DINADIN[5] DIADI[6]:DINADIN[6] DIADI[7]:DINADIN[7] DIADI[8]:DINADIN[8] DIADI[9]:DINADIN[9] DIBDI[0]:DINBDIN[0] DIBDI[10]:DINBDIN[10] DIBDI[11]:DINBDIN[11] DIBDI[12]:DINBDIN[12] DIBDI[13]:DINBDIN[13] DIBDI[14]:DINBDIN[14] DIBDI[15]:DINBDIN[15] DIBDI[16]:DINBDIN[16] DIBDI[17]:DINBDIN[17] DIBDI[18]:DINBDIN[18] DIBDI[19]:DINBDIN[19] DIBDI[1]:DINBDIN[1] DIBDI[20]:DINBDIN[20] DIBDI[21]:DINBDIN[21] DIBDI[22]:DINBDIN[22] DIBDI[23]:DINBDIN[23] DIBDI[24]:DINBDIN[24] DIBDI[25]:DINBDIN[25] DIBDI[26]:DINBDIN[26] DIBDI[27]:DINBDIN[27] DIBDI[28]:DINBDIN[28] DIBDI[29]:DINBDIN[29] DIBDI[2]:DINBDIN[2] DIBDI[30]:DINBDIN[30] DIBDI[31]:DINBDIN[31] DIBDI[3]:DINBDIN[3] DIBDI[4]:DINBDIN[4] DIBDI[5]:DINBDIN[5] DIBDI[6]:DINBDIN[6] DIBDI[7]:DINBDIN[7] DIBDI[8]:DINBDIN[8] DIBDI[9]:DINBDIN[9] DIPADIP[0]:DINPADINP[0] DIPADIP[1]:DINPADINP[1] DIPADIP[2]:DINPADINP[2] DIPADIP[3]:DINPADINP[3] DIPBDIP[0]:DINPBDINP[0] DIPBDIP[1]:DINPBDINP[1] DIPBDIP[2]:DINPBDINP[2] DIPBDIP[3]:DINPBDINP[3] DOADO[0]:DOUTADOUT[0] DOADO[10]:DOUTADOUT[10] DOADO[11]:DOUTADOUT[11] DOADO[12]:DOUTADOUT[12] DOADO[13]:DOUTADOUT[13] DOADO[14]:DOUTADOUT[14] DOADO[15]:DOUTADOUT[15] DOADO[16]:DOUTADOUT[16] DOADO[17]:DOUTADOUT[17] DOADO[18]:DOUTADOUT[18] DOADO[19]:DOUTADOUT[19] DOADO[1]:DOUTADOUT[1] DOADO[20]:DOUTADOUT[20] DOADO[21]:DOUTADOUT[21] DOADO[22]:DOUTADOUT[22] DOADO[23]:DOUTADOUT[23] DOADO[24]:DOUTADOUT[24] DOADO[25]:DOUTADOUT[25] DOADO[26]:DOUTADOUT[26] DOADO[27]:DOUTADOUT[27] DOADO[28]:DOUTADOUT[28] DOADO[29]:DOUTADOUT[29] DOADO[2]:DOUTADOUT[2] DOADO[30]:DOUTADOUT[30] DOADO[31]:DOUTADOUT[31] DOADO[3]:DOUTADOUT[3] DOADO[4]:DOUTADOUT[4] DOADO[5]:DOUTADOUT[5] DOADO[6]:DOUTADOUT[6] DOADO[7]:DOUTADOUT[7] DOADO[8]:DOUTADOUT[8] DOADO[9]:DOUTADOUT[9] DOBDO[0]:DOUTBDOUT[0] DOBDO[10]:DOUTBDOUT[10] DOBDO[11]:DOUTBDOUT[11] DOBDO[12]:DOUTBDOUT[12] DOBDO[13]:DOUTBDOUT[13] DOBDO[14]:DOUTBDOUT[14] DOBDO[15]:DOUTBDOUT[15] DOBDO[16]:DOUTBDOUT[16] DOBDO[17]:DOUTBDOUT[17] DOBDO[18]:DOUTBDOUT[18] DOBDO[19]:DOUTBDOUT[19] DOBDO[1]:DOUTBDOUT[1] DOBDO[20]:DOUTBDOUT[20] DOBDO[21]:DOUTBDOUT[21] DOBDO[22]:DOUTBDOUT[22] DOBDO[23]:DOUTBDOUT[23] DOBDO[24]:DOUTBDOUT[24] DOBDO[25]:DOUTBDOUT[25] DOBDO[26]:DOUTBDOUT[26] DOBDO[27]:DOUTBDOUT[27] DOBDO[28]:DOUTBDOUT[28] DOBDO[29]:DOUTBDOUT[29] DOBDO[2]:DOUTBDOUT[2] DOBDO[30]:DOUTBDOUT[30] DOBDO[31]:DOUTBDOUT[31] DOBDO[3]:DOUTBDOUT[3] DOBDO[4]:DOUTBDOUT[4] DOBDO[5]:DOUTBDOUT[5] DOBDO[6]:DOUTBDOUT[6] DOBDO[7]:DOUTBDOUT[7] DOBDO[8]:DOUTBDOUT[8] DOBDO[9]:DOUTBDOUT[9] DOPADOP[0]:DOUTPADOUTP[0] DOPADOP[1]:DOUTPADOUTP[1] DOPADOP[2]:DOUTPADOUTP[2] DOPADOP[3]:DOUTPADOUTP[3] DOPBDOP[0]:DOUTPBDOUTP[0] DOPBDOP[1]:DOUTPBDOUTP[1] DOPBDOP[2]:DOUTPBDOUTP[2] DOPBDOP[3]:DOUTPBDOUTP[3] ADDRARDADDR[15]:CASDOMUXEN_A ADDRBWRADDR[15]:CASDOMUXEN_B" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[9] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\gc0.count_d1_reg[9] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,s_axis_tdata[18:15],1'b0,1'b0,1'b0,s_axis_tdata[14:10],1'b0,1'b0,1'b0,s_axis_tdata[9:5],1'b0,1'b0,1'b0,s_axis_tdata[4:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_36 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_37 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_38 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_39 ,D[18:15],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_44 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_45 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_46 ,D[14:10],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_52 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_53 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_54 ,D[9:5],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_60 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_61 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_62 ,D[4:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\SAFETY_CKT_GEN.POR_A_reg ),
        .RSTRAMB(\SAFETY_CKT_GEN.POR_A_reg ),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({E,E,E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized2
   (dout,
    clk,
    ENB_I,
    \SAFETY_CKT_GEN.POR_A_reg ,
    ram_rstram_b,
    \gcc0.gc0.count_d1_reg[9] ,
    Q,
    din,
    E,
    ENA_dly_D,
    wr_en,
    out);
  output [1:0]dout;
  input clk;
  input ENB_I;
  input \SAFETY_CKT_GEN.POR_A_reg ;
  input ram_rstram_b;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]Q;
  input [15:0]din;
  input [0:0]E;
  input ENA_dly_D;
  input wr_en;
  input out;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_22 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_23 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire [9:0]Q;
  wire \SAFETY_CKT_GEN.POR_A_reg ;
  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire ram_rstram_b;
  wire wr_en;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "RAMB18E1" *) 
  (* XILINX_TRANSFORM_PINMAP = "DIADI[0]:DINADIN[0] DIADI[10]:DINADIN[10] DIADI[11]:DINADIN[11] DIADI[12]:DINADIN[12] DIADI[13]:DINADIN[13] DIADI[14]:DINADIN[14] DIADI[15]:DINADIN[15] DIADI[1]:DINADIN[1] DIADI[2]:DINADIN[2] DIADI[3]:DINADIN[3] DIADI[4]:DINADIN[4] DIADI[5]:DINADIN[5] DIADI[6]:DINADIN[6] DIADI[7]:DINADIN[7] DIADI[8]:DINADIN[8] DIADI[9]:DINADIN[9] DIBDI[0]:DINBDIN[0] DIBDI[10]:DINBDIN[10] DIBDI[11]:DINBDIN[11] DIBDI[12]:DINBDIN[12] DIBDI[13]:DINBDIN[13] DIBDI[14]:DINBDIN[14] DIBDI[15]:DINBDIN[15] DIBDI[1]:DINBDIN[1] DIBDI[2]:DINBDIN[2] DIBDI[3]:DINBDIN[3] DIBDI[4]:DINBDIN[4] DIBDI[5]:DINBDIN[5] DIBDI[6]:DINBDIN[6] DIBDI[7]:DINBDIN[7] DIBDI[8]:DINBDIN[8] DIBDI[9]:DINBDIN[9] DIPADIP[0]:DINPADINP[0] DIPADIP[1]:DINPADINP[1] DIPBDIP[0]:DINPBDINP[0] DIPBDIP[1]:DINPBDINP[1] DOADO[0]:DOUTADOUT[0] DOADO[10]:DOUTADOUT[10] DOADO[11]:DOUTADOUT[11] DOADO[12]:DOUTADOUT[12] DOADO[13]:DOUTADOUT[13] DOADO[14]:DOUTADOUT[14] DOADO[15]:DOUTADOUT[15] DOADO[1]:DOUTADOUT[1] DOADO[2]:DOUTADOUT[2] DOADO[3]:DOUTADOUT[3] DOADO[4]:DOUTADOUT[4] DOADO[5]:DOUTADOUT[5] DOADO[6]:DOUTADOUT[6] DOADO[7]:DOUTADOUT[7] DOADO[8]:DOUTADOUT[8] DOADO[9]:DOUTADOUT[9] DOBDO[0]:DOUTBDOUT[0] DOBDO[10]:DOUTBDOUT[10] DOBDO[11]:DOUTBDOUT[11] DOBDO[12]:DOUTBDOUT[12] DOBDO[13]:DOUTBDOUT[13] DOBDO[14]:DOUTBDOUT[14] DOBDO[15]:DOUTBDOUT[15] DOBDO[1]:DOUTBDOUT[1] DOBDO[2]:DOUTBDOUT[2] DOBDO[3]:DOUTBDOUT[3] DOBDO[4]:DOUTBDOUT[4] DOBDO[5]:DOUTBDOUT[5] DOBDO[6]:DOUTBDOUT[6] DOBDO[7]:DOUTBDOUT[7] DOBDO[8]:DOUTBDOUT[8] DOBDO[9]:DOUTBDOUT[9] DOPADOP[0]:DOUTPADOUTP[0] DOPADOP[1]:DOUTPADOUTP[1] DOPBDOP[0]:DOUTPBDOUTP[0] DOPBDOP[1]:DOUTPBDOUTP[1]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E2 #(
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[9] ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DINADIN(din),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED [15:0]),
        .DOUTBDOUT({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_21 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_22 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_23 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_29 ,dout}),
        .DOUTPADOUTP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 }),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\SAFETY_CKT_GEN.POR_A_reg ),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(ENA_dly_D),
        .I1(wr_en),
        .I2(out),
        .O(ENA_I));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    E,
    out,
    s_axis_tvalid);
  output [72:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]E;
  input out;
  input s_axis_tvalid;

  wire [72:0]D;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire s_aclk;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top__parameterized0
   (dout,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    ENB_dly_D,
    clk,
    ENB_I,
    ram_rstram_b,
    \gcc0.gc0.count_d1_reg[9] ,
    Q,
    din,
    E,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    wr_en,
    out);
  output [1:0]dout;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output ENB_dly_D;
  input clk;
  input ENB_I;
  input ram_rstram_b;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]Q;
  input [15:0]din;
  input [0:0]E;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input wr_en;
  input out;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_dly_D;
  wire [9:0]Q;
  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_rstram_b;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr__parameterized0 \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    E,
    out,
    s_axis_tvalid);
  output [72:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]E;
  input out;
  input s_axis_tvalid;

  wire [72:0]D;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire s_aclk;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.D(D),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1__parameterized1
   (dout,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    ENB_dly_D,
    clk,
    ENB_I,
    ram_rstram_b,
    \gcc0.gc0.count_d1_reg[9] ,
    Q,
    din,
    E,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    wr_en,
    out);
  output [1:0]dout;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output ENB_dly_D;
  input clk;
  input ENB_I;
  input ram_rstram_b;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]Q;
  input [15:0]din;
  input [0:0]E;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input wr_en;
  input out;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_dly_D;
  wire [9:0]Q;
  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_rstram_b;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth__parameterized0 inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    E,
    out,
    s_axis_tvalid);
  output [72:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]E;
  input out;
  input s_axis_tvalid;

  wire [72:0]D;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire s_aclk;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.D(D),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth__parameterized0
   (dout,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    ENB_dly_D,
    clk,
    ENB_I,
    ram_rstram_b,
    \gcc0.gc0.count_d1_reg[9] ,
    Q,
    din,
    E,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    wr_en,
    out);
  output [1:0]dout;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output ENB_dly_D;
  input clk;
  input ENB_I;
  input ram_rstram_b;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]Q;
  input [15:0]din;
  input [0:0]E;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input wr_en;
  input out;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_dly_D;
  wire [9:0]Q;
  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_rstram_b;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top__parameterized0 \gnbram.gnativebmg.native_blk_mem_gen 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare
   (ram_full_i_reg,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[5] ,
    \gc0.count_d1_reg[7] ,
    \gc0.count_d1_reg[9] ,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    ram_empty_fb_i_reg,
    comp1,
    wr_en,
    out);
  output ram_full_i_reg;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[5] ;
  input \gc0.count_d1_reg[7] ;
  input \gc0.count_d1_reg[9] ;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input ram_empty_fb_i_reg;
  input comp1;
  input wr_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire comp1;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[5] ;
  wire \gc0.count_d1_reg[7] ;
  wire \gc0.count_d1_reg[9] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire ram_full_i_reg;
  wire wr_en;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp0,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc0.count_d1_reg[9] ,\gc0.count_d1_reg[7] ,\gc0.count_d1_reg[5] ,\gc0.count_d1_reg[2] ,\gc0.count_d1_reg[0] }));
  LUT6 #(
    .INIT(64'h31313131F0000000)) 
    ram_full_fb_i_i_1
       (.I0(comp0),
        .I1(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I2(ram_empty_fb_i_reg),
        .I3(comp1),
        .I4(wr_en),
        .I5(out),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_0
   (comp1,
    \gc0.count_d1_reg[1] ,
    \gc0.count_d1_reg[3] ,
    \gc0.count_d1_reg[5] ,
    \gc0.count_d1_reg[7] ,
    \gc0.count_d1_reg[9] );
  output comp1;
  input \gc0.count_d1_reg[1] ;
  input \gc0.count_d1_reg[3] ;
  input \gc0.count_d1_reg[5] ;
  input \gc0.count_d1_reg[7] ;
  input \gc0.count_d1_reg[9] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp1;
  wire \gc0.count_d1_reg[1] ;
  wire \gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[5] ;
  wire \gc0.count_d1_reg[7] ;
  wire \gc0.count_d1_reg[9] ;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc0.count_d1_reg[9] ,\gc0.count_d1_reg[7] ,\gc0.count_d1_reg[5] ,\gc0.count_d1_reg[3] ,\gc0.count_d1_reg[1] }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_1
   (comp0,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[5] ,
    \gc0.count_d1_reg[7] ,
    \gc0.count_d1_reg[9] );
  output comp0;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[5] ;
  input \gc0.count_d1_reg[7] ;
  input \gc0.count_d1_reg[9] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[5] ;
  wire \gc0.count_d1_reg[7] ;
  wire \gc0.count_d1_reg[9] ;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp0,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc0.count_d1_reg[9] ,\gc0.count_d1_reg[7] ,\gc0.count_d1_reg[5] ,\gc0.count_d1_reg[2] ,\gc0.count_d1_reg[0] }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_10
   (ram_empty_i_reg,
    v1_reg,
    E,
    comp0,
    ram_full_fb_i_reg,
    s_axis_tvalid,
    out);
  output ram_empty_i_reg;
  input [4:0]v1_reg;
  input [0:0]E;
  input comp0;
  input ram_full_fb_i_reg;
  input s_axis_tvalid;
  input out;

  wire [0:0]E;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_reg;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],v1_reg}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_empty_fb_i_i_1
       (.I0(E),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_full_fb_i_reg),
        .I4(s_axis_tvalid),
        .I5(out),
        .O(ram_empty_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_2
   (ram_empty_i_reg,
    \gc0.count_reg[0] ,
    \gc0.count_reg[2] ,
    \gc0.count_reg[4] ,
    \gc0.count_reg[6] ,
    \gc0.count_reg[9] ,
    ram_full_fb_i_reg,
    rd_en,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    out,
    comp0);
  output ram_empty_i_reg;
  input \gc0.count_reg[0] ;
  input \gc0.count_reg[2] ;
  input \gc0.count_reg[4] ;
  input \gc0.count_reg[6] ;
  input \gc0.count_reg[9] ;
  input ram_full_fb_i_reg;
  input rd_en;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input out;
  input comp0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire comp1;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[2] ;
  wire \gc0.count_reg[4] ;
  wire \gc0.count_reg[6] ;
  wire \gc0.count_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc0.count_reg[9] ,\gc0.count_reg[6] ,\gc0.count_reg[4] ,\gc0.count_reg[2] ,\gc0.count_reg[0] }));
  LUT6 #(
    .INIT(64'hFFAAFF80FFFFFF80)) 
    ram_empty_fb_i_i_1
       (.I0(ram_full_fb_i_reg),
        .I1(rd_en),
        .I2(comp1),
        .I3(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .I4(out),
        .I5(comp0),
        .O(ram_empty_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_5
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire [4:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp0,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],v1_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_6
   (ram_full_comb__5,
    v1_reg_0,
    s_axis_tvalid,
    ram_empty_fb_i_reg,
    comp0,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    out);
  output ram_full_comb__5;
  input [4:0]v1_reg_0;
  input s_axis_tvalid;
  input [0:0]ram_empty_fb_i_reg;
  input comp0;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire comp1;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire [0:0]ram_empty_fb_i_reg;
  wire ram_full_comb__5;
  wire s_axis_tvalid;
  wire [4:0]v1_reg_0;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],v1_reg_0}));
  LUT6 #(
    .INIT(64'h00000FFF08080808)) 
    ram_full_fb_i_i_1
       (.I0(s_axis_tvalid),
        .I1(comp1),
        .I2(ram_empty_fb_i_reg),
        .I3(comp0),
        .I4(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I5(out),
        .O(ram_full_comb__5));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_9
   (comp0,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[4] ,
    \gc0.count_d1_reg[6] ,
    \gc0.count_d1_reg[8] );
  output comp0;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[4] ;
  input \gc0.count_d1_reg[6] ;
  input \gc0.count_d1_reg[8] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[4] ;
  wire \gc0.count_d1_reg[6] ;
  wire \gc0.count_d1_reg[8] ;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp0,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc0.count_d1_reg[8] ,\gc0.count_d1_reg[6] ,\gc0.count_d1_reg[4] ,\gc0.count_d1_reg[2] ,\gc0.count_d1_reg[0] }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dc_ss_fwft
   (Q,
    out,
    m_axis_tready,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    ram_full_fb_i_reg,
    s_aclk);
  output [10:0]Q;
  input out;
  input m_axis_tready;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input [0:0]ram_full_fb_i_reg;
  input s_aclk;

  wire [10:0]Q;
  wire m_axis_tready;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_updn_cntr dc
       (.Q(Q),
        .m_axis_tready(m_axis_tready),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo
   (axis_data_count,
    Q,
    m_axis_tvalid,
    s_aclk,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tvalid,
    s_aresetn);
  output [10:0]axis_data_count;
  output [72:0]Q;
  output m_axis_tvalid;
  input s_aclk;
  input m_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  input s_aresetn;

  wire [72:0]Q;
  wire [10:0]axis_data_count;
  wire dout_i;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENA_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire \gr1.gdcf.dc/cntr_en ;
  wire [4:0]\gwss.wsts/c0/v1_reg ;
  wire [4:0]\gwss.wsts/c1/v1_reg ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [9:0]p_0_out;
  wire [9:0]p_12_out;
  wire [9:0]p_13_out;
  wire p_19_out;
  wire p_3_out;
  wire p_8_out;
  wire rst_full_gen_i;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_aresetn;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [1:0]sckt_wr_rst_cc;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (p_0_out),
        .E(dout_i),
        .ENA_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENA_dly_D ),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ),
        .Q(axis_data_count),
        .\gc0.count_reg[9] (p_8_out),
        .\gcc0.gc0.count_d1_reg[9] (p_12_out),
        .\gcc0.gc0.count_reg[9] (p_13_out),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (rstblk_n_1),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (sckt_wr_rst_cc),
        .out(p_3_out),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_full_fb_i_reg_0(\gr1.gdcf.dc/cntr_en ),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (p_12_out),
        .E(p_19_out),
        .Q(p_13_out),
        .\count_reg[10] (\gr1.gdcf.dc/cntr_en ),
        .\gpregsm1.user_valid_reg (p_3_out),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .m_axis_tready(m_axis_tready),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (rstblk_n_1),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_empty_fb_i_reg(p_8_out),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory \gntv_or_sync_fifo.mem 
       (.E(p_19_out),
        .ENA_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENA_dly_D ),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ),
        .Q(Q),
        .\gc0.count_d1_reg[9] (p_0_out),
        .\gcc0.gc0.count_d1_reg[9] (p_12_out),
        .\gpregsm1.curr_fwft_state_reg[0] (dout_i),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo__xdcDup__1 rstblk
       (.Q(sckt_wr_rst_cc),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rstblk_n_1),
        .out(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo__parameterized0
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    rd_en,
    wr_en);
  output [1:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [15:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire empty;
  wire full;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ;
  wire \gntv_or_sync_fifo.gl0.rd_n_13 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_14 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_15 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_16 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_17 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_18 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_19 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_2 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_20 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_21 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_22 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire [9:0]p_0_out;
  wire [9:0]p_12_out;
  wire [9:0]p_13_out;
  wire p_19_out;
  wire p_2_out;
  wire rd_en;
  wire rst;
  wire rst_full_gen_i;
  wire rstblk_n_1;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic__parameterized0 \gntv_or_sync_fifo.gl0.rd 
       (.Q(p_0_out),
        .clk(clk),
        .empty(empty),
        .\gcc0.gc0.count_d1_reg[9] (p_12_out),
        .\gcc0.gc0.count_reg[9] (p_13_out),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (rstblk_n_1),
        .out(p_2_out),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gl0.rd_n_13 ),
        .ram_full_i_reg_1(\gntv_or_sync_fifo.gl0.rd_n_14 ),
        .ram_full_i_reg_2(\gntv_or_sync_fifo.gl0.rd_n_15 ),
        .ram_full_i_reg_3(\gntv_or_sync_fifo.gl0.rd_n_16 ),
        .ram_full_i_reg_4(\gntv_or_sync_fifo.gl0.rd_n_17 ),
        .ram_full_i_reg_5(\gntv_or_sync_fifo.gl0.rd_n_18 ),
        .ram_full_i_reg_6(\gntv_or_sync_fifo.gl0.rd_n_19 ),
        .ram_full_i_reg_7(\gntv_or_sync_fifo.gl0.rd_n_20 ),
        .ram_full_i_reg_8(\gntv_or_sync_fifo.gl0.rd_n_21 ),
        .ram_full_i_reg_9(\gntv_or_sync_fifo.gl0.rd_n_22 ),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic__parameterized0 \gntv_or_sync_fifo.gl0.wr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (p_12_out),
        .E(p_19_out),
        .Q(p_13_out),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_16 ),
        .\gc0.count_d1_reg[1] (\gntv_or_sync_fifo.gl0.rd_n_21 ),
        .\gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.rd_n_15 ),
        .\gc0.count_d1_reg[3] (\gntv_or_sync_fifo.gl0.rd_n_20 ),
        .\gc0.count_d1_reg[5] (\gntv_or_sync_fifo.gl0.rd_n_14 ),
        .\gc0.count_d1_reg[5]_0 (\gntv_or_sync_fifo.gl0.rd_n_19 ),
        .\gc0.count_d1_reg[7] (\gntv_or_sync_fifo.gl0.rd_n_13 ),
        .\gc0.count_d1_reg[7]_0 (\gntv_or_sync_fifo.gl0.rd_n_18 ),
        .\gc0.count_d1_reg[9] (\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .\gc0.count_d1_reg[9]_0 (\gntv_or_sync_fifo.gl0.rd_n_17 ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (rstblk_n_1),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_22 ),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.E(p_19_out),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .POR_A(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A ),
        .Q(p_0_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gcc0.gc0.count_d1_reg[9] (p_12_out),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (rstblk_n_1),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_rstram_b(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo rstblk
       (.ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .POR_A(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A ),
        .clk(clk),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rstblk_n_1),
        .out(rst_full_gen_i),
        .ram_empty_fb_i_reg(p_2_out),
        .ram_rstram_b(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ),
        .rd_en(rd_en),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top
   (axis_data_count,
    Q,
    m_axis_tvalid,
    s_aclk,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tvalid,
    s_aresetn);
  output [10:0]axis_data_count;
  output [72:0]Q;
  output m_axis_tvalid;
  input s_aclk;
  input m_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  input s_aresetn;

  wire [72:0]Q;
  wire [10:0]axis_data_count;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo \grf.rf 
       (.Q(Q),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top__parameterized0
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    rd_en,
    wr_en);
  output [1:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [15:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "8" *) (* C_AXIS_TSTRB_WIDTH = "8" *) 
(* C_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "73" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "1" *) (* C_HAS_AXIS_TLAST = "1" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "1" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "2" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "2" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "1" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tstrb;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tstrb;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire [10:0]axis_data_count;
  wire [63:0]m_axis_tdata;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth inst_fifo_gen
       (.Q({m_axis_tdata,m_axis_tkeep,m_axis_tlast}),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "16" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "16" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "1kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized1
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [15:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [15:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire clk;
  wire [15:0]din;
  wire [1:0]\^dout ;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1:0] = \^dout [1:0];
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth__parameterized0 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(\^dout ),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth
   (axis_data_count,
    Q,
    m_axis_tvalid,
    s_aclk,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tvalid,
    s_aresetn);
  output [10:0]axis_data_count;
  output [72:0]Q;
  output m_axis_tvalid;
  input s_aclk;
  input m_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  input s_aresetn;

  wire [72:0]Q;
  wire [10:0]axis_data_count;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.Q(Q),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_1_synth" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth__parameterized0
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    rd_en,
    wr_en);
  output [1:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [15:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top__parameterized0 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory
   (ENA_dly_D,
    Q,
    s_aclk,
    ENB_I,
    \gcc0.gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[9] ,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    E,
    out,
    s_axis_tvalid,
    \gpregsm1.curr_fwft_state_reg[0] );
  output ENA_dly_D;
  output [72:0]Q;
  input s_aclk;
  input ENB_I;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]E;
  input out;
  input s_axis_tvalid;
  input [0:0]\gpregsm1.curr_fwft_state_reg[0] ;

  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire [72:0]Q;
  wire [72:0]doutb;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[0] ;
  wire out;
  wire s_aclk;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[64]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[65]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[66]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[67]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[68]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[69]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[70]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[71]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[72]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory__parameterized0
   (dout,
    POR_A,
    ENB_dly_D,
    clk,
    ENB_I,
    ram_rstram_b,
    \gcc0.gc0.count_d1_reg[9] ,
    Q,
    din,
    E,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    wr_en,
    out);
  output [1:0]dout;
  output POR_A;
  output ENB_dly_D;
  input clk;
  input ENB_I;
  input ram_rstram_b;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]Q;
  input [15:0]din;
  input [0:0]E;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input wr_en;
  input out;

  wire [0:0]E;
  wire ENB_I;
  wire ENB_dly_D;
  wire POR_A;
  wire [9:0]Q;
  wire clk;
  wire [15:0]din;
  wire [1:0]dout;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_rstram_b;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1__parameterized1 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (POR_A),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr
   (ram_full_i_reg,
    Q,
    ram_full_i_reg_0,
    ram_full_i_reg_1,
    ram_full_i_reg_2,
    ram_full_i_reg_3,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    ram_empty_i_reg_1,
    ram_empty_i_reg_2,
    ram_empty_i_reg_3,
    ram_full_i_reg_4,
    ram_full_i_reg_5,
    ram_full_i_reg_6,
    ram_full_i_reg_7,
    ram_full_i_reg_8,
    ram_empty_i_reg_4,
    ram_empty_i_reg_5,
    ram_empty_i_reg_6,
    ram_empty_i_reg_7,
    ram_empty_i_reg_8,
    \gcc0.gc0.count_d1_reg[9] ,
    \gcc0.gc0.count_reg[9] ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    E,
    clk);
  output ram_full_i_reg;
  output [9:0]Q;
  output ram_full_i_reg_0;
  output ram_full_i_reg_1;
  output ram_full_i_reg_2;
  output ram_full_i_reg_3;
  output ram_empty_i_reg;
  output ram_empty_i_reg_0;
  output ram_empty_i_reg_1;
  output ram_empty_i_reg_2;
  output ram_empty_i_reg_3;
  output ram_full_i_reg_4;
  output ram_full_i_reg_5;
  output ram_full_i_reg_6;
  output ram_full_i_reg_7;
  output ram_full_i_reg_8;
  output ram_empty_i_reg_4;
  output ram_empty_i_reg_5;
  output ram_empty_i_reg_6;
  output ram_empty_i_reg_7;
  output ram_empty_i_reg_8;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gcc0.gc0.count_reg[9] ;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gc0.count[9]_i_2_n_0 ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [9:0]plusOp;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire ram_empty_i_reg_2;
  wire ram_empty_i_reg_3;
  wire ram_empty_i_reg_4;
  wire ram_empty_i_reg_5;
  wire ram_empty_i_reg_6;
  wire ram_empty_i_reg_7;
  wire ram_empty_i_reg_8;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire ram_full_i_reg_2;
  wire ram_full_i_reg_3;
  wire ram_full_i_reg_4;
  wire ram_full_i_reg_5;
  wire ram_full_i_reg_6;
  wire ram_full_i_reg_7;
  wire ram_full_i_reg_8;
  wire [9:0]rd_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[4]),
        .I1(rd_pntr_plus1[2]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[1]),
        .I4(rd_pntr_plus1[3]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[8]),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[6]),
        .I4(rd_pntr_plus1[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[9]_i_2 
       (.I0(rd_pntr_plus1[4]),
        .I1(rd_pntr_plus1[2]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[1]),
        .I4(rd_pntr_plus1[3]),
        .I5(rd_pntr_plus1[5]),
        .O(\gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp[9]),
        .Q(rd_pntr_plus1[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(ram_full_i_reg_3));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(ram_empty_i_reg_3));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[1]),
        .I1(\gcc0.gc0.count_reg[9] [1]),
        .I2(Q[0]),
        .I3(\gcc0.gc0.count_reg[9] [0]),
        .O(ram_full_i_reg_8));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(ram_empty_i_reg_4));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(ram_full_i_reg_2));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(ram_empty_i_reg_2));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[3]),
        .I1(\gcc0.gc0.count_reg[9] [3]),
        .I2(Q[2]),
        .I3(\gcc0.gc0.count_reg[9] [2]),
        .O(ram_full_i_reg_7));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(ram_empty_i_reg_5));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[5]),
        .I1(\gcc0.gc0.count_d1_reg[9] [5]),
        .I2(Q[4]),
        .I3(\gcc0.gc0.count_d1_reg[9] [4]),
        .O(ram_full_i_reg_1));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gcc0.gc0.count_d1_reg[9] [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gcc0.gc0.count_d1_reg[9] [5]),
        .O(ram_empty_i_reg_1));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[5]),
        .I1(\gcc0.gc0.count_reg[9] [5]),
        .I2(Q[4]),
        .I3(\gcc0.gc0.count_reg[9] [4]),
        .O(ram_full_i_reg_6));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[5]),
        .I1(\gcc0.gc0.count_d1_reg[9] [5]),
        .I2(Q[4]),
        .I3(\gcc0.gc0.count_d1_reg[9] [4]),
        .O(ram_empty_i_reg_6));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count_d1_reg[9] [7]),
        .I2(Q[6]),
        .I3(\gcc0.gc0.count_d1_reg[9] [6]),
        .O(ram_full_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gcc0.gc0.count_d1_reg[9] [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gcc0.gc0.count_d1_reg[9] [7]),
        .O(ram_empty_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count_reg[9] [7]),
        .I2(Q[6]),
        .I3(\gcc0.gc0.count_reg[9] [6]),
        .O(ram_full_i_reg_5));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count_d1_reg[9] [7]),
        .I2(Q[6]),
        .I3(\gcc0.gc0.count_d1_reg[9] [6]),
        .O(ram_empty_i_reg_7));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[9]),
        .I1(\gcc0.gc0.count_d1_reg[9] [9]),
        .I2(Q[8]),
        .I3(\gcc0.gc0.count_d1_reg[9] [8]),
        .O(ram_full_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[9]),
        .I1(\gcc0.gc0.count_d1_reg[9] [9]),
        .I2(rd_pntr_plus1[8]),
        .I3(\gcc0.gc0.count_d1_reg[9] [8]),
        .O(ram_empty_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[9]),
        .I1(\gcc0.gc0.count_reg[9] [9]),
        .I2(Q[8]),
        .I3(\gcc0.gc0.count_reg[9] [8]),
        .O(ram_full_i_reg_4));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(Q[9]),
        .I1(\gcc0.gc0.count_d1_reg[9] [9]),
        .I2(Q[8]),
        .I3(\gcc0.gc0.count_d1_reg[9] [8]),
        .O(ram_empty_i_reg_8));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_8
   (v1_reg,
    Q,
    v1_reg_1,
    v1_reg_0,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    ram_empty_i_reg_1,
    ram_empty_i_reg_2,
    ram_empty_i_reg_3,
    \gcc0.gc0.count_d1_reg[9] ,
    \gcc0.gc0.count_reg[9] ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    E,
    s_aclk);
  output [4:0]v1_reg;
  output [9:0]Q;
  output [4:0]v1_reg_1;
  output [4:0]v1_reg_0;
  output ram_empty_i_reg;
  output ram_empty_i_reg_0;
  output ram_empty_i_reg_1;
  output ram_empty_i_reg_2;
  output ram_empty_i_reg_3;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gcc0.gc0.count_reg[9] ;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input [0:0]E;
  input s_aclk;

  wire [0:0]E;
  wire [9:0]Q;
  wire \gc0.count[9]_i_2_n_0 ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [9:0]plusOp;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire ram_empty_i_reg_2;
  wire ram_empty_i_reg_3;
  wire [9:0]rd_pntr_plus1;
  wire s_aclk;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(rd_pntr_plus1[7]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[6]),
        .I3(rd_pntr_plus1[8]),
        .I4(rd_pntr_plus1[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[9]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[9]),
        .Q(rd_pntr_plus1[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_reg[9] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_reg[9] [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(ram_empty_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_reg[9] [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(ram_empty_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_d1_reg[9] [4]),
        .I2(Q[5]),
        .I3(\gcc0.gc0.count_d1_reg[9] [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gcc0.gc0.count_d1_reg[9] [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gcc0.gc0.count_d1_reg[9] [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_reg[9] [4]),
        .I2(Q[5]),
        .I3(\gcc0.gc0.count_reg[9] [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_d1_reg[9] [4]),
        .I2(Q[5]),
        .I3(\gcc0.gc0.count_d1_reg[9] [5]),
        .O(ram_empty_i_reg_1));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_d1_reg[9] [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gcc0.gc0.count_d1_reg[9] [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gcc0.gc0.count_d1_reg[9] [7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_reg[9] [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_d1_reg[9] [7]),
        .O(ram_empty_i_reg_2));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[9] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_d1_reg[9] [9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[8]),
        .I1(\gcc0.gc0.count_d1_reg[9] [8]),
        .I2(rd_pntr_plus1[9]),
        .I3(\gcc0.gc0.count_d1_reg[9] [9]),
        .O(v1_reg_1[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_reg[9] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_reg[9] [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[9] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_d1_reg[9] [9]),
        .O(ram_empty_i_reg_3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft
   (out,
    ENB_I,
    E,
    \gc0.count_reg[9] ,
    m_axis_tvalid,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    ENA_dly_D,
    m_axis_tready,
    ram_empty_fb_i_reg,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] );
  output out;
  output ENB_I;
  output [0:0]E;
  output [0:0]\gc0.count_reg[9] ;
  output m_axis_tvalid;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input ENA_dly_D;
  input m_axis_tready;
  input ram_empty_fb_i_reg;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;

  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0__1;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i_reg0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0__1;
  wire [0:0]\gc0.count_reg[9] ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [1:0]next_fwft_state;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire ram_empty_fb_i_reg;
  wire s_aclk;
  (* DONT_TOUCH *) wire user_valid;

  assign out = user_valid;
  LUT6 #(
    .INIT(64'hAAAAAAAABBBBABBB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(ENA_dly_D),
        .I1(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .I4(m_axis_tready),
        .I5(ram_empty_fb_i_reg),
        .O(ENB_I));
  LUT5 #(
    .INIT(32'hFFCB8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_fb_i_reg),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0__1));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0__1),
        .Q(aempty_fwft_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0__1),
        .Q(aempty_fwft_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_i),
        .O(empty_fwft_i0__1));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_o_i),
        .O(empty_fwft_fb_o_i_reg0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i_reg0),
        .Q(empty_fwft_fb_o_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'h4555)) 
    \gc0.count_d1[9]_i_1 
       (.I0(ram_empty_fb_i_reg),
        .I1(m_axis_tready),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(\gc0.count_reg[9] ));
  LUT5 #(
    .INIT(32'h000000B0)) 
    \goreg_bm.dout_i[72]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [1]),
        .I4(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [0]),
        .O(E));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axis_tready),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axis_tready),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(user_valid),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic
   (out,
    Q,
    ENB_I,
    E,
    \gc0.count_reg[9] ,
    v1_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    v1_reg_0,
    m_axis_tvalid,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    m_axis_tready,
    ENA_dly_D,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ,
    ram_full_fb_i_reg,
    s_axis_tvalid,
    \gcc0.gc0.count_d1_reg[9] ,
    \gcc0.gc0.count_reg[9] ,
    ram_full_fb_i_reg_0);
  output out;
  output [10:0]Q;
  output ENB_I;
  output [0:0]E;
  output [0:0]\gc0.count_reg[9] ;
  output [4:0]v1_reg;
  output [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output [4:0]v1_reg_0;
  output m_axis_tvalid;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input m_axis_tready;
  input ENA_dly_D;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  input ram_full_fb_i_reg;
  input s_axis_tvalid;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gcc0.gc0.count_reg[9] ;
  input [0:0]ram_full_fb_i_reg_0;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire [10:0]Q;
  wire [4:0]\c2/v1_reg ;
  wire [0:0]\gc0.count_reg[9] ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire out;
  wire p_2_out;
  wire ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire rpntr_n_25;
  wire rpntr_n_26;
  wire rpntr_n_27;
  wire rpntr_n_28;
  wire rpntr_n_29;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dc_ss_fwft \gr1.gdcf.dc 
       (.Q(Q),
        .m_axis_tready(m_axis_tready),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg_0),
        .s_aclk(s_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft \gr1.gr1_int.rfwft 
       (.E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .\gc0.count_reg[9] (\gc0.count_reg[9] ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ),
        .out(out),
        .ram_empty_fb_i_reg(p_2_out),
        .s_aclk(s_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_7 \grss.rsts 
       (.E(\gc0.count_reg[9] ),
        .\gc0.count_d1_reg[0] (rpntr_n_25),
        .\gc0.count_d1_reg[2] (rpntr_n_26),
        .\gc0.count_d1_reg[4] (rpntr_n_27),
        .\gc0.count_d1_reg[6] (rpntr_n_28),
        .\gc0.count_d1_reg[8] (rpntr_n_29),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(p_2_out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\c2/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_8 rpntr
       (.E(\gc0.count_reg[9] ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_reg[9] (\gcc0.gc0.count_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .ram_empty_i_reg(rpntr_n_25),
        .ram_empty_i_reg_0(rpntr_n_26),
        .ram_empty_i_reg_1(rpntr_n_27),
        .ram_empty_i_reg_2(rpntr_n_28),
        .ram_empty_i_reg_3(rpntr_n_29),
        .s_aclk(s_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c2/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic__parameterized0
   (out,
    empty,
    ram_full_i_reg,
    Q,
    ram_full_i_reg_0,
    ram_full_i_reg_1,
    ram_full_i_reg_2,
    ram_full_i_reg_3,
    ram_full_i_reg_4,
    ram_full_i_reg_5,
    ram_full_i_reg_6,
    ram_full_i_reg_7,
    ram_full_i_reg_8,
    ram_full_i_reg_9,
    clk,
    \gcc0.gc0.count_d1_reg[9] ,
    \gcc0.gc0.count_reg[9] ,
    ram_full_fb_i_reg,
    rd_en,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] );
  output out;
  output empty;
  output ram_full_i_reg;
  output [9:0]Q;
  output ram_full_i_reg_0;
  output ram_full_i_reg_1;
  output ram_full_i_reg_2;
  output ram_full_i_reg_3;
  output ram_full_i_reg_4;
  output ram_full_i_reg_5;
  output ram_full_i_reg_6;
  output ram_full_i_reg_7;
  output ram_full_i_reg_8;
  output ram_full_i_reg_9;
  input clk;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gcc0.gc0.count_reg[9] ;
  input ram_full_fb_i_reg;
  input rd_en;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;

  wire [9:0]Q;
  wire clk;
  wire empty;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire p_8_out;
  wire ram_full_fb_i_reg;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire ram_full_i_reg_2;
  wire ram_full_i_reg_3;
  wire ram_full_i_reg_4;
  wire ram_full_i_reg_5;
  wire ram_full_i_reg_6;
  wire ram_full_i_reg_7;
  wire ram_full_i_reg_8;
  wire ram_full_i_reg_9;
  wire rd_en;
  wire rpntr_n_15;
  wire rpntr_n_16;
  wire rpntr_n_17;
  wire rpntr_n_18;
  wire rpntr_n_19;
  wire rpntr_n_25;
  wire rpntr_n_26;
  wire rpntr_n_27;
  wire rpntr_n_28;
  wire rpntr_n_29;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss \grss.rsts 
       (.E(p_8_out),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[0] (rpntr_n_25),
        .\gc0.count_d1_reg[2] (rpntr_n_26),
        .\gc0.count_d1_reg[5] (rpntr_n_27),
        .\gc0.count_d1_reg[7] (rpntr_n_28),
        .\gc0.count_d1_reg[9] (rpntr_n_29),
        .\gc0.count_reg[0] (rpntr_n_19),
        .\gc0.count_reg[2] (rpntr_n_18),
        .\gc0.count_reg[4] (rpntr_n_17),
        .\gc0.count_reg[6] (rpntr_n_16),
        .\gc0.count_reg[9] (rpntr_n_15),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_i_reg(ram_full_i_reg_9),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr rpntr
       (.E(p_8_out),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_reg[9] (\gcc0.gc0.count_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .ram_empty_i_reg(rpntr_n_15),
        .ram_empty_i_reg_0(rpntr_n_16),
        .ram_empty_i_reg_1(rpntr_n_17),
        .ram_empty_i_reg_2(rpntr_n_18),
        .ram_empty_i_reg_3(rpntr_n_19),
        .ram_empty_i_reg_4(rpntr_n_25),
        .ram_empty_i_reg_5(rpntr_n_26),
        .ram_empty_i_reg_6(rpntr_n_27),
        .ram_empty_i_reg_7(rpntr_n_28),
        .ram_empty_i_reg_8(rpntr_n_29),
        .ram_full_i_reg(ram_full_i_reg),
        .ram_full_i_reg_0(ram_full_i_reg_0),
        .ram_full_i_reg_1(ram_full_i_reg_1),
        .ram_full_i_reg_2(ram_full_i_reg_2),
        .ram_full_i_reg_3(ram_full_i_reg_3),
        .ram_full_i_reg_4(ram_full_i_reg_4),
        .ram_full_i_reg_5(ram_full_i_reg_5),
        .ram_full_i_reg_6(ram_full_i_reg_6),
        .ram_full_i_reg_7(ram_full_i_reg_7),
        .ram_full_i_reg_8(ram_full_i_reg_8));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss
   (out,
    empty,
    E,
    ram_full_i_reg,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[5] ,
    \gc0.count_d1_reg[7] ,
    \gc0.count_d1_reg[9] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[2] ,
    \gc0.count_reg[4] ,
    \gc0.count_reg[6] ,
    \gc0.count_reg[9] ,
    clk,
    ram_full_fb_i_reg,
    rd_en,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] );
  output out;
  output empty;
  output [0:0]E;
  output ram_full_i_reg;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[5] ;
  input \gc0.count_d1_reg[7] ;
  input \gc0.count_d1_reg[9] ;
  input \gc0.count_reg[0] ;
  input \gc0.count_reg[2] ;
  input \gc0.count_reg[4] ;
  input \gc0.count_reg[6] ;
  input \gc0.count_reg[9] ;
  input clk;
  input ram_full_fb_i_reg;
  input rd_en;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;

  wire [0:0]E;
  wire c2_n_0;
  wire clk;
  wire comp0;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[5] ;
  wire \gc0.count_d1_reg[7] ;
  wire \gc0.count_d1_reg[9] ;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[2] ;
  wire \gc0.count_reg[4] ;
  wire \gc0.count_reg[6] ;
  wire \gc0.count_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_full_fb_i_reg;
  wire ram_full_i_reg;
  wire rd_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_1 c1
       (.comp0(comp0),
        .\gc0.count_d1_reg[0] (\gc0.count_d1_reg[0] ),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[5] (\gc0.count_d1_reg[5] ),
        .\gc0.count_d1_reg[7] (\gc0.count_d1_reg[7] ),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_2 c2
       (.comp0(comp0),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[2] (\gc0.count_reg[2] ),
        .\gc0.count_reg[4] (\gc0.count_reg[4] ),
        .\gc0.count_reg[6] (\gc0.count_reg[6] ),
        .\gc0.count_reg[9] (\gc0.count_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(c2_n_0),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_en(rd_en));
  LUT2 #(
    .INIT(4'h2)) 
    \gc0.count_d1[9]_i_2 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_i),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    ram_full_fb_i_i_2
       (.I0(ram_empty_fb_i),
        .I1(rd_en),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_7
   (out,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[4] ,
    \gc0.count_d1_reg[6] ,
    \gc0.count_d1_reg[8] ,
    v1_reg,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    E,
    ram_full_fb_i_reg,
    s_axis_tvalid);
  output out;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[4] ;
  input \gc0.count_d1_reg[6] ;
  input \gc0.count_d1_reg[8] ;
  input [4:0]v1_reg;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input [0:0]E;
  input ram_full_fb_i_reg;
  input s_axis_tvalid;

  wire [0:0]E;
  wire c2_n_0;
  wire comp0;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[4] ;
  wire \gc0.count_d1_reg[6] ;
  wire \gc0.count_d1_reg[8] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_full_fb_i_reg;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;

  assign out = ram_empty_fb_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_9 c1
       (.comp0(comp0),
        .\gc0.count_d1_reg[0] (\gc0.count_d1_reg[0] ),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_d1_reg[6] (\gc0.count_d1_reg[6] ),
        .\gc0.count_d1_reg[8] (\gc0.count_d1_reg[8] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_10 c2
       (.E(E),
        .comp0(comp0),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(c2_n_0),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(v1_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo
   (out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    ram_rstram_b,
    ENB_I,
    rst,
    clk,
    POR_A,
    ram_empty_fb_i_reg,
    rd_en,
    ENB_dly_D);
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output ram_rstram_b;
  output ENB_I;
  input rst;
  input clk;
  input POR_A;
  input ram_empty_fb_i_reg;
  input rd_en;
  input ENB_dly_D;

  wire ENB_I;
  wire ENB_dly_D;
  wire POR_A;
  wire clk;
  wire dest_rst;
  wire \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  wire ram_empty_fb_i_reg;
  wire ram_rstram_b;
  wire rd_en;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire [3:0]sckt_wr_rst_cc;
  wire wr_rst_busy_i;

  assign out = rst_d3;
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(ram_empty_fb_i_reg),
        .I1(rd_en),
        .I2(ENB_dly_D),
        .I3(sckt_wr_rst_cc[1]),
        .I4(sckt_wr_rst_cc[0]),
        .O(ENB_I));
  LUT3 #(
    .INIT(8'hFE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3 
       (.I0(sckt_wr_rst_cc[1]),
        .I1(sckt_wr_rst_cc[0]),
        .I2(POR_A),
        .O(ram_rstram_b));
  LUT2 #(
    .INIT(4'hE)) 
    \gc0.count_d1[9]_i_1 
       (.I0(sckt_wr_rst_cc[0]),
        .I1(sckt_wr_rst_cc[1]),
        .O(\grstd1.grst_full.grst_f.rst_d3_reg_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_busy_i),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_d2),
        .Q(rst_d3),
        .S(\grstd1.grst_full.grst_f.rst_d3_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dest_rst),
        .Q(sckt_wr_rst_cc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[0]),
        .Q(sckt_wr_rst_cc[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[1]),
        .Q(sckt_wr_rst_cc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[2]),
        .Q(sckt_wr_rst_cc[3]),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(clk),
        .dest_rst(dest_rst),
        .src_rst(rst));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_rst_busy_i_inferred_i_1
       (.I0(sckt_wr_rst_cc[3]),
        .I1(sckt_wr_rst_cc[2]),
        .I2(sckt_wr_rst_cc[1]),
        .I3(sckt_wr_rst_cc[0]),
        .O(wr_rst_busy_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo__xdcDup__1
   (out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    Q,
    s_aclk,
    s_aresetn);
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output [1:0]Q;
  input s_aclk;
  input s_aresetn;

  wire [1:0]Q;
  wire dest_rst;
  wire \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  wire inverted_reset;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire s_aclk;
  wire s_aresetn;
  wire [3:2]sckt_wr_rst_cc;
  wire wr_rst_busy_i;

  assign out = rst_d3;
  LUT2 #(
    .INIT(4'hE)) 
    \count[10]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\grstd1.grst_full.grst_f.rst_d3_reg_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_i),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .Q(rst_d3),
        .S(\grstd1.grst_full.grst_f.rst_d3_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(dest_rst),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(sckt_wr_rst_cc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[2]),
        .Q(sckt_wr_rst_cc[3]),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2 \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(s_aclk),
        .dest_rst(dest_rst),
        .src_rst(inverted_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_rst_busy_i_inferred_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sckt_wr_rst_cc[3]),
        .I3(sckt_wr_rst_cc[2]),
        .O(wr_rst_busy_i));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_updn_cntr
   (Q,
    out,
    m_axis_tready,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    ram_full_fb_i_reg,
    s_aclk);
  output [10:0]Q;
  input out;
  input m_axis_tready;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input [0:0]ram_full_fb_i_reg;
  input s_aclk;

  wire [10:0]Q;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_4_n_0 ;
  wire \count[10]_i_5_n_0 ;
  wire \count[8]_i_10_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire \count[8]_i_6_n_0 ;
  wire \count[8]_i_7_n_0 ;
  wire \count[8]_i_8_n_0 ;
  wire \count[8]_i_9_n_0 ;
  wire \count_reg[10]_i_3_n_14 ;
  wire \count_reg[10]_i_3_n_15 ;
  wire \count_reg[10]_i_3_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_10 ;
  wire \count_reg[8]_i_1_n_11 ;
  wire \count_reg[8]_i_1_n_12 ;
  wire \count_reg[8]_i_1_n_13 ;
  wire \count_reg[8]_i_1_n_14 ;
  wire \count_reg[8]_i_1_n_15 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_8 ;
  wire \count_reg[8]_i_1_n_9 ;
  wire m_axis_tready;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [7:1]\NLW_count_reg[10]_i_3_CO_UNCONNECTED ;
  wire [7:2]\NLW_count_reg[10]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[10]_i_4 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\count[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[10]_i_5 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\count[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count[8]_i_10 
       (.I0(Q[1]),
        .I1(out),
        .I2(m_axis_tready),
        .O(\count[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[8]_i_2 
       (.I0(Q[1]),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_3 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_4 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_5 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\count[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_7 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\count[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_8 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\count[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_9 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\count[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[10]_i_3_n_14 ),
        .Q(Q[10]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \count_reg[10]_i_3 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[10]_i_3_CO_UNCONNECTED [7:1],\count_reg[10]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_count_reg[10]_i_3_O_UNCONNECTED [7:2],\count_reg[10]_i_3_n_14 ,\count_reg[10]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\count[10]_i_4_n_0 ,\count[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_15 ),
        .Q(Q[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_14 ),
        .Q(Q[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_13 ),
        .Q(Q[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_12 ),
        .Q(Q[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_11 ),
        .Q(Q[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_10 ),
        .Q(Q[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_9 ),
        .Q(Q[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[8]_i_1_n_8 ),
        .Q(Q[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \count_reg[8]_i_1 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [3],\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .DI({Q[7:1],\count[8]_i_2_n_0 }),
        .O({\count_reg[8]_i_1_n_8 ,\count_reg[8]_i_1_n_9 ,\count_reg[8]_i_1_n_10 ,\count_reg[8]_i_1_n_11 ,\count_reg[8]_i_1_n_12 ,\count_reg[8]_i_1_n_13 ,\count_reg[8]_i_1_n_14 ,\count_reg[8]_i_1_n_15 }),
        .S({\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 ,\count[8]_i_6_n_0 ,\count[8]_i_7_n_0 ,\count[8]_i_8_n_0 ,\count[8]_i_9_n_0 ,\count[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_aclk),
        .CE(ram_full_fb_i_reg),
        .D(\count_reg[10]_i_3_n_15 ),
        .Q(Q[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr
   (Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    E,
    clk);
  output [9:0]Q;
  output [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input [0:0]E;
  input clk;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gcc0.gc0.count[9]_i_2_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [9:0]plusOp__0;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[9]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\gcc0.gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(Q[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(Q[5]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q[6]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(Q[7]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(Q[8]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(Q[9]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(Q[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[9]),
        .Q(Q[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_4
   (Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    E,
    s_aclk);
  output [9:0]Q;
  output [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input [0:0]E;
  input s_aclk;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire \gcc0.gc0.count[9]_i_2_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [9:0]plusOp__0;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[9]_i_1 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gcc0.gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[5]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[6]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[7]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[8]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[9]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(Q[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[9]),
        .Q(Q[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic
   (out,
    \count_reg[10] ,
    E,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    v1_reg,
    v1_reg_0,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    s_axis_tvalid,
    \gpregsm1.user_valid_reg ,
    m_axis_tready,
    ram_empty_fb_i_reg,
    \grstd1.grst_full.grst_f.rst_d3_reg );
  output out;
  output [0:0]\count_reg[10] ;
  output [0:0]E;
  output [9:0]Q;
  output [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input s_axis_tvalid;
  input \gpregsm1.user_valid_reg ;
  input m_axis_tready;
  input [0:0]ram_empty_fb_i_reg;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]\count_reg[10] ;
  wire \gpregsm1.user_valid_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_axis_tready;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire [0:0]ram_empty_fb_i_reg;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_3 \gwss.wsts 
       (.E(E),
        .\count_reg[10] (\count_reg[10] ),
        .\gpregsm1.user_valid_reg (\gpregsm1.user_valid_reg ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .m_axis_tready(m_axis_tready),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_4 wpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .E(E),
        .Q(Q),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic__parameterized0
   (out,
    full,
    E,
    ram_empty_i_reg,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[5] ,
    \gc0.count_d1_reg[7] ,
    \gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[1] ,
    \gc0.count_d1_reg[3] ,
    \gc0.count_d1_reg[5]_0 ,
    \gc0.count_d1_reg[7]_0 ,
    \gc0.count_d1_reg[9]_0 ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    clk,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    ram_empty_fb_i_reg,
    wr_en);
  output out;
  output full;
  output [0:0]E;
  output ram_empty_i_reg;
  output [9:0]Q;
  output [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[5] ;
  input \gc0.count_d1_reg[7] ;
  input \gc0.count_d1_reg[9] ;
  input \gc0.count_d1_reg[1] ;
  input \gc0.count_d1_reg[3] ;
  input \gc0.count_d1_reg[5]_0 ;
  input \gc0.count_d1_reg[7]_0 ;
  input \gc0.count_d1_reg[9]_0 ;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input clk;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input ram_empty_fb_i_reg;
  input wr_en;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire full;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[1] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[5] ;
  wire \gc0.count_d1_reg[5]_0 ;
  wire \gc0.count_d1_reg[7] ;
  wire \gc0.count_d1_reg[7]_0 ;
  wire \gc0.count_d1_reg[9] ;
  wire \gc0.count_d1_reg[9]_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[0] (\gc0.count_d1_reg[0] ),
        .\gc0.count_d1_reg[1] (\gc0.count_d1_reg[1] ),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .\gc0.count_d1_reg[5] (\gc0.count_d1_reg[5] ),
        .\gc0.count_d1_reg[5]_0 (\gc0.count_d1_reg[5]_0 ),
        .\gc0.count_d1_reg[7] (\gc0.count_d1_reg[7] ),
        .\gc0.count_d1_reg[7]_0 (\gc0.count_d1_reg[7]_0 ),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\gc0.count_d1_reg[9]_0 (\gc0.count_d1_reg[9]_0 ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_empty_i_reg(ram_empty_i_reg),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr wpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss
   (out,
    full,
    E,
    ram_empty_i_reg,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[5] ,
    \gc0.count_d1_reg[7] ,
    \gc0.count_d1_reg[9] ,
    \gc0.count_d1_reg[1] ,
    \gc0.count_d1_reg[3] ,
    \gc0.count_d1_reg[5]_0 ,
    \gc0.count_d1_reg[7]_0 ,
    \gc0.count_d1_reg[9]_0 ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    clk,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    ram_empty_fb_i_reg,
    wr_en);
  output out;
  output full;
  output [0:0]E;
  output ram_empty_i_reg;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[5] ;
  input \gc0.count_d1_reg[7] ;
  input \gc0.count_d1_reg[9] ;
  input \gc0.count_d1_reg[1] ;
  input \gc0.count_d1_reg[3] ;
  input \gc0.count_d1_reg[5]_0 ;
  input \gc0.count_d1_reg[7]_0 ;
  input \gc0.count_d1_reg[9]_0 ;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input clk;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input ram_empty_fb_i_reg;
  input wr_en;

  wire [0:0]E;
  wire c0_n_0;
  wire clk;
  wire comp1;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[1] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[5] ;
  wire \gc0.count_d1_reg[5]_0 ;
  wire \gc0.count_d1_reg[7] ;
  wire \gc0.count_d1_reg[7]_0 ;
  wire \gc0.count_d1_reg[9] ;
  wire \gc0.count_d1_reg[9]_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare c0
       (.comp1(comp1),
        .\gc0.count_d1_reg[0] (\gc0.count_d1_reg[0] ),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[5] (\gc0.count_d1_reg[5] ),
        .\gc0.count_d1_reg[7] (\gc0.count_d1_reg[7] ),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(ram_full_fb_i),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_i_reg(c0_n_0),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_0 c1
       (.comp1(comp1),
        .\gc0.count_d1_reg[1] (\gc0.count_d1_reg[1] ),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .\gc0.count_d1_reg[5] (\gc0.count_d1_reg[5]_0 ),
        .\gc0.count_d1_reg[7] (\gc0.count_d1_reg[7]_0 ),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9]_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(ram_afull_fb));
  LUT2 #(
    .INIT(4'hB)) 
    ram_empty_fb_i_i_2
       (.I0(ram_full_fb_i),
        .I1(wr_en),
        .O(ram_empty_i_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c0_n_0),
        .Q(ram_full_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c0_n_0),
        .Q(ram_full_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_3
   (out,
    \count_reg[10] ,
    E,
    v1_reg,
    v1_reg_0,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    s_axis_tvalid,
    \gpregsm1.user_valid_reg ,
    m_axis_tready,
    ram_empty_fb_i_reg,
    \grstd1.grst_full.grst_f.rst_d3_reg );
  output out;
  output [0:0]\count_reg[10] ;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input s_axis_tvalid;
  input \gpregsm1.user_valid_reg ;
  input m_axis_tready;
  input [0:0]ram_empty_fb_i_reg;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;

  wire [0:0]E;
  wire comp0;
  wire [0:0]\count_reg[10] ;
  wire \gpregsm1.user_valid_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_axis_tready;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire [0:0]ram_empty_fb_i_reg;
  wire ram_full_comb__5;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(E));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_5 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_6 c1
       (.comp0(comp0),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(ram_full_fb_i),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb__5(ram_full_comb__5),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg_0(v1_reg_0));
  LUT4 #(
    .INIT(16'hB444)) 
    \count[10]_i_2 
       (.I0(ram_full_fb_i),
        .I1(s_axis_tvalid),
        .I2(\gpregsm1.user_valid_reg ),
        .I3(m_axis_tready),
        .O(\count_reg[10] ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb__5),
        .Q(ram_full_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb__5),
        .Q(ram_full_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
