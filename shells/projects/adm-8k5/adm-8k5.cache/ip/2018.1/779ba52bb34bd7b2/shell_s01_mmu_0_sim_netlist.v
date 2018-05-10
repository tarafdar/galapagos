// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu May 10 15:46:48 2018
// Host        : ug239 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_s01_mmu_0_sim_netlist.v
// Design      : shell_s01_mmu_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_14_decerr_slave
   (err_bvalid,
    err_wready,
    err_rvalid,
    err_arready,
    E,
    s_axi_rvalid,
    m_valid_i_reg,
    m_valid_i_reg_0,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ,
    s_axi_wready,
    s_axi_bvalid,
    SR,
    aclk,
    \FSM_onehot_gen_write.w_state_reg[2] ,
    \m_payload_i_reg[32] ,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    out,
    s_axi_bready,
    m_valid_i_reg_1,
    \FSM_sequential_gen_read.r_state_reg[1] ,
    m_axi_rvalid,
    Q,
    s_axi_arvalid,
    sr_axi_arready,
    m_axi_arready,
    \m_payload_i_reg[32]_0 ,
    m_axi_wready,
    \gen_write.w_cnt_reg[5] ,
    m_axi_bvalid,
    s_axi_wvalid,
    s_axi_rready,
    mr_axi_arvalid);
  output err_bvalid;
  output err_wready;
  output err_rvalid;
  output err_arready;
  output [0:0]E;
  output s_axi_rvalid;
  output m_valid_i_reg;
  output m_valid_i_reg_0;
  output \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  output s_axi_wready;
  output s_axi_bvalid;
  input [0:0]SR;
  input aclk;
  input \FSM_onehot_gen_write.w_state_reg[2] ;
  input \m_payload_i_reg[32] ;
  input \FSM_onehot_gen_write.w_state_reg[1] ;
  input [1:0]out;
  input s_axi_bready;
  input m_valid_i_reg_1;
  input [1:0]\FSM_sequential_gen_read.r_state_reg[1] ;
  input m_axi_rvalid;
  input [0:0]Q;
  input s_axi_arvalid;
  input sr_axi_arready;
  input m_axi_arready;
  input [0:0]\m_payload_i_reg[32]_0 ;
  input m_axi_wready;
  input \gen_write.w_cnt_reg[5] ;
  input m_axi_bvalid;
  input s_axi_wvalid;
  input s_axi_rready;
  input mr_axi_arvalid;

  wire [0:0]E;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire \FSM_onehot_gen_write.w_state_reg[2] ;
  wire [1:0]\FSM_sequential_gen_read.r_state_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_write.w_cnt_reg[5] ;
  wire m_axi_arready;
  wire m_axi_bvalid;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire \m_payload_i_reg[32] ;
  wire [0:0]\m_payload_i_reg[32]_0 ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire mr_axi_arvalid;
  wire [1:0]out;
  wire s_axi_arvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire sr_axi_arready;

  LUT6 #(
    .INIT(64'hEAAAEAAAFBBBEAAA)) 
    \FSM_onehot_gen_write.w_state[2]_i_2 
       (.I0(\FSM_onehot_gen_write.w_state_reg[1] ),
        .I1(out[1]),
        .I2(s_axi_bready),
        .I3(err_bvalid),
        .I4(m_valid_i_reg_1),
        .I5(out[0]),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_read.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[32] ),
        .Q(err_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4744444444444444)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_1 
       (.I0(s_axi_rready),
        .I1(err_rvalid),
        .I2(\m_payload_i_reg[32]_0 ),
        .I3(mr_axi_arvalid),
        .I4(err_arready),
        .I5(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ),
        .O(\gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_2 
       (.I0(\FSM_sequential_gen_read.r_state_reg[1] [1]),
        .I1(\FSM_sequential_gen_read.r_state_reg[1] [0]),
        .O(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ),
        .Q(err_rvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_write.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_write.w_state_reg[2] ),
        .Q(err_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'h5C50505050505050)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_i_1 
       (.I0(s_axi_bready),
        .I1(err_wready),
        .I2(err_bvalid),
        .I3(s_axi_wvalid),
        .I4(out[1]),
        .I5(m_valid_i_reg_1),
        .O(\gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'h44F0)) 
    m_valid_i_i_1
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(m_valid_i_reg_0),
        .I3(sr_axi_arready),
        .O(m_valid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5FF5F3FF)) 
    m_valid_i_i_2
       (.I0(m_axi_arready),
        .I1(err_arready),
        .I2(\FSM_sequential_gen_read.r_state_reg[1] [0]),
        .I3(\FSM_sequential_gen_read.r_state_reg[1] [1]),
        .I4(\m_payload_i_reg[32]_0 ),
        .O(m_valid_i_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_bvalid_INST_0
       (.I0(err_bvalid),
        .I1(out[1]),
        .I2(m_axi_bvalid),
        .O(s_axi_bvalid));
  LUT4 #(
    .INIT(16'hFB08)) 
    s_axi_rvalid_INST_0
       (.I0(err_rvalid),
        .I1(\FSM_sequential_gen_read.r_state_reg[1] [1]),
        .I2(\FSM_sequential_gen_read.r_state_reg[1] [0]),
        .I3(m_axi_rvalid),
        .O(s_axi_rvalid));
  LUT4 #(
    .INIT(16'h88B8)) 
    s_axi_wready_INST_0
       (.I0(err_wready),
        .I1(out[1]),
        .I2(m_axi_wready),
        .I3(\gen_write.w_cnt_reg[5] ),
        .O(s_axi_wready));
endmodule

(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_PROTOCOL = "2" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_BASE_ADDR = "128'b00000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000" *) (* C_DEST = "2'b00" *) (* C_DEST_WIDTH = "1" *) 
(* C_FAMILY = "kintexu" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_SUPPORTS_READ = "2'b11" *) 
(* C_M_AXI_SUPPORTS_WRITE = "2'b11" *) (* C_NUM_RANGES = "2" *) (* C_PREFIX = "2'b00" *) 
(* C_PREFIX_WIDTH = "1" *) (* C_RANGE_SIZE = "64'b0000000000000000000000000000110000000000000000000000000000001100" *) (* C_S_AXI_ADDR_WIDTH = "32" *) 
(* C_S_AXI_SUPPORTS_READ = "1" *) (* C_S_AXI_SUPPORTS_WRITE = "1" *) (* C_USES_DEST = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_DECERR = "2'b11" *) (* P_NUM_RANGES_LOG = "1" *) 
(* R_DECERR = "2'b11" *) (* R_IDLE = "2'b00" *) (* R_PENDING = "2'b01" *) 
(* W_DECERR = "2'b11" *) (* W_IDLE = "2'b00" *) (* W_PENDING = "2'b01" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_14_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
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
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
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
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
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
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_onehot_gen_write.w_state[2]_i_3_n_0 ;
  wire \FSM_sequential_gen_read.r_state[0]_i_1_n_0 ;
  wire \FSM_sequential_gen_read.r_state[1]_i_4_n_0 ;
  wire aclk;
  wire aresetn;
  wire decerr_slave_inst_n_4;
  wire decerr_slave_inst_n_6;
  wire decerr_slave_inst_n_7;
  wire decerr_slave_inst_n_8;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire \gen_read.ar_cnt[5]_i_6_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg__0 ;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire \gen_write.aw_cnt[5]_i_3_n_0 ;
  wire \gen_write.aw_cnt[5]_i_6_n_0 ;
  wire [5:0]\gen_write.aw_cnt_reg__0 ;
  wire \gen_write.w_cnt[0]_i_1_n_0 ;
  wire \gen_write.w_cnt[1]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_1_n_0 ;
  wire \gen_write.w_cnt[3]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_1_n_0 ;
  wire \gen_write.w_cnt[5]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_3_n_0 ;
  wire \gen_write.w_cnt[5]_i_4_n_0 ;
  wire \gen_write.w_cnt[5]_i_5_n_0 ;
  wire \gen_write.w_cnt[5]_i_6_n_0 ;
  wire \gen_write.w_cnt[5]_i_7_n_0 ;
  wire [5:0]\gen_write.w_cnt_reg__0 ;
  wire \gen_write.w_mask_i_2_n_0 ;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [32:32]mr_axi_araddr;
  wire mr_axi_arvalid;
  (* RTL_KEEP = "yes" *) wire [1:0]r_state;
  wire register_slice_inst_n_0;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_43;
  wire register_slice_inst_n_44;
  wire register_slice_inst_n_46;
  wire register_slice_inst_n_47;
  wire register_slice_inst_n_49;
  wire register_slice_inst_n_5;
  wire register_slice_inst_n_50;
  wire register_slice_inst_n_51;
  wire register_slice_inst_n_52;
  wire register_slice_inst_n_53;
  wire register_slice_inst_n_54;
  wire register_slice_inst_n_55;
  wire register_slice_inst_n_56;
  wire register_slice_inst_n_57;
  wire register_slice_inst_n_58;
  wire register_slice_inst_n_59;
  wire register_slice_inst_n_6;
  wire register_slice_inst_n_60;
  wire register_slice_inst_n_63;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sr_axi_arready;
  wire w_mask;
  (* RTL_KEEP = "yes" *) wire [2:0]w_state;

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
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const1> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
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
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const1> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const1> ;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const1> ;
  assign s_axi_ruser[0] = \<const0> ;
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_gen_write.w_state[2]_i_3 
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(w_state[1]),
        .I2(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .O(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_write.w_state_reg[0] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_4),
        .D(register_slice_inst_n_4),
        .Q(w_state[0]),
        .S(register_slice_inst_n_0));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_4),
        .D(register_slice_inst_n_3),
        .Q(w_state[1]),
        .R(register_slice_inst_n_0));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[2] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_4),
        .D(w_state[1]),
        .Q(w_state[2]),
        .R(register_slice_inst_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_gen_read.r_state[0]_i_1 
       (.I0(r_state[1]),
        .I1(r_state[0]),
        .O(\FSM_sequential_gen_read.r_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_gen_read.r_state[1]_i_4 
       (.I0(\gen_read.ar_cnt_reg__0 [4]),
        .I1(\gen_read.ar_cnt_reg__0 [5]),
        .I2(\gen_read.ar_cnt_reg__0 [2]),
        .I3(\gen_read.ar_cnt_reg__0 [3]),
        .I4(\gen_read.ar_cnt_reg__0 [0]),
        .I5(\gen_read.ar_cnt_reg__0 [1]),
        .O(\FSM_sequential_gen_read.r_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "R_PENDING:01,iSTATE:00,R_DECERR:10" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gen_read.r_state_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_43),
        .D(\FSM_sequential_gen_read.r_state[0]_i_1_n_0 ),
        .Q(r_state[0]),
        .R(register_slice_inst_n_0));
  (* FSM_ENCODED_STATES = "R_PENDING:01,iSTATE:00,R_DECERR:10" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gen_read.r_state_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_43),
        .D(register_slice_inst_n_44),
        .Q(r_state[1]),
        .R(register_slice_inst_n_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_14_decerr_slave decerr_slave_inst
       (.E(decerr_slave_inst_n_4),
        .\FSM_onehot_gen_write.w_state_reg[1] (\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ),
        .\FSM_onehot_gen_write.w_state_reg[2] (register_slice_inst_n_63),
        .\FSM_sequential_gen_read.r_state_reg[1] (r_state),
        .Q(\gen_read.ar_cnt_reg__0 [5]),
        .SR(register_slice_inst_n_0),
        .aclk(aclk),
        .err_arready(err_arready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 (decerr_slave_inst_n_8),
        .\gen_write.w_cnt_reg[5] (s_axi_wready_INST_0_i_1_n_0),
        .m_axi_arready(m_axi_arready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .\m_payload_i_reg[32] (register_slice_inst_n_6),
        .\m_payload_i_reg[32]_0 (mr_axi_araddr),
        .m_valid_i_reg(decerr_slave_inst_n_6),
        .m_valid_i_reg_0(decerr_slave_inst_n_7),
        .m_valid_i_reg_1(register_slice_inst_n_5),
        .mr_axi_arvalid(mr_axi_arvalid),
        .out(w_state[2:1]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .sr_axi_arready(sr_axi_arready));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_read.ar_cnt[5]_i_6 
       (.I0(\FSM_sequential_gen_read.r_state[1]_i_4_n_0 ),
        .I1(m_axi_rvalid),
        .I2(s_axi_rready),
        .O(\gen_read.ar_cnt[5]_i_6_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_60),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_60),
        .D(register_slice_inst_n_59),
        .Q(\gen_read.ar_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_60),
        .D(register_slice_inst_n_58),
        .Q(\gen_read.ar_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_60),
        .D(register_slice_inst_n_57),
        .Q(\gen_read.ar_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_60),
        .D(register_slice_inst_n_56),
        .Q(\gen_read.ar_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_60),
        .D(register_slice_inst_n_55),
        .Q(\gen_read.ar_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(\gen_write.aw_cnt_reg__0 [4]),
        .I1(\gen_write.aw_cnt_reg__0 [5]),
        .I2(\gen_write.aw_cnt_reg__0 [2]),
        .I3(\gen_write.aw_cnt_reg__0 [3]),
        .I4(\gen_write.aw_cnt_reg__0 [0]),
        .I5(\gen_write.aw_cnt_reg__0 [1]),
        .O(\gen_write.aw_cnt[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write.aw_cnt[5]_i_6 
       (.I0(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .O(\gen_write.aw_cnt[5]_i_6_n_0 ));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_53),
        .Q(\gen_write.aw_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_52),
        .Q(\gen_write.aw_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_51),
        .Q(\gen_write.aw_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_50),
        .Q(\gen_write.aw_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_49),
        .Q(\gen_write.aw_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .I2(\gen_write.w_cnt_reg__0 [1]),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .I2(\gen_write.w_cnt_reg__0 [1]),
        .I3(\gen_write.w_cnt_reg__0 [2]),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .I3(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I4(\gen_write.w_cnt_reg__0 [3]),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAA9A)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [4]),
        .I1(\gen_write.w_cnt_reg__0 [3]),
        .I2(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I3(\gen_write.w_cnt_reg__0 [0]),
        .I4(\gen_write.w_cnt_reg__0 [1]),
        .I5(\gen_write.w_cnt_reg__0 [2]),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(\gen_write.w_cnt[5]_i_6_n_0 ),
        .I1(w_mask),
        .I2(s_axi_awvalid),
        .I3(\gen_write.aw_cnt_reg__0 [5]),
        .I4(register_slice_inst_n_47),
        .O(\gen_write.w_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0400)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(w_state[2]),
        .I1(m_axi_wready),
        .I2(s_axi_wready_INST_0_i_1_n_0),
        .I3(s_axi_wvalid),
        .I4(\gen_write.w_cnt[5]_i_3_n_0 ),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55AAAAAAAAAAA9A9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg__0 [5]),
        .I1(\gen_write.w_cnt[5]_i_4_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt[5]_i_5_n_0 ),
        .I4(\gen_write.w_cnt_reg__0 [3]),
        .I5(\gen_write.w_cnt_reg__0 [4]),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(register_slice_inst_n_47),
        .I1(\gen_write.aw_cnt_reg__0 [5]),
        .I2(s_axi_awvalid),
        .I3(w_mask),
        .O(\gen_write.w_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(register_slice_inst_n_47),
        .I3(\gen_write.w_mask_i_2_n_0 ),
        .I4(w_mask),
        .I5(\gen_write.w_cnt[5]_i_6_n_0 ),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .I3(\gen_write.w_cnt[5]_i_6_n_0 ),
        .I4(\gen_write.w_cnt[5]_i_7_n_0 ),
        .I5(register_slice_inst_n_47),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \gen_write.w_cnt[5]_i_6 
       (.I0(s_axi_wvalid),
        .I1(s_axi_wready_INST_0_i_1_n_0),
        .I2(m_axi_wready),
        .I3(w_state[2]),
        .O(\gen_write.w_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \gen_write.w_cnt[5]_i_7 
       (.I0(w_mask),
        .I1(s_axi_awvalid),
        .I2(\gen_write.aw_cnt_reg__0 [5]),
        .O(\gen_write.w_cnt[5]_i_7_n_0 ));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_write.w_mask_i_2 
       (.I0(\gen_write.aw_cnt_reg__0 [5]),
        .I1(s_axi_awvalid),
        .O(\gen_write.w_mask_i_2_n_0 ));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_46),
        .Q(w_mask),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    m_axi_wvalid_INST_0
       (.I0(w_state[2]),
        .I1(s_axi_wvalid),
        .I2(s_axi_wready_INST_0_i_1_n_0),
        .O(m_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_16_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_3,register_slice_inst_n_4}),
        .E(register_slice_inst_n_43),
        .\FSM_onehot_gen_write.w_state_reg[1] (\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ),
        .\FSM_sequential_gen_read.r_state_reg[1] (register_slice_inst_n_44),
        .\FSM_sequential_gen_read.r_state_reg[1]_0 (decerr_slave_inst_n_8),
        .\FSM_sequential_gen_read.r_state_reg[1]_1 (r_state),
        .Q({m_axi_arprot,mr_axi_araddr,m_axi_araddr}),
        .SR(register_slice_inst_n_0),
        .aclk(aclk),
        .aresetn(aresetn),
        .err_arready(err_arready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (register_slice_inst_n_6),
        .\gen_axilite.gen_read.s_axi_arready_i_reg_0 (decerr_slave_inst_n_7),
        .\gen_axilite.gen_write.s_axi_awready_i_reg (register_slice_inst_n_63),
        .\gen_axilite.gen_write.s_axi_bvalid_i_reg (register_slice_inst_n_5),
        .\gen_read.ar_cnt_reg[4] (\FSM_sequential_gen_read.r_state[1]_i_4_n_0 ),
        .\gen_read.ar_cnt_reg[4]_0 (\gen_read.ar_cnt[5]_i_6_n_0 ),
        .\gen_read.ar_cnt_reg[5] ({register_slice_inst_n_55,register_slice_inst_n_56,register_slice_inst_n_57,register_slice_inst_n_58,register_slice_inst_n_59}),
        .\gen_read.ar_cnt_reg[5]_0 (register_slice_inst_n_60),
        .\gen_read.ar_cnt_reg[5]_1 (decerr_slave_inst_n_6),
        .\gen_read.ar_cnt_reg[5]_2 (\gen_read.ar_cnt_reg__0 ),
        .\gen_write.aw_cnt_reg[4] (\gen_write.aw_cnt[5]_i_6_n_0 ),
        .\gen_write.aw_cnt_reg[4]_0 (\gen_write.aw_cnt[5]_i_3_n_0 ),
        .\gen_write.aw_cnt_reg[5] ({register_slice_inst_n_49,register_slice_inst_n_50,register_slice_inst_n_51,register_slice_inst_n_52,register_slice_inst_n_53}),
        .\gen_write.aw_cnt_reg[5]_0 (register_slice_inst_n_54),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.w_mask_i_2_n_0 ),
        .\gen_write.aw_cnt_reg[5]_2 (\gen_write.aw_cnt_reg__0 ),
        .\gen_write.w_mask_reg (register_slice_inst_n_46),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_axi_awprot[2] ({m_axi_awprot,m_axi_awaddr}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[32] (register_slice_inst_n_47),
        .mr_axi_arvalid(mr_axi_arvalid),
        .out(w_state[2:1]),
        .\s_axi_arprot[2] ({s_axi_arprot,s_axi_araddr}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_awprot[2] ({s_axi_awprot,s_axi_awaddr}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rready(s_axi_rready),
        .s_axi_wvalid(s_axi_wvalid),
        .sr_axi_arready(sr_axi_arready),
        .w_mask(w_mask));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(w_state[2]),
        .I1(m_axi_bresp[0]),
        .O(s_axi_bresp[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(w_state[2]),
        .I1(m_axi_bresp[1]),
        .O(s_axi_bresp[1]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[0]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[10]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[11]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[12]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[13]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[14]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[15]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[16]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[17]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[18]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[19]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[1]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[20]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[21]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[22]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[23]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[24]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[25]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[26]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[27]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[28]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[29]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[2]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[30]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[31]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[3]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[4]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[5]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[6]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[7]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[8]));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[9]));
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rresp[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[1]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rresp[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_wready_INST_0_i_1
       (.I0(\gen_write.w_cnt_reg__0 [5]),
        .I1(\gen_write.w_cnt_reg__0 [4]),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt_reg__0 [3]),
        .I4(\gen_write.w_cnt_reg__0 [1]),
        .I5(\gen_write.w_cnt_reg__0 [0]),
        .O(s_axi_wready_INST_0_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_16_axi_register_slice
   (SR,
    mr_axi_arvalid,
    sr_axi_arready,
    D,
    \gen_axilite.gen_write.s_axi_bvalid_i_reg ,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    Q,
    E,
    \FSM_sequential_gen_read.r_state_reg[1] ,
    m_axi_arvalid,
    \gen_write.w_mask_reg ,
    \m_payload_i_reg[32] ,
    s_axi_awready,
    \gen_write.aw_cnt_reg[5] ,
    \gen_write.aw_cnt_reg[5]_0 ,
    \gen_read.ar_cnt_reg[5] ,
    \gen_read.ar_cnt_reg[5]_0 ,
    s_axi_arready,
    m_axi_awvalid,
    \gen_axilite.gen_write.s_axi_awready_i_reg ,
    \m_axi_awprot[2] ,
    aclk,
    \gen_read.ar_cnt_reg[5]_1 ,
    out,
    \FSM_sequential_gen_read.r_state_reg[1]_0 ,
    err_arready,
    err_rvalid,
    \FSM_sequential_gen_read.r_state_reg[1]_1 ,
    \gen_read.ar_cnt_reg[4] ,
    s_axi_rready,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    \gen_write.aw_cnt_reg[5]_1 ,
    w_mask,
    \gen_write.aw_cnt_reg[5]_2 ,
    \gen_write.aw_cnt_reg[4] ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_write.aw_cnt_reg[4]_0 ,
    s_axi_awvalid,
    \gen_read.ar_cnt_reg[5]_2 ,
    \gen_read.ar_cnt_reg[4]_0 ,
    m_axi_rvalid,
    s_axi_arvalid,
    \s_axi_awprot[2] ,
    \s_axi_arprot[2] ,
    aresetn,
    s_axi_wvalid,
    err_bvalid,
    err_wready,
    \gen_axilite.gen_read.s_axi_arready_i_reg_0 ,
    m_axi_awready);
  output [0:0]SR;
  output mr_axi_arvalid;
  output sr_axi_arready;
  output [1:0]D;
  output \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  output \gen_axilite.gen_read.s_axi_arready_i_reg ;
  output [35:0]Q;
  output [0:0]E;
  output [0:0]\FSM_sequential_gen_read.r_state_reg[1] ;
  output m_axi_arvalid;
  output \gen_write.w_mask_reg ;
  output \m_payload_i_reg[32] ;
  output s_axi_awready;
  output [4:0]\gen_write.aw_cnt_reg[5] ;
  output [0:0]\gen_write.aw_cnt_reg[5]_0 ;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  output s_axi_arready;
  output m_axi_awvalid;
  output \gen_axilite.gen_write.s_axi_awready_i_reg ;
  output [34:0]\m_axi_awprot[2] ;
  input aclk;
  input \gen_read.ar_cnt_reg[5]_1 ;
  input [1:0]out;
  input \FSM_sequential_gen_read.r_state_reg[1]_0 ;
  input err_arready;
  input err_rvalid;
  input [1:0]\FSM_sequential_gen_read.r_state_reg[1]_1 ;
  input \gen_read.ar_cnt_reg[4] ;
  input s_axi_rready;
  input \FSM_onehot_gen_write.w_state_reg[1] ;
  input \gen_write.aw_cnt_reg[5]_1 ;
  input w_mask;
  input [5:0]\gen_write.aw_cnt_reg[5]_2 ;
  input \gen_write.aw_cnt_reg[4] ;
  input s_axi_bready;
  input m_axi_bvalid;
  input \gen_write.aw_cnt_reg[4]_0 ;
  input s_axi_awvalid;
  input [5:0]\gen_read.ar_cnt_reg[5]_2 ;
  input \gen_read.ar_cnt_reg[4]_0 ;
  input m_axi_rvalid;
  input s_axi_arvalid;
  input [34:0]\s_axi_awprot[2] ;
  input [34:0]\s_axi_arprot[2] ;
  input aresetn;
  input s_axi_wvalid;
  input err_bvalid;
  input err_wready;
  input \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  input m_axi_awready;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire [0:0]\FSM_sequential_gen_read.r_state_reg[1] ;
  wire \FSM_sequential_gen_read.r_state_reg[1]_0 ;
  wire [1:0]\FSM_sequential_gen_read.r_state_reg[1]_1 ;
  wire [35:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \ar.ar_pipe_n_3 ;
  wire \ar.ar_pipe_n_4 ;
  wire aresetn;
  wire \aw.aw_pipe_n_0 ;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  wire \gen_axilite.gen_write.s_axi_awready_i_reg ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  wire \gen_read.ar_cnt_reg[4] ;
  wire \gen_read.ar_cnt_reg[4]_0 ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.ar_cnt_reg[5]_1 ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_2 ;
  wire \gen_write.aw_cnt_reg[4] ;
  wire \gen_write.aw_cnt_reg[4]_0 ;
  wire [4:0]\gen_write.aw_cnt_reg[5] ;
  wire [0:0]\gen_write.aw_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5]_1 ;
  wire [5:0]\gen_write.aw_cnt_reg[5]_2 ;
  wire \gen_write.w_mask_reg ;
  wire m_axi_arvalid;
  wire [34:0]\m_axi_awprot[2] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire m_axi_rvalid;
  wire \m_payload_i_reg[32] ;
  wire mr_axi_arvalid;
  wire [1:0]out;
  wire [1:1]p_0_in;
  wire [34:0]\s_axi_arprot[2] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [34:0]\s_axi_awprot[2] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire s_axi_wvalid;
  wire sr_axi_arready;
  wire w_mask;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_16_axic_register_slice \ar.ar_pipe 
       (.E(E),
        .\FSM_onehot_gen_write.w_state_reg[1] (\FSM_onehot_gen_write.w_state_reg[1] ),
        .\FSM_sequential_gen_read.r_state_reg[1] (\FSM_sequential_gen_read.r_state_reg[1] ),
        .\FSM_sequential_gen_read.r_state_reg[1]_0 (\FSM_sequential_gen_read.r_state_reg[1]_0 ),
        .\FSM_sequential_gen_read.r_state_reg[1]_1 (\FSM_sequential_gen_read.r_state_reg[1]_1 ),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0] (\aw.aw_pipe_n_0 ),
        .\aresetn_d_reg[1]_0 (\ar.ar_pipe_n_4 ),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (\ar.ar_pipe_n_3 ),
        .\gen_axilite.gen_read.s_axi_arready_i_reg_0 (\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .\gen_axilite.gen_read.s_axi_arready_i_reg_1 (\gen_axilite.gen_read.s_axi_arready_i_reg_0 ),
        .\gen_read.ar_cnt_reg[4] (\gen_read.ar_cnt_reg[4] ),
        .\gen_read.ar_cnt_reg[4]_0 (\gen_read.ar_cnt_reg[4]_0 ),
        .\gen_read.ar_cnt_reg[5] (\gen_read.ar_cnt_reg[5] ),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg[5]_0 ),
        .\gen_read.ar_cnt_reg[5]_1 (\gen_read.ar_cnt_reg[5]_1 ),
        .\gen_read.ar_cnt_reg[5]_2 (\gen_read.ar_cnt_reg[5]_2 ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5]_1 ),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[0]_0 (mr_axi_arvalid),
        .p_0_in(p_0_in),
        .\s_axi_arprot[2] (\s_axi_arprot[2] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_awaddr[18] (\m_payload_i_reg[32] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_rready(s_axi_rready),
        .sr_axi_arready(sr_axi_arready),
        .w_mask(w_mask));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_16_axic_register_slice_0 \aw.aw_pipe 
       (.D(D),
        .SR(SR),
        .aclk(aclk),
        .aresetn(\ar.ar_pipe_n_4 ),
        .\aresetn_d_reg[1] (\ar.ar_pipe_n_3 ),
        .err_bvalid(err_bvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_write.s_axi_awready_i_reg (\gen_axilite.gen_write.s_axi_awready_i_reg ),
        .\gen_axilite.gen_write.s_axi_bvalid_i_reg (\gen_axilite.gen_write.s_axi_bvalid_i_reg ),
        .\gen_write.aw_cnt_reg[4] (\gen_write.aw_cnt_reg[4] ),
        .\gen_write.aw_cnt_reg[4]_0 (\gen_write.aw_cnt_reg[4]_0 ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5] ),
        .\gen_write.aw_cnt_reg[5]_0 (\gen_write.aw_cnt_reg[5]_0 ),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.aw_cnt_reg[5]_2 ),
        .\m_axi_awprot[2] (\m_axi_awprot[2] ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[32]_0 (\m_payload_i_reg[32] ),
        .out(out),
        .p_0_in(p_0_in),
        .\s_axi_awprot[2] (\s_axi_awprot[2] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(\aw.aw_pipe_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_16_axic_register_slice
   (\m_payload_i_reg[0]_0 ,
    SR,
    sr_axi_arready,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    \aresetn_d_reg[1]_0 ,
    \gen_axilite.gen_read.s_axi_arready_i_reg_0 ,
    Q,
    E,
    \FSM_sequential_gen_read.r_state_reg[1] ,
    m_axi_arvalid,
    \gen_write.w_mask_reg ,
    \gen_read.ar_cnt_reg[5] ,
    \gen_read.ar_cnt_reg[5]_0 ,
    s_axi_arready,
    \gen_read.ar_cnt_reg[5]_1 ,
    aclk,
    \aresetn_d_reg[0] ,
    p_0_in,
    \FSM_sequential_gen_read.r_state_reg[1]_0 ,
    err_arready,
    err_rvalid,
    \FSM_sequential_gen_read.r_state_reg[1]_1 ,
    \gen_read.ar_cnt_reg[4] ,
    s_axi_rready,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    \gen_write.aw_cnt_reg[5] ,
    w_mask,
    \s_axi_awaddr[18] ,
    s_axi_awready,
    \gen_read.ar_cnt_reg[5]_2 ,
    \gen_read.ar_cnt_reg[4]_0 ,
    m_axi_rvalid,
    s_axi_arvalid,
    \s_axi_arprot[2] ,
    aresetn,
    \gen_axilite.gen_read.s_axi_arready_i_reg_1 );
  output \m_payload_i_reg[0]_0 ;
  output [0:0]SR;
  output sr_axi_arready;
  output \gen_axilite.gen_read.s_axi_arready_i_reg ;
  output \aresetn_d_reg[1]_0 ;
  output \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  output [35:0]Q;
  output [0:0]E;
  output [0:0]\FSM_sequential_gen_read.r_state_reg[1] ;
  output m_axi_arvalid;
  output \gen_write.w_mask_reg ;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  output s_axi_arready;
  input \gen_read.ar_cnt_reg[5]_1 ;
  input aclk;
  input \aresetn_d_reg[0] ;
  input [0:0]p_0_in;
  input \FSM_sequential_gen_read.r_state_reg[1]_0 ;
  input err_arready;
  input err_rvalid;
  input [1:0]\FSM_sequential_gen_read.r_state_reg[1]_1 ;
  input \gen_read.ar_cnt_reg[4] ;
  input s_axi_rready;
  input \FSM_onehot_gen_write.w_state_reg[1] ;
  input \gen_write.aw_cnt_reg[5] ;
  input w_mask;
  input \s_axi_awaddr[18] ;
  input s_axi_awready;
  input [5:0]\gen_read.ar_cnt_reg[5]_2 ;
  input \gen_read.ar_cnt_reg[4]_0 ;
  input m_axi_rvalid;
  input s_axi_arvalid;
  input [34:0]\s_axi_arprot[2] ;
  input aresetn;
  input \gen_axilite.gen_read.s_axi_arready_i_reg_1 ;

  wire [0:0]E;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire \FSM_sequential_gen_read.r_state[1]_i_3_n_0 ;
  wire [0:0]\FSM_sequential_gen_read.r_state_reg[1] ;
  wire \FSM_sequential_gen_read.r_state_reg[1]_0 ;
  wire [1:0]\FSM_sequential_gen_read.r_state_reg[1]_1 ;
  wire [35:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[1]_0 ;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg_1 ;
  wire \gen_read.ar_cnt[2]_i_2_n_0 ;
  wire \gen_read.ar_cnt[5]_i_3_n_0 ;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt[5]_i_5_n_0 ;
  wire \gen_read.ar_cnt_reg[4] ;
  wire \gen_read.ar_cnt_reg[4]_0 ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.ar_cnt_reg[5]_1 ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_2 ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_mask_reg ;
  wire m_axi_arvalid;
  wire m_axi_rvalid;
  wire \m_payload_i[31]_i_1_n_0 ;
  wire \m_payload_i[32]_i_2__0_n_0 ;
  wire \m_payload_i[32]_i_3__0_n_0 ;
  wire \m_payload_i[32]_i_4__0_n_0 ;
  wire \m_payload_i[32]_i_5__0_n_0 ;
  wire \m_payload_i[32]_i_6__0_n_0 ;
  wire \m_payload_i_reg[0]_0 ;
  wire [0:0]p_0_in;
  wire r_match;
  wire [34:0]\s_axi_arprot[2] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire \s_axi_awaddr[18] ;
  wire s_axi_awready;
  wire s_axi_rready;
  wire s_ready_i_i_1__0_n_0;
  wire sr_axi_arready;
  wire w_mask;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_write.w_state[2]_i_1 
       (.I0(\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .O(SR));
  LUT6 #(
    .INIT(64'h8EBE82B282B282B2)) 
    \FSM_sequential_gen_read.r_state[1]_i_1 
       (.I0(\FSM_sequential_gen_read.r_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_gen_read.r_state_reg[1]_1 [1]),
        .I2(\FSM_sequential_gen_read.r_state_reg[1]_1 [0]),
        .I3(\gen_read.ar_cnt_reg[4] ),
        .I4(s_axi_rready),
        .I5(err_rvalid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0F20)) 
    \FSM_sequential_gen_read.r_state[1]_i_2 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(Q[32]),
        .I2(\FSM_sequential_gen_read.r_state_reg[1]_1 [1]),
        .I3(\FSM_sequential_gen_read.r_state_reg[1]_1 [0]),
        .O(\FSM_sequential_gen_read.r_state_reg[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_gen_read.r_state[1]_i_3 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(Q[32]),
        .O(\FSM_sequential_gen_read.r_state[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \aresetn_d[0]_i_1 
       (.I0(aresetn),
        .O(\aresetn_d_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .R(\aresetn_d_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFF00BFFF00000000)) 
    \gen_axilite.gen_read.s_axi_arready_i_i_1 
       (.I0(Q[32]),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(\FSM_sequential_gen_read.r_state_reg[1]_0 ),
        .I3(err_arready),
        .I4(err_rvalid),
        .I5(\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .O(\gen_axilite.gen_read.s_axi_arready_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .I1(\gen_read.ar_cnt_reg[5]_2 [0]),
        .I2(\gen_read.ar_cnt_reg[5]_2 [1]),
        .O(\gen_read.ar_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_2 [2]),
        .I1(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .I2(\gen_read.ar_cnt_reg[5]_2 [0]),
        .I3(\gen_read.ar_cnt_reg[5]_2 [1]),
        .O(\gen_read.ar_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \gen_read.ar_cnt[2]_i_2 
       (.I0(\gen_read.ar_cnt[5]_i_3_n_0 ),
        .I1(s_axi_rready),
        .I2(m_axi_rvalid),
        .I3(\gen_read.ar_cnt_reg[4] ),
        .O(\gen_read.ar_cnt[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I1(\gen_read.ar_cnt_reg[5]_2 [2]),
        .I2(\gen_read.ar_cnt_reg[5]_2 [3]),
        .O(\gen_read.ar_cnt_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_2 [4]),
        .I1(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I2(\gen_read.ar_cnt_reg[5]_2 [3]),
        .I3(\gen_read.ar_cnt_reg[5]_2 [2]),
        .O(\gen_read.ar_cnt_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(s_axi_rready),
        .I1(m_axi_rvalid),
        .I2(\gen_read.ar_cnt_reg[4] ),
        .I3(\gen_read.ar_cnt[5]_i_3_n_0 ),
        .O(\gen_read.ar_cnt_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(\gen_read.ar_cnt_reg[5]_2 [5]),
        .I1(\gen_read.ar_cnt_reg[5]_2 [4]),
        .I2(\gen_read.ar_cnt_reg[5]_2 [2]),
        .I3(\gen_read.ar_cnt_reg[5]_2 [3]),
        .I4(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .O(\gen_read.ar_cnt_reg[5] [4]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(\gen_read.ar_cnt[5]_i_5_n_0 ),
        .I1(\m_payload_i[32]_i_6__0_n_0 ),
        .I2(\m_payload_i[32]_i_5__0_n_0 ),
        .I3(\m_payload_i[32]_i_4__0_n_0 ),
        .I4(\m_payload_i[32]_i_3__0_n_0 ),
        .I5(\m_payload_i[32]_i_2__0_n_0 ),
        .O(\gen_read.ar_cnt[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0800EFEE)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(\gen_read.ar_cnt_reg[5]_2 [0]),
        .I1(\gen_read.ar_cnt_reg[5]_2 [1]),
        .I2(\gen_read.ar_cnt_reg[4]_0 ),
        .I3(\gen_read.ar_cnt[5]_i_3_n_0 ),
        .I4(\gen_read.ar_cnt_reg[5]_2 [2]),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_read.ar_cnt[5]_i_5 
       (.I0(s_axi_arvalid),
        .I1(\gen_read.ar_cnt_reg[5]_2 [5]),
        .I2(sr_axi_arready),
        .O(\gen_read.ar_cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4404000044044404)) 
    \gen_write.w_mask_i_1 
       (.I0(\FSM_onehot_gen_write.w_state_reg[1] ),
        .I1(\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .I2(\gen_write.aw_cnt_reg[5] ),
        .I3(w_mask),
        .I4(\s_axi_awaddr[18] ),
        .I5(s_axi_awready),
        .O(\gen_write.w_mask_reg ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    m_axi_arvalid_INST_0
       (.I0(\FSM_sequential_gen_read.r_state_reg[1]_1 [0]),
        .I1(\FSM_sequential_gen_read.r_state_reg[1]_1 [1]),
        .I2(Q[32]),
        .I3(\m_payload_i_reg[0]_0 ),
        .O(m_axi_arvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1 
       (.I0(\m_payload_i_reg[0]_0 ),
        .O(\m_payload_i[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_payload_i[32]_i_1__0 
       (.I0(\m_payload_i[32]_i_2__0_n_0 ),
        .I1(\m_payload_i[32]_i_3__0_n_0 ),
        .I2(\m_payload_i[32]_i_4__0_n_0 ),
        .I3(\m_payload_i[32]_i_5__0_n_0 ),
        .I4(\m_payload_i[32]_i_6__0_n_0 ),
        .O(r_match));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \m_payload_i[32]_i_2__0 
       (.I0(\s_axi_arprot[2] [31]),
        .I1(\s_axi_arprot[2] [28]),
        .I2(\s_axi_arprot[2] [26]),
        .I3(\s_axi_arprot[2] [19]),
        .O(\m_payload_i[32]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_3__0 
       (.I0(\s_axi_arprot[2] [21]),
        .I1(\s_axi_arprot[2] [16]),
        .I2(\s_axi_arprot[2] [29]),
        .I3(\s_axi_arprot[2] [14]),
        .O(\m_payload_i[32]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_4__0 
       (.I0(\s_axi_arprot[2] [27]),
        .I1(\s_axi_arprot[2] [24]),
        .I2(\s_axi_arprot[2] [12]),
        .I3(\s_axi_arprot[2] [13]),
        .O(\m_payload_i[32]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_5__0 
       (.I0(\s_axi_arprot[2] [17]),
        .I1(\s_axi_arprot[2] [15]),
        .I2(\s_axi_arprot[2] [22]),
        .I3(\s_axi_arprot[2] [20]),
        .O(\m_payload_i[32]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \m_payload_i[32]_i_6__0 
       (.I0(\s_axi_arprot[2] [23]),
        .I1(\s_axi_arprot[2] [25]),
        .I2(\s_axi_arprot[2] [18]),
        .O(\m_payload_i[32]_i_6__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(r_match),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [32]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [33]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [34]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_read.ar_cnt_reg[5]_1 ),
        .Q(\m_payload_i_reg[0]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(sr_axi_arready),
        .I1(\gen_read.ar_cnt_reg[5]_2 [5]),
        .O(s_axi_arready));
  LUT5 #(
    .INIT(32'h51FBFFFF)) 
    s_ready_i_i_1__0
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(s_axi_arvalid),
        .I2(\gen_read.ar_cnt_reg[5]_2 [5]),
        .I3(\gen_axilite.gen_read.s_axi_arready_i_reg_1 ),
        .I4(\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .O(s_ready_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(sr_axi_arready),
        .R(\aresetn_d_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_16_axic_register_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_16_axic_register_slice_0
   (s_ready_i_reg_0,
    p_0_in,
    D,
    \gen_axilite.gen_write.s_axi_bvalid_i_reg ,
    \gen_write.aw_cnt_reg[5] ,
    \m_payload_i_reg[32]_0 ,
    \gen_write.aw_cnt_reg[5]_0 ,
    s_axi_awready,
    m_axi_awvalid,
    \gen_axilite.gen_write.s_axi_awready_i_reg ,
    \m_axi_awprot[2] ,
    SR,
    aclk,
    aresetn,
    out,
    \gen_write.aw_cnt_reg[5]_1 ,
    \gen_write.aw_cnt_reg[4] ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_write.aw_cnt_reg[4]_0 ,
    s_axi_awvalid,
    \s_axi_awprot[2] ,
    s_axi_wvalid,
    err_bvalid,
    err_wready,
    \aresetn_d_reg[1] ,
    m_axi_awready);
  output s_ready_i_reg_0;
  output [0:0]p_0_in;
  output [1:0]D;
  output \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  output [4:0]\gen_write.aw_cnt_reg[5] ;
  output \m_payload_i_reg[32]_0 ;
  output [0:0]\gen_write.aw_cnt_reg[5]_0 ;
  output s_axi_awready;
  output m_axi_awvalid;
  output \gen_axilite.gen_write.s_axi_awready_i_reg ;
  output [34:0]\m_axi_awprot[2] ;
  input [0:0]SR;
  input aclk;
  input aresetn;
  input [1:0]out;
  input [5:0]\gen_write.aw_cnt_reg[5]_1 ;
  input \gen_write.aw_cnt_reg[4] ;
  input s_axi_bready;
  input m_axi_bvalid;
  input \gen_write.aw_cnt_reg[4]_0 ;
  input s_axi_awvalid;
  input [34:0]\s_axi_awprot[2] ;
  input s_axi_wvalid;
  input err_bvalid;
  input err_wready;
  input \aresetn_d_reg[1] ;
  input m_axi_awready;

  wire [1:0]D;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire err_bvalid;
  wire err_wready;
  wire \gen_axilite.gen_write.s_axi_awready_i_reg ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  wire \gen_write.aw_cnt[2]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_4_n_0 ;
  wire \gen_write.aw_cnt[5]_i_5_n_0 ;
  wire \gen_write.aw_cnt[5]_i_7_n_0 ;
  wire \gen_write.aw_cnt_reg[4] ;
  wire \gen_write.aw_cnt_reg[4]_0 ;
  wire [4:0]\gen_write.aw_cnt_reg[5] ;
  wire [0:0]\gen_write.aw_cnt_reg[5]_0 ;
  wire [5:0]\gen_write.aw_cnt_reg[5]_1 ;
  wire [34:0]\m_axi_awprot[2] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire \m_payload_i[31]_i_1__0_n_0 ;
  wire \m_payload_i[32]_i_3_n_0 ;
  wire \m_payload_i[32]_i_4_n_0 ;
  wire \m_payload_i[32]_i_5_n_0 ;
  wire \m_payload_i[32]_i_6_n_0 ;
  wire \m_payload_i[32]_i_7_n_0 ;
  wire \m_payload_i_reg[32]_0 ;
  wire m_valid_i_i_1__0_n_0;
  wire m_valid_i_i_2__0_n_0;
  wire [32:32]mr_axi_awaddr;
  wire mr_axi_awvalid;
  wire [1:0]out;
  wire [0:0]p_0_in;
  wire [34:0]\s_axi_awprot[2] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wvalid;
  wire s_ready_i_i_2_n_0;
  wire s_ready_i_reg_0;
  wire sr_axi_awready;
  wire w_match;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_onehot_gen_write.w_state[0]_i_1 
       (.I0(out[1]),
        .I1(mr_axi_awaddr),
        .I2(mr_axi_awvalid),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    \FSM_onehot_gen_write.w_state[1]_i_1 
       (.I0(mr_axi_awvalid),
        .I1(mr_axi_awaddr),
        .I2(out[1]),
        .I3(out[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_gen_write.w_state[2]_i_4 
       (.I0(mr_axi_awvalid),
        .I1(mr_axi_awaddr),
        .O(\gen_axilite.gen_write.s_axi_bvalid_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(p_0_in),
        .R(aresetn));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    \gen_axilite.gen_write.s_axi_awready_i_i_1 
       (.I0(s_axi_wvalid),
        .I1(out[1]),
        .I2(mr_axi_awvalid),
        .I3(mr_axi_awaddr),
        .I4(err_bvalid),
        .I5(err_wready),
        .O(\gen_axilite.gen_write.s_axi_awready_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(\gen_write.aw_cnt[2]_i_2_n_0 ),
        .I1(\gen_write.aw_cnt_reg[5]_1 [0]),
        .I2(\gen_write.aw_cnt_reg[5]_1 [1]),
        .O(\gen_write.aw_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5]_1 [2]),
        .I1(\gen_write.aw_cnt[2]_i_2_n_0 ),
        .I2(\gen_write.aw_cnt_reg[5]_1 [0]),
        .I3(\gen_write.aw_cnt_reg[5]_1 [1]),
        .O(\gen_write.aw_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \gen_write.aw_cnt[2]_i_2 
       (.I0(\m_payload_i_reg[32]_0 ),
        .I1(s_axi_awvalid),
        .I2(\gen_write.aw_cnt_reg[5]_1 [5]),
        .I3(sr_axi_awready),
        .I4(\gen_write.aw_cnt_reg[4] ),
        .O(\gen_write.aw_cnt[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .I1(\gen_write.aw_cnt_reg[5]_1 [2]),
        .I2(\gen_write.aw_cnt_reg[5]_1 [3]),
        .O(\gen_write.aw_cnt_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5]_1 [4]),
        .I1(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .I2(\gen_write.aw_cnt_reg[5]_1 [3]),
        .I3(\gen_write.aw_cnt_reg[5]_1 [2]),
        .O(\gen_write.aw_cnt_reg[5] [3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(s_axi_bready),
        .I1(m_axi_bvalid),
        .I2(\gen_write.aw_cnt_reg[4]_0 ),
        .I3(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .O(\gen_write.aw_cnt_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(\gen_write.aw_cnt_reg[5]_1 [5]),
        .I1(\gen_write.aw_cnt_reg[5]_1 [4]),
        .I2(\gen_write.aw_cnt_reg[5]_1 [2]),
        .I3(\gen_write.aw_cnt_reg[5]_1 [3]),
        .I4(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .O(\gen_write.aw_cnt_reg[5] [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(sr_axi_awready),
        .I1(\gen_write.aw_cnt_reg[5]_1 [5]),
        .I2(s_axi_awvalid),
        .I3(\m_payload_i_reg[32]_0 ),
        .O(\gen_write.aw_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000008EEEEEEEF)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(\gen_write.aw_cnt_reg[5]_1 [0]),
        .I1(\gen_write.aw_cnt_reg[5]_1 [1]),
        .I2(\gen_write.aw_cnt_reg[4] ),
        .I3(\gen_write.aw_cnt[5]_i_7_n_0 ),
        .I4(\m_payload_i_reg[32]_0 ),
        .I5(\gen_write.aw_cnt_reg[5]_1 [2]),
        .O(\gen_write.aw_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_write.aw_cnt[5]_i_7 
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg[5]_1 [5]),
        .I2(sr_axi_awready),
        .O(\gen_write.aw_cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    m_axi_awvalid_INST_0
       (.I0(out[1]),
        .I1(out[0]),
        .I2(mr_axi_awaddr),
        .I3(mr_axi_awvalid),
        .O(m_axi_awvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1__0 
       (.I0(mr_axi_awvalid),
        .O(\m_payload_i[31]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1 
       (.I0(\m_payload_i_reg[32]_0 ),
        .O(w_match));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_payload_i[32]_i_2 
       (.I0(\m_payload_i[32]_i_3_n_0 ),
        .I1(\m_payload_i[32]_i_4_n_0 ),
        .I2(\m_payload_i[32]_i_5_n_0 ),
        .I3(\m_payload_i[32]_i_6_n_0 ),
        .I4(\m_payload_i[32]_i_7_n_0 ),
        .O(\m_payload_i_reg[32]_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \m_payload_i[32]_i_3 
       (.I0(\s_axi_awprot[2] [31]),
        .I1(\s_axi_awprot[2] [28]),
        .I2(\s_axi_awprot[2] [26]),
        .I3(\s_axi_awprot[2] [19]),
        .O(\m_payload_i[32]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_4 
       (.I0(\s_axi_awprot[2] [21]),
        .I1(\s_axi_awprot[2] [16]),
        .I2(\s_axi_awprot[2] [29]),
        .I3(\s_axi_awprot[2] [14]),
        .O(\m_payload_i[32]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_5 
       (.I0(\s_axi_awprot[2] [27]),
        .I1(\s_axi_awprot[2] [24]),
        .I2(\s_axi_awprot[2] [12]),
        .I3(\s_axi_awprot[2] [13]),
        .O(\m_payload_i[32]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_6 
       (.I0(\s_axi_awprot[2] [17]),
        .I1(\s_axi_awprot[2] [15]),
        .I2(\s_axi_awprot[2] [22]),
        .I3(\s_axi_awprot[2] [20]),
        .O(\m_payload_i[32]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \m_payload_i[32]_i_7 
       (.I0(\s_axi_awprot[2] [23]),
        .I1(\s_axi_awprot[2] [25]),
        .I2(\s_axi_awprot[2] [18]),
        .O(\m_payload_i[32]_i_7_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [0]),
        .Q(\m_axi_awprot[2] [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [10]),
        .Q(\m_axi_awprot[2] [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [11]),
        .Q(\m_axi_awprot[2] [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [12]),
        .Q(\m_axi_awprot[2] [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [13]),
        .Q(\m_axi_awprot[2] [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [14]),
        .Q(\m_axi_awprot[2] [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [15]),
        .Q(\m_axi_awprot[2] [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [16]),
        .Q(\m_axi_awprot[2] [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [17]),
        .Q(\m_axi_awprot[2] [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [18]),
        .Q(\m_axi_awprot[2] [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [19]),
        .Q(\m_axi_awprot[2] [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [1]),
        .Q(\m_axi_awprot[2] [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [20]),
        .Q(\m_axi_awprot[2] [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [21]),
        .Q(\m_axi_awprot[2] [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [22]),
        .Q(\m_axi_awprot[2] [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [23]),
        .Q(\m_axi_awprot[2] [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [24]),
        .Q(\m_axi_awprot[2] [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [25]),
        .Q(\m_axi_awprot[2] [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [26]),
        .Q(\m_axi_awprot[2] [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [27]),
        .Q(\m_axi_awprot[2] [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [28]),
        .Q(\m_axi_awprot[2] [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [29]),
        .Q(\m_axi_awprot[2] [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [2]),
        .Q(\m_axi_awprot[2] [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [30]),
        .Q(\m_axi_awprot[2] [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [31]),
        .Q(\m_axi_awprot[2] [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(w_match),
        .Q(mr_axi_awaddr),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [32]),
        .Q(\m_axi_awprot[2] [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [33]),
        .Q(\m_axi_awprot[2] [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [34]),
        .Q(\m_axi_awprot[2] [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [3]),
        .Q(\m_axi_awprot[2] [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [4]),
        .Q(\m_axi_awprot[2] [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [5]),
        .Q(\m_axi_awprot[2] [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [6]),
        .Q(\m_axi_awprot[2] [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [7]),
        .Q(\m_axi_awprot[2] [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [8]),
        .Q(\m_axi_awprot[2] [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_awprot[2] [9]),
        .Q(\m_axi_awprot[2] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1D11)) 
    m_valid_i_i_1__0
       (.I0(m_valid_i_i_2__0_n_0),
        .I1(sr_axi_awready),
        .I2(\gen_write.aw_cnt_reg[5]_1 [5]),
        .I3(s_axi_awvalid),
        .O(m_valid_i_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h11400040)) 
    m_valid_i_i_2__0
       (.I0(out[0]),
        .I1(mr_axi_awaddr),
        .I2(m_axi_awready),
        .I3(out[1]),
        .I4(err_wready),
        .O(m_valid_i_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(mr_axi_awvalid),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(\gen_write.aw_cnt_reg[5]_1 [5]),
        .O(s_axi_awready));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_i_1
       (.I0(p_0_in),
        .O(s_ready_i_reg_0));
  LUT5 #(
    .INIT(32'hFD0DFFFF)) 
    s_ready_i_i_2
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg[5]_1 [5]),
        .I2(mr_axi_awvalid),
        .I3(m_valid_i_i_2__0_n_0),
        .I4(\aresetn_d_reg[1] ),
        .O(s_ready_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_2_n_0),
        .Q(sr_axi_awready),
        .R(s_ready_i_reg_0));
endmodule

(* CHECK_LICENSE_TYPE = "shell_s01_mmu_0,axi_mmu_v2_1_14_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_14_top,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN shell_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN shell_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN shell_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BASE_ADDR = "128'b00000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000" *) 
  (* C_DEST = "2'b00" *) 
  (* C_DEST_WIDTH = "1" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SUPPORTS_READ = "2'b11" *) 
  (* C_M_AXI_SUPPORTS_WRITE = "2'b11" *) 
  (* C_NUM_RANGES = "2" *) 
  (* C_PREFIX = "2'b00" *) 
  (* C_PREFIX_WIDTH = "1" *) 
  (* C_RANGE_SIZE = "64'b0000000000000000000000000000110000000000000000000000000000001100" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_SUPPORTS_READ = "1" *) 
  (* C_S_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_USES_DEST = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_NUM_RANGES_LOG = "1" *) 
  (* R_DECERR = "2'b11" *) 
  (* R_IDLE = "2'b00" *) 
  (* R_PENDING = "2'b01" *) 
  (* W_DECERR = "2'b11" *) 
  (* W_IDLE = "2'b00" *) 
  (* W_PENDING = "2'b01" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_14_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
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
