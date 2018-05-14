//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Sun May 13 22:44:16 2018
//Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target pr.bd
//Design      : pr
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "pr,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pr,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "pr.hwdef" *) 
module pr
   (ARESETN,
    CLK,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_CONTROL_araddr,
    S_AXI_CONTROL_arprot,
    S_AXI_CONTROL_arqos,
    S_AXI_CONTROL_arready,
    S_AXI_CONTROL_arvalid,
    S_AXI_CONTROL_awaddr,
    S_AXI_CONTROL_awprot,
    S_AXI_CONTROL_awqos,
    S_AXI_CONTROL_awready,
    S_AXI_CONTROL_awvalid,
    S_AXI_CONTROL_bready,
    S_AXI_CONTROL_bresp,
    S_AXI_CONTROL_bvalid,
    S_AXI_CONTROL_rdata,
    S_AXI_CONTROL_rready,
    S_AXI_CONTROL_rresp,
    S_AXI_CONTROL_rvalid,
    S_AXI_CONTROL_wdata,
    S_AXI_CONTROL_wready,
    S_AXI_CONTROL_wstrb,
    S_AXI_CONTROL_wvalid,
    S_AXI_MEM_araddr,
    S_AXI_MEM_arburst,
    S_AXI_MEM_arcache,
    S_AXI_MEM_arid,
    S_AXI_MEM_arlen,
    S_AXI_MEM_arlock,
    S_AXI_MEM_arprot,
    S_AXI_MEM_arqos,
    S_AXI_MEM_arready,
    S_AXI_MEM_arsize,
    S_AXI_MEM_arvalid,
    S_AXI_MEM_awaddr,
    S_AXI_MEM_awburst,
    S_AXI_MEM_awcache,
    S_AXI_MEM_awid,
    S_AXI_MEM_awlen,
    S_AXI_MEM_awlock,
    S_AXI_MEM_awprot,
    S_AXI_MEM_awqos,
    S_AXI_MEM_awready,
    S_AXI_MEM_awsize,
    S_AXI_MEM_awvalid,
    S_AXI_MEM_bid,
    S_AXI_MEM_bready,
    S_AXI_MEM_bresp,
    S_AXI_MEM_bvalid,
    S_AXI_MEM_rdata,
    S_AXI_MEM_rid,
    S_AXI_MEM_rlast,
    S_AXI_MEM_rready,
    S_AXI_MEM_rresp,
    S_AXI_MEM_rvalid,
    S_AXI_MEM_wdata,
    S_AXI_MEM_wlast,
    S_AXI_MEM_wready,
    S_AXI_MEM_wstrb,
    S_AXI_MEM_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW" *) input ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF S_AXIS:M_AXIS:S_AXI_MEM:S_AXI_CONTROL, ASSOCIATED_RESET ARESETN, CLK_DOMAIN pr_CLK_DATA, FREQ_HZ 156250000, PHASE 0.000" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN pr_CLK_DATA, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [7:0]M_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, CLK_DOMAIN pr_CLK_DATA, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [7:0]S_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CONTROL, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pr_CLK_DATA, DATA_WIDTH 32, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_CONTROL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARPROT" *) input [2:0]S_AXI_CONTROL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARQOS" *) input [3:0]S_AXI_CONTROL_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARREADY" *) output S_AXI_CONTROL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARVALID" *) input S_AXI_CONTROL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWADDR" *) input [31:0]S_AXI_CONTROL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWPROT" *) input [2:0]S_AXI_CONTROL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWQOS" *) input [3:0]S_AXI_CONTROL_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWREADY" *) output S_AXI_CONTROL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWVALID" *) input S_AXI_CONTROL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL BREADY" *) input S_AXI_CONTROL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL BRESP" *) output [1:0]S_AXI_CONTROL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL BVALID" *) output S_AXI_CONTROL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RDATA" *) output [31:0]S_AXI_CONTROL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RREADY" *) input S_AXI_CONTROL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RRESP" *) output [1:0]S_AXI_CONTROL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RVALID" *) output S_AXI_CONTROL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WDATA" *) input [31:0]S_AXI_CONTROL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WREADY" *) output S_AXI_CONTROL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WSTRB" *) input [3:0]S_AXI_CONTROL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WVALID" *) input S_AXI_CONTROL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MEM, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pr_CLK_DATA, DATA_WIDTH 512, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]S_AXI_MEM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARBURST" *) output [1:0]S_AXI_MEM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARCACHE" *) output [3:0]S_AXI_MEM_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARID" *) output [0:0]S_AXI_MEM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLEN" *) output [7:0]S_AXI_MEM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLOCK" *) output [0:0]S_AXI_MEM_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARPROT" *) output [2:0]S_AXI_MEM_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARQOS" *) output [3:0]S_AXI_MEM_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARREADY" *) input S_AXI_MEM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARSIZE" *) output [2:0]S_AXI_MEM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARVALID" *) output S_AXI_MEM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWADDR" *) output [63:0]S_AXI_MEM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWBURST" *) output [1:0]S_AXI_MEM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWCACHE" *) output [3:0]S_AXI_MEM_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWID" *) output [0:0]S_AXI_MEM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLEN" *) output [7:0]S_AXI_MEM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLOCK" *) output [0:0]S_AXI_MEM_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWPROT" *) output [2:0]S_AXI_MEM_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWQOS" *) output [3:0]S_AXI_MEM_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWREADY" *) input S_AXI_MEM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWSIZE" *) output [2:0]S_AXI_MEM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWVALID" *) output S_AXI_MEM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BID" *) input [0:0]S_AXI_MEM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BREADY" *) output S_AXI_MEM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BRESP" *) input [1:0]S_AXI_MEM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BVALID" *) input S_AXI_MEM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RDATA" *) input [511:0]S_AXI_MEM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RID" *) input [0:0]S_AXI_MEM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RLAST" *) input S_AXI_MEM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RREADY" *) output S_AXI_MEM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RRESP" *) input [1:0]S_AXI_MEM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RVALID" *) input S_AXI_MEM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WDATA" *) output [511:0]S_AXI_MEM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WLAST" *) output S_AXI_MEM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WREADY" *) input S_AXI_MEM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WSTRB" *) output [63:0]S_AXI_MEM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WVALID" *) output S_AXI_MEM_wvalid;

  wire [63:0]S_AXIS_1_TDATA;
  wire [7:0]S_AXIS_1_TKEEP;
  wire S_AXIS_1_TLAST;
  wire S_AXIS_1_TREADY;
  wire S_AXIS_1_TVALID;
  wire [31:0]S_AXI_CONTROL_1_ARADDR;
  wire [2:0]S_AXI_CONTROL_1_ARPROT;
  wire [3:0]S_AXI_CONTROL_1_ARQOS;
  wire S_AXI_CONTROL_1_ARREADY;
  wire S_AXI_CONTROL_1_ARVALID;
  wire [31:0]S_AXI_CONTROL_1_AWADDR;
  wire [2:0]S_AXI_CONTROL_1_AWPROT;
  wire [3:0]S_AXI_CONTROL_1_AWQOS;
  wire S_AXI_CONTROL_1_AWREADY;
  wire S_AXI_CONTROL_1_AWVALID;
  wire S_AXI_CONTROL_1_BREADY;
  wire [1:0]S_AXI_CONTROL_1_BRESP;
  wire S_AXI_CONTROL_1_BVALID;
  wire [31:0]S_AXI_CONTROL_1_RDATA;
  wire S_AXI_CONTROL_1_RREADY;
  wire [1:0]S_AXI_CONTROL_1_RRESP;
  wire S_AXI_CONTROL_1_RVALID;
  wire [31:0]S_AXI_CONTROL_1_WDATA;
  wire S_AXI_CONTROL_1_WREADY;
  wire [3:0]S_AXI_CONTROL_1_WSTRB;
  wire S_AXI_CONTROL_1_WVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_ARQOS;
  wire axi_dwidth_converter_0_M_AXI_ARREADY;
  wire [2:0]axi_dwidth_converter_0_M_AXI_ARSIZE;
  wire axi_dwidth_converter_0_M_AXI_ARVALID;
  wire [63:0]axi_dwidth_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_dwidth_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWCACHE;
  wire [7:0]axi_dwidth_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_dwidth_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_dwidth_converter_0_M_AXI_AWQOS;
  wire axi_dwidth_converter_0_M_AXI_AWREADY;
  wire [2:0]axi_dwidth_converter_0_M_AXI_AWSIZE;
  wire axi_dwidth_converter_0_M_AXI_AWVALID;
  wire axi_dwidth_converter_0_M_AXI_BREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_BRESP;
  wire axi_dwidth_converter_0_M_AXI_BVALID;
  wire [511:0]axi_dwidth_converter_0_M_AXI_RDATA;
  wire axi_dwidth_converter_0_M_AXI_RLAST;
  wire axi_dwidth_converter_0_M_AXI_RREADY;
  wire [1:0]axi_dwidth_converter_0_M_AXI_RRESP;
  wire axi_dwidth_converter_0_M_AXI_RVALID;
  wire [511:0]axi_dwidth_converter_0_M_AXI_WDATA;
  wire axi_dwidth_converter_0_M_AXI_WLAST;
  wire axi_dwidth_converter_0_M_AXI_WREADY;
  wire [63:0]axi_dwidth_converter_0_M_AXI_WSTRB;
  wire axi_dwidth_converter_0_M_AXI_WVALID;
  wire [63:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [7:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [63:0]conv_layer_0_m_axi_mem_ARADDR;
  wire [1:0]conv_layer_0_m_axi_mem_ARBURST;
  wire [3:0]conv_layer_0_m_axi_mem_ARCACHE;
  wire [7:0]conv_layer_0_m_axi_mem_ARLEN;
  wire [1:0]conv_layer_0_m_axi_mem_ARLOCK;
  wire [2:0]conv_layer_0_m_axi_mem_ARPROT;
  wire [3:0]conv_layer_0_m_axi_mem_ARQOS;
  wire conv_layer_0_m_axi_mem_ARREADY;
  wire [3:0]conv_layer_0_m_axi_mem_ARREGION;
  wire [2:0]conv_layer_0_m_axi_mem_ARSIZE;
  wire conv_layer_0_m_axi_mem_ARVALID;
  wire [63:0]conv_layer_0_m_axi_mem_AWADDR;
  wire [1:0]conv_layer_0_m_axi_mem_AWBURST;
  wire [3:0]conv_layer_0_m_axi_mem_AWCACHE;
  wire [7:0]conv_layer_0_m_axi_mem_AWLEN;
  wire [1:0]conv_layer_0_m_axi_mem_AWLOCK;
  wire [2:0]conv_layer_0_m_axi_mem_AWPROT;
  wire [3:0]conv_layer_0_m_axi_mem_AWQOS;
  wire conv_layer_0_m_axi_mem_AWREADY;
  wire [3:0]conv_layer_0_m_axi_mem_AWREGION;
  wire [2:0]conv_layer_0_m_axi_mem_AWSIZE;
  wire conv_layer_0_m_axi_mem_AWVALID;
  wire conv_layer_0_m_axi_mem_BREADY;
  wire [1:0]conv_layer_0_m_axi_mem_BRESP;
  wire conv_layer_0_m_axi_mem_BVALID;
  wire [31:0]conv_layer_0_m_axi_mem_RDATA;
  wire conv_layer_0_m_axi_mem_RLAST;
  wire conv_layer_0_m_axi_mem_RREADY;
  wire [1:0]conv_layer_0_m_axi_mem_RRESP;
  wire conv_layer_0_m_axi_mem_RVALID;
  wire [31:0]conv_layer_0_m_axi_mem_WDATA;
  wire conv_layer_0_m_axi_mem_WLAST;
  wire conv_layer_0_m_axi_mem_WREADY;
  wire [3:0]conv_layer_0_m_axi_mem_WSTRB;
  wire conv_layer_0_m_axi_mem_WVALID;
  wire [63:0]pcl_axifull_bridge_0_m_axi_ARADDR;
  wire [1:0]pcl_axifull_bridge_0_m_axi_ARBURST;
  wire [3:0]pcl_axifull_bridge_0_m_axi_ARCACHE;
  wire [0:0]pcl_axifull_bridge_0_m_axi_ARID;
  wire [7:0]pcl_axifull_bridge_0_m_axi_ARLEN;
  wire [0:0]pcl_axifull_bridge_0_m_axi_ARLOCK;
  wire [2:0]pcl_axifull_bridge_0_m_axi_ARPROT;
  wire [3:0]pcl_axifull_bridge_0_m_axi_ARQOS;
  wire pcl_axifull_bridge_0_m_axi_ARREADY;
  wire [2:0]pcl_axifull_bridge_0_m_axi_ARSIZE;
  wire pcl_axifull_bridge_0_m_axi_ARVALID;
  wire [63:0]pcl_axifull_bridge_0_m_axi_AWADDR;
  wire [1:0]pcl_axifull_bridge_0_m_axi_AWBURST;
  wire [3:0]pcl_axifull_bridge_0_m_axi_AWCACHE;
  wire [0:0]pcl_axifull_bridge_0_m_axi_AWID;
  wire [7:0]pcl_axifull_bridge_0_m_axi_AWLEN;
  wire [0:0]pcl_axifull_bridge_0_m_axi_AWLOCK;
  wire [2:0]pcl_axifull_bridge_0_m_axi_AWPROT;
  wire [3:0]pcl_axifull_bridge_0_m_axi_AWQOS;
  wire pcl_axifull_bridge_0_m_axi_AWREADY;
  wire [2:0]pcl_axifull_bridge_0_m_axi_AWSIZE;
  wire pcl_axifull_bridge_0_m_axi_AWVALID;
  wire [0:0]pcl_axifull_bridge_0_m_axi_BID;
  wire pcl_axifull_bridge_0_m_axi_BREADY;
  wire [1:0]pcl_axifull_bridge_0_m_axi_BRESP;
  wire pcl_axifull_bridge_0_m_axi_BVALID;
  wire [511:0]pcl_axifull_bridge_0_m_axi_RDATA;
  wire [0:0]pcl_axifull_bridge_0_m_axi_RID;
  wire pcl_axifull_bridge_0_m_axi_RLAST;
  wire pcl_axifull_bridge_0_m_axi_RREADY;
  wire [1:0]pcl_axifull_bridge_0_m_axi_RRESP;
  wire pcl_axifull_bridge_0_m_axi_RVALID;
  wire [511:0]pcl_axifull_bridge_0_m_axi_WDATA;
  wire pcl_axifull_bridge_0_m_axi_WLAST;
  wire pcl_axifull_bridge_0_m_axi_WREADY;
  wire [63:0]pcl_axifull_bridge_0_m_axi_WSTRB;
  wire pcl_axifull_bridge_0_m_axi_WVALID;
  wire [31:0]pcl_axilite_bridge_0_m_axi_ARADDR;
  wire pcl_axilite_bridge_0_m_axi_ARREADY;
  wire pcl_axilite_bridge_0_m_axi_ARVALID;
  wire [31:0]pcl_axilite_bridge_0_m_axi_AWADDR;
  wire pcl_axilite_bridge_0_m_axi_AWREADY;
  wire pcl_axilite_bridge_0_m_axi_AWVALID;
  wire pcl_axilite_bridge_0_m_axi_BREADY;
  wire [1:0]pcl_axilite_bridge_0_m_axi_BRESP;
  wire pcl_axilite_bridge_0_m_axi_BVALID;
  wire [31:0]pcl_axilite_bridge_0_m_axi_RDATA;
  wire pcl_axilite_bridge_0_m_axi_RREADY;
  wire [1:0]pcl_axilite_bridge_0_m_axi_RRESP;
  wire pcl_axilite_bridge_0_m_axi_RVALID;
  wire [31:0]pcl_axilite_bridge_0_m_axi_WDATA;
  wire pcl_axilite_bridge_0_m_axi_WREADY;
  wire [3:0]pcl_axilite_bridge_0_m_axi_WSTRB;
  wire pcl_axilite_bridge_0_m_axi_WVALID;
  wire s_axi_aresetn_1;
  wire s_axis_aclk_1;

  assign M_AXIS_tdata[63:0] = axis_data_fifo_0_M_AXIS_TDATA;
  assign M_AXIS_tkeep[7:0] = axis_data_fifo_0_M_AXIS_TKEEP;
  assign M_AXIS_tlast = axis_data_fifo_0_M_AXIS_TLAST;
  assign M_AXIS_tvalid = axis_data_fifo_0_M_AXIS_TVALID;
  assign S_AXIS_1_TDATA = S_AXIS_tdata[63:0];
  assign S_AXIS_1_TKEEP = S_AXIS_tkeep[7:0];
  assign S_AXIS_1_TLAST = S_AXIS_tlast;
  assign S_AXIS_1_TVALID = S_AXIS_tvalid;
  assign S_AXIS_tready = S_AXIS_1_TREADY;
  assign S_AXI_CONTROL_1_ARADDR = S_AXI_CONTROL_araddr[31:0];
  assign S_AXI_CONTROL_1_ARPROT = S_AXI_CONTROL_arprot[2:0];
  assign S_AXI_CONTROL_1_ARQOS = S_AXI_CONTROL_arqos[3:0];
  assign S_AXI_CONTROL_1_ARVALID = S_AXI_CONTROL_arvalid;
  assign S_AXI_CONTROL_1_AWADDR = S_AXI_CONTROL_awaddr[31:0];
  assign S_AXI_CONTROL_1_AWPROT = S_AXI_CONTROL_awprot[2:0];
  assign S_AXI_CONTROL_1_AWQOS = S_AXI_CONTROL_awqos[3:0];
  assign S_AXI_CONTROL_1_AWVALID = S_AXI_CONTROL_awvalid;
  assign S_AXI_CONTROL_1_BREADY = S_AXI_CONTROL_bready;
  assign S_AXI_CONTROL_1_RREADY = S_AXI_CONTROL_rready;
  assign S_AXI_CONTROL_1_WDATA = S_AXI_CONTROL_wdata[31:0];
  assign S_AXI_CONTROL_1_WSTRB = S_AXI_CONTROL_wstrb[3:0];
  assign S_AXI_CONTROL_1_WVALID = S_AXI_CONTROL_wvalid;
  assign S_AXI_CONTROL_arready = S_AXI_CONTROL_1_ARREADY;
  assign S_AXI_CONTROL_awready = S_AXI_CONTROL_1_AWREADY;
  assign S_AXI_CONTROL_bresp[1:0] = S_AXI_CONTROL_1_BRESP;
  assign S_AXI_CONTROL_bvalid = S_AXI_CONTROL_1_BVALID;
  assign S_AXI_CONTROL_rdata[31:0] = S_AXI_CONTROL_1_RDATA;
  assign S_AXI_CONTROL_rresp[1:0] = S_AXI_CONTROL_1_RRESP;
  assign S_AXI_CONTROL_rvalid = S_AXI_CONTROL_1_RVALID;
  assign S_AXI_CONTROL_wready = S_AXI_CONTROL_1_WREADY;
  assign S_AXI_MEM_araddr[63:0] = pcl_axifull_bridge_0_m_axi_ARADDR;
  assign S_AXI_MEM_arburst[1:0] = pcl_axifull_bridge_0_m_axi_ARBURST;
  assign S_AXI_MEM_arcache[3:0] = pcl_axifull_bridge_0_m_axi_ARCACHE;
  assign S_AXI_MEM_arid[0] = pcl_axifull_bridge_0_m_axi_ARID;
  assign S_AXI_MEM_arlen[7:0] = pcl_axifull_bridge_0_m_axi_ARLEN;
  assign S_AXI_MEM_arlock[0] = pcl_axifull_bridge_0_m_axi_ARLOCK;
  assign S_AXI_MEM_arprot[2:0] = pcl_axifull_bridge_0_m_axi_ARPROT;
  assign S_AXI_MEM_arqos[3:0] = pcl_axifull_bridge_0_m_axi_ARQOS;
  assign S_AXI_MEM_arsize[2:0] = pcl_axifull_bridge_0_m_axi_ARSIZE;
  assign S_AXI_MEM_arvalid = pcl_axifull_bridge_0_m_axi_ARVALID;
  assign S_AXI_MEM_awaddr[63:0] = pcl_axifull_bridge_0_m_axi_AWADDR;
  assign S_AXI_MEM_awburst[1:0] = pcl_axifull_bridge_0_m_axi_AWBURST;
  assign S_AXI_MEM_awcache[3:0] = pcl_axifull_bridge_0_m_axi_AWCACHE;
  assign S_AXI_MEM_awid[0] = pcl_axifull_bridge_0_m_axi_AWID;
  assign S_AXI_MEM_awlen[7:0] = pcl_axifull_bridge_0_m_axi_AWLEN;
  assign S_AXI_MEM_awlock[0] = pcl_axifull_bridge_0_m_axi_AWLOCK;
  assign S_AXI_MEM_awprot[2:0] = pcl_axifull_bridge_0_m_axi_AWPROT;
  assign S_AXI_MEM_awqos[3:0] = pcl_axifull_bridge_0_m_axi_AWQOS;
  assign S_AXI_MEM_awsize[2:0] = pcl_axifull_bridge_0_m_axi_AWSIZE;
  assign S_AXI_MEM_awvalid = pcl_axifull_bridge_0_m_axi_AWVALID;
  assign S_AXI_MEM_bready = pcl_axifull_bridge_0_m_axi_BREADY;
  assign S_AXI_MEM_rready = pcl_axifull_bridge_0_m_axi_RREADY;
  assign S_AXI_MEM_wdata[511:0] = pcl_axifull_bridge_0_m_axi_WDATA;
  assign S_AXI_MEM_wlast = pcl_axifull_bridge_0_m_axi_WLAST;
  assign S_AXI_MEM_wstrb[63:0] = pcl_axifull_bridge_0_m_axi_WSTRB;
  assign S_AXI_MEM_wvalid = pcl_axifull_bridge_0_m_axi_WVALID;
  assign axis_data_fifo_0_M_AXIS_TREADY = M_AXIS_tready;
  assign pcl_axifull_bridge_0_m_axi_ARREADY = S_AXI_MEM_arready;
  assign pcl_axifull_bridge_0_m_axi_AWREADY = S_AXI_MEM_awready;
  assign pcl_axifull_bridge_0_m_axi_BID = S_AXI_MEM_bid[0];
  assign pcl_axifull_bridge_0_m_axi_BRESP = S_AXI_MEM_bresp[1:0];
  assign pcl_axifull_bridge_0_m_axi_BVALID = S_AXI_MEM_bvalid;
  assign pcl_axifull_bridge_0_m_axi_RDATA = S_AXI_MEM_rdata[511:0];
  assign pcl_axifull_bridge_0_m_axi_RID = S_AXI_MEM_rid[0];
  assign pcl_axifull_bridge_0_m_axi_RLAST = S_AXI_MEM_rlast;
  assign pcl_axifull_bridge_0_m_axi_RRESP = S_AXI_MEM_rresp[1:0];
  assign pcl_axifull_bridge_0_m_axi_RVALID = S_AXI_MEM_rvalid;
  assign pcl_axifull_bridge_0_m_axi_WREADY = S_AXI_MEM_wready;
  assign s_axi_aresetn_1 = ARESETN;
  assign s_axis_aclk_1 = CLK;
  pr_axi_dwidth_converter_0_0 axi_dwidth_converter_0
       (.m_axi_araddr(axi_dwidth_converter_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_dwidth_converter_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_dwidth_converter_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_dwidth_converter_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_dwidth_converter_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_dwidth_converter_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_dwidth_converter_0_M_AXI_ARQOS),
        .m_axi_arready(axi_dwidth_converter_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_dwidth_converter_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_dwidth_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_dwidth_converter_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_dwidth_converter_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_dwidth_converter_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_dwidth_converter_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_dwidth_converter_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_dwidth_converter_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_dwidth_converter_0_M_AXI_AWQOS),
        .m_axi_awready(axi_dwidth_converter_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_dwidth_converter_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_dwidth_converter_0_M_AXI_AWVALID),
        .m_axi_bready(axi_dwidth_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_dwidth_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_dwidth_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_dwidth_converter_0_M_AXI_RDATA),
        .m_axi_rlast(axi_dwidth_converter_0_M_AXI_RLAST),
        .m_axi_rready(axi_dwidth_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_dwidth_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_dwidth_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_dwidth_converter_0_M_AXI_WDATA),
        .m_axi_wlast(axi_dwidth_converter_0_M_AXI_WLAST),
        .m_axi_wready(axi_dwidth_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_dwidth_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_dwidth_converter_0_M_AXI_WVALID),
        .s_axi_aclk(s_axis_aclk_1),
        .s_axi_araddr(conv_layer_0_m_axi_mem_ARADDR),
        .s_axi_arburst(conv_layer_0_m_axi_mem_ARBURST),
        .s_axi_arcache(conv_layer_0_m_axi_mem_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arlen(conv_layer_0_m_axi_mem_ARLEN),
        .s_axi_arlock(conv_layer_0_m_axi_mem_ARLOCK[0]),
        .s_axi_arprot(conv_layer_0_m_axi_mem_ARPROT),
        .s_axi_arqos(conv_layer_0_m_axi_mem_ARQOS),
        .s_axi_arready(conv_layer_0_m_axi_mem_ARREADY),
        .s_axi_arregion(conv_layer_0_m_axi_mem_ARREGION),
        .s_axi_arsize(conv_layer_0_m_axi_mem_ARSIZE),
        .s_axi_arvalid(conv_layer_0_m_axi_mem_ARVALID),
        .s_axi_awaddr(conv_layer_0_m_axi_mem_AWADDR),
        .s_axi_awburst(conv_layer_0_m_axi_mem_AWBURST),
        .s_axi_awcache(conv_layer_0_m_axi_mem_AWCACHE),
        .s_axi_awlen(conv_layer_0_m_axi_mem_AWLEN),
        .s_axi_awlock(conv_layer_0_m_axi_mem_AWLOCK[0]),
        .s_axi_awprot(conv_layer_0_m_axi_mem_AWPROT),
        .s_axi_awqos(conv_layer_0_m_axi_mem_AWQOS),
        .s_axi_awready(conv_layer_0_m_axi_mem_AWREADY),
        .s_axi_awregion(conv_layer_0_m_axi_mem_AWREGION),
        .s_axi_awsize(conv_layer_0_m_axi_mem_AWSIZE),
        .s_axi_awvalid(conv_layer_0_m_axi_mem_AWVALID),
        .s_axi_bready(conv_layer_0_m_axi_mem_BREADY),
        .s_axi_bresp(conv_layer_0_m_axi_mem_BRESP),
        .s_axi_bvalid(conv_layer_0_m_axi_mem_BVALID),
        .s_axi_rdata(conv_layer_0_m_axi_mem_RDATA),
        .s_axi_rlast(conv_layer_0_m_axi_mem_RLAST),
        .s_axi_rready(conv_layer_0_m_axi_mem_RREADY),
        .s_axi_rresp(conv_layer_0_m_axi_mem_RRESP),
        .s_axi_rvalid(conv_layer_0_m_axi_mem_RVALID),
        .s_axi_wdata(conv_layer_0_m_axi_mem_WDATA),
        .s_axi_wlast(conv_layer_0_m_axi_mem_WLAST),
        .s_axi_wready(conv_layer_0_m_axi_mem_WREADY),
        .s_axi_wstrb(conv_layer_0_m_axi_mem_WSTRB),
        .s_axi_wvalid(conv_layer_0_m_axi_mem_WVALID));
  pr_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(s_axis_aclk_1),
        .s_axis_aresetn(s_axi_aresetn_1),
        .s_axis_tdata(S_AXIS_1_TDATA),
        .s_axis_tkeep(S_AXIS_1_TKEEP),
        .s_axis_tlast(S_AXIS_1_TLAST),
        .s_axis_tready(S_AXIS_1_TREADY),
        .s_axis_tvalid(S_AXIS_1_TVALID));
  pr_conv_layer_0_0 conv_layer_0
       (.ap_clk(s_axis_aclk_1),
        .ap_rst_n(s_axi_aresetn_1),
        .m_axi_mem_ARADDR(conv_layer_0_m_axi_mem_ARADDR),
        .m_axi_mem_ARBURST(conv_layer_0_m_axi_mem_ARBURST),
        .m_axi_mem_ARCACHE(conv_layer_0_m_axi_mem_ARCACHE),
        .m_axi_mem_ARLEN(conv_layer_0_m_axi_mem_ARLEN),
        .m_axi_mem_ARLOCK(conv_layer_0_m_axi_mem_ARLOCK),
        .m_axi_mem_ARPROT(conv_layer_0_m_axi_mem_ARPROT),
        .m_axi_mem_ARQOS(conv_layer_0_m_axi_mem_ARQOS),
        .m_axi_mem_ARREADY(conv_layer_0_m_axi_mem_ARREADY),
        .m_axi_mem_ARREGION(conv_layer_0_m_axi_mem_ARREGION),
        .m_axi_mem_ARSIZE(conv_layer_0_m_axi_mem_ARSIZE),
        .m_axi_mem_ARVALID(conv_layer_0_m_axi_mem_ARVALID),
        .m_axi_mem_AWADDR(conv_layer_0_m_axi_mem_AWADDR),
        .m_axi_mem_AWBURST(conv_layer_0_m_axi_mem_AWBURST),
        .m_axi_mem_AWCACHE(conv_layer_0_m_axi_mem_AWCACHE),
        .m_axi_mem_AWLEN(conv_layer_0_m_axi_mem_AWLEN),
        .m_axi_mem_AWLOCK(conv_layer_0_m_axi_mem_AWLOCK),
        .m_axi_mem_AWPROT(conv_layer_0_m_axi_mem_AWPROT),
        .m_axi_mem_AWQOS(conv_layer_0_m_axi_mem_AWQOS),
        .m_axi_mem_AWREADY(conv_layer_0_m_axi_mem_AWREADY),
        .m_axi_mem_AWREGION(conv_layer_0_m_axi_mem_AWREGION),
        .m_axi_mem_AWSIZE(conv_layer_0_m_axi_mem_AWSIZE),
        .m_axi_mem_AWVALID(conv_layer_0_m_axi_mem_AWVALID),
        .m_axi_mem_BREADY(conv_layer_0_m_axi_mem_BREADY),
        .m_axi_mem_BRESP(conv_layer_0_m_axi_mem_BRESP),
        .m_axi_mem_BVALID(conv_layer_0_m_axi_mem_BVALID),
        .m_axi_mem_RDATA(conv_layer_0_m_axi_mem_RDATA),
        .m_axi_mem_RLAST(conv_layer_0_m_axi_mem_RLAST),
        .m_axi_mem_RREADY(conv_layer_0_m_axi_mem_RREADY),
        .m_axi_mem_RRESP(conv_layer_0_m_axi_mem_RRESP),
        .m_axi_mem_RVALID(conv_layer_0_m_axi_mem_RVALID),
        .m_axi_mem_WDATA(conv_layer_0_m_axi_mem_WDATA),
        .m_axi_mem_WLAST(conv_layer_0_m_axi_mem_WLAST),
        .m_axi_mem_WREADY(conv_layer_0_m_axi_mem_WREADY),
        .m_axi_mem_WSTRB(conv_layer_0_m_axi_mem_WSTRB),
        .m_axi_mem_WVALID(conv_layer_0_m_axi_mem_WVALID),
        .s_axi_CTRL_BUS_ARADDR(pcl_axilite_bridge_0_m_axi_ARADDR[6:0]),
        .s_axi_CTRL_BUS_ARREADY(pcl_axilite_bridge_0_m_axi_ARREADY),
        .s_axi_CTRL_BUS_ARVALID(pcl_axilite_bridge_0_m_axi_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(pcl_axilite_bridge_0_m_axi_AWADDR[6:0]),
        .s_axi_CTRL_BUS_AWREADY(pcl_axilite_bridge_0_m_axi_AWREADY),
        .s_axi_CTRL_BUS_AWVALID(pcl_axilite_bridge_0_m_axi_AWVALID),
        .s_axi_CTRL_BUS_BREADY(pcl_axilite_bridge_0_m_axi_BREADY),
        .s_axi_CTRL_BUS_BRESP(pcl_axilite_bridge_0_m_axi_BRESP),
        .s_axi_CTRL_BUS_BVALID(pcl_axilite_bridge_0_m_axi_BVALID),
        .s_axi_CTRL_BUS_RDATA(pcl_axilite_bridge_0_m_axi_RDATA),
        .s_axi_CTRL_BUS_RREADY(pcl_axilite_bridge_0_m_axi_RREADY),
        .s_axi_CTRL_BUS_RRESP(pcl_axilite_bridge_0_m_axi_RRESP),
        .s_axi_CTRL_BUS_RVALID(pcl_axilite_bridge_0_m_axi_RVALID),
        .s_axi_CTRL_BUS_WDATA(pcl_axilite_bridge_0_m_axi_WDATA),
        .s_axi_CTRL_BUS_WREADY(pcl_axilite_bridge_0_m_axi_WREADY),
        .s_axi_CTRL_BUS_WSTRB(pcl_axilite_bridge_0_m_axi_WSTRB),
        .s_axi_CTRL_BUS_WVALID(pcl_axilite_bridge_0_m_axi_WVALID));
  pr_pcl_axifull_bridge_0_0 pcl_axifull_bridge_0
       (.aclk(s_axis_aclk_1),
        .aresetn(s_axi_aresetn_1),
        .m_axi_araddr(pcl_axifull_bridge_0_m_axi_ARADDR),
        .m_axi_arburst(pcl_axifull_bridge_0_m_axi_ARBURST),
        .m_axi_arcache(pcl_axifull_bridge_0_m_axi_ARCACHE),
        .m_axi_arid(pcl_axifull_bridge_0_m_axi_ARID),
        .m_axi_arlen(pcl_axifull_bridge_0_m_axi_ARLEN),
        .m_axi_arlock(pcl_axifull_bridge_0_m_axi_ARLOCK),
        .m_axi_arprot(pcl_axifull_bridge_0_m_axi_ARPROT),
        .m_axi_arqos(pcl_axifull_bridge_0_m_axi_ARQOS),
        .m_axi_arready(pcl_axifull_bridge_0_m_axi_ARREADY),
        .m_axi_arsize(pcl_axifull_bridge_0_m_axi_ARSIZE),
        .m_axi_arvalid(pcl_axifull_bridge_0_m_axi_ARVALID),
        .m_axi_awaddr(pcl_axifull_bridge_0_m_axi_AWADDR),
        .m_axi_awburst(pcl_axifull_bridge_0_m_axi_AWBURST),
        .m_axi_awcache(pcl_axifull_bridge_0_m_axi_AWCACHE),
        .m_axi_awid(pcl_axifull_bridge_0_m_axi_AWID),
        .m_axi_awlen(pcl_axifull_bridge_0_m_axi_AWLEN),
        .m_axi_awlock(pcl_axifull_bridge_0_m_axi_AWLOCK),
        .m_axi_awprot(pcl_axifull_bridge_0_m_axi_AWPROT),
        .m_axi_awqos(pcl_axifull_bridge_0_m_axi_AWQOS),
        .m_axi_awready(pcl_axifull_bridge_0_m_axi_AWREADY),
        .m_axi_awsize(pcl_axifull_bridge_0_m_axi_AWSIZE),
        .m_axi_awvalid(pcl_axifull_bridge_0_m_axi_AWVALID),
        .m_axi_bid(pcl_axifull_bridge_0_m_axi_BID),
        .m_axi_bready(pcl_axifull_bridge_0_m_axi_BREADY),
        .m_axi_bresp(pcl_axifull_bridge_0_m_axi_BRESP),
        .m_axi_bvalid(pcl_axifull_bridge_0_m_axi_BVALID),
        .m_axi_rdata(pcl_axifull_bridge_0_m_axi_RDATA),
        .m_axi_rid(pcl_axifull_bridge_0_m_axi_RID),
        .m_axi_rlast(pcl_axifull_bridge_0_m_axi_RLAST),
        .m_axi_rready(pcl_axifull_bridge_0_m_axi_RREADY),
        .m_axi_rresp(pcl_axifull_bridge_0_m_axi_RRESP),
        .m_axi_rvalid(pcl_axifull_bridge_0_m_axi_RVALID),
        .m_axi_wdata(pcl_axifull_bridge_0_m_axi_WDATA),
        .m_axi_wlast(pcl_axifull_bridge_0_m_axi_WLAST),
        .m_axi_wready(pcl_axifull_bridge_0_m_axi_WREADY),
        .m_axi_wstrb(pcl_axifull_bridge_0_m_axi_WSTRB),
        .m_axi_wvalid(pcl_axifull_bridge_0_m_axi_WVALID),
        .s_axi_araddr(axi_dwidth_converter_0_M_AXI_ARADDR),
        .s_axi_arburst(axi_dwidth_converter_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_dwidth_converter_0_M_AXI_ARCACHE),
        .s_axi_arlen(axi_dwidth_converter_0_M_AXI_ARLEN),
        .s_axi_arlock(axi_dwidth_converter_0_M_AXI_ARLOCK),
        .s_axi_arprot(axi_dwidth_converter_0_M_AXI_ARPROT),
        .s_axi_arqos(axi_dwidth_converter_0_M_AXI_ARQOS),
        .s_axi_arready(axi_dwidth_converter_0_M_AXI_ARREADY),
        .s_axi_arsize(axi_dwidth_converter_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_dwidth_converter_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_dwidth_converter_0_M_AXI_AWADDR),
        .s_axi_awburst(axi_dwidth_converter_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_dwidth_converter_0_M_AXI_AWCACHE),
        .s_axi_awlen(axi_dwidth_converter_0_M_AXI_AWLEN),
        .s_axi_awlock(axi_dwidth_converter_0_M_AXI_AWLOCK),
        .s_axi_awprot(axi_dwidth_converter_0_M_AXI_AWPROT),
        .s_axi_awqos(axi_dwidth_converter_0_M_AXI_AWQOS),
        .s_axi_awready(axi_dwidth_converter_0_M_AXI_AWREADY),
        .s_axi_awsize(axi_dwidth_converter_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_dwidth_converter_0_M_AXI_AWVALID),
        .s_axi_bready(axi_dwidth_converter_0_M_AXI_BREADY),
        .s_axi_bresp(axi_dwidth_converter_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_dwidth_converter_0_M_AXI_BVALID),
        .s_axi_rdata(axi_dwidth_converter_0_M_AXI_RDATA),
        .s_axi_rlast(axi_dwidth_converter_0_M_AXI_RLAST),
        .s_axi_rready(axi_dwidth_converter_0_M_AXI_RREADY),
        .s_axi_rresp(axi_dwidth_converter_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_dwidth_converter_0_M_AXI_RVALID),
        .s_axi_wdata(axi_dwidth_converter_0_M_AXI_WDATA),
        .s_axi_wlast(axi_dwidth_converter_0_M_AXI_WLAST),
        .s_axi_wready(axi_dwidth_converter_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_dwidth_converter_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_dwidth_converter_0_M_AXI_WVALID));
  pr_pcl_axilite_bridge_0_0 pcl_axilite_bridge_0
       (.aclk(s_axis_aclk_1),
        .aresetn(s_axi_aresetn_1),
        .m_axi_araddr(pcl_axilite_bridge_0_m_axi_ARADDR),
        .m_axi_arready(pcl_axilite_bridge_0_m_axi_ARREADY),
        .m_axi_arvalid(pcl_axilite_bridge_0_m_axi_ARVALID),
        .m_axi_awaddr(pcl_axilite_bridge_0_m_axi_AWADDR),
        .m_axi_awready(pcl_axilite_bridge_0_m_axi_AWREADY),
        .m_axi_awvalid(pcl_axilite_bridge_0_m_axi_AWVALID),
        .m_axi_bready(pcl_axilite_bridge_0_m_axi_BREADY),
        .m_axi_bresp(pcl_axilite_bridge_0_m_axi_BRESP),
        .m_axi_bvalid(pcl_axilite_bridge_0_m_axi_BVALID),
        .m_axi_rdata(pcl_axilite_bridge_0_m_axi_RDATA),
        .m_axi_rready(pcl_axilite_bridge_0_m_axi_RREADY),
        .m_axi_rresp(pcl_axilite_bridge_0_m_axi_RRESP),
        .m_axi_rvalid(pcl_axilite_bridge_0_m_axi_RVALID),
        .m_axi_wdata(pcl_axilite_bridge_0_m_axi_WDATA),
        .m_axi_wready(pcl_axilite_bridge_0_m_axi_WREADY),
        .m_axi_wstrb(pcl_axilite_bridge_0_m_axi_WSTRB),
        .m_axi_wvalid(pcl_axilite_bridge_0_m_axi_WVALID),
        .s_axi_araddr(S_AXI_CONTROL_1_ARADDR),
        .s_axi_arprot(S_AXI_CONTROL_1_ARPROT),
        .s_axi_arqos(S_AXI_CONTROL_1_ARQOS),
        .s_axi_arready(S_AXI_CONTROL_1_ARREADY),
        .s_axi_arvalid(S_AXI_CONTROL_1_ARVALID),
        .s_axi_awaddr(S_AXI_CONTROL_1_AWADDR),
        .s_axi_awprot(S_AXI_CONTROL_1_AWPROT),
        .s_axi_awqos(S_AXI_CONTROL_1_AWQOS),
        .s_axi_awready(S_AXI_CONTROL_1_AWREADY),
        .s_axi_awvalid(S_AXI_CONTROL_1_AWVALID),
        .s_axi_bready(S_AXI_CONTROL_1_BREADY),
        .s_axi_bresp(S_AXI_CONTROL_1_BRESP),
        .s_axi_bvalid(S_AXI_CONTROL_1_BVALID),
        .s_axi_rdata(S_AXI_CONTROL_1_RDATA),
        .s_axi_rready(S_AXI_CONTROL_1_RREADY),
        .s_axi_rresp(S_AXI_CONTROL_1_RRESP),
        .s_axi_rvalid(S_AXI_CONTROL_1_RVALID),
        .s_axi_wdata(S_AXI_CONTROL_1_WDATA),
        .s_axi_wready(S_AXI_CONTROL_1_WREADY),
        .s_axi_wstrb(S_AXI_CONTROL_1_WSTRB),
        .s_axi_wvalid(S_AXI_CONTROL_1_WVALID));
endmodule
