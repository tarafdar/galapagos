// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jul  3 18:05:40 2017
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_hwicap_0_0/shell_axi_hwicap_0_0_sim_netlist.v
// Design      : shell_axi_hwicap_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shell_axi_hwicap_0_0,axi_hwicap,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_hwicap,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module shell_axi_hwicap_0_0
   (icap_clk,
    eos_in,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
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
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ICAP_CLK CLK" *) input icap_clk;
  input eos_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 IP2INTC_IRPT INTERRUPT" *) output ip2intc_irpt;

  wire eos_in;
  wire icap_clk;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
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
  wire NLW_U0_cap_req_UNCONNECTED;
  wire NLW_U0_cfgclk_UNCONNECTED;
  wire NLW_U0_cfgmclk_UNCONNECTED;
  wire NLW_U0_icap_csib_UNCONNECTED;
  wire NLW_U0_icap_rdwrb_UNCONNECTED;
  wire NLW_U0_preq_UNCONNECTED;
  wire [31:0]NLW_U0_icap_o_UNCONNECTED;

  (* C_BRAM_SRL_FIFO_TYPE = "1" *) 
  (* C_DEVICE_ID = "69353619" *) 
  (* C_ENABLE_ASYNC = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_ICAP_EXTERNAL = "0" *) 
  (* C_ICAP_WIDTH_S = "X32" *) 
  (* C_INCLUDE_STARTUP = "0" *) 
  (* C_MODE = "0" *) 
  (* C_NOREAD = "0" *) 
  (* C_OPERATION = "0" *) 
  (* C_READ_FIFO_DEPTH = "128" *) 
  (* C_SHARED_STARTUP = "0" *) 
  (* C_SIMULATION = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_WRITE_FIFO_DEPTH = "64" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  shell_axi_hwicap_0_0_axi_hwicap U0
       (.cap_gnt(1'b0),
        .cap_rel(1'b0),
        .cap_req(NLW_U0_cap_req_UNCONNECTED),
        .cfgclk(NLW_U0_cfgclk_UNCONNECTED),
        .cfgmclk(NLW_U0_cfgmclk_UNCONNECTED),
        .clk(1'b0),
        .eos_in(eos_in),
        .gsr(1'b0),
        .gts(1'b0),
        .icap_avail(1'b0),
        .icap_clk(icap_clk),
        .icap_csib(NLW_U0_icap_csib_UNCONNECTED),
        .icap_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .icap_o(NLW_U0_icap_o_UNCONNECTED[31:0]),
        .icap_rdwrb(NLW_U0_icap_rdwrb_UNCONNECTED),
        .ip2intc_irpt(ip2intc_irpt),
        .keyclearb(1'b0),
        .pack(1'b0),
        .preq(NLW_U0_preq_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .usrcclko(1'b0),
        .usrcclkts(1'b0),
        .usrdoneo(1'b0),
        .usrdonets(1'b0));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module shell_axi_hwicap_0_0_address_decoder
   (busip_1_reg,
    IP2Bus_WrAck_reg,
    ip2bus_wrack_i_reg,
    s_axi_arready,
    s_axi_wready,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    intr2bus_rdack0,
    irpt_rdack,
    irpt_wrack,
    ip2bus_rdack_i_reg,
    IP2Bus_WrAck0,
    p_11_in,
    IP2Bus_RdAck0,
    p_10_in,
    D,
    \IP2Bus_Data_reg[31] ,
    \ip2bus_data_i_reg[0] ,
    ip2bus_wrack_i_reg_0,
    ipif_glbl_irpt_enable_reg_reg,
    E,
    \sz_i_reg[0] ,
    \ip_irpt_enable_reg_reg[3] ,
    start2,
    s_axi_aclk,
    s_axi_aresetn,
    Q,
    is_read,
    ip2bus_rdack_i,
    is_write_reg,
    ip2bus_wrack_i,
    irpt_wrack_d1,
    irpt_rdack_d1,
    busip_1_reg_0,
    ram_full_i_reg,
    wr_rst_busy_i2_out,
    ipbus_ack,
    ipbus_ack_fifo,
    p_5_out_0,
    \Size_counter_i3_reg[0] ,
    scndry_vect_out,
    \wr_data_count_i_reg[5] ,
    \rd_dc_i_reg[6] ,
    \cr_i_reg[0] ,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \IP2Bus_Data_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[3]_0 ,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    ipif_glbl_irpt_enable_reg,
    intr2bus_wrack,
    p_5_out,
    s_axi_wdata,
    \bus2ip_addr_i_reg[8] ,
    bus2ip_rnw_i);
  output busip_1_reg;
  output IP2Bus_WrAck_reg;
  output ip2bus_wrack_i_reg;
  output s_axi_arready;
  output s_axi_wready;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output intr2bus_rdack0;
  output irpt_rdack;
  output irpt_wrack;
  output [0:0]ip2bus_rdack_i_reg;
  output IP2Bus_WrAck0;
  output p_11_in;
  output IP2Bus_RdAck0;
  output p_10_in;
  output [31:0]D;
  output \IP2Bus_Data_reg[31] ;
  output [4:0]\ip2bus_data_i_reg[0] ;
  output ip2bus_wrack_i_reg_0;
  output ipif_glbl_irpt_enable_reg_reg;
  output [0:0]E;
  output [0:0]\sz_i_reg[0] ;
  output [0:0]\ip_irpt_enable_reg_reg[3] ;
  input start2;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [4:0]Q;
  input is_read;
  input ip2bus_rdack_i;
  input is_write_reg;
  input ip2bus_wrack_i;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input busip_1_reg_0;
  input ram_full_i_reg;
  input wr_rst_busy_i2_out;
  input ipbus_ack;
  input ipbus_ack_fifo;
  input [31:0]p_5_out_0;
  input [11:0]\Size_counter_i3_reg[0] ;
  input [31:0]scndry_vect_out;
  input [5:0]\wr_data_count_i_reg[5] ;
  input [6:0]\rd_dc_i_reg[6] ;
  input [4:0]\cr_i_reg[0] ;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input [4:0]\IP2Bus_Data_reg[0] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [3:0]\ip_irpt_enable_reg_reg[3]_0 ;
  input p_1_in5_in;
  input p_1_in2_in;
  input p_1_in;
  input ipif_glbl_irpt_enable_reg;
  input intr2bus_wrack;
  input p_5_out;
  input [0:0]s_axi_wdata;
  input [6:0]\bus2ip_addr_i_reg[8] ;
  input bus2ip_rnw_i;

  wire Bus_RNW_reg_i_1_n_0;
  wire [31:0]D;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \IP2Bus_Data[20]_i_2_n_0 ;
  wire \IP2Bus_Data[20]_i_3_n_0 ;
  wire \IP2Bus_Data[25]_i_2_n_0 ;
  wire \IP2Bus_Data[26]_i_2_n_0 ;
  wire \IP2Bus_Data[26]_i_3_n_0 ;
  wire \IP2Bus_Data[26]_i_4_n_0 ;
  wire \IP2Bus_Data[27]_i_2_n_0 ;
  wire \IP2Bus_Data[27]_i_3_n_0 ;
  wire \IP2Bus_Data[28]_i_2_n_0 ;
  wire \IP2Bus_Data[28]_i_3_n_0 ;
  wire \IP2Bus_Data[29]_i_2_n_0 ;
  wire \IP2Bus_Data[29]_i_3_n_0 ;
  wire \IP2Bus_Data[30]_i_2_n_0 ;
  wire \IP2Bus_Data[30]_i_3_n_0 ;
  wire \IP2Bus_Data[31]_i_2_n_0 ;
  wire \IP2Bus_Data[31]_i_3_n_0 ;
  wire [4:0]\IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[31] ;
  wire IP2Bus_RdAck0;
  wire IP2Bus_RdAck_i_2_n_0;
  wire IP2Bus_WrAck0;
  wire IP2Bus_WrAck_i_2_n_0;
  wire IP2Bus_WrAck_reg;
  wire [4:0]Q;
  wire [11:0]\Size_counter_i3_reg[0] ;
  wire [6:0]\bus2ip_addr_i_reg[8] ;
  wire bus2ip_rnw_i;
  wire busip_1_reg;
  wire busip_1_reg_0;
  wire [4:0]\cr_i_reg[0] ;
  wire cs_ce_clr;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire \ip2bus_data_i[0]_i_3_n_0 ;
  wire \ip2bus_data_i[0]_i_4_n_0 ;
  wire \ip2bus_data_i[0]_i_5_n_0 ;
  wire \ip2bus_data_i[0]_i_6_n_0 ;
  wire \ip2bus_data_i[0]_i_7_n_0 ;
  wire [4:0]\ip2bus_data_i_reg[0] ;
  wire ip2bus_rdack_i;
  wire [0:0]ip2bus_rdack_i_reg;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_reg;
  wire ip2bus_wrack_i_reg_0;
  wire [0:0]\ip_irpt_enable_reg_reg[3] ;
  wire [3:0]\ip_irpt_enable_reg_reg[3]_0 ;
  wire ipbus_1_i_2_n_0;
  wire ipbus_ack;
  wire ipbus_ack_fifo;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read;
  wire is_write_reg;
  wire p_10_in;
  wire p_10_in_0;
  wire p_10_out;
  wire p_11_in;
  wire p_11_in_1;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_out;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_23_out;
  wire p_24_in;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_4_in;
  wire p_4_out;
  wire p_5_in;
  wire p_5_out;
  wire [31:0]p_5_out_0;
  wire p_5_out_2;
  wire p_6_in;
  wire p_6_out;
  wire p_7_out;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_0;
  wire pselect_hit_i_1;
  wire ram_full_i_reg;
  wire [6:0]\rd_dc_i_reg[6] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [0:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire scndry_out;
  wire [31:0]scndry_vect_out;
  wire start2;
  wire [0:0]\sz_i_reg[0] ;
  wire [5:0]\wr_data_count_i_reg[5] ;
  wire wr_rst_busy_i2_out;

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(start2),
        .I2(ip2bus_wrack_i_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(ip2bus_wrack_i_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3__0 
       (.I0(busip_1_reg),
        .I1(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_15_out));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_15_out),
        .Q(p_24_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(pselect_hit_i_1),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(p_5_out_2));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_5_out_2),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(pselect_hit_i_1),
        .O(p_4_out));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_4_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(pselect_hit_i_1),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(p_3_out));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_3_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(pselect_hit_i_1),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_2_out),
        .Q(p_11_in_1),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(pselect_hit_i_1),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_1_out),
        .Q(p_10_in_0),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(pselect_hit_i_1),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .O(p_23_out));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(start2),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .O(pselect_hit_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_23_out),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(pselect_hit_i_0),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(IP2Bus_WrAck_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(pselect_hit_i_0),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(busip_1_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(pselect_hit_i_0),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(pselect_hit_i_0),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(pselect_hit_i_1),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_14_out),
        .Q(p_23_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(pselect_hit_i_0),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(pselect_hit_i_0),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(pselect_hit_i_0),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hFD)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(s_axi_aresetn),
        .I1(s_axi_arready),
        .I2(s_axi_wready),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2 
       (.I0(pselect_hit_i_0),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(p_7_out));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3 
       (.I0(start2),
        .I1(\bus2ip_addr_i_reg[8] [5]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(pselect_hit_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_7_out),
        .Q(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(pselect_hit_i_1),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_13_out),
        .Q(p_22_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(pselect_hit_i_1),
        .O(p_12_out));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_12_out),
        .Q(p_21_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(pselect_hit_i_1),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_11_out),
        .Q(p_20_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(pselect_hit_i_1),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_10_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(pselect_hit_i_1),
        .O(p_9_out));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_9_out),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(pselect_hit_i_1),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(pselect_hit_i_1),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_6_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_3 
       (.I0(ip2bus_wrack_i_reg),
        .I1(irpt_wrack_d1),
        .I2(p_16_in),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(p_5_out_0[31]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[31]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(p_5_out_0[21]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[21]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(p_5_out_0[20]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[20]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(p_5_out_0[19]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[19]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(p_5_out_0[18]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[18]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(p_5_out_0[17]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[17]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(p_5_out_0[16]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[16]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(p_5_out_0[15]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[15]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(p_5_out_0[14]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[14]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(p_5_out_0[13]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[13]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(p_5_out_0[12]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[12]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(p_5_out_0[30]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[30]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(\IP2Bus_Data[20]_i_2_n_0 ),
        .I1(scndry_vect_out[11]),
        .I2(\IP2Bus_Data[20]_i_3_n_0 ),
        .I3(\Size_counter_i3_reg[0] [11]),
        .I4(p_5_out_0[11]),
        .I5(\IP2Bus_Data_reg[31] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Data[20]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I1(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Data[20]_i_3 
       (.I0(p_6_in),
        .I1(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(\IP2Bus_Data[20]_i_2_n_0 ),
        .I1(scndry_vect_out[10]),
        .I2(\IP2Bus_Data[20]_i_3_n_0 ),
        .I3(\Size_counter_i3_reg[0] [10]),
        .I4(p_5_out_0[10]),
        .I5(\IP2Bus_Data_reg[31] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(\IP2Bus_Data[20]_i_2_n_0 ),
        .I1(scndry_vect_out[9]),
        .I2(\IP2Bus_Data[20]_i_3_n_0 ),
        .I3(\Size_counter_i3_reg[0] [9]),
        .I4(p_5_out_0[9]),
        .I5(\IP2Bus_Data_reg[31] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(\IP2Bus_Data[20]_i_2_n_0 ),
        .I1(scndry_vect_out[8]),
        .I2(\IP2Bus_Data[20]_i_3_n_0 ),
        .I3(\Size_counter_i3_reg[0] [8]),
        .I4(p_5_out_0[8]),
        .I5(\IP2Bus_Data_reg[31] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(\IP2Bus_Data[20]_i_2_n_0 ),
        .I1(scndry_vect_out[7]),
        .I2(\IP2Bus_Data[20]_i_3_n_0 ),
        .I3(\Size_counter_i3_reg[0] [7]),
        .I4(p_5_out_0[7]),
        .I5(\IP2Bus_Data_reg[31] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0808080)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(p_5_out_0[6]),
        .I1(busip_1_reg),
        .I2(ip2bus_wrack_i_reg),
        .I3(p_6_in),
        .I4(\Size_counter_i3_reg[0] [6]),
        .I5(\IP2Bus_Data[25]_i_2_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[25]_i_2 
       (.I0(\rd_dc_i_reg[6] [6]),
        .I1(p_2_in),
        .I2(scndry_vect_out[6]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(\IP2Bus_Data[26]_i_2_n_0 ),
        .I1(p_6_in),
        .I2(\Size_counter_i3_reg[0] [5]),
        .I3(p_5_out_0[5]),
        .I4(busip_1_reg),
        .I5(ip2bus_wrack_i_reg),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \IP2Bus_Data[26]_i_2 
       (.I0(\IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\wr_data_count_i_reg[5] [5]),
        .I2(\IP2Bus_Data[20]_i_2_n_0 ),
        .I3(scndry_vect_out[5]),
        .I4(\rd_dc_i_reg[6] [5]),
        .I5(\IP2Bus_Data[26]_i_4_n_0 ),
        .O(\IP2Bus_Data[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Data[26]_i_3 
       (.I0(p_3_in),
        .I1(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Data[26]_i_4 
       (.I0(p_2_in),
        .I1(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(\IP2Bus_Data_reg[31] ),
        .I1(p_5_out_0[4]),
        .I2(\IP2Bus_Data[27]_i_2_n_0 ),
        .I3(\IP2Bus_Data[20]_i_2_n_0 ),
        .I4(scndry_vect_out[4]),
        .I5(\IP2Bus_Data[27]_i_3_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[27]_i_2 
       (.I0(\Size_counter_i3_reg[0] [4]),
        .I1(p_6_in),
        .I2(\rd_dc_i_reg[6] [4]),
        .I3(p_2_in),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hF4440000)) 
    \IP2Bus_Data[27]_i_3 
       (.I0(\wr_data_count_i_reg[5] [4]),
        .I1(p_3_in),
        .I2(\cr_i_reg[0] [4]),
        .I3(p_5_in),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(\IP2Bus_Data_reg[31] ),
        .I1(p_5_out_0[3]),
        .I2(\IP2Bus_Data[28]_i_2_n_0 ),
        .I3(\IP2Bus_Data[20]_i_2_n_0 ),
        .I4(scndry_vect_out[3]),
        .I5(\IP2Bus_Data[28]_i_3_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[28]_i_2 
       (.I0(\Size_counter_i3_reg[0] [3]),
        .I1(p_6_in),
        .I2(\rd_dc_i_reg[6] [3]),
        .I3(p_2_in),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4440000)) 
    \IP2Bus_Data[28]_i_3 
       (.I0(\wr_data_count_i_reg[5] [3]),
        .I1(p_3_in),
        .I2(\cr_i_reg[0] [3]),
        .I3(p_5_in),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(\IP2Bus_Data[29]_i_2_n_0 ),
        .I1(\IP2Bus_Data_reg[31] ),
        .I2(p_5_out_0[2]),
        .I3(\IP2Bus_Data[29]_i_3_n_0 ),
        .I4(\IP2Bus_Data[20]_i_3_n_0 ),
        .I5(\Size_counter_i3_reg[0] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \IP2Bus_Data[29]_i_2 
       (.I0(\IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\wr_data_count_i_reg[5] [2]),
        .I2(\IP2Bus_Data[20]_i_2_n_0 ),
        .I3(scndry_vect_out[2]),
        .I4(\rd_dc_i_reg[6] [2]),
        .I5(\IP2Bus_Data[26]_i_4_n_0 ),
        .O(\IP2Bus_Data[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[29]_i_3 
       (.I0(\cr_i_reg[0] [2]),
        .I1(p_5_in),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I3(p_4_in),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(p_5_out_0[29]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[29]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(\IP2Bus_Data[30]_i_2_n_0 ),
        .I1(\IP2Bus_Data_reg[31] ),
        .I2(p_5_out_0[1]),
        .I3(\IP2Bus_Data[30]_i_3_n_0 ),
        .I4(\IP2Bus_Data[20]_i_3_n_0 ),
        .I5(\Size_counter_i3_reg[0] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \IP2Bus_Data[30]_i_2 
       (.I0(\IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\wr_data_count_i_reg[5] [1]),
        .I2(\IP2Bus_Data[20]_i_2_n_0 ),
        .I3(scndry_vect_out[1]),
        .I4(\rd_dc_i_reg[6] [1]),
        .I5(\IP2Bus_Data[26]_i_4_n_0 ),
        .O(\IP2Bus_Data[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[30]_i_3 
       (.I0(\cr_i_reg[0] [1]),
        .I1(p_5_in),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I3(p_4_in),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data_reg[31] ),
        .I2(p_5_out_0[0]),
        .I3(\IP2Bus_Data[31]_i_3_n_0 ),
        .I4(\IP2Bus_Data[20]_i_3_n_0 ),
        .I5(\Size_counter_i3_reg[0] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(\IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\wr_data_count_i_reg[5] [0]),
        .I2(\IP2Bus_Data[20]_i_2_n_0 ),
        .I3(scndry_vect_out[0]),
        .I4(\rd_dc_i_reg[6] [0]),
        .I5(\IP2Bus_Data[26]_i_4_n_0 ),
        .O(\IP2Bus_Data[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[31]_i_3 
       (.I0(\cr_i_reg[0] [0]),
        .I1(p_5_in),
        .I2(scndry_out),
        .I3(p_4_in),
        .I4(ip2bus_wrack_i_reg),
        .O(\IP2Bus_Data[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(p_5_out_0[28]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[28]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(p_5_out_0[27]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[27]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(p_5_out_0[26]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[26]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(p_5_out_0[25]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[25]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(p_5_out_0[24]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[24]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(p_5_out_0[23]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[23]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(p_5_out_0[22]),
        .I1(busip_1_reg),
        .I2(scndry_vect_out[22]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(ip2bus_wrack_i_reg),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFA8A8A8A0A0A0A0)) 
    IP2Bus_RdAck_i_1
       (.I0(ipbus_ack),
        .I1(ipbus_1_i_2_n_0),
        .I2(IP2Bus_RdAck_i_2_n_0),
        .I3(ipbus_ack_fifo),
        .I4(busip_1_reg),
        .I5(ip2bus_wrack_i_reg),
        .O(IP2Bus_RdAck0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    IP2Bus_RdAck_i_2
       (.I0(p_6_in),
        .I1(ip2bus_wrack_i_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .O(IP2Bus_RdAck_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCCCCCCC8888C888)) 
    IP2Bus_WrAck_i_1
       (.I0(IP2Bus_WrAck_i_2_n_0),
        .I1(busip_1_reg_0),
        .I2(ram_full_i_reg),
        .I3(IP2Bus_WrAck_reg),
        .I4(wr_rst_busy_i2_out),
        .I5(ipbus_1_i_2_n_0),
        .O(IP2Bus_WrAck0));
  LUT3 #(
    .INIT(8'hFE)) 
    IP2Bus_WrAck_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I1(p_6_in),
        .I2(busip_1_reg),
        .O(IP2Bus_WrAck_i_2_n_0));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F0E)) 
    busip_1_i_1
       (.I0(ipbus_1_i_2_n_0),
        .I1(IP2Bus_WrAck_reg),
        .I2(ip2bus_wrack_i_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I4(p_6_in),
        .I5(busip_1_reg),
        .O(p_11_in));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cr_i[0]_i_2 
       (.I0(p_5_in),
        .I1(ip2bus_wrack_i_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    intr2bus_rdack_i_1
       (.I0(irpt_rdack_d1),
        .I1(ip2bus_wrack_i_reg),
        .I2(p_16_in),
        .I3(p_17_in),
        .I4(p_14_in),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    intr2bus_wrack_i_1
       (.I0(p_17_in),
        .I1(p_14_in),
        .I2(p_16_in),
        .I3(irpt_wrack_d1),
        .I4(ip2bus_wrack_i_reg),
        .O(interrupt_wrce_strb));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ip2bus_data_i[0]_i_1 
       (.I0(\ip2bus_data_i[0]_i_3_n_0 ),
        .I1(ip2bus_wrack_i_reg),
        .O(ip2bus_rdack_i_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \ip2bus_data_i[0]_i_2 
       (.I0(ip2bus_wrack_i_reg),
        .I1(p_16_in),
        .I2(p_14_in),
        .I3(p_17_in),
        .I4(ipif_glbl_irpt_enable_reg),
        .I5(\IP2Bus_Data_reg[0] [4]),
        .O(\ip2bus_data_i_reg[0] [4]));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \ip2bus_data_i[0]_i_3 
       (.I0(\ip2bus_data_i[0]_i_4_n_0 ),
        .I1(p_16_in),
        .I2(p_17_in),
        .I3(p_14_in),
        .I4(\ip2bus_data_i[0]_i_5_n_0 ),
        .I5(s_axi_aresetn),
        .O(\ip2bus_data_i[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ip2bus_data_i[0]_i_4 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(p_22_in),
        .I3(ipbus_1_i_2_n_0),
        .O(\ip2bus_data_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \ip2bus_data_i[0]_i_5 
       (.I0(\ip2bus_data_i[0]_i_6_n_0 ),
        .I1(\ip2bus_data_i[0]_i_7_n_0 ),
        .I2(p_18_in),
        .I3(p_19_in),
        .I4(p_20_in),
        .I5(p_21_in),
        .O(\ip2bus_data_i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ip2bus_data_i[0]_i_6 
       (.I0(p_10_in_0),
        .I1(p_9_in),
        .I2(IP2Bus_WrAck_reg),
        .I3(busip_1_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I5(p_6_in),
        .O(\ip2bus_data_i[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ip2bus_data_i[0]_i_7 
       (.I0(p_11_in_1),
        .I1(p_12_in),
        .I2(p_13_in),
        .I3(p_15_in),
        .O(\ip2bus_data_i[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEFAAAAAEEAAAAAA)) 
    \ip2bus_data_i[28]_i_1 
       (.I0(\IP2Bus_Data_reg[0] [3]),
        .I1(p_1_in),
        .I2(\ip_irpt_enable_reg_reg[3]_0 [3]),
        .I3(p_16_in),
        .I4(ip2bus_wrack_i_reg),
        .I5(p_14_in),
        .O(\ip2bus_data_i_reg[0] [3]));
  LUT6 #(
    .INIT(64'hEEFAAAAAEEAAAAAA)) 
    \ip2bus_data_i[29]_i_1 
       (.I0(\IP2Bus_Data_reg[0] [2]),
        .I1(p_1_in2_in),
        .I2(\ip_irpt_enable_reg_reg[3]_0 [2]),
        .I3(p_16_in),
        .I4(ip2bus_wrack_i_reg),
        .I5(p_14_in),
        .O(\ip2bus_data_i_reg[0] [2]));
  LUT6 #(
    .INIT(64'hEEFAAAAAEEAAAAAA)) 
    \ip2bus_data_i[30]_i_1 
       (.I0(\IP2Bus_Data_reg[0] [1]),
        .I1(p_1_in5_in),
        .I2(\ip_irpt_enable_reg_reg[3]_0 [1]),
        .I3(p_16_in),
        .I4(ip2bus_wrack_i_reg),
        .I5(p_14_in),
        .O(\ip2bus_data_i_reg[0] [1]));
  LUT6 #(
    .INIT(64'hEEFAAAAAEEAAAAAA)) 
    \ip2bus_data_i[31]_i_1 
       (.I0(\IP2Bus_Data_reg[0] [0]),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I2(\ip_irpt_enable_reg_reg[3]_0 [0]),
        .I3(p_16_in),
        .I4(ip2bus_wrack_i_reg),
        .I5(p_14_in),
        .O(\ip2bus_data_i_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    ip2bus_wrack_i_i_1
       (.I0(intr2bus_wrack),
        .I1(p_5_out),
        .I2(ip2bus_wrack_i_reg),
        .I3(\ip2bus_data_i[0]_i_3_n_0 ),
        .O(ip2bus_wrack_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ip_irpt_enable_reg[3]_i_1 
       (.I0(p_14_in),
        .I1(ip2bus_wrack_i_reg),
        .O(\ip_irpt_enable_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hFF00FF00FF00FE00)) 
    ipbus_1_i_1
       (.I0(p_6_in),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg_n_0_[23] ),
        .I2(busip_1_reg),
        .I3(ip2bus_wrack_i_reg),
        .I4(ipbus_1_i_2_n_0),
        .I5(IP2Bus_WrAck_reg),
        .O(p_10_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ipbus_1_i_2
       (.I0(p_4_in),
        .I1(p_5_in),
        .I2(p_2_in),
        .I3(p_3_in),
        .O(ipbus_1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata),
        .I1(p_17_in),
        .I2(ip2bus_wrack_i_reg),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    irpt_rdack_d1_i_1
       (.I0(p_16_in),
        .I1(p_17_in),
        .I2(p_14_in),
        .I3(ip2bus_wrack_i_reg),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    irpt_wrack_d1_i_1
       (.I0(p_16_in),
        .I1(p_17_in),
        .I2(p_14_in),
        .I3(ip2bus_wrack_i_reg),
        .O(irpt_wrack));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    s_axi_arready_INST_0
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(Q[0]),
        .I2(is_read),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(ip2bus_rdack_i),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    s_axi_wready_INST_0
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(Q[0]),
        .I2(is_write_reg),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(ip2bus_wrack_i),
        .O(s_axi_wready));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(s_axi_wready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sz_i[0]_i_1 
       (.I0(p_6_in),
        .I1(ip2bus_wrack_i_reg),
        .O(\sz_i_reg[0] ));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module shell_axi_hwicap_0_0_async_fifo_fg
   (D,
    prmry_in,
    \grstd1.grst_full.grst_f.rst_d1_reg ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \gic0.gc1.count_reg[0] ,
    IP2Bus_WrAck_reg,
    s_axi_aclk,
    s_axi_wdata,
    fifo_clear,
    wrfifo_rden,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    busip_1,
    Bus_RNW_reg);
  output [31:0]D;
  output prmry_in;
  output \grstd1.grst_full.grst_f.rst_d1_reg ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output \gic0.gc1.count_reg[0] ;
  output IP2Bus_WrAck_reg;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input fifo_clear;
  input wrfifo_rden;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input busip_1;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [31:0]D;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire IP2Bus_WrAck_reg;
  wire busip_1;
  wire fifo_clear;
  wire \gic0.gc1.count_reg[0] ;
  wire \grstd1.grst_full.grst_f.rst_d1_reg ;
  wire p_8_in;
  wire prmry_in;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire sw_reset_reg;
  wire wrfifo_rden;

  shell_axi_hwicap_0_0_fifo_generator_v13_1_3 \USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .busip_1(busip_1),
        .fifo_clear(fifo_clear),
        .\gic0.gc1.count_reg[0] (\gic0.gc1.count_reg[0] ),
        .\grstd1.grst_full.grst_f.rst_d1_reg (\grstd1.grst_full.grst_f.rst_d1_reg ),
        .out(prmry_in),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg),
        .wrfifo_rden(wrfifo_rden));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module shell_axi_hwicap_0_0_async_fifo_fg__parameterized0
   (p_5_out_0,
    fifo_clear,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    prmry_in,
    gate_signal_p_reg,
    s_axi_aclk,
    Q,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in5_in,
    rdfifo_wren,
    ipbus_1,
    ipbus_2,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    Bus_RNW_reg,
    fifo_rst,
    abort_onreset,
    gate_signal_p_reg_0);
  output [31:0]p_5_out_0;
  output fifo_clear;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output prmry_in;
  output gate_signal_p_reg;
  input s_axi_aclk;
  input [31:0]Q;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in5_in;
  input rdfifo_wren;
  input ipbus_1;
  input ipbus_2;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input Bus_RNW_reg;
  input fifo_rst;
  input abort_onreset;
  input gate_signal_p_reg_0;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire [31:0]Q;
  wire abort_onreset;
  wire fifo_clear;
  wire fifo_rst;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire ipbus_1;
  wire ipbus_2;
  wire p_1_in5_in;
  wire [31:0]p_5_out_0;
  wire p_7_in;
  wire prmry_in;
  wire rdfifo_wren;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;

  shell_axi_hwicap_0_0_fifo_generator_v13_1_3__parameterized0 \USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .Q(Q),
        .abort_onreset(abort_onreset),
        .fifo_rst(fifo_rst),
        .gate_signal_p_reg(gate_signal_p_reg),
        .gate_signal_p_reg_0(gate_signal_p_reg_0),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg (fifo_clear),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out_0(p_5_out_0),
        .p_7_in(p_7_in),
        .prmry_in(prmry_in),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg));
endmodule

(* C_BRAM_SRL_FIFO_TYPE = "1" *) (* C_DEVICE_ID = "69353619" *) (* C_ENABLE_ASYNC = "0" *) 
(* C_FAMILY = "kintexu" *) (* C_ICAP_EXTERNAL = "0" *) (* C_ICAP_WIDTH_S = "X32" *) 
(* C_INCLUDE_STARTUP = "0" *) (* C_MODE = "0" *) (* C_NOREAD = "0" *) 
(* C_OPERATION = "0" *) (* C_READ_FIFO_DEPTH = "128" *) (* C_SHARED_STARTUP = "0" *) 
(* C_SIMULATION = "2" *) (* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_WRITE_FIFO_DEPTH = "64" *) (* ORIG_REF_NAME = "axi_hwicap" *) (* downgradeipidentifiedwarnings = "yes" *) 
module shell_axi_hwicap_0_0_axi_hwicap
   (icap_clk,
    eos_in,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
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
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    cfgclk,
    cfgmclk,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    pack,
    usrcclko,
    usrcclkts,
    usrdoneo,
    usrdonets,
    icap_i,
    icap_o,
    icap_csib,
    icap_rdwrb,
    cap_req,
    cap_gnt,
    cap_rel,
    icap_avail);
  input icap_clk;
  input eos_in;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output ip2intc_irpt;
  output cfgclk;
  output cfgmclk;
  output preq;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input pack;
  input usrcclko;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input [31:0]icap_i;
  output [31:0]icap_o;
  output icap_csib;
  output icap_rdwrb;
  output cap_req;
  input cap_gnt;
  input cap_rel;
  input icap_avail;

  wire \<const0> ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_35 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_36 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_37 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_38 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_44 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_45 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_46 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_54 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_61 ;
  wire \ICAP_NOT_SHARED.HWICAP_CTRL_I_n_62 ;
  wire INTERRUPT_CONTROL_I_n_1;
  wire INTERRUPT_CONTROL_I_n_12;
  wire \IPIC_IF_I/IP2Bus_RdAck0 ;
  wire \IPIC_IF_I/IP2Bus_WrAck0 ;
  wire [0:11]\IPIC_IF_I/Size_counter_i3 ;
  wire \IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_busy_i2_out ;
  wire \IPIC_IF_I/eos_status_i2 ;
  wire \IPIC_IF_I/hang_status_i2 ;
  wire \IPIC_IF_I/ipbus_ack ;
  wire \IPIC_IF_I/ipbus_ack_fifo ;
  wire \IPIC_IF_I/p_0_in9_in ;
  wire \IPIC_IF_I/p_10_in ;
  wire \IPIC_IF_I/p_11_in ;
  wire [31:0]\IPIC_IF_I/p_5_out ;
  wire [0:6]\IPIC_IF_I/rd_occy_i ;
  wire \IPIC_IF_I/send_done_icap2bus ;
  wire [0:31]\IPIC_IF_I/sr_icap2bus_3 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ;
  wire XI4_LITE_I_n_12;
  wire XI4_LITE_I_n_17;
  wire XI4_LITE_I_n_18;
  wire XI4_LITE_I_n_19;
  wire XI4_LITE_I_n_20;
  wire XI4_LITE_I_n_21;
  wire XI4_LITE_I_n_22;
  wire XI4_LITE_I_n_23;
  wire XI4_LITE_I_n_24;
  wire XI4_LITE_I_n_25;
  wire XI4_LITE_I_n_26;
  wire XI4_LITE_I_n_27;
  wire XI4_LITE_I_n_28;
  wire XI4_LITE_I_n_29;
  wire XI4_LITE_I_n_30;
  wire XI4_LITE_I_n_31;
  wire XI4_LITE_I_n_32;
  wire XI4_LITE_I_n_33;
  wire XI4_LITE_I_n_34;
  wire XI4_LITE_I_n_35;
  wire XI4_LITE_I_n_36;
  wire XI4_LITE_I_n_37;
  wire XI4_LITE_I_n_38;
  wire XI4_LITE_I_n_39;
  wire XI4_LITE_I_n_40;
  wire XI4_LITE_I_n_41;
  wire XI4_LITE_I_n_42;
  wire XI4_LITE_I_n_43;
  wire XI4_LITE_I_n_44;
  wire XI4_LITE_I_n_45;
  wire XI4_LITE_I_n_46;
  wire XI4_LITE_I_n_47;
  wire XI4_LITE_I_n_48;
  wire XI4_LITE_I_n_49;
  wire XI4_LITE_I_n_50;
  wire XI4_LITE_I_n_51;
  wire XI4_LITE_I_n_52;
  wire XI4_LITE_I_n_53;
  wire XI4_LITE_I_n_54;
  wire XI4_LITE_I_n_55;
  wire XI4_LITE_I_n_56;
  wire XI4_LITE_I_n_57;
  wire XI4_LITE_I_n_58;
  wire XI4_LITE_I_n_59;
  wire XI4_LITE_I_n_8;
  wire bus2ip_reset;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire intr_rst;
  wire [0:31]ip2bus_data_i;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i0;
  wire ip2bus_wrack_i;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in4_in;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_5_out;
  wire p_6_out;
  wire [0:31]p_8_out;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [5:0]wr_data_count_i;

  assign cap_req = \<const0> ;
  assign cfgclk = \<const0> ;
  assign cfgmclk = \<const0> ;
  assign icap_csib = \<const0> ;
  assign icap_o[31] = \<const0> ;
  assign icap_o[30] = \<const0> ;
  assign icap_o[29] = \<const0> ;
  assign icap_o[28] = \<const0> ;
  assign icap_o[27] = \<const0> ;
  assign icap_o[26] = \<const0> ;
  assign icap_o[25] = \<const0> ;
  assign icap_o[24] = \<const0> ;
  assign icap_o[23] = \<const0> ;
  assign icap_o[22] = \<const0> ;
  assign icap_o[21] = \<const0> ;
  assign icap_o[20] = \<const0> ;
  assign icap_o[19] = \<const0> ;
  assign icap_o[18] = \<const0> ;
  assign icap_o[17] = \<const0> ;
  assign icap_o[16] = \<const0> ;
  assign icap_o[15] = \<const0> ;
  assign icap_o[14] = \<const0> ;
  assign icap_o[13] = \<const0> ;
  assign icap_o[12] = \<const0> ;
  assign icap_o[11] = \<const0> ;
  assign icap_o[10] = \<const0> ;
  assign icap_o[9] = \<const0> ;
  assign icap_o[8] = \<const0> ;
  assign icap_o[7] = \<const0> ;
  assign icap_o[6] = \<const0> ;
  assign icap_o[5] = \<const0> ;
  assign icap_o[4] = \<const0> ;
  assign icap_o[3] = \<const0> ;
  assign icap_o[2] = \<const0> ;
  assign icap_o[1] = \<const0> ;
  assign icap_o[0] = \<const0> ;
  assign icap_rdwrb = \<const0> ;
  assign preq = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  shell_axi_hwicap_0_0_hwicap \ICAP_NOT_SHARED.HWICAP_CTRL_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(XI4_LITE_I_n_8),
        .D({XI4_LITE_I_n_17,XI4_LITE_I_n_18,XI4_LITE_I_n_19,XI4_LITE_I_n_20,XI4_LITE_I_n_21,XI4_LITE_I_n_22,XI4_LITE_I_n_23,XI4_LITE_I_n_24,XI4_LITE_I_n_25,XI4_LITE_I_n_26,XI4_LITE_I_n_27,XI4_LITE_I_n_28,XI4_LITE_I_n_29,XI4_LITE_I_n_30,XI4_LITE_I_n_31,XI4_LITE_I_n_32,XI4_LITE_I_n_33,XI4_LITE_I_n_34,XI4_LITE_I_n_35,XI4_LITE_I_n_36,XI4_LITE_I_n_37,XI4_LITE_I_n_38,XI4_LITE_I_n_39,XI4_LITE_I_n_40,XI4_LITE_I_n_41,XI4_LITE_I_n_42,XI4_LITE_I_n_43,XI4_LITE_I_n_44,XI4_LITE_I_n_45,XI4_LITE_I_n_46,XI4_LITE_I_n_47,XI4_LITE_I_n_48}),
        .E(XI4_LITE_I_n_57),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (XI4_LITE_I_n_49),
        .\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] (XI4_LITE_I_n_58),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_54 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (wr_data_count_i),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (INTERRUPT_CONTROL_I_n_1),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_46 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ({\IPIC_IF_I/rd_occy_i [0],\IPIC_IF_I/rd_occy_i [1],\IPIC_IF_I/rd_occy_i [2],\IPIC_IF_I/rd_occy_i [3],\IPIC_IF_I/rd_occy_i [4],\IPIC_IF_I/rd_occy_i [5],\IPIC_IF_I/rd_occy_i [6]}),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_45 ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_44 ),
        .\IP2Bus_Data_reg[20] ({\IPIC_IF_I/Size_counter_i3 [0],\IPIC_IF_I/Size_counter_i3 [1],\IPIC_IF_I/Size_counter_i3 [2],\IPIC_IF_I/Size_counter_i3 [3],\IPIC_IF_I/Size_counter_i3 [4],\IPIC_IF_I/Size_counter_i3 [5],\IPIC_IF_I/Size_counter_i3 [6],\IPIC_IF_I/Size_counter_i3 [7],\IPIC_IF_I/Size_counter_i3 [8],\IPIC_IF_I/Size_counter_i3 [9],\IPIC_IF_I/Size_counter_i3 [10],\IPIC_IF_I/Size_counter_i3 [11]}),
        .\IP2Bus_Data_reg[29] (\IPIC_IF_I/eos_status_i2 ),
        .\IP2Bus_Data_reg[30] (\IPIC_IF_I/hang_status_i2 ),
        .IP2Bus_RdAck0(\IPIC_IF_I/IP2Bus_RdAck0 ),
        .IP2Bus_WrAck0(\IPIC_IF_I/IP2Bus_WrAck0 ),
        .IP2Bus_WrAck_reg(\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_62 ),
        .Q({\IPIC_IF_I/p_0_in9_in ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_35 ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_36 ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_37 ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_38 }),
        .SR(bus2ip_reset),
        .\gic0.gc1.count_reg[0] (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_61 ),
        .intr_rst(intr_rst),
        .\ip2bus_data_i_reg[0] ({p_8_out[0],p_8_out[1],p_8_out[2],p_8_out[3],p_8_out[4],p_8_out[5],p_8_out[6],p_8_out[7],p_8_out[8],p_8_out[9],p_8_out[10],p_8_out[11],p_8_out[12],p_8_out[13],p_8_out[14],p_8_out[15],p_8_out[16],p_8_out[17],p_8_out[18],p_8_out[19],p_8_out[20],p_8_out[21],p_8_out[22],p_8_out[23],p_8_out[24],p_8_out[25],p_8_out[26],p_8_out[27],p_8_out[28],p_8_out[29],p_8_out[30],p_8_out[31]}),
        .ipbus_ack(\IPIC_IF_I/ipbus_ack ),
        .ipbus_ack_fifo(\IPIC_IF_I/ipbus_ack_fifo ),
        .p_10_in(\IPIC_IF_I/p_10_in ),
        .p_11_in(\IPIC_IF_I/p_11_in ),
        .p_1_in(p_1_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out(p_5_out),
        .p_5_out_0(\IPIC_IF_I/p_5_out ),
        .p_6_out(p_6_out),
        .p_7_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ),
        .p_8_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .scndry_out(\IPIC_IF_I/send_done_icap2bus ),
        .scndry_vect_out({\IPIC_IF_I/sr_icap2bus_3 [0],\IPIC_IF_I/sr_icap2bus_3 [1],\IPIC_IF_I/sr_icap2bus_3 [2],\IPIC_IF_I/sr_icap2bus_3 [3],\IPIC_IF_I/sr_icap2bus_3 [4],\IPIC_IF_I/sr_icap2bus_3 [5],\IPIC_IF_I/sr_icap2bus_3 [6],\IPIC_IF_I/sr_icap2bus_3 [7],\IPIC_IF_I/sr_icap2bus_3 [8],\IPIC_IF_I/sr_icap2bus_3 [9],\IPIC_IF_I/sr_icap2bus_3 [10],\IPIC_IF_I/sr_icap2bus_3 [11],\IPIC_IF_I/sr_icap2bus_3 [12],\IPIC_IF_I/sr_icap2bus_3 [13],\IPIC_IF_I/sr_icap2bus_3 [14],\IPIC_IF_I/sr_icap2bus_3 [15],\IPIC_IF_I/sr_icap2bus_3 [16],\IPIC_IF_I/sr_icap2bus_3 [17],\IPIC_IF_I/sr_icap2bus_3 [18],\IPIC_IF_I/sr_icap2bus_3 [19],\IPIC_IF_I/sr_icap2bus_3 [20],\IPIC_IF_I/sr_icap2bus_3 [21],\IPIC_IF_I/sr_icap2bus_3 [22],\IPIC_IF_I/sr_icap2bus_3 [23],\IPIC_IF_I/sr_icap2bus_3 [24],\IPIC_IF_I/sr_icap2bus_3 [25],\IPIC_IF_I/sr_icap2bus_3 [26],\IPIC_IF_I/sr_icap2bus_3 [27],\IPIC_IF_I/sr_icap2bus_3 [28],\IPIC_IF_I/sr_icap2bus_3 [29],\IPIC_IF_I/sr_icap2bus_3 [30],\IPIC_IF_I/sr_icap2bus_3 [31]}),
        .wr_rst_busy_i2_out(\IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_busy_i2_out ));
  shell_axi_hwicap_0_0_interrupt_control INTERRUPT_CONTROL_I
       (.E(XI4_LITE_I_n_59),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_45 ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (XI4_LITE_I_n_56),
        .Q({p_0_in4_in,p_0_in1_in,p_0_in,INTERRUPT_CONTROL_I_n_12}),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack(intr2bus_wrack),
        .intr_rst(intr_rst),
        .\ip2bus_data_i_reg[31] (INTERRUPT_CONTROL_I_n_1),
        .ip2bus_rdack_i0(ip2bus_rdack_i0),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_6_out(p_6_out),
        .\rd_dc_i_reg[6] (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_46 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[3:0]),
        .sw_reset_reg(\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_44 ),
        .\wr_data_count_i_reg[5] (\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_54 ));
  shell_axi_hwicap_0_0_axi_lite_ipif XI4_LITE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({XI4_LITE_I_n_17,XI4_LITE_I_n_18,XI4_LITE_I_n_19,XI4_LITE_I_n_20,XI4_LITE_I_n_21,XI4_LITE_I_n_22,XI4_LITE_I_n_23,XI4_LITE_I_n_24,XI4_LITE_I_n_25,XI4_LITE_I_n_26,XI4_LITE_I_n_27,XI4_LITE_I_n_28,XI4_LITE_I_n_29,XI4_LITE_I_n_30,XI4_LITE_I_n_31,XI4_LITE_I_n_32,XI4_LITE_I_n_33,XI4_LITE_I_n_34,XI4_LITE_I_n_35,XI4_LITE_I_n_36,XI4_LITE_I_n_37,XI4_LITE_I_n_38,XI4_LITE_I_n_39,XI4_LITE_I_n_40,XI4_LITE_I_n_41,XI4_LITE_I_n_42,XI4_LITE_I_n_43,XI4_LITE_I_n_44,XI4_LITE_I_n_45,XI4_LITE_I_n_46,XI4_LITE_I_n_47,XI4_LITE_I_n_48}),
        .E(XI4_LITE_I_n_57),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\IPIC_IF_I/hang_status_i2 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\IPIC_IF_I/eos_status_i2 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (INTERRUPT_CONTROL_I_n_1),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (XI4_LITE_I_n_8),
        .\IP2Bus_Data_reg[0] ({p_8_out[0],p_8_out[28],p_8_out[29],p_8_out[30],p_8_out[31]}),
        .\IP2Bus_Data_reg[31] (XI4_LITE_I_n_49),
        .IP2Bus_RdAck0(\IPIC_IF_I/IP2Bus_RdAck0 ),
        .IP2Bus_WrAck0(\IPIC_IF_I/IP2Bus_WrAck0 ),
        .Q({\IPIC_IF_I/p_0_in9_in ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_35 ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_36 ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_37 ,\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_38 }),
        .SR(bus2ip_reset),
        .\Size_counter_i3_reg[0] ({\IPIC_IF_I/Size_counter_i3 [0],\IPIC_IF_I/Size_counter_i3 [1],\IPIC_IF_I/Size_counter_i3 [2],\IPIC_IF_I/Size_counter_i3 [3],\IPIC_IF_I/Size_counter_i3 [4],\IPIC_IF_I/Size_counter_i3 [5],\IPIC_IF_I/Size_counter_i3 [6],\IPIC_IF_I/Size_counter_i3 [7],\IPIC_IF_I/Size_counter_i3 [8],\IPIC_IF_I/Size_counter_i3 [9],\IPIC_IF_I/Size_counter_i3 [10],\IPIC_IF_I/Size_counter_i3 [11]}),
        .busip_1_reg(\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_61 ),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack(intr2bus_wrack),
        .\ip2bus_data_i_reg[0] ({XI4_LITE_I_n_50,XI4_LITE_I_n_51,XI4_LITE_I_n_52,XI4_LITE_I_n_53,XI4_LITE_I_n_54}),
        .\ip2bus_data_i_reg[0]_0 ({ip2bus_data_i[0],ip2bus_data_i[1],ip2bus_data_i[2],ip2bus_data_i[3],ip2bus_data_i[4],ip2bus_data_i[5],ip2bus_data_i[6],ip2bus_data_i[7],ip2bus_data_i[8],ip2bus_data_i[9],ip2bus_data_i[10],ip2bus_data_i[11],ip2bus_data_i[12],ip2bus_data_i[13],ip2bus_data_i[14],ip2bus_data_i[15],ip2bus_data_i[16],ip2bus_data_i[17],ip2bus_data_i[18],ip2bus_data_i[19],ip2bus_data_i[20],ip2bus_data_i[21],ip2bus_data_i[22],ip2bus_data_i[23],ip2bus_data_i[24],ip2bus_data_i[25],ip2bus_data_i[26],ip2bus_data_i[27],ip2bus_data_i[28],ip2bus_data_i[29],ip2bus_data_i[30],ip2bus_data_i[31]}),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_rdack_i_reg(XI4_LITE_I_n_12),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .ip2bus_wrack_i_reg(XI4_LITE_I_n_55),
        .\ip_irpt_enable_reg_reg[3] (XI4_LITE_I_n_59),
        .\ip_irpt_enable_reg_reg[3]_0 ({p_0_in4_in,p_0_in1_in,p_0_in,INTERRUPT_CONTROL_I_n_12}),
        .ipbus_ack(\IPIC_IF_I/ipbus_ack ),
        .ipbus_ack_fifo(\IPIC_IF_I/ipbus_ack_fifo ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(XI4_LITE_I_n_56),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_10_in(\IPIC_IF_I/p_10_in ),
        .p_11_in(\IPIC_IF_I/p_11_in ),
        .p_1_in(p_1_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out(p_5_out),
        .p_5_out_0(\IPIC_IF_I/p_5_out ),
        .p_7_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ),
        .p_8_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ),
        .ram_full_i_reg(\ICAP_NOT_SHARED.HWICAP_CTRL_I_n_62 ),
        .\rd_dc_i_reg[6] ({\IPIC_IF_I/rd_occy_i [0],\IPIC_IF_I/rd_occy_i [1],\IPIC_IF_I/rd_occy_i [2],\IPIC_IF_I/rd_occy_i [3],\IPIC_IF_I/rd_occy_i [4],\IPIC_IF_I/rd_occy_i [5],\IPIC_IF_I/rd_occy_i [6]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[31]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .scndry_out(\IPIC_IF_I/send_done_icap2bus ),
        .scndry_vect_out({\IPIC_IF_I/sr_icap2bus_3 [0],\IPIC_IF_I/sr_icap2bus_3 [1],\IPIC_IF_I/sr_icap2bus_3 [2],\IPIC_IF_I/sr_icap2bus_3 [3],\IPIC_IF_I/sr_icap2bus_3 [4],\IPIC_IF_I/sr_icap2bus_3 [5],\IPIC_IF_I/sr_icap2bus_3 [6],\IPIC_IF_I/sr_icap2bus_3 [7],\IPIC_IF_I/sr_icap2bus_3 [8],\IPIC_IF_I/sr_icap2bus_3 [9],\IPIC_IF_I/sr_icap2bus_3 [10],\IPIC_IF_I/sr_icap2bus_3 [11],\IPIC_IF_I/sr_icap2bus_3 [12],\IPIC_IF_I/sr_icap2bus_3 [13],\IPIC_IF_I/sr_icap2bus_3 [14],\IPIC_IF_I/sr_icap2bus_3 [15],\IPIC_IF_I/sr_icap2bus_3 [16],\IPIC_IF_I/sr_icap2bus_3 [17],\IPIC_IF_I/sr_icap2bus_3 [18],\IPIC_IF_I/sr_icap2bus_3 [19],\IPIC_IF_I/sr_icap2bus_3 [20],\IPIC_IF_I/sr_icap2bus_3 [21],\IPIC_IF_I/sr_icap2bus_3 [22],\IPIC_IF_I/sr_icap2bus_3 [23],\IPIC_IF_I/sr_icap2bus_3 [24],\IPIC_IF_I/sr_icap2bus_3 [25],\IPIC_IF_I/sr_icap2bus_3 [26],\IPIC_IF_I/sr_icap2bus_3 [27],\IPIC_IF_I/sr_icap2bus_3 [28],\IPIC_IF_I/sr_icap2bus_3 [29],\IPIC_IF_I/sr_icap2bus_3 [30],\IPIC_IF_I/sr_icap2bus_3 [31]}),
        .\sz_i_reg[0] (XI4_LITE_I_n_58),
        .\wr_data_count_i_reg[5] (wr_data_count_i),
        .wr_rst_busy_i2_out(\IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_busy_i2_out ));
  FDRE \ip2bus_data_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XI4_LITE_I_n_50),
        .Q(ip2bus_data_i[0]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[10]),
        .Q(ip2bus_data_i[10]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[11]),
        .Q(ip2bus_data_i[11]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[12]),
        .Q(ip2bus_data_i[12]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[13]),
        .Q(ip2bus_data_i[13]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[14]),
        .Q(ip2bus_data_i[14]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[15]),
        .Q(ip2bus_data_i[15]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[16]),
        .Q(ip2bus_data_i[16]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[17]),
        .Q(ip2bus_data_i[17]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[18]),
        .Q(ip2bus_data_i[18]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[19]),
        .Q(ip2bus_data_i[19]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[1]),
        .Q(ip2bus_data_i[1]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[20]),
        .Q(ip2bus_data_i[20]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[21]),
        .Q(ip2bus_data_i[21]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[22]),
        .Q(ip2bus_data_i[22]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[23]),
        .Q(ip2bus_data_i[23]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[24]),
        .Q(ip2bus_data_i[24]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[25]),
        .Q(ip2bus_data_i[25]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[26]),
        .Q(ip2bus_data_i[26]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[27]),
        .Q(ip2bus_data_i[27]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XI4_LITE_I_n_51),
        .Q(ip2bus_data_i[28]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XI4_LITE_I_n_52),
        .Q(ip2bus_data_i[29]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[2]),
        .Q(ip2bus_data_i[2]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XI4_LITE_I_n_53),
        .Q(ip2bus_data_i[30]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XI4_LITE_I_n_54),
        .Q(ip2bus_data_i[31]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[3]),
        .Q(ip2bus_data_i[3]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[4]),
        .Q(ip2bus_data_i[4]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[5]),
        .Q(ip2bus_data_i[5]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[6]),
        .Q(ip2bus_data_i[6]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[7]),
        .Q(ip2bus_data_i[7]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[8]),
        .Q(ip2bus_data_i[8]),
        .R(XI4_LITE_I_n_12));
  FDRE \ip2bus_data_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out[9]),
        .Q(ip2bus_data_i[9]),
        .R(XI4_LITE_I_n_12));
  FDRE ip2bus_rdack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i0),
        .Q(ip2bus_rdack_i),
        .R(XI4_LITE_I_n_12));
  FDRE ip2bus_wrack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XI4_LITE_I_n_55),
        .Q(ip2bus_wrack_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module shell_axi_hwicap_0_0_axi_lite_ipif
   (p_7_in,
    p_8_in,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_wready,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    intr2bus_rdack0,
    irpt_rdack,
    irpt_wrack,
    ip2bus_rdack_i_reg,
    IP2Bus_WrAck0,
    p_11_in,
    IP2Bus_RdAck0,
    p_10_in,
    D,
    \IP2Bus_Data_reg[31] ,
    \ip2bus_data_i_reg[0] ,
    ip2bus_wrack_i_reg,
    ipif_glbl_irpt_enable_reg_reg,
    E,
    \sz_i_reg[0] ,
    \ip_irpt_enable_reg_reg[3] ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_aresetn,
    ip2bus_rdack_i,
    ip2bus_wrack_i,
    s_axi_bready,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wvalid,
    s_axi_awvalid,
    irpt_wrack_d1,
    irpt_rdack_d1,
    busip_1_reg,
    ram_full_i_reg,
    wr_rst_busy_i2_out,
    ipbus_ack,
    ipbus_ack_fifo,
    p_5_out_0,
    \Size_counter_i3_reg[0] ,
    scndry_vect_out,
    \wr_data_count_i_reg[5] ,
    \rd_dc_i_reg[6] ,
    Q,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \IP2Bus_Data_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[3]_0 ,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    ipif_glbl_irpt_enable_reg,
    intr2bus_wrack,
    p_5_out,
    s_axi_wdata,
    \ip2bus_data_i_reg[0]_0 );
  output p_7_in;
  output p_8_in;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_wready;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output intr2bus_rdack0;
  output irpt_rdack;
  output irpt_wrack;
  output [0:0]ip2bus_rdack_i_reg;
  output IP2Bus_WrAck0;
  output p_11_in;
  output IP2Bus_RdAck0;
  output p_10_in;
  output [31:0]D;
  output \IP2Bus_Data_reg[31] ;
  output [4:0]\ip2bus_data_i_reg[0] ;
  output ip2bus_wrack_i_reg;
  output ipif_glbl_irpt_enable_reg_reg;
  output [0:0]E;
  output [0:0]\sz_i_reg[0] ;
  output [0:0]\ip_irpt_enable_reg_reg[3] ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input ip2bus_rdack_i;
  input ip2bus_wrack_i;
  input s_axi_bready;
  input s_axi_rready;
  input [6:0]s_axi_awaddr;
  input [6:0]s_axi_araddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input busip_1_reg;
  input ram_full_i_reg;
  input wr_rst_busy_i2_out;
  input ipbus_ack;
  input ipbus_ack_fifo;
  input [31:0]p_5_out_0;
  input [11:0]\Size_counter_i3_reg[0] ;
  input [31:0]scndry_vect_out;
  input [5:0]\wr_data_count_i_reg[5] ;
  input [6:0]\rd_dc_i_reg[6] ;
  input [4:0]Q;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input [4:0]\IP2Bus_Data_reg[0] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [3:0]\ip_irpt_enable_reg_reg[3]_0 ;
  input p_1_in5_in;
  input p_1_in2_in;
  input p_1_in;
  input ipif_glbl_irpt_enable_reg;
  input intr2bus_wrack;
  input p_5_out;
  input [0:0]s_axi_wdata;
  input [31:0]\ip2bus_data_i_reg[0]_0 ;

  wire Bus_RNW_reg;
  wire [31:0]D;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire [4:0]\IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[31] ;
  wire IP2Bus_RdAck0;
  wire IP2Bus_WrAck0;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [11:0]\Size_counter_i3_reg[0] ;
  wire busip_1_reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire [4:0]\ip2bus_data_i_reg[0] ;
  wire [31:0]\ip2bus_data_i_reg[0]_0 ;
  wire ip2bus_rdack_i;
  wire [0:0]ip2bus_rdack_i_reg;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_reg;
  wire [0:0]\ip_irpt_enable_reg_reg[3] ;
  wire [3:0]\ip_irpt_enable_reg_reg[3]_0 ;
  wire ipbus_ack;
  wire ipbus_ack_fifo;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_10_in;
  wire p_11_in;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_5_out;
  wire [31:0]p_5_out_0;
  wire p_7_in;
  wire p_8_in;
  wire ram_full_i_reg;
  wire [6:0]\rd_dc_i_reg[6] ;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [0:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scndry_out;
  wire [31:0]scndry_vect_out;
  wire [0:0]\sz_i_reg[0] ;
  wire [5:0]\wr_data_count_i_reg[5] ;
  wire wr_rst_busy_i2_out;

  shell_axi_hwicap_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\IP2Bus_Data_reg[0] (\IP2Bus_Data_reg[0] ),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .IP2Bus_RdAck0(IP2Bus_RdAck0),
        .IP2Bus_WrAck0(IP2Bus_WrAck0),
        .IP2Bus_WrAck_reg(p_8_in),
        .Q(Q),
        .SR(SR),
        .\Size_counter_i3_reg[0] (\Size_counter_i3_reg[0] ),
        .busip_1_reg(p_7_in),
        .busip_1_reg_0(busip_1_reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack(intr2bus_wrack),
        .\ip2bus_data_i_reg[0] (\ip2bus_data_i_reg[0] ),
        .\ip2bus_data_i_reg[0]_0 (\ip2bus_data_i_reg[0]_0 ),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_rdack_i_reg(ip2bus_rdack_i_reg),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .ip2bus_wrack_i_reg(Bus_RNW_reg),
        .ip2bus_wrack_i_reg_0(ip2bus_wrack_i_reg),
        .\ip_irpt_enable_reg_reg[3] (\ip_irpt_enable_reg_reg[3] ),
        .\ip_irpt_enable_reg_reg[3]_0 (\ip_irpt_enable_reg_reg[3]_0 ),
        .ipbus_ack(ipbus_ack),
        .ipbus_ack_fifo(ipbus_ack_fifo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_10_in(p_10_in),
        .p_11_in(p_11_in),
        .p_1_in(p_1_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out(p_5_out),
        .p_5_out_0(p_5_out_0),
        .ram_full_i_reg(ram_full_i_reg),
        .\rd_dc_i_reg[6] (\rd_dc_i_reg[6] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .scndry_out(scndry_out),
        .scndry_vect_out(scndry_vect_out),
        .\sz_i_reg[0] (\sz_i_reg[0] ),
        .\wr_data_count_i_reg[5] (\wr_data_count_i_reg[5] ),
        .wr_rst_busy_i2_out(wr_rst_busy_i2_out));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync
   (scndry_vect_out,
    Q,
    s_axi_aclk);
  output [11:0]scndry_vect_out;
  input [11:0]Q;
  input s_axi_aclk;

  wire [11:0]Q;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_11;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_11;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_11;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;
  wire [11:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_11),
        .Q(s_level_out_bus_d2_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_11),
        .Q(s_level_out_bus_d3_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_11),
        .Q(scndry_vect_out[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(s_level_out_bus_d1_cdc_to_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync_0
   (scndry_vect_out,
    \size_cs_reg[0] ,
    s_axi_aclk);
  output [11:0]scndry_vect_out;
  input [11:0]\size_cs_reg[0] ;
  input s_axi_aclk;

  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_11;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_11;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_11;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;
  wire [11:0]scndry_vect_out;
  wire [11:0]\size_cs_reg[0] ;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_11),
        .Q(s_level_out_bus_d2_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_11),
        .Q(s_level_out_bus_d3_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_11),
        .Q(scndry_vect_out[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [11]),
        .Q(s_level_out_bus_d1_cdc_to_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\size_cs_reg[0] [9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized0
   (\IP2Bus_Data_reg[0] ,
    Q,
    s_axi_aclk);
  output [31:0]\IP2Bus_Data_reg[0] ;
  input [31:0]Q;
  input s_axi_aclk;

  wire [31:0]\IP2Bus_Data_reg[0] ;
  wire [31:0]Q;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_11;
  wire s_level_out_bus_d1_cdc_to_12;
  wire s_level_out_bus_d1_cdc_to_13;
  wire s_level_out_bus_d1_cdc_to_14;
  wire s_level_out_bus_d1_cdc_to_15;
  wire s_level_out_bus_d1_cdc_to_16;
  wire s_level_out_bus_d1_cdc_to_17;
  wire s_level_out_bus_d1_cdc_to_18;
  wire s_level_out_bus_d1_cdc_to_19;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_20;
  wire s_level_out_bus_d1_cdc_to_21;
  wire s_level_out_bus_d1_cdc_to_22;
  wire s_level_out_bus_d1_cdc_to_23;
  wire s_level_out_bus_d1_cdc_to_24;
  wire s_level_out_bus_d1_cdc_to_25;
  wire s_level_out_bus_d1_cdc_to_26;
  wire s_level_out_bus_d1_cdc_to_27;
  wire s_level_out_bus_d1_cdc_to_28;
  wire s_level_out_bus_d1_cdc_to_29;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_30;
  wire s_level_out_bus_d1_cdc_to_31;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_11;
  wire s_level_out_bus_d2_12;
  wire s_level_out_bus_d2_13;
  wire s_level_out_bus_d2_14;
  wire s_level_out_bus_d2_15;
  wire s_level_out_bus_d2_16;
  wire s_level_out_bus_d2_17;
  wire s_level_out_bus_d2_18;
  wire s_level_out_bus_d2_19;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_20;
  wire s_level_out_bus_d2_21;
  wire s_level_out_bus_d2_22;
  wire s_level_out_bus_d2_23;
  wire s_level_out_bus_d2_24;
  wire s_level_out_bus_d2_25;
  wire s_level_out_bus_d2_26;
  wire s_level_out_bus_d2_27;
  wire s_level_out_bus_d2_28;
  wire s_level_out_bus_d2_29;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_30;
  wire s_level_out_bus_d2_31;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_11;
  wire s_level_out_bus_d3_12;
  wire s_level_out_bus_d3_13;
  wire s_level_out_bus_d3_14;
  wire s_level_out_bus_d3_15;
  wire s_level_out_bus_d3_16;
  wire s_level_out_bus_d3_17;
  wire s_level_out_bus_d3_18;
  wire s_level_out_bus_d3_19;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_20;
  wire s_level_out_bus_d3_21;
  wire s_level_out_bus_d3_22;
  wire s_level_out_bus_d3_23;
  wire s_level_out_bus_d3_24;
  wire s_level_out_bus_d3_25;
  wire s_level_out_bus_d3_26;
  wire s_level_out_bus_d3_27;
  wire s_level_out_bus_d3_28;
  wire s_level_out_bus_d3_29;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_30;
  wire s_level_out_bus_d3_31;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_11),
        .Q(s_level_out_bus_d2_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_12),
        .Q(s_level_out_bus_d2_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_13),
        .Q(s_level_out_bus_d2_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_14),
        .Q(s_level_out_bus_d2_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_15),
        .Q(s_level_out_bus_d2_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_16),
        .Q(s_level_out_bus_d2_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_17),
        .Q(s_level_out_bus_d2_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_18),
        .Q(s_level_out_bus_d2_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_19),
        .Q(s_level_out_bus_d2_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_20),
        .Q(s_level_out_bus_d2_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_21),
        .Q(s_level_out_bus_d2_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_22),
        .Q(s_level_out_bus_d2_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_23),
        .Q(s_level_out_bus_d2_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_24),
        .Q(s_level_out_bus_d2_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_25),
        .Q(s_level_out_bus_d2_25),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_26),
        .Q(s_level_out_bus_d2_26),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_27),
        .Q(s_level_out_bus_d2_27),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_28),
        .Q(s_level_out_bus_d2_28),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_29),
        .Q(s_level_out_bus_d2_29),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_30),
        .Q(s_level_out_bus_d2_30),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_31),
        .Q(s_level_out_bus_d2_31),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_11),
        .Q(s_level_out_bus_d3_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_12),
        .Q(s_level_out_bus_d3_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_13),
        .Q(s_level_out_bus_d3_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_14),
        .Q(s_level_out_bus_d3_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_15),
        .Q(s_level_out_bus_d3_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_16),
        .Q(s_level_out_bus_d3_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_17),
        .Q(s_level_out_bus_d3_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_18),
        .Q(s_level_out_bus_d3_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_19),
        .Q(s_level_out_bus_d3_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_20),
        .Q(s_level_out_bus_d3_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_21),
        .Q(s_level_out_bus_d3_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_22),
        .Q(s_level_out_bus_d3_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_23),
        .Q(s_level_out_bus_d3_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_24),
        .Q(s_level_out_bus_d3_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_25),
        .Q(s_level_out_bus_d3_25),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_26),
        .Q(s_level_out_bus_d3_26),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_27),
        .Q(s_level_out_bus_d3_27),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_28),
        .Q(s_level_out_bus_d3_28),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_29),
        .Q(s_level_out_bus_d3_29),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_30),
        .Q(s_level_out_bus_d3_30),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_31),
        .Q(s_level_out_bus_d3_31),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(\IP2Bus_Data_reg[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(\IP2Bus_Data_reg[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_11),
        .Q(\IP2Bus_Data_reg[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_12),
        .Q(\IP2Bus_Data_reg[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_13),
        .Q(\IP2Bus_Data_reg[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_14),
        .Q(\IP2Bus_Data_reg[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_15),
        .Q(\IP2Bus_Data_reg[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_16),
        .Q(\IP2Bus_Data_reg[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_17),
        .Q(\IP2Bus_Data_reg[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_18),
        .Q(\IP2Bus_Data_reg[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_19),
        .Q(\IP2Bus_Data_reg[0] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(\IP2Bus_Data_reg[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_20),
        .Q(\IP2Bus_Data_reg[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_21),
        .Q(\IP2Bus_Data_reg[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_22),
        .Q(\IP2Bus_Data_reg[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_23),
        .Q(\IP2Bus_Data_reg[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_24),
        .Q(\IP2Bus_Data_reg[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_25),
        .Q(\IP2Bus_Data_reg[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_26),
        .Q(\IP2Bus_Data_reg[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_27),
        .Q(\IP2Bus_Data_reg[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_28),
        .Q(\IP2Bus_Data_reg[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_29),
        .Q(\IP2Bus_Data_reg[0] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(\IP2Bus_Data_reg[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_30),
        .Q(\IP2Bus_Data_reg[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_31),
        .Q(\IP2Bus_Data_reg[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(\IP2Bus_Data_reg[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(\IP2Bus_Data_reg[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(\IP2Bus_Data_reg[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(\IP2Bus_Data_reg[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(\IP2Bus_Data_reg[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(\IP2Bus_Data_reg[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(\IP2Bus_Data_reg[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(s_level_out_bus_d1_cdc_to_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(s_level_out_bus_d1_cdc_to_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(s_level_out_bus_d1_cdc_to_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(s_level_out_bus_d1_cdc_to_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(s_level_out_bus_d1_cdc_to_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(s_level_out_bus_d1_cdc_to_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(s_level_out_bus_d1_cdc_to_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(s_level_out_bus_d1_cdc_to_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(s_level_out_bus_d1_cdc_to_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(s_level_out_bus_d1_cdc_to_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(s_level_out_bus_d1_cdc_to_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(s_level_out_bus_d1_cdc_to_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(s_level_out_bus_d1_cdc_to_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(s_level_out_bus_d1_cdc_to_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(s_level_out_bus_d1_cdc_to_25),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(s_level_out_bus_d1_cdc_to_26),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(s_level_out_bus_d1_cdc_to_27),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(s_level_out_bus_d1_cdc_to_28),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(s_level_out_bus_d1_cdc_to_29),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(s_level_out_bus_d1_cdc_to_30),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(s_level_out_bus_d1_cdc_to_31),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized1
   (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in2_in,
    prmry_in,
    s_axi_aclk);
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in2_in;
  input prmry_in;
  input s_axi_aclk;

  wire Bus_RNW_reg_reg;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire p_1_in2_in;
  wire prmry_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire sw_reset_reg;
  wire wrfifo_empty;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(wrfifo_empty),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF2FF2F22)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(wrfifo_empty),
        .I1(sw_reset_reg),
        .I2(Bus_RNW_reg_reg),
        .I3(s_axi_wdata),
        .I4(p_1_in2_in),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized10
   (SR,
    scndry_out,
    count_reset_cs,
    prmry_in,
    s_axi_aclk);
  output [0:0]SR;
  output scndry_out;
  input count_reset_cs;
  input prmry_in;
  input s_axi_aclk;

  wire [0:0]SR;
  wire count_reset_cs;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \count[2]_i_1 
       (.I0(scndry_out),
        .I1(count_reset_cs),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized2
   (\RD_FIFO.fifo_full_mask_reg ,
    scndry_out,
    fifo_full_mask,
    rdfifo_full_d1,
    abort_onreset,
    fifo_rst,
    sw_reset_reg,
    prmry_in,
    s_axi_aclk);
  output \RD_FIFO.fifo_full_mask_reg ;
  output scndry_out;
  input fifo_full_mask;
  input rdfifo_full_d1;
  input abort_onreset;
  input fifo_rst;
  input sw_reset_reg;
  input prmry_in;
  input s_axi_aclk;

  wire \RD_FIFO.fifo_full_mask_reg ;
  wire abort_onreset;
  wire fifo_full_mask;
  wire fifo_rst;
  wire prmry_in;
  wire rdfifo_full_d1;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire sw_reset_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000AE)) 
    \RD_FIFO.fifo_full_mask_i_1 
       (.I0(fifo_full_mask),
        .I1(rdfifo_full_d1),
        .I2(scndry_out),
        .I3(abort_onreset),
        .I4(fifo_rst),
        .I5(sw_reset_reg),
        .O(\RD_FIFO.fifo_full_mask_reg ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized3
   (\size_cs_reg[11] ,
    scndry_out,
    \FSM_sequential_icap_nstate_cs_reg[1] ,
    gate_signal_p_reg,
    rnc,
    \cr_i_reg[0] ,
    s_axi_aclk);
  output \size_cs_reg[11] ;
  output scndry_out;
  input [1:0]\FSM_sequential_icap_nstate_cs_reg[1] ;
  input gate_signal_p_reg;
  input [0:1]rnc;
  input [0:0]\cr_i_reg[0] ;
  input s_axi_aclk;

  wire [1:0]\FSM_sequential_icap_nstate_cs_reg[1] ;
  wire [0:0]\cr_i_reg[0] ;
  wire gate_signal_p_reg;
  wire [0:1]rnc;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire \size_cs_reg[11] ;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cr_i_reg[0] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \size_cs[0]_i_3 
       (.I0(\FSM_sequential_icap_nstate_cs_reg[1] [0]),
        .I1(\FSM_sequential_icap_nstate_cs_reg[1] [1]),
        .I2(gate_signal_p_reg),
        .I3(scndry_out),
        .I4(rnc[0]),
        .I5(rnc[1]),
        .O(\size_cs_reg[11] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized4
   (Send_done_cs_reg,
    scndry_out,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \FSM_sequential_icap_nstate_cs_reg[1] ,
    \FSM_sequential_icap_nstate_cs_reg[2] ,
    gate_signal_p_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ,
    \FSM_sequential_icap_nstate_cs_reg[1]_0 ,
    \cr_i_reg[3] ,
    s_axi_aclk);
  output Send_done_cs_reg;
  output scndry_out;
  output \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  output \FSM_sequential_icap_nstate_cs_reg[1] ;
  output \FSM_sequential_icap_nstate_cs_reg[2] ;
  input gate_signal_p_reg;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input prmry_in;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  input [1:0]\FSM_sequential_icap_nstate_cs_reg[1]_0 ;
  input [0:0]\cr_i_reg[3] ;
  input s_axi_aclk;

  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \FSM_sequential_icap_nstate_cs_reg[1] ;
  wire [1:0]\FSM_sequential_icap_nstate_cs_reg[1]_0 ;
  wire \FSM_sequential_icap_nstate_cs_reg[2] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  wire Send_done_cs_reg;
  wire [0:0]\cr_i_reg[3] ;
  wire gate_signal_p_reg;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  LUT6 #(
    .INIT(64'h0000000000FF0010)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_5 
       (.I0(scndry_out),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I3(prmry_in),
        .I4(\FSM_sequential_icap_nstate_cs_reg[1]_0 [1]),
        .I5(\FSM_sequential_icap_nstate_cs_reg[1]_0 [0]),
        .O(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ));
  LUT6 #(
    .INIT(64'hAAAA0000AABA0510)) 
    \FSM_sequential_icap_nstate_cs[1]_i_5 
       (.I0(\FSM_sequential_icap_nstate_cs_reg[1]_0 [1]),
        .I1(gate_signal_p_reg),
        .I2(scndry_out),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I4(prmry_in),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .O(\FSM_sequential_icap_nstate_cs_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_icap_nstate_cs[2]_i_5 
       (.I0(gate_signal_p_reg),
        .I1(scndry_out),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .O(\FSM_sequential_icap_nstate_cs_reg[2] ));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cr_i_reg[3] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDAD)) 
    Send_done_cs_i_2
       (.I0(scndry_out),
        .I1(gate_signal_p_reg),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I3(prmry_in),
        .O(Send_done_cs_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized5
   (\FSM_sequential_icap_nstate_cs_reg[0] ,
    scndry_out,
    \FSM_sequential_icap_nstate_cs_reg[2] ,
    Send_done_cs_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ,
    \FSM_sequential_icap_nstate_cs_reg[2]_0 ,
    gate_signal_p_reg,
    prmry_in,
    \cr_i_reg[4] ,
    s_axi_aclk);
  output \FSM_sequential_icap_nstate_cs_reg[0] ;
  output scndry_out;
  output \FSM_sequential_icap_nstate_cs_reg[2] ;
  output Send_done_cs_reg;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  input [2:0]\FSM_sequential_icap_nstate_cs_reg[2]_0 ;
  input gate_signal_p_reg;
  input prmry_in;
  input [0:0]\cr_i_reg[4] ;
  input s_axi_aclk;

  wire \FSM_sequential_icap_nstate_cs_reg[0] ;
  wire \FSM_sequential_icap_nstate_cs_reg[2] ;
  wire [2:0]\FSM_sequential_icap_nstate_cs_reg[2]_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  wire Send_done_cs_reg;
  wire [0:0]\cr_i_reg[4] ;
  wire gate_signal_p_reg;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  LUT6 #(
    .INIT(64'h00FFFE0000FFFFFF)) 
    \FSM_sequential_icap_nstate_cs[0]_i_3 
       (.I0(scndry_out),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .I3(\FSM_sequential_icap_nstate_cs_reg[2]_0 [2]),
        .I4(\FSM_sequential_icap_nstate_cs_reg[2]_0 [1]),
        .I5(\FSM_sequential_icap_nstate_cs_reg[2]_0 [0]),
        .O(\FSM_sequential_icap_nstate_cs_reg[0] ));
  LUT5 #(
    .INIT(32'h0000FEFF)) 
    \FSM_sequential_icap_nstate_cs[3]_i_2 
       (.I0(scndry_out),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .I3(\FSM_sequential_icap_nstate_cs_reg[2]_0 [0]),
        .I4(\FSM_sequential_icap_nstate_cs_reg[2]_0 [1]),
        .O(\FSM_sequential_icap_nstate_cs_reg[2] ));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cr_i_reg[4] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000DD003F)) 
    Send_done_cs_i_4
       (.I0(gate_signal_p_reg),
        .I1(scndry_out),
        .I2(prmry_in),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I5(\FSM_sequential_icap_nstate_cs_reg[2]_0 [1]),
        .O(Send_done_cs_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized6
   (\IP2Bus_Data_reg[31] ,
    prmry_in,
    s_axi_aclk);
  output \IP2Bus_Data_reg[31] ;
  input prmry_in;
  input s_axi_aclk;

  wire \IP2Bus_Data_reg[31] ;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\IP2Bus_Data_reg[31] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized7
   (SR,
    abort_onreset0,
    sw_reset_reg,
    \cr_i_reg[0] ,
    reset_cr_cs_reg,
    s_axi_aclk);
  output [0:0]SR;
  output abort_onreset0;
  input sw_reset_reg;
  input [0:0]\cr_i_reg[0] ;
  input reset_cr_cs_reg;
  input s_axi_aclk;

  wire [0:0]SR;
  wire abort_onreset0;
  wire [0:0]\cr_i_reg[0] ;
  wire reset_cr_cs_reg;
  wire reset_cr_icap2bus;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire sw_reset_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_cr_cs_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(reset_cr_icap2bus),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    abort_onreset_i_1
       (.I0(reset_cr_icap2bus),
        .I1(\cr_i_reg[0] ),
        .O(abort_onreset0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cr_i[0]_i_1 
       (.I0(reset_cr_icap2bus),
        .I1(sw_reset_reg),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized8
   (\IP2Bus_Data_reg[30] ,
    hang_status_cs_reg,
    s_axi_aclk);
  output \IP2Bus_Data_reg[30] ;
  input hang_status_cs_reg;
  input s_axi_aclk;

  wire \IP2Bus_Data_reg[30] ;
  wire hang_status_cs_reg;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(hang_status_cs_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\IP2Bus_Data_reg[30] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module shell_axi_hwicap_0_0_cdc_sync__parameterized9
   (\IP2Bus_Data_reg[29] ,
    icap_ce_cs_reg,
    s_axi_aclk);
  output \IP2Bus_Data_reg[29] ;
  input icap_ce_cs_reg;
  input s_axi_aclk;

  wire \IP2Bus_Data_reg[29] ;
  wire icap_ce_cs_reg;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_ce_cs_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\IP2Bus_Data_reg[29] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hwicap" *) 
module shell_axi_hwicap_0_0_hwicap
   (p_5_out_0,
    intr_rst,
    SR,
    Q,
    wr_rst_busy_i2_out,
    ipbus_ack_fifo,
    ipbus_ack,
    p_6_out,
    p_5_out,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \gic0.gc1.count_reg[0] ,
    IP2Bus_WrAck_reg,
    scndry_vect_out,
    scndry_out,
    \IP2Bus_Data_reg[30] ,
    \IP2Bus_Data_reg[29] ,
    \IP2Bus_Data_reg[20] ,
    \ip2bus_data_i_reg[0] ,
    s_axi_aclk,
    s_axi_wdata,
    p_10_in,
    IP2Bus_RdAck0,
    p_11_in,
    IP2Bus_WrAck0,
    Bus_RNW_reg_reg,
    p_1_in,
    p_1_in2_in,
    p_1_in5_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    Bus_RNW_reg,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    E,
    D,
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] );
  output [31:0]p_5_out_0;
  output intr_rst;
  output [0:0]SR;
  output [4:0]Q;
  output wr_rst_busy_i2_out;
  output ipbus_ack_fifo;
  output ipbus_ack;
  output p_6_out;
  output p_5_out;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output \gic0.gc1.count_reg[0] ;
  output IP2Bus_WrAck_reg;
  output [31:0]scndry_vect_out;
  output scndry_out;
  output \IP2Bus_Data_reg[30] ;
  output \IP2Bus_Data_reg[29] ;
  output [11:0]\IP2Bus_Data_reg[20] ;
  output [31:0]\ip2bus_data_i_reg[0] ;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input p_10_in;
  input IP2Bus_RdAck0;
  input p_11_in;
  input IP2Bus_WrAck0;
  input Bus_RNW_reg_reg;
  input p_1_in;
  input p_1_in2_in;
  input p_1_in5_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input Bus_RNW_reg;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input [0:0]E;
  input [31:0]D;
  input [0:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [31:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  wire GEN_BUS2ICAP_RESET_n_0;
  wire \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire ICAP_Reset;
  wire [11:0]\IP2Bus_Data_reg[20] ;
  wire \IP2Bus_Data_reg[29] ;
  wire \IP2Bus_Data_reg[30] ;
  wire IP2Bus_RdAck0;
  wire IP2Bus_WrAck0;
  wire IP2Bus_WrAck_reg;
  wire IPIC_IF_I_n_101;
  wire IPIC_IF_I_n_102;
  wire IPIC_IF_I_n_103;
  wire IPIC_IF_I_n_104;
  wire IPIC_IF_I_n_105;
  wire IPIC_IF_I_n_106;
  wire IPIC_IF_I_n_78;
  wire IPIC_IF_I_n_98;
  wire IPIC_IF_I_n_99;
  wire [4:0]Q;
  wire [0:0]SR;
  wire abort;
  wire abort_cs2;
  wire abort_del1;
  wire abort_del2;
  wire abort_del3;
  wire ce_del1;
  wire ce_del2;
  wire ce_del3;
  wire count_reset_cs;
  wire gate_icap_p;
  wire \gic0.gc1.count_reg[0] ;
  wire gtOp;
  wire hang_status;
  wire icap_available;
  wire icap_ce;
  wire [0:31]icap_datain;
  wire [31:0]icap_dataout;
  wire icap_statemachine_I1_n_41;
  wire icap_statemachine_I1_n_42;
  wire icap_statemachine_I1_n_43;
  wire icap_statemachine_I1_n_56;
  wire icap_statemachine_I1_n_57;
  wire icap_statemachine_I1_n_58;
  wire [0:31]icap_status_i;
  wire icap_we;
  wire intr_rst;
  wire [31:0]\ip2bus_data_i_reg[0] ;
  wire ipbus_ack;
  wire ipbus_ack_fifo;
  wire p_10_in;
  wire p_11_in;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_5_out;
  wire [31:0]p_5_out_0;
  wire p_6_out;
  wire p_7_in;
  wire p_8_in;
  wire [0:31]rdfifo_datain;
  wire rdfifo_wren;
  wire rdwr_int1;
  wire reset_cr;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_wdata;
  wire same_cycle;
  wire scndry_out;
  wire [31:0]scndry_vect_out;
  wire send_done;
  wire [0:11]size;
  wire [0:11]size_counter;
  wire wr_rst_busy_i2_out;
  wire [0:31]wrfifo_dataout;
  wire wrfifo_rden;
  wire writefifo_empty;
  wire \NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRDONE_UNCONNECTED ;
  wire \NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRERROR_UNCONNECTED ;

  shell_axi_hwicap_0_0_cdc_sync__parameterized10 GEN_BUS2ICAP_RESET
       (.SR(GEN_BUS2ICAP_RESET_n_0),
        .count_reset_cs(count_reset_cs),
        .prmry_in(SR),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(ICAP_Reset));
  (* box_type = "PRIMITIVE" *) 
  ICAPE3 #(
    .DEVICE_ID(32'h04224093),
    .ICAP_AUTO_SWITCH("DISABLE"),
    .SIM_CFG_FILE_NAME("NONE")) 
    \GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I 
       (.AVAIL(icap_available),
        .CLK(s_axi_aclk),
        .CSIB(icap_ce),
        .I({icap_datain[0],icap_datain[1],icap_datain[2],icap_datain[3],icap_datain[4],icap_datain[5],icap_datain[6],icap_datain[7],icap_datain[8],icap_datain[9],icap_datain[10],icap_datain[11],icap_datain[12],icap_datain[13],icap_datain[14],icap_datain[15],icap_datain[16],icap_datain[17],icap_datain[18],icap_datain[19],icap_datain[20],icap_datain[21],icap_datain[22],icap_datain[23],icap_datain[24],icap_datain[25],icap_datain[26],icap_datain[27],icap_datain[28],icap_datain[29],icap_datain[30],icap_datain[31]}),
        .O(icap_dataout),
        .PRDONE(\NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRDONE_UNCONNECTED ),
        .PRERROR(\NLW_GEN_FUNCTIONAL_UNISIM.GEN_VIRTEXU_ICAP.ICAP_VIRTEXU_I_PRERROR_UNCONNECTED ),
        .RDWRB(icap_we));
  FDRE \GEN_FUNCTIONAL_UNISIM.abort_del1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0 ),
        .Q(abort_del1),
        .R(ICAP_Reset));
  FDRE \GEN_FUNCTIONAL_UNISIM.abort_del2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(abort_del1),
        .Q(abort_del2),
        .R(ICAP_Reset));
  FDRE \GEN_FUNCTIONAL_UNISIM.abort_del3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(abort_del2),
        .Q(abort_del3),
        .R(ICAP_Reset));
  FDRE \GEN_FUNCTIONAL_UNISIM.abort_detect_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_statemachine_I1_n_56),
        .Q(\GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0 ),
        .R(1'b0));
  FDRE \GEN_FUNCTIONAL_UNISIM.ce_del1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_ce),
        .Q(ce_del1),
        .R(ICAP_Reset));
  FDRE \GEN_FUNCTIONAL_UNISIM.ce_del2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ce_del1),
        .Q(ce_del2),
        .R(ICAP_Reset));
  FDRE \GEN_FUNCTIONAL_UNISIM.ce_del3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ce_del2),
        .Q(ce_del3),
        .R(ICAP_Reset));
  FDSE \GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_statemachine_I1_n_57),
        .Q(rdwr_int1),
        .S(ICAP_Reset));
  FDRE \GEN_FUNCTIONAL_UNISIM.same_cycle_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_statemachine_I1_n_58),
        .Q(same_cycle),
        .R(ICAP_Reset));
  shell_axi_hwicap_0_0_ipic_if IPIC_IF_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .CO(gtOp),
        .D({wrfifo_dataout[0],wrfifo_dataout[1],wrfifo_dataout[2],wrfifo_dataout[3],wrfifo_dataout[4],wrfifo_dataout[5],wrfifo_dataout[6],wrfifo_dataout[7],wrfifo_dataout[8],wrfifo_dataout[9],wrfifo_dataout[10],wrfifo_dataout[11],wrfifo_dataout[12],wrfifo_dataout[13],wrfifo_dataout[14],wrfifo_dataout[15],wrfifo_dataout[16],wrfifo_dataout[17],wrfifo_dataout[18],wrfifo_dataout[19],wrfifo_dataout[20],wrfifo_dataout[21],wrfifo_dataout[22],wrfifo_dataout[23],wrfifo_dataout[24],wrfifo_dataout[25],wrfifo_dataout[26],wrfifo_dataout[27],wrfifo_dataout[28],wrfifo_dataout[29],wrfifo_dataout[30],wrfifo_dataout[31]}),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (IPIC_IF_I_n_104),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (D),
        .E(E),
        .\FSM_sequential_icap_nstate_cs_reg[0] (IPIC_IF_I_n_99),
        .\FSM_sequential_icap_nstate_cs_reg[1] (IPIC_IF_I_n_105),
        .\FSM_sequential_icap_nstate_cs_reg[2] (IPIC_IF_I_n_101),
        .\FSM_sequential_icap_nstate_cs_reg[2]_0 (IPIC_IF_I_n_106),
        .\FSM_sequential_icap_nstate_cs_reg[2]_1 ({icap_statemachine_I1_n_41,icap_statemachine_I1_n_42,icap_statemachine_I1_n_43}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (Q),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (ICAP_Reset),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] (\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ),
        .\IP2Bus_Data_reg[0]_0 (scndry_vect_out),
        .\IP2Bus_Data_reg[20]_0 (\IP2Bus_Data_reg[20] ),
        .\IP2Bus_Data_reg[29]_0 (\IP2Bus_Data_reg[29] ),
        .\IP2Bus_Data_reg[30]_0 (\IP2Bus_Data_reg[30] ),
        .\IP2Bus_Data_reg[31]_0 (scndry_out),
        .IP2Bus_RdAck0(IP2Bus_RdAck0),
        .IP2Bus_WrAck0(IP2Bus_WrAck0),
        .IP2Bus_WrAck_reg_0(IP2Bus_WrAck_reg),
        .Q({rdfifo_datain[7],rdfifo_datain[6],rdfifo_datain[5],rdfifo_datain[4],rdfifo_datain[3],rdfifo_datain[2],rdfifo_datain[1],rdfifo_datain[0],rdfifo_datain[15],rdfifo_datain[14],rdfifo_datain[13],rdfifo_datain[12],rdfifo_datain[11],rdfifo_datain[10],rdfifo_datain[9],rdfifo_datain[8],rdfifo_datain[23],rdfifo_datain[22],rdfifo_datain[21],rdfifo_datain[20],rdfifo_datain[19],rdfifo_datain[18],rdfifo_datain[17],rdfifo_datain[16],rdfifo_datain[31],rdfifo_datain[30],rdfifo_datain[29],rdfifo_datain[28],rdfifo_datain[27],rdfifo_datain[26],rdfifo_datain[25],rdfifo_datain[24]}),
        .SR(intr_rst),
        .Send_done_cs_reg(IPIC_IF_I_n_78),
        .Send_done_cs_reg_0(IPIC_IF_I_n_103),
        .abort_cs2_reg(abort_cs2),
        .fifo_rst_reg_0(SR),
        .gate_icap_p(gate_icap_p),
        .\gic0.gc1.count_reg[0] (\gic0.gc1.count_reg[0] ),
        .\grstd1.grst_full.grst_f.rst_d1_reg (wr_rst_busy_i2_out),
        .hang_status_cs_reg(hang_status),
        .icap_ce_cs_reg(icap_available),
        .\icap_status_i_reg[0] ({icap_status_i[0],icap_status_i[1],icap_status_i[2],icap_status_i[3],icap_status_i[4],icap_status_i[5],icap_status_i[6],icap_status_i[7],icap_status_i[8],icap_status_i[9],icap_status_i[10],icap_status_i[11],icap_status_i[12],icap_status_i[13],icap_status_i[14],icap_status_i[15],icap_status_i[16],icap_status_i[17],icap_status_i[18],icap_status_i[19],icap_status_i[20],icap_status_i[21],icap_status_i[22],icap_status_i[23],icap_status_i[24],icap_status_i[25],icap_status_i[26],icap_status_i[27],icap_status_i[28],icap_status_i[29],icap_status_i[30],icap_status_i[31]}),
        .\ip2bus_data_i_reg[0] (\ip2bus_data_i_reg[0] ),
        .ipbus_ack(ipbus_ack),
        .ipbus_ack_fifo(ipbus_ack_fifo),
        .out(writefifo_empty),
        .p_10_in(p_10_in),
        .p_11_in(p_11_in),
        .p_1_in(p_1_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out(p_5_out),
        .p_5_out_0(p_5_out_0),
        .p_6_out(p_6_out),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .prmry_in(send_done),
        .rdfifo_wren(rdfifo_wren),
        .rdfifo_wren_cs_reg(IPIC_IF_I_n_98),
        .reset_cr_cs_reg(reset_cr),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .scndry_out(abort),
        .scndry_vect_out({size[0],size[1],size[2],size[3],size[4],size[5],size[6],size[7],size[8],size[9],size[10],size[11]}),
        .\size_cs_reg[0] ({size_counter[0],size_counter[1],size_counter[2],size_counter[3],size_counter[4],size_counter[5],size_counter[6],size_counter[7],size_counter[8],size_counter[9],size_counter[10],size_counter[11]}),
        .\size_cs_reg[11] (IPIC_IF_I_n_102),
        .wrfifo_rden(wrfifo_rden));
  shell_axi_hwicap_0_0_icap_statemachine icap_statemachine_I1
       (.CO(gtOp),
        .D({wrfifo_dataout[0],wrfifo_dataout[1],wrfifo_dataout[2],wrfifo_dataout[3],wrfifo_dataout[4],wrfifo_dataout[5],wrfifo_dataout[6],wrfifo_dataout[7],wrfifo_dataout[8],wrfifo_dataout[9],wrfifo_dataout[10],wrfifo_dataout[11],wrfifo_dataout[12],wrfifo_dataout[13],wrfifo_dataout[14],wrfifo_dataout[15],wrfifo_dataout[16],wrfifo_dataout[17],wrfifo_dataout[18],wrfifo_dataout[19],wrfifo_dataout[20],wrfifo_dataout[21],wrfifo_dataout[22],wrfifo_dataout[23],wrfifo_dataout[24],wrfifo_dataout[25],wrfifo_dataout[26],wrfifo_dataout[27],wrfifo_dataout[28],wrfifo_dataout[29],wrfifo_dataout[30],wrfifo_dataout[31]}),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ({rdfifo_datain[7],rdfifo_datain[6],rdfifo_datain[5],rdfifo_datain[4],rdfifo_datain[3],rdfifo_datain[2],rdfifo_datain[1],rdfifo_datain[0],rdfifo_datain[15],rdfifo_datain[14],rdfifo_datain[13],rdfifo_datain[12],rdfifo_datain[11],rdfifo_datain[10],rdfifo_datain[9],rdfifo_datain[8],rdfifo_datain[23],rdfifo_datain[22],rdfifo_datain[21],rdfifo_datain[20],rdfifo_datain[19],rdfifo_datain[18],rdfifo_datain[17],rdfifo_datain[16],rdfifo_datain[31],rdfifo_datain[30],rdfifo_datain[29],rdfifo_datain[28],rdfifo_datain[27],rdfifo_datain[26],rdfifo_datain[25],rdfifo_datain[24]}),
        .\FSM_sequential_icap_nstate_cs_reg[0]_0 (IPIC_IF_I_n_102),
        .\FSM_sequential_icap_nstate_cs_reg[1]_0 (IPIC_IF_I_n_105),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ({icap_datain[0],icap_datain[1],icap_datain[2],icap_datain[3],icap_datain[4],icap_datain[5],icap_datain[6],icap_datain[7],icap_datain[8],icap_datain[9],icap_datain[10],icap_datain[11],icap_datain[12],icap_datain[13],icap_datain[14],icap_datain[15],icap_datain[16],icap_datain[17],icap_datain[18],icap_datain[19],icap_datain[20],icap_datain[21],icap_datain[22],icap_datain[23],icap_datain[24],icap_datain[25],icap_datain[26],icap_datain[27],icap_datain[28],icap_datain[29],icap_datain[30],icap_datain[31]}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (reset_cr),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 (hang_status),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (IPIC_IF_I_n_78),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (IPIC_IF_I_n_101),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 (IPIC_IF_I_n_99),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 (IPIC_IF_I_n_104),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 (GEN_BUS2ICAP_RESET_n_0),
        .\GEN_FUNCTIONAL_UNISIM.abort_detect_reg (icap_statemachine_I1_n_56),
        .\GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0 (\GEN_FUNCTIONAL_UNISIM.abort_detect_reg_n_0 ),
        .\GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg (icap_statemachine_I1_n_57),
        .\GEN_FUNCTIONAL_UNISIM.same_cycle_reg (icap_statemachine_I1_n_58),
        .Q({size_counter[0],size_counter[1],size_counter[2],size_counter[3],size_counter[4],size_counter[5],size_counter[6],size_counter[7],size_counter[8],size_counter[9],size_counter[10],size_counter[11]}),
        .SR(ICAP_Reset),
        .abort_del1(abort_del1),
        .abort_del2(abort_del2),
        .abort_del3(abort_del3),
        .abort_i_cs_reg_0({icap_statemachine_I1_n_41,icap_statemachine_I1_n_42,icap_statemachine_I1_n_43}),
        .ce_del3(ce_del3),
        .count_reset_cs(count_reset_cs),
        .gate_icap_p(gate_icap_p),
        .gate_signal_p_reg(IPIC_IF_I_n_98),
        .gate_signal_p_reg_0(IPIC_IF_I_n_103),
        .gate_signal_p_reg_1(IPIC_IF_I_n_106),
        .\icap_status_i_reg[8]_0 ({icap_status_i[0],icap_status_i[1],icap_status_i[2],icap_status_i[3],icap_status_i[4],icap_status_i[5],icap_status_i[6],icap_status_i[7],icap_status_i[8],icap_status_i[9],icap_status_i[10],icap_status_i[11],icap_status_i[12],icap_status_i[13],icap_status_i[14],icap_status_i[15],icap_status_i[16],icap_status_i[17],icap_status_i[18],icap_status_i[19],icap_status_i[20],icap_status_i[21],icap_status_i[22],icap_status_i[23],icap_status_i[24],icap_status_i[25],icap_status_i[26],icap_status_i[27],icap_status_i[28],icap_status_i[29],icap_status_i[30],icap_status_i[31]}),
        .icap_we_cs_reg_0(icap_we),
        .in0({icap_dataout[31],icap_dataout[30],icap_dataout[29],icap_dataout[28],icap_dataout[27],icap_dataout[26],icap_dataout[25],icap_dataout[24],icap_dataout[23],icap_dataout[22],icap_dataout[21],icap_dataout[20],icap_dataout[19],icap_dataout[18],icap_dataout[17],icap_dataout[16],icap_dataout[15],icap_dataout[14],icap_dataout[13],icap_dataout[12],icap_dataout[11],icap_dataout[10],icap_dataout[9],icap_dataout[8],icap_dataout[7],icap_dataout[6],icap_dataout[5],icap_dataout[4],icap_dataout[3],icap_dataout[2],icap_dataout[1],icap_dataout[0]}),
        .out(icap_ce),
        .prmry_in(send_done),
        .ram_empty_i_reg(writefifo_empty),
        .rdfifo_wren(rdfifo_wren),
        .rdwr_int1(rdwr_int1),
        .s_axi_aclk(s_axi_aclk),
        .same_cycle(same_cycle),
        .scndry_out(abort),
        .scndry_vect_out({size[0],size[1],size[2],size[3],size[4],size[5],size[6],size[7],size[8],size[9],size[10],size[11]}),
        .\sr_i_reg[0] (abort_cs2),
        .wrfifo_rden(wrfifo_rden));
endmodule

(* ORIG_REF_NAME = "icap_statemachine" *) 
module shell_axi_hwicap_0_0_icap_statemachine
   (out,
    icap_we_cs_reg_0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    \sr_i_reg[0] ,
    rdfifo_wren,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    CO,
    count_reset_cs,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ,
    abort_i_cs_reg_0,
    Q,
    \GEN_FUNCTIONAL_UNISIM.abort_detect_reg ,
    \GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg ,
    \GEN_FUNCTIONAL_UNISIM.same_cycle_reg ,
    wrfifo_rden,
    \icap_status_i_reg[8]_0 ,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    in0,
    s_axi_aclk,
    ram_empty_i_reg,
    SR,
    gate_icap_p,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0 ,
    same_cycle,
    rdwr_int1,
    abort_del1,
    abort_del3,
    abort_del2,
    ce_del3,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \FSM_sequential_icap_nstate_cs_reg[0]_0 ,
    gate_signal_p_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ,
    gate_signal_p_reg_0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ,
    gate_signal_p_reg_1,
    \FSM_sequential_icap_nstate_cs_reg[1]_0 ,
    scndry_vect_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ,
    D);
  output out;
  output icap_we_cs_reg_0;
  output [31:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output [0:0]\sr_i_reg[0] ;
  output rdfifo_wren;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  output [0:0]CO;
  output count_reset_cs;
  output prmry_in;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  output [2:0]abort_i_cs_reg_0;
  output [11:0]Q;
  output \GEN_FUNCTIONAL_UNISIM.abort_detect_reg ;
  output \GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg ;
  output \GEN_FUNCTIONAL_UNISIM.same_cycle_reg ;
  output wrfifo_rden;
  output [31:0]\icap_status_i_reg[8]_0 ;
  output [31:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [0:31]in0;
  input s_axi_aclk;
  input ram_empty_i_reg;
  input [0:0]SR;
  input gate_icap_p;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0 ;
  input same_cycle;
  input rdwr_int1;
  input abort_del1;
  input abort_del3;
  input abort_del2;
  input ce_del3;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input \FSM_sequential_icap_nstate_cs_reg[0]_0 ;
  input gate_signal_p_reg;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  input gate_signal_p_reg_0;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ;
  input gate_signal_p_reg_1;
  input \FSM_sequential_icap_nstate_cs_reg[1]_0 ;
  input [11:0]scndry_vect_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ;
  input [31:0]D;

  wire [0:0]CO;
  wire [31:0]D;
  wire [31:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[0]_i_4_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[0]_i_5_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[3]_i_4_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[3]_i_5_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[3]_i_7_n_0 ;
  wire \FSM_sequential_icap_nstate_cs[3]_i_8_n_0 ;
  wire \FSM_sequential_icap_nstate_cs_reg[0]_0 ;
  wire \FSM_sequential_icap_nstate_cs_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_icap_nstate_cs_reg[1]_0 ;
  wire \FSM_sequential_icap_nstate_cs_reg[2]_i_2_n_0 ;
  (* RTL_KEEP = "true" *) wire [31:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ;
  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ;
  wire \GEN_FUNCTIONAL_UNISIM.abort_detect_reg ;
  wire \GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0 ;
  wire \GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg ;
  wire \GEN_FUNCTIONAL_UNISIM.same_cycle_reg ;
  wire Icap_busy_inferred_i_2_n_0;
  wire [11:0]Q;
  wire [0:0]SR;
  wire Send_done_cs_i_1_n_0;
  wire Send_done_ns;
  wire Wrfifo_empty_r;
  wire Wrfifo_empty_r1;
  wire abort_cs;
  wire abort_del1;
  wire abort_del2;
  wire abort_del3;
  wire abort_i_cs;
  wire abort_i_cs2;
  wire abort_i_cs_i_2_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]abort_i_cs_reg_0;
  wire abort_i_ns;
  wire abort_ns;
  wire ce_del3;
  wire [2:0]count;
  wire count0;
  wire \count[2]_i_3_n_0 ;
  wire count_enable_cs;
  wire count_enable_cs_i_1_n_0;
  wire count_enable_cs_i_2_n_0;
  wire count_reset_cs;
  wire count_reset_cs_i_1_n_0;
  wire count_reset_ns;
  wire eqOp16_in;
  wire gate_icap_p;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire gate_signal_p_reg_1;
  wire gtOp_carry_i_10_n_0;
  wire gtOp_carry_i_11_n_0;
  wire gtOp_carry_i_12_n_0;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_i_9_n_0;
  wire gtOp_carry_n_3;
  wire gtOp_carry_n_5;
  wire gtOp_carry_n_6;
  wire gtOp_carry_n_7;
  wire hang_status_cs_i_1_n_0;
  wire hang_status_cs_i_2_n_0;
  wire hang_status_cs_i_3_n_0;
  wire hang_status_cs_i_4_n_0;
  wire icap_ce_cs_i_1_n_0;
  wire icap_ce_cs_i_2_n_0;
  wire icap_ce_cs_i_5_n_0;
  wire icap_ce_cs_i_6_n_0;
  wire icap_ce_ns;
  wire icap_ce_ns15_out;
  (* RTL_KEEP = "yes" *) wire [3:3]icap_nstate_cs;
  wire [31:0]\icap_status_i_reg[8]_0 ;
  wire icap_we_cs_i_1_n_0;
  wire icap_we_cs_i_2_n_0;
  (* RTL_KEEP = "true" *) wire icap_we_cs_reg_0;
  (* RTL_KEEP = "true" *) wire [0:31]in0;
  wire [0:31]int1;
  (* RTL_KEEP = "true" *) wire out;
  (* RTL_KEEP = "true" *) wire p_0_in2_in;
  wire [1:0]plusOp__3;
  wire prmry_in;
  wire ram_empty_i_reg;
  wire rdfifo_wren;
  wire rdfifo_wren_cs_i_2_n_0;
  wire rdfifo_wren_cs_i_4_n_0;
  wire rdfifo_wren_ns;
  wire rdwr_int1;
  wire reset_cr_cs_i_2_n_0;
  wire reset_cr_ns;
  wire s_axi_aclk;
  wire same_cycle;
  wire scndry_out;
  wire [11:0]scndry_vect_out;
  wire \size_cs[0]_i_2_n_0 ;
  wire \size_cs[0]_i_4_n_0 ;
  wire \size_cs[0]_i_5_n_0 ;
  wire \size_cs[0]_i_6_n_0 ;
  wire \size_cs[10]_i_1_n_0 ;
  wire \size_cs[11]_i_1_n_0 ;
  wire \size_cs[1]_i_1_n_0 ;
  wire \size_cs[1]_i_2_n_0 ;
  wire \size_cs[2]_i_1_n_0 ;
  wire \size_cs[3]_i_1_n_0 ;
  wire \size_cs[4]_i_1_n_0 ;
  wire \size_cs[4]_i_2_n_0 ;
  wire \size_cs[4]_i_3_n_0 ;
  wire \size_cs[5]_i_1_n_0 ;
  wire \size_cs[5]_i_2_n_0 ;
  wire \size_cs[6]_i_1_n_0 ;
  wire \size_cs[7]_i_1_n_0 ;
  wire \size_cs[8]_i_1_n_0 ;
  wire \size_cs[8]_i_2_n_0 ;
  wire \size_cs[9]_i_1_n_0 ;
  wire size_ns;
  wire [0:0]\sr_i_reg[0] ;
  wire wrfifo_rden;
  wire [7:3]NLW_gtOp_carry_CO_UNCONNECTED;
  wire [7:6]NLW_gtOp_carry_DI_UNCONNECTED;
  wire [7:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [7:6]NLW_gtOp_carry_S_UNCONNECTED;

  LUT4 #(
    .INIT(16'h00E2)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ),
        .I1(abort_i_cs_reg_0[2]),
        .I2(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6_n_0 ),
        .I3(icap_nstate_cs),
        .O(wrfifo_rden));
  LUT6 #(
    .INIT(64'h0000003044444444)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6 
       (.I0(ram_empty_i_reg),
        .I1(abort_i_cs_reg_0[0]),
        .I2(rdfifo_wren_cs_i_4_n_0),
        .I3(Wrfifo_empty_r),
        .I4(Wrfifo_empty_r1),
        .I5(abort_i_cs_reg_0[1]),
        .O(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB833FFFFB8330000)) 
    \FSM_sequential_icap_nstate_cs[0]_i_2 
       (.I0(\FSM_sequential_icap_nstate_cs[0]_i_4_n_0 ),
        .I1(abort_i_cs_reg_0[0]),
        .I2(Wrfifo_empty_r1),
        .I3(abort_i_cs_reg_0[1]),
        .I4(abort_i_cs_reg_0[2]),
        .I5(\FSM_sequential_icap_nstate_cs[0]_i_5_n_0 ),
        .O(\FSM_sequential_icap_nstate_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBB0BFFFFFFFF)) 
    \FSM_sequential_icap_nstate_cs[0]_i_4 
       (.I0(hang_status_cs_i_2_n_0),
        .I1(p_0_in2_in),
        .I2(scndry_out),
        .I3(out),
        .I4(gate_icap_p),
        .I5(CO),
        .O(\FSM_sequential_icap_nstate_cs[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBFFFC)) 
    \FSM_sequential_icap_nstate_cs[0]_i_5 
       (.I0(p_0_in2_in),
        .I1(abort_i_cs_reg_0[0]),
        .I2(scndry_out),
        .I3(gate_signal_p_reg_1),
        .I4(abort_i_cs_reg_0[1]),
        .O(\FSM_sequential_icap_nstate_cs[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F006F6F0F006060)) 
    \FSM_sequential_icap_nstate_cs[1]_i_1 
       (.I0(abort_i_cs_reg_0[1]),
        .I1(abort_i_cs_reg_0[0]),
        .I2(icap_nstate_cs),
        .I3(\FSM_sequential_icap_nstate_cs[1]_i_2_n_0 ),
        .I4(abort_i_cs_reg_0[2]),
        .I5(\FSM_sequential_icap_nstate_cs[1]_i_3_n_0 ),
        .O(\FSM_sequential_icap_nstate_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B888BCCCCCCCC)) 
    \FSM_sequential_icap_nstate_cs[1]_i_2 
       (.I0(\FSM_sequential_icap_nstate_cs[1]_i_4_n_0 ),
        .I1(abort_i_cs_reg_0[0]),
        .I2(Wrfifo_empty_r1),
        .I3(scndry_out),
        .I4(out),
        .I5(abort_i_cs_reg_0[1]),
        .O(\FSM_sequential_icap_nstate_cs[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_sequential_icap_nstate_cs[1]_i_3 
       (.I0(p_0_in2_in),
        .I1(abort_i_cs_reg_0[1]),
        .I2(abort_i_cs_reg_0[0]),
        .I3(\FSM_sequential_icap_nstate_cs_reg[1]_0 ),
        .O(\FSM_sequential_icap_nstate_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8B000000)) 
    \FSM_sequential_icap_nstate_cs[1]_i_4 
       (.I0(hang_status_cs_i_2_n_0),
        .I1(p_0_in2_in),
        .I2(eqOp16_in),
        .I3(rdfifo_wren_cs_i_4_n_0),
        .I4(CO),
        .I5(gate_icap_p),
        .O(\FSM_sequential_icap_nstate_cs[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \FSM_sequential_icap_nstate_cs[2]_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I1(abort_i_cs_reg_0[2]),
        .I2(abort_i_cs_reg_0[1]),
        .I3(abort_i_cs_reg_0[0]),
        .I4(icap_nstate_cs),
        .I5(\FSM_sequential_icap_nstate_cs_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_icap_nstate_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700470047334700)) 
    \FSM_sequential_icap_nstate_cs[2]_i_3 
       (.I0(p_0_in2_in),
        .I1(abort_i_cs_reg_0[0]),
        .I2(ram_empty_i_reg),
        .I3(abort_i_cs_reg_0[1]),
        .I4(gate_signal_p_reg_1),
        .I5(scndry_out),
        .O(\FSM_sequential_icap_nstate_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFD0FFFFFFFF)) 
    \FSM_sequential_icap_nstate_cs[2]_i_4 
       (.I0(CO),
        .I1(gate_icap_p),
        .I2(abort_i_cs_reg_0[0]),
        .I3(Wrfifo_empty_r1),
        .I4(rdfifo_wren_cs_i_4_n_0),
        .I5(abort_i_cs_reg_0[1]),
        .O(\FSM_sequential_icap_nstate_cs[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \FSM_sequential_icap_nstate_cs[3]_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I1(icap_nstate_cs),
        .I2(\FSM_sequential_icap_nstate_cs[3]_i_3_n_0 ),
        .I3(abort_i_cs_reg_0[2]),
        .I4(\FSM_sequential_icap_nstate_cs[3]_i_4_n_0 ),
        .O(\FSM_sequential_icap_nstate_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B8833333333)) 
    \FSM_sequential_icap_nstate_cs[3]_i_3 
       (.I0(\FSM_sequential_icap_nstate_cs[3]_i_5_n_0 ),
        .I1(abort_i_cs_reg_0[0]),
        .I2(out),
        .I3(scndry_out),
        .I4(Wrfifo_empty_r1),
        .I5(abort_i_cs_reg_0[1]),
        .O(\FSM_sequential_icap_nstate_cs[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_icap_nstate_cs[3]_i_4 
       (.I0(abort_i_cs_reg_0[1]),
        .I1(abort_i_cs_reg_0[0]),
        .I2(out),
        .I3(p_0_in2_in),
        .O(\FSM_sequential_icap_nstate_cs[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000074FFFFFF)) 
    \FSM_sequential_icap_nstate_cs[3]_i_5 
       (.I0(hang_status_cs_i_2_n_0),
        .I1(p_0_in2_in),
        .I2(eqOp16_in),
        .I3(rdfifo_wren_cs_i_4_n_0),
        .I4(CO),
        .I5(gate_icap_p),
        .O(\FSM_sequential_icap_nstate_cs[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_sequential_icap_nstate_cs[3]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_sequential_icap_nstate_cs[3]_i_7_n_0 ),
        .I3(\size_cs[1]_i_2_n_0 ),
        .I4(\FSM_sequential_icap_nstate_cs[3]_i_8_n_0 ),
        .I5(icap_ce_cs_i_6_n_0),
        .O(eqOp16_in));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_icap_nstate_cs[3]_i_7 
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(\FSM_sequential_icap_nstate_cs[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_icap_nstate_cs[3]_i_8 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\FSM_sequential_icap_nstate_cs[3]_i_8_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_icap_nstate_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_icap_nstate_cs_reg[0]_i_1_n_0 ),
        .Q(abort_i_cs_reg_0[0]),
        .R(SR));
  MUXF7 \FSM_sequential_icap_nstate_cs_reg[0]_i_1 
       (.I0(\FSM_sequential_icap_nstate_cs[0]_i_2_n_0 ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .O(\FSM_sequential_icap_nstate_cs_reg[0]_i_1_n_0 ),
        .S(icap_nstate_cs));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_icap_nstate_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_icap_nstate_cs[1]_i_1_n_0 ),
        .Q(abort_i_cs_reg_0[1]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_icap_nstate_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_icap_nstate_cs[2]_i_1_n_0 ),
        .Q(abort_i_cs_reg_0[2]),
        .R(SR));
  MUXF7 \FSM_sequential_icap_nstate_cs_reg[2]_i_2 
       (.I0(\FSM_sequential_icap_nstate_cs[2]_i_3_n_0 ),
        .I1(\FSM_sequential_icap_nstate_cs[2]_i_4_n_0 ),
        .O(\FSM_sequential_icap_nstate_cs_reg[2]_i_2_n_0 ),
        .S(abort_i_cs_reg_0[2]));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_icap_nstate_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_icap_nstate_cs[3]_i_1_n_0 ),
        .Q(icap_nstate_cs),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000008ABABA8A)) 
    \GEN_FUNCTIONAL_UNISIM.abort_detect_i_1 
       (.I0(\GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0 ),
        .I1(out),
        .I2(same_cycle),
        .I3(rdwr_int1),
        .I4(icap_we_cs_reg_0),
        .I5(SR),
        .O(\GEN_FUNCTIONAL_UNISIM.abort_detect_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_FUNCTIONAL_UNISIM.rdwr_int1_i_1 
       (.I0(out),
        .I1(icap_we_cs_reg_0),
        .O(\GEN_FUNCTIONAL_UNISIM.rdwr_int1_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_FUNCTIONAL_UNISIM.same_cycle_i_1 
       (.I0(out),
        .O(\GEN_FUNCTIONAL_UNISIM.same_cycle_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    Icap_busy_inferred_i_1
       (.I0(abort_del1),
        .I1(Icap_busy_inferred_i_2_n_0),
        .O(p_0_in2_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    Icap_busy_inferred_i_2
       (.I0(abort_del3),
        .I1(abort_del2),
        .I2(icap_we_cs_reg_0),
        .I3(out),
        .I4(ce_del3),
        .I5(\GEN_FUNCTIONAL_UNISIM.abort_detect_reg_0 ),
        .O(Icap_busy_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h7770FFFF77700000)) 
    Send_done_cs_i_1
       (.I0(abort_i_cs_reg_0[1]),
        .I1(icap_nstate_cs),
        .I2(abort_i_cs_reg_0[2]),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I4(Send_done_ns),
        .I5(prmry_in),
        .O(Send_done_cs_i_1_n_0));
  LUT6 #(
    .INIT(64'h7400740030333000)) 
    Send_done_cs_i_3
       (.I0(abort_i_cs_reg_0[1]),
        .I1(icap_nstate_cs),
        .I2(reset_cr_cs_i_2_n_0),
        .I3(abort_i_cs_reg_0[2]),
        .I4(gate_signal_p_reg_0),
        .I5(abort_i_cs_reg_0[0]),
        .O(Send_done_ns));
  FDSE Send_done_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Send_done_cs_i_1_n_0),
        .Q(prmry_in),
        .S(SR));
  FDRE Wrfifo_empty_r1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Wrfifo_empty_r),
        .Q(Wrfifo_empty_r1),
        .R(1'b0));
  FDRE Wrfifo_empty_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg),
        .Q(Wrfifo_empty_r),
        .R(1'b0));
  FDRE abort_cs2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(abort_cs),
        .Q(\sr_i_reg[0] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5400)) 
    abort_cs_i_1
       (.I0(abort_i_cs_reg_0[2]),
        .I1(abort_i_cs_reg_0[0]),
        .I2(abort_i_cs_reg_0[1]),
        .I3(icap_nstate_cs),
        .O(abort_ns));
  FDRE abort_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(abort_ns),
        .Q(abort_cs),
        .R(1'b0));
  FDRE abort_i_cs2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(abort_i_cs),
        .Q(abort_i_cs2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h404A404A4F4F4F4A)) 
    abort_i_cs_i_1
       (.I0(icap_nstate_cs),
        .I1(abort_i_cs_i_2_n_0),
        .I2(abort_i_cs_reg_0[2]),
        .I3(abort_i_cs_reg_0[0]),
        .I4(scndry_out),
        .I5(abort_i_cs_reg_0[1]),
        .O(abort_i_ns));
  LUT6 #(
    .INIT(64'h0040004F00000000)) 
    abort_i_cs_i_2
       (.I0(gate_icap_p),
        .I1(CO),
        .I2(abort_i_cs_reg_0[0]),
        .I3(rdfifo_wren_cs_i_4_n_0),
        .I4(Wrfifo_empty_r1),
        .I5(abort_i_cs_reg_0[1]),
        .O(abort_i_cs_i_2_n_0));
  FDRE abort_i_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(abort_i_ns),
        .Q(abort_i_cs),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(plusOp__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(plusOp__3[1]));
  LUT4 #(
    .INIT(16'h7F00)) 
    \count[2]_i_2 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count_enable_cs),
        .O(count0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_3 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .O(\count[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEF3FFF3C20000000)) 
    count_enable_cs_i_1
       (.I0(count_enable_cs_i_2_n_0),
        .I1(icap_nstate_cs),
        .I2(abort_i_cs_reg_0[2]),
        .I3(abort_i_cs_reg_0[1]),
        .I4(abort_i_cs_reg_0[0]),
        .I5(count_enable_cs),
        .O(count_enable_cs_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008A00)) 
    count_enable_cs_i_2
       (.I0(p_0_in2_in),
        .I1(out),
        .I2(scndry_out),
        .I3(CO),
        .I4(gate_icap_p),
        .O(count_enable_cs_i_2_n_0));
  FDRE count_enable_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(count_enable_cs_i_1_n_0),
        .Q(count_enable_cs),
        .R(SR));
  FDRE \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(count0),
        .D(plusOp__3[0]),
        .Q(count[0]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ));
  FDRE \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(count0),
        .D(plusOp__3[1]),
        .Q(count[1]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ));
  FDRE \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(count0),
        .D(\count[2]_i_3_n_0 ),
        .Q(count[2]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ));
  LUT6 #(
    .INIT(64'h404FFFFF404F0000)) 
    count_reset_cs_i_1
       (.I0(icap_nstate_cs),
        .I1(gate_icap_p),
        .I2(abort_i_cs_reg_0[0]),
        .I3(abort_i_cs_reg_0[1]),
        .I4(count_reset_ns),
        .I5(count_reset_cs),
        .O(count_reset_cs_i_1_n_0));
  LUT5 #(
    .INIT(32'h40AA0005)) 
    count_reset_cs_i_2
       (.I0(icap_nstate_cs),
        .I1(count_enable_cs_i_2_n_0),
        .I2(abort_i_cs_reg_0[0]),
        .I3(abort_i_cs_reg_0[1]),
        .I4(abort_i_cs_reg_0[2]),
        .O(count_reset_ns));
  FDRE count_reset_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(count_reset_cs_i_1_n_0),
        .Q(count_reset_cs),
        .R(SR));
  CARRY8 gtOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_gtOp_carry_CO_UNCONNECTED[7:6],CO,gtOp_carry_n_3,NLW_gtOp_carry_CO_UNCONNECTED[3],gtOp_carry_n_5,gtOp_carry_n_6,gtOp_carry_n_7}),
        .DI({NLW_gtOp_carry_DI_UNCONNECTED[7:6],gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0,gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[7:0]),
        .S({NLW_gtOp_carry_S_UNCONNECTED[7:6],gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0,gtOp_carry_i_9_n_0,gtOp_carry_i_10_n_0,gtOp_carry_i_11_n_0,gtOp_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_1
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(gtOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_10
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(gtOp_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_11
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(gtOp_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_12
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(gtOp_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_2
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(gtOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_3
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(gtOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(gtOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_5
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(gtOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(gtOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_7
       (.I0(Q[11]),
        .I1(Q[10]),
        .O(gtOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_8
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(gtOp_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_9
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(gtOp_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h10FFFFFF10FF0000)) 
    hang_status_cs_i_1
       (.I0(icap_nstate_cs),
        .I1(hang_status_cs_i_2_n_0),
        .I2(hang_status_cs_i_3_n_0),
        .I3(abort_i_cs_reg_0[1]),
        .I4(hang_status_cs_i_4_n_0),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ),
        .O(hang_status_cs_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    hang_status_cs_i_2
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .O(hang_status_cs_i_2_n_0));
  LUT3 #(
    .INIT(8'hD0)) 
    hang_status_cs_i_3
       (.I0(scndry_out),
        .I1(out),
        .I2(p_0_in2_in),
        .O(hang_status_cs_i_3_n_0));
  LUT6 #(
    .INIT(64'h100000AA00000000)) 
    hang_status_cs_i_4
       (.I0(icap_nstate_cs),
        .I1(gate_icap_p),
        .I2(CO),
        .I3(abort_i_cs_reg_0[1]),
        .I4(abort_i_cs_reg_0[0]),
        .I5(abort_i_cs_reg_0[2]),
        .O(hang_status_cs_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    hang_status_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(hang_status_cs_i_1_n_0),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icap_ce_cs_i_1
       (.I0(icap_ce_cs_i_2_n_0),
        .I1(icap_ce_ns),
        .I2(out),
        .O(icap_ce_cs_i_1_n_0));
  LUT6 #(
    .INIT(64'h6673227300000000)) 
    icap_ce_cs_i_2
       (.I0(icap_nstate_cs),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Wrfifo_empty_r1),
        .I3(abort_i_cs_reg_0[0]),
        .I4(icap_ce_ns15_out),
        .I5(abort_i_cs_reg_0[2]),
        .O(icap_ce_cs_i_2_n_0));
  LUT5 #(
    .INIT(32'h77774410)) 
    icap_ce_cs_i_3
       (.I0(icap_nstate_cs),
        .I1(abort_i_cs_reg_0[1]),
        .I2(scndry_out),
        .I3(abort_i_cs_reg_0[0]),
        .I4(abort_i_cs_reg_0[2]),
        .O(icap_ce_ns));
  LUT6 #(
    .INIT(64'h050505050505050D)) 
    icap_ce_cs_i_4
       (.I0(CO),
        .I1(icap_ce_cs_i_5_n_0),
        .I2(gate_icap_p),
        .I3(Q[10]),
        .I4(Q[11]),
        .I5(icap_ce_cs_i_6_n_0),
        .O(icap_ce_ns15_out));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    icap_ce_cs_i_5
       (.I0(\size_cs[1]_i_2_n_0 ),
        .I1(rdfifo_wren_cs_i_4_n_0),
        .I2(\FSM_sequential_icap_nstate_cs[3]_i_8_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in2_in),
        .O(icap_ce_cs_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    icap_ce_cs_i_6
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(icap_ce_cs_i_6_n_0));
  (* KEEP = "yes" *) 
  FDSE icap_ce_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_ce_cs_i_1_n_0),
        .Q(out),
        .S(SR));
  FDRE \icap_datain_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[0]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [24]),
        .R(SR));
  FDRE \icap_datain_cs_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[10]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [18]),
        .R(SR));
  FDRE \icap_datain_cs_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[11]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [19]),
        .R(SR));
  FDRE \icap_datain_cs_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[12]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [20]),
        .R(SR));
  FDRE \icap_datain_cs_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[13]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [21]),
        .R(SR));
  FDRE \icap_datain_cs_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[14]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [22]),
        .R(SR));
  FDRE \icap_datain_cs_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[15]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [23]),
        .R(SR));
  FDRE \icap_datain_cs_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[16]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [8]),
        .R(SR));
  FDRE \icap_datain_cs_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[17]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [9]),
        .R(SR));
  FDRE \icap_datain_cs_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[18]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [10]),
        .R(SR));
  FDRE \icap_datain_cs_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[19]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [11]),
        .R(SR));
  FDRE \icap_datain_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [25]),
        .R(SR));
  FDRE \icap_datain_cs_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[20]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [12]),
        .R(SR));
  FDRE \icap_datain_cs_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[21]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [13]),
        .R(SR));
  FDRE \icap_datain_cs_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[22]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [14]),
        .R(SR));
  FDRE \icap_datain_cs_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[23]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [15]),
        .R(SR));
  FDRE \icap_datain_cs_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[24]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [0]),
        .R(SR));
  FDRE \icap_datain_cs_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[25]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [1]),
        .R(SR));
  FDRE \icap_datain_cs_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[26]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [2]),
        .R(SR));
  FDRE \icap_datain_cs_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[27]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [3]),
        .R(SR));
  FDRE \icap_datain_cs_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[28]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [4]),
        .R(SR));
  FDRE \icap_datain_cs_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[29]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [5]),
        .R(SR));
  FDRE \icap_datain_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [26]),
        .R(SR));
  FDRE \icap_datain_cs_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[30]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [6]),
        .R(SR));
  FDRE \icap_datain_cs_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[31]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [7]),
        .R(SR));
  FDRE \icap_datain_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [27]),
        .R(SR));
  FDRE \icap_datain_cs_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[4]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [28]),
        .R(SR));
  FDRE \icap_datain_cs_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[5]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [29]),
        .R(SR));
  FDRE \icap_datain_cs_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[6]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [30]),
        .R(SR));
  FDRE \icap_datain_cs_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[7]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [31]),
        .R(SR));
  FDRE \icap_datain_cs_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[8]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [16]),
        .R(SR));
  FDRE \icap_datain_cs_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(int1[9]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [17]),
        .R(SR));
  FDRE \icap_dataout_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[0]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [31]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[10]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [21]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[11]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [20]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[12]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [19]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[13]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [18]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[14]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [17]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[15]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [16]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[16]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [15]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[17]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [14]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[18]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [13]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[19]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [12]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[1]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [30]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[20]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [11]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[21]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [10]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[22]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [9]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[23]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [8]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[24]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [7]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[25]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [6]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[26]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [5]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[27]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [4]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[28]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[29]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[2]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [29]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[30]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[31]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[3]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [28]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[4]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [27]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[5]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [26]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[6]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [25]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[7]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [24]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[8]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [23]),
        .R(1'b0));
  FDRE \icap_dataout_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0[9]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [22]),
        .R(1'b0));
  FDRE \icap_status_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[24]),
        .Q(\icap_status_i_reg[8]_0 [31]),
        .R(SR));
  FDRE \icap_status_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [29]),
        .Q(\icap_status_i_reg[8]_0 [21]),
        .R(SR));
  FDRE \icap_status_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [28]),
        .Q(\icap_status_i_reg[8]_0 [20]),
        .R(SR));
  FDRE \icap_status_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [27]),
        .Q(\icap_status_i_reg[8]_0 [19]),
        .R(SR));
  FDRE \icap_status_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [26]),
        .Q(\icap_status_i_reg[8]_0 [18]),
        .R(SR));
  FDRE \icap_status_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [25]),
        .Q(\icap_status_i_reg[8]_0 [17]),
        .R(SR));
  FDRE \icap_status_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [24]),
        .Q(\icap_status_i_reg[8]_0 [16]),
        .R(SR));
  FDRE \icap_status_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [23]),
        .Q(\icap_status_i_reg[8]_0 [15]),
        .R(SR));
  FDRE \icap_status_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [22]),
        .Q(\icap_status_i_reg[8]_0 [14]),
        .R(SR));
  FDRE \icap_status_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [21]),
        .Q(\icap_status_i_reg[8]_0 [13]),
        .R(SR));
  FDRE \icap_status_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [20]),
        .Q(\icap_status_i_reg[8]_0 [12]),
        .R(SR));
  FDRE \icap_status_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[25]),
        .Q(\icap_status_i_reg[8]_0 [30]),
        .R(SR));
  FDRE \icap_status_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [19]),
        .Q(\icap_status_i_reg[8]_0 [11]),
        .R(SR));
  FDRE \icap_status_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [18]),
        .Q(\icap_status_i_reg[8]_0 [10]),
        .R(SR));
  FDRE \icap_status_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [17]),
        .Q(\icap_status_i_reg[8]_0 [9]),
        .R(SR));
  FDRE \icap_status_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [16]),
        .Q(\icap_status_i_reg[8]_0 [8]),
        .R(SR));
  FDRE \icap_status_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [15]),
        .Q(\icap_status_i_reg[8]_0 [7]),
        .R(SR));
  FDRE \icap_status_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [14]),
        .Q(\icap_status_i_reg[8]_0 [6]),
        .R(SR));
  FDRE \icap_status_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [13]),
        .Q(\icap_status_i_reg[8]_0 [5]),
        .R(SR));
  FDRE \icap_status_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [12]),
        .Q(\icap_status_i_reg[8]_0 [4]),
        .R(SR));
  FDRE \icap_status_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [11]),
        .Q(\icap_status_i_reg[8]_0 [3]),
        .R(SR));
  FDRE \icap_status_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [10]),
        .Q(\icap_status_i_reg[8]_0 [2]),
        .R(SR));
  FDRE \icap_status_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[26]),
        .Q(\icap_status_i_reg[8]_0 [29]),
        .R(SR));
  FDRE \icap_status_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [9]),
        .Q(\icap_status_i_reg[8]_0 [1]),
        .R(SR));
  FDRE \icap_status_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [8]),
        .Q(\icap_status_i_reg[8]_0 [0]),
        .R(SR));
  FDRE \icap_status_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[27]),
        .Q(\icap_status_i_reg[8]_0 [28]),
        .R(SR));
  FDRE \icap_status_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[28]),
        .Q(\icap_status_i_reg[8]_0 [27]),
        .R(SR));
  FDRE \icap_status_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[29]),
        .Q(\icap_status_i_reg[8]_0 [26]),
        .R(SR));
  FDRE \icap_status_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[30]),
        .Q(\icap_status_i_reg[8]_0 [25]),
        .R(SR));
  FDRE \icap_status_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(in0[31]),
        .Q(\icap_status_i_reg[8]_0 [24]),
        .R(SR));
  FDRE \icap_status_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [31]),
        .Q(\icap_status_i_reg[8]_0 [23]),
        .R(SR));
  FDRE \icap_status_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(abort_i_cs2),
        .D(\icap_status_i_reg[8]_0 [30]),
        .Q(\icap_status_i_reg[8]_0 [22]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEEEECCCF2E2E0000)) 
    icap_we_cs_i_1
       (.I0(icap_we_cs_i_2_n_0),
        .I1(icap_nstate_cs),
        .I2(abort_i_cs_reg_0[1]),
        .I3(abort_i_cs_reg_0[0]),
        .I4(abort_i_cs_reg_0[2]),
        .I5(icap_we_cs_reg_0),
        .O(icap_we_cs_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0B0F0BF00000000)) 
    icap_we_cs_i_2
       (.I0(gate_icap_p),
        .I1(CO),
        .I2(abort_i_cs_reg_0[0]),
        .I3(rdfifo_wren_cs_i_4_n_0),
        .I4(Wrfifo_empty_r1),
        .I5(abort_i_cs_reg_0[1]),
        .O(icap_we_cs_i_2_n_0));
  (* KEEP = "yes" *) 
  FDSE icap_we_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_we_cs_i_1_n_0),
        .Q(icap_we_cs_reg_0),
        .S(SR));
  FDRE \int1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(int1[0]),
        .R(SR));
  FDRE \int1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(int1[10]),
        .R(SR));
  FDRE \int1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(int1[11]),
        .R(SR));
  FDRE \int1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(int1[12]),
        .R(SR));
  FDRE \int1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(int1[13]),
        .R(SR));
  FDRE \int1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(int1[14]),
        .R(SR));
  FDRE \int1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(int1[15]),
        .R(SR));
  FDRE \int1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(int1[16]),
        .R(SR));
  FDRE \int1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(int1[17]),
        .R(SR));
  FDRE \int1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(int1[18]),
        .R(SR));
  FDRE \int1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(int1[19]),
        .R(SR));
  FDRE \int1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(int1[1]),
        .R(SR));
  FDRE \int1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(int1[20]),
        .R(SR));
  FDRE \int1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(int1[21]),
        .R(SR));
  FDRE \int1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(int1[22]),
        .R(SR));
  FDRE \int1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(int1[23]),
        .R(SR));
  FDRE \int1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(int1[24]),
        .R(SR));
  FDRE \int1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(int1[25]),
        .R(SR));
  FDRE \int1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(int1[26]),
        .R(SR));
  FDRE \int1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(int1[27]),
        .R(SR));
  FDRE \int1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(int1[28]),
        .R(SR));
  FDRE \int1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(int1[29]),
        .R(SR));
  FDRE \int1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(int1[2]),
        .R(SR));
  FDRE \int1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(int1[30]),
        .R(SR));
  FDRE \int1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(int1[31]),
        .R(SR));
  FDRE \int1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(int1[3]),
        .R(SR));
  FDRE \int1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(int1[4]),
        .R(SR));
  FDRE \int1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(int1[5]),
        .R(SR));
  FDRE \int1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(int1[6]),
        .R(SR));
  FDRE \int1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(int1[7]),
        .R(SR));
  FDRE \int1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(int1[8]),
        .R(SR));
  FDRE \int1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(int1[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    rdfifo_wren_cs_i_1
       (.I0(abort_i_cs_reg_0[2]),
        .I1(rdfifo_wren_cs_i_2_n_0),
        .I2(gate_signal_p_reg),
        .I3(rdfifo_wren_cs_i_4_n_0),
        .I4(p_0_in2_in),
        .I5(icap_nstate_cs),
        .O(rdfifo_wren_ns));
  LUT2 #(
    .INIT(4'h8)) 
    rdfifo_wren_cs_i_2
       (.I0(abort_i_cs_reg_0[1]),
        .I1(abort_i_cs_reg_0[0]),
        .O(rdfifo_wren_cs_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rdfifo_wren_cs_i_4
       (.I0(out),
        .I1(scndry_out),
        .O(rdfifo_wren_cs_i_4_n_0));
  FDRE rdfifo_wren_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdfifo_wren_ns),
        .Q(rdfifo_wren),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4F400000)) 
    reset_cr_cs_i_1
       (.I0(abort_i_cs_reg_0[1]),
        .I1(abort_i_cs_reg_0[0]),
        .I2(icap_nstate_cs),
        .I3(reset_cr_cs_i_2_n_0),
        .I4(abort_i_cs_reg_0[2]),
        .O(reset_cr_ns));
  LUT5 #(
    .INIT(32'h1F100F0F)) 
    reset_cr_cs_i_2
       (.I0(gate_icap_p),
        .I1(CO),
        .I2(abort_i_cs_reg_0[0]),
        .I3(Wrfifo_empty_r1),
        .I4(abort_i_cs_reg_0[1]),
        .O(reset_cr_cs_i_2_n_0));
  FDRE reset_cr_cs_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_cr_ns),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \size_cs[0]_i_1 
       (.I0(\FSM_sequential_icap_nstate_cs_reg[0]_0 ),
        .I1(abort_i_cs_reg_0[2]),
        .I2(\size_cs[0]_i_4_n_0 ),
        .I3(icap_nstate_cs),
        .O(size_ns));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[0]_i_2 
       (.I0(scndry_vect_out[11]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[11]),
        .I3(\size_cs[0]_i_5_n_0 ),
        .I4(\size_cs[0]_i_6_n_0 ),
        .I5(icap_nstate_cs),
        .O(\size_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \size_cs[0]_i_4 
       (.I0(abort_i_cs_reg_0[0]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(gate_icap_p),
        .I3(CO),
        .I4(rdfifo_wren_cs_i_4_n_0),
        .I5(p_0_in2_in),
        .O(\size_cs[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \size_cs[0]_i_5 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[10]),
        .O(\size_cs[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \size_cs[0]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\size_cs[4]_i_3_n_0 ),
        .O(\size_cs[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000E22E)) 
    \size_cs[10]_i_1 
       (.I0(scndry_vect_out[1]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(icap_nstate_cs),
        .O(\size_cs[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h002E)) 
    \size_cs[11]_i_1 
       (.I0(scndry_vect_out[0]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[0]),
        .I3(icap_nstate_cs),
        .O(\size_cs[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[1]_i_1 
       (.I0(scndry_vect_out[10]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[10]),
        .I3(\size_cs[0]_i_6_n_0 ),
        .I4(\size_cs[1]_i_2_n_0 ),
        .I5(icap_nstate_cs),
        .O(\size_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \size_cs[1]_i_2 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\size_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[2]_i_1 
       (.I0(scndry_vect_out[9]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[9]),
        .I3(\size_cs[0]_i_6_n_0 ),
        .I4(Q[8]),
        .I5(icap_nstate_cs),
        .O(\size_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E22E)) 
    \size_cs[3]_i_1 
       (.I0(scndry_vect_out[8]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[8]),
        .I3(\size_cs[0]_i_6_n_0 ),
        .I4(icap_nstate_cs),
        .O(\size_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[4]_i_1 
       (.I0(scndry_vect_out[7]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[7]),
        .I3(\size_cs[4]_i_2_n_0 ),
        .I4(\size_cs[4]_i_3_n_0 ),
        .I5(icap_nstate_cs),
        .O(\size_cs[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \size_cs[4]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .O(\size_cs[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \size_cs[4]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\size_cs[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[5]_i_1 
       (.I0(scndry_vect_out[6]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[6]),
        .I3(\size_cs[4]_i_3_n_0 ),
        .I4(\size_cs[5]_i_2_n_0 ),
        .I5(icap_nstate_cs),
        .O(\size_cs[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \size_cs[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\size_cs[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[6]_i_1 
       (.I0(scndry_vect_out[5]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[5]),
        .I3(\size_cs[4]_i_3_n_0 ),
        .I4(Q[4]),
        .I5(icap_nstate_cs),
        .O(\size_cs[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E22E)) 
    \size_cs[7]_i_1 
       (.I0(scndry_vect_out[4]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[4]),
        .I3(\size_cs[4]_i_3_n_0 ),
        .I4(icap_nstate_cs),
        .O(\size_cs[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[8]_i_1 
       (.I0(scndry_vect_out[3]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[3]),
        .I3(\size_cs[8]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(icap_nstate_cs),
        .O(\size_cs[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \size_cs[8]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\size_cs[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E22E)) 
    \size_cs[9]_i_1 
       (.I0(scndry_vect_out[2]),
        .I1(abort_i_cs_reg_0[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(icap_nstate_cs),
        .O(\size_cs[9]_i_1_n_0 ));
  FDRE \size_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[0]_i_2_n_0 ),
        .Q(Q[11]),
        .R(SR));
  FDRE \size_cs_reg[10] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[10]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \size_cs_reg[11] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[11]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \size_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[1]_i_1_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE \size_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[2]_i_1_n_0 ),
        .Q(Q[9]),
        .R(SR));
  FDRE \size_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[3]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \size_cs_reg[4] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[4]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \size_cs_reg[5] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[5]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \size_cs_reg[6] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[6]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \size_cs_reg[7] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[7]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \size_cs_reg[8] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[8]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \size_cs_reg[9] 
       (.C(s_axi_aclk),
        .CE(size_ns),
        .D(\size_cs[9]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "interrupt_control" *) 
module shell_axi_hwicap_0_0_interrupt_control
   (irpt_wrack_d1,
    \ip2bus_data_i_reg[31] ,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    intr2bus_wrack,
    irpt_rdack_d1,
    ipif_glbl_irpt_enable_reg,
    ip2intc_irpt,
    Q,
    ip2bus_rdack_i0,
    intr_rst,
    irpt_wrack,
    s_axi_aclk,
    \wr_data_count_i_reg[5] ,
    \rd_dc_i_reg[6] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    sw_reset_reg,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    p_6_out,
    E,
    s_axi_wdata);
  output irpt_wrack_d1;
  output \ip2bus_data_i_reg[31] ;
  output p_1_in5_in;
  output p_1_in2_in;
  output p_1_in;
  output intr2bus_wrack;
  output irpt_rdack_d1;
  output ipif_glbl_irpt_enable_reg;
  output ip2intc_irpt;
  output [3:0]Q;
  output ip2bus_rdack_i0;
  input intr_rst;
  input irpt_wrack;
  input s_axi_aclk;
  input \wr_data_count_i_reg[5] ;
  input \rd_dc_i_reg[6] ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input sw_reset_reg;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input p_6_out;
  input [0:0]E;
  input [3:0]s_axi_wdata;

  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire [3:0]Q;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire intr_rst;
  wire \ip2bus_data_i_reg[31] ;
  wire ip2bus_rdack_i0;
  wire ip2intc_irpt;
  wire ip2intc_irpt_INST_0_i_1_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_6_out;
  wire \rd_dc_i_reg[6] ;
  wire s_axi_aclk;
  wire [3:0]s_axi_wdata;
  wire sw_reset_reg;
  wire \wr_data_count_i_reg[5] ;

  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_data_count_i_reg[5] ),
        .Q(\ip2bus_data_i_reg[31] ),
        .R(intr_rst));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_dc_i_reg[6] ),
        .Q(p_1_in5_in),
        .R(intr_rst));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .Q(p_1_in2_in),
        .R(intr_rst));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_reset_reg),
        .Q(p_1_in),
        .R(intr_rst));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(intr2bus_rdack),
        .R(intr_rst));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr2bus_wrack),
        .R(intr_rst));
  LUT2 #(
    .INIT(4'hE)) 
    ip2bus_rdack_i_i_1
       (.I0(intr2bus_rdack),
        .I1(p_6_out),
        .O(ip2bus_rdack_i0));
  LUT6 #(
    .INIT(64'hFFAAEAAAEAAAEAAA)) 
    ip2intc_irpt_INST_0
       (.I0(ip2intc_irpt_INST_0_i_1_n_0),
        .I1(p_1_in2_in),
        .I2(Q[2]),
        .I3(ipif_glbl_irpt_enable_reg),
        .I4(Q[3]),
        .I5(p_1_in),
        .O(ip2intc_irpt));
  LUT5 #(
    .INIT(32'hF0808080)) 
    ip2intc_irpt_INST_0_i_1
       (.I0(Q[1]),
        .I1(p_1_in5_in),
        .I2(ipif_glbl_irpt_enable_reg),
        .I3(Q[0]),
        .I4(\ip2bus_data_i_reg[31] ),
        .O(ip2intc_irpt_INST_0_i_1_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(intr_rst));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(intr_rst));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(intr_rst));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(intr_rst));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(intr_rst));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(intr_rst));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(intr_rst));
endmodule

(* ORIG_REF_NAME = "ipic_if" *) 
module shell_axi_hwicap_0_0_ipic_if
   (D,
    out,
    p_5_out_0,
    SR,
    fifo_rst_reg_0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    \grstd1.grst_full.grst_f.rst_d1_reg ,
    ipbus_ack_fifo,
    ipbus_ack,
    p_6_out,
    p_5_out,
    gate_icap_p,
    Send_done_cs_reg,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \gic0.gc1.count_reg[0] ,
    IP2Bus_WrAck_reg_0,
    rdfifo_wren_cs_reg,
    \FSM_sequential_icap_nstate_cs_reg[0] ,
    scndry_out,
    \FSM_sequential_icap_nstate_cs_reg[2] ,
    \size_cs_reg[11] ,
    Send_done_cs_reg_0,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \FSM_sequential_icap_nstate_cs_reg[1] ,
    \FSM_sequential_icap_nstate_cs_reg[2]_0 ,
    scndry_vect_out,
    \IP2Bus_Data_reg[0]_0 ,
    \IP2Bus_Data_reg[31]_0 ,
    \IP2Bus_Data_reg[30]_0 ,
    \IP2Bus_Data_reg[29]_0 ,
    \IP2Bus_Data_reg[20]_0 ,
    \ip2bus_data_i_reg[0] ,
    s_axi_aclk,
    s_axi_wdata,
    Q,
    p_10_in,
    IP2Bus_RdAck0,
    p_11_in,
    IP2Bus_WrAck0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    wrfifo_rden,
    Bus_RNW_reg_reg,
    p_1_in,
    p_1_in2_in,
    p_1_in5_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    Bus_RNW_reg,
    rdfifo_wren,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    CO,
    \FSM_sequential_icap_nstate_cs_reg[2]_1 ,
    prmry_in,
    reset_cr_cs_reg,
    hang_status_cs_reg,
    icap_ce_cs_reg,
    \size_cs_reg[0] ,
    E,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    abort_cs2_reg,
    \icap_status_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] );
  output [31:0]D;
  output out;
  output [31:0]p_5_out_0;
  output [0:0]SR;
  output [0:0]fifo_rst_reg_0;
  output [4:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output \grstd1.grst_full.grst_f.rst_d1_reg ;
  output ipbus_ack_fifo;
  output ipbus_ack;
  output p_6_out;
  output p_5_out;
  output gate_icap_p;
  output Send_done_cs_reg;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output \gic0.gc1.count_reg[0] ;
  output IP2Bus_WrAck_reg_0;
  output rdfifo_wren_cs_reg;
  output \FSM_sequential_icap_nstate_cs_reg[0] ;
  output scndry_out;
  output \FSM_sequential_icap_nstate_cs_reg[2] ;
  output \size_cs_reg[11] ;
  output Send_done_cs_reg_0;
  output \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  output \FSM_sequential_icap_nstate_cs_reg[1] ;
  output \FSM_sequential_icap_nstate_cs_reg[2]_0 ;
  output [11:0]scndry_vect_out;
  output [31:0]\IP2Bus_Data_reg[0]_0 ;
  output \IP2Bus_Data_reg[31]_0 ;
  output \IP2Bus_Data_reg[30]_0 ;
  output \IP2Bus_Data_reg[29]_0 ;
  output [11:0]\IP2Bus_Data_reg[20]_0 ;
  output [31:0]\ip2bus_data_i_reg[0] ;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input [31:0]Q;
  input p_10_in;
  input IP2Bus_RdAck0;
  input p_11_in;
  input IP2Bus_WrAck0;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input wrfifo_rden;
  input Bus_RNW_reg_reg;
  input p_1_in;
  input p_1_in2_in;
  input p_1_in5_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input Bus_RNW_reg;
  input rdfifo_wren;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input [0:0]CO;
  input [2:0]\FSM_sequential_icap_nstate_cs_reg[2]_1 ;
  input prmry_in;
  input reset_cr_cs_reg;
  input hang_status_cs_reg;
  input icap_ce_cs_reg;
  input [11:0]\size_cs_reg[0] ;
  input [0:0]E;
  input [31:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [0:0]abort_cs2_reg;
  input [31:0]\icap_status_i_reg[0] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [0:0]CO;
  wire [31:0]D;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [31:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire \FSM_sequential_icap_nstate_cs_reg[0] ;
  wire \FSM_sequential_icap_nstate_cs_reg[1] ;
  wire \FSM_sequential_icap_nstate_cs_reg[2] ;
  wire \FSM_sequential_icap_nstate_cs_reg[2]_0 ;
  wire [2:0]\FSM_sequential_icap_nstate_cs_reg[2]_1 ;
  wire [4:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire [31:0]\IP2Bus_Data_reg[0]_0 ;
  wire [11:0]\IP2Bus_Data_reg[20]_0 ;
  wire \IP2Bus_Data_reg[29]_0 ;
  wire \IP2Bus_Data_reg[30]_0 ;
  wire \IP2Bus_Data_reg[31]_0 ;
  wire IP2Bus_RdAck0;
  wire IP2Bus_WrAck0;
  wire IP2Bus_WrAck_reg_0;
  wire [31:0]Q;
  wire \RD_FIFO.RDDATA_FIFO_I_n_41 ;
  wire \RD_FIFO.RDDATA_FIFO_I_n_42 ;
  wire \RD_FIFO.RDFULL_SYNCH_n_0 ;
  wire [0:0]SR;
  wire Send_done_cs_reg;
  wire Send_done_cs_reg_0;
  wire [0:11]Size_counter_i2;
  wire [0:0]abort_cs2_reg;
  wire abort_onreset;
  wire abort_onreset0;
  wire busip_1;
  wire cr_i0;
  wire fifo_clear;
  wire fifo_full_mask;
  wire fifo_rst;
  wire [0:0]fifo_rst_reg_0;
  wire gate_icap_p;
  wire \gic0.gc1.count_reg[0] ;
  wire \grstd1.grst_full.grst_f.rst_d1_reg ;
  wire hang_status_cs_reg;
  wire icap_ce_cs_reg;
  wire [31:0]\icap_status_i_reg[0] ;
  wire [31:0]\ip2bus_data_i_reg[0] ;
  wire ipbus_1;
  wire ipbus_2;
  wire ipbus_ack;
  wire ipbus_ack_fifo;
  wire out;
  wire p_10_in;
  wire p_11_in;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_5_out;
  wire [31:0]p_5_out_0;
  wire p_6_out;
  wire p_7_in;
  wire p_8_in;
  wire prmry_in;
  wire rdfifo_full_d1;
  wire rdfifo_full_ip2bus;
  wire rdfifo_wren;
  wire rdfifo_wren_cs_reg;
  wire reset_cr_cs_reg;
  wire [0:1]rnc;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_wdata;
  wire scndry_out;
  wire [11:0]scndry_vect_out;
  wire [11:0]\size_cs_reg[0] ;
  wire \size_cs_reg[11] ;
  wire [0:31]sr_i;
  wire [0:11]sz_i;
  wire wrfifo_rden;

  shell_axi_hwicap_0_0_cdc_sync BUS2ICAP_SIZE_REGISTER_PROCESS
       (.Q({sz_i[0],sz_i[1],sz_i[2],sz_i[3],sz_i[4],sz_i[5],sz_i[6],sz_i[7],sz_i[8],sz_i[9],sz_i[10],sz_i[11]}),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out(scndry_vect_out));
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0 
       (.I0(s_axi_aresetn),
        .O(fifo_rst_reg_0));
  LUT6 #(
    .INIT(64'hFF40FFFF40FF4040)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(SR),
        .I1(rdfifo_full_d1),
        .I2(fifo_full_mask),
        .I3(Bus_RNW_reg_reg),
        .I4(s_axi_wdata[3]),
        .I5(p_1_in),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ));
  shell_axi_hwicap_0_0_cdc_sync__parameterized0 ICAP2BUS_STATUS_REGISTER_PROCESS
       (.\IP2Bus_Data_reg[0] (\IP2Bus_Data_reg[0]_0 ),
        .Q({sr_i[0],sr_i[1],sr_i[2],sr_i[3],sr_i[4],sr_i[5],sr_i[6],sr_i[7],sr_i[8],sr_i[9],sr_i[10],sr_i[11],sr_i[12],sr_i[13],sr_i[14],sr_i[15],sr_i[16],sr_i[17],sr_i[18],sr_i[19],sr_i[20],sr_i[21],sr_i[22],sr_i[23],sr_i[24],sr_i[25],sr_i[26],sr_i[27],sr_i[28],sr_i[29],sr_i[30],sr_i[31]}),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_cdc_sync__parameterized6 ICAP2PLB_SYNCH1
       (.\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31]_0 ),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_cdc_sync__parameterized7 ICAP2PLB_SYNCH2
       (.SR(cr_i0),
        .abort_onreset0(abort_onreset0),
        .\cr_i_reg[0] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [4]),
        .reset_cr_cs_reg(reset_cr_cs_reg),
        .s_axi_aclk(s_axi_aclk),
        .sw_reset_reg(SR));
  shell_axi_hwicap_0_0_cdc_sync__parameterized8 ICAP2PLB_SYNCH3
       (.\IP2Bus_Data_reg[30] (\IP2Bus_Data_reg[30]_0 ),
        .hang_status_cs_reg(hang_status_cs_reg),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_cdc_sync__parameterized9 ICAP2PLB_SYNCH4
       (.\IP2Bus_Data_reg[29] (\IP2Bus_Data_reg[29]_0 ),
        .icap_ce_cs_reg(icap_ce_cs_reg),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_cdc_sync_0 ICAP2PLB_SYNCH5
       (.s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({Size_counter_i2[0],Size_counter_i2[1],Size_counter_i2[2],Size_counter_i2[3],Size_counter_i2[4],Size_counter_i2[5],Size_counter_i2[6],Size_counter_i2[7],Size_counter_i2[8],Size_counter_i2[9],Size_counter_i2[10],Size_counter_i2[11]}),
        .\size_cs_reg[0] (\size_cs_reg[0] ));
  FDRE \IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [31]),
        .Q(\ip2bus_data_i_reg[0] [31]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [21]),
        .Q(\ip2bus_data_i_reg[0] [21]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [20]),
        .Q(\ip2bus_data_i_reg[0] [20]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [19]),
        .Q(\ip2bus_data_i_reg[0] [19]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [18]),
        .Q(\ip2bus_data_i_reg[0] [18]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [17]),
        .Q(\ip2bus_data_i_reg[0] [17]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [16]),
        .Q(\ip2bus_data_i_reg[0] [16]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [15]),
        .Q(\ip2bus_data_i_reg[0] [15]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [14]),
        .Q(\ip2bus_data_i_reg[0] [14]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [13]),
        .Q(\ip2bus_data_i_reg[0] [13]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [12]),
        .Q(\ip2bus_data_i_reg[0] [12]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [30]),
        .Q(\ip2bus_data_i_reg[0] [30]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [11]),
        .Q(\ip2bus_data_i_reg[0] [11]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [10]),
        .Q(\ip2bus_data_i_reg[0] [10]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [9]),
        .Q(\ip2bus_data_i_reg[0] [9]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [8]),
        .Q(\ip2bus_data_i_reg[0] [8]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [7]),
        .Q(\ip2bus_data_i_reg[0] [7]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [6]),
        .Q(\ip2bus_data_i_reg[0] [6]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [5]),
        .Q(\ip2bus_data_i_reg[0] [5]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [4]),
        .Q(\ip2bus_data_i_reg[0] [4]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [3]),
        .Q(\ip2bus_data_i_reg[0] [3]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [2]),
        .Q(\ip2bus_data_i_reg[0] [2]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [29]),
        .Q(\ip2bus_data_i_reg[0] [29]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [1]),
        .Q(\ip2bus_data_i_reg[0] [1]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [0]),
        .Q(\ip2bus_data_i_reg[0] [0]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [28]),
        .Q(\ip2bus_data_i_reg[0] [28]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [27]),
        .Q(\ip2bus_data_i_reg[0] [27]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [26]),
        .Q(\ip2bus_data_i_reg[0] [26]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [25]),
        .Q(\ip2bus_data_i_reg[0] [25]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [24]),
        .Q(\ip2bus_data_i_reg[0] [24]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [23]),
        .Q(\ip2bus_data_i_reg[0] [23]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [22]),
        .Q(\ip2bus_data_i_reg[0] [22]),
        .R(SR));
  FDRE IP2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck0),
        .Q(p_6_out),
        .R(SR));
  FDRE IP2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_WrAck0),
        .Q(p_5_out),
        .R(SR));
  shell_axi_hwicap_0_0_cdc_sync__parameterized3 PLB2ICAP_SYNCH1
       (.\FSM_sequential_icap_nstate_cs_reg[1] (\FSM_sequential_icap_nstate_cs_reg[2]_1 [1:0]),
        .\cr_i_reg[0] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [4]),
        .gate_signal_p_reg(gate_icap_p),
        .rnc(rnc),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .\size_cs_reg[11] (\size_cs_reg[11] ));
  shell_axi_hwicap_0_0_cdc_sync__parameterized4 PLB2ICAP_SYNCH2
       (.\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\FSM_sequential_icap_nstate_cs_reg[1] (\FSM_sequential_icap_nstate_cs_reg[1] ),
        .\FSM_sequential_icap_nstate_cs_reg[1]_0 (\FSM_sequential_icap_nstate_cs_reg[2]_1 [1:0]),
        .\FSM_sequential_icap_nstate_cs_reg[2] (\FSM_sequential_icap_nstate_cs_reg[2]_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (rnc[1]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 (scndry_out),
        .Send_done_cs_reg(Send_done_cs_reg),
        .\cr_i_reg[3] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [1]),
        .gate_signal_p_reg(gate_icap_p),
        .prmry_in(out),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(rnc[0]));
  shell_axi_hwicap_0_0_cdc_sync__parameterized5 PLB2ICAP_SYNCH3
       (.\FSM_sequential_icap_nstate_cs_reg[0] (\FSM_sequential_icap_nstate_cs_reg[0] ),
        .\FSM_sequential_icap_nstate_cs_reg[2] (\FSM_sequential_icap_nstate_cs_reg[2] ),
        .\FSM_sequential_icap_nstate_cs_reg[2]_0 (\FSM_sequential_icap_nstate_cs_reg[2]_1 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (rnc[0]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 (scndry_out),
        .Send_done_cs_reg(Send_done_cs_reg_0),
        .\cr_i_reg[4] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [0]),
        .gate_signal_p_reg(gate_icap_p),
        .prmry_in(out),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(rnc[1]));
  shell_axi_hwicap_0_0_async_fifo_fg__parameterized0 \RD_FIFO.RDDATA_FIFO_I 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .Q(Q),
        .abort_onreset(abort_onreset),
        .fifo_clear(fifo_clear),
        .fifo_rst(fifo_rst),
        .gate_signal_p_reg(\RD_FIFO.RDDATA_FIFO_I_n_42 ),
        .gate_signal_p_reg_0(gate_icap_p),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out_0(p_5_out_0),
        .p_7_in(p_7_in),
        .prmry_in(\RD_FIFO.RDDATA_FIFO_I_n_41 ),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1]),
        .sw_reset_reg(SR));
  shell_axi_hwicap_0_0_cdc_sync__parameterized2 \RD_FIFO.RDFULL_SYNCH 
       (.\RD_FIFO.fifo_full_mask_reg (\RD_FIFO.RDFULL_SYNCH_n_0 ),
        .abort_onreset(abort_onreset),
        .fifo_full_mask(fifo_full_mask),
        .fifo_rst(fifo_rst),
        .prmry_in(\RD_FIFO.RDDATA_FIFO_I_n_41 ),
        .rdfifo_full_d1(rdfifo_full_d1),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(rdfifo_full_ip2bus),
        .sw_reset_reg(SR));
  FDRE \RD_FIFO.fifo_full_mask_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RD_FIFO.RDFULL_SYNCH_n_0 ),
        .Q(fifo_full_mask),
        .R(1'b0));
  FDRE \RD_FIFO.rdfifo_full_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdfifo_full_ip2bus),
        .Q(rdfifo_full_d1),
        .R(1'b0));
  FDRE \Size_counter_i3_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[0]),
        .Q(\IP2Bus_Data_reg[20]_0 [11]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[10]),
        .Q(\IP2Bus_Data_reg[20]_0 [1]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[11]),
        .Q(\IP2Bus_Data_reg[20]_0 [0]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[1]),
        .Q(\IP2Bus_Data_reg[20]_0 [10]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[2]),
        .Q(\IP2Bus_Data_reg[20]_0 [9]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[3]),
        .Q(\IP2Bus_Data_reg[20]_0 [8]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[4]),
        .Q(\IP2Bus_Data_reg[20]_0 [7]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[5]),
        .Q(\IP2Bus_Data_reg[20]_0 [6]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[6]),
        .Q(\IP2Bus_Data_reg[20]_0 [5]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[7]),
        .Q(\IP2Bus_Data_reg[20]_0 [4]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[8]),
        .Q(\IP2Bus_Data_reg[20]_0 [3]),
        .R(fifo_rst_reg_0));
  FDRE \Size_counter_i3_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Size_counter_i2[9]),
        .Q(\IP2Bus_Data_reg[20]_0 [2]),
        .R(fifo_rst_reg_0));
  shell_axi_hwicap_0_0_async_fifo_fg \WRFIFO.WRDATA_FIFO_I 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg_0),
        .busip_1(busip_1),
        .fifo_clear(fifo_clear),
        .\gic0.gc1.count_reg[0] (\gic0.gc1.count_reg[0] ),
        .\grstd1.grst_full.grst_f.rst_d1_reg (\grstd1.grst_full.grst_f.rst_d1_reg ),
        .p_8_in(p_8_in),
        .prmry_in(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(SR),
        .wrfifo_rden(wrfifo_rden));
  shell_axi_hwicap_0_0_cdc_sync__parameterized1 \WRFIFO.WREMPTY_SYNCH 
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .p_1_in2_in(p_1_in2_in),
        .prmry_in(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[2]),
        .sw_reset_reg(SR));
  FDSE abort_onreset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(abort_onreset0),
        .Q(abort_onreset),
        .S(fifo_rst_reg_0));
  FDRE busip_1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_11_in),
        .Q(busip_1),
        .R(1'b0));
  FDRE \cr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [4]),
        .R(cr_i0));
  FDRE \cr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [3]),
        .R(cr_i0));
  FDRE \cr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [2]),
        .R(cr_i0));
  FDRE \cr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [1]),
        .R(cr_i0));
  FDRE \cr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [0]),
        .R(cr_i0));
  FDSE fifo_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [2]),
        .Q(fifo_rst),
        .S(fifo_rst_reg_0));
  FDRE gate_signal_p_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RD_FIFO.RDDATA_FIFO_I_n_42 ),
        .Q(gate_icap_p),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE ipbus_1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_10_in),
        .Q(ipbus_1),
        .R(1'b0));
  FDRE ipbus_2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipbus_1),
        .Q(ipbus_2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    ipbus_ack_fifo_i_1
       (.I0(ipbus_1),
        .I1(ipbus_2),
        .O(ipbus_ack));
  FDRE ipbus_ack_fifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipbus_ack),
        .Q(ipbus_ack_fifo),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    rdfifo_wren_cs_i_3
       (.I0(gate_icap_p),
        .I1(CO),
        .O(rdfifo_wren_cs_reg));
  FDRE \sr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [31]),
        .Q(sr_i[0]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [21]),
        .Q(sr_i[10]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [20]),
        .Q(sr_i[11]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [19]),
        .Q(sr_i[12]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [18]),
        .Q(sr_i[13]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [17]),
        .Q(sr_i[14]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [16]),
        .Q(sr_i[15]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [15]),
        .Q(sr_i[16]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [14]),
        .Q(sr_i[17]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [13]),
        .Q(sr_i[18]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [12]),
        .Q(sr_i[19]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [30]),
        .Q(sr_i[1]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [11]),
        .Q(sr_i[20]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [10]),
        .Q(sr_i[21]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [9]),
        .Q(sr_i[22]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [8]),
        .Q(sr_i[23]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [7]),
        .Q(sr_i[24]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [6]),
        .Q(sr_i[25]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [5]),
        .Q(sr_i[26]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [4]),
        .Q(sr_i[27]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [3]),
        .Q(sr_i[28]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [2]),
        .Q(sr_i[29]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [29]),
        .Q(sr_i[2]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [1]),
        .Q(sr_i[30]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [0]),
        .Q(sr_i[31]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [28]),
        .Q(sr_i[3]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [27]),
        .Q(sr_i[4]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [26]),
        .Q(sr_i[5]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [25]),
        .Q(sr_i[6]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [24]),
        .Q(sr_i[7]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [23]),
        .Q(sr_i[8]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \sr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(abort_cs2_reg),
        .D(\icap_status_i_reg[0] [22]),
        .Q(sr_i[9]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDSE sw_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [3]),
        .Q(SR),
        .S(fifo_rst_reg_0));
  FDRE \sz_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[11]),
        .Q(sz_i[0]),
        .R(SR));
  FDRE \sz_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[1]),
        .Q(sz_i[10]),
        .R(SR));
  FDRE \sz_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[0]),
        .Q(sz_i[11]),
        .R(SR));
  FDRE \sz_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[10]),
        .Q(sz_i[1]),
        .R(SR));
  FDRE \sz_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[9]),
        .Q(sz_i[2]),
        .R(SR));
  FDRE \sz_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[8]),
        .Q(sz_i[3]),
        .R(SR));
  FDRE \sz_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[7]),
        .Q(sz_i[4]),
        .R(SR));
  FDRE \sz_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[6]),
        .Q(sz_i[5]),
        .R(SR));
  FDRE \sz_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[5]),
        .Q(sz_i[6]),
        .R(SR));
  FDRE \sz_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[4]),
        .Q(sz_i[7]),
        .R(SR));
  FDRE \sz_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[3]),
        .Q(sz_i[8]),
        .R(SR));
  FDRE \sz_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ),
        .D(s_axi_wdata[2]),
        .Q(sz_i[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module shell_axi_hwicap_0_0_slave_attachment
   (busip_1_reg,
    IP2Bus_WrAck_reg,
    ip2bus_wrack_i_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_wready,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    intr2bus_rdack0,
    irpt_rdack,
    irpt_wrack,
    ip2bus_rdack_i_reg,
    IP2Bus_WrAck0,
    p_11_in,
    IP2Bus_RdAck0,
    p_10_in,
    D,
    \IP2Bus_Data_reg[31] ,
    \ip2bus_data_i_reg[0] ,
    ip2bus_wrack_i_reg_0,
    ipif_glbl_irpt_enable_reg_reg,
    E,
    \sz_i_reg[0] ,
    \ip_irpt_enable_reg_reg[3] ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_aresetn,
    ip2bus_rdack_i,
    ip2bus_wrack_i,
    s_axi_bready,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wvalid,
    s_axi_awvalid,
    irpt_wrack_d1,
    irpt_rdack_d1,
    busip_1_reg_0,
    ram_full_i_reg,
    wr_rst_busy_i2_out,
    ipbus_ack,
    ipbus_ack_fifo,
    p_5_out_0,
    \Size_counter_i3_reg[0] ,
    scndry_vect_out,
    \wr_data_count_i_reg[5] ,
    \rd_dc_i_reg[6] ,
    Q,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \IP2Bus_Data_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[3]_0 ,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    ipif_glbl_irpt_enable_reg,
    intr2bus_wrack,
    p_5_out,
    s_axi_wdata,
    \ip2bus_data_i_reg[0]_0 );
  output busip_1_reg;
  output IP2Bus_WrAck_reg;
  output ip2bus_wrack_i_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_wready;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output intr2bus_rdack0;
  output irpt_rdack;
  output irpt_wrack;
  output [0:0]ip2bus_rdack_i_reg;
  output IP2Bus_WrAck0;
  output p_11_in;
  output IP2Bus_RdAck0;
  output p_10_in;
  output [31:0]D;
  output \IP2Bus_Data_reg[31] ;
  output [4:0]\ip2bus_data_i_reg[0] ;
  output ip2bus_wrack_i_reg_0;
  output ipif_glbl_irpt_enable_reg_reg;
  output [0:0]E;
  output [0:0]\sz_i_reg[0] ;
  output [0:0]\ip_irpt_enable_reg_reg[3] ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input ip2bus_rdack_i;
  input ip2bus_wrack_i;
  input s_axi_bready;
  input s_axi_rready;
  input [6:0]s_axi_awaddr;
  input [6:0]s_axi_araddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input busip_1_reg_0;
  input ram_full_i_reg;
  input wr_rst_busy_i2_out;
  input ipbus_ack;
  input ipbus_ack_fifo;
  input [31:0]p_5_out_0;
  input [11:0]\Size_counter_i3_reg[0] ;
  input [31:0]scndry_vect_out;
  input [5:0]\wr_data_count_i_reg[5] ;
  input [6:0]\rd_dc_i_reg[6] ;
  input [4:0]Q;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input [4:0]\IP2Bus_Data_reg[0] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [3:0]\ip_irpt_enable_reg_reg[3]_0 ;
  input p_1_in5_in;
  input p_1_in2_in;
  input p_1_in;
  input ipif_glbl_irpt_enable_reg;
  input intr2bus_wrack;
  input p_5_out;
  input [0:0]s_axi_wdata;
  input [31:0]\ip2bus_data_i_reg[0]_0 ;

  wire [31:0]D;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire [4:0]\IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[31] ;
  wire IP2Bus_RdAck0;
  wire IP2Bus_WrAck0;
  wire IP2Bus_WrAck_reg;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [11:0]\Size_counter_i3_reg[0] ;
  wire [0:6]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire bus2ip_rnw_i;
  wire bus2ip_rnw_i06_out;
  wire busip_1_reg;
  wire busip_1_reg_0;
  wire clear;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire [4:0]\ip2bus_data_i_reg[0] ;
  wire [31:0]\ip2bus_data_i_reg[0]_0 ;
  wire ip2bus_rdack_i;
  wire [0:0]ip2bus_rdack_i_reg;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_reg;
  wire ip2bus_wrack_i_reg_0;
  wire [0:0]\ip_irpt_enable_reg_reg[3] ;
  wire [3:0]\ip_irpt_enable_reg_reg[3]_0 ;
  wire ipbus_ack;
  wire ipbus_ack_fifo;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read;
  wire is_read_i_2_n_0;
  wire is_write;
  wire is_write_i_1_n_0;
  wire is_write_reg_n_0;
  wire p_10_in;
  wire p_11_in;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_5_out;
  wire [31:0]p_5_out_0;
  wire [4:0]plusOp;
  wire ram_full_i_reg;
  wire [6:0]\rd_dc_i_reg[6] ;
  wire rst;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [0:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scndry_out;
  wire [31:0]scndry_vect_out;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire [0:0]\sz_i_reg[0] ;
  wire [5:0]\wr_data_count_i_reg[5] ;
  wire wr_rst_busy_i2_out;

  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .R(clear));
  shell_axi_hwicap_0_0_address_decoder I_DECODER
       (.D(D),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\IP2Bus_Data_reg[0] (\IP2Bus_Data_reg[0] ),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .IP2Bus_RdAck0(IP2Bus_RdAck0),
        .IP2Bus_WrAck0(IP2Bus_WrAck0),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .\Size_counter_i3_reg[0] (\Size_counter_i3_reg[0] ),
        .\bus2ip_addr_i_reg[8] ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2],bus2ip_addr[3],bus2ip_addr[4],bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .busip_1_reg(busip_1_reg),
        .busip_1_reg_0(busip_1_reg_0),
        .\cr_i_reg[0] (Q),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack(intr2bus_wrack),
        .\ip2bus_data_i_reg[0] (\ip2bus_data_i_reg[0] ),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_rdack_i_reg(ip2bus_rdack_i_reg),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .ip2bus_wrack_i_reg(ip2bus_wrack_i_reg),
        .ip2bus_wrack_i_reg_0(ip2bus_wrack_i_reg_0),
        .\ip_irpt_enable_reg_reg[3] (\ip_irpt_enable_reg_reg[3] ),
        .\ip_irpt_enable_reg_reg[3]_0 (\ip_irpt_enable_reg_reg[3]_0 ),
        .ipbus_ack(ipbus_ack),
        .ipbus_ack_fifo(ipbus_ack_fifo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .is_read(is_read),
        .is_write_reg(is_write_reg_n_0),
        .p_10_in(p_10_in),
        .p_11_in(p_11_in),
        .p_1_in(p_1_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out(p_5_out),
        .p_5_out_0(p_5_out_0),
        .ram_full_i_reg(ram_full_i_reg),
        .\rd_dc_i_reg[6] (\rd_dc_i_reg[6] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .scndry_out(scndry_out),
        .scndry_vect_out(scndry_vect_out),
        .start2(start2),
        .\sz_i_reg[0] (\sz_i_reg[0] ),
        .\wr_data_count_i_reg[5] (\wr_data_count_i_reg[5] ),
        .wr_rst_busy_i2_out(wr_rst_busy_i2_out));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[4]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[5]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[6]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(bus2ip_addr[6]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(bus2ip_addr[5]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(bus2ip_addr[4]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(bus2ip_addr[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(bus2ip_addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(bus2ip_addr[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[8]_i_1_n_0 ),
        .Q(bus2ip_addr[0]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(state[0]),
        .I2(state[1]),
        .O(bus2ip_rnw_i06_out));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(start2_i_1_n_0),
        .D(bus2ip_rnw_i06_out),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT6 #(
    .INIT(64'hF88800000000FFFF)) 
    is_read_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .I4(state[1]),
        .I5(state[0]),
        .O(is_write));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    is_read_i_2
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .O(is_read_i_2_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(is_write),
        .D(is_read_i_2_n_0),
        .Q(is_read),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    is_write_i_1
       (.I0(state[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(is_write_i_1_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(is_write),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_wready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [25]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [26]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [27]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [28]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [29]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [30]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [31]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\ip2bus_data_i_reg[0]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_arready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(rst));
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'h0FFFAACC)) 
    \state[0]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_arvalid),
        .I2(\state[1]_i_2_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E2E2E2ECCCCFFCC)) 
    \state[1]_i_1 
       (.I0(s_axi_arready),
        .I1(state[1]),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state[1]_i_3_n_0 ),
        .I4(s_axi_arvalid),
        .I5(state[0]),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr
   (D,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    Q,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_wdata);
  output [31:0]D;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [5:0]Q;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D),
        .E(E),
        .Q(Q),
        .\gic0.gc1.count_d3_reg[5] (\gic0.gc1.count_d3_reg[5] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr__parameterized0
   (p_5_out_0,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    \gc1.count_d2_reg[6] ,
    Q,
    \icap_dataout_i_reg[0] );
  output [31:0]p_5_out_0;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]Q;
  input [31:0]\icap_dataout_i_reg[0] ;

  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [31:0]\icap_dataout_i_reg[0] ;
  wire out;
  wire [31:0]p_5_out_0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_prim_width__parameterized0 \ramloop[0].ram.r 
       (.E(E),
        .Q(Q),
        .\gc1.count_d2_reg[6] (\gc1.count_d2_reg[6] ),
        .\icap_dataout_i_reg[0] (\icap_dataout_i_reg[0] ),
        .out(out),
        .p_5_out_0(p_5_out_0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_prim_width
   (D,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    Q,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_wdata);
  output [31:0]D;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [5:0]Q;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .E(E),
        .Q(Q),
        .\gic0.gc1.count_d3_reg[5] (\gic0.gc1.count_d3_reg[5] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_prim_width__parameterized0
   (p_5_out_0,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    \gc1.count_d2_reg[6] ,
    Q,
    \icap_dataout_i_reg[0] );
  output [31:0]p_5_out_0;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]Q;
  input [31:0]\icap_dataout_i_reg[0] ;

  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [31:0]\icap_dataout_i_reg[0] ;
  wire out;
  wire [31:0]p_5_out_0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.E(E),
        .Q(Q),
        .\gc1.count_d2_reg[6] (\gc1.count_d2_reg[6] ),
        .\icap_dataout_i_reg[0] (\icap_dataout_i_reg[0] ),
        .out(out),
        .p_5_out_0(p_5_out_0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper
   (D,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    Q,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_wdata);
  output [31:0]D;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [5:0]Q;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71 ;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
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
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,\gic0.gc1.count_d3_reg[5] ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DINADIN(s_axi_wdata[15:0]),
        .DINBDIN(s_axi_wdata[31:16]),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(D[15:0]),
        .DOUTBDOUT(D[31:16]),
        .DOUTPADOUTP({\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68 ,\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69 }),
        .DOUTPBDOUTP({\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70 ,\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71 }),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(E),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(out),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({E,E,E,E}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_prim_wrapper__parameterized0
   (p_5_out_0,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    \gc1.count_d2_reg[6] ,
    Q,
    \icap_dataout_i_reg[0] );
  output [31:0]p_5_out_0;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]Q;
  input [31:0]\icap_dataout_i_reg[0] ;

  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71 ;
  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [31:0]\icap_dataout_i_reg[0] ;
  wire out;
  wire [31:0]p_5_out_0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
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
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,\gc1.count_d2_reg[6] ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DINADIN({\icap_dataout_i_reg[0] [8],\icap_dataout_i_reg[0] [9],\icap_dataout_i_reg[0] [10],\icap_dataout_i_reg[0] [11],\icap_dataout_i_reg[0] [12],\icap_dataout_i_reg[0] [13],\icap_dataout_i_reg[0] [14],\icap_dataout_i_reg[0] [15],\icap_dataout_i_reg[0] [0],\icap_dataout_i_reg[0] [1],\icap_dataout_i_reg[0] [2],\icap_dataout_i_reg[0] [3],\icap_dataout_i_reg[0] [4],\icap_dataout_i_reg[0] [5],\icap_dataout_i_reg[0] [6],\icap_dataout_i_reg[0] [7]}),
        .DINBDIN({\icap_dataout_i_reg[0] [24],\icap_dataout_i_reg[0] [25],\icap_dataout_i_reg[0] [26],\icap_dataout_i_reg[0] [27],\icap_dataout_i_reg[0] [28],\icap_dataout_i_reg[0] [29],\icap_dataout_i_reg[0] [30],\icap_dataout_i_reg[0] [31],\icap_dataout_i_reg[0] [16],\icap_dataout_i_reg[0] [17],\icap_dataout_i_reg[0] [18],\icap_dataout_i_reg[0] [19],\icap_dataout_i_reg[0] [20],\icap_dataout_i_reg[0] [21],\icap_dataout_i_reg[0] [22],\icap_dataout_i_reg[0] [23]}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(p_5_out_0[15:0]),
        .DOUTBDOUT(p_5_out_0[31:16]),
        .DOUTPADOUTP({\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_68 ,\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_69 }),
        .DOUTPBDOUTP({\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_70 ,\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_71 }),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(E),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(out),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({E,E,E,E}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_top
   (D,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    Q,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_wdata);
  output [31:0]D;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [5:0]Q;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .E(E),
        .Q(Q),
        .\gic0.gc1.count_d3_reg[5] (\gic0.gc1.count_d3_reg[5] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_top__parameterized0
   (p_5_out_0,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    \gc1.count_d2_reg[6] ,
    Q,
    \icap_dataout_i_reg[0] );
  output [31:0]p_5_out_0;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]Q;
  input [31:0]\icap_dataout_i_reg[0] ;

  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [31:0]\icap_dataout_i_reg[0] ;
  wire out;
  wire [31:0]p_5_out_0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_generic_cstr__parameterized0 \valid.cstr 
       (.E(E),
        .Q(Q),
        .\gc1.count_d2_reg[6] (\gc1.count_d2_reg[6] ),
        .\icap_dataout_i_reg[0] (\icap_dataout_i_reg[0] ),
        .out(out),
        .p_5_out_0(p_5_out_0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_5" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5
   (D,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    Q,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_wdata);
  output [31:0]D;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [5:0]Q;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth inst_blk_mem_gen
       (.D(D),
        .E(E),
        .Q(Q),
        .\gic0.gc1.count_d3_reg[5] (\gic0.gc1.count_d3_reg[5] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_5" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5__parameterized1
   (p_5_out_0,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    \gc1.count_d2_reg[6] ,
    Q,
    \icap_dataout_i_reg[0] );
  output [31:0]p_5_out_0;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]Q;
  input [31:0]\icap_dataout_i_reg[0] ;

  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [31:0]\icap_dataout_i_reg[0] ;
  wire out;
  wire [31:0]p_5_out_0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth__parameterized0 inst_blk_mem_gen
       (.E(E),
        .Q(Q),
        .\gc1.count_d2_reg[6] (\gc1.count_d2_reg[6] ),
        .\icap_dataout_i_reg[0] (\icap_dataout_i_reg[0] ),
        .out(out),
        .p_5_out_0(p_5_out_0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_5_synth" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth
   (D,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    Q,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_wdata);
  output [31:0]D;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [5:0]Q;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.D(D),
        .E(E),
        .Q(Q),
        .\gic0.gc1.count_d3_reg[5] (\gic0.gc1.count_d3_reg[5] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_5_synth" *) 
module shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5_synth__parameterized0
   (p_5_out_0,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    \gc1.count_d2_reg[6] ,
    Q,
    \icap_dataout_i_reg[0] );
  output [31:0]p_5_out_0;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]Q;
  input [31:0]\icap_dataout_i_reg[0] ;

  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [31:0]\icap_dataout_i_reg[0] ;
  wire out;
  wire [31:0]p_5_out_0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_top__parameterized0 \gnbram.gnativebmg.native_blk_mem_gen 
       (.E(E),
        .Q(Q),
        .\gc1.count_d2_reg[6] (\gc1.count_d2_reg[6] ),
        .\icap_dataout_i_reg[0] (\icap_dataout_i_reg[0] ),
        .out(out),
        .p_5_out_0(p_5_out_0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module shell_axi_hwicap_0_0_clk_x_pntrs
   (out,
    ram_empty_i0,
    \wr_data_count_i_reg[5] ,
    D,
    Q,
    wrfifo_rden,
    \gc1.count_d1_reg[5] ,
    ram_empty_fb_i_reg,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_aclk,
    SR,
    \Q_reg_reg[0] ,
    \gc1.count_d2_reg[4] );
  output [5:0]out;
  output ram_empty_i0;
  output [5:0]\wr_data_count_i_reg[5] ;
  input [0:0]D;
  input [5:0]Q;
  input wrfifo_rden;
  input [5:0]\gc1.count_d1_reg[5] ;
  input ram_empty_fb_i_reg;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input s_axi_aclk;
  input [0:0]SR;
  input \Q_reg_reg[0] ;
  input [4:0]\gc1.count_d2_reg[4] ;

  wire [0:0]D;
  wire [5:0]Q;
  wire \Q_reg_reg[0] ;
  wire [0:0]SR;
  wire \_inferred__4/i__n_0 ;
  wire \_inferred__5/i__n_0 ;
  wire \_inferred__6/i__n_0 ;
  wire [5:0]\gc1.count_d1_reg[5] ;
  wire [4:0]\gc1.count_d2_reg[4] ;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ;
  wire [4:1]gray2bin;
  wire [5:0]out;
  wire [5:0]p_24_out;
  wire [5:0]p_3_out;
  wire [5:0]p_4_out;
  wire [5:0]p_6_out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i0;
  wire ram_empty_i_i_2_n_0;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_i_4_n_0;
  wire ram_empty_i_i_5_n_0;
  wire ram_empty_i_i_6_n_0;
  wire [5:0]rd_pntr_gc;
  wire s_axi_aclk;
  wire [5:0]\wr_data_count_i_reg[5] ;
  wire [5:0]wr_pntr_gc;
  wire wrfifo_rden;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \_inferred__0/i_ 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[5]),
        .I4(out[4]),
        .O(gray2bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \_inferred__1/i_ 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[5]),
        .I3(out[4]),
        .O(gray2bin[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \_inferred__4/i_ 
       (.I0(p_6_out[2]),
        .I1(p_6_out[0]),
        .I2(p_6_out[1]),
        .I3(p_6_out[5]),
        .I4(p_6_out[3]),
        .I5(p_6_out[4]),
        .O(\_inferred__4/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \_inferred__5/i_ 
       (.I0(p_6_out[3]),
        .I1(p_6_out[1]),
        .I2(p_6_out[2]),
        .I3(p_6_out[5]),
        .I4(p_6_out[4]),
        .O(\_inferred__5/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \_inferred__6/i_ 
       (.I0(p_6_out[3]),
        .I1(p_6_out[2]),
        .I2(p_6_out[5]),
        .I3(p_6_out[4]),
        .O(\_inferred__6/i__n_0 ));
  shell_axi_hwicap_0_0_synchronizer_ff__parameterized0 \gnxpm_cdc.gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q(wr_pntr_gc),
        .\Q_reg_reg[0]_0 (\Q_reg_reg[0] ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff__parameterized1 \gnxpm_cdc.gsync_stage[1].wr_stg_inst 
       (.D(p_4_out),
        .Q(rd_pntr_gc),
        .SR(SR),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff__parameterized2 \gnxpm_cdc.gsync_stage[2].rd_stg_inst 
       (.D(gray2bin[4:3]),
        .\Q_reg_reg[0]_0 (\Q_reg_reg[0] ),
        .\Q_reg_reg[5]_0 (p_3_out),
        .out(out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff__parameterized3 \gnxpm_cdc.gsync_stage[2].wr_stg_inst 
       (.D({\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 }),
        .\Q_reg_reg[5]_0 (p_4_out),
        .SR(SR),
        .out(p_6_out),
        .s_axi_aclk(s_axi_aclk));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\_inferred__4/i__n_0 ),
        .Q(\wr_data_count_i_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\_inferred__5/i__n_0 ),
        .Q(\wr_data_count_i_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\_inferred__6/i__n_0 ),
        .Q(\wr_data_count_i_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ),
        .Q(\wr_data_count_i_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ),
        .Q(\wr_data_count_i_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_6_out[5]),
        .Q(\wr_data_count_i_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gc1.count_d2_reg[4] [0]),
        .Q(rd_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gc1.count_d2_reg[4] [1]),
        .Q(rd_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gc1.count_d2_reg[4] [2]),
        .Q(rd_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gc1.count_d2_reg[4] [3]),
        .Q(rd_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gc1.count_d2_reg[4] [4]),
        .Q(rd_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(Q[5]),
        .Q(rd_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(D),
        .Q(p_24_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[1]),
        .Q(p_24_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[2]),
        .Q(p_24_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[3]),
        .Q(p_24_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[4]),
        .Q(p_24_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(out[5]),
        .Q(p_24_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gic0.gc1.count_d3_reg[5] [0]),
        .Q(wr_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gic0.gc1.count_d3_reg[5] [1]),
        .Q(wr_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gic0.gc1.count_d3_reg[5] [2]),
        .Q(wr_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gic0.gc1.count_d3_reg[5] [3]),
        .Q(wr_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gic0.gc1.count_d3_reg[5] [4]),
        .Q(wr_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\gic0.gc1.count_d3_reg[5] [5]),
        .Q(wr_pntr_gc[5]));
  LUT6 #(
    .INIT(64'hEBAAAAEBAAAAAAAA)) 
    ram_empty_i_i_1
       (.I0(ram_empty_i_i_2_n_0),
        .I1(p_24_out[1]),
        .I2(Q[1]),
        .I3(p_24_out[0]),
        .I4(Q[0]),
        .I5(ram_empty_i_i_3_n_0),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    ram_empty_i_i_2
       (.I0(wrfifo_rden),
        .I1(p_24_out[4]),
        .I2(\gc1.count_d1_reg[5] [4]),
        .I3(p_24_out[5]),
        .I4(\gc1.count_d1_reg[5] [5]),
        .I5(ram_empty_i_i_4_n_0),
        .O(ram_empty_i_i_2_n_0));
  LUT5 #(
    .INIT(32'h90090000)) 
    ram_empty_i_i_3
       (.I0(Q[5]),
        .I1(p_24_out[5]),
        .I2(Q[4]),
        .I3(p_24_out[4]),
        .I4(ram_empty_i_i_5_n_0),
        .O(ram_empty_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    ram_empty_i_i_4
       (.I0(ram_empty_i_i_6_n_0),
        .I1(p_24_out[3]),
        .I2(\gc1.count_d1_reg[5] [3]),
        .I3(p_24_out[2]),
        .I4(\gc1.count_d1_reg[5] [2]),
        .I5(ram_empty_fb_i_reg),
        .O(ram_empty_i_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_5
       (.I0(p_24_out[3]),
        .I1(Q[3]),
        .I2(p_24_out[2]),
        .I3(Q[2]),
        .O(ram_empty_i_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_6
       (.I0(p_24_out[1]),
        .I1(\gc1.count_d1_reg[5] [1]),
        .I2(p_24_out[0]),
        .I3(\gc1.count_d1_reg[5] [0]),
        .O(ram_empty_i_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module shell_axi_hwicap_0_0_clk_x_pntrs__parameterized0
   (ram_empty_i0,
    WR_PNTR_RD,
    S,
    RD_PNTR_WR,
    out,
    Q,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    \gc1.count_d2_reg[6] ,
    \gic0.gc1.count_d3_reg[6] ,
    s_axi_aclk,
    AR,
    \Q_reg_reg[0] );
  output ram_empty_i0;
  output [6:0]WR_PNTR_RD;
  output [6:0]S;
  output [6:0]RD_PNTR_WR;
  input out;
  input [4:0]Q;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]\gic0.gc1.count_d3_reg[6] ;
  input s_axi_aclk;
  input [0:0]AR;
  input \Q_reg_reg[0] ;

  wire [0:0]AR;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire [4:0]Q;
  wire \Q_reg_reg[0] ;
  wire [6:0]RD_PNTR_WR;
  wire [6:0]S;
  wire [6:0]WR_PNTR_RD;
  wire [5:0]bin2gray;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [6:0]\gic0.gc1.count_d3_reg[6] ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ;
  wire \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ;
  wire [4:0]gray2bin;
  wire out;
  wire p_0_out;
  wire [6:0]p_3_out;
  wire [6:0]p_4_out;
  wire [6:6]p_5_out;
  wire [6:6]p_6_out;
  wire ram_empty_i0;
  wire ram_empty_i_i_2__0_n_0;
  wire ram_empty_i_i_3__0_n_0;
  wire ram_empty_i_i_5__0_n_0;
  wire ram_empty_i_i_6__0_n_0;
  wire ram_empty_i_i_7__0_n_0;
  wire ram_empty_i_i_9_n_0;
  wire [6:0]rd_pntr_gc;
  wire s_axi_aclk;
  wire [6:0]wr_pntr_gc;

  shell_axi_hwicap_0_0_synchronizer_ff__parameterized4 \gnxpm_cdc.gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q(wr_pntr_gc),
        .\Q_reg_reg[0]_0 (\Q_reg_reg[0] ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff__parameterized5 \gnxpm_cdc.gsync_stage[1].wr_stg_inst 
       (.AR(AR),
        .D(p_4_out),
        .Q(rd_pntr_gc),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff__parameterized6 \gnxpm_cdc.gsync_stage[2].rd_stg_inst 
       (.D(p_3_out),
        .\Q_reg_reg[0]_0 (\Q_reg_reg[0] ),
        .\gnxpm_cdc.wr_pntr_bin_reg[5] ({p_0_out,gray2bin}),
        .out(p_5_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff__parameterized7 \gnxpm_cdc.gsync_stage[2].wr_stg_inst 
       (.AR(AR),
        .D(p_4_out),
        .\gnxpm_cdc.rd_pntr_bin_reg[5] ({\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 }),
        .out(p_6_out),
        .s_axi_aclk(s_axi_aclk));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ),
        .Q(RD_PNTR_WR[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ),
        .Q(RD_PNTR_WR[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ),
        .Q(RD_PNTR_WR[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ),
        .Q(RD_PNTR_WR[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ),
        .Q(RD_PNTR_WR[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ),
        .Q(RD_PNTR_WR[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_6_out),
        .Q(RD_PNTR_WR[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[0]_i_1 
       (.I0(\gc1.count_d2_reg[6] [0]),
        .I1(\gc1.count_d2_reg[6] [1]),
        .O(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[1]_i_1 
       (.I0(\gc1.count_d2_reg[6] [1]),
        .I1(\gc1.count_d2_reg[6] [2]),
        .O(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[2]_i_1 
       (.I0(\gc1.count_d2_reg[6] [2]),
        .I1(\gc1.count_d2_reg[6] [3]),
        .O(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[3]_i_1 
       (.I0(\gc1.count_d2_reg[6] [3]),
        .I1(\gc1.count_d2_reg[6] [4]),
        .O(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[4]_i_1 
       (.I0(\gc1.count_d2_reg[6] [4]),
        .I1(\gc1.count_d2_reg[6] [5]),
        .O(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[5]_i_1 
       (.I0(\gc1.count_d2_reg[6] [5]),
        .I1(\gc1.count_d2_reg[6] [6]),
        .O(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ),
        .Q(rd_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ),
        .Q(rd_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ),
        .Q(rd_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ),
        .Q(rd_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ),
        .Q(rd_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ),
        .Q(rd_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(\gc1.count_d2_reg[6] [6]),
        .Q(rd_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[0]),
        .Q(WR_PNTR_RD[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[1]),
        .Q(WR_PNTR_RD[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[2]),
        .Q(WR_PNTR_RD[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[3]),
        .Q(WR_PNTR_RD[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(gray2bin[4]),
        .Q(WR_PNTR_RD[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(p_0_out),
        .Q(WR_PNTR_RD[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0] ),
        .D(p_5_out),
        .Q(WR_PNTR_RD[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[0]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[6] [0]),
        .I1(\gic0.gc1.count_d3_reg[6] [1]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[1]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[6] [1]),
        .I1(\gic0.gc1.count_d3_reg[6] [2]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[2]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[6] [2]),
        .I1(\gic0.gc1.count_d3_reg[6] [3]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[3]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[6] [3]),
        .I1(\gic0.gc1.count_d3_reg[6] [4]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[4]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[6] [4]),
        .I1(\gic0.gc1.count_d3_reg[6] [5]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[5]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[6] [5]),
        .I1(\gic0.gc1.count_d3_reg[6] [6]),
        .O(bin2gray[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[0]),
        .Q(wr_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[1]),
        .Q(wr_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[2]),
        .Q(wr_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[3]),
        .Q(wr_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[4]),
        .Q(wr_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[5]),
        .Q(wr_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gic0.gc1.count_d3_reg[6] [6]),
        .Q(wr_pntr_gc[6]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__1
       (.I0(WR_PNTR_RD[6]),
        .I1(\gc1.count_d2_reg[6] [6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__1
       (.I0(WR_PNTR_RD[5]),
        .I1(\gc1.count_d2_reg[6] [5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__1
       (.I0(WR_PNTR_RD[4]),
        .I1(\gc1.count_d2_reg[6] [4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__1
       (.I0(WR_PNTR_RD[3]),
        .I1(\gc1.count_d2_reg[6] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_5__1
       (.I0(WR_PNTR_RD[2]),
        .I1(\gc1.count_d2_reg[6] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_6__1
       (.I0(WR_PNTR_RD[1]),
        .I1(\gc1.count_d2_reg[6] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_7__0
       (.I0(WR_PNTR_RD[0]),
        .I1(\gc1.count_d2_reg[6] [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hAEAAAAAEAAAAAAAA)) 
    ram_empty_i_i_1__0
       (.I0(ram_empty_i_i_2__0_n_0),
        .I1(ram_empty_i_i_3__0_n_0),
        .I2(out),
        .I3(Q[0]),
        .I4(WR_PNTR_RD[0]),
        .I5(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_empty_i_i_2__0
       (.I0(WR_PNTR_RD[1]),
        .I1(\gc1.count_d2_reg[6] [1]),
        .I2(WR_PNTR_RD[0]),
        .I3(\gc1.count_d2_reg[6] [0]),
        .I4(ram_empty_i_i_5__0_n_0),
        .I5(ram_empty_i_i_6__0_n_0),
        .O(ram_empty_i_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h90090000)) 
    ram_empty_i_i_3__0
       (.I0(Q[3]),
        .I1(WR_PNTR_RD[3]),
        .I2(Q[4]),
        .I3(WR_PNTR_RD[4]),
        .I4(ram_empty_i_i_7__0_n_0),
        .O(ram_empty_i_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h90090000)) 
    ram_empty_i_i_5__0
       (.I0(\gc1.count_d2_reg[6] [4]),
        .I1(WR_PNTR_RD[4]),
        .I2(\gc1.count_d2_reg[6] [6]),
        .I3(WR_PNTR_RD[6]),
        .I4(ram_empty_i_i_9_n_0),
        .O(ram_empty_i_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    ram_empty_i_i_6__0
       (.I0(WR_PNTR_RD[5]),
        .I1(\gc1.count_d2_reg[6] [5]),
        .O(ram_empty_i_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_7__0
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .I2(WR_PNTR_RD[1]),
        .I3(Q[1]),
        .O(ram_empty_i_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_9
       (.I0(WR_PNTR_RD[3]),
        .I1(\gc1.count_d2_reg[6] [3]),
        .I2(WR_PNTR_RD[2]),
        .I3(\gc1.count_d2_reg[6] [2]),
        .O(ram_empty_i_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module shell_axi_hwicap_0_0_fifo_generator_ramfifo
   (D,
    out,
    \grstd1.grst_full.grst_f.rst_d1_reg ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \gic0.gc1.count_reg[0] ,
    IP2Bus_WrAck_reg,
    s_axi_aclk,
    s_axi_wdata,
    fifo_clear,
    wrfifo_rden,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    busip_1,
    Bus_RNW_reg);
  output [31:0]D;
  output out;
  output \grstd1.grst_full.grst_f.rst_d1_reg ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output \gic0.gc1.count_reg[0] ;
  output IP2Bus_WrAck_reg;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input fifo_clear;
  input wrfifo_rden;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input busip_1;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [31:0]D;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire IP2Bus_WrAck_reg;
  wire [4:0]bin2gray;
  wire busip_1;
  wire fifo_clear;
  wire \gic0.gc1.count_reg[0] ;
  wire \gntv_or_sync_fifo.gl0.rd_n_1 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_12 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_2 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_3 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_4 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_5 ;
  wire \gras.rsts/ram_empty_i0 ;
  wire [0:0]gray2bin;
  wire \grstd1.grst_full.grst_f.rst_d1_reg ;
  wire out;
  wire [5:0]p_0_out;
  wire [5:0]p_13_out;
  wire p_20_out;
  wire [5:0]p_25_out;
  wire [5:0]p_5_out;
  wire p_8_in;
  wire [5:0]rd_pntr_plus1;
  wire [2:2]rd_rst_i;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_6;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire sw_reset_reg;
  wire tmp_ram_rd_en;
  wire [1:1]wr_rst_i;
  wire wrfifo_rden;

  shell_axi_hwicap_0_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.D(gray2bin),
        .Q(p_0_out),
        .\Q_reg_reg[0] (rstblk_n_0),
        .SR(rstblk_n_6),
        .\gc1.count_d1_reg[5] (rd_pntr_plus1),
        .\gc1.count_d2_reg[4] ({\gntv_or_sync_fifo.gl0.rd_n_1 ,\gntv_or_sync_fifo.gl0.rd_n_2 ,\gntv_or_sync_fifo.gl0.rd_n_3 ,\gntv_or_sync_fifo.gl0.rd_n_4 ,\gntv_or_sync_fifo.gl0.rd_n_5 }),
        .\gic0.gc1.count_d3_reg[5] ({p_13_out[5],bin2gray}),
        .out(p_5_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .ram_empty_i0(\gras.rsts/ram_empty_i0 ),
        .s_axi_aclk(s_axi_aclk),
        .\wr_data_count_i_reg[5] (p_25_out),
        .wrfifo_rden(wrfifo_rden));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gntv_or_sync_fifo.gcx.clkx/ 
       (.I0(p_5_out[2]),
        .I1(p_5_out[0]),
        .I2(p_5_out[1]),
        .I3(p_5_out[5]),
        .I4(p_5_out[3]),
        .I5(p_5_out[4]),
        .O(gray2bin));
  shell_axi_hwicap_0_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.Q(p_0_out),
        .\Q_reg_reg[0] (rstblk_n_0),
        .\gc1.count_d2_reg[5] (rd_pntr_plus1),
        .\gnxpm_cdc.rd_pntr_gc_reg[4] ({\gntv_or_sync_fifo.gl0.rd_n_1 ,\gntv_or_sync_fifo.gl0.rd_n_2 ,\gntv_or_sync_fifo.gl0.rd_n_3 ,\gntv_or_sync_fifo.gl0.rd_n_4 ,\gntv_or_sync_fifo.gl0.rd_n_5 }),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (rd_rst_i),
        .out(out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .ram_empty_i0(\gras.rsts/ram_empty_i0 ),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wrfifo_rden(wrfifo_rden));
  shell_axi_hwicap_0_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(wr_rst_i),
        .Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .E(p_20_out),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .Q(p_13_out),
        .\Q_reg_reg[0] (\grstd1.grst_full.grst_f.rst_d1_reg ),
        .SR(rstblk_n_6),
        .busip_1(busip_1),
        .\gic0.gc1.count_reg[0] (\gic0.gc1.count_reg[0] ),
        .\gnxpm_cdc.rd_pntr_bin_reg[5] (p_25_out),
        .\gnxpm_cdc.wr_pntr_gc_reg[4] (bin2gray),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .out(rst_full_ff_i),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[0]),
        .sw_reset_reg(sw_reset_reg));
  shell_axi_hwicap_0_0_memory \gntv_or_sync_fifo.mem 
       (.D(D),
        .E(p_20_out),
        .Q(p_0_out),
        .\gic0.gc1.count_d3_reg[5] (p_13_out),
        .out(rstblk_n_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  shell_axi_hwicap_0_0_reset_blk_ramfifo rstblk
       (.SR(rstblk_n_6),
        .fifo_clear(fifo_clear),
        .\grstd1.grst_full.grst_f.rst_d1_reg_0 (\grstd1.grst_full.grst_f.rst_d1_reg ),
        .out(rstblk_n_0),
        .ram_empty_i_reg(rd_rst_i),
        .ram_full_i_reg(rst_full_ff_i),
        .ram_full_i_reg_0(rst_full_gen_i),
        .s_axi_aclk(s_axi_aclk),
        .\wr_data_count_i_reg[0] (wr_rst_i));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module shell_axi_hwicap_0_0_fifo_generator_ramfifo__parameterized0
   (p_5_out_0,
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    prmry_in,
    gate_signal_p_reg,
    s_axi_aclk,
    Q,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in5_in,
    rdfifo_wren,
    ipbus_1,
    ipbus_2,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    Bus_RNW_reg,
    fifo_rst,
    abort_onreset,
    gate_signal_p_reg_0);
  output [31:0]p_5_out_0;
  output \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output prmry_in;
  output gate_signal_p_reg;
  input s_axi_aclk;
  input [31:0]Q;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in5_in;
  input rdfifo_wren;
  input ipbus_1;
  input ipbus_2;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input Bus_RNW_reg;
  input fifo_rst;
  input abort_onreset;
  input gate_signal_p_reg_0;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire [31:0]Q;
  wire abort_onreset;
  wire fifo_rst;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire \gntv_or_sync_fifo.gcx.clkx_n_10 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_11 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_12 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_13 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_14 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_8 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_9 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_10 ;
  wire \gras.rsts/ram_empty_i0 ;
  wire ipbus_1;
  wire ipbus_2;
  wire \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  wire [6:0]p_0_out;
  wire p_10_out;
  wire [6:0]p_13_out;
  wire p_1_in5_in;
  wire p_20_out;
  wire [6:0]p_24_out;
  wire [6:0]p_25_out;
  wire p_2_out;
  wire [31:0]p_5_out_0;
  wire p_7_in;
  wire prmry_in;
  wire [4:0]rd_pntr_plus1;
  wire [2:2]rd_rst_i;
  wire rdfifo_wren;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_7;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;
  wire tmp_ram_rd_en;
  wire wr_rst_busy_i2_out;
  wire [1:1]wr_rst_i;

  shell_axi_hwicap_0_0_clk_x_pntrs__parameterized0 \gntv_or_sync_fifo.gcx.clkx 
       (.AR(rstblk_n_7),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\gntv_or_sync_fifo.gl0.rd_n_10 ),
        .Q(rd_pntr_plus1),
        .\Q_reg_reg[0] (rstblk_n_0),
        .RD_PNTR_WR(p_25_out),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_8 ,\gntv_or_sync_fifo.gcx.clkx_n_9 ,\gntv_or_sync_fifo.gcx.clkx_n_10 ,\gntv_or_sync_fifo.gcx.clkx_n_11 ,\gntv_or_sync_fifo.gcx.clkx_n_12 ,\gntv_or_sync_fifo.gcx.clkx_n_13 ,\gntv_or_sync_fifo.gcx.clkx_n_14 }),
        .WR_PNTR_RD(p_24_out),
        .\gc1.count_d2_reg[6] (p_0_out),
        .\gic0.gc1.count_d3_reg[6] (p_13_out),
        .out(p_2_out),
        .ram_empty_i0(\gras.rsts/ram_empty_i0 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_rd_logic__parameterized0 \gntv_or_sync_fifo.gl0.rd 
       (.AR(rd_rst_i),
        .Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_0_out),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .Q(rd_pntr_plus1),
        .\Q_reg_reg[0] (rstblk_n_0),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_8 ,\gntv_or_sync_fifo.gcx.clkx_n_9 ,\gntv_or_sync_fifo.gcx.clkx_n_10 ,\gntv_or_sync_fifo.gcx.clkx_n_11 ,\gntv_or_sync_fifo.gcx.clkx_n_12 ,\gntv_or_sync_fifo.gcx.clkx_n_13 ,\gntv_or_sync_fifo.gcx.clkx_n_14 }),
        .WR_PNTR_RD(p_24_out),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .out(p_2_out),
        .p_1_in5_in(p_1_in5_in),
        .p_7_in(p_7_in),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_10 ),
        .ram_empty_i0(\gras.rsts/ram_empty_i0 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  shell_axi_hwicap_0_0_wr_logic__parameterized0 \gntv_or_sync_fifo.gl0.wr 
       (.AR(wr_rst_i),
        .E(p_20_out),
        .Q(p_13_out),
        .RD_PNTR_WR(p_25_out),
        .SR(rstblk_n_7),
        .gate_signal_p_reg(gate_signal_p_reg),
        .gate_signal_p_reg_0(gate_signal_p_reg_0),
        .\grstd1.grst_full.grst_f.rst_d2_reg (rst_full_ff_i),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .out(p_10_out),
        .prmry_in(prmry_in),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk),
        .wr_rst_busy_i2_out(wr_rst_busy_i2_out));
  shell_axi_hwicap_0_0_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.E(p_20_out),
        .Q(p_13_out),
        .\gc1.count_d2_reg[6] (p_0_out),
        .\icap_dataout_i_reg[0] (Q),
        .out(rstblk_n_0),
        .p_5_out_0(p_5_out_0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  shell_axi_hwicap_0_0_reset_blk_ramfifo_24 rstblk
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (rst_full_gen_i),
        .SR(rstblk_n_7),
        .abort_onreset(abort_onreset),
        .fifo_rst(fifo_rst),
        .\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 (\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ),
        .out(rstblk_n_0),
        .prmry_in(prmry_in),
        .ram_empty_i_reg(rd_rst_i),
        .ram_full_i_reg(rst_full_ff_i),
        .ram_full_i_reg_0(p_10_out),
        .s_axi_aclk(s_axi_aclk),
        .sw_reset_reg(sw_reset_reg),
        .\wr_data_count_i_reg[0] (wr_rst_i),
        .wr_rst_busy_i2_out(wr_rst_busy_i2_out));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module shell_axi_hwicap_0_0_fifo_generator_top
   (D,
    out,
    \grstd1.grst_full.grst_f.rst_d1_reg ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \gic0.gc1.count_reg[0] ,
    IP2Bus_WrAck_reg,
    s_axi_aclk,
    s_axi_wdata,
    fifo_clear,
    wrfifo_rden,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    busip_1,
    Bus_RNW_reg);
  output [31:0]D;
  output out;
  output \grstd1.grst_full.grst_f.rst_d1_reg ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output \gic0.gc1.count_reg[0] ;
  output IP2Bus_WrAck_reg;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input fifo_clear;
  input wrfifo_rden;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input busip_1;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [31:0]D;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire IP2Bus_WrAck_reg;
  wire busip_1;
  wire fifo_clear;
  wire \gic0.gc1.count_reg[0] ;
  wire \grstd1.grst_full.grst_f.rst_d1_reg ;
  wire out;
  wire p_8_in;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire sw_reset_reg;
  wire wrfifo_rden;

  shell_axi_hwicap_0_0_fifo_generator_ramfifo \grf.rf 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .busip_1(busip_1),
        .fifo_clear(fifo_clear),
        .\gic0.gc1.count_reg[0] (\gic0.gc1.count_reg[0] ),
        .\grstd1.grst_full.grst_f.rst_d1_reg (\grstd1.grst_full.grst_f.rst_d1_reg ),
        .out(out),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg),
        .wrfifo_rden(wrfifo_rden));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module shell_axi_hwicap_0_0_fifo_generator_top__parameterized0
   (p_5_out_0,
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    prmry_in,
    gate_signal_p_reg,
    s_axi_aclk,
    Q,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in5_in,
    rdfifo_wren,
    ipbus_1,
    ipbus_2,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    Bus_RNW_reg,
    fifo_rst,
    abort_onreset,
    gate_signal_p_reg_0);
  output [31:0]p_5_out_0;
  output \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output prmry_in;
  output gate_signal_p_reg;
  input s_axi_aclk;
  input [31:0]Q;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in5_in;
  input rdfifo_wren;
  input ipbus_1;
  input ipbus_2;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input Bus_RNW_reg;
  input fifo_rst;
  input abort_onreset;
  input gate_signal_p_reg_0;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire [31:0]Q;
  wire abort_onreset;
  wire fifo_rst;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire ipbus_1;
  wire ipbus_2;
  wire \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  wire p_1_in5_in;
  wire [31:0]p_5_out_0;
  wire p_7_in;
  wire prmry_in;
  wire rdfifo_wren;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;

  shell_axi_hwicap_0_0_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .Q(Q),
        .abort_onreset(abort_onreset),
        .fifo_rst(fifo_rst),
        .gate_signal_p_reg(gate_signal_p_reg),
        .gate_signal_p_reg_0(gate_signal_p_reg_0),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg (\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out_0(p_5_out_0),
        .p_7_in(p_7_in),
        .prmry_in(prmry_in),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_3" *) 
module shell_axi_hwicap_0_0_fifo_generator_v13_1_3
   (D,
    out,
    \grstd1.grst_full.grst_f.rst_d1_reg ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \gic0.gc1.count_reg[0] ,
    IP2Bus_WrAck_reg,
    s_axi_aclk,
    s_axi_wdata,
    fifo_clear,
    wrfifo_rden,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    busip_1,
    Bus_RNW_reg);
  output [31:0]D;
  output out;
  output \grstd1.grst_full.grst_f.rst_d1_reg ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output \gic0.gc1.count_reg[0] ;
  output IP2Bus_WrAck_reg;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input fifo_clear;
  input wrfifo_rden;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input busip_1;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [31:0]D;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire IP2Bus_WrAck_reg;
  wire busip_1;
  wire fifo_clear;
  wire \gic0.gc1.count_reg[0] ;
  wire \grstd1.grst_full.grst_f.rst_d1_reg ;
  wire out;
  wire p_8_in;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire sw_reset_reg;
  wire wrfifo_rden;

  shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth inst_fifo_gen
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .busip_1(busip_1),
        .fifo_clear(fifo_clear),
        .\gic0.gc1.count_reg[0] (\gic0.gc1.count_reg[0] ),
        .\grstd1.grst_full.grst_f.rst_d1_reg (\grstd1.grst_full.grst_f.rst_d1_reg ),
        .out(out),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg),
        .wrfifo_rden(wrfifo_rden));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_3" *) 
module shell_axi_hwicap_0_0_fifo_generator_v13_1_3__parameterized0
   (p_5_out_0,
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    prmry_in,
    gate_signal_p_reg,
    s_axi_aclk,
    Q,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in5_in,
    rdfifo_wren,
    ipbus_1,
    ipbus_2,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    Bus_RNW_reg,
    fifo_rst,
    abort_onreset,
    gate_signal_p_reg_0);
  output [31:0]p_5_out_0;
  output \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output prmry_in;
  output gate_signal_p_reg;
  input s_axi_aclk;
  input [31:0]Q;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in5_in;
  input rdfifo_wren;
  input ipbus_1;
  input ipbus_2;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input Bus_RNW_reg;
  input fifo_rst;
  input abort_onreset;
  input gate_signal_p_reg_0;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire [31:0]Q;
  wire abort_onreset;
  wire fifo_rst;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire ipbus_1;
  wire ipbus_2;
  wire \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  wire p_1_in5_in;
  wire [31:0]p_5_out_0;
  wire p_7_in;
  wire prmry_in;
  wire rdfifo_wren;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;

  shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth__parameterized0 inst_fifo_gen
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .Q(Q),
        .abort_onreset(abort_onreset),
        .fifo_rst(fifo_rst),
        .gate_signal_p_reg(gate_signal_p_reg),
        .gate_signal_p_reg_0(gate_signal_p_reg_0),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg (\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out_0(p_5_out_0),
        .p_7_in(p_7_in),
        .prmry_in(prmry_in),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_3_synth" *) 
module shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth
   (D,
    out,
    \grstd1.grst_full.grst_f.rst_d1_reg ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \gic0.gc1.count_reg[0] ,
    IP2Bus_WrAck_reg,
    s_axi_aclk,
    s_axi_wdata,
    fifo_clear,
    wrfifo_rden,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    busip_1,
    Bus_RNW_reg);
  output [31:0]D;
  output out;
  output \grstd1.grst_full.grst_f.rst_d1_reg ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output \gic0.gc1.count_reg[0] ;
  output IP2Bus_WrAck_reg;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input fifo_clear;
  input wrfifo_rden;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input busip_1;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [31:0]D;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire IP2Bus_WrAck_reg;
  wire busip_1;
  wire fifo_clear;
  wire \gic0.gc1.count_reg[0] ;
  wire \grstd1.grst_full.grst_f.rst_d1_reg ;
  wire out;
  wire p_8_in;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire sw_reset_reg;
  wire wrfifo_rden;

  shell_axi_hwicap_0_0_fifo_generator_top \gconvfifo.rf 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .busip_1(busip_1),
        .fifo_clear(fifo_clear),
        .\gic0.gc1.count_reg[0] (\gic0.gc1.count_reg[0] ),
        .\grstd1.grst_full.grst_f.rst_d1_reg (\grstd1.grst_full.grst_f.rst_d1_reg ),
        .out(out),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg),
        .wrfifo_rden(wrfifo_rden));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_3_synth" *) 
module shell_axi_hwicap_0_0_fifo_generator_v13_1_3_synth__parameterized0
   (p_5_out_0,
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    prmry_in,
    gate_signal_p_reg,
    s_axi_aclk,
    Q,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in5_in,
    rdfifo_wren,
    ipbus_1,
    ipbus_2,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    Bus_RNW_reg,
    fifo_rst,
    abort_onreset,
    gate_signal_p_reg_0);
  output [31:0]p_5_out_0;
  output \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output prmry_in;
  output gate_signal_p_reg;
  input s_axi_aclk;
  input [31:0]Q;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in5_in;
  input rdfifo_wren;
  input ipbus_1;
  input ipbus_2;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input Bus_RNW_reg;
  input fifo_rst;
  input abort_onreset;
  input gate_signal_p_reg_0;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire [31:0]Q;
  wire abort_onreset;
  wire fifo_rst;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire ipbus_1;
  wire ipbus_2;
  wire \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ;
  wire p_1_in5_in;
  wire [31:0]p_5_out_0;
  wire p_7_in;
  wire prmry_in;
  wire rdfifo_wren;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;

  shell_axi_hwicap_0_0_fifo_generator_top__parameterized0 \gconvfifo.rf 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .Q(Q),
        .abort_onreset(abort_onreset),
        .fifo_rst(fifo_rst),
        .gate_signal_p_reg(gate_signal_p_reg),
        .gate_signal_p_reg_0(gate_signal_p_reg_0),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg (\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg ),
        .p_1_in5_in(p_1_in5_in),
        .p_5_out_0(p_5_out_0),
        .p_7_in(p_7_in),
        .prmry_in(prmry_in),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module shell_axi_hwicap_0_0_memory
   (D,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    Q,
    \gic0.gc1.count_d3_reg[5] ,
    s_axi_wdata);
  output [31:0]D;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [5:0]Q;
  input [5:0]\gic0.gc1.count_d3_reg[5] ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]\gic0.gc1.count_d3_reg[5] ;
  wire out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(D),
        .E(E),
        .Q(Q),
        .\gic0.gc1.count_d3_reg[5] (\gic0.gc1.count_d3_reg[5] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module shell_axi_hwicap_0_0_memory__parameterized0
   (p_5_out_0,
    s_axi_aclk,
    tmp_ram_rd_en,
    E,
    out,
    \gc1.count_d2_reg[6] ,
    Q,
    \icap_dataout_i_reg[0] );
  output [31:0]p_5_out_0;
  input s_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input out;
  input [6:0]\gc1.count_d2_reg[6] ;
  input [6:0]Q;
  input [31:0]\icap_dataout_i_reg[0] ;

  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]\gc1.count_d2_reg[6] ;
  wire [31:0]\icap_dataout_i_reg[0] ;
  wire out;
  wire [31:0]p_5_out_0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_blk_mem_gen_v8_3_5__parameterized1 \gbm.gbmg.gbmga.ngecc.bmg 
       (.E(E),
        .Q(Q),
        .\gc1.count_d2_reg[6] (\gc1.count_d2_reg[6] ),
        .\icap_dataout_i_reg[0] (\icap_dataout_i_reg[0] ),
        .out(out),
        .p_5_out_0(p_5_out_0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module shell_axi_hwicap_0_0_rd_bin_cntr
   (\gnxpm_cdc.rd_pntr_gc_reg[4] ,
    Q,
    \gc1.count_d2_reg[5]_0 ,
    \Q_reg_reg[0] ,
    E,
    s_axi_aclk);
  output [4:0]\gnxpm_cdc.rd_pntr_gc_reg[4] ;
  output [5:0]Q;
  output [5:0]\gc1.count_d2_reg[5]_0 ;
  input \Q_reg_reg[0] ;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \Q_reg_reg[0] ;
  wire [5:0]\gc1.count_d2_reg[5]_0 ;
  wire [4:0]\gnxpm_cdc.rd_pntr_gc_reg[4] ;
  wire [5:0]plusOp__2;
  wire [5:0]rd_pntr_plus2;
  wire s_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc1.count[0]_i_1__0 
       (.I0(rd_pntr_plus2[0]),
        .O(plusOp__2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[1]_i_1__0 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[2]_i_1__0 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[3]_i_1__0 
       (.I0(rd_pntr_plus2[2]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[3]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[4]_i_1__0 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[2]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[4]),
        .O(plusOp__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[5]_i_1__0 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[4]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[2]),
        .I5(rd_pntr_plus2[5]),
        .O(plusOp__2[5]));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[0]),
        .Q(\gc1.count_d2_reg[5]_0 [0]),
        .S(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[1]),
        .Q(\gc1.count_d2_reg[5]_0 [1]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[2]),
        .Q(\gc1.count_d2_reg[5]_0 [2]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[3]),
        .Q(\gc1.count_d2_reg[5]_0 [3]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[4]),
        .Q(\gc1.count_d2_reg[5]_0 [4]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[5]),
        .Q(\gc1.count_d2_reg[5]_0 [5]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gc1.count_d2_reg[5]_0 [0]),
        .Q(Q[0]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gc1.count_d2_reg[5]_0 [1]),
        .Q(Q[1]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gc1.count_d2_reg[5]_0 [2]),
        .Q(Q[2]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gc1.count_d2_reg[5]_0 [3]),
        .Q(Q[3]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gc1.count_d2_reg[5]_0 [4]),
        .Q(Q[4]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gc1.count_d2_reg[5]_0 [5]),
        .Q(Q[5]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[0]),
        .Q(rd_pntr_plus2[0]),
        .R(\Q_reg_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[1]),
        .Q(rd_pntr_plus2[1]),
        .S(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[2]),
        .Q(rd_pntr_plus2[2]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[3]),
        .Q(rd_pntr_plus2[3]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[4]),
        .Q(rd_pntr_plus2[4]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[5]),
        .Q(rd_pntr_plus2[5]),
        .R(\Q_reg_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gnxpm_cdc.rd_pntr_gc_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\gnxpm_cdc.rd_pntr_gc_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\gnxpm_cdc.rd_pntr_gc_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\gnxpm_cdc.rd_pntr_gc_reg[4] [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\gnxpm_cdc.rd_pntr_gc_reg[4] [4]));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module shell_axi_hwicap_0_0_rd_bin_cntr__parameterized0
   (ram_empty_fb_i_reg,
    Q,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    p_7_in,
    Bus_RNW_reg,
    ipbus_1,
    ipbus_2,
    WR_PNTR_RD,
    out,
    \Q_reg_reg[0] ,
    E,
    s_axi_aclk);
  output ram_empty_fb_i_reg;
  output [4:0]Q;
  output [6:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input p_7_in;
  input Bus_RNW_reg;
  input ipbus_1;
  input ipbus_2;
  input [1:0]WR_PNTR_RD;
  input out;
  input \Q_reg_reg[0] ;
  input [0:0]E;
  input s_axi_aclk;

  wire Bus_RNW_reg;
  wire [6:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [4:0]Q;
  wire \Q_reg_reg[0] ;
  wire [1:0]WR_PNTR_RD;
  wire \gc1.count[6]_i_2_n_0 ;
  wire ipbus_1;
  wire ipbus_2;
  wire out;
  wire p_7_in;
  wire [6:0]plusOp__1;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_i_8_n_0;
  wire [6:5]rd_pntr_plus1;
  wire [6:0]rd_pntr_plus2;
  wire s_axi_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc1.count[0]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .O(plusOp__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[1]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[2]_i_1 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[3]_i_1 
       (.I0(rd_pntr_plus2[2]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[4]_i_1 
       (.I0(rd_pntr_plus2[3]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[2]),
        .I4(rd_pntr_plus2[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[5]_i_1 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[4]),
        .I5(rd_pntr_plus2[5]),
        .O(plusOp__1[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[6]_i_1 
       (.I0(\gc1.count[6]_i_2_n_0 ),
        .I1(rd_pntr_plus2[5]),
        .I2(rd_pntr_plus2[4]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[6]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gc1.count[6]_i_2 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .O(\gc1.count[6]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[0]),
        .Q(Q[0]),
        .S(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[1]),
        .Q(Q[1]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[2]),
        .Q(Q[2]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[3]),
        .Q(Q[3]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[4]),
        .Q(Q[4]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[5]),
        .Q(rd_pntr_plus1[5]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[6]),
        .Q(rd_pntr_plus1[6]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[1]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[2]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[3]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[4]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [4]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [5]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [6]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[0]),
        .Q(rd_pntr_plus2[0]),
        .R(\Q_reg_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[1]),
        .Q(rd_pntr_plus2[1]),
        .S(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[2]),
        .Q(rd_pntr_plus2[2]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[3]),
        .Q(rd_pntr_plus2[3]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[4]),
        .Q(rd_pntr_plus2[4]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[5]),
        .Q(rd_pntr_plus2[5]),
        .R(\Q_reg_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[6]),
        .Q(rd_pntr_plus2[6]),
        .R(\Q_reg_reg[0] ));
  LUT5 #(
    .INIT(32'h00800000)) 
    ram_empty_i_i_4__0
       (.I0(p_7_in),
        .I1(Bus_RNW_reg),
        .I2(ipbus_1),
        .I3(ipbus_2),
        .I4(ram_empty_i_i_8_n_0),
        .O(ram_empty_fb_i_reg));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_empty_i_i_8
       (.I0(rd_pntr_plus1[6]),
        .I1(WR_PNTR_RD[1]),
        .I2(rd_pntr_plus1[5]),
        .I3(WR_PNTR_RD[0]),
        .I4(out),
        .O(ram_empty_i_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "rd_dc_as" *) 
module shell_axi_hwicap_0_0_rd_dc_as__parameterized0
   (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    WR_PNTR_RD,
    S,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in5_in,
    s_axi_aclk,
    AR);
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  input [5:0]WR_PNTR_RD;
  input [6:0]S;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in5_in;
  input s_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire Bus_RNW_reg_reg;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire [6:0]S;
  wire [5:0]WR_PNTR_RD;
  wire minusOp_carry_n_10;
  wire minusOp_carry_n_11;
  wire minusOp_carry_n_12;
  wire minusOp_carry_n_13;
  wire minusOp_carry_n_14;
  wire minusOp_carry_n_15;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire minusOp_carry_n_9;
  wire p_1_in5_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;
  wire [7:3]NLW_minusOp_carry_CO_UNCONNECTED;
  wire [7:7]NLW_minusOp_carry_DI_UNCONNECTED;
  wire [7:7]NLW_minusOp_carry_O_UNCONNECTED;
  wire [7:7]NLW_minusOp_carry_S_UNCONNECTED;

  LUT5 #(
    .INIT(32'hF2FF2F22)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [6]),
        .I1(sw_reset_reg),
        .I2(Bus_RNW_reg_reg),
        .I3(s_axi_wdata),
        .I4(p_1_in5_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ));
  CARRY8 minusOp_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_minusOp_carry_CO_UNCONNECTED[7:6],minusOp_carry_n_2,minusOp_carry_n_3,NLW_minusOp_carry_CO_UNCONNECTED[3],minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .DI({NLW_minusOp_carry_DI_UNCONNECTED[7],1'b0,WR_PNTR_RD}),
        .O({NLW_minusOp_carry_O_UNCONNECTED[7],minusOp_carry_n_9,minusOp_carry_n_10,minusOp_carry_n_11,minusOp_carry_n_12,minusOp_carry_n_13,minusOp_carry_n_14,minusOp_carry_n_15}),
        .S({NLW_minusOp_carry_S_UNCONNECTED[7],S}));
  FDCE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_15),
        .Q(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_14),
        .Q(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_13),
        .Q(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_12),
        .Q(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_11),
        .Q(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_10),
        .Q(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_9),
        .Q(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 [6]));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module shell_axi_hwicap_0_0_rd_logic
   (out,
    \gnxpm_cdc.rd_pntr_gc_reg[4] ,
    Q,
    ram_empty_fb_i_reg,
    tmp_ram_rd_en,
    \gc1.count_d2_reg[5] ,
    ram_empty_i0,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    \Q_reg_reg[0] ,
    wrfifo_rden);
  output out;
  output [4:0]\gnxpm_cdc.rd_pntr_gc_reg[4] ;
  output [5:0]Q;
  output ram_empty_fb_i_reg;
  output tmp_ram_rd_en;
  output [5:0]\gc1.count_d2_reg[5] ;
  input ram_empty_i0;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input \Q_reg_reg[0] ;
  input wrfifo_rden;

  wire [5:0]Q;
  wire \Q_reg_reg[0] ;
  wire [5:0]\gc1.count_d2_reg[5] ;
  wire [4:0]\gnxpm_cdc.rd_pntr_gc_reg[4] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire out;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;
  wire wrfifo_rden;

  shell_axi_hwicap_0_0_rd_status_flags_as \gras.rsts 
       (.E(p_8_out),
        .\Q_reg_reg[0] (\Q_reg_reg[0] ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .out(out),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .ram_empty_i0(ram_empty_i0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wrfifo_rden(wrfifo_rden));
  shell_axi_hwicap_0_0_rd_bin_cntr rpntr
       (.E(p_8_out),
        .Q(Q),
        .\Q_reg_reg[0] (\Q_reg_reg[0] ),
        .\gc1.count_d2_reg[5]_0 (\gc1.count_d2_reg[5] ),
        .\gnxpm_cdc.rd_pntr_gc_reg[4] (\gnxpm_cdc.rd_pntr_gc_reg[4] ),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module shell_axi_hwicap_0_0_rd_logic__parameterized0
   (out,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    tmp_ram_rd_en,
    ram_empty_fb_i_reg,
    Q,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    ram_empty_i0,
    s_axi_aclk,
    AR,
    \Q_reg_reg[0] ,
    WR_PNTR_RD,
    S,
    sw_reset_reg,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_1_in5_in,
    ipbus_1,
    ipbus_2,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    Bus_RNW_reg);
  output out;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  output tmp_ram_rd_en;
  output ram_empty_fb_i_reg;
  output [4:0]Q;
  output [6:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input ram_empty_i0;
  input s_axi_aclk;
  input [0:0]AR;
  input \Q_reg_reg[0] ;
  input [6:0]WR_PNTR_RD;
  input [6:0]S;
  input sw_reset_reg;
  input Bus_RNW_reg_reg;
  input [0:0]s_axi_wdata;
  input p_1_in5_in;
  input ipbus_1;
  input ipbus_2;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input Bus_RNW_reg;

  wire [0:0]AR;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [6:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire [6:0]\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire [4:0]Q;
  wire \Q_reg_reg[0] ;
  wire [6:0]S;
  wire [6:0]WR_PNTR_RD;
  wire ipbus_1;
  wire ipbus_2;
  wire out;
  wire p_1_in5_in;
  wire p_7_in;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i0;
  wire readfifo_empty;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;
  wire tmp_ram_rd_en;

  shell_axi_hwicap_0_0_rd_dc_as__parameterized0 \gras.grdc1.rdc 
       (.AR(AR),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .S(S),
        .WR_PNTR_RD(WR_PNTR_RD[5:0]),
        .p_1_in5_in(p_1_in5_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg));
  shell_axi_hwicap_0_0_rd_status_flags_as__parameterized0 \gras.rsts 
       (.AR(AR),
        .Bus_RNW_reg(Bus_RNW_reg),
        .E(p_8_out),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .\Q_reg_reg[0] (\Q_reg_reg[0] ),
        .\gc1.count_d1_reg[6] (out),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .out(readfifo_empty),
        .p_7_in(p_7_in),
        .ram_empty_i0(ram_empty_i0),
        .s_axi_aclk(s_axi_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  shell_axi_hwicap_0_0_rd_bin_cntr__parameterized0 rpntr
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .E(p_8_out),
        .Q(Q),
        .\Q_reg_reg[0] (\Q_reg_reg[0] ),
        .WR_PNTR_RD(WR_PNTR_RD[6:5]),
        .ipbus_1(ipbus_1),
        .ipbus_2(ipbus_2),
        .out(readfifo_empty),
        .p_7_in(p_7_in),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module shell_axi_hwicap_0_0_rd_status_flags_as
   (out,
    E,
    ram_empty_fb_i_reg_0,
    tmp_ram_rd_en,
    ram_empty_i0,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    \Q_reg_reg[0] ,
    wrfifo_rden);
  output out;
  output [0:0]E;
  output ram_empty_fb_i_reg_0;
  output tmp_ram_rd_en;
  input ram_empty_i0;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input \Q_reg_reg[0] ;
  input wrfifo_rden;

  wire [0:0]E;
  wire \Q_reg_reg[0] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;
  wire wrfifo_rden;

  assign out = ram_empty_i;
  LUT4 #(
    .INIT(16'hFF10)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1__0 
       (.I0(ram_empty_i),
        .I1(ram_empty_fb_i),
        .I2(wrfifo_rden),
        .I3(\Q_reg_reg[0] ),
        .O(tmp_ram_rd_en));
  LUT3 #(
    .INIT(8'h10)) 
    \gc1.count_d1[5]_i_1 
       (.I0(ram_empty_i),
        .I1(ram_empty_fb_i),
        .I2(wrfifo_rden),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_fb_i),
        .S(\Q_reg_reg[0] ));
  LUT2 #(
    .INIT(4'h1)) 
    ram_empty_i_i_7
       (.I0(ram_empty_fb_i),
        .I1(ram_empty_i),
        .O(ram_empty_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module shell_axi_hwicap_0_0_rd_status_flags_as__parameterized0
   (out,
    \gc1.count_d1_reg[6] ,
    tmp_ram_rd_en,
    E,
    ram_empty_i0,
    s_axi_aclk,
    AR,
    \Q_reg_reg[0] ,
    ipbus_1,
    ipbus_2,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    p_7_in,
    Bus_RNW_reg);
  output out;
  output \gc1.count_d1_reg[6] ;
  output tmp_ram_rd_en;
  output [0:0]E;
  input ram_empty_i0;
  input s_axi_aclk;
  input [0:0]AR;
  input \Q_reg_reg[0] ;
  input ipbus_1;
  input ipbus_2;
  input \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input p_7_in;
  input Bus_RNW_reg;

  wire [0:0]AR;
  wire Bus_RNW_reg;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \Q_reg_reg[0] ;
  wire ipbus_1;
  wire ipbus_2;
  wire p_7_in;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i0;
  wire s_axi_aclk;
  wire tmp_ram_rd_en;

  assign \gc1.count_d1_reg[6]  = ram_empty_fb_i;
  assign out = ram_empty_i;
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(ipbus_1),
        .I1(ipbus_2),
        .I2(ram_empty_fb_i),
        .I3(ram_empty_i),
        .I4(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ),
        .I5(\Q_reg_reg[0] ),
        .O(tmp_ram_rd_en));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \gc1.count_d1[6]_i_1 
       (.I0(p_7_in),
        .I1(Bus_RNW_reg),
        .I2(ram_empty_i),
        .I3(ram_empty_fb_i),
        .I4(ipbus_2),
        .I5(ipbus_1),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_fb_i),
        .S(\Q_reg_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .PRE(AR),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module shell_axi_hwicap_0_0_reset_blk_ramfifo
   (out,
    \wr_data_count_i_reg[0] ,
    ram_empty_i_reg,
    ram_full_i_reg,
    ram_full_i_reg_0,
    \grstd1.grst_full.grst_f.rst_d1_reg_0 ,
    SR,
    s_axi_aclk,
    fifo_clear);
  output out;
  output [0:0]\wr_data_count_i_reg[0] ;
  output [0:0]ram_empty_i_reg;
  output ram_full_i_reg;
  output ram_full_i_reg_0;
  output \grstd1.grst_full.grst_f.rst_d1_reg_0 ;
  output [0:0]SR;
  input s_axi_aclk;
  input fifo_clear;

  wire [0:0]SR;
  wire \arst_sync_q[1]_2 ;
  wire \arst_sync_q[2]_3 ;
  wire \arst_sync_q[3]_4 ;
  wire \arst_sync_q[4]_5 ;
  wire fifo_clear;
  wire fifo_rrst_done;
  wire fifo_wrst_done;
  wire \grstd1.grst_full.grst_f.rst_d1_reg_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ;
  wire out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out__0;
  wire p_14_out_n_0;
  wire p_15_out;
  wire p_8_out;
  wire p_9_out;
  wire rd_rst_active;
  wire rd_rst_asreg;
  wire rd_rst_comb;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire \rrst_q[1]_6 ;
  wire \rrst_q[2]_7 ;
  wire \rrst_wr_q[2]_8 ;
  wire \rrst_wr_q[3]_10 ;
  wire \rrst_wr_q[4]_12 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_axi_aclk;
  wire sckt_rd_rst_d1;
  wire sckt_wr_rst_i_q;
  wire sckt_wrst_i;
  wire wr_rst_asreg;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;
  wire \wrst_ext_q[2]_9 ;
  wire \wrst_ext_q[3]_11 ;
  wire \wrst_ext_q[4]_13 ;

  assign ram_empty_i_reg[0] = rd_rst_reg[2];
  assign ram_full_i_reg = rst_d2;
  assign ram_full_i_reg_0 = rst_d3;
  assign \wr_data_count_i_reg[0] [0] = wr_rst_reg[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d1_reg_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(SR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  shell_axi_hwicap_0_0_synchronizer_ff \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[1]_2 ),
        .out(rst_wr_reg2),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_1 \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[1]_2 ),
        .\Q_reg_reg[0]_1 (\arst_sync_q[3]_4 ),
        .\Q_reg_reg[0]_2 (\arst_sync_q[4]_5 ),
        .\Q_reg_reg[0]_3 (\wrst_ext_q[4]_13 ),
        .\Q_reg_reg[0]_4 (\rrst_wr_q[4]_12 ),
        .\grstd1.grst_full.grst_f.rst_d1_reg (\grstd1.grst_full.grst_f.rst_d1_reg_0 ),
        .in0(sckt_wrst_i),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1 ),
        .out(\arst_sync_q[2]_3 ),
        .s_axi_aclk(s_axi_aclk),
        .sckt_wr_rst_i_q(sckt_wr_rst_i_q));
  shell_axi_hwicap_0_0_synchronizer_ff_2 \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[3]_4 ),
        .out(\arst_sync_q[2]_3 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_3 \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[4].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[3]_4 ),
        .out(\arst_sync_q[4]_5 ),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1 ),
        .Q(fifo_rrst_done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1 ),
        .Q(fifo_wrst_done),
        .R(1'b0));
  shell_axi_hwicap_0_0_synchronizer_ff_4 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_inst 
       (.in0(sckt_wrst_i),
        .out(\rrst_q[1]_6 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_5 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (p_9_out),
        .out(out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_6 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].wr_rst_ext_inst 
       (.in0(sckt_wrst_i),
        .out(p_8_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_7 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_inst 
       (.\Q_reg_reg[0]_0 (\rrst_q[2]_7 ),
        .out(\rrst_q[1]_6 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_8 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (p_9_out),
        .out(\rrst_wr_q[2]_8 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_9 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].wr_rst_ext_inst 
       (.\Q_reg_reg[0]_0 (\wrst_ext_q[2]_9 ),
        .out(p_8_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_10 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst 
       (.\Q_reg_reg[0]_0 (\rrst_q[2]_7 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 (\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .out(out),
        .rd_rst_active(rd_rst_active),
        .s_axi_aclk(s_axi_aclk),
        .sckt_rd_rst_d1(sckt_rd_rst_d1));
  shell_axi_hwicap_0_0_synchronizer_ff_11 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (\rrst_wr_q[3]_10 ),
        .out(\rrst_wr_q[2]_8 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_12 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].wr_rst_ext_inst 
       (.\Q_reg_reg[0]_0 (\wrst_ext_q[2]_9 ),
        .out(\wrst_ext_q[3]_11 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_13 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_inst 
       (.out(out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_14 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (\rrst_wr_q[3]_10 ),
        .\Q_reg_reg[0]_1 (\wrst_ext_q[4]_13 ),
        .\Q_reg_reg[0]_2 (\arst_sync_q[4]_5 ),
        .fifo_rrst_done(fifo_rrst_done),
        .fifo_wrst_done(fifo_wrst_done),
        .in0(sckt_wrst_i),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2 ),
        .out(\rrst_wr_q[4]_12 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_15 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst 
       (.fifo_rrst_done(fifo_rrst_done),
        .fifo_wrst_done(fifo_wrst_done),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg (\wrst_ext_q[4]_13 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1 ),
        .out(\wrst_ext_q[3]_11 ),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1 ),
        .Q(SR),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d1_reg_0 ),
        .Q(sckt_wr_rst_i_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2 ),
        .Q(sckt_wrst_i),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2 ),
        .Q(rd_rst_active),
        .S(p_14_out_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1 ),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .S(p_14_out_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.sckt_rd_rst_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(sckt_rd_rst_d1),
        .R(1'b0));
  shell_axi_hwicap_0_0_synchronizer_ff_16 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst 
       (.in0(rd_rst_asreg),
        .out(p_10_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_17 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst 
       (.in0(wr_rst_asreg),
        .out(p_11_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_18 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst 
       (.\Q_reg_reg[0]_0 (p_12_out),
        .out(p_10_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_19 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst 
       (.\Q_reg_reg[0]_0 (p_13_out),
        .out(p_11_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_20 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst 
       (.\Q_reg_reg[0]_0 (p_12_out),
        .in0(rd_rst_asreg),
        .\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1 ),
        .out(p_14_out__0),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_21 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst 
       (.\Q_reg_reg[0]_0 (p_13_out),
        .in0(wr_rst_asreg),
        .\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1 ),
        .out(p_15_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_22 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].rrst_inst 
       (.AS(rd_rst_comb),
        .in0(rd_rst_asreg),
        .out(p_14_out__0),
        .rd_rst_active(rd_rst_active),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_23 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .in0(wr_rst_asreg),
        .out(p_15_out),
        .s_axi_aclk(s_axi_aclk));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rd_rst_comb),
        .Q(rd_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rd_rst_comb),
        .Q(rd_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rd_rst_comb),
        .Q(rd_rst_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(fifo_clear),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(fifo_clear),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(fifo_clear),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(fifo_clear),
        .Q(rst_wr_reg2));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .Q(wr_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .Q(wr_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .Q(wr_rst_reg[2]));
  LUT3 #(
    .INIT(8'h02)) 
    p_14_out
       (.I0(p_12_out),
        .I1(p_14_out__0),
        .I2(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .O(p_14_out_n_0));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module shell_axi_hwicap_0_0_reset_blk_ramfifo_24
   (out,
    \wr_data_count_i_reg[0] ,
    ram_empty_i_reg,
    ram_full_i_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ,
    wr_rst_busy_i2_out,
    SR,
    prmry_in,
    s_axi_aclk,
    ram_full_i_reg_0,
    sw_reset_reg,
    fifo_rst,
    abort_onreset);
  output out;
  output [0:0]\wr_data_count_i_reg[0] ;
  output [0:0]ram_empty_i_reg;
  output ram_full_i_reg;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ;
  output wr_rst_busy_i2_out;
  output [0:0]SR;
  output prmry_in;
  input s_axi_aclk;
  input ram_full_i_reg_0;
  input sw_reset_reg;
  input fifo_rst;
  input abort_onreset;

  wire [0:0]SR;
  wire abort_onreset;
  wire \arst_sync_q[1]_17 ;
  wire \arst_sync_q[2]_18 ;
  wire \arst_sync_q[3]_19 ;
  wire \arst_sync_q[4]_20 ;
  wire fifo_rrst_done;
  wire fifo_rst;
  wire fifo_wrst_done;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_3 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ;
  wire out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out__0;
  wire p_14_out_n_0;
  wire p_15_out;
  wire p_8_out;
  wire p_9_out;
  wire prmry_in;
  wire ram_full_i_reg_0;
  wire rd_rst_active;
  wire rd_rst_asreg;
  wire rd_rst_comb;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire \rrst_q[1]_21 ;
  wire \rrst_q[2]_22 ;
  wire \rrst_wr_q[2]_23 ;
  wire \rrst_wr_q[3]_25 ;
  wire \rrst_wr_q[4]_27 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_axi_aclk;
  wire sckt_rd_rst_d1;
  wire sckt_wr_rst_i_q;
  wire sckt_wrst_i;
  wire sw_reset_reg;
  wire wr_rst_asreg;
  wire wr_rst_busy_i2_out;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;
  wire \wrst_ext_q[2]_24 ;
  wire \wrst_ext_q[3]_26 ;
  wire \wrst_ext_q[4]_28 ;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to  = rst_d3;
  assign ram_empty_i_reg[0] = rd_rst_reg[2];
  assign ram_full_i_reg = rst_d2;
  assign \wr_data_count_i_reg[0] [0] = wr_rst_reg[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_i2_out),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__0 
       (.I0(rst_d2),
        .I1(SR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  shell_axi_hwicap_0_0_synchronizer_ff_25 \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[1]_17 ),
        .out(rst_wr_reg2),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_26 \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[1]_17 ),
        .\Q_reg_reg[0]_1 (\arst_sync_q[3]_19 ),
        .\Q_reg_reg[0]_2 (\arst_sync_q[4]_20 ),
        .\Q_reg_reg[0]_3 (\wrst_ext_q[4]_28 ),
        .\Q_reg_reg[0]_4 (\rrst_wr_q[4]_27 ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_d3),
        .in0(sckt_wrst_i),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_3 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg (wr_rst_busy_i2_out),
        .out(\arst_sync_q[2]_18 ),
        .prmry_in(prmry_in),
        .ram_full_i_reg(ram_full_i_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .sckt_wr_rst_i_q(sckt_wr_rst_i_q));
  shell_axi_hwicap_0_0_synchronizer_ff_27 \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[3]_19 ),
        .out(\arst_sync_q[2]_18 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_28 \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[4].arst_sync_inst 
       (.\Q_reg_reg[0]_0 (\arst_sync_q[3]_19 ),
        .out(\arst_sync_q[4]_20 ),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1 ),
        .Q(fifo_rrst_done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1 ),
        .Q(fifo_wrst_done),
        .R(1'b0));
  shell_axi_hwicap_0_0_synchronizer_ff_29 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_inst 
       (.in0(sckt_wrst_i),
        .out(\rrst_q[1]_21 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_30 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (p_9_out),
        .out(out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_31 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].wr_rst_ext_inst 
       (.in0(sckt_wrst_i),
        .out(p_8_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_32 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_inst 
       (.\Q_reg_reg[0]_0 (\rrst_q[2]_22 ),
        .out(\rrst_q[1]_21 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_33 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (p_9_out),
        .out(\rrst_wr_q[2]_23 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_34 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].wr_rst_ext_inst 
       (.\Q_reg_reg[0]_0 (\wrst_ext_q[2]_24 ),
        .out(p_8_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_35 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst 
       (.\Q_reg_reg[0]_0 (\rrst_q[2]_22 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 (\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .out(out),
        .rd_rst_active(rd_rst_active),
        .s_axi_aclk(s_axi_aclk),
        .sckt_rd_rst_d1(sckt_rd_rst_d1));
  shell_axi_hwicap_0_0_synchronizer_ff_36 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (\rrst_wr_q[3]_25 ),
        .out(\rrst_wr_q[2]_23 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_37 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].wr_rst_ext_inst 
       (.\Q_reg_reg[0]_0 (\wrst_ext_q[2]_24 ),
        .out(\wrst_ext_q[3]_26 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_38 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_inst 
       (.out(out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_39 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst 
       (.\Q_reg_reg[0]_0 (\rrst_wr_q[3]_25 ),
        .\Q_reg_reg[0]_1 (\wrst_ext_q[4]_28 ),
        .\Q_reg_reg[0]_2 (\arst_sync_q[4]_20 ),
        .fifo_rrst_done(fifo_rrst_done),
        .fifo_wrst_done(fifo_wrst_done),
        .in0(sckt_wrst_i),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_1 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2 ),
        .out(\rrst_wr_q[4]_27 ),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_40 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst 
       (.fifo_rrst_done(fifo_rrst_done),
        .fifo_wrst_done(fifo_wrst_done),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg (\wrst_ext_q[4]_28 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst_n_1 ),
        .out(\wrst_ext_q[3]_26 ),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_3 ),
        .Q(SR),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_i2_out),
        .Q(sckt_wr_rst_i_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst_n_2 ),
        .Q(sckt_wrst_i),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2 ),
        .Q(rd_rst_active),
        .S(p_14_out_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1 ),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .S(p_14_out_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.sckt_rd_rst_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(sckt_rd_rst_d1),
        .R(1'b0));
  shell_axi_hwicap_0_0_synchronizer_ff_41 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst 
       (.in0(rd_rst_asreg),
        .out(p_10_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_42 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst 
       (.in0(wr_rst_asreg),
        .out(p_11_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_43 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst 
       (.\Q_reg_reg[0]_0 (p_12_out),
        .out(p_10_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_44 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst 
       (.\Q_reg_reg[0]_0 (p_13_out),
        .out(p_11_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_45 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst 
       (.\Q_reg_reg[0]_0 (p_12_out),
        .in0(rd_rst_asreg),
        .\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1 ),
        .out(p_14_out__0),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_46 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst 
       (.\Q_reg_reg[0]_0 (p_13_out),
        .in0(wr_rst_asreg),
        .\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1 ),
        .out(p_15_out),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_47 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].rrst_inst 
       (.AS(rd_rst_comb),
        .in0(rd_rst_asreg),
        .out(p_14_out__0),
        .rd_rst_active(rd_rst_active),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_synchronizer_ff_48 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .in0(wr_rst_asreg),
        .out(p_15_out),
        .s_axi_aclk(s_axi_aclk));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rd_rst_comb),
        .Q(rd_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rd_rst_comb),
        .Q(rd_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rd_rst_comb),
        .Q(rd_rst_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ),
        .Q(rst_rd_reg2));
  LUT3 #(
    .INIT(8'hFE)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_i_1 
       (.I0(sw_reset_reg),
        .I1(fifo_rst),
        .I2(abort_onreset),
        .O(\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg_0 ),
        .Q(rst_wr_reg2));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .Q(wr_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .Q(wr_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0 ),
        .Q(wr_rst_reg[2]));
  LUT3 #(
    .INIT(8'h02)) 
    p_14_out
       (.I0(p_12_out),
        .I1(p_14_out__0),
        .I2(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .O(p_14_out_n_0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_1
   (out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ,
    \grstd1.grst_full.grst_f.rst_d1_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    sckt_wr_rst_i_q,
    \Q_reg_reg[0]_1 ,
    \Q_reg_reg[0]_2 ,
    \Q_reg_reg[0]_3 ,
    \Q_reg_reg[0]_4 ,
    in0);
  output out;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ;
  output \grstd1.grst_full.grst_f.rst_d1_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input sckt_wr_rst_i_q;
  input \Q_reg_reg[0]_1 ;
  input \Q_reg_reg[0]_2 ;
  input \Q_reg_reg[0]_3 ;
  input \Q_reg_reg[0]_4 ;
  input [0:0]in0;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire \Q_reg_reg[0]_1 ;
  wire \Q_reg_reg[0]_2 ;
  wire \Q_reg_reg[0]_3 ;
  wire \Q_reg_reg[0]_4 ;
  wire \grstd1.grst_full.grst_f.rst_d1_reg ;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ;
  wire s_axi_aclk;
  wire sckt_wr_rst_i_q;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_i_1 
       (.I0(\grstd1.grst_full.grst_f.rst_d1_reg ),
        .I1(sckt_wr_rst_i_q),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_i_1 
       (.I0(Q_reg),
        .I1(\Q_reg_reg[0]_1 ),
        .I2(\Q_reg_reg[0]_2 ),
        .I3(\Q_reg_reg[0]_3 ),
        .I4(\Q_reg_reg[0]_4 ),
        .I5(in0),
        .O(\grstd1.grst_full.grst_f.rst_d1_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_10
   (out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ,
    sckt_rd_rst_d1,
    rd_rst_active);
  output out;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ;
  input sckt_rd_rst_d1;
  input rd_rst_active;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ;
  wire rd_rst_active;
  wire s_axi_aclk;
  wire sckt_rd_rst_d1;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h4)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1__0 
       (.I0(Q_reg),
        .I1(rd_rst_active),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ),
        .I1(Q_reg),
        .I2(sckt_rd_rst_d1),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_11
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_12
   (out,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk);
  output out;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_13
   (out,
    s_axi_aclk);
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_14
   (out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    fifo_wrst_done,
    fifo_rrst_done,
    in0,
    \Q_reg_reg[0]_1 ,
    \Q_reg_reg[0]_2 );
  output out;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input fifo_wrst_done;
  input fifo_rrst_done;
  input [0:0]in0;
  input \Q_reg_reg[0]_1 ;
  input \Q_reg_reg[0]_2 ;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire \Q_reg_reg[0]_1 ;
  wire \Q_reg_reg[0]_2 ;
  wire fifo_rrst_done;
  wire fifo_wrst_done;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1 
       (.I0(fifo_wrst_done),
        .I1(fifo_rrst_done),
        .I2(Q_reg),
        .I3(\Q_reg_reg[0]_0 ),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ));
  LUT6 #(
    .INIT(64'h7070707F70707070)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1 
       (.I0(fifo_rrst_done),
        .I1(fifo_wrst_done),
        .I2(in0),
        .I3(Q_reg),
        .I4(\Q_reg_reg[0]_1 ),
        .I5(\Q_reg_reg[0]_2 ),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_15
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ,
    out,
    s_axi_aclk,
    fifo_wrst_done,
    fifo_rrst_done);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg ;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ;
  input out;
  input s_axi_aclk;
  input fifo_wrst_done;
  input fifo_rrst_done;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire fifo_rrst_done;
  wire fifo_wrst_done;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ;
  wire out;
  wire s_axi_aclk;

  assign \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F22)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1 
       (.I0(fifo_wrst_done),
        .I1(fifo_rrst_done),
        .I2(Q_reg),
        .I3(out),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_16
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_17
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_18
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_19
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_2
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_20
   (out,
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    in0);
  output out;
  output \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input [0:0]in0;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_21
   (out,
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    in0);
  output out;
  output \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input [0:0]in0;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_22
   (AS,
    out,
    s_axi_aclk,
    rd_rst_active,
    in0);
  output [0:0]AS;
  input out;
  input s_axi_aclk;
  input rd_rst_active;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire rd_rst_active;
  wire s_axi_aclk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_active),
        .I1(Q_reg),
        .I2(in0),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_23
   (AS,
    out,
    s_axi_aclk,
    in0);
  output [0:0]AS;
  input out;
  input s_axi_aclk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire s_axi_aclk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_25
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_26
   (out,
    prmry_in,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    ram_full_i_reg,
    sckt_wr_rst_i_q,
    \Q_reg_reg[0]_1 ,
    \Q_reg_reg[0]_2 ,
    \Q_reg_reg[0]_3 ,
    \Q_reg_reg[0]_4 ,
    in0);
  output out;
  output prmry_in;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg ;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input ram_full_i_reg;
  input sckt_wr_rst_i_q;
  input \Q_reg_reg[0]_1 ;
  input \Q_reg_reg[0]_2 ;
  input \Q_reg_reg[0]_3 ;
  input \Q_reg_reg[0]_4 ;
  input [0:0]in0;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire \Q_reg_reg[0]_1 ;
  wire \Q_reg_reg[0]_2 ;
  wire \Q_reg_reg[0]_3 ;
  wire \Q_reg_reg[0]_4 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg ;
  wire prmry_in;
  wire ram_full_i_reg;
  wire s_axi_aclk;
  wire sckt_wr_rst_i_q;

  assign out = Q_reg;
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I1(ram_full_i_reg),
        .I2(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg ),
        .O(prmry_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_i_1__0 
       (.I0(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg ),
        .I1(sckt_wr_rst_i_q),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_i_1__0 
       (.I0(Q_reg),
        .I1(\Q_reg_reg[0]_1 ),
        .I2(\Q_reg_reg[0]_2 ),
        .I3(\Q_reg_reg[0]_3 ),
        .I4(\Q_reg_reg[0]_4 ),
        .I5(in0),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_27
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_28
   (out,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk);
  output out;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_29
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_3
   (out,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk);
  output out;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_30
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_31
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_32
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_33
   (out,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk);
  output out;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_34
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_35
   (out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ,
    sckt_rd_rst_d1,
    rd_rst_active);
  output out;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ;
  input sckt_rd_rst_d1;
  input rd_rst_active;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ;
  wire rd_rst_active;
  wire s_axi_aclk;
  wire sckt_rd_rst_d1;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h4)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1 
       (.I0(Q_reg),
        .I1(rd_rst_active),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1__0 
       (.I0(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0 ),
        .I1(Q_reg),
        .I2(sckt_rd_rst_d1),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_36
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_37
   (out,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk);
  output out;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_38
   (out,
    s_axi_aclk);
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_39
   (out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    fifo_wrst_done,
    fifo_rrst_done,
    in0,
    \Q_reg_reg[0]_1 ,
    \Q_reg_reg[0]_2 );
  output out;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input fifo_wrst_done;
  input fifo_rrst_done;
  input [0:0]in0;
  input \Q_reg_reg[0]_1 ;
  input \Q_reg_reg[0]_2 ;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire \Q_reg_reg[0]_1 ;
  wire \Q_reg_reg[0]_2 ;
  wire fifo_rrst_done;
  wire fifo_wrst_done;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1__0 
       (.I0(fifo_wrst_done),
        .I1(fifo_rrst_done),
        .I2(Q_reg),
        .I3(\Q_reg_reg[0]_0 ),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg ));
  LUT6 #(
    .INIT(64'h7070707F70707070)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1__0 
       (.I0(fifo_rrst_done),
        .I1(fifo_wrst_done),
        .I2(in0),
        .I3(Q_reg),
        .I4(\Q_reg_reg[0]_1 ),
        .I5(\Q_reg_reg[0]_2 ),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_4
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_40
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg ,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ,
    out,
    s_axi_aclk,
    fifo_wrst_done,
    fifo_rrst_done);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg ;
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ;
  input out;
  input s_axi_aclk;
  input fifo_wrst_done;
  input fifo_rrst_done;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire fifo_rrst_done;
  wire fifo_wrst_done;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ;
  wire out;
  wire s_axi_aclk;

  assign \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F22)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1__0 
       (.I0(fifo_wrst_done),
        .I1(fifo_rrst_done),
        .I2(Q_reg),
        .I3(out),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg_0 ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_41
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_42
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_43
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_44
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_45
   (out,
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    in0);
  output out;
  output \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input [0:0]in0;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_46
   (out,
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk,
    in0);
  output out;
  output \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;
  input [0:0]in0;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_47
   (AS,
    out,
    s_axi_aclk,
    rd_rst_active,
    in0);
  output [0:0]AS;
  input out;
  input s_axi_aclk;
  input rd_rst_active;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire rd_rst_active;
  wire s_axi_aclk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 
       (.I0(rd_rst_active),
        .I1(Q_reg),
        .I2(in0),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_48
   (AS,
    out,
    s_axi_aclk,
    in0);
  output [0:0]AS;
  input out;
  input s_axi_aclk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire s_axi_aclk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1__0 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_5
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_6
   (out,
    in0,
    s_axi_aclk);
  output out;
  input [0:0]in0;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_7
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_8
   (out,
    \Q_reg_reg[0]_0 ,
    s_axi_aclk);
  output out;
  input \Q_reg_reg[0]_0 ;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Q_reg_reg[0]_0 ),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff_9
   (\Q_reg_reg[0]_0 ,
    out,
    s_axi_aclk);
  output \Q_reg_reg[0]_0 ;
  input out;
  input s_axi_aclk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire out;
  wire s_axi_aclk;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized0
   (D,
    Q,
    s_axi_aclk,
    \Q_reg_reg[0]_0 );
  output [5:0]D;
  input [5:0]Q;
  input s_axi_aclk;
  input \Q_reg_reg[0]_0 ;

  wire [5:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign D[5:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[5]),
        .Q(Q_reg[5]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized1
   (D,
    Q,
    s_axi_aclk,
    SR);
  output [5:0]D;
  input [5:0]Q;
  input s_axi_aclk;
  input [0:0]SR;

  wire [5:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]Q_reg;
  wire [0:0]SR;
  wire s_axi_aclk;

  assign D[5:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(Q[5]),
        .Q(Q_reg[5]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized2
   (out,
    D,
    \Q_reg_reg[5]_0 ,
    s_axi_aclk,
    \Q_reg_reg[0]_0 );
  output [5:0]out;
  output [1:0]D;
  input [5:0]\Q_reg_reg[5]_0 ;
  input s_axi_aclk;
  input \Q_reg_reg[0]_0 ;

  wire [1:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire [5:0]\Q_reg_reg[5]_0 ;
  wire s_axi_aclk;

  assign out[5:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(\Q_reg_reg[5]_0 [0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(\Q_reg_reg[5]_0 [1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(\Q_reg_reg[5]_0 [2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(\Q_reg_reg[5]_0 [3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(\Q_reg_reg[5]_0 [4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(\Q_reg_reg[5]_0 [5]),
        .Q(Q_reg[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.wr_pntr_bin[3]_i_1__0 
       (.I0(Q_reg[4]),
        .I1(Q_reg[3]),
        .I2(Q_reg[5]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[4]_i_1__0 
       (.I0(Q_reg[4]),
        .I1(Q_reg[5]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized3
   (out,
    D,
    \Q_reg_reg[5]_0 ,
    s_axi_aclk,
    SR);
  output [5:0]out;
  output [1:0]D;
  input [5:0]\Q_reg_reg[5]_0 ;
  input s_axi_aclk;
  input [0:0]SR;

  wire [1:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]Q_reg;
  wire [5:0]\Q_reg_reg[5]_0 ;
  wire [0:0]SR;
  wire s_axi_aclk;

  assign out[5:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Q_reg_reg[5]_0 [0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Q_reg_reg[5]_0 [1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Q_reg_reg[5]_0 [2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Q_reg_reg[5]_0 [3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Q_reg_reg[5]_0 [4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Q_reg_reg[5]_0 [5]),
        .Q(Q_reg[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.rd_pntr_bin[3]_i_1__0 
       (.I0(Q_reg[4]),
        .I1(Q_reg[3]),
        .I2(Q_reg[5]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[4]_i_1__0 
       (.I0(Q_reg[4]),
        .I1(Q_reg[5]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized4
   (D,
    Q,
    s_axi_aclk,
    \Q_reg_reg[0]_0 );
  output [6:0]D;
  input [6:0]Q;
  input s_axi_aclk;
  input \Q_reg_reg[0]_0 ;

  wire [6:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [6:0]Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire s_axi_aclk;

  assign D[6:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(Q[6]),
        .Q(Q_reg[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized5
   (D,
    Q,
    s_axi_aclk,
    AR);
  output [6:0]D;
  input [6:0]Q;
  input s_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [6:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [6:0]Q_reg;
  wire s_axi_aclk;

  assign D[6:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[6]),
        .Q(Q_reg[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized6
   (out,
    \gnxpm_cdc.wr_pntr_bin_reg[5] ,
    D,
    s_axi_aclk,
    \Q_reg_reg[0]_0 );
  output [0:0]out;
  output [5:0]\gnxpm_cdc.wr_pntr_bin_reg[5] ;
  input [6:0]D;
  input s_axi_aclk;
  input \Q_reg_reg[0]_0 ;

  wire [6:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [6:0]Q_reg;
  wire \Q_reg_reg[0]_0 ;
  wire [5:0]\gnxpm_cdc.wr_pntr_bin_reg[5] ;
  wire s_axi_aclk;

  assign out[0] = Q_reg[6];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(D[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(D[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(D[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\Q_reg_reg[0]_0 ),
        .D(D[6]),
        .Q(Q_reg[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.wr_pntr_bin[0]_i_1 
       (.I0(Q_reg[2]),
        .I1(Q_reg[3]),
        .I2(Q_reg[0]),
        .I3(Q_reg[1]),
        .I4(\gnxpm_cdc.wr_pntr_bin_reg[5] [4]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[5] [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[1]_i_1 
       (.I0(Q_reg[3]),
        .I1(Q_reg[1]),
        .I2(Q_reg[2]),
        .I3(Q_reg[6]),
        .I4(Q_reg[4]),
        .I5(Q_reg[5]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[5] [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.wr_pntr_bin[2]_i_1 
       (.I0(Q_reg[4]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(Q_reg[6]),
        .I4(Q_reg[5]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[5] [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.wr_pntr_bin[3]_i_1 
       (.I0(Q_reg[4]),
        .I1(Q_reg[3]),
        .I2(Q_reg[6]),
        .I3(Q_reg[5]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[5] [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.wr_pntr_bin[4]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[4]),
        .I2(Q_reg[6]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[5] [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[5]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[6]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[5] [5]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module shell_axi_hwicap_0_0_synchronizer_ff__parameterized7
   (out,
    \gnxpm_cdc.rd_pntr_bin_reg[5] ,
    D,
    s_axi_aclk,
    AR);
  output [0:0]out;
  output [5:0]\gnxpm_cdc.rd_pntr_bin_reg[5] ;
  input [6:0]D;
  input s_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [6:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [6:0]Q_reg;
  wire [5:0]\gnxpm_cdc.rd_pntr_bin_reg[5] ;
  wire s_axi_aclk;

  assign out[0] = Q_reg[6];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q_reg[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.rd_pntr_bin[0]_i_1 
       (.I0(Q_reg[2]),
        .I1(Q_reg[3]),
        .I2(Q_reg[0]),
        .I3(Q_reg[1]),
        .I4(\gnxpm_cdc.rd_pntr_bin_reg[5] [4]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[5] [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[1]_i_1 
       (.I0(Q_reg[3]),
        .I1(Q_reg[1]),
        .I2(Q_reg[2]),
        .I3(Q_reg[6]),
        .I4(Q_reg[4]),
        .I5(Q_reg[5]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[5] [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.rd_pntr_bin[2]_i_1 
       (.I0(Q_reg[4]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(Q_reg[6]),
        .I4(Q_reg[5]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[5] [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.rd_pntr_bin[3]_i_1 
       (.I0(Q_reg[4]),
        .I1(Q_reg[3]),
        .I2(Q_reg[6]),
        .I3(Q_reg[5]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[5] [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.rd_pntr_bin[4]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[4]),
        .I2(Q_reg[6]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[5] [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[5]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[6]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[5] [5]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module shell_axi_hwicap_0_0_wr_bin_cntr
   (ram_full_i_reg,
    \gnxpm_cdc.wr_pntr_gc_reg[4] ,
    Q,
    \gic0.gc1.count_reg[0]_0 ,
    S,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    out,
    p_8_in,
    busip_1,
    Bus_RNW_reg,
    \Q_reg_reg[0] ,
    \gnxpm_cdc.rd_pntr_bin_reg[5] ,
    ram_full_fb_i_reg,
    SR,
    E,
    s_axi_aclk);
  output ram_full_i_reg;
  output [4:0]\gnxpm_cdc.wr_pntr_gc_reg[4] ;
  output [5:0]Q;
  output \gic0.gc1.count_reg[0]_0 ;
  output [5:0]S;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input out;
  input p_8_in;
  input busip_1;
  input Bus_RNW_reg;
  input \Q_reg_reg[0] ;
  input [5:0]\gnxpm_cdc.rd_pntr_bin_reg[5] ;
  input ram_full_fb_i_reg;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire Bus_RNW_reg;
  wire [0:0]E;
  wire [5:0]Q;
  wire \Q_reg_reg[0] ;
  wire [5:0]S;
  wire [0:0]SR;
  wire busip_1;
  wire \gic0.gc1.count_reg[0]_0 ;
  wire [5:0]\gnxpm_cdc.rd_pntr_bin_reg[5] ;
  wire [4:0]\gnxpm_cdc.wr_pntr_gc_reg[4] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire [5:0]p_14_out;
  wire p_8_in;
  wire [5:0]plusOp;
  wire ram_full_fb_i_reg;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_3__0_n_0;
  wire ram_full_i_i_4_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_i_6_n_0;
  wire ram_full_i_i_7_n_0;
  wire ram_full_i_i_8_n_0;
  wire ram_full_i_reg;
  wire s_axi_aclk;
  wire [5:0]wr_pntr_plus2;
  wire [5:0]wr_pntr_plus3;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4 
       (.I0(busip_1),
        .I1(Bus_RNW_reg),
        .O(\gic0.gc1.count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc1.count[0]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[1]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .I1(wr_pntr_plus3[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[2]_i_1 
       (.I0(wr_pntr_plus3[1]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[3]_i_1 
       (.I0(wr_pntr_plus3[2]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[1]),
        .I3(wr_pntr_plus3[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc1.count[4]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .I1(wr_pntr_plus3[1]),
        .I2(wr_pntr_plus3[2]),
        .I3(wr_pntr_plus3[3]),
        .I4(wr_pntr_plus3[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc1.count[5]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .I1(wr_pntr_plus3[1]),
        .I2(wr_pntr_plus3[4]),
        .I3(wr_pntr_plus3[3]),
        .I4(wr_pntr_plus3[2]),
        .I5(wr_pntr_plus3[5]),
        .O(plusOp[5]));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[0]),
        .Q(wr_pntr_plus2[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[1]),
        .Q(wr_pntr_plus2[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[2]),
        .Q(wr_pntr_plus2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[3]),
        .Q(wr_pntr_plus2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[4]),
        .Q(wr_pntr_plus2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[5]),
        .Q(wr_pntr_plus2[5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[0]),
        .Q(p_14_out[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[1]),
        .Q(p_14_out[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[2]),
        .Q(p_14_out[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[3]),
        .Q(p_14_out[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[4]),
        .Q(p_14_out[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[5]),
        .Q(p_14_out[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[5]),
        .Q(Q[5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[0]),
        .Q(wr_pntr_plus3[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[1]),
        .Q(wr_pntr_plus3[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[2]),
        .Q(wr_pntr_plus3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[3]),
        .Q(wr_pntr_plus3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[4]),
        .Q(wr_pntr_plus3[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[5]),
        .Q(wr_pntr_plus3[5]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gnxpm_cdc.wr_pntr_gc_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\gnxpm_cdc.wr_pntr_gc_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\gnxpm_cdc.wr_pntr_gc_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\gnxpm_cdc.wr_pntr_gc_reg[4] [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\gnxpm_cdc.wr_pntr_gc_reg[4] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(Q[5]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(Q[4]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(Q[3]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(Q[2]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_5
       (.I0(Q[1]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_6
       (.I0(Q[0]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    ram_full_i_i_1
       (.I0(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I1(ram_full_i_i_2_n_0),
        .I2(ram_full_i_i_3__0_n_0),
        .I3(out),
        .I4(p_8_in),
        .I5(ram_full_i_i_4_n_0),
        .O(ram_full_i_reg));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    ram_full_i_i_2
       (.I0(ram_full_i_i_5_n_0),
        .I1(p_14_out[4]),
        .I2(\gnxpm_cdc.rd_pntr_bin_reg[5] [4]),
        .I3(p_14_out[5]),
        .I4(\gnxpm_cdc.rd_pntr_bin_reg[5] [5]),
        .I5(ram_full_i_i_6_n_0),
        .O(ram_full_i_i_2_n_0));
  LUT5 #(
    .INIT(32'h90090000)) 
    ram_full_i_i_3__0
       (.I0(\gnxpm_cdc.rd_pntr_bin_reg[5] [2]),
        .I1(wr_pntr_plus2[2]),
        .I2(\gnxpm_cdc.rd_pntr_bin_reg[5] [3]),
        .I3(wr_pntr_plus2[3]),
        .I4(ram_full_i_i_7_n_0),
        .O(ram_full_i_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    ram_full_i_i_4
       (.I0(busip_1),
        .I1(Bus_RNW_reg),
        .I2(ram_full_i_i_8_n_0),
        .I3(\Q_reg_reg[0] ),
        .O(ram_full_i_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_5
       (.I0(p_14_out[3]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [3]),
        .I2(p_14_out[2]),
        .I3(\gnxpm_cdc.rd_pntr_bin_reg[5] [2]),
        .O(ram_full_i_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_6
       (.I0(p_14_out[1]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [1]),
        .I2(p_14_out[0]),
        .I3(\gnxpm_cdc.rd_pntr_bin_reg[5] [0]),
        .O(ram_full_i_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_7
       (.I0(wr_pntr_plus2[1]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[5] [1]),
        .I2(wr_pntr_plus2[0]),
        .I3(\gnxpm_cdc.rd_pntr_bin_reg[5] [0]),
        .O(ram_full_i_i_7_n_0));
  LUT6 #(
    .INIT(64'h0009000000000009)) 
    ram_full_i_i_8
       (.I0(\gnxpm_cdc.rd_pntr_bin_reg[5] [4]),
        .I1(wr_pntr_plus2[4]),
        .I2(ram_full_fb_i_reg),
        .I3(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I4(\gnxpm_cdc.rd_pntr_bin_reg[5] [5]),
        .I5(wr_pntr_plus2[5]),
        .O(ram_full_i_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module shell_axi_hwicap_0_0_wr_bin_cntr__parameterized0
   (ram_full_i_reg,
    S,
    Q,
    RD_PNTR_WR,
    ram_full_fb_i_reg,
    rdfifo_wren,
    prmry_in,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    SR,
    E,
    s_axi_aclk);
  output ram_full_i_reg;
  output [6:0]S;
  output [6:0]Q;
  input [6:0]RD_PNTR_WR;
  input ram_full_fb_i_reg;
  input rdfifo_wren;
  input prmry_in;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]RD_PNTR_WR;
  wire [6:0]S;
  wire [0:0]SR;
  wire \gic0.gc1.count[6]_i_2_n_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire [6:0]p_14_out;
  wire [6:0]plusOp__0;
  wire prmry_in;
  wire ram_full_fb_i_reg;
  wire ram_full_i_i_2__0_n_0;
  wire ram_full_i_i_3_n_0;
  wire ram_full_i_i_4__0_n_0;
  wire ram_full_i_i_5__0_n_0;
  wire ram_full_i_i_6__0_n_0;
  wire ram_full_i_i_7__0_n_0;
  wire ram_full_i_i_8__0_n_0;
  wire ram_full_i_reg;
  wire rdfifo_wren;
  wire s_axi_aclk;
  wire [6:0]wr_pntr_plus2;
  wire [6:0]wr_pntr_plus3;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc1.count[0]_i_1__0 
       (.I0(wr_pntr_plus3[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[1]_i_1__0 
       (.I0(wr_pntr_plus3[0]),
        .I1(wr_pntr_plus3[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[2]_i_1__0 
       (.I0(wr_pntr_plus3[1]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[3]_i_1__0 
       (.I0(wr_pntr_plus3[2]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[1]),
        .I3(wr_pntr_plus3[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc1.count[4]_i_1__0 
       (.I0(wr_pntr_plus3[3]),
        .I1(wr_pntr_plus3[1]),
        .I2(wr_pntr_plus3[0]),
        .I3(wr_pntr_plus3[2]),
        .I4(wr_pntr_plus3[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc1.count[5]_i_1__0 
       (.I0(wr_pntr_plus3[1]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[2]),
        .I3(wr_pntr_plus3[3]),
        .I4(wr_pntr_plus3[4]),
        .I5(wr_pntr_plus3[5]),
        .O(plusOp__0[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc1.count[6]_i_1 
       (.I0(\gic0.gc1.count[6]_i_2_n_0 ),
        .I1(wr_pntr_plus3[5]),
        .I2(wr_pntr_plus3[4]),
        .I3(wr_pntr_plus3[3]),
        .I4(wr_pntr_plus3[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gic0.gc1.count[6]_i_2 
       (.I0(wr_pntr_plus3[1]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[2]),
        .O(\gic0.gc1.count[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[0]),
        .Q(wr_pntr_plus2[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[1]),
        .Q(wr_pntr_plus2[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[2]),
        .Q(wr_pntr_plus2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[3]),
        .Q(wr_pntr_plus2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[4]),
        .Q(wr_pntr_plus2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[5]),
        .Q(wr_pntr_plus2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[6]),
        .Q(wr_pntr_plus2[6]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[0]),
        .Q(p_14_out[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[1]),
        .Q(p_14_out[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[2]),
        .Q(p_14_out[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[3]),
        .Q(p_14_out[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[4]),
        .Q(p_14_out[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[5]),
        .Q(p_14_out[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus2[6]),
        .Q(p_14_out[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_14_out[6]),
        .Q(Q[6]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(wr_pntr_plus3[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(wr_pntr_plus3[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus3[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(wr_pntr_plus3[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(wr_pntr_plus3[6]),
        .R(SR));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__0
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__0
       (.I0(Q[5]),
        .I1(RD_PNTR_WR[5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__0
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__0
       (.I0(Q[3]),
        .I1(RD_PNTR_WR[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_5__0
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_6__0
       (.I0(Q[1]),
        .I1(RD_PNTR_WR[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_7
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF82000082)) 
    ram_full_i_i_1__0
       (.I0(ram_full_i_i_2__0_n_0),
        .I1(p_14_out[5]),
        .I2(RD_PNTR_WR[5]),
        .I3(p_14_out[6]),
        .I4(RD_PNTR_WR[6]),
        .I5(ram_full_i_i_3_n_0),
        .O(ram_full_i_reg));
  LUT5 #(
    .INIT(32'h08000008)) 
    ram_full_i_i_2__0
       (.I0(ram_full_i_i_4__0_n_0),
        .I1(ram_full_i_i_5__0_n_0),
        .I2(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I3(RD_PNTR_WR[0]),
        .I4(p_14_out[0]),
        .O(ram_full_i_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000820000)) 
    ram_full_i_i_3
       (.I0(ram_full_i_i_6__0_n_0),
        .I1(RD_PNTR_WR[5]),
        .I2(wr_pntr_plus2[5]),
        .I3(ram_full_fb_i_reg),
        .I4(rdfifo_wren),
        .I5(prmry_in),
        .O(ram_full_i_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_4__0
       (.I0(p_14_out[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(p_14_out[1]),
        .I3(RD_PNTR_WR[1]),
        .O(ram_full_i_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_5__0
       (.I0(p_14_out[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(p_14_out[3]),
        .I3(RD_PNTR_WR[3]),
        .O(ram_full_i_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    ram_full_i_i_6__0
       (.I0(ram_full_i_i_7__0_n_0),
        .I1(wr_pntr_plus2[6]),
        .I2(RD_PNTR_WR[6]),
        .I3(wr_pntr_plus2[4]),
        .I4(RD_PNTR_WR[4]),
        .I5(ram_full_i_i_8__0_n_0),
        .O(ram_full_i_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_7__0
       (.I0(wr_pntr_plus2[3]),
        .I1(RD_PNTR_WR[3]),
        .I2(wr_pntr_plus2[2]),
        .I3(RD_PNTR_WR[2]),
        .O(ram_full_i_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_8__0
       (.I0(wr_pntr_plus2[1]),
        .I1(RD_PNTR_WR[1]),
        .I2(wr_pntr_plus2[0]),
        .I3(RD_PNTR_WR[0]),
        .O(ram_full_i_i_8__0_n_0));
endmodule

(* ORIG_REF_NAME = "wr_dc_as" *) 
module shell_axi_hwicap_0_0_wr_dc_as
   (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    Q,
    S,
    sw_reset_reg,
    s_axi_wdata,
    Bus_RNW_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    s_axi_aclk,
    AR);
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input [4:0]Q;
  input [5:0]S;
  input sw_reset_reg;
  input [0:0]s_axi_wdata;
  input Bus_RNW_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input s_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire Bus_RNW_reg_reg;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire [4:0]Q;
  wire [5:0]S;
  wire minusOp_carry_n_10;
  wire minusOp_carry_n_11;
  wire minusOp_carry_n_12;
  wire minusOp_carry_n_13;
  wire minusOp_carry_n_14;
  wire minusOp_carry_n_15;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;
  wire [7:3]NLW_minusOp_carry_CO_UNCONNECTED;
  wire [7:6]NLW_minusOp_carry_DI_UNCONNECTED;
  wire [7:6]NLW_minusOp_carry_O_UNCONNECTED;
  wire [7:6]NLW_minusOp_carry_S_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFF1FFF11FFF1)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [5]),
        .I1(sw_reset_reg),
        .I2(s_axi_wdata),
        .I3(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2_n_0 ),
        .I4(Bus_RNW_reg_reg),
        .I5(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [2]),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [3]),
        .I2(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [0]),
        .I3(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [1]),
        .I4(sw_reset_reg),
        .I5(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [4]),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2_n_0 ));
  CARRY8 minusOp_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_minusOp_carry_CO_UNCONNECTED[7:5],minusOp_carry_n_3,NLW_minusOp_carry_CO_UNCONNECTED[3],minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .DI({NLW_minusOp_carry_DI_UNCONNECTED[7:6],1'b0,Q}),
        .O({NLW_minusOp_carry_O_UNCONNECTED[7:6],minusOp_carry_n_10,minusOp_carry_n_11,minusOp_carry_n_12,minusOp_carry_n_13,minusOp_carry_n_14,minusOp_carry_n_15}),
        .S({NLW_minusOp_carry_S_UNCONNECTED[7:6],S}));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_15),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_14),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_13),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_12),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_11),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_10),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 [5]));
endmodule

(* ORIG_REF_NAME = "wr_dc_as" *) 
module shell_axi_hwicap_0_0_wr_dc_as__parameterized0
   (gate_signal_p_reg,
    Q,
    S,
    gate_signal_p_reg_0,
    s_axi_aclk,
    AR);
  output gate_signal_p_reg;
  input [5:0]Q;
  input [6:0]S;
  input gate_signal_p_reg_0;
  input s_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [5:0]Q;
  wire [6:0]S;
  wire gate_signal_p_i_2_n_0;
  wire gate_signal_p_i_3_n_0;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire minusOp_carry_n_10;
  wire minusOp_carry_n_11;
  wire minusOp_carry_n_12;
  wire minusOp_carry_n_13;
  wire minusOp_carry_n_14;
  wire minusOp_carry_n_15;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire minusOp_carry_n_9;
  wire s_axi_aclk;
  wire \wr_data_count_i_reg_n_0_[0] ;
  wire \wr_data_count_i_reg_n_0_[1] ;
  wire \wr_data_count_i_reg_n_0_[2] ;
  wire \wr_data_count_i_reg_n_0_[3] ;
  wire \wr_data_count_i_reg_n_0_[4] ;
  wire \wr_data_count_i_reg_n_0_[5] ;
  wire \wr_data_count_i_reg_n_0_[6] ;
  wire [7:3]NLW_minusOp_carry_CO_UNCONNECTED;
  wire [7:7]NLW_minusOp_carry_DI_UNCONNECTED;
  wire [7:7]NLW_minusOp_carry_O_UNCONNECTED;
  wire [7:7]NLW_minusOp_carry_S_UNCONNECTED;

  LUT4 #(
    .INIT(16'hAEAA)) 
    gate_signal_p_i_1
       (.I0(gate_signal_p_i_2_n_0),
        .I1(\wr_data_count_i_reg_n_0_[6] ),
        .I2(gate_signal_p_i_3_n_0),
        .I3(gate_signal_p_reg_0),
        .O(gate_signal_p_reg));
  LUT5 #(
    .INIT(32'h80000000)) 
    gate_signal_p_i_2
       (.I0(\wr_data_count_i_reg_n_0_[5] ),
        .I1(\wr_data_count_i_reg_n_0_[3] ),
        .I2(\wr_data_count_i_reg_n_0_[2] ),
        .I3(\wr_data_count_i_reg_n_0_[4] ),
        .I4(\wr_data_count_i_reg_n_0_[6] ),
        .O(gate_signal_p_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    gate_signal_p_i_3
       (.I0(\wr_data_count_i_reg_n_0_[4] ),
        .I1(\wr_data_count_i_reg_n_0_[2] ),
        .I2(\wr_data_count_i_reg_n_0_[0] ),
        .I3(\wr_data_count_i_reg_n_0_[1] ),
        .I4(\wr_data_count_i_reg_n_0_[3] ),
        .I5(\wr_data_count_i_reg_n_0_[5] ),
        .O(gate_signal_p_i_3_n_0));
  CARRY8 minusOp_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_minusOp_carry_CO_UNCONNECTED[7:6],minusOp_carry_n_2,minusOp_carry_n_3,NLW_minusOp_carry_CO_UNCONNECTED[3],minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .DI({NLW_minusOp_carry_DI_UNCONNECTED[7],1'b0,Q}),
        .O({NLW_minusOp_carry_O_UNCONNECTED[7],minusOp_carry_n_9,minusOp_carry_n_10,minusOp_carry_n_11,minusOp_carry_n_12,minusOp_carry_n_13,minusOp_carry_n_14,minusOp_carry_n_15}),
        .S({NLW_minusOp_carry_S_UNCONNECTED[7],S}));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_15),
        .Q(\wr_data_count_i_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_14),
        .Q(\wr_data_count_i_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_13),
        .Q(\wr_data_count_i_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_12),
        .Q(\wr_data_count_i_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_11),
        .Q(\wr_data_count_i_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_10),
        .Q(\wr_data_count_i_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_count_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(minusOp_carry_n_9),
        .Q(\wr_data_count_i_reg_n_0_[6] ));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module shell_axi_hwicap_0_0_wr_logic
   (Q,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    E,
    \gic0.gc1.count_reg[0] ,
    \gnxpm_cdc.wr_pntr_gc_reg[4] ,
    IP2Bus_WrAck_reg,
    s_axi_aclk,
    out,
    SR,
    sw_reset_reg,
    s_axi_wdata,
    Bus_RNW_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    p_8_in,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    \Q_reg_reg[0] ,
    busip_1,
    Bus_RNW_reg,
    \gnxpm_cdc.rd_pntr_bin_reg[5] ,
    AR);
  output [5:0]Q;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output [0:0]E;
  output \gic0.gc1.count_reg[0] ;
  output [4:0]\gnxpm_cdc.wr_pntr_gc_reg[4] ;
  output IP2Bus_WrAck_reg;
  input s_axi_aclk;
  input out;
  input [0:0]SR;
  input sw_reset_reg;
  input [0:0]s_axi_wdata;
  input Bus_RNW_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input p_8_in;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input \Q_reg_reg[0] ;
  input busip_1;
  input Bus_RNW_reg;
  input [5:0]\gnxpm_cdc.rd_pntr_bin_reg[5] ;
  input [0:0]AR;

  wire [0:0]AR;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [5:0]\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire IP2Bus_WrAck_reg;
  wire [5:0]Q;
  wire \Q_reg_reg[0] ;
  wire [0:0]SR;
  wire busip_1;
  wire \gic0.gc1.count_reg[0] ;
  wire [5:0]\gnxpm_cdc.rd_pntr_bin_reg[5] ;
  wire [4:0]\gnxpm_cdc.wr_pntr_gc_reg[4] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \gwas.wsts_n_1 ;
  wire out;
  wire p_10_out;
  wire p_8_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sw_reset_reg;
  wire wpntr_n_0;
  wire wpntr_n_13;
  wire wpntr_n_14;
  wire wpntr_n_15;
  wire wpntr_n_16;
  wire wpntr_n_17;
  wire wpntr_n_18;

  shell_axi_hwicap_0_0_wr_dc_as \gwas.gwdc0.wdc 
       (.AR(AR),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .Q(Q[4:0]),
        .S({wpntr_n_13,wpntr_n_14,wpntr_n_15,wpntr_n_16,wpntr_n_17,wpntr_n_18}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sw_reset_reg(sw_reset_reg));
  shell_axi_hwicap_0_0_wr_status_flags_as \gwas.wsts 
       (.E(E),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .\Q_reg_reg[0] (\Q_reg_reg[0] ),
        .SR(SR),
        .busip_1_reg(\gic0.gc1.count_reg[0] ),
        .\gic0.gc1.count_reg[0] (\gwas.wsts_n_1 ),
        .\grstd1.grst_full.grst_f.rst_d2_reg (out),
        .\grstd1.grst_full.grst_f.rst_d3_reg (wpntr_n_0),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(p_10_out),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_wr_bin_cntr wpntr
       (.Bus_RNW_reg(Bus_RNW_reg),
        .E(E),
        .Q(Q),
        .\Q_reg_reg[0] (\Q_reg_reg[0] ),
        .S({wpntr_n_13,wpntr_n_14,wpntr_n_15,wpntr_n_16,wpntr_n_17,wpntr_n_18}),
        .SR(SR),
        .busip_1(busip_1),
        .\gic0.gc1.count_reg[0]_0 (\gic0.gc1.count_reg[0] ),
        .\gnxpm_cdc.rd_pntr_bin_reg[5] (\gnxpm_cdc.rd_pntr_bin_reg[5] ),
        .\gnxpm_cdc.wr_pntr_gc_reg[4] (\gnxpm_cdc.wr_pntr_gc_reg[4] ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(p_10_out),
        .p_8_in(p_8_in),
        .ram_full_fb_i_reg(\gwas.wsts_n_1 ),
        .ram_full_i_reg(wpntr_n_0),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module shell_axi_hwicap_0_0_wr_logic__parameterized0
   (out,
    Q,
    E,
    gate_signal_p_reg,
    s_axi_aclk,
    \grstd1.grst_full.grst_f.rst_d2_reg ,
    SR,
    rdfifo_wren,
    wr_rst_busy_i2_out,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    RD_PNTR_WR,
    prmry_in,
    gate_signal_p_reg_0,
    AR);
  output out;
  output [6:0]Q;
  output [0:0]E;
  output gate_signal_p_reg;
  input s_axi_aclk;
  input \grstd1.grst_full.grst_f.rst_d2_reg ;
  input [0:0]SR;
  input rdfifo_wren;
  input wr_rst_busy_i2_out;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [6:0]RD_PNTR_WR;
  input prmry_in;
  input gate_signal_p_reg_0;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]RD_PNTR_WR;
  wire [0:0]SR;
  wire gate_signal_p_reg;
  wire gate_signal_p_reg_0;
  wire \grstd1.grst_full.grst_f.rst_d2_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \gwas.wsts_n_1 ;
  wire out;
  wire prmry_in;
  wire rdfifo_wren;
  wire s_axi_aclk;
  wire wpntr_n_0;
  wire wpntr_n_1;
  wire wpntr_n_2;
  wire wpntr_n_3;
  wire wpntr_n_4;
  wire wpntr_n_5;
  wire wpntr_n_6;
  wire wpntr_n_7;
  wire wr_rst_busy_i2_out;

  shell_axi_hwicap_0_0_wr_dc_as__parameterized0 \gwas.gwdc0.wdc 
       (.AR(AR),
        .Q(Q[5:0]),
        .S({wpntr_n_1,wpntr_n_2,wpntr_n_3,wpntr_n_4,wpntr_n_5,wpntr_n_6,wpntr_n_7}),
        .gate_signal_p_reg(gate_signal_p_reg),
        .gate_signal_p_reg_0(gate_signal_p_reg_0),
        .s_axi_aclk(s_axi_aclk));
  shell_axi_hwicap_0_0_wr_status_flags_as__parameterized0 \gwas.wsts 
       (.E(E),
        .SR(SR),
        .\gic0.gc1.count_d2_reg[5] (wpntr_n_0),
        .\gic0.gc1.count_reg[0] (\gwas.wsts_n_1 ),
        .\grstd1.grst_full.grst_f.rst_d2_reg (\grstd1.grst_full.grst_f.rst_d2_reg ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(out),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk),
        .wr_rst_busy_i2_out(wr_rst_busy_i2_out));
  shell_axi_hwicap_0_0_wr_bin_cntr__parameterized0 wpntr
       (.E(E),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .S({wpntr_n_1,wpntr_n_2,wpntr_n_3,wpntr_n_4,wpntr_n_5,wpntr_n_6,wpntr_n_7}),
        .SR(SR),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .prmry_in(prmry_in),
        .ram_full_fb_i_reg(\gwas.wsts_n_1 ),
        .ram_full_i_reg(wpntr_n_0),
        .rdfifo_wren(rdfifo_wren),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module shell_axi_hwicap_0_0_wr_status_flags_as
   (out,
    \gic0.gc1.count_reg[0] ,
    E,
    IP2Bus_WrAck_reg,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    s_axi_aclk,
    \grstd1.grst_full.grst_f.rst_d2_reg ,
    SR,
    busip_1_reg,
    p_8_in,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    \Q_reg_reg[0] );
  output out;
  output \gic0.gc1.count_reg[0] ;
  output [0:0]E;
  output IP2Bus_WrAck_reg;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input s_axi_aclk;
  input \grstd1.grst_full.grst_f.rst_d2_reg ;
  input [0:0]SR;
  input busip_1_reg;
  input p_8_in;
  input \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  input \Q_reg_reg[0] ;

  wire [0:0]E;
  wire IP2Bus_WrAck_reg;
  wire \Q_reg_reg[0] ;
  wire [0:0]SR;
  wire busip_1_reg;
  wire \grstd1.grst_full.grst_f.rst_d2_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  wire p_8_in;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire s_axi_aclk;

  assign \gic0.gc1.count_reg[0]  = ram_full_fb_i;
  assign out = ram_full_i;
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(busip_1_reg),
        .I1(ram_full_fb_i),
        .I2(p_8_in),
        .I3(\grstd1.grst_full.grst_f.rst_d3_reg_0 ),
        .I4(ram_full_i),
        .I5(\Q_reg_reg[0] ),
        .O(E));
  LUT2 #(
    .INIT(4'h1)) 
    IP2Bus_WrAck_i_3
       (.I0(ram_full_i),
        .I1(\grstd1.grst_full.grst_f.rst_d3_reg_0 ),
        .O(IP2Bus_WrAck_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .Q(ram_full_fb_i),
        .S(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_i));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module shell_axi_hwicap_0_0_wr_status_flags_as__parameterized0
   (out,
    \gic0.gc1.count_reg[0] ,
    E,
    \gic0.gc1.count_d2_reg[5] ,
    s_axi_aclk,
    \grstd1.grst_full.grst_f.rst_d2_reg ,
    SR,
    rdfifo_wren,
    wr_rst_busy_i2_out,
    \grstd1.grst_full.grst_f.rst_d3_reg );
  output out;
  output \gic0.gc1.count_reg[0] ;
  output [0:0]E;
  input \gic0.gc1.count_d2_reg[5] ;
  input s_axi_aclk;
  input \grstd1.grst_full.grst_f.rst_d2_reg ;
  input [0:0]SR;
  input rdfifo_wren;
  input wr_rst_busy_i2_out;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;

  wire [0:0]E;
  wire [0:0]SR;
  wire \gic0.gc1.count_d2_reg[5] ;
  wire \grstd1.grst_full.grst_f.rst_d2_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire rdfifo_wren;
  wire s_axi_aclk;
  wire wr_rst_busy_i2_out;

  assign \gic0.gc1.count_reg[0]  = ram_full_fb_i;
  assign out = ram_full_i;
  LUT5 #(
    .INIT(32'h00000004)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2__0 
       (.I0(ram_full_fb_i),
        .I1(rdfifo_wren),
        .I2(wr_rst_busy_i2_out),
        .I3(ram_full_i),
        .I4(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gic0.gc1.count_d2_reg[5] ),
        .Q(ram_full_fb_i),
        .S(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gic0.gc1.count_d2_reg[5] ),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_i));
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
