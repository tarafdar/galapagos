// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jul  3 18:03:28 2017
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axiStreamGate_0_0/shell_axiStreamGate_0_0_sim_netlist.v
// Design      : shell_axiStreamGate_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shell_axiStreamGate_0_0,axiStreamGate,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axiStreamGate,Vivado 2016.4" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module shell_axiStreamGate_0_0
   (s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n,
    packetIn_TVALID,
    packetIn_TREADY,
    packetIn_TDATA,
    packetIn_TKEEP,
    packetIn_TLAST,
    packetOut_TVALID,
    packetOut_TREADY,
    packetOut_TDATA,
    packetOut_TKEEP,
    packetOut_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) input [4:0]s_axi_AXILiteS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [4:0]s_axi_AXILiteS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) input s_axi_AXILiteS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TVALID" *) input packetIn_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TREADY" *) output packetIn_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TDATA" *) input [63:0]packetIn_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TKEEP" *) input [7:0]packetIn_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetIn TLAST" *) input [0:0]packetIn_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TVALID" *) output packetOut_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TREADY" *) input packetOut_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TDATA" *) output [63:0]packetOut_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TKEEP" *) output [7:0]packetOut_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 packetOut TLAST" *) output [0:0]packetOut_TLAST;

  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]packetIn_TDATA;
  wire [7:0]packetIn_TKEEP;
  wire [0:0]packetIn_TLAST;
  wire packetIn_TREADY;
  wire packetIn_TVALID;
  wire [63:0]packetOut_TDATA;
  wire [7:0]packetOut_TKEEP;
  wire [0:0]packetOut_TLAST;
  wire packetOut_TREADY;
  wire packetOut_TVALID;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [1:0]s_axi_AXILiteS_BRESP;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire [1:0]s_axi_AXILiteS_RRESP;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;

  (* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_state1 = "5'b00001" *) 
  (* ap_ST_fsm_state2 = "5'b00010" *) 
  (* ap_ST_fsm_state3 = "5'b00100" *) 
  (* ap_ST_fsm_state4 = "5'b01000" *) 
  (* ap_ST_fsm_state5 = "5'b10000" *) 
  (* ap_const_int64_8 = "8" *) 
  (* ap_const_lv2_0 = "2'b00" *) 
  (* ap_const_lv2_1 = "2'b01" *) 
  (* ap_const_lv2_2 = "2'b10" *) 
  (* ap_const_lv2_3 = "2'b11" *) 
  (* ap_const_lv32_0 = "0" *) 
  (* ap_const_lv32_1 = "1" *) 
  (* ap_const_lv32_2 = "2" *) 
  (* ap_const_lv32_3 = "3" *) 
  shell_axiStreamGate_0_0_axiStreamGate inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .packetIn_TDATA(packetIn_TDATA),
        .packetIn_TKEEP(packetIn_TKEEP),
        .packetIn_TLAST(packetIn_TLAST),
        .packetIn_TREADY(packetIn_TREADY),
        .packetIn_TVALID(packetIn_TVALID),
        .packetOut_TDATA(packetOut_TDATA),
        .packetOut_TKEEP(packetOut_TKEEP),
        .packetOut_TLAST(packetOut_TLAST),
        .packetOut_TREADY(packetOut_TREADY),
        .packetOut_TVALID(packetOut_TVALID),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
endmodule

(* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "axiStreamGate" *) 
(* ap_ST_fsm_state1 = "5'b00001" *) (* ap_ST_fsm_state2 = "5'b00010" *) (* ap_ST_fsm_state3 = "5'b00100" *) 
(* ap_ST_fsm_state4 = "5'b01000" *) (* ap_ST_fsm_state5 = "5'b10000" *) (* ap_const_int64_8 = "8" *) 
(* ap_const_lv2_0 = "2'b00" *) (* ap_const_lv2_1 = "2'b01" *) (* ap_const_lv2_2 = "2'b10" *) 
(* ap_const_lv2_3 = "2'b11" *) (* ap_const_lv32_0 = "0" *) (* ap_const_lv32_1 = "1" *) 
(* ap_const_lv32_2 = "2" *) (* ap_const_lv32_3 = "3" *) (* hls_module = "yes" *) 
module shell_axiStreamGate_0_0_axiStreamGate
   (ap_clk,
    ap_rst_n,
    packetIn_TDATA,
    packetIn_TVALID,
    packetIn_TREADY,
    packetIn_TLAST,
    packetIn_TKEEP,
    packetOut_TDATA,
    packetOut_TVALID,
    packetOut_TREADY,
    packetOut_TLAST,
    packetOut_TKEEP,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_BRESP);
  input ap_clk;
  input ap_rst_n;
  input [63:0]packetIn_TDATA;
  input packetIn_TVALID;
  output packetIn_TREADY;
  input [0:0]packetIn_TLAST;
  input [7:0]packetIn_TKEEP;
  output [63:0]packetOut_TDATA;
  output packetOut_TVALID;
  input packetOut_TREADY;
  output [0:0]packetOut_TLAST;
  output [7:0]packetOut_TKEEP;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [4:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;

  wire \<const0> ;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [4:1]ap_NS_fsm;
  wire ap_clk;
  wire ap_reg_ioackin_programSafe_dummy_ack;
  wire ap_reg_ioackin_programSafe_dummy_ack_i_1_n_0;
  wire ap_reg_ioackin_programSafe_dummy_ack_i_2_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire axiStreamGate_AXILiteS_s_axi_U_n_10;
  wire axiStreamGate_AXILiteS_s_axi_U_n_6;
  wire axiStreamGate_AXILiteS_s_axi_U_n_9;
  wire [63:0]packetIn_TDATA;
  wire [7:0]packetIn_TKEEP;
  wire [0:0]packetIn_TLAST;
  wire packetIn_TREADY;
  wire packetIn_TVALID;
  wire [63:0]packetOut_TDATA;
  wire [7:0]packetOut_TKEEP;
  wire [0:0]packetOut_TLAST;
  wire packetOut_TREADY;
  wire packetOut_TVALID;
  wire packetOut_V_data_V_1_ack_in;
  wire packetOut_V_data_V_1_load_A;
  wire packetOut_V_data_V_1_load_B;
  wire [63:0]packetOut_V_data_V_1_payload_A;
  wire [63:0]packetOut_V_data_V_1_payload_B;
  wire packetOut_V_data_V_1_sel;
  wire packetOut_V_data_V_1_sel_rd_i_1_n_0;
  wire packetOut_V_data_V_1_sel_wr;
  wire packetOut_V_data_V_1_sel_wr_i_1_n_0;
  wire [1:1]packetOut_V_data_V_1_state;
  wire \packetOut_V_data_V_1_state[0]_i_1_n_0 ;
  wire \packetOut_V_data_V_1_state_reg_n_0_[0] ;
  wire packetOut_V_keep_V_1_ack_in;
  wire packetOut_V_keep_V_1_load_A;
  wire packetOut_V_keep_V_1_load_B;
  wire [7:0]packetOut_V_keep_V_1_payload_A;
  wire [7:0]packetOut_V_keep_V_1_payload_B;
  wire packetOut_V_keep_V_1_sel;
  wire packetOut_V_keep_V_1_sel_rd_i_1_n_0;
  wire packetOut_V_keep_V_1_sel_wr;
  wire packetOut_V_keep_V_1_sel_wr_i_1_n_0;
  wire [1:1]packetOut_V_keep_V_1_state;
  wire \packetOut_V_keep_V_1_state[0]_i_1_n_0 ;
  wire \packetOut_V_keep_V_1_state[0]_i_2_n_0 ;
  wire packetOut_V_last_V_1_ack_in;
  wire packetOut_V_last_V_1_payload_A;
  wire \packetOut_V_last_V_1_payload_A[0]_i_1_n_0 ;
  wire packetOut_V_last_V_1_payload_B;
  wire \packetOut_V_last_V_1_payload_B[0]_i_1_n_0 ;
  wire packetOut_V_last_V_1_sel;
  wire packetOut_V_last_V_1_sel_rd_i_1_n_0;
  wire packetOut_V_last_V_1_sel_wr;
  wire packetOut_V_last_V_1_sel_wr_i_1_n_0;
  wire [1:1]packetOut_V_last_V_1_state;
  wire \packetOut_V_last_V_1_state[0]_i_1_n_0 ;
  wire \packetOut_V_last_V_1_state_reg_n_0_[0] ;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire \tmp_1_reg_127_reg_n_0_[0] ;
  wire \tmp_last_V_reg_136[0]_i_1_n_0 ;
  wire \tmp_last_V_reg_136_reg_n_0_[0] ;
  wire \tmp_reg_123_reg_n_0_[0] ;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(\ap_CS_fsm_reg_n_0_[4] ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2FAA22AA)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(packetIn_TVALID),
        .I2(axiStreamGate_AXILiteS_s_axi_U_n_6),
        .I3(packetOut_V_data_V_1_ack_in),
        .I4(ap_CS_fsm_state4),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80008000800080)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(\tmp_1_reg_127_reg_n_0_[0] ),
        .I1(\tmp_reg_123_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state4),
        .I3(packetOut_V_data_V_1_ack_in),
        .I4(ap_CS_fsm_state3),
        .I5(packetIn_TVALID),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hF7770000)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\tmp_1_reg_127_reg_n_0_[0] ),
        .I1(\tmp_reg_123_reg_n_0_[0] ),
        .I2(packetOut_V_data_V_1_ack_in),
        .I3(\tmp_last_V_reg_136_reg_n_0_[0] ),
        .I4(ap_CS_fsm_state4),
        .O(ap_NS_fsm[4]));
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
        .Q(ap_CS_fsm_state2),
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
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h000C080888888888)) 
    ap_reg_ioackin_programSafe_dummy_ack_i_1
       (.I0(ap_reg_ioackin_programSafe_dummy_ack),
        .I1(ap_rst_n),
        .I2(ap_reg_ioackin_programSafe_dummy_ack_i_2_n_0),
        .I3(packetOut_V_data_V_1_ack_in),
        .I4(\tmp_last_V_reg_136_reg_n_0_[0] ),
        .I5(ap_CS_fsm_state4),
        .O(ap_reg_ioackin_programSafe_dummy_ack_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    ap_reg_ioackin_programSafe_dummy_ack_i_2
       (.I0(\tmp_1_reg_127_reg_n_0_[0] ),
        .I1(\tmp_reg_123_reg_n_0_[0] ),
        .O(ap_reg_ioackin_programSafe_dummy_ack_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ioackin_programSafe_dummy_ack_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_reg_ioackin_programSafe_dummy_ack_i_1_n_0),
        .Q(ap_reg_ioackin_programSafe_dummy_ack),
        .R(1'b0));
  shell_axiStreamGate_0_0_axiStreamGate_AXILiteS_s_axi axiStreamGate_AXILiteS_s_axi_U
       (.D(ap_NS_fsm[3:2]),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state2}),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm[2]_i_2_n_0 ),
        .ap_clk(ap_clk),
        .ap_reg_ioackin_programSafe_dummy_ack(ap_reg_ioackin_programSafe_dummy_ack),
        .ap_rst_n(ap_rst_n),
        .\int_programSafe_reg[0]_0 (axiStreamGate_AXILiteS_s_axi_U_n_6),
        .packetIn_TVALID(packetIn_TVALID),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
        .\tmp_1_reg_127_reg[0] (axiStreamGate_AXILiteS_s_axi_U_n_10),
        .\tmp_1_reg_127_reg[0]_0 (\ap_CS_fsm[3]_i_2_n_0 ),
        .\tmp_1_reg_127_reg[0]_1 (\tmp_1_reg_127_reg_n_0_[0] ),
        .\tmp_last_V_reg_136_reg[0] (\tmp_last_V_reg_136_reg_n_0_[0] ),
        .\tmp_reg_123_reg[0] (axiStreamGate_AXILiteS_s_axi_U_n_9),
        .\tmp_reg_123_reg[0]_0 (\tmp_reg_123_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    packetIn_TREADY_INST_0
       (.I0(packetOut_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state3),
        .I2(packetIn_TVALID),
        .O(packetIn_TREADY));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[0]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[0]),
        .I1(packetOut_V_data_V_1_payload_A[0]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[10]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[10]),
        .I1(packetOut_V_data_V_1_payload_A[10]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[11]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[11]),
        .I1(packetOut_V_data_V_1_payload_A[11]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[12]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[12]),
        .I1(packetOut_V_data_V_1_payload_A[12]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[13]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[13]),
        .I1(packetOut_V_data_V_1_payload_A[13]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[14]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[14]),
        .I1(packetOut_V_data_V_1_payload_A[14]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[15]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[15]),
        .I1(packetOut_V_data_V_1_payload_A[15]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[16]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[16]),
        .I1(packetOut_V_data_V_1_payload_A[16]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[17]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[17]),
        .I1(packetOut_V_data_V_1_payload_A[17]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[18]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[18]),
        .I1(packetOut_V_data_V_1_payload_A[18]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[19]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[19]),
        .I1(packetOut_V_data_V_1_payload_A[19]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[1]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[1]),
        .I1(packetOut_V_data_V_1_payload_A[1]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[20]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[20]),
        .I1(packetOut_V_data_V_1_payload_A[20]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[21]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[21]),
        .I1(packetOut_V_data_V_1_payload_A[21]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[22]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[22]),
        .I1(packetOut_V_data_V_1_payload_A[22]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[23]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[23]),
        .I1(packetOut_V_data_V_1_payload_A[23]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[24]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[24]),
        .I1(packetOut_V_data_V_1_payload_A[24]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[25]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[25]),
        .I1(packetOut_V_data_V_1_payload_A[25]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[26]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[26]),
        .I1(packetOut_V_data_V_1_payload_A[26]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[27]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[27]),
        .I1(packetOut_V_data_V_1_payload_A[27]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[28]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[28]),
        .I1(packetOut_V_data_V_1_payload_A[28]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[29]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[29]),
        .I1(packetOut_V_data_V_1_payload_A[29]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[2]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[2]),
        .I1(packetOut_V_data_V_1_payload_A[2]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[30]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[30]),
        .I1(packetOut_V_data_V_1_payload_A[30]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[31]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[31]),
        .I1(packetOut_V_data_V_1_payload_A[31]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[32]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[32]),
        .I1(packetOut_V_data_V_1_payload_A[32]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[33]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[33]),
        .I1(packetOut_V_data_V_1_payload_A[33]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[34]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[34]),
        .I1(packetOut_V_data_V_1_payload_A[34]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[35]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[35]),
        .I1(packetOut_V_data_V_1_payload_A[35]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[36]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[36]),
        .I1(packetOut_V_data_V_1_payload_A[36]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[37]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[37]),
        .I1(packetOut_V_data_V_1_payload_A[37]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[38]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[38]),
        .I1(packetOut_V_data_V_1_payload_A[38]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[39]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[39]),
        .I1(packetOut_V_data_V_1_payload_A[39]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[3]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[3]),
        .I1(packetOut_V_data_V_1_payload_A[3]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[40]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[40]),
        .I1(packetOut_V_data_V_1_payload_A[40]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[41]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[41]),
        .I1(packetOut_V_data_V_1_payload_A[41]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[42]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[42]),
        .I1(packetOut_V_data_V_1_payload_A[42]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[43]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[43]),
        .I1(packetOut_V_data_V_1_payload_A[43]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[44]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[44]),
        .I1(packetOut_V_data_V_1_payload_A[44]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[45]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[45]),
        .I1(packetOut_V_data_V_1_payload_A[45]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[46]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[46]),
        .I1(packetOut_V_data_V_1_payload_A[46]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[47]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[47]),
        .I1(packetOut_V_data_V_1_payload_A[47]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[48]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[48]),
        .I1(packetOut_V_data_V_1_payload_A[48]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[49]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[49]),
        .I1(packetOut_V_data_V_1_payload_A[49]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[4]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[4]),
        .I1(packetOut_V_data_V_1_payload_A[4]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[50]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[50]),
        .I1(packetOut_V_data_V_1_payload_A[50]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[51]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[51]),
        .I1(packetOut_V_data_V_1_payload_A[51]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[52]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[52]),
        .I1(packetOut_V_data_V_1_payload_A[52]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[53]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[53]),
        .I1(packetOut_V_data_V_1_payload_A[53]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[54]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[54]),
        .I1(packetOut_V_data_V_1_payload_A[54]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[55]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[55]),
        .I1(packetOut_V_data_V_1_payload_A[55]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[56]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[56]),
        .I1(packetOut_V_data_V_1_payload_A[56]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[57]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[57]),
        .I1(packetOut_V_data_V_1_payload_A[57]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[58]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[58]),
        .I1(packetOut_V_data_V_1_payload_A[58]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[59]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[59]),
        .I1(packetOut_V_data_V_1_payload_A[59]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[5]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[5]),
        .I1(packetOut_V_data_V_1_payload_A[5]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[60]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[60]),
        .I1(packetOut_V_data_V_1_payload_A[60]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[61]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[61]),
        .I1(packetOut_V_data_V_1_payload_A[61]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[62]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[62]),
        .I1(packetOut_V_data_V_1_payload_A[62]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[63]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[63]),
        .I1(packetOut_V_data_V_1_payload_A[63]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[6]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[6]),
        .I1(packetOut_V_data_V_1_payload_A[6]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[7]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[7]),
        .I1(packetOut_V_data_V_1_payload_A[7]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[8]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[8]),
        .I1(packetOut_V_data_V_1_payload_A[8]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TDATA[9]_INST_0 
       (.I0(packetOut_V_data_V_1_payload_B[9]),
        .I1(packetOut_V_data_V_1_payload_A[9]),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[0]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[0]),
        .I1(packetOut_V_keep_V_1_payload_A[0]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[1]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[1]),
        .I1(packetOut_V_keep_V_1_payload_A[1]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[2]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[2]),
        .I1(packetOut_V_keep_V_1_payload_A[2]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[3]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[3]),
        .I1(packetOut_V_keep_V_1_payload_A[3]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[4]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[4]),
        .I1(packetOut_V_keep_V_1_payload_A[4]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[5]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[5]),
        .I1(packetOut_V_keep_V_1_payload_A[5]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[6]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[6]),
        .I1(packetOut_V_keep_V_1_payload_A[6]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \packetOut_TKEEP[7]_INST_0 
       (.I0(packetOut_V_keep_V_1_payload_B[7]),
        .I1(packetOut_V_keep_V_1_payload_A[7]),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_TKEEP[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \packetOut_TLAST[0]_INST_0 
       (.I0(packetOut_V_last_V_1_payload_B),
        .I1(packetOut_V_last_V_1_sel),
        .I2(packetOut_V_last_V_1_payload_A),
        .O(packetOut_TLAST));
  LUT3 #(
    .INIT(8'h0D)) 
    \packetOut_V_data_V_1_payload_A[63]_i_1 
       (.I0(\packetOut_V_data_V_1_state_reg_n_0_[0] ),
        .I1(packetOut_V_data_V_1_ack_in),
        .I2(packetOut_V_data_V_1_sel_wr),
        .O(packetOut_V_data_V_1_load_A));
  FDRE \packetOut_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[0]),
        .Q(packetOut_V_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[10]),
        .Q(packetOut_V_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[11]),
        .Q(packetOut_V_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[12]),
        .Q(packetOut_V_data_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[13]),
        .Q(packetOut_V_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[14]),
        .Q(packetOut_V_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[15]),
        .Q(packetOut_V_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[16]),
        .Q(packetOut_V_data_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[17]),
        .Q(packetOut_V_data_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[18]),
        .Q(packetOut_V_data_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[19]),
        .Q(packetOut_V_data_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[1]),
        .Q(packetOut_V_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[20]),
        .Q(packetOut_V_data_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[21]),
        .Q(packetOut_V_data_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[22]),
        .Q(packetOut_V_data_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[23]),
        .Q(packetOut_V_data_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[24]),
        .Q(packetOut_V_data_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[25]),
        .Q(packetOut_V_data_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[26]),
        .Q(packetOut_V_data_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[27]),
        .Q(packetOut_V_data_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[28]),
        .Q(packetOut_V_data_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[29]),
        .Q(packetOut_V_data_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[2]),
        .Q(packetOut_V_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[30]),
        .Q(packetOut_V_data_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[31]),
        .Q(packetOut_V_data_V_1_payload_A[31]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[32]),
        .Q(packetOut_V_data_V_1_payload_A[32]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[33]),
        .Q(packetOut_V_data_V_1_payload_A[33]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[34]),
        .Q(packetOut_V_data_V_1_payload_A[34]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[35]),
        .Q(packetOut_V_data_V_1_payload_A[35]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[36]),
        .Q(packetOut_V_data_V_1_payload_A[36]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[37]),
        .Q(packetOut_V_data_V_1_payload_A[37]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[38]),
        .Q(packetOut_V_data_V_1_payload_A[38]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[39]),
        .Q(packetOut_V_data_V_1_payload_A[39]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[3]),
        .Q(packetOut_V_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[40]),
        .Q(packetOut_V_data_V_1_payload_A[40]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[41]),
        .Q(packetOut_V_data_V_1_payload_A[41]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[42]),
        .Q(packetOut_V_data_V_1_payload_A[42]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[43]),
        .Q(packetOut_V_data_V_1_payload_A[43]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[44]),
        .Q(packetOut_V_data_V_1_payload_A[44]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[45]),
        .Q(packetOut_V_data_V_1_payload_A[45]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[46]),
        .Q(packetOut_V_data_V_1_payload_A[46]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[47]),
        .Q(packetOut_V_data_V_1_payload_A[47]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[48]),
        .Q(packetOut_V_data_V_1_payload_A[48]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[49]),
        .Q(packetOut_V_data_V_1_payload_A[49]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[4]),
        .Q(packetOut_V_data_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[50]),
        .Q(packetOut_V_data_V_1_payload_A[50]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[51]),
        .Q(packetOut_V_data_V_1_payload_A[51]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[52]),
        .Q(packetOut_V_data_V_1_payload_A[52]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[53]),
        .Q(packetOut_V_data_V_1_payload_A[53]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[54]),
        .Q(packetOut_V_data_V_1_payload_A[54]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[55]),
        .Q(packetOut_V_data_V_1_payload_A[55]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[56]),
        .Q(packetOut_V_data_V_1_payload_A[56]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[57]),
        .Q(packetOut_V_data_V_1_payload_A[57]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[58]),
        .Q(packetOut_V_data_V_1_payload_A[58]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[59]),
        .Q(packetOut_V_data_V_1_payload_A[59]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[5]),
        .Q(packetOut_V_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[60]),
        .Q(packetOut_V_data_V_1_payload_A[60]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[61]),
        .Q(packetOut_V_data_V_1_payload_A[61]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[62]),
        .Q(packetOut_V_data_V_1_payload_A[62]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[63]),
        .Q(packetOut_V_data_V_1_payload_A[63]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[6]),
        .Q(packetOut_V_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[7]),
        .Q(packetOut_V_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[8]),
        .Q(packetOut_V_data_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_A),
        .D(packetIn_TDATA[9]),
        .Q(packetOut_V_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \packetOut_V_data_V_1_payload_B[63]_i_1 
       (.I0(\packetOut_V_data_V_1_state_reg_n_0_[0] ),
        .I1(packetOut_V_data_V_1_ack_in),
        .I2(packetOut_V_data_V_1_sel_wr),
        .O(packetOut_V_data_V_1_load_B));
  FDRE \packetOut_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[0]),
        .Q(packetOut_V_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[10]),
        .Q(packetOut_V_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[11]),
        .Q(packetOut_V_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[12]),
        .Q(packetOut_V_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[13]),
        .Q(packetOut_V_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[14]),
        .Q(packetOut_V_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[15]),
        .Q(packetOut_V_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[16]),
        .Q(packetOut_V_data_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[17]),
        .Q(packetOut_V_data_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[18]),
        .Q(packetOut_V_data_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[19]),
        .Q(packetOut_V_data_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[1]),
        .Q(packetOut_V_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[20]),
        .Q(packetOut_V_data_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[21]),
        .Q(packetOut_V_data_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[22]),
        .Q(packetOut_V_data_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[23]),
        .Q(packetOut_V_data_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[24]),
        .Q(packetOut_V_data_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[25]),
        .Q(packetOut_V_data_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[26]),
        .Q(packetOut_V_data_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[27]),
        .Q(packetOut_V_data_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[28]),
        .Q(packetOut_V_data_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[29]),
        .Q(packetOut_V_data_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[2]),
        .Q(packetOut_V_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[30]),
        .Q(packetOut_V_data_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[31]),
        .Q(packetOut_V_data_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[32]),
        .Q(packetOut_V_data_V_1_payload_B[32]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[33]),
        .Q(packetOut_V_data_V_1_payload_B[33]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[34]),
        .Q(packetOut_V_data_V_1_payload_B[34]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[35]),
        .Q(packetOut_V_data_V_1_payload_B[35]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[36]),
        .Q(packetOut_V_data_V_1_payload_B[36]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[37]),
        .Q(packetOut_V_data_V_1_payload_B[37]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[38]),
        .Q(packetOut_V_data_V_1_payload_B[38]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[39]),
        .Q(packetOut_V_data_V_1_payload_B[39]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[3]),
        .Q(packetOut_V_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[40]),
        .Q(packetOut_V_data_V_1_payload_B[40]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[41]),
        .Q(packetOut_V_data_V_1_payload_B[41]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[42]),
        .Q(packetOut_V_data_V_1_payload_B[42]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[43]),
        .Q(packetOut_V_data_V_1_payload_B[43]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[44]),
        .Q(packetOut_V_data_V_1_payload_B[44]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[45]),
        .Q(packetOut_V_data_V_1_payload_B[45]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[46]),
        .Q(packetOut_V_data_V_1_payload_B[46]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[47]),
        .Q(packetOut_V_data_V_1_payload_B[47]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[48]),
        .Q(packetOut_V_data_V_1_payload_B[48]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[49]),
        .Q(packetOut_V_data_V_1_payload_B[49]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[4]),
        .Q(packetOut_V_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[50]),
        .Q(packetOut_V_data_V_1_payload_B[50]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[51]),
        .Q(packetOut_V_data_V_1_payload_B[51]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[52]),
        .Q(packetOut_V_data_V_1_payload_B[52]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[53]),
        .Q(packetOut_V_data_V_1_payload_B[53]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[54]),
        .Q(packetOut_V_data_V_1_payload_B[54]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[55]),
        .Q(packetOut_V_data_V_1_payload_B[55]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[56]),
        .Q(packetOut_V_data_V_1_payload_B[56]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[57]),
        .Q(packetOut_V_data_V_1_payload_B[57]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[58]),
        .Q(packetOut_V_data_V_1_payload_B[58]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[59]),
        .Q(packetOut_V_data_V_1_payload_B[59]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[5]),
        .Q(packetOut_V_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[60]),
        .Q(packetOut_V_data_V_1_payload_B[60]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[61]),
        .Q(packetOut_V_data_V_1_payload_B[61]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[62]),
        .Q(packetOut_V_data_V_1_payload_B[62]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[63]),
        .Q(packetOut_V_data_V_1_payload_B[63]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[6]),
        .Q(packetOut_V_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[7]),
        .Q(packetOut_V_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[8]),
        .Q(packetOut_V_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \packetOut_V_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(packetOut_V_data_V_1_load_B),
        .D(packetIn_TDATA[9]),
        .Q(packetOut_V_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    packetOut_V_data_V_1_sel_rd_i_1
       (.I0(\packetOut_V_data_V_1_state_reg_n_0_[0] ),
        .I1(packetOut_TREADY),
        .I2(packetOut_V_data_V_1_sel),
        .O(packetOut_V_data_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    packetOut_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_data_V_1_sel_rd_i_1_n_0),
        .Q(packetOut_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h7F80)) 
    packetOut_V_data_V_1_sel_wr_i_1
       (.I0(packetOut_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state3),
        .I2(packetIn_TVALID),
        .I3(packetOut_V_data_V_1_sel_wr),
        .O(packetOut_V_data_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    packetOut_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_data_V_1_sel_wr_i_1_n_0),
        .Q(packetOut_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA2228000AAAA8000)) 
    \packetOut_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(packetOut_V_data_V_1_ack_in),
        .I2(ap_CS_fsm_state3),
        .I3(packetIn_TVALID),
        .I4(\packetOut_V_data_V_1_state_reg_n_0_[0] ),
        .I5(packetOut_TREADY),
        .O(\packetOut_V_data_V_1_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2AFF)) 
    \packetOut_V_data_V_1_state[1]_i_1 
       (.I0(packetOut_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state3),
        .I2(packetIn_TVALID),
        .I3(\packetOut_V_data_V_1_state_reg_n_0_[0] ),
        .I4(packetOut_TREADY),
        .O(packetOut_V_data_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \packetOut_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\packetOut_V_data_V_1_state[0]_i_1_n_0 ),
        .Q(\packetOut_V_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packetOut_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_data_V_1_state),
        .Q(packetOut_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \packetOut_V_keep_V_1_payload_A[7]_i_1 
       (.I0(packetOut_TVALID),
        .I1(packetOut_V_keep_V_1_ack_in),
        .I2(packetOut_V_keep_V_1_sel_wr),
        .O(packetOut_V_keep_V_1_load_A));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[0]),
        .Q(packetOut_V_keep_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[1]),
        .Q(packetOut_V_keep_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[2]),
        .Q(packetOut_V_keep_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[3]),
        .Q(packetOut_V_keep_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[4]),
        .Q(packetOut_V_keep_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[5]),
        .Q(packetOut_V_keep_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[6]),
        .Q(packetOut_V_keep_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_A),
        .D(packetIn_TKEEP[7]),
        .Q(packetOut_V_keep_V_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \packetOut_V_keep_V_1_payload_B[7]_i_1 
       (.I0(packetOut_TVALID),
        .I1(packetOut_V_keep_V_1_ack_in),
        .I2(packetOut_V_keep_V_1_sel_wr),
        .O(packetOut_V_keep_V_1_load_B));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[0]),
        .Q(packetOut_V_keep_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[1]),
        .Q(packetOut_V_keep_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[2]),
        .Q(packetOut_V_keep_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[3]),
        .Q(packetOut_V_keep_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[4]),
        .Q(packetOut_V_keep_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[5]),
        .Q(packetOut_V_keep_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[6]),
        .Q(packetOut_V_keep_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \packetOut_V_keep_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(packetOut_V_keep_V_1_load_B),
        .D(packetIn_TKEEP[7]),
        .Q(packetOut_V_keep_V_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    packetOut_V_keep_V_1_sel_rd_i_1
       (.I0(packetOut_TREADY),
        .I1(packetOut_TVALID),
        .I2(packetOut_V_keep_V_1_sel),
        .O(packetOut_V_keep_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    packetOut_V_keep_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_keep_V_1_sel_rd_i_1_n_0),
        .Q(packetOut_V_keep_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    packetOut_V_keep_V_1_sel_wr_i_1
       (.I0(packetIn_TVALID),
        .I1(ap_CS_fsm_state3),
        .I2(packetOut_V_data_V_1_ack_in),
        .I3(packetOut_V_keep_V_1_ack_in),
        .I4(packetOut_V_keep_V_1_sel_wr),
        .O(packetOut_V_keep_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    packetOut_V_keep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_keep_V_1_sel_wr_i_1_n_0),
        .Q(packetOut_V_keep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h2A00AA88)) 
    \packetOut_V_keep_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(packetOut_V_keep_V_1_ack_in),
        .I2(packetOut_TREADY),
        .I3(packetOut_TVALID),
        .I4(\packetOut_V_keep_V_1_state[0]_i_2_n_0 ),
        .O(\packetOut_V_keep_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \packetOut_V_keep_V_1_state[0]_i_2 
       (.I0(packetIn_TVALID),
        .I1(ap_CS_fsm_state3),
        .I2(packetOut_V_data_V_1_ack_in),
        .O(\packetOut_V_keep_V_1_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F00FFFF)) 
    \packetOut_V_keep_V_1_state[1]_i_1 
       (.I0(packetIn_TVALID),
        .I1(ap_CS_fsm_state3),
        .I2(packetOut_V_data_V_1_ack_in),
        .I3(packetOut_V_keep_V_1_ack_in),
        .I4(packetOut_TVALID),
        .I5(packetOut_TREADY),
        .O(packetOut_V_keep_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \packetOut_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\packetOut_V_keep_V_1_state[0]_i_1_n_0 ),
        .Q(packetOut_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packetOut_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_keep_V_1_state),
        .Q(packetOut_V_keep_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \packetOut_V_last_V_1_payload_A[0]_i_1 
       (.I0(packetIn_TLAST),
        .I1(\packetOut_V_last_V_1_state_reg_n_0_[0] ),
        .I2(packetOut_V_last_V_1_ack_in),
        .I3(packetOut_V_last_V_1_sel_wr),
        .I4(packetOut_V_last_V_1_payload_A),
        .O(\packetOut_V_last_V_1_payload_A[0]_i_1_n_0 ));
  FDRE \packetOut_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\packetOut_V_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(packetOut_V_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \packetOut_V_last_V_1_payload_B[0]_i_1 
       (.I0(packetIn_TLAST),
        .I1(\packetOut_V_last_V_1_state_reg_n_0_[0] ),
        .I2(packetOut_V_last_V_1_ack_in),
        .I3(packetOut_V_last_V_1_sel_wr),
        .I4(packetOut_V_last_V_1_payload_B),
        .O(\packetOut_V_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \packetOut_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\packetOut_V_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(packetOut_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    packetOut_V_last_V_1_sel_rd_i_1
       (.I0(packetOut_TREADY),
        .I1(\packetOut_V_last_V_1_state_reg_n_0_[0] ),
        .I2(packetOut_V_last_V_1_sel),
        .O(packetOut_V_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    packetOut_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_last_V_1_sel_rd_i_1_n_0),
        .Q(packetOut_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    packetOut_V_last_V_1_sel_wr_i_1
       (.I0(packetIn_TVALID),
        .I1(ap_CS_fsm_state3),
        .I2(packetOut_V_data_V_1_ack_in),
        .I3(packetOut_V_last_V_1_ack_in),
        .I4(packetOut_V_last_V_1_sel_wr),
        .O(packetOut_V_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    packetOut_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_last_V_1_sel_wr_i_1_n_0),
        .Q(packetOut_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h2A00AA88)) 
    \packetOut_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(packetOut_V_last_V_1_ack_in),
        .I2(packetOut_TREADY),
        .I3(\packetOut_V_last_V_1_state_reg_n_0_[0] ),
        .I4(\packetOut_V_keep_V_1_state[0]_i_2_n_0 ),
        .O(\packetOut_V_last_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F00FFFF)) 
    \packetOut_V_last_V_1_state[1]_i_1 
       (.I0(packetIn_TVALID),
        .I1(ap_CS_fsm_state3),
        .I2(packetOut_V_data_V_1_ack_in),
        .I3(packetOut_V_last_V_1_ack_in),
        .I4(\packetOut_V_last_V_1_state_reg_n_0_[0] ),
        .I5(packetOut_TREADY),
        .O(packetOut_V_last_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \packetOut_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\packetOut_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(\packetOut_V_last_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packetOut_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(packetOut_V_last_V_1_state),
        .Q(packetOut_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  FDRE \tmp_1_reg_127_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(axiStreamGate_AXILiteS_s_axi_U_n_10),
        .Q(\tmp_1_reg_127_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \tmp_last_V_reg_136[0]_i_1 
       (.I0(\tmp_last_V_reg_136_reg_n_0_[0] ),
        .I1(packetIn_TVALID),
        .I2(ap_CS_fsm_state3),
        .I3(packetOut_V_data_V_1_ack_in),
        .I4(packetIn_TLAST),
        .O(\tmp_last_V_reg_136[0]_i_1_n_0 ));
  FDRE \tmp_last_V_reg_136_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_last_V_reg_136[0]_i_1_n_0 ),
        .Q(\tmp_last_V_reg_136_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_reg_123_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(axiStreamGate_AXILiteS_s_axi_U_n_9),
        .Q(\tmp_reg_123_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axiStreamGate_AXILiteS_s_axi" *) 
module shell_axiStreamGate_0_0_axiStreamGate_AXILiteS_s_axi
   (s_axi_AXILiteS_RVALID,
    SR,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_AWREADY,
    D,
    \int_programSafe_reg[0]_0 ,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BVALID,
    \tmp_reg_123_reg[0] ,
    \tmp_1_reg_127_reg[0] ,
    s_axi_AXILiteS_RDATA,
    ap_clk,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_ARVALID,
    ap_rst_n,
    s_axi_AXILiteS_AWVALID,
    \tmp_1_reg_127_reg[0]_0 ,
    Q,
    packetIn_TVALID,
    \ap_CS_fsm_reg[2] ,
    \tmp_reg_123_reg[0]_0 ,
    \tmp_1_reg_127_reg[0]_1 ,
    \tmp_last_V_reg_136_reg[0] ,
    ap_reg_ioackin_programSafe_dummy_ack,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_AWADDR);
  output s_axi_AXILiteS_RVALID;
  output [0:0]SR;
  output s_axi_AXILiteS_ARREADY;
  output s_axi_AXILiteS_AWREADY;
  output [1:0]D;
  output \int_programSafe_reg[0]_0 ;
  output s_axi_AXILiteS_WREADY;
  output s_axi_AXILiteS_BVALID;
  output \tmp_reg_123_reg[0] ;
  output \tmp_1_reg_127_reg[0] ;
  output [31:0]s_axi_AXILiteS_RDATA;
  input ap_clk;
  input s_axi_AXILiteS_RREADY;
  input s_axi_AXILiteS_ARVALID;
  input ap_rst_n;
  input s_axi_AXILiteS_AWVALID;
  input \tmp_1_reg_127_reg[0]_0 ;
  input [1:0]Q;
  input packetIn_TVALID;
  input \ap_CS_fsm_reg[2] ;
  input \tmp_reg_123_reg[0]_0 ;
  input \tmp_1_reg_127_reg[0]_1 ;
  input \tmp_last_V_reg_136_reg[0] ;
  input ap_reg_ioackin_programSafe_dummy_ack;
  input [4:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_BREADY;
  input s_axi_AXILiteS_WVALID;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input [4:0]s_axi_AXILiteS_AWADDR;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[3]_i_10_n_0 ;
  wire \ap_CS_fsm[3]_i_3_n_0 ;
  wire \ap_CS_fsm[3]_i_4_n_0 ;
  wire \ap_CS_fsm[3]_i_5_n_0 ;
  wire \ap_CS_fsm[3]_i_6_n_0 ;
  wire \ap_CS_fsm[3]_i_7_n_0 ;
  wire \ap_CS_fsm[3]_i_8_n_0 ;
  wire \ap_CS_fsm[3]_i_9_n_0 ;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_reg_ioackin_programSafe_dummy_ack;
  wire ap_rst_n;
  wire ar_hs;
  wire [0:0]int_programSafe;
  wire \int_programSafe[0]_i_1_n_0 ;
  wire int_programSafe_ap_vld;
  wire int_programSafe_ap_vld_i_1_n_0;
  wire int_programSafe_ap_vld_i_2_n_0;
  wire int_programSafe_ap_vld_i_3_n_0;
  wire \int_programSafe_reg[0]_0 ;
  wire \int_programming[0]_i_1_n_0 ;
  wire \int_programming[10]_i_1_n_0 ;
  wire \int_programming[11]_i_1_n_0 ;
  wire \int_programming[12]_i_1_n_0 ;
  wire \int_programming[13]_i_1_n_0 ;
  wire \int_programming[14]_i_1_n_0 ;
  wire \int_programming[15]_i_1_n_0 ;
  wire \int_programming[16]_i_1_n_0 ;
  wire \int_programming[17]_i_1_n_0 ;
  wire \int_programming[18]_i_1_n_0 ;
  wire \int_programming[19]_i_1_n_0 ;
  wire \int_programming[1]_i_1_n_0 ;
  wire \int_programming[20]_i_1_n_0 ;
  wire \int_programming[21]_i_1_n_0 ;
  wire \int_programming[22]_i_1_n_0 ;
  wire \int_programming[23]_i_1_n_0 ;
  wire \int_programming[24]_i_1_n_0 ;
  wire \int_programming[25]_i_1_n_0 ;
  wire \int_programming[26]_i_1_n_0 ;
  wire \int_programming[27]_i_1_n_0 ;
  wire \int_programming[28]_i_1_n_0 ;
  wire \int_programming[29]_i_1_n_0 ;
  wire \int_programming[2]_i_1_n_0 ;
  wire \int_programming[30]_i_1_n_0 ;
  wire \int_programming[31]_i_2_n_0 ;
  wire \int_programming[31]_i_3_n_0 ;
  wire \int_programming[3]_i_1_n_0 ;
  wire \int_programming[4]_i_1_n_0 ;
  wire \int_programming[5]_i_1_n_0 ;
  wire \int_programming[6]_i_1_n_0 ;
  wire \int_programming[7]_i_1_n_0 ;
  wire \int_programming[8]_i_1_n_0 ;
  wire \int_programming[9]_i_1_n_0 ;
  wire p_0_in3_out;
  wire packetIn_TVALID;
  wire programSafe_ap_vld;
  wire [31:0]programming;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rstate[0]_i_2_n_0 ;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire \tmp_1_reg_127_reg[0] ;
  wire \tmp_1_reg_127_reg[0]_0 ;
  wire \tmp_1_reg_127_reg[0]_1 ;
  wire \tmp_last_V_reg_136_reg[0] ;
  wire \tmp_reg_123_reg[0] ;
  wire \tmp_reg_123_reg[0]_0 ;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(\ap_CS_fsm[3]_i_3_n_0 ),
        .I2(\ap_CS_fsm[3]_i_4_n_0 ),
        .I3(\ap_CS_fsm[3]_i_5_n_0 ),
        .I4(packetIn_TVALID),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEEEEEE)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\tmp_1_reg_127_reg[0]_0 ),
        .I1(Q[0]),
        .I2(\ap_CS_fsm[3]_i_3_n_0 ),
        .I3(\ap_CS_fsm[3]_i_4_n_0 ),
        .I4(\ap_CS_fsm[3]_i_5_n_0 ),
        .I5(packetIn_TVALID),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[3]_i_10 
       (.I0(programming[18]),
        .I1(programming[19]),
        .I2(programming[20]),
        .I3(programming[21]),
        .I4(programming[31]),
        .I5(programming[30]),
        .O(\ap_CS_fsm[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(programming[25]),
        .I1(programming[24]),
        .I2(programming[23]),
        .I3(programming[22]),
        .O(\ap_CS_fsm[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[3]_i_4 
       (.I0(programming[17]),
        .I1(programming[16]),
        .I2(\ap_CS_fsm[3]_i_6_n_0 ),
        .I3(\ap_CS_fsm[3]_i_7_n_0 ),
        .I4(\ap_CS_fsm[3]_i_8_n_0 ),
        .I5(\ap_CS_fsm[3]_i_9_n_0 ),
        .O(\ap_CS_fsm[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ap_CS_fsm[3]_i_5 
       (.I0(\ap_CS_fsm[3]_i_10_n_0 ),
        .I1(programming[26]),
        .I2(programming[27]),
        .I3(programming[28]),
        .I4(programming[29]),
        .O(\ap_CS_fsm[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_6 
       (.I0(programming[7]),
        .I1(programming[6]),
        .I2(programming[5]),
        .I3(programming[4]),
        .O(\ap_CS_fsm[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_7 
       (.I0(programming[3]),
        .I1(programming[2]),
        .I2(programming[1]),
        .I3(programming[0]),
        .O(\ap_CS_fsm[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_8 
       (.I0(programming[15]),
        .I1(programming[14]),
        .I2(programming[13]),
        .I3(programming[12]),
        .O(\ap_CS_fsm[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_9 
       (.I0(programming[11]),
        .I1(programming[10]),
        .I2(programming[9]),
        .I3(programming[8]),
        .O(\ap_CS_fsm[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h88FF8808)) 
    \int_programSafe[0]_i_1 
       (.I0(\int_programSafe_reg[0]_0 ),
        .I1(Q[1]),
        .I2(ap_reg_ioackin_programSafe_dummy_ack),
        .I3(Q[0]),
        .I4(int_programSafe),
        .O(\int_programSafe[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \int_programSafe[0]_i_2 
       (.I0(\tmp_reg_123_reg[0]_0 ),
        .I1(\tmp_1_reg_127_reg[0]_1 ),
        .I2(\tmp_last_V_reg_136_reg[0] ),
        .O(\int_programSafe_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    int_programSafe_ap_vld_i_1
       (.I0(int_programSafe_ap_vld_i_2_n_0),
        .I1(int_programSafe_ap_vld_i_3_n_0),
        .I2(ap_rst_n),
        .I3(s_axi_AXILiteS_ARADDR[4]),
        .I4(programSafe_ap_vld),
        .I5(int_programSafe_ap_vld),
        .O(int_programSafe_ap_vld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    int_programSafe_ap_vld_i_2
       (.I0(s_axi_AXILiteS_ARADDR[1]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[3]),
        .I3(s_axi_AXILiteS_ARADDR[2]),
        .O(int_programSafe_ap_vld_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_programSafe_ap_vld_i_3
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(s_axi_AXILiteS_RVALID),
        .O(int_programSafe_ap_vld_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F700)) 
    int_programSafe_ap_vld_i_4
       (.I0(\tmp_reg_123_reg[0]_0 ),
        .I1(\tmp_1_reg_127_reg[0]_1 ),
        .I2(\tmp_last_V_reg_136_reg[0] ),
        .I3(Q[1]),
        .I4(ap_reg_ioackin_programSafe_dummy_ack),
        .I5(Q[0]),
        .O(programSafe_ap_vld));
  FDRE int_programSafe_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_programSafe_ap_vld_i_1_n_0),
        .Q(int_programSafe_ap_vld),
        .R(SR));
  FDRE \int_programSafe_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_programSafe[0]_i_1_n_0 ),
        .Q(int_programSafe),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[0]),
        .O(\int_programming[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[10]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[10]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[10]),
        .O(\int_programming[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[11]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[11]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[11]),
        .O(\int_programming[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[12]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[12]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[12]),
        .O(\int_programming[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[13]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[13]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[13]),
        .O(\int_programming[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[14]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[14]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[14]),
        .O(\int_programming[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[15]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[15]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[15]),
        .O(\int_programming[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[16]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[16]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[16]),
        .O(\int_programming[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[17]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[17]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[17]),
        .O(\int_programming[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[18]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[18]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[18]),
        .O(\int_programming[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[19]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[19]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[19]),
        .O(\int_programming[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[1]),
        .O(\int_programming[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[20]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[20]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[20]),
        .O(\int_programming[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[21]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[21]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[21]),
        .O(\int_programming[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[22]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[22]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[22]),
        .O(\int_programming[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[23]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[23]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(programming[23]),
        .O(\int_programming[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[24]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[24]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[24]),
        .O(\int_programming[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[25]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[25]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[25]),
        .O(\int_programming[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[26]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[26]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[26]),
        .O(\int_programming[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[27]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[27]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[27]),
        .O(\int_programming[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[28]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[28]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[28]),
        .O(\int_programming[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[29]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[29]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[29]),
        .O(\int_programming[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[2]),
        .O(\int_programming[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[30]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[30]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[30]),
        .O(\int_programming[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \int_programming[31]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(s_axi_AXILiteS_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(\int_programming[31]_i_3_n_0 ),
        .O(p_0_in3_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[31]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[31]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(programming[31]),
        .O(\int_programming[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \int_programming[31]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .O(\int_programming[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[3]),
        .O(\int_programming[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[4]),
        .O(\int_programming[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[5]),
        .O(\int_programming[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[6]),
        .O(\int_programming[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(programming[7]),
        .O(\int_programming[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[8]),
        .O(\int_programming[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_programming[9]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(programming[9]),
        .O(\int_programming[9]_i_1_n_0 ));
  FDRE \int_programming_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[0]_i_1_n_0 ),
        .Q(programming[0]),
        .R(SR));
  FDRE \int_programming_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[10]_i_1_n_0 ),
        .Q(programming[10]),
        .R(SR));
  FDRE \int_programming_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[11]_i_1_n_0 ),
        .Q(programming[11]),
        .R(SR));
  FDRE \int_programming_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[12]_i_1_n_0 ),
        .Q(programming[12]),
        .R(SR));
  FDRE \int_programming_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[13]_i_1_n_0 ),
        .Q(programming[13]),
        .R(SR));
  FDRE \int_programming_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[14]_i_1_n_0 ),
        .Q(programming[14]),
        .R(SR));
  FDRE \int_programming_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[15]_i_1_n_0 ),
        .Q(programming[15]),
        .R(SR));
  FDRE \int_programming_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[16]_i_1_n_0 ),
        .Q(programming[16]),
        .R(SR));
  FDRE \int_programming_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[17]_i_1_n_0 ),
        .Q(programming[17]),
        .R(SR));
  FDRE \int_programming_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[18]_i_1_n_0 ),
        .Q(programming[18]),
        .R(SR));
  FDRE \int_programming_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[19]_i_1_n_0 ),
        .Q(programming[19]),
        .R(SR));
  FDRE \int_programming_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[1]_i_1_n_0 ),
        .Q(programming[1]),
        .R(SR));
  FDRE \int_programming_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[20]_i_1_n_0 ),
        .Q(programming[20]),
        .R(SR));
  FDRE \int_programming_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[21]_i_1_n_0 ),
        .Q(programming[21]),
        .R(SR));
  FDRE \int_programming_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[22]_i_1_n_0 ),
        .Q(programming[22]),
        .R(SR));
  FDRE \int_programming_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[23]_i_1_n_0 ),
        .Q(programming[23]),
        .R(SR));
  FDRE \int_programming_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[24]_i_1_n_0 ),
        .Q(programming[24]),
        .R(SR));
  FDRE \int_programming_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[25]_i_1_n_0 ),
        .Q(programming[25]),
        .R(SR));
  FDRE \int_programming_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[26]_i_1_n_0 ),
        .Q(programming[26]),
        .R(SR));
  FDRE \int_programming_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[27]_i_1_n_0 ),
        .Q(programming[27]),
        .R(SR));
  FDRE \int_programming_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[28]_i_1_n_0 ),
        .Q(programming[28]),
        .R(SR));
  FDRE \int_programming_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[29]_i_1_n_0 ),
        .Q(programming[29]),
        .R(SR));
  FDRE \int_programming_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[2]_i_1_n_0 ),
        .Q(programming[2]),
        .R(SR));
  FDRE \int_programming_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[30]_i_1_n_0 ),
        .Q(programming[30]),
        .R(SR));
  FDRE \int_programming_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[31]_i_2_n_0 ),
        .Q(programming[31]),
        .R(SR));
  FDRE \int_programming_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[3]_i_1_n_0 ),
        .Q(programming[3]),
        .R(SR));
  FDRE \int_programming_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[4]_i_1_n_0 ),
        .Q(programming[4]),
        .R(SR));
  FDRE \int_programming_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[5]_i_1_n_0 ),
        .Q(programming[5]),
        .R(SR));
  FDRE \int_programming_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[6]_i_1_n_0 ),
        .Q(programming[6]),
        .R(SR));
  FDRE \int_programming_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[7]_i_1_n_0 ),
        .Q(programming[7]),
        .R(SR));
  FDRE \int_programming_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[8]_i_1_n_0 ),
        .Q(programming[8]),
        .R(SR));
  FDRE \int_programming_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(\int_programming[9]_i_1_n_0 ),
        .Q(programming[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(programming[0]),
        .I2(\rdata[0]_i_3_n_0 ),
        .I3(ar_hs),
        .I4(s_axi_AXILiteS_RDATA[0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080800000008000)) 
    \rdata[0]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(\rdata[0]_i_4_n_0 ),
        .I3(int_programSafe),
        .I4(s_axi_AXILiteS_ARADDR[2]),
        .I5(int_programSafe_ap_vld),
        .O(\rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \rdata[0]_i_3 
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(s_axi_AXILiteS_ARADDR[1]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[0]_i_4 
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(s_axi_AXILiteS_ARADDR[1]),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \rdata[31]_i_1 
       (.I0(ar_hs),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[3]),
        .I3(s_axi_AXILiteS_ARADDR[2]),
        .I4(s_axi_AXILiteS_ARADDR[1]),
        .I5(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \rdata[31]_i_2 
       (.I0(s_axi_AXILiteS_RVALID),
        .I1(s_axi_AXILiteS_ARVALID),
        .I2(ap_rst_n),
        .O(ar_hs));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[10]),
        .Q(s_axi_AXILiteS_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[11]),
        .Q(s_axi_AXILiteS_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[12]),
        .Q(s_axi_AXILiteS_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[13]),
        .Q(s_axi_AXILiteS_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[14]),
        .Q(s_axi_AXILiteS_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[15]),
        .Q(s_axi_AXILiteS_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[16]),
        .Q(s_axi_AXILiteS_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[17]),
        .Q(s_axi_AXILiteS_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[18]),
        .Q(s_axi_AXILiteS_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[19]),
        .Q(s_axi_AXILiteS_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[1]),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[20]),
        .Q(s_axi_AXILiteS_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[21]),
        .Q(s_axi_AXILiteS_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[22]),
        .Q(s_axi_AXILiteS_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[23]),
        .Q(s_axi_AXILiteS_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[24]),
        .Q(s_axi_AXILiteS_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[25]),
        .Q(s_axi_AXILiteS_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[26]),
        .Q(s_axi_AXILiteS_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[27]),
        .Q(s_axi_AXILiteS_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[28]),
        .Q(s_axi_AXILiteS_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[29]),
        .Q(s_axi_AXILiteS_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[2]),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[30]),
        .Q(s_axi_AXILiteS_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[31]),
        .Q(s_axi_AXILiteS_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[3]),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[4]),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[5]),
        .Q(s_axi_AXILiteS_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[6]),
        .Q(s_axi_AXILiteS_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[7]),
        .Q(s_axi_AXILiteS_RDATA[7]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[8]),
        .Q(s_axi_AXILiteS_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(programming[9]),
        .Q(s_axi_AXILiteS_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rstate[0]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \rstate[0]_i_2 
       (.I0(s_axi_AXILiteS_RREADY),
        .I1(s_axi_AXILiteS_RVALID),
        .I2(s_axi_AXILiteS_ARVALID),
        .O(\rstate[0]_i_2_n_0 ));
  FDRE \rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rstate[0]_i_2_n_0 ),
        .Q(s_axi_AXILiteS_RVALID),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_AXILiteS_ARREADY_INST_0
       (.I0(ap_rst_n),
        .I1(s_axi_AXILiteS_RVALID),
        .O(s_axi_AXILiteS_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axi_AXILiteS_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(ap_rst_n),
        .I2(wstate[0]),
        .O(s_axi_AXILiteS_AWREADY));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_AXILiteS_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_AXILiteS_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_AXILiteS_WREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_AXILiteS_WREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \tmp_1_reg_127[0]_i_1 
       (.I0(packetIn_TVALID),
        .I1(Q[0]),
        .I2(\ap_CS_fsm[3]_i_3_n_0 ),
        .I3(\ap_CS_fsm[3]_i_4_n_0 ),
        .I4(\ap_CS_fsm[3]_i_5_n_0 ),
        .I5(\tmp_1_reg_127_reg[0]_1 ),
        .O(\tmp_1_reg_127_reg[0] ));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \tmp_reg_123[0]_i_1 
       (.I0(\ap_CS_fsm[3]_i_3_n_0 ),
        .I1(\ap_CS_fsm[3]_i_4_n_0 ),
        .I2(\ap_CS_fsm[3]_i_5_n_0 ),
        .I3(Q[0]),
        .I4(\tmp_reg_123_reg[0]_0 ),
        .O(\tmp_reg_123_reg[0] ));
  LUT4 #(
    .INIT(16'h1000)) 
    \waddr[4]_i_1 
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(ap_rst_n),
        .I3(s_axi_AXILiteS_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0074)) 
    \wstate[0]_i_1 
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(wstate[0]),
        .I2(s_axi_AXILiteS_AWVALID),
        .I3(wstate[1]),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h05C0)) 
    \wstate[1]_i_1 
       (.I0(s_axi_AXILiteS_BREADY),
        .I1(s_axi_AXILiteS_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .O(\wstate[1]_i_1_n_0 ));
  FDRE \wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_0 ),
        .Q(wstate[0]),
        .R(SR));
  FDRE \wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_0 ),
        .Q(wstate[1]),
        .R(SR));
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
