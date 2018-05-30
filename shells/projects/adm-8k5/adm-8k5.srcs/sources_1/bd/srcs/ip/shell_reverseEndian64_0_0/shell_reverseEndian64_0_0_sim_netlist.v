// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue May 15 12:00:20 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_reverseEndian64_0_0/shell_reverseEndian64_0_0_sim_netlist.v
// Design      : shell_reverseEndian64_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shell_reverseEndian64_0_0,reverseEndian64,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "reverseEndian64,Vivado 2018.1" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module shell_reverseEndian64_0_0
   (ap_clk,
    ap_rst_n,
    stream_in_TVALID,
    stream_in_TREADY,
    stream_in_TDATA,
    stream_in_TKEEP,
    stream_in_TLAST,
    stream_out_TVALID,
    stream_out_TREADY,
    stream_out_TDATA,
    stream_out_TKEEP,
    stream_out_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_in:stream_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TVALID" *) input stream_in_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TREADY" *) output stream_in_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDATA" *) input [63:0]stream_in_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TKEEP" *) input [7:0]stream_in_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_in, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out" *) input [0:0]stream_in_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TVALID" *) output stream_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TREADY" *) input stream_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDATA" *) output [63:0]stream_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TKEEP" *) output [7:0]stream_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out" *) output [0:0]stream_out_TLAST;

  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]stream_in_TDATA;
  wire [7:0]stream_in_TKEEP;
  wire [0:0]stream_in_TLAST;
  wire stream_in_TREADY;
  wire stream_in_TVALID;
  wire [63:0]stream_out_TDATA;
  wire [7:0]stream_out_TKEEP;
  wire [0:0]stream_out_TLAST;
  wire stream_out_TREADY;
  wire stream_out_TVALID;

  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  shell_reverseEndian64_0_0_reverseEndian64 inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .stream_in_TDATA(stream_in_TDATA),
        .stream_in_TKEEP(stream_in_TKEEP),
        .stream_in_TLAST(stream_in_TLAST),
        .stream_in_TREADY(stream_in_TREADY),
        .stream_in_TVALID(stream_in_TVALID),
        .stream_out_TDATA(stream_out_TDATA),
        .stream_out_TKEEP(stream_out_TKEEP),
        .stream_out_TLAST(stream_out_TLAST),
        .stream_out_TREADY(stream_out_TREADY),
        .stream_out_TVALID(stream_out_TVALID));
endmodule

(* ORIG_REF_NAME = "reverseEndian64" *) (* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) 
(* ap_ST_fsm_state3 = "4'b0100" *) (* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module shell_reverseEndian64_0_0_reverseEndian64
   (ap_clk,
    ap_rst_n,
    stream_in_TDATA,
    stream_in_TVALID,
    stream_in_TREADY,
    stream_in_TLAST,
    stream_in_TKEEP,
    stream_out_TDATA,
    stream_out_TVALID,
    stream_out_TREADY,
    stream_out_TLAST,
    stream_out_TKEEP);
  input ap_clk;
  input ap_rst_n;
  input [63:0]stream_in_TDATA;
  input stream_in_TVALID;
  output stream_in_TREADY;
  input [0:0]stream_in_TLAST;
  input [7:0]stream_in_TKEEP;
  output [63:0]stream_out_TDATA;
  output stream_out_TVALID;
  input stream_out_TREADY;
  output [0:0]stream_out_TLAST;
  output [7:0]stream_out_TKEEP;

  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire \ap_CS_fsm_reg_n_0_[3] ;
  wire ap_CS_fsm_state3;
  wire [3:1]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire p_82_in;
  wire [63:0]stream_in_TDATA;
  wire [7:0]stream_in_TKEEP;
  wire [0:0]stream_in_TLAST;
  wire stream_in_TREADY;
  wire stream_in_TVALID;
  wire stream_in_V_data_V_0_ack_in;
  wire stream_in_V_data_V_0_load_B;
  wire [63:0]stream_in_V_data_V_0_payload_A;
  wire \stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ;
  wire [63:0]stream_in_V_data_V_0_payload_B;
  wire stream_in_V_data_V_0_sel;
  wire stream_in_V_data_V_0_sel_rd_i_1_n_0;
  wire stream_in_V_data_V_0_sel_wr;
  wire stream_in_V_data_V_0_sel_wr_i_1_n_0;
  wire \stream_in_V_data_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_V_data_V_0_state[1]_i_1_n_0 ;
  wire \stream_in_V_data_V_0_state_reg_n_0_[0] ;
  wire stream_in_V_last_V_0_ack_in;
  wire stream_in_V_last_V_0_payload_A;
  wire \stream_in_V_last_V_0_payload_A[0]_i_1_n_0 ;
  wire stream_in_V_last_V_0_payload_B;
  wire \stream_in_V_last_V_0_payload_B[0]_i_1_n_0 ;
  wire stream_in_V_last_V_0_sel;
  wire stream_in_V_last_V_0_sel_rd_i_1_n_0;
  wire stream_in_V_last_V_0_sel_wr;
  wire stream_in_V_last_V_0_sel_wr_i_1_n_0;
  wire \stream_in_V_last_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_V_last_V_0_state[1]_i_1_n_0 ;
  wire \stream_in_V_last_V_0_state_reg_n_0_[0] ;
  wire [7:0]stream_in_V_tkeep_V_0_data_out;
  wire stream_in_V_tkeep_V_0_load_B;
  wire [7:0]stream_in_V_tkeep_V_0_payload_A;
  wire \stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ;
  wire [7:0]stream_in_V_tkeep_V_0_payload_B;
  wire stream_in_V_tkeep_V_0_sel;
  wire stream_in_V_tkeep_V_0_sel_rd_i_1_n_0;
  wire stream_in_V_tkeep_V_0_sel_wr;
  wire stream_in_V_tkeep_V_0_sel_wr_i_1_n_0;
  wire \stream_in_V_tkeep_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_V_tkeep_V_0_state[1]_i_2_n_0 ;
  wire \stream_in_V_tkeep_V_0_state_reg_n_0_[0] ;
  wire [63:0]stream_out_TDATA;
  wire [7:0]stream_out_TKEEP;
  wire [0:0]stream_out_TLAST;
  wire stream_out_TREADY;
  wire stream_out_TVALID;
  wire stream_out_V_data_V_1_ack_in;
  wire stream_out_V_data_V_1_load_B;
  wire [63:0]stream_out_V_data_V_1_payload_A;
  wire \stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ;
  wire [63:0]stream_out_V_data_V_1_payload_B;
  wire stream_out_V_data_V_1_sel;
  wire stream_out_V_data_V_1_sel_rd_i_1_n_0;
  wire stream_out_V_data_V_1_sel_wr;
  wire stream_out_V_data_V_1_sel_wr_i_1_n_0;
  wire \stream_out_V_data_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_V_data_V_1_state[1]_i_1_n_0 ;
  wire \stream_out_V_data_V_1_state_reg_n_0_[0] ;
  wire stream_out_V_last_V_1_ack_in;
  wire stream_out_V_last_V_1_payload_A;
  wire \stream_out_V_last_V_1_payload_A[0]_i_1_n_0 ;
  wire stream_out_V_last_V_1_payload_B;
  wire \stream_out_V_last_V_1_payload_B[0]_i_1_n_0 ;
  wire stream_out_V_last_V_1_sel;
  wire stream_out_V_last_V_1_sel_rd_i_1_n_0;
  wire stream_out_V_last_V_1_sel_wr;
  wire stream_out_V_last_V_1_sel_wr_i_1_n_0;
  wire \stream_out_V_last_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_V_last_V_1_state[1]_i_1_n_0 ;
  wire stream_out_V_last_V_1_state_cmp_full;
  wire \stream_out_V_last_V_1_state_reg_n_0_[0] ;
  wire stream_out_V_tkeep_V_1_ack_in;
  wire stream_out_V_tkeep_V_1_load_B;
  wire [7:0]stream_out_V_tkeep_V_1_payload_A;
  wire \stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ;
  wire [7:0]stream_out_V_tkeep_V_1_payload_B;
  wire stream_out_V_tkeep_V_1_sel;
  wire stream_out_V_tkeep_V_1_sel_rd_i_1_n_0;
  wire stream_out_V_tkeep_V_1_sel_wr;
  wire stream_out_V_tkeep_V_1_sel_wr_i_1_n_0;
  wire \stream_out_V_tkeep_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_V_tkeep_V_1_state[1]_i_1_n_0 ;
  wire [63:0]x_V_fu_179_p9;

  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(stream_out_V_data_V_1_ack_in),
        .I1(\ap_CS_fsm_reg_n_0_[3] ),
        .I2(\ap_CS_fsm_reg_n_0_[1] ),
        .I3(ap_CS_fsm_state3),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAEEE)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[1] ),
        .I1(ap_CS_fsm_state3),
        .I2(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(stream_out_V_data_V_1_ack_in),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'h1100011100000111)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(\ap_CS_fsm_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg_n_0_[3] ),
        .I3(stream_out_V_data_V_1_ack_in),
        .I4(ap_CS_fsm_state3),
        .I5(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(\ap_CS_fsm_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_in_V_data_V_0_payload_A[63]_i_1 
       (.I0(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_V_data_V_0_ack_in),
        .I2(stream_in_V_data_V_0_sel_wr),
        .O(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ));
  FDRE \stream_in_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[0]),
        .Q(stream_in_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[10]),
        .Q(stream_in_V_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[11]),
        .Q(stream_in_V_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[12]),
        .Q(stream_in_V_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[13]),
        .Q(stream_in_V_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[14]),
        .Q(stream_in_V_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[15]),
        .Q(stream_in_V_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[16]),
        .Q(stream_in_V_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[17]),
        .Q(stream_in_V_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[18]),
        .Q(stream_in_V_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[19]),
        .Q(stream_in_V_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[1]),
        .Q(stream_in_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[20]),
        .Q(stream_in_V_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[21]),
        .Q(stream_in_V_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[22]),
        .Q(stream_in_V_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[23]),
        .Q(stream_in_V_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[24]),
        .Q(stream_in_V_data_V_0_payload_A[24]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[25]),
        .Q(stream_in_V_data_V_0_payload_A[25]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[26]),
        .Q(stream_in_V_data_V_0_payload_A[26]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[27]),
        .Q(stream_in_V_data_V_0_payload_A[27]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[28]),
        .Q(stream_in_V_data_V_0_payload_A[28]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[29]),
        .Q(stream_in_V_data_V_0_payload_A[29]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[2]),
        .Q(stream_in_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[30]),
        .Q(stream_in_V_data_V_0_payload_A[30]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[31]),
        .Q(stream_in_V_data_V_0_payload_A[31]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[32]),
        .Q(stream_in_V_data_V_0_payload_A[32]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[33]),
        .Q(stream_in_V_data_V_0_payload_A[33]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[34]),
        .Q(stream_in_V_data_V_0_payload_A[34]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[35]),
        .Q(stream_in_V_data_V_0_payload_A[35]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[36]),
        .Q(stream_in_V_data_V_0_payload_A[36]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[37]),
        .Q(stream_in_V_data_V_0_payload_A[37]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[38]),
        .Q(stream_in_V_data_V_0_payload_A[38]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[39]),
        .Q(stream_in_V_data_V_0_payload_A[39]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[3]),
        .Q(stream_in_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[40]),
        .Q(stream_in_V_data_V_0_payload_A[40]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[41]),
        .Q(stream_in_V_data_V_0_payload_A[41]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[42]),
        .Q(stream_in_V_data_V_0_payload_A[42]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[43]),
        .Q(stream_in_V_data_V_0_payload_A[43]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[44]),
        .Q(stream_in_V_data_V_0_payload_A[44]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[45]),
        .Q(stream_in_V_data_V_0_payload_A[45]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[46]),
        .Q(stream_in_V_data_V_0_payload_A[46]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[47]),
        .Q(stream_in_V_data_V_0_payload_A[47]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[48]),
        .Q(stream_in_V_data_V_0_payload_A[48]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[49]),
        .Q(stream_in_V_data_V_0_payload_A[49]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[4]),
        .Q(stream_in_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[50]),
        .Q(stream_in_V_data_V_0_payload_A[50]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[51]),
        .Q(stream_in_V_data_V_0_payload_A[51]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[52]),
        .Q(stream_in_V_data_V_0_payload_A[52]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[53]),
        .Q(stream_in_V_data_V_0_payload_A[53]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[54]),
        .Q(stream_in_V_data_V_0_payload_A[54]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[55]),
        .Q(stream_in_V_data_V_0_payload_A[55]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[56]),
        .Q(stream_in_V_data_V_0_payload_A[56]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[57]),
        .Q(stream_in_V_data_V_0_payload_A[57]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[58]),
        .Q(stream_in_V_data_V_0_payload_A[58]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[59]),
        .Q(stream_in_V_data_V_0_payload_A[59]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[5]),
        .Q(stream_in_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[60]),
        .Q(stream_in_V_data_V_0_payload_A[60]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[61]),
        .Q(stream_in_V_data_V_0_payload_A[61]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[62]),
        .Q(stream_in_V_data_V_0_payload_A[62]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[63]),
        .Q(stream_in_V_data_V_0_payload_A[63]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[6]),
        .Q(stream_in_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[7]),
        .Q(stream_in_V_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[8]),
        .Q(stream_in_V_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\stream_in_V_data_V_0_payload_A[63]_i_1_n_0 ),
        .D(stream_in_TDATA[9]),
        .Q(stream_in_V_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \stream_in_V_data_V_0_payload_B[63]_i_1 
       (.I0(stream_in_V_data_V_0_sel_wr),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(stream_in_V_data_V_0_ack_in),
        .O(stream_in_V_data_V_0_load_B));
  FDRE \stream_in_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[0]),
        .Q(stream_in_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[10]),
        .Q(stream_in_V_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[11]),
        .Q(stream_in_V_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[12]),
        .Q(stream_in_V_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[13]),
        .Q(stream_in_V_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[14]),
        .Q(stream_in_V_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[15]),
        .Q(stream_in_V_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[16]),
        .Q(stream_in_V_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[17]),
        .Q(stream_in_V_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[18]),
        .Q(stream_in_V_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[19]),
        .Q(stream_in_V_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[1]),
        .Q(stream_in_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[20]),
        .Q(stream_in_V_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[21]),
        .Q(stream_in_V_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[22]),
        .Q(stream_in_V_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[23]),
        .Q(stream_in_V_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[24]),
        .Q(stream_in_V_data_V_0_payload_B[24]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[25]),
        .Q(stream_in_V_data_V_0_payload_B[25]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[26]),
        .Q(stream_in_V_data_V_0_payload_B[26]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[27]),
        .Q(stream_in_V_data_V_0_payload_B[27]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[28]),
        .Q(stream_in_V_data_V_0_payload_B[28]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[29]),
        .Q(stream_in_V_data_V_0_payload_B[29]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[2]),
        .Q(stream_in_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[30]),
        .Q(stream_in_V_data_V_0_payload_B[30]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[31]),
        .Q(stream_in_V_data_V_0_payload_B[31]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[32]),
        .Q(stream_in_V_data_V_0_payload_B[32]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[33]),
        .Q(stream_in_V_data_V_0_payload_B[33]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[34]),
        .Q(stream_in_V_data_V_0_payload_B[34]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[35]),
        .Q(stream_in_V_data_V_0_payload_B[35]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[36]),
        .Q(stream_in_V_data_V_0_payload_B[36]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[37]),
        .Q(stream_in_V_data_V_0_payload_B[37]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[38]),
        .Q(stream_in_V_data_V_0_payload_B[38]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[39]),
        .Q(stream_in_V_data_V_0_payload_B[39]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[3]),
        .Q(stream_in_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[40]),
        .Q(stream_in_V_data_V_0_payload_B[40]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[41]),
        .Q(stream_in_V_data_V_0_payload_B[41]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[42]),
        .Q(stream_in_V_data_V_0_payload_B[42]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[43]),
        .Q(stream_in_V_data_V_0_payload_B[43]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[44]),
        .Q(stream_in_V_data_V_0_payload_B[44]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[45]),
        .Q(stream_in_V_data_V_0_payload_B[45]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[46]),
        .Q(stream_in_V_data_V_0_payload_B[46]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[47]),
        .Q(stream_in_V_data_V_0_payload_B[47]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[48]),
        .Q(stream_in_V_data_V_0_payload_B[48]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[49]),
        .Q(stream_in_V_data_V_0_payload_B[49]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[4]),
        .Q(stream_in_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[50]),
        .Q(stream_in_V_data_V_0_payload_B[50]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[51]),
        .Q(stream_in_V_data_V_0_payload_B[51]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[52]),
        .Q(stream_in_V_data_V_0_payload_B[52]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[53]),
        .Q(stream_in_V_data_V_0_payload_B[53]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[54]),
        .Q(stream_in_V_data_V_0_payload_B[54]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[55]),
        .Q(stream_in_V_data_V_0_payload_B[55]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[56]),
        .Q(stream_in_V_data_V_0_payload_B[56]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[57]),
        .Q(stream_in_V_data_V_0_payload_B[57]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[58]),
        .Q(stream_in_V_data_V_0_payload_B[58]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[59]),
        .Q(stream_in_V_data_V_0_payload_B[59]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[5]),
        .Q(stream_in_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[60]),
        .Q(stream_in_V_data_V_0_payload_B[60]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[61]),
        .Q(stream_in_V_data_V_0_payload_B[61]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[62]),
        .Q(stream_in_V_data_V_0_payload_B[62]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[63]),
        .Q(stream_in_V_data_V_0_payload_B[63]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[6]),
        .Q(stream_in_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[7]),
        .Q(stream_in_V_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[8]),
        .Q(stream_in_V_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \stream_in_V_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(stream_in_V_data_V_0_load_B),
        .D(stream_in_TDATA[9]),
        .Q(stream_in_V_data_V_0_payload_B[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    stream_in_V_data_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state3),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .I3(stream_in_V_data_V_0_sel),
        .O(stream_in_V_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_V_data_V_0_sel_rd_i_1_n_0),
        .Q(stream_in_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_in_V_data_V_0_sel_wr_i_1
       (.I0(stream_in_V_data_V_0_ack_in),
        .I1(stream_in_TVALID),
        .I2(stream_in_V_data_V_0_sel_wr),
        .O(stream_in_V_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_V_data_V_0_sel_wr_i_1_n_0),
        .Q(stream_in_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA820A8A0A8A0A8A0)) 
    \stream_in_V_data_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(stream_in_V_data_V_0_ack_in),
        .I2(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(stream_in_TVALID),
        .I4(ap_CS_fsm_state3),
        .I5(stream_out_V_data_V_1_ack_in),
        .O(\stream_in_V_data_V_0_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F88FFFF)) 
    \stream_in_V_data_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(stream_out_V_data_V_1_ack_in),
        .I2(stream_in_TVALID),
        .I3(stream_in_V_data_V_0_ack_in),
        .I4(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .O(\stream_in_V_data_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_data_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_data_V_0_state[1]_i_1_n_0 ),
        .Q(stream_in_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \stream_in_V_last_V_0_payload_A[0]_i_1 
       (.I0(stream_in_TLAST),
        .I1(\stream_in_V_last_V_0_state_reg_n_0_[0] ),
        .I2(stream_in_V_last_V_0_ack_in),
        .I3(stream_in_V_last_V_0_sel_wr),
        .I4(stream_in_V_last_V_0_payload_A),
        .O(\stream_in_V_last_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \stream_in_V_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_last_V_0_payload_A[0]_i_1_n_0 ),
        .Q(stream_in_V_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \stream_in_V_last_V_0_payload_B[0]_i_1 
       (.I0(stream_in_TLAST),
        .I1(stream_in_V_last_V_0_sel_wr),
        .I2(\stream_in_V_last_V_0_state_reg_n_0_[0] ),
        .I3(stream_in_V_last_V_0_ack_in),
        .I4(stream_in_V_last_V_0_payload_B),
        .O(\stream_in_V_last_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \stream_in_V_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_last_V_0_payload_B[0]_i_1_n_0 ),
        .Q(stream_in_V_last_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    stream_in_V_last_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state3),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .I3(\stream_in_V_last_V_0_state_reg_n_0_[0] ),
        .I4(stream_in_V_last_V_0_sel),
        .O(stream_in_V_last_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_V_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_V_last_V_0_sel_rd_i_1_n_0),
        .Q(stream_in_V_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_in_V_last_V_0_sel_wr_i_1
       (.I0(stream_in_TVALID),
        .I1(stream_in_V_last_V_0_ack_in),
        .I2(stream_in_V_last_V_0_sel_wr),
        .O(stream_in_V_last_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_V_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_V_last_V_0_sel_wr_i_1_n_0),
        .Q(stream_in_V_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \stream_in_V_last_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(stream_in_V_last_V_0_ack_in),
        .I2(\stream_in_V_last_V_0_state_reg_n_0_[0] ),
        .I3(stream_in_TVALID),
        .I4(p_82_in),
        .O(\stream_in_V_last_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3333333FBBBBBBB)) 
    \stream_in_V_last_V_0_state[1]_i_1 
       (.I0(stream_in_V_last_V_0_ack_in),
        .I1(\stream_in_V_last_V_0_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .I3(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I4(ap_CS_fsm_state3),
        .I5(stream_in_TVALID),
        .O(\stream_in_V_last_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_V_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_last_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_V_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_V_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_last_V_0_state[1]_i_1_n_0 ),
        .Q(stream_in_V_last_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_in_V_tkeep_V_0_payload_A[7]_i_1 
       (.I0(\stream_in_V_tkeep_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_TREADY),
        .I2(stream_in_V_tkeep_V_0_sel_wr),
        .O(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[0]),
        .Q(stream_in_V_tkeep_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[1]),
        .Q(stream_in_V_tkeep_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[2]),
        .Q(stream_in_V_tkeep_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[3]),
        .Q(stream_in_V_tkeep_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[4]),
        .Q(stream_in_V_tkeep_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[5]),
        .Q(stream_in_V_tkeep_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[6]),
        .Q(stream_in_V_tkeep_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\stream_in_V_tkeep_V_0_payload_A[7]_i_1_n_0 ),
        .D(stream_in_TKEEP[7]),
        .Q(stream_in_V_tkeep_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \stream_in_V_tkeep_V_0_payload_B[7]_i_1 
       (.I0(stream_in_V_tkeep_V_0_sel_wr),
        .I1(\stream_in_V_tkeep_V_0_state_reg_n_0_[0] ),
        .I2(stream_in_TREADY),
        .O(stream_in_V_tkeep_V_0_load_B));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[0]),
        .Q(stream_in_V_tkeep_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[1]),
        .Q(stream_in_V_tkeep_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[2]),
        .Q(stream_in_V_tkeep_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[3]),
        .Q(stream_in_V_tkeep_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[4]),
        .Q(stream_in_V_tkeep_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[5]),
        .Q(stream_in_V_tkeep_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[6]),
        .Q(stream_in_V_tkeep_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \stream_in_V_tkeep_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_in_V_tkeep_V_0_load_B),
        .D(stream_in_TKEEP[7]),
        .Q(stream_in_V_tkeep_V_0_payload_B[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    stream_in_V_tkeep_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state3),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .I3(\stream_in_V_tkeep_V_0_state_reg_n_0_[0] ),
        .I4(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_V_tkeep_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_V_tkeep_V_0_sel_rd_i_1_n_0),
        .Q(stream_in_V_tkeep_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    stream_in_V_tkeep_V_0_sel_wr_i_1
       (.I0(stream_in_TVALID),
        .I1(stream_in_TREADY),
        .I2(stream_in_V_tkeep_V_0_sel_wr),
        .O(stream_in_V_tkeep_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_V_tkeep_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_V_tkeep_V_0_sel_wr_i_1_n_0),
        .Q(stream_in_V_tkeep_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \stream_in_V_tkeep_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(stream_in_TREADY),
        .I2(\stream_in_V_tkeep_V_0_state_reg_n_0_[0] ),
        .I3(stream_in_TVALID),
        .I4(p_82_in),
        .O(\stream_in_V_tkeep_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_in_V_tkeep_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \stream_in_V_tkeep_V_0_state[1]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .I3(stream_in_TVALID),
        .I4(stream_in_TREADY),
        .I5(\stream_in_V_tkeep_V_0_state_reg_n_0_[0] ),
        .O(\stream_in_V_tkeep_V_0_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_V_tkeep_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_tkeep_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_V_tkeep_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_V_tkeep_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_V_tkeep_V_0_state[1]_i_2_n_0 ),
        .Q(stream_in_TREADY),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[0]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[0]),
        .I1(stream_out_V_data_V_1_payload_A[0]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[10]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[10]),
        .I1(stream_out_V_data_V_1_payload_A[10]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[11]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[11]),
        .I1(stream_out_V_data_V_1_payload_A[11]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[12]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[12]),
        .I1(stream_out_V_data_V_1_payload_A[12]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[13]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[13]),
        .I1(stream_out_V_data_V_1_payload_A[13]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[14]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[14]),
        .I1(stream_out_V_data_V_1_payload_A[14]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[15]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[15]),
        .I1(stream_out_V_data_V_1_payload_A[15]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[16]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[16]),
        .I1(stream_out_V_data_V_1_payload_A[16]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[17]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[17]),
        .I1(stream_out_V_data_V_1_payload_A[17]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[18]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[18]),
        .I1(stream_out_V_data_V_1_payload_A[18]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[19]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[19]),
        .I1(stream_out_V_data_V_1_payload_A[19]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[1]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[1]),
        .I1(stream_out_V_data_V_1_payload_A[1]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[20]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[20]),
        .I1(stream_out_V_data_V_1_payload_A[20]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[21]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[21]),
        .I1(stream_out_V_data_V_1_payload_A[21]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[22]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[22]),
        .I1(stream_out_V_data_V_1_payload_A[22]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[23]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[23]),
        .I1(stream_out_V_data_V_1_payload_A[23]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[24]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[24]),
        .I1(stream_out_V_data_V_1_payload_A[24]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[25]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[25]),
        .I1(stream_out_V_data_V_1_payload_A[25]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[26]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[26]),
        .I1(stream_out_V_data_V_1_payload_A[26]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[27]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[27]),
        .I1(stream_out_V_data_V_1_payload_A[27]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[28]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[28]),
        .I1(stream_out_V_data_V_1_payload_A[28]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[29]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[29]),
        .I1(stream_out_V_data_V_1_payload_A[29]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[2]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[2]),
        .I1(stream_out_V_data_V_1_payload_A[2]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[30]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[30]),
        .I1(stream_out_V_data_V_1_payload_A[30]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[31]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[31]),
        .I1(stream_out_V_data_V_1_payload_A[31]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[32]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[32]),
        .I1(stream_out_V_data_V_1_payload_A[32]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[33]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[33]),
        .I1(stream_out_V_data_V_1_payload_A[33]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[34]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[34]),
        .I1(stream_out_V_data_V_1_payload_A[34]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[35]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[35]),
        .I1(stream_out_V_data_V_1_payload_A[35]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[36]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[36]),
        .I1(stream_out_V_data_V_1_payload_A[36]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[37]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[37]),
        .I1(stream_out_V_data_V_1_payload_A[37]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[38]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[38]),
        .I1(stream_out_V_data_V_1_payload_A[38]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[39]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[39]),
        .I1(stream_out_V_data_V_1_payload_A[39]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[3]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[3]),
        .I1(stream_out_V_data_V_1_payload_A[3]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[40]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[40]),
        .I1(stream_out_V_data_V_1_payload_A[40]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[41]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[41]),
        .I1(stream_out_V_data_V_1_payload_A[41]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[42]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[42]),
        .I1(stream_out_V_data_V_1_payload_A[42]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[43]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[43]),
        .I1(stream_out_V_data_V_1_payload_A[43]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[44]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[44]),
        .I1(stream_out_V_data_V_1_payload_A[44]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[45]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[45]),
        .I1(stream_out_V_data_V_1_payload_A[45]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[46]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[46]),
        .I1(stream_out_V_data_V_1_payload_A[46]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[47]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[47]),
        .I1(stream_out_V_data_V_1_payload_A[47]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[48]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[48]),
        .I1(stream_out_V_data_V_1_payload_A[48]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[49]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[49]),
        .I1(stream_out_V_data_V_1_payload_A[49]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[4]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[4]),
        .I1(stream_out_V_data_V_1_payload_A[4]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[50]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[50]),
        .I1(stream_out_V_data_V_1_payload_A[50]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[51]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[51]),
        .I1(stream_out_V_data_V_1_payload_A[51]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[52]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[52]),
        .I1(stream_out_V_data_V_1_payload_A[52]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[53]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[53]),
        .I1(stream_out_V_data_V_1_payload_A[53]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[54]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[54]),
        .I1(stream_out_V_data_V_1_payload_A[54]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[55]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[55]),
        .I1(stream_out_V_data_V_1_payload_A[55]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[56]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[56]),
        .I1(stream_out_V_data_V_1_payload_A[56]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[57]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[57]),
        .I1(stream_out_V_data_V_1_payload_A[57]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[58]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[58]),
        .I1(stream_out_V_data_V_1_payload_A[58]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[59]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[59]),
        .I1(stream_out_V_data_V_1_payload_A[59]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[5]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[5]),
        .I1(stream_out_V_data_V_1_payload_A[5]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[60]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[60]),
        .I1(stream_out_V_data_V_1_payload_A[60]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[61]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[61]),
        .I1(stream_out_V_data_V_1_payload_A[61]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[62]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[62]),
        .I1(stream_out_V_data_V_1_payload_A[62]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[63]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[63]),
        .I1(stream_out_V_data_V_1_payload_A[63]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[6]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[6]),
        .I1(stream_out_V_data_V_1_payload_A[6]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[7]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[7]),
        .I1(stream_out_V_data_V_1_payload_A[7]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[8]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[8]),
        .I1(stream_out_V_data_V_1_payload_A[8]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TDATA[9]_INST_0 
       (.I0(stream_out_V_data_V_1_payload_B[9]),
        .I1(stream_out_V_data_V_1_payload_A[9]),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[0]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[0]),
        .I1(stream_out_V_tkeep_V_1_payload_A[0]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[1]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[1]),
        .I1(stream_out_V_tkeep_V_1_payload_A[1]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[2]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[2]),
        .I1(stream_out_V_tkeep_V_1_payload_A[2]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[3]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[3]),
        .I1(stream_out_V_tkeep_V_1_payload_A[3]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[4]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[4]),
        .I1(stream_out_V_tkeep_V_1_payload_A[4]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[5]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[5]),
        .I1(stream_out_V_tkeep_V_1_payload_A[5]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[6]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[6]),
        .I1(stream_out_V_tkeep_V_1_payload_A[6]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_TKEEP[7]_INST_0 
       (.I0(stream_out_V_tkeep_V_1_payload_B[7]),
        .I1(stream_out_V_tkeep_V_1_payload_A[7]),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_TKEEP[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_out_TLAST[0]_INST_0 
       (.I0(stream_out_V_last_V_1_payload_B),
        .I1(stream_out_V_last_V_1_sel),
        .I2(stream_out_V_last_V_1_payload_A),
        .O(stream_out_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[0]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[56]),
        .I1(stream_in_V_data_V_0_payload_A[56]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[10]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[50]),
        .I1(stream_in_V_data_V_0_payload_A[50]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[11]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[51]),
        .I1(stream_in_V_data_V_0_payload_A[51]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[12]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[52]),
        .I1(stream_in_V_data_V_0_payload_A[52]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[13]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[53]),
        .I1(stream_in_V_data_V_0_payload_A[53]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[14]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[54]),
        .I1(stream_in_V_data_V_0_payload_A[54]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[15]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[55]),
        .I1(stream_in_V_data_V_0_payload_A[55]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[16]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[40]),
        .I1(stream_in_V_data_V_0_payload_A[40]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[17]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[41]),
        .I1(stream_in_V_data_V_0_payload_A[41]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[18]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[42]),
        .I1(stream_in_V_data_V_0_payload_A[42]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[19]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[43]),
        .I1(stream_in_V_data_V_0_payload_A[43]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[1]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[57]),
        .I1(stream_in_V_data_V_0_payload_A[57]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[20]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[44]),
        .I1(stream_in_V_data_V_0_payload_A[44]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[21]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[45]),
        .I1(stream_in_V_data_V_0_payload_A[45]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[22]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[46]),
        .I1(stream_in_V_data_V_0_payload_A[46]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[23]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[47]),
        .I1(stream_in_V_data_V_0_payload_A[47]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[24]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[32]),
        .I1(stream_in_V_data_V_0_payload_A[32]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[25]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[33]),
        .I1(stream_in_V_data_V_0_payload_A[33]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[26]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[34]),
        .I1(stream_in_V_data_V_0_payload_A[34]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[27]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[35]),
        .I1(stream_in_V_data_V_0_payload_A[35]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[28]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[36]),
        .I1(stream_in_V_data_V_0_payload_A[36]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[29]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[37]),
        .I1(stream_in_V_data_V_0_payload_A[37]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[29]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[2]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[58]),
        .I1(stream_in_V_data_V_0_payload_A[58]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[30]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[38]),
        .I1(stream_in_V_data_V_0_payload_A[38]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[31]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[39]),
        .I1(stream_in_V_data_V_0_payload_A[39]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[31]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[32]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[24]),
        .I1(stream_in_V_data_V_0_payload_A[24]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[32]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[33]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[25]),
        .I1(stream_in_V_data_V_0_payload_A[25]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[33]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[34]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[26]),
        .I1(stream_in_V_data_V_0_payload_A[26]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[35]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[27]),
        .I1(stream_in_V_data_V_0_payload_A[27]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[35]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[36]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[28]),
        .I1(stream_in_V_data_V_0_payload_A[28]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[36]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[37]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[29]),
        .I1(stream_in_V_data_V_0_payload_A[29]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[37]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[38]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[30]),
        .I1(stream_in_V_data_V_0_payload_A[30]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[38]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[39]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[31]),
        .I1(stream_in_V_data_V_0_payload_A[31]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[39]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[3]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[59]),
        .I1(stream_in_V_data_V_0_payload_A[59]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[40]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[16]),
        .I1(stream_in_V_data_V_0_payload_A[16]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[40]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[41]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[17]),
        .I1(stream_in_V_data_V_0_payload_A[17]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[41]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[42]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[18]),
        .I1(stream_in_V_data_V_0_payload_A[18]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[42]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[43]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[19]),
        .I1(stream_in_V_data_V_0_payload_A[19]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[43]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[44]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[20]),
        .I1(stream_in_V_data_V_0_payload_A[20]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[44]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[45]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[21]),
        .I1(stream_in_V_data_V_0_payload_A[21]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[45]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[46]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[22]),
        .I1(stream_in_V_data_V_0_payload_A[22]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[46]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[47]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[23]),
        .I1(stream_in_V_data_V_0_payload_A[23]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[47]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[48]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[8]),
        .I1(stream_in_V_data_V_0_payload_A[8]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[48]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[49]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[9]),
        .I1(stream_in_V_data_V_0_payload_A[9]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[49]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[4]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[60]),
        .I1(stream_in_V_data_V_0_payload_A[60]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[50]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[10]),
        .I1(stream_in_V_data_V_0_payload_A[10]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[50]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[51]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[11]),
        .I1(stream_in_V_data_V_0_payload_A[11]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[51]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[52]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[12]),
        .I1(stream_in_V_data_V_0_payload_A[12]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[52]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[53]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[13]),
        .I1(stream_in_V_data_V_0_payload_A[13]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[53]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[54]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[14]),
        .I1(stream_in_V_data_V_0_payload_A[14]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[54]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[55]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[15]),
        .I1(stream_in_V_data_V_0_payload_A[15]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[55]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[56]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[0]),
        .I1(stream_in_V_data_V_0_payload_A[0]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[56]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[57]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[1]),
        .I1(stream_in_V_data_V_0_payload_A[1]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[57]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[58]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[2]),
        .I1(stream_in_V_data_V_0_payload_A[2]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[58]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[59]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[3]),
        .I1(stream_in_V_data_V_0_payload_A[3]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[59]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[5]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[61]),
        .I1(stream_in_V_data_V_0_payload_A[61]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[60]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[4]),
        .I1(stream_in_V_data_V_0_payload_A[4]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[60]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[61]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[5]),
        .I1(stream_in_V_data_V_0_payload_A[5]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[61]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[62]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[6]),
        .I1(stream_in_V_data_V_0_payload_A[6]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[62]));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_out_V_data_V_1_payload_A[63]_i_1 
       (.I0(\stream_out_V_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_V_data_V_1_ack_in),
        .I2(stream_out_V_data_V_1_sel_wr),
        .O(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[63]_i_2 
       (.I0(stream_in_V_data_V_0_payload_B[7]),
        .I1(stream_in_V_data_V_0_payload_A[7]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[63]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[6]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[62]),
        .I1(stream_in_V_data_V_0_payload_A[62]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[7]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[63]),
        .I1(stream_in_V_data_V_0_payload_A[63]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[8]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[48]),
        .I1(stream_in_V_data_V_0_payload_A[48]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_data_V_1_payload_A[9]_i_1 
       (.I0(stream_in_V_data_V_0_payload_B[49]),
        .I1(stream_in_V_data_V_0_payload_A[49]),
        .I2(stream_in_V_data_V_0_sel),
        .O(x_V_fu_179_p9[9]));
  FDRE \stream_out_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[0]),
        .Q(stream_out_V_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[10]),
        .Q(stream_out_V_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[11]),
        .Q(stream_out_V_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[12]),
        .Q(stream_out_V_data_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[13]),
        .Q(stream_out_V_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[14]),
        .Q(stream_out_V_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[15]),
        .Q(stream_out_V_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[16]),
        .Q(stream_out_V_data_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[17]),
        .Q(stream_out_V_data_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[18]),
        .Q(stream_out_V_data_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[19]),
        .Q(stream_out_V_data_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[1]),
        .Q(stream_out_V_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[20]),
        .Q(stream_out_V_data_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[21]),
        .Q(stream_out_V_data_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[22]),
        .Q(stream_out_V_data_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[23]),
        .Q(stream_out_V_data_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[24]),
        .Q(stream_out_V_data_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[25]),
        .Q(stream_out_V_data_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[26]),
        .Q(stream_out_V_data_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[27]),
        .Q(stream_out_V_data_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[28]),
        .Q(stream_out_V_data_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[29]),
        .Q(stream_out_V_data_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[2]),
        .Q(stream_out_V_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[30]),
        .Q(stream_out_V_data_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[31]),
        .Q(stream_out_V_data_V_1_payload_A[31]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[32]),
        .Q(stream_out_V_data_V_1_payload_A[32]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[33]),
        .Q(stream_out_V_data_V_1_payload_A[33]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[34]),
        .Q(stream_out_V_data_V_1_payload_A[34]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[35]),
        .Q(stream_out_V_data_V_1_payload_A[35]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[36]),
        .Q(stream_out_V_data_V_1_payload_A[36]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[37]),
        .Q(stream_out_V_data_V_1_payload_A[37]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[38]),
        .Q(stream_out_V_data_V_1_payload_A[38]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[39]),
        .Q(stream_out_V_data_V_1_payload_A[39]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[3]),
        .Q(stream_out_V_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[40]),
        .Q(stream_out_V_data_V_1_payload_A[40]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[41]),
        .Q(stream_out_V_data_V_1_payload_A[41]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[42]),
        .Q(stream_out_V_data_V_1_payload_A[42]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[43]),
        .Q(stream_out_V_data_V_1_payload_A[43]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[44]),
        .Q(stream_out_V_data_V_1_payload_A[44]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[45]),
        .Q(stream_out_V_data_V_1_payload_A[45]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[46]),
        .Q(stream_out_V_data_V_1_payload_A[46]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[47]),
        .Q(stream_out_V_data_V_1_payload_A[47]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[48]),
        .Q(stream_out_V_data_V_1_payload_A[48]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[49]),
        .Q(stream_out_V_data_V_1_payload_A[49]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[4]),
        .Q(stream_out_V_data_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[50]),
        .Q(stream_out_V_data_V_1_payload_A[50]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[51]),
        .Q(stream_out_V_data_V_1_payload_A[51]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[52]),
        .Q(stream_out_V_data_V_1_payload_A[52]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[53]),
        .Q(stream_out_V_data_V_1_payload_A[53]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[54]),
        .Q(stream_out_V_data_V_1_payload_A[54]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[55]),
        .Q(stream_out_V_data_V_1_payload_A[55]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[56]),
        .Q(stream_out_V_data_V_1_payload_A[56]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[57]),
        .Q(stream_out_V_data_V_1_payload_A[57]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[58]),
        .Q(stream_out_V_data_V_1_payload_A[58]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[59]),
        .Q(stream_out_V_data_V_1_payload_A[59]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[5]),
        .Q(stream_out_V_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[60]),
        .Q(stream_out_V_data_V_1_payload_A[60]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[61]),
        .Q(stream_out_V_data_V_1_payload_A[61]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[62]),
        .Q(stream_out_V_data_V_1_payload_A[62]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[63]),
        .Q(stream_out_V_data_V_1_payload_A[63]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[6]),
        .Q(stream_out_V_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[7]),
        .Q(stream_out_V_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[8]),
        .Q(stream_out_V_data_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\stream_out_V_data_V_1_payload_A[63]_i_1_n_0 ),
        .D(x_V_fu_179_p9[9]),
        .Q(stream_out_V_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \stream_out_V_data_V_1_payload_B[63]_i_1 
       (.I0(stream_out_V_data_V_1_sel_wr),
        .I1(\stream_out_V_data_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .O(stream_out_V_data_V_1_load_B));
  FDRE \stream_out_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[0]),
        .Q(stream_out_V_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[10]),
        .Q(stream_out_V_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[11]),
        .Q(stream_out_V_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[12]),
        .Q(stream_out_V_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[13]),
        .Q(stream_out_V_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[14]),
        .Q(stream_out_V_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[15]),
        .Q(stream_out_V_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[16]),
        .Q(stream_out_V_data_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[17]),
        .Q(stream_out_V_data_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[18]),
        .Q(stream_out_V_data_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[19]),
        .Q(stream_out_V_data_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[1]),
        .Q(stream_out_V_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[20]),
        .Q(stream_out_V_data_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[21]),
        .Q(stream_out_V_data_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[22]),
        .Q(stream_out_V_data_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[23]),
        .Q(stream_out_V_data_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[24]),
        .Q(stream_out_V_data_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[25]),
        .Q(stream_out_V_data_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[26]),
        .Q(stream_out_V_data_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[27]),
        .Q(stream_out_V_data_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[28]),
        .Q(stream_out_V_data_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[29]),
        .Q(stream_out_V_data_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[2]),
        .Q(stream_out_V_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[30]),
        .Q(stream_out_V_data_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[31]),
        .Q(stream_out_V_data_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[32]),
        .Q(stream_out_V_data_V_1_payload_B[32]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[33]),
        .Q(stream_out_V_data_V_1_payload_B[33]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[34]),
        .Q(stream_out_V_data_V_1_payload_B[34]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[35]),
        .Q(stream_out_V_data_V_1_payload_B[35]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[36]),
        .Q(stream_out_V_data_V_1_payload_B[36]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[37]),
        .Q(stream_out_V_data_V_1_payload_B[37]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[38]),
        .Q(stream_out_V_data_V_1_payload_B[38]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[39]),
        .Q(stream_out_V_data_V_1_payload_B[39]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[3]),
        .Q(stream_out_V_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[40]),
        .Q(stream_out_V_data_V_1_payload_B[40]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[41]),
        .Q(stream_out_V_data_V_1_payload_B[41]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[42]),
        .Q(stream_out_V_data_V_1_payload_B[42]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[43]),
        .Q(stream_out_V_data_V_1_payload_B[43]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[44]),
        .Q(stream_out_V_data_V_1_payload_B[44]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[45]),
        .Q(stream_out_V_data_V_1_payload_B[45]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[46]),
        .Q(stream_out_V_data_V_1_payload_B[46]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[47]),
        .Q(stream_out_V_data_V_1_payload_B[47]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[48]),
        .Q(stream_out_V_data_V_1_payload_B[48]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[49]),
        .Q(stream_out_V_data_V_1_payload_B[49]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[4]),
        .Q(stream_out_V_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[50]),
        .Q(stream_out_V_data_V_1_payload_B[50]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[51]),
        .Q(stream_out_V_data_V_1_payload_B[51]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[52]),
        .Q(stream_out_V_data_V_1_payload_B[52]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[53]),
        .Q(stream_out_V_data_V_1_payload_B[53]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[54]),
        .Q(stream_out_V_data_V_1_payload_B[54]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[55]),
        .Q(stream_out_V_data_V_1_payload_B[55]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[56]),
        .Q(stream_out_V_data_V_1_payload_B[56]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[57]),
        .Q(stream_out_V_data_V_1_payload_B[57]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[58]),
        .Q(stream_out_V_data_V_1_payload_B[58]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[59]),
        .Q(stream_out_V_data_V_1_payload_B[59]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[5]),
        .Q(stream_out_V_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[60]),
        .Q(stream_out_V_data_V_1_payload_B[60]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[61]),
        .Q(stream_out_V_data_V_1_payload_B[61]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[62]),
        .Q(stream_out_V_data_V_1_payload_B[62]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[63]),
        .Q(stream_out_V_data_V_1_payload_B[63]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[6]),
        .Q(stream_out_V_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[7]),
        .Q(stream_out_V_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[8]),
        .Q(stream_out_V_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \stream_out_V_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(stream_out_V_data_V_1_load_B),
        .D(x_V_fu_179_p9[9]),
        .Q(stream_out_V_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_V_data_V_1_sel_rd_i_1
       (.I0(stream_out_TREADY),
        .I1(\stream_out_V_data_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_sel),
        .O(stream_out_V_data_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_V_data_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    stream_out_V_data_V_1_sel_wr_i_1
       (.I0(stream_out_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state3),
        .I2(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(stream_out_V_data_V_1_sel_wr),
        .O(stream_out_V_data_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_V_data_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8A8088808880888)) 
    \stream_out_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\stream_out_V_data_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .I3(stream_out_TREADY),
        .I4(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I5(ap_CS_fsm_state3),
        .O(\stream_out_V_data_V_1_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFF0FF)) 
    \stream_out_V_data_V_1_state[1]_i_1 
       (.I0(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state3),
        .I2(stream_out_TREADY),
        .I3(\stream_out_V_data_V_1_state_reg_n_0_[0] ),
        .I4(stream_out_V_data_V_1_ack_in),
        .O(\stream_out_V_data_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_data_V_1_state[0]_i_1_n_0 ),
        .Q(\stream_out_V_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_data_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \stream_out_V_last_V_1_payload_A[0]_i_1 
       (.I0(stream_in_V_last_V_0_payload_B),
        .I1(stream_in_V_last_V_0_sel),
        .I2(stream_in_V_last_V_0_payload_A),
        .I3(stream_out_V_last_V_1_state_cmp_full),
        .I4(stream_out_V_last_V_1_sel_wr),
        .I5(stream_out_V_last_V_1_payload_A),
        .O(\stream_out_V_last_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \stream_out_V_last_V_1_payload_A[0]_i_2 
       (.I0(stream_out_V_last_V_1_ack_in),
        .I1(\stream_out_V_last_V_1_state_reg_n_0_[0] ),
        .O(stream_out_V_last_V_1_state_cmp_full));
  FDRE \stream_out_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(stream_out_V_last_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \stream_out_V_last_V_1_payload_B[0]_i_1 
       (.I0(stream_in_V_last_V_0_payload_B),
        .I1(stream_in_V_last_V_0_sel),
        .I2(stream_in_V_last_V_0_payload_A),
        .I3(stream_out_V_last_V_1_sel_wr),
        .I4(stream_out_V_last_V_1_state_cmp_full),
        .I5(stream_out_V_last_V_1_payload_B),
        .O(\stream_out_V_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \stream_out_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(stream_out_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_V_last_V_1_sel_rd_i_1
       (.I0(stream_out_TREADY),
        .I1(\stream_out_V_last_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_V_last_V_1_sel),
        .O(stream_out_V_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_V_last_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    stream_out_V_last_V_1_sel_wr_i_1
       (.I0(stream_out_V_last_V_1_ack_in),
        .I1(ap_CS_fsm_state3),
        .I2(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(stream_out_V_data_V_1_ack_in),
        .I4(stream_out_V_last_V_1_sel_wr),
        .O(stream_out_V_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_V_last_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \stream_out_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\stream_out_V_last_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_V_last_V_1_ack_in),
        .I3(stream_out_TREADY),
        .I4(p_82_in),
        .O(\stream_out_V_last_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \stream_out_V_last_V_1_state[1]_i_1 
       (.I0(stream_out_V_data_V_1_ack_in),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(stream_out_TREADY),
        .I4(\stream_out_V_last_V_1_state_reg_n_0_[0] ),
        .I5(stream_out_V_last_V_1_ack_in),
        .O(\stream_out_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(\stream_out_V_last_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[0]_i_1 
       (.I0(stream_in_V_tkeep_V_0_payload_B[0]),
        .I1(stream_in_V_tkeep_V_0_payload_A[0]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[1]_i_1 
       (.I0(stream_in_V_tkeep_V_0_payload_B[1]),
        .I1(stream_in_V_tkeep_V_0_payload_A[1]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[2]_i_1 
       (.I0(stream_in_V_tkeep_V_0_payload_B[2]),
        .I1(stream_in_V_tkeep_V_0_payload_A[2]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[3]_i_1 
       (.I0(stream_in_V_tkeep_V_0_payload_B[3]),
        .I1(stream_in_V_tkeep_V_0_payload_A[3]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[4]_i_1 
       (.I0(stream_in_V_tkeep_V_0_payload_B[4]),
        .I1(stream_in_V_tkeep_V_0_payload_A[4]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[5]_i_1 
       (.I0(stream_in_V_tkeep_V_0_payload_B[5]),
        .I1(stream_in_V_tkeep_V_0_payload_A[5]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[6]_i_1 
       (.I0(stream_in_V_tkeep_V_0_payload_B[6]),
        .I1(stream_in_V_tkeep_V_0_payload_A[6]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[6]));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_out_V_tkeep_V_1_payload_A[7]_i_1 
       (.I0(stream_out_TVALID),
        .I1(stream_out_V_tkeep_V_1_ack_in),
        .I2(stream_out_V_tkeep_V_1_sel_wr),
        .O(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_V_tkeep_V_1_payload_A[7]_i_2 
       (.I0(stream_in_V_tkeep_V_0_payload_B[7]),
        .I1(stream_in_V_tkeep_V_0_payload_A[7]),
        .I2(stream_in_V_tkeep_V_0_sel),
        .O(stream_in_V_tkeep_V_0_data_out[7]));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[0]),
        .Q(stream_out_V_tkeep_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[1]),
        .Q(stream_out_V_tkeep_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[2]),
        .Q(stream_out_V_tkeep_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[3]),
        .Q(stream_out_V_tkeep_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[4]),
        .Q(stream_out_V_tkeep_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[5]),
        .Q(stream_out_V_tkeep_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[6]),
        .Q(stream_out_V_tkeep_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\stream_out_V_tkeep_V_1_payload_A[7]_i_1_n_0 ),
        .D(stream_in_V_tkeep_V_0_data_out[7]),
        .Q(stream_out_V_tkeep_V_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \stream_out_V_tkeep_V_1_payload_B[7]_i_1 
       (.I0(stream_out_V_tkeep_V_1_sel_wr),
        .I1(stream_out_TVALID),
        .I2(stream_out_V_tkeep_V_1_ack_in),
        .O(stream_out_V_tkeep_V_1_load_B));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[0]),
        .Q(stream_out_V_tkeep_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[1]),
        .Q(stream_out_V_tkeep_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[2]),
        .Q(stream_out_V_tkeep_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[3]),
        .Q(stream_out_V_tkeep_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[4]),
        .Q(stream_out_V_tkeep_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[5]),
        .Q(stream_out_V_tkeep_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[6]),
        .Q(stream_out_V_tkeep_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \stream_out_V_tkeep_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_out_V_tkeep_V_1_load_B),
        .D(stream_in_V_tkeep_V_0_data_out[7]),
        .Q(stream_out_V_tkeep_V_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_V_tkeep_V_1_sel_rd_i_1
       (.I0(stream_out_TVALID),
        .I1(stream_out_TREADY),
        .I2(stream_out_V_tkeep_V_1_sel),
        .O(stream_out_V_tkeep_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_V_tkeep_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_V_tkeep_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_V_tkeep_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    stream_out_V_tkeep_V_1_sel_wr_i_1
       (.I0(stream_out_V_tkeep_V_1_ack_in),
        .I1(ap_CS_fsm_state3),
        .I2(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(stream_out_V_data_V_1_ack_in),
        .I4(stream_out_V_tkeep_V_1_sel_wr),
        .O(stream_out_V_tkeep_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_V_tkeep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_V_tkeep_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_V_tkeep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \stream_out_V_tkeep_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(stream_out_TVALID),
        .I2(stream_out_V_tkeep_V_1_ack_in),
        .I3(stream_out_TREADY),
        .I4(p_82_in),
        .O(\stream_out_V_tkeep_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \stream_out_V_tkeep_V_1_state[0]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(stream_out_V_data_V_1_ack_in),
        .O(p_82_in));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \stream_out_V_tkeep_V_1_state[1]_i_1 
       (.I0(stream_out_V_data_V_1_ack_in),
        .I1(\stream_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(stream_out_TREADY),
        .I4(stream_out_TVALID),
        .I5(stream_out_V_tkeep_V_1_ack_in),
        .O(\stream_out_V_tkeep_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_V_tkeep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_tkeep_V_1_state[0]_i_1_n_0 ),
        .Q(stream_out_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_V_tkeep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_V_tkeep_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_V_tkeep_V_1_ack_in),
        .R(ap_rst_n_inv));
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
