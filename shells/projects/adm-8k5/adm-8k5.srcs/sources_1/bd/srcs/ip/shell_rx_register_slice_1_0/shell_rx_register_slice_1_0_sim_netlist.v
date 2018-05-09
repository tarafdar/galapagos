// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu May  3 12:05:55 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /nfs/ug/thesis/thesis0/pc/Graham/galapagos/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rx_register_slice_1_0/shell_rx_register_slice_1_0_sim_netlist.v
// Design      : shell_rx_register_slice_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shell_rx_register_slice_1_0,axis_register_slice_v1_1_16_axis_register_slice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_register_slice_v1_1_16_axis_register_slice,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module shell_rx_register_slice_1_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA undef" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [7:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA undef" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire NLW_inst_s_axis_tready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011010" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_NUM_SLR_CROSSINGS = "0" *) 
  (* C_PIPELINES_MASTER = "0" *) 
  (* C_PIPELINES_MIDDLE = "0" *) 
  (* C_PIPELINES_SLAVE = "0" *) 
  (* C_REG_CONFIG = "10" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_TPAYLOAD_WIDTH = "73" *) 
  shell_rx_register_slice_1_0_axis_register_slice_v1_1_16_axis_register_slice inst
       (.aclk(aclk),
        .aclk2x(1'b0),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(1'b1),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[7:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(NLW_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011010" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) (* C_FAMILY = "kintexu" *) 
(* C_NUM_SLR_CROSSINGS = "0" *) (* C_PIPELINES_MASTER = "0" *) (* C_PIPELINES_MIDDLE = "0" *) 
(* C_PIPELINES_SLAVE = "0" *) (* C_REG_CONFIG = "10" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* ORIG_REF_NAME = "axis_register_slice_v1_1_16_axis_register_slice" *) (* P_TPAYLOAD_WIDTH = "73" *) 
module shell_rx_register_slice_1_0_axis_register_slice_v1_1_16_axis_register_slice
   (aclk,
    aclk2x,
    aresetn,
    aclken,
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
    m_axis_tuser);
  input aclk;
  input aclk2x;
  input aresetn;
  input aclken;
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

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aclken;
  wire [63:0]m_axis_tdata;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

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
  assign s_axis_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  shell_rx_register_slice_1_0_axis_register_slice_v1_1_16_axisc_register_slice axisc_register_slice_0
       (.D({s_axis_tlast,s_axis_tkeep,s_axis_tdata}),
        .Q({m_axis_tlast,m_axis_tkeep,m_axis_tdata}),
        .aclk(aclk),
        .aclken(aclken),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_16_axisc_register_slice" *) 
module shell_rx_register_slice_1_0_axis_register_slice_v1_1_16_axisc_register_slice
   (Q,
    m_axis_tvalid,
    aclken,
    D,
    aclk,
    s_axis_tvalid);
  output [72:0]Q;
  output m_axis_tvalid;
  input aclken;
  input [72:0]D;
  input aclk;
  input s_axis_tvalid;

  wire [72:0]D;
  wire [72:0]Q;
  wire aclk;
  wire aclken;
  wire m_axis_tvalid;
  wire s_axis_tvalid;

  FDRE #(
    .INIT(1'b0)) 
    \NO_READY.m_valid_r_reg 
       (.C(aclk),
        .CE(aclken),
        .D(s_axis_tvalid),
        .Q(m_axis_tvalid),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[10] 
       (.C(aclk),
        .CE(aclken),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[11] 
       (.C(aclk),
        .CE(aclken),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[12] 
       (.C(aclk),
        .CE(aclken),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[13] 
       (.C(aclk),
        .CE(aclken),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[14] 
       (.C(aclk),
        .CE(aclken),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[15] 
       (.C(aclk),
        .CE(aclken),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[16] 
       (.C(aclk),
        .CE(aclken),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[17] 
       (.C(aclk),
        .CE(aclken),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[18] 
       (.C(aclk),
        .CE(aclken),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[19] 
       (.C(aclk),
        .CE(aclken),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[20] 
       (.C(aclk),
        .CE(aclken),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[21] 
       (.C(aclk),
        .CE(aclken),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[22] 
       (.C(aclk),
        .CE(aclken),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[23] 
       (.C(aclk),
        .CE(aclken),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[24] 
       (.C(aclk),
        .CE(aclken),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[25] 
       (.C(aclk),
        .CE(aclken),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[26] 
       (.C(aclk),
        .CE(aclken),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[27] 
       (.C(aclk),
        .CE(aclken),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[28] 
       (.C(aclk),
        .CE(aclken),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[29] 
       (.C(aclk),
        .CE(aclken),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[30] 
       (.C(aclk),
        .CE(aclken),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[31] 
       (.C(aclk),
        .CE(aclken),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[32] 
       (.C(aclk),
        .CE(aclken),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[33] 
       (.C(aclk),
        .CE(aclken),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[34] 
       (.C(aclk),
        .CE(aclken),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[35] 
       (.C(aclk),
        .CE(aclken),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[36] 
       (.C(aclk),
        .CE(aclken),
        .D(D[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[37] 
       (.C(aclk),
        .CE(aclken),
        .D(D[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[38] 
       (.C(aclk),
        .CE(aclken),
        .D(D[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[39] 
       (.C(aclk),
        .CE(aclken),
        .D(D[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[40] 
       (.C(aclk),
        .CE(aclken),
        .D(D[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[41] 
       (.C(aclk),
        .CE(aclken),
        .D(D[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[42] 
       (.C(aclk),
        .CE(aclken),
        .D(D[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[43] 
       (.C(aclk),
        .CE(aclken),
        .D(D[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[44] 
       (.C(aclk),
        .CE(aclken),
        .D(D[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[45] 
       (.C(aclk),
        .CE(aclken),
        .D(D[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[46] 
       (.C(aclk),
        .CE(aclken),
        .D(D[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[47] 
       (.C(aclk),
        .CE(aclken),
        .D(D[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[48] 
       (.C(aclk),
        .CE(aclken),
        .D(D[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[49] 
       (.C(aclk),
        .CE(aclken),
        .D(D[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[4] 
       (.C(aclk),
        .CE(aclken),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[50] 
       (.C(aclk),
        .CE(aclken),
        .D(D[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[51] 
       (.C(aclk),
        .CE(aclken),
        .D(D[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[52] 
       (.C(aclk),
        .CE(aclken),
        .D(D[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[53] 
       (.C(aclk),
        .CE(aclken),
        .D(D[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[54] 
       (.C(aclk),
        .CE(aclken),
        .D(D[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[55] 
       (.C(aclk),
        .CE(aclken),
        .D(D[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[56] 
       (.C(aclk),
        .CE(aclken),
        .D(D[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[57] 
       (.C(aclk),
        .CE(aclken),
        .D(D[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[58] 
       (.C(aclk),
        .CE(aclken),
        .D(D[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[59] 
       (.C(aclk),
        .CE(aclken),
        .D(D[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[5] 
       (.C(aclk),
        .CE(aclken),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[60] 
       (.C(aclk),
        .CE(aclken),
        .D(D[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[61] 
       (.C(aclk),
        .CE(aclken),
        .D(D[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[62] 
       (.C(aclk),
        .CE(aclken),
        .D(D[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[63] 
       (.C(aclk),
        .CE(aclken),
        .D(D[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[64] 
       (.C(aclk),
        .CE(aclken),
        .D(D[64]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[65] 
       (.C(aclk),
        .CE(aclken),
        .D(D[65]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[66] 
       (.C(aclk),
        .CE(aclken),
        .D(D[66]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[67] 
       (.C(aclk),
        .CE(aclken),
        .D(D[67]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[68] 
       (.C(aclk),
        .CE(aclken),
        .D(D[68]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[69] 
       (.C(aclk),
        .CE(aclken),
        .D(D[69]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[6] 
       (.C(aclk),
        .CE(aclken),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[70] 
       (.C(aclk),
        .CE(aclken),
        .D(D[70]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[71] 
       (.C(aclk),
        .CE(aclken),
        .D(D[71]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[72] 
       (.C(aclk),
        .CE(aclken),
        .D(D[72]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[7] 
       (.C(aclk),
        .CE(aclken),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[8] 
       (.C(aclk),
        .CE(aclken),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[9] 
       (.C(aclk),
        .CE(aclken),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
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
