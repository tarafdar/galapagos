//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Fri Jun 22 15:25:12 2018
//Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target dariusMPI_debug_32x32.bd
//Design      : dariusMPI_debug_32x32
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "dariusMPI_debug_32x32,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dariusMPI_debug_32x32,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "dariusMPI_debug_32x32.hwdef" *) 
module dariusMPI_debug_32x32
   (ARESETN,
    CLK,
    M_AXI_MEM_araddr,
    M_AXI_MEM_arburst,
    M_AXI_MEM_arcache,
    M_AXI_MEM_arid,
    M_AXI_MEM_arlen,
    M_AXI_MEM_arlock,
    M_AXI_MEM_arprot,
    M_AXI_MEM_arqos,
    M_AXI_MEM_arready,
    M_AXI_MEM_arregion,
    M_AXI_MEM_arsize,
    M_AXI_MEM_arvalid,
    M_AXI_MEM_awaddr,
    M_AXI_MEM_awburst,
    M_AXI_MEM_awcache,
    M_AXI_MEM_awid,
    M_AXI_MEM_awlen,
    M_AXI_MEM_awlock,
    M_AXI_MEM_awprot,
    M_AXI_MEM_awqos,
    M_AXI_MEM_awready,
    M_AXI_MEM_awregion,
    M_AXI_MEM_awsize,
    M_AXI_MEM_awvalid,
    M_AXI_MEM_bid,
    M_AXI_MEM_bready,
    M_AXI_MEM_bresp,
    M_AXI_MEM_bvalid,
    M_AXI_MEM_rdata,
    M_AXI_MEM_rid,
    M_AXI_MEM_rlast,
    M_AXI_MEM_rready,
    M_AXI_MEM_rresp,
    M_AXI_MEM_rvalid,
    M_AXI_MEM_wdata,
    M_AXI_MEM_wlast,
    M_AXI_MEM_wready,
    M_AXI_MEM_wstrb,
    M_AXI_MEM_wvalid,
    id_in_V_0,
    stream_in_tdata,
    stream_in_tdest,
    stream_in_tid,
    stream_in_tkeep,
    stream_in_tlast,
    stream_in_tready,
    stream_in_tuser,
    stream_in_tvalid,
    stream_out_tdata,
    stream_out_tdest,
    stream_out_tid,
    stream_out_tkeep,
    stream_out_tlast,
    stream_out_tready,
    stream_out_tuser,
    stream_out_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW" *) input ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M_AXI_MEM:stream_in:stream_out, ASSOCIATED_RESET ARESETN, CLK_DOMAIN dariusMPI_debug_32x32_CLK, FREQ_HZ 156250000, PHASE 0.000" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MEM, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN dariusMPI_debug_32x32_CLK, DATA_WIDTH 512, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 3, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M_AXI_MEM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARBURST" *) output [1:0]M_AXI_MEM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARCACHE" *) output [3:0]M_AXI_MEM_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARID" *) output [2:0]M_AXI_MEM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLEN" *) output [7:0]M_AXI_MEM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLOCK" *) output [0:0]M_AXI_MEM_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARPROT" *) output [2:0]M_AXI_MEM_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARQOS" *) output [3:0]M_AXI_MEM_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARREADY" *) input [0:0]M_AXI_MEM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARREGION" *) output [3:0]M_AXI_MEM_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARSIZE" *) output [2:0]M_AXI_MEM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARVALID" *) output [0:0]M_AXI_MEM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWADDR" *) output [63:0]M_AXI_MEM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWBURST" *) output [1:0]M_AXI_MEM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWCACHE" *) output [3:0]M_AXI_MEM_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWID" *) output [2:0]M_AXI_MEM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLEN" *) output [7:0]M_AXI_MEM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLOCK" *) output [0:0]M_AXI_MEM_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWPROT" *) output [2:0]M_AXI_MEM_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWQOS" *) output [3:0]M_AXI_MEM_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWREADY" *) input [0:0]M_AXI_MEM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWREGION" *) output [3:0]M_AXI_MEM_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWSIZE" *) output [2:0]M_AXI_MEM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWVALID" *) output [0:0]M_AXI_MEM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BID" *) input [2:0]M_AXI_MEM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BREADY" *) output [0:0]M_AXI_MEM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BRESP" *) input [1:0]M_AXI_MEM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BVALID" *) input [0:0]M_AXI_MEM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RDATA" *) input [511:0]M_AXI_MEM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RID" *) input [2:0]M_AXI_MEM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RLAST" *) input [0:0]M_AXI_MEM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RREADY" *) output [0:0]M_AXI_MEM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RRESP" *) input [1:0]M_AXI_MEM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RVALID" *) input [0:0]M_AXI_MEM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WDATA" *) output [511:0]M_AXI_MEM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WLAST" *) output [0:0]M_AXI_MEM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WREADY" *) input [0:0]M_AXI_MEM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WSTRB" *) output [63:0]M_AXI_MEM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WVALID" *) output [0:0]M_AXI_MEM_wvalid;
  input [15:0]id_in_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_in, CLK_DOMAIN dariusMPI_debug_32x32_CLK, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 40} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 40" *) input [63:0]stream_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDEST" *) input [7:0]stream_in_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TID" *) input [7:0]stream_in_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TKEEP" *) input [7:0]stream_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TLAST" *) input [0:0]stream_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TREADY" *) output stream_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TUSER" *) input [39:0]stream_in_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TVALID" *) input stream_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out, CLK_DOMAIN dariusMPI_debug_32x32_CLK, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 40} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64 TUSER_WIDTH 40}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 40" *) output [63:0]stream_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDEST" *) output [7:0]stream_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TID" *) output [7:0]stream_out_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TKEEP" *) output [7:0]stream_out_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TLAST" *) output [0:0]stream_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TREADY" *) input stream_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TUSER" *) output [39:0]stream_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TVALID" *) output stream_out_tvalid;

  wire ARESETN_1;
  wire CLK_1;
  wire [31:0]axi_interconnect_control_M00_AXI_ARADDR;
  wire axi_interconnect_control_M00_AXI_ARREADY;
  wire axi_interconnect_control_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_control_M00_AXI_AWADDR;
  wire axi_interconnect_control_M00_AXI_AWREADY;
  wire axi_interconnect_control_M00_AXI_AWVALID;
  wire axi_interconnect_control_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_control_M00_AXI_BRESP;
  wire axi_interconnect_control_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_control_M00_AXI_RDATA;
  wire axi_interconnect_control_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_control_M00_AXI_RRESP;
  wire axi_interconnect_control_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_control_M00_AXI_WDATA;
  wire axi_interconnect_control_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_control_M00_AXI_WSTRB;
  wire axi_interconnect_control_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_mem_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_mem_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_mem_M00_AXI_ARCACHE;
  wire [2:0]axi_interconnect_mem_M00_AXI_ARID;
  wire [7:0]axi_interconnect_mem_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_mem_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_mem_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_mem_M00_AXI_ARQOS;
  wire [0:0]axi_interconnect_mem_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_mem_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_mem_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_mem_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_mem_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_mem_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_mem_M00_AXI_AWCACHE;
  wire [2:0]axi_interconnect_mem_M00_AXI_AWID;
  wire [7:0]axi_interconnect_mem_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_mem_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_mem_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_mem_M00_AXI_AWQOS;
  wire [0:0]axi_interconnect_mem_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_mem_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_mem_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_mem_M00_AXI_AWVALID;
  wire [2:0]axi_interconnect_mem_M00_AXI_BID;
  wire [0:0]axi_interconnect_mem_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_mem_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_mem_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_mem_M00_AXI_RDATA;
  wire [2:0]axi_interconnect_mem_M00_AXI_RID;
  wire [0:0]axi_interconnect_mem_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_mem_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_mem_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_mem_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_mem_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_mem_M00_AXI_WLAST;
  wire [0:0]axi_interconnect_mem_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_mem_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_mem_M00_AXI_WVALID;
  wire [31:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARADDR;
  wire [1:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARBURST;
  wire [3:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARCACHE;
  wire [0:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARID;
  wire [7:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARLEN;
  wire [1:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARLOCK;
  wire [2:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARPROT;
  wire [3:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARQOS;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_ARREADY;
  wire [2:0]dariusController_inst_M_AXI_DARIUS_DRIVER_ARSIZE;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_ARVALID;
  wire [31:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWADDR;
  wire [1:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWBURST;
  wire [3:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWCACHE;
  wire [0:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWID;
  wire [7:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWLEN;
  wire [1:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWLOCK;
  wire [2:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWPROT;
  wire [3:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWQOS;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_AWREADY;
  wire [2:0]dariusController_inst_M_AXI_DARIUS_DRIVER_AWSIZE;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_AWVALID;
  wire [0:0]dariusController_inst_M_AXI_DARIUS_DRIVER_BID;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_BREADY;
  wire [1:0]dariusController_inst_M_AXI_DARIUS_DRIVER_BRESP;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_BVALID;
  wire [31:0]dariusController_inst_M_AXI_DARIUS_DRIVER_RDATA;
  wire [0:0]dariusController_inst_M_AXI_DARIUS_DRIVER_RID;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_RLAST;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_RREADY;
  wire [1:0]dariusController_inst_M_AXI_DARIUS_DRIVER_RRESP;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_RVALID;
  wire [31:0]dariusController_inst_M_AXI_DARIUS_DRIVER_WDATA;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_WLAST;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_WREADY;
  wire [3:0]dariusController_inst_M_AXI_DARIUS_DRIVER_WSTRB;
  wire dariusController_inst_M_AXI_DARIUS_DRIVER_WVALID;
  wire [31:0]dariusController_inst_M_AXI_MEM_ARADDR;
  wire [1:0]dariusController_inst_M_AXI_MEM_ARBURST;
  wire [3:0]dariusController_inst_M_AXI_MEM_ARCACHE;
  wire [0:0]dariusController_inst_M_AXI_MEM_ARID;
  wire [7:0]dariusController_inst_M_AXI_MEM_ARLEN;
  wire [1:0]dariusController_inst_M_AXI_MEM_ARLOCK;
  wire [2:0]dariusController_inst_M_AXI_MEM_ARPROT;
  wire [3:0]dariusController_inst_M_AXI_MEM_ARQOS;
  wire dariusController_inst_M_AXI_MEM_ARREADY;
  wire [2:0]dariusController_inst_M_AXI_MEM_ARSIZE;
  wire dariusController_inst_M_AXI_MEM_ARVALID;
  wire [31:0]dariusController_inst_M_AXI_MEM_AWADDR;
  wire [1:0]dariusController_inst_M_AXI_MEM_AWBURST;
  wire [3:0]dariusController_inst_M_AXI_MEM_AWCACHE;
  wire [0:0]dariusController_inst_M_AXI_MEM_AWID;
  wire [7:0]dariusController_inst_M_AXI_MEM_AWLEN;
  wire [1:0]dariusController_inst_M_AXI_MEM_AWLOCK;
  wire [2:0]dariusController_inst_M_AXI_MEM_AWPROT;
  wire [3:0]dariusController_inst_M_AXI_MEM_AWQOS;
  wire dariusController_inst_M_AXI_MEM_AWREADY;
  wire [2:0]dariusController_inst_M_AXI_MEM_AWSIZE;
  wire dariusController_inst_M_AXI_MEM_AWVALID;
  wire [0:0]dariusController_inst_M_AXI_MEM_BID;
  wire dariusController_inst_M_AXI_MEM_BREADY;
  wire [1:0]dariusController_inst_M_AXI_MEM_BRESP;
  wire dariusController_inst_M_AXI_MEM_BVALID;
  wire [31:0]dariusController_inst_M_AXI_MEM_RDATA;
  wire [0:0]dariusController_inst_M_AXI_MEM_RID;
  wire dariusController_inst_M_AXI_MEM_RLAST;
  wire dariusController_inst_M_AXI_MEM_RREADY;
  wire [1:0]dariusController_inst_M_AXI_MEM_RRESP;
  wire dariusController_inst_M_AXI_MEM_RVALID;
  wire [31:0]dariusController_inst_M_AXI_MEM_WDATA;
  wire dariusController_inst_M_AXI_MEM_WLAST;
  wire dariusController_inst_M_AXI_MEM_WREADY;
  wire [3:0]dariusController_inst_M_AXI_MEM_WSTRB;
  wire dariusController_inst_M_AXI_MEM_WVALID;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]dariusController_inst_stream_out_V_TDATA;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TDEST" *) (* DONT_TOUCH *) wire [7:0]dariusController_inst_stream_out_V_TDEST;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TID" *) (* DONT_TOUCH *) wire [7:0]dariusController_inst_stream_out_V_TID;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]dariusController_inst_stream_out_V_TKEEP;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire [0:0]dariusController_inst_stream_out_V_TLAST;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire dariusController_inst_stream_out_V_TREADY;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [39:0]dariusController_inst_stream_out_V_TUSER;
  (* CONN_BUS_INFO = "dariusController_inst_stream_out_V xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire dariusController_inst_stream_out_V_TVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]darius_v2_0_0_m_axi_cmd_ARADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_cmd_ARLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_ARREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_ARVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]darius_v2_0_0_m_axi_cmd_AWADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_cmd_AWLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_AWREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_AWVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_BREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_BVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [127:0]darius_v2_0_0_m_axi_cmd_RDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_RLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_RREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_RVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [127:0]darius_v2_0_0_m_axi_cmd_WDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_WLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_WREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [15:0]darius_v2_0_0_m_axi_cmd_WSTRB;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_cmd xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_cmd_WVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_ifm_ARADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_ifm_ARLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_ARREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_ARVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_ifm_AWADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_ifm_AWLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_AWREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_AWVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_BREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_BVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]darius_v2_0_0_m_axi_ifm_RDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_RLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_RREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_RVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]darius_v2_0_0_m_axi_ifm_WDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_WLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_WREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_ifm_WSTRB;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ifm xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ifm_WVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_ofm_ARADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_ofm_ARLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_ARREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_ARVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_ofm_AWADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_ofm_AWLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_AWREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_AWVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_BREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_BVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]darius_v2_0_0_m_axi_ofm_RDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_RLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_RREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_RVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]darius_v2_0_0_m_axi_ofm_WDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_WLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_WREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_ofm_WSTRB;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_ofm xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_ofm_WVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_weight_ARADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_weight_ARLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_ARREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_ARVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_weight_AWADDR;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]darius_v2_0_0_m_axi_weight_AWLEN;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_AWREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_AWVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_BREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_BVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]darius_v2_0_0_m_axi_weight_RDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_RLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_RREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_RVALID;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]darius_v2_0_0_m_axi_weight_WDATA;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_WLAST;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_WREADY;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]darius_v2_0_0_m_axi_weight_WSTRB;
  (* CONN_BUS_INFO = "darius_v2_0_0_m_axi_weight xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire darius_v2_0_0_m_axi_weight_WVALID;
  wire [15:0]id_in_V_0_1;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]stream_in_V_0_1_TDATA;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TDEST" *) (* DONT_TOUCH *) wire [7:0]stream_in_V_0_1_TDEST;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TID" *) (* DONT_TOUCH *) wire [7:0]stream_in_V_0_1_TID;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]stream_in_V_0_1_TKEEP;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire [0:0]stream_in_V_0_1_TLAST;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire stream_in_V_0_1_TREADY;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [39:0]stream_in_V_0_1_TUSER;
  (* CONN_BUS_INFO = "stream_in_V_0_1 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire stream_in_V_0_1_TVALID;

  assign ARESETN_1 = ARESETN;
  assign CLK_1 = CLK;
  assign M_AXI_MEM_araddr[63:0] = axi_interconnect_mem_M00_AXI_ARADDR;
  assign M_AXI_MEM_arburst[1:0] = axi_interconnect_mem_M00_AXI_ARBURST;
  assign M_AXI_MEM_arcache[3:0] = axi_interconnect_mem_M00_AXI_ARCACHE;
  assign M_AXI_MEM_arid[2:0] = axi_interconnect_mem_M00_AXI_ARID;
  assign M_AXI_MEM_arlen[7:0] = axi_interconnect_mem_M00_AXI_ARLEN;
  assign M_AXI_MEM_arlock[0] = axi_interconnect_mem_M00_AXI_ARLOCK;
  assign M_AXI_MEM_arprot[2:0] = axi_interconnect_mem_M00_AXI_ARPROT;
  assign M_AXI_MEM_arqos[3:0] = axi_interconnect_mem_M00_AXI_ARQOS;
  assign M_AXI_MEM_arregion[3:0] = axi_interconnect_mem_M00_AXI_ARREGION;
  assign M_AXI_MEM_arsize[2:0] = axi_interconnect_mem_M00_AXI_ARSIZE;
  assign M_AXI_MEM_arvalid[0] = axi_interconnect_mem_M00_AXI_ARVALID;
  assign M_AXI_MEM_awaddr[63:0] = axi_interconnect_mem_M00_AXI_AWADDR;
  assign M_AXI_MEM_awburst[1:0] = axi_interconnect_mem_M00_AXI_AWBURST;
  assign M_AXI_MEM_awcache[3:0] = axi_interconnect_mem_M00_AXI_AWCACHE;
  assign M_AXI_MEM_awid[2:0] = axi_interconnect_mem_M00_AXI_AWID;
  assign M_AXI_MEM_awlen[7:0] = axi_interconnect_mem_M00_AXI_AWLEN;
  assign M_AXI_MEM_awlock[0] = axi_interconnect_mem_M00_AXI_AWLOCK;
  assign M_AXI_MEM_awprot[2:0] = axi_interconnect_mem_M00_AXI_AWPROT;
  assign M_AXI_MEM_awqos[3:0] = axi_interconnect_mem_M00_AXI_AWQOS;
  assign M_AXI_MEM_awregion[3:0] = axi_interconnect_mem_M00_AXI_AWREGION;
  assign M_AXI_MEM_awsize[2:0] = axi_interconnect_mem_M00_AXI_AWSIZE;
  assign M_AXI_MEM_awvalid[0] = axi_interconnect_mem_M00_AXI_AWVALID;
  assign M_AXI_MEM_bready[0] = axi_interconnect_mem_M00_AXI_BREADY;
  assign M_AXI_MEM_rready[0] = axi_interconnect_mem_M00_AXI_RREADY;
  assign M_AXI_MEM_wdata[511:0] = axi_interconnect_mem_M00_AXI_WDATA;
  assign M_AXI_MEM_wlast[0] = axi_interconnect_mem_M00_AXI_WLAST;
  assign M_AXI_MEM_wstrb[63:0] = axi_interconnect_mem_M00_AXI_WSTRB;
  assign M_AXI_MEM_wvalid[0] = axi_interconnect_mem_M00_AXI_WVALID;
  assign axi_interconnect_mem_M00_AXI_ARREADY = M_AXI_MEM_arready[0];
  assign axi_interconnect_mem_M00_AXI_AWREADY = M_AXI_MEM_awready[0];
  assign axi_interconnect_mem_M00_AXI_BID = M_AXI_MEM_bid[2:0];
  assign axi_interconnect_mem_M00_AXI_BRESP = M_AXI_MEM_bresp[1:0];
  assign axi_interconnect_mem_M00_AXI_BVALID = M_AXI_MEM_bvalid[0];
  assign axi_interconnect_mem_M00_AXI_RDATA = M_AXI_MEM_rdata[511:0];
  assign axi_interconnect_mem_M00_AXI_RID = M_AXI_MEM_rid[2:0];
  assign axi_interconnect_mem_M00_AXI_RLAST = M_AXI_MEM_rlast[0];
  assign axi_interconnect_mem_M00_AXI_RRESP = M_AXI_MEM_rresp[1:0];
  assign axi_interconnect_mem_M00_AXI_RVALID = M_AXI_MEM_rvalid[0];
  assign axi_interconnect_mem_M00_AXI_WREADY = M_AXI_MEM_wready[0];
  assign dariusController_inst_stream_out_V_TREADY = stream_out_tready;
  assign id_in_V_0_1 = id_in_V_0[15:0];
  assign stream_in_V_0_1_TDATA = stream_in_tdata[63:0];
  assign stream_in_V_0_1_TDEST = stream_in_tdest[7:0];
  assign stream_in_V_0_1_TID = stream_in_tid[7:0];
  assign stream_in_V_0_1_TKEEP = stream_in_tkeep[7:0];
  assign stream_in_V_0_1_TLAST = stream_in_tlast[0];
  assign stream_in_V_0_1_TUSER = stream_in_tuser[39:0];
  assign stream_in_V_0_1_TVALID = stream_in_tvalid;
  assign stream_in_tready = stream_in_V_0_1_TREADY;
  assign stream_out_tdata[63:0] = dariusController_inst_stream_out_V_TDATA;
  assign stream_out_tdest[7:0] = dariusController_inst_stream_out_V_TDEST;
  assign stream_out_tid[7:0] = dariusController_inst_stream_out_V_TID;
  assign stream_out_tkeep[7:0] = dariusController_inst_stream_out_V_TKEEP;
  assign stream_out_tlast[0] = dariusController_inst_stream_out_V_TLAST;
  assign stream_out_tuser[39:0] = dariusController_inst_stream_out_V_TUSER;
  assign stream_out_tvalid = dariusController_inst_stream_out_V_TVALID;
  dariusMPI_debug_32x32_axi_interconnect_control_0 axi_interconnect_control
       (.ACLK(CLK_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(CLK_1),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_control_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_control_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_control_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_control_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_control_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_control_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_control_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_control_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_control_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_control_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_control_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_control_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_control_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_control_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_control_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_control_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_control_M00_AXI_WVALID),
        .S00_ACLK(CLK_1),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(dariusController_inst_M_AXI_DARIUS_DRIVER_ARADDR),
        .S00_AXI_arburst(dariusController_inst_M_AXI_DARIUS_DRIVER_ARBURST),
        .S00_AXI_arcache(dariusController_inst_M_AXI_DARIUS_DRIVER_ARCACHE),
        .S00_AXI_arid(dariusController_inst_M_AXI_DARIUS_DRIVER_ARID),
        .S00_AXI_arlen(dariusController_inst_M_AXI_DARIUS_DRIVER_ARLEN),
        .S00_AXI_arlock(dariusController_inst_M_AXI_DARIUS_DRIVER_ARLOCK),
        .S00_AXI_arprot(dariusController_inst_M_AXI_DARIUS_DRIVER_ARPROT),
        .S00_AXI_arqos(dariusController_inst_M_AXI_DARIUS_DRIVER_ARQOS),
        .S00_AXI_arready(dariusController_inst_M_AXI_DARIUS_DRIVER_ARREADY),
        .S00_AXI_arsize(dariusController_inst_M_AXI_DARIUS_DRIVER_ARSIZE),
        .S00_AXI_arvalid(dariusController_inst_M_AXI_DARIUS_DRIVER_ARVALID),
        .S00_AXI_awaddr(dariusController_inst_M_AXI_DARIUS_DRIVER_AWADDR),
        .S00_AXI_awburst(dariusController_inst_M_AXI_DARIUS_DRIVER_AWBURST),
        .S00_AXI_awcache(dariusController_inst_M_AXI_DARIUS_DRIVER_AWCACHE),
        .S00_AXI_awid(dariusController_inst_M_AXI_DARIUS_DRIVER_AWID),
        .S00_AXI_awlen(dariusController_inst_M_AXI_DARIUS_DRIVER_AWLEN),
        .S00_AXI_awlock(dariusController_inst_M_AXI_DARIUS_DRIVER_AWLOCK),
        .S00_AXI_awprot(dariusController_inst_M_AXI_DARIUS_DRIVER_AWPROT),
        .S00_AXI_awqos(dariusController_inst_M_AXI_DARIUS_DRIVER_AWQOS),
        .S00_AXI_awready(dariusController_inst_M_AXI_DARIUS_DRIVER_AWREADY),
        .S00_AXI_awsize(dariusController_inst_M_AXI_DARIUS_DRIVER_AWSIZE),
        .S00_AXI_awvalid(dariusController_inst_M_AXI_DARIUS_DRIVER_AWVALID),
        .S00_AXI_bid(dariusController_inst_M_AXI_DARIUS_DRIVER_BID),
        .S00_AXI_bready(dariusController_inst_M_AXI_DARIUS_DRIVER_BREADY),
        .S00_AXI_bresp(dariusController_inst_M_AXI_DARIUS_DRIVER_BRESP),
        .S00_AXI_bvalid(dariusController_inst_M_AXI_DARIUS_DRIVER_BVALID),
        .S00_AXI_rdata(dariusController_inst_M_AXI_DARIUS_DRIVER_RDATA),
        .S00_AXI_rid(dariusController_inst_M_AXI_DARIUS_DRIVER_RID),
        .S00_AXI_rlast(dariusController_inst_M_AXI_DARIUS_DRIVER_RLAST),
        .S00_AXI_rready(dariusController_inst_M_AXI_DARIUS_DRIVER_RREADY),
        .S00_AXI_rresp(dariusController_inst_M_AXI_DARIUS_DRIVER_RRESP),
        .S00_AXI_rvalid(dariusController_inst_M_AXI_DARIUS_DRIVER_RVALID),
        .S00_AXI_wdata(dariusController_inst_M_AXI_DARIUS_DRIVER_WDATA),
        .S00_AXI_wlast(dariusController_inst_M_AXI_DARIUS_DRIVER_WLAST),
        .S00_AXI_wready(dariusController_inst_M_AXI_DARIUS_DRIVER_WREADY),
        .S00_AXI_wstrb(dariusController_inst_M_AXI_DARIUS_DRIVER_WSTRB),
        .S00_AXI_wvalid(dariusController_inst_M_AXI_DARIUS_DRIVER_WVALID));
  dariusMPI_debug_32x32_axi_interconnect_mem_0 axi_interconnect_mem
       (.ACLK(CLK_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(CLK_1),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_mem_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_mem_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_mem_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_mem_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_mem_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_mem_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_mem_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_mem_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_mem_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_interconnect_mem_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_interconnect_mem_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_mem_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_mem_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_mem_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_mem_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_mem_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_mem_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_mem_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_mem_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_mem_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_mem_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_interconnect_mem_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_interconnect_mem_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_mem_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_mem_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_mem_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_mem_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_mem_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_mem_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_mem_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_mem_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_mem_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_mem_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_mem_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_mem_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_mem_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_mem_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_mem_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_mem_M00_AXI_WVALID),
        .S00_ACLK(CLK_1),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(dariusController_inst_M_AXI_MEM_ARADDR),
        .S00_AXI_arburst(dariusController_inst_M_AXI_MEM_ARBURST),
        .S00_AXI_arcache(dariusController_inst_M_AXI_MEM_ARCACHE),
        .S00_AXI_arid(dariusController_inst_M_AXI_MEM_ARID),
        .S00_AXI_arlen(dariusController_inst_M_AXI_MEM_ARLEN),
        .S00_AXI_arlock(dariusController_inst_M_AXI_MEM_ARLOCK),
        .S00_AXI_arprot(dariusController_inst_M_AXI_MEM_ARPROT),
        .S00_AXI_arqos(dariusController_inst_M_AXI_MEM_ARQOS),
        .S00_AXI_arready(dariusController_inst_M_AXI_MEM_ARREADY),
        .S00_AXI_arsize(dariusController_inst_M_AXI_MEM_ARSIZE),
        .S00_AXI_arvalid(dariusController_inst_M_AXI_MEM_ARVALID),
        .S00_AXI_awaddr(dariusController_inst_M_AXI_MEM_AWADDR),
        .S00_AXI_awburst(dariusController_inst_M_AXI_MEM_AWBURST),
        .S00_AXI_awcache(dariusController_inst_M_AXI_MEM_AWCACHE),
        .S00_AXI_awid(dariusController_inst_M_AXI_MEM_AWID),
        .S00_AXI_awlen(dariusController_inst_M_AXI_MEM_AWLEN),
        .S00_AXI_awlock(dariusController_inst_M_AXI_MEM_AWLOCK),
        .S00_AXI_awprot(dariusController_inst_M_AXI_MEM_AWPROT),
        .S00_AXI_awqos(dariusController_inst_M_AXI_MEM_AWQOS),
        .S00_AXI_awready(dariusController_inst_M_AXI_MEM_AWREADY),
        .S00_AXI_awsize(dariusController_inst_M_AXI_MEM_AWSIZE),
        .S00_AXI_awvalid(dariusController_inst_M_AXI_MEM_AWVALID),
        .S00_AXI_bid(dariusController_inst_M_AXI_MEM_BID),
        .S00_AXI_bready(dariusController_inst_M_AXI_MEM_BREADY),
        .S00_AXI_bresp(dariusController_inst_M_AXI_MEM_BRESP),
        .S00_AXI_bvalid(dariusController_inst_M_AXI_MEM_BVALID),
        .S00_AXI_rdata(dariusController_inst_M_AXI_MEM_RDATA),
        .S00_AXI_rid(dariusController_inst_M_AXI_MEM_RID),
        .S00_AXI_rlast(dariusController_inst_M_AXI_MEM_RLAST),
        .S00_AXI_rready(dariusController_inst_M_AXI_MEM_RREADY),
        .S00_AXI_rresp(dariusController_inst_M_AXI_MEM_RRESP),
        .S00_AXI_rvalid(dariusController_inst_M_AXI_MEM_RVALID),
        .S00_AXI_wdata(dariusController_inst_M_AXI_MEM_WDATA),
        .S00_AXI_wlast(dariusController_inst_M_AXI_MEM_WLAST),
        .S00_AXI_wready(dariusController_inst_M_AXI_MEM_WREADY),
        .S00_AXI_wstrb(dariusController_inst_M_AXI_MEM_WSTRB),
        .S00_AXI_wvalid(dariusController_inst_M_AXI_MEM_WVALID),
        .S01_ACLK(CLK_1),
        .S01_ARESETN(ARESETN_1),
        .S01_AXI_araddr(darius_v2_0_0_m_axi_cmd_ARADDR),
        .S01_AXI_arlen(darius_v2_0_0_m_axi_cmd_ARLEN),
        .S01_AXI_arready(darius_v2_0_0_m_axi_cmd_ARREADY),
        .S01_AXI_arvalid(darius_v2_0_0_m_axi_cmd_ARVALID),
        .S01_AXI_awaddr(darius_v2_0_0_m_axi_cmd_AWADDR),
        .S01_AXI_awlen(darius_v2_0_0_m_axi_cmd_AWLEN),
        .S01_AXI_awready(darius_v2_0_0_m_axi_cmd_AWREADY),
        .S01_AXI_awvalid(darius_v2_0_0_m_axi_cmd_AWVALID),
        .S01_AXI_bready(darius_v2_0_0_m_axi_cmd_BREADY),
        .S01_AXI_bvalid(darius_v2_0_0_m_axi_cmd_BVALID),
        .S01_AXI_rdata(darius_v2_0_0_m_axi_cmd_RDATA),
        .S01_AXI_rlast(darius_v2_0_0_m_axi_cmd_RLAST),
        .S01_AXI_rready(darius_v2_0_0_m_axi_cmd_RREADY),
        .S01_AXI_rvalid(darius_v2_0_0_m_axi_cmd_RVALID),
        .S01_AXI_wdata(darius_v2_0_0_m_axi_cmd_WDATA),
        .S01_AXI_wlast(darius_v2_0_0_m_axi_cmd_WLAST),
        .S01_AXI_wready(darius_v2_0_0_m_axi_cmd_WREADY),
        .S01_AXI_wstrb(darius_v2_0_0_m_axi_cmd_WSTRB),
        .S01_AXI_wvalid(darius_v2_0_0_m_axi_cmd_WVALID),
        .S02_ACLK(CLK_1),
        .S02_ARESETN(ARESETN_1),
        .S02_AXI_araddr(darius_v2_0_0_m_axi_ifm_ARADDR),
        .S02_AXI_arlen(darius_v2_0_0_m_axi_ifm_ARLEN),
        .S02_AXI_arready(darius_v2_0_0_m_axi_ifm_ARREADY),
        .S02_AXI_arvalid(darius_v2_0_0_m_axi_ifm_ARVALID),
        .S02_AXI_awaddr(darius_v2_0_0_m_axi_ifm_AWADDR),
        .S02_AXI_awlen(darius_v2_0_0_m_axi_ifm_AWLEN),
        .S02_AXI_awready(darius_v2_0_0_m_axi_ifm_AWREADY),
        .S02_AXI_awvalid(darius_v2_0_0_m_axi_ifm_AWVALID),
        .S02_AXI_bready(darius_v2_0_0_m_axi_ifm_BREADY),
        .S02_AXI_bvalid(darius_v2_0_0_m_axi_ifm_BVALID),
        .S02_AXI_rdata(darius_v2_0_0_m_axi_ifm_RDATA),
        .S02_AXI_rlast(darius_v2_0_0_m_axi_ifm_RLAST),
        .S02_AXI_rready(darius_v2_0_0_m_axi_ifm_RREADY),
        .S02_AXI_rvalid(darius_v2_0_0_m_axi_ifm_RVALID),
        .S02_AXI_wdata(darius_v2_0_0_m_axi_ifm_WDATA),
        .S02_AXI_wlast(darius_v2_0_0_m_axi_ifm_WLAST),
        .S02_AXI_wready(darius_v2_0_0_m_axi_ifm_WREADY),
        .S02_AXI_wstrb(darius_v2_0_0_m_axi_ifm_WSTRB),
        .S02_AXI_wvalid(darius_v2_0_0_m_axi_ifm_WVALID),
        .S03_ACLK(CLK_1),
        .S03_ARESETN(ARESETN_1),
        .S03_AXI_araddr(darius_v2_0_0_m_axi_ofm_ARADDR),
        .S03_AXI_arlen(darius_v2_0_0_m_axi_ofm_ARLEN),
        .S03_AXI_arready(darius_v2_0_0_m_axi_ofm_ARREADY),
        .S03_AXI_arvalid(darius_v2_0_0_m_axi_ofm_ARVALID),
        .S03_AXI_awaddr(darius_v2_0_0_m_axi_ofm_AWADDR),
        .S03_AXI_awlen(darius_v2_0_0_m_axi_ofm_AWLEN),
        .S03_AXI_awready(darius_v2_0_0_m_axi_ofm_AWREADY),
        .S03_AXI_awvalid(darius_v2_0_0_m_axi_ofm_AWVALID),
        .S03_AXI_bready(darius_v2_0_0_m_axi_ofm_BREADY),
        .S03_AXI_bvalid(darius_v2_0_0_m_axi_ofm_BVALID),
        .S03_AXI_rdata(darius_v2_0_0_m_axi_ofm_RDATA),
        .S03_AXI_rlast(darius_v2_0_0_m_axi_ofm_RLAST),
        .S03_AXI_rready(darius_v2_0_0_m_axi_ofm_RREADY),
        .S03_AXI_rvalid(darius_v2_0_0_m_axi_ofm_RVALID),
        .S03_AXI_wdata(darius_v2_0_0_m_axi_ofm_WDATA),
        .S03_AXI_wlast(darius_v2_0_0_m_axi_ofm_WLAST),
        .S03_AXI_wready(darius_v2_0_0_m_axi_ofm_WREADY),
        .S03_AXI_wstrb(darius_v2_0_0_m_axi_ofm_WSTRB),
        .S03_AXI_wvalid(darius_v2_0_0_m_axi_ofm_WVALID),
        .S04_ACLK(CLK_1),
        .S04_ARESETN(ARESETN_1),
        .S04_AXI_araddr(darius_v2_0_0_m_axi_weight_ARADDR),
        .S04_AXI_arlen(darius_v2_0_0_m_axi_weight_ARLEN),
        .S04_AXI_arready(darius_v2_0_0_m_axi_weight_ARREADY),
        .S04_AXI_arvalid(darius_v2_0_0_m_axi_weight_ARVALID),
        .S04_AXI_awaddr(darius_v2_0_0_m_axi_weight_AWADDR),
        .S04_AXI_awlen(darius_v2_0_0_m_axi_weight_AWLEN),
        .S04_AXI_awready(darius_v2_0_0_m_axi_weight_AWREADY),
        .S04_AXI_awvalid(darius_v2_0_0_m_axi_weight_AWVALID),
        .S04_AXI_bready(darius_v2_0_0_m_axi_weight_BREADY),
        .S04_AXI_bvalid(darius_v2_0_0_m_axi_weight_BVALID),
        .S04_AXI_rdata(darius_v2_0_0_m_axi_weight_RDATA),
        .S04_AXI_rlast(darius_v2_0_0_m_axi_weight_RLAST),
        .S04_AXI_rready(darius_v2_0_0_m_axi_weight_RREADY),
        .S04_AXI_rvalid(darius_v2_0_0_m_axi_weight_RVALID),
        .S04_AXI_wdata(darius_v2_0_0_m_axi_weight_WDATA),
        .S04_AXI_wlast(darius_v2_0_0_m_axi_weight_WLAST),
        .S04_AXI_wready(darius_v2_0_0_m_axi_weight_WREADY),
        .S04_AXI_wstrb(darius_v2_0_0_m_axi_weight_WSTRB),
        .S04_AXI_wvalid(darius_v2_0_0_m_axi_weight_WVALID));
  dariusMPI_debug_32x32_dariusController_inst_0 dariusController_inst
       (.aclk(CLK_1),
        .aresetn(ARESETN_1),
        .id_in_V(id_in_V_0_1),
        .m_axi_darius_driver_ARADDR(dariusController_inst_M_AXI_DARIUS_DRIVER_ARADDR),
        .m_axi_darius_driver_ARBURST(dariusController_inst_M_AXI_DARIUS_DRIVER_ARBURST),
        .m_axi_darius_driver_ARCACHE(dariusController_inst_M_AXI_DARIUS_DRIVER_ARCACHE),
        .m_axi_darius_driver_ARID(dariusController_inst_M_AXI_DARIUS_DRIVER_ARID),
        .m_axi_darius_driver_ARLEN(dariusController_inst_M_AXI_DARIUS_DRIVER_ARLEN),
        .m_axi_darius_driver_ARLOCK(dariusController_inst_M_AXI_DARIUS_DRIVER_ARLOCK),
        .m_axi_darius_driver_ARPROT(dariusController_inst_M_AXI_DARIUS_DRIVER_ARPROT),
        .m_axi_darius_driver_ARQOS(dariusController_inst_M_AXI_DARIUS_DRIVER_ARQOS),
        .m_axi_darius_driver_ARREADY(dariusController_inst_M_AXI_DARIUS_DRIVER_ARREADY),
        .m_axi_darius_driver_ARSIZE(dariusController_inst_M_AXI_DARIUS_DRIVER_ARSIZE),
        .m_axi_darius_driver_ARVALID(dariusController_inst_M_AXI_DARIUS_DRIVER_ARVALID),
        .m_axi_darius_driver_AWADDR(dariusController_inst_M_AXI_DARIUS_DRIVER_AWADDR),
        .m_axi_darius_driver_AWBURST(dariusController_inst_M_AXI_DARIUS_DRIVER_AWBURST),
        .m_axi_darius_driver_AWCACHE(dariusController_inst_M_AXI_DARIUS_DRIVER_AWCACHE),
        .m_axi_darius_driver_AWID(dariusController_inst_M_AXI_DARIUS_DRIVER_AWID),
        .m_axi_darius_driver_AWLEN(dariusController_inst_M_AXI_DARIUS_DRIVER_AWLEN),
        .m_axi_darius_driver_AWLOCK(dariusController_inst_M_AXI_DARIUS_DRIVER_AWLOCK),
        .m_axi_darius_driver_AWPROT(dariusController_inst_M_AXI_DARIUS_DRIVER_AWPROT),
        .m_axi_darius_driver_AWQOS(dariusController_inst_M_AXI_DARIUS_DRIVER_AWQOS),
        .m_axi_darius_driver_AWREADY(dariusController_inst_M_AXI_DARIUS_DRIVER_AWREADY),
        .m_axi_darius_driver_AWSIZE(dariusController_inst_M_AXI_DARIUS_DRIVER_AWSIZE),
        .m_axi_darius_driver_AWVALID(dariusController_inst_M_AXI_DARIUS_DRIVER_AWVALID),
        .m_axi_darius_driver_BID(dariusController_inst_M_AXI_DARIUS_DRIVER_BID),
        .m_axi_darius_driver_BREADY(dariusController_inst_M_AXI_DARIUS_DRIVER_BREADY),
        .m_axi_darius_driver_BRESP(dariusController_inst_M_AXI_DARIUS_DRIVER_BRESP),
        .m_axi_darius_driver_BVALID(dariusController_inst_M_AXI_DARIUS_DRIVER_BVALID),
        .m_axi_darius_driver_RDATA(dariusController_inst_M_AXI_DARIUS_DRIVER_RDATA),
        .m_axi_darius_driver_RID(dariusController_inst_M_AXI_DARIUS_DRIVER_RID),
        .m_axi_darius_driver_RLAST(dariusController_inst_M_AXI_DARIUS_DRIVER_RLAST),
        .m_axi_darius_driver_RREADY(dariusController_inst_M_AXI_DARIUS_DRIVER_RREADY),
        .m_axi_darius_driver_RRESP(dariusController_inst_M_AXI_DARIUS_DRIVER_RRESP),
        .m_axi_darius_driver_RVALID(dariusController_inst_M_AXI_DARIUS_DRIVER_RVALID),
        .m_axi_darius_driver_WDATA(dariusController_inst_M_AXI_DARIUS_DRIVER_WDATA),
        .m_axi_darius_driver_WLAST(dariusController_inst_M_AXI_DARIUS_DRIVER_WLAST),
        .m_axi_darius_driver_WREADY(dariusController_inst_M_AXI_DARIUS_DRIVER_WREADY),
        .m_axi_darius_driver_WSTRB(dariusController_inst_M_AXI_DARIUS_DRIVER_WSTRB),
        .m_axi_darius_driver_WVALID(dariusController_inst_M_AXI_DARIUS_DRIVER_WVALID),
        .m_axi_mem_ARADDR(dariusController_inst_M_AXI_MEM_ARADDR),
        .m_axi_mem_ARBURST(dariusController_inst_M_AXI_MEM_ARBURST),
        .m_axi_mem_ARCACHE(dariusController_inst_M_AXI_MEM_ARCACHE),
        .m_axi_mem_ARID(dariusController_inst_M_AXI_MEM_ARID),
        .m_axi_mem_ARLEN(dariusController_inst_M_AXI_MEM_ARLEN),
        .m_axi_mem_ARLOCK(dariusController_inst_M_AXI_MEM_ARLOCK),
        .m_axi_mem_ARPROT(dariusController_inst_M_AXI_MEM_ARPROT),
        .m_axi_mem_ARQOS(dariusController_inst_M_AXI_MEM_ARQOS),
        .m_axi_mem_ARREADY(dariusController_inst_M_AXI_MEM_ARREADY),
        .m_axi_mem_ARSIZE(dariusController_inst_M_AXI_MEM_ARSIZE),
        .m_axi_mem_ARVALID(dariusController_inst_M_AXI_MEM_ARVALID),
        .m_axi_mem_AWADDR(dariusController_inst_M_AXI_MEM_AWADDR),
        .m_axi_mem_AWBURST(dariusController_inst_M_AXI_MEM_AWBURST),
        .m_axi_mem_AWCACHE(dariusController_inst_M_AXI_MEM_AWCACHE),
        .m_axi_mem_AWID(dariusController_inst_M_AXI_MEM_AWID),
        .m_axi_mem_AWLEN(dariusController_inst_M_AXI_MEM_AWLEN),
        .m_axi_mem_AWLOCK(dariusController_inst_M_AXI_MEM_AWLOCK),
        .m_axi_mem_AWPROT(dariusController_inst_M_AXI_MEM_AWPROT),
        .m_axi_mem_AWQOS(dariusController_inst_M_AXI_MEM_AWQOS),
        .m_axi_mem_AWREADY(dariusController_inst_M_AXI_MEM_AWREADY),
        .m_axi_mem_AWSIZE(dariusController_inst_M_AXI_MEM_AWSIZE),
        .m_axi_mem_AWVALID(dariusController_inst_M_AXI_MEM_AWVALID),
        .m_axi_mem_BID(dariusController_inst_M_AXI_MEM_BID),
        .m_axi_mem_BREADY(dariusController_inst_M_AXI_MEM_BREADY),
        .m_axi_mem_BRESP(dariusController_inst_M_AXI_MEM_BRESP),
        .m_axi_mem_BVALID(dariusController_inst_M_AXI_MEM_BVALID),
        .m_axi_mem_RDATA(dariusController_inst_M_AXI_MEM_RDATA),
        .m_axi_mem_RID(dariusController_inst_M_AXI_MEM_RID),
        .m_axi_mem_RLAST(dariusController_inst_M_AXI_MEM_RLAST),
        .m_axi_mem_RREADY(dariusController_inst_M_AXI_MEM_RREADY),
        .m_axi_mem_RRESP(dariusController_inst_M_AXI_MEM_RRESP),
        .m_axi_mem_RVALID(dariusController_inst_M_AXI_MEM_RVALID),
        .m_axi_mem_WDATA(dariusController_inst_M_AXI_MEM_WDATA),
        .m_axi_mem_WLAST(dariusController_inst_M_AXI_MEM_WLAST),
        .m_axi_mem_WREADY(dariusController_inst_M_AXI_MEM_WREADY),
        .m_axi_mem_WSTRB(dariusController_inst_M_AXI_MEM_WSTRB),
        .m_axi_mem_WVALID(dariusController_inst_M_AXI_MEM_WVALID),
        .stream_in_V_TDATA(stream_in_V_0_1_TDATA),
        .stream_in_V_TDEST(stream_in_V_0_1_TDEST),
        .stream_in_V_TID(stream_in_V_0_1_TID),
        .stream_in_V_TKEEP(stream_in_V_0_1_TKEEP),
        .stream_in_V_TLAST(stream_in_V_0_1_TLAST),
        .stream_in_V_TREADY(stream_in_V_0_1_TREADY),
        .stream_in_V_TUSER(stream_in_V_0_1_TUSER),
        .stream_in_V_TVALID(stream_in_V_0_1_TVALID),
        .stream_out_V_TDATA(dariusController_inst_stream_out_V_TDATA),
        .stream_out_V_TDEST(dariusController_inst_stream_out_V_TDEST),
        .stream_out_V_TID(dariusController_inst_stream_out_V_TID),
        .stream_out_V_TKEEP(dariusController_inst_stream_out_V_TKEEP),
        .stream_out_V_TLAST(dariusController_inst_stream_out_V_TLAST),
        .stream_out_V_TREADY(dariusController_inst_stream_out_V_TREADY),
        .stream_out_V_TUSER(dariusController_inst_stream_out_V_TUSER),
        .stream_out_V_TVALID(dariusController_inst_stream_out_V_TVALID));
  dariusMPI_debug_32x32_darius_v2_0_0_0 darius_v2_0_0
       (.ap_clk(CLK_1),
        .ap_rst_n(ARESETN_1),
        .m_axi_cmd_araddr(darius_v2_0_0_m_axi_cmd_ARADDR),
        .m_axi_cmd_arlen(darius_v2_0_0_m_axi_cmd_ARLEN),
        .m_axi_cmd_arready(darius_v2_0_0_m_axi_cmd_ARREADY),
        .m_axi_cmd_arvalid(darius_v2_0_0_m_axi_cmd_ARVALID),
        .m_axi_cmd_awaddr(darius_v2_0_0_m_axi_cmd_AWADDR),
        .m_axi_cmd_awlen(darius_v2_0_0_m_axi_cmd_AWLEN),
        .m_axi_cmd_awready(darius_v2_0_0_m_axi_cmd_AWREADY),
        .m_axi_cmd_awvalid(darius_v2_0_0_m_axi_cmd_AWVALID),
        .m_axi_cmd_bready(darius_v2_0_0_m_axi_cmd_BREADY),
        .m_axi_cmd_bvalid(darius_v2_0_0_m_axi_cmd_BVALID),
        .m_axi_cmd_rdata(darius_v2_0_0_m_axi_cmd_RDATA),
        .m_axi_cmd_rlast(darius_v2_0_0_m_axi_cmd_RLAST),
        .m_axi_cmd_rready(darius_v2_0_0_m_axi_cmd_RREADY),
        .m_axi_cmd_rvalid(darius_v2_0_0_m_axi_cmd_RVALID),
        .m_axi_cmd_wdata(darius_v2_0_0_m_axi_cmd_WDATA),
        .m_axi_cmd_wlast(darius_v2_0_0_m_axi_cmd_WLAST),
        .m_axi_cmd_wready(darius_v2_0_0_m_axi_cmd_WREADY),
        .m_axi_cmd_wstrb(darius_v2_0_0_m_axi_cmd_WSTRB),
        .m_axi_cmd_wvalid(darius_v2_0_0_m_axi_cmd_WVALID),
        .m_axi_ifm_araddr(darius_v2_0_0_m_axi_ifm_ARADDR),
        .m_axi_ifm_arlen(darius_v2_0_0_m_axi_ifm_ARLEN),
        .m_axi_ifm_arready(darius_v2_0_0_m_axi_ifm_ARREADY),
        .m_axi_ifm_arvalid(darius_v2_0_0_m_axi_ifm_ARVALID),
        .m_axi_ifm_awaddr(darius_v2_0_0_m_axi_ifm_AWADDR),
        .m_axi_ifm_awlen(darius_v2_0_0_m_axi_ifm_AWLEN),
        .m_axi_ifm_awready(darius_v2_0_0_m_axi_ifm_AWREADY),
        .m_axi_ifm_awvalid(darius_v2_0_0_m_axi_ifm_AWVALID),
        .m_axi_ifm_bready(darius_v2_0_0_m_axi_ifm_BREADY),
        .m_axi_ifm_bvalid(darius_v2_0_0_m_axi_ifm_BVALID),
        .m_axi_ifm_rdata(darius_v2_0_0_m_axi_ifm_RDATA),
        .m_axi_ifm_rlast(darius_v2_0_0_m_axi_ifm_RLAST),
        .m_axi_ifm_rready(darius_v2_0_0_m_axi_ifm_RREADY),
        .m_axi_ifm_rvalid(darius_v2_0_0_m_axi_ifm_RVALID),
        .m_axi_ifm_wdata(darius_v2_0_0_m_axi_ifm_WDATA),
        .m_axi_ifm_wlast(darius_v2_0_0_m_axi_ifm_WLAST),
        .m_axi_ifm_wready(darius_v2_0_0_m_axi_ifm_WREADY),
        .m_axi_ifm_wstrb(darius_v2_0_0_m_axi_ifm_WSTRB),
        .m_axi_ifm_wvalid(darius_v2_0_0_m_axi_ifm_WVALID),
        .m_axi_ofm_araddr(darius_v2_0_0_m_axi_ofm_ARADDR),
        .m_axi_ofm_arlen(darius_v2_0_0_m_axi_ofm_ARLEN),
        .m_axi_ofm_arready(darius_v2_0_0_m_axi_ofm_ARREADY),
        .m_axi_ofm_arvalid(darius_v2_0_0_m_axi_ofm_ARVALID),
        .m_axi_ofm_awaddr(darius_v2_0_0_m_axi_ofm_AWADDR),
        .m_axi_ofm_awlen(darius_v2_0_0_m_axi_ofm_AWLEN),
        .m_axi_ofm_awready(darius_v2_0_0_m_axi_ofm_AWREADY),
        .m_axi_ofm_awvalid(darius_v2_0_0_m_axi_ofm_AWVALID),
        .m_axi_ofm_bready(darius_v2_0_0_m_axi_ofm_BREADY),
        .m_axi_ofm_bvalid(darius_v2_0_0_m_axi_ofm_BVALID),
        .m_axi_ofm_rdata(darius_v2_0_0_m_axi_ofm_RDATA),
        .m_axi_ofm_rlast(darius_v2_0_0_m_axi_ofm_RLAST),
        .m_axi_ofm_rready(darius_v2_0_0_m_axi_ofm_RREADY),
        .m_axi_ofm_rvalid(darius_v2_0_0_m_axi_ofm_RVALID),
        .m_axi_ofm_wdata(darius_v2_0_0_m_axi_ofm_WDATA),
        .m_axi_ofm_wlast(darius_v2_0_0_m_axi_ofm_WLAST),
        .m_axi_ofm_wready(darius_v2_0_0_m_axi_ofm_WREADY),
        .m_axi_ofm_wstrb(darius_v2_0_0_m_axi_ofm_WSTRB),
        .m_axi_ofm_wvalid(darius_v2_0_0_m_axi_ofm_WVALID),
        .m_axi_weight_araddr(darius_v2_0_0_m_axi_weight_ARADDR),
        .m_axi_weight_arlen(darius_v2_0_0_m_axi_weight_ARLEN),
        .m_axi_weight_arready(darius_v2_0_0_m_axi_weight_ARREADY),
        .m_axi_weight_arvalid(darius_v2_0_0_m_axi_weight_ARVALID),
        .m_axi_weight_awaddr(darius_v2_0_0_m_axi_weight_AWADDR),
        .m_axi_weight_awlen(darius_v2_0_0_m_axi_weight_AWLEN),
        .m_axi_weight_awready(darius_v2_0_0_m_axi_weight_AWREADY),
        .m_axi_weight_awvalid(darius_v2_0_0_m_axi_weight_AWVALID),
        .m_axi_weight_bready(darius_v2_0_0_m_axi_weight_BREADY),
        .m_axi_weight_bvalid(darius_v2_0_0_m_axi_weight_BVALID),
        .m_axi_weight_rdata(darius_v2_0_0_m_axi_weight_RDATA),
        .m_axi_weight_rlast(darius_v2_0_0_m_axi_weight_RLAST),
        .m_axi_weight_rready(darius_v2_0_0_m_axi_weight_RREADY),
        .m_axi_weight_rvalid(darius_v2_0_0_m_axi_weight_RVALID),
        .m_axi_weight_wdata(darius_v2_0_0_m_axi_weight_WDATA),
        .m_axi_weight_wlast(darius_v2_0_0_m_axi_weight_WLAST),
        .m_axi_weight_wready(darius_v2_0_0_m_axi_weight_WREADY),
        .m_axi_weight_wstrb(darius_v2_0_0_m_axi_weight_WSTRB),
        .m_axi_weight_wvalid(darius_v2_0_0_m_axi_weight_WVALID),
        .s_axi_control_araddr(axi_interconnect_control_M00_AXI_ARADDR[11:0]),
        .s_axi_control_arready(axi_interconnect_control_M00_AXI_ARREADY),
        .s_axi_control_arvalid(axi_interconnect_control_M00_AXI_ARVALID),
        .s_axi_control_awaddr(axi_interconnect_control_M00_AXI_AWADDR[11:0]),
        .s_axi_control_awready(axi_interconnect_control_M00_AXI_AWREADY),
        .s_axi_control_awvalid(axi_interconnect_control_M00_AXI_AWVALID),
        .s_axi_control_bready(axi_interconnect_control_M00_AXI_BREADY),
        .s_axi_control_bresp(axi_interconnect_control_M00_AXI_BRESP),
        .s_axi_control_bvalid(axi_interconnect_control_M00_AXI_BVALID),
        .s_axi_control_rdata(axi_interconnect_control_M00_AXI_RDATA),
        .s_axi_control_rready(axi_interconnect_control_M00_AXI_RREADY),
        .s_axi_control_rresp(axi_interconnect_control_M00_AXI_RRESP),
        .s_axi_control_rvalid(axi_interconnect_control_M00_AXI_RVALID),
        .s_axi_control_wdata(axi_interconnect_control_M00_AXI_WDATA),
        .s_axi_control_wready(axi_interconnect_control_M00_AXI_WREADY),
        .s_axi_control_wstrb(axi_interconnect_control_M00_AXI_WSTRB),
        .s_axi_control_wvalid(axi_interconnect_control_M00_AXI_WVALID));
  dariusMPI_debug_32x32_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(stream_in_V_0_1_TDATA),
        .SLOT_0_AXIS_tdest(stream_in_V_0_1_TDEST),
        .SLOT_0_AXIS_tid(stream_in_V_0_1_TID),
        .SLOT_0_AXIS_tkeep(stream_in_V_0_1_TKEEP),
        .SLOT_0_AXIS_tlast(stream_in_V_0_1_TLAST),
        .SLOT_0_AXIS_tready(stream_in_V_0_1_TREADY),
        .SLOT_0_AXIS_tuser(stream_in_V_0_1_TUSER),
        .SLOT_0_AXIS_tvalid(stream_in_V_0_1_TVALID),
        .SLOT_1_AXIS_tdata(dariusController_inst_stream_out_V_TDATA),
        .SLOT_1_AXIS_tdest(dariusController_inst_stream_out_V_TDEST),
        .SLOT_1_AXIS_tid(dariusController_inst_stream_out_V_TID),
        .SLOT_1_AXIS_tkeep(dariusController_inst_stream_out_V_TKEEP),
        .SLOT_1_AXIS_tlast(dariusController_inst_stream_out_V_TLAST),
        .SLOT_1_AXIS_tready(dariusController_inst_stream_out_V_TREADY),
        .SLOT_1_AXIS_tuser(dariusController_inst_stream_out_V_TUSER),
        .SLOT_1_AXIS_tvalid(dariusController_inst_stream_out_V_TVALID),
        .SLOT_2_AXI_araddr(darius_v2_0_0_m_axi_cmd_ARADDR),
        .SLOT_2_AXI_arlen(darius_v2_0_0_m_axi_cmd_ARLEN),
        .SLOT_2_AXI_arready(darius_v2_0_0_m_axi_cmd_ARREADY),
        .SLOT_2_AXI_arsize({1'b1,1'b0,1'b0}),
        .SLOT_2_AXI_arvalid(darius_v2_0_0_m_axi_cmd_ARVALID),
        .SLOT_2_AXI_awaddr(darius_v2_0_0_m_axi_cmd_AWADDR),
        .SLOT_2_AXI_awlen(darius_v2_0_0_m_axi_cmd_AWLEN),
        .SLOT_2_AXI_awready(darius_v2_0_0_m_axi_cmd_AWREADY),
        .SLOT_2_AXI_awsize({1'b1,1'b0,1'b0}),
        .SLOT_2_AXI_awvalid(darius_v2_0_0_m_axi_cmd_AWVALID),
        .SLOT_2_AXI_bready(darius_v2_0_0_m_axi_cmd_BREADY),
        .SLOT_2_AXI_bvalid(darius_v2_0_0_m_axi_cmd_BVALID),
        .SLOT_2_AXI_rdata(darius_v2_0_0_m_axi_cmd_RDATA),
        .SLOT_2_AXI_rlast(darius_v2_0_0_m_axi_cmd_RLAST),
        .SLOT_2_AXI_rready(darius_v2_0_0_m_axi_cmd_RREADY),
        .SLOT_2_AXI_rvalid(darius_v2_0_0_m_axi_cmd_RVALID),
        .SLOT_2_AXI_wdata(darius_v2_0_0_m_axi_cmd_WDATA),
        .SLOT_2_AXI_wlast(darius_v2_0_0_m_axi_cmd_WLAST),
        .SLOT_2_AXI_wready(darius_v2_0_0_m_axi_cmd_WREADY),
        .SLOT_2_AXI_wstrb(darius_v2_0_0_m_axi_cmd_WSTRB),
        .SLOT_2_AXI_wvalid(darius_v2_0_0_m_axi_cmd_WVALID),
        .SLOT_3_AXI_araddr(darius_v2_0_0_m_axi_ifm_ARADDR),
        .SLOT_3_AXI_arlen(darius_v2_0_0_m_axi_ifm_ARLEN),
        .SLOT_3_AXI_arready(darius_v2_0_0_m_axi_ifm_ARREADY),
        .SLOT_3_AXI_arsize({1'b1,1'b1,1'b0}),
        .SLOT_3_AXI_arvalid(darius_v2_0_0_m_axi_ifm_ARVALID),
        .SLOT_3_AXI_awaddr(darius_v2_0_0_m_axi_ifm_AWADDR),
        .SLOT_3_AXI_awlen(darius_v2_0_0_m_axi_ifm_AWLEN),
        .SLOT_3_AXI_awready(darius_v2_0_0_m_axi_ifm_AWREADY),
        .SLOT_3_AXI_awsize({1'b1,1'b1,1'b0}),
        .SLOT_3_AXI_awvalid(darius_v2_0_0_m_axi_ifm_AWVALID),
        .SLOT_3_AXI_bready(darius_v2_0_0_m_axi_ifm_BREADY),
        .SLOT_3_AXI_bvalid(darius_v2_0_0_m_axi_ifm_BVALID),
        .SLOT_3_AXI_rdata(darius_v2_0_0_m_axi_ifm_RDATA),
        .SLOT_3_AXI_rlast(darius_v2_0_0_m_axi_ifm_RLAST),
        .SLOT_3_AXI_rready(darius_v2_0_0_m_axi_ifm_RREADY),
        .SLOT_3_AXI_rvalid(darius_v2_0_0_m_axi_ifm_RVALID),
        .SLOT_3_AXI_wdata(darius_v2_0_0_m_axi_ifm_WDATA),
        .SLOT_3_AXI_wlast(darius_v2_0_0_m_axi_ifm_WLAST),
        .SLOT_3_AXI_wready(darius_v2_0_0_m_axi_ifm_WREADY),
        .SLOT_3_AXI_wstrb(darius_v2_0_0_m_axi_ifm_WSTRB),
        .SLOT_3_AXI_wvalid(darius_v2_0_0_m_axi_ifm_WVALID),
        .SLOT_4_AXI_araddr(darius_v2_0_0_m_axi_ofm_ARADDR),
        .SLOT_4_AXI_arlen(darius_v2_0_0_m_axi_ofm_ARLEN),
        .SLOT_4_AXI_arready(darius_v2_0_0_m_axi_ofm_ARREADY),
        .SLOT_4_AXI_arsize({1'b1,1'b1,1'b0}),
        .SLOT_4_AXI_arvalid(darius_v2_0_0_m_axi_ofm_ARVALID),
        .SLOT_4_AXI_awaddr(darius_v2_0_0_m_axi_ofm_AWADDR),
        .SLOT_4_AXI_awlen(darius_v2_0_0_m_axi_ofm_AWLEN),
        .SLOT_4_AXI_awready(darius_v2_0_0_m_axi_ofm_AWREADY),
        .SLOT_4_AXI_awsize({1'b1,1'b1,1'b0}),
        .SLOT_4_AXI_awvalid(darius_v2_0_0_m_axi_ofm_AWVALID),
        .SLOT_4_AXI_bready(darius_v2_0_0_m_axi_ofm_BREADY),
        .SLOT_4_AXI_bvalid(darius_v2_0_0_m_axi_ofm_BVALID),
        .SLOT_4_AXI_rdata(darius_v2_0_0_m_axi_ofm_RDATA),
        .SLOT_4_AXI_rlast(darius_v2_0_0_m_axi_ofm_RLAST),
        .SLOT_4_AXI_rready(darius_v2_0_0_m_axi_ofm_RREADY),
        .SLOT_4_AXI_rvalid(darius_v2_0_0_m_axi_ofm_RVALID),
        .SLOT_4_AXI_wdata(darius_v2_0_0_m_axi_ofm_WDATA),
        .SLOT_4_AXI_wlast(darius_v2_0_0_m_axi_ofm_WLAST),
        .SLOT_4_AXI_wready(darius_v2_0_0_m_axi_ofm_WREADY),
        .SLOT_4_AXI_wstrb(darius_v2_0_0_m_axi_ofm_WSTRB),
        .SLOT_4_AXI_wvalid(darius_v2_0_0_m_axi_ofm_WVALID),
        .SLOT_5_AXI_araddr(darius_v2_0_0_m_axi_weight_ARADDR),
        .SLOT_5_AXI_arlen(darius_v2_0_0_m_axi_weight_ARLEN),
        .SLOT_5_AXI_arready(darius_v2_0_0_m_axi_weight_ARREADY),
        .SLOT_5_AXI_arsize({1'b1,1'b1,1'b0}),
        .SLOT_5_AXI_arvalid(darius_v2_0_0_m_axi_weight_ARVALID),
        .SLOT_5_AXI_awaddr(darius_v2_0_0_m_axi_weight_AWADDR),
        .SLOT_5_AXI_awlen(darius_v2_0_0_m_axi_weight_AWLEN),
        .SLOT_5_AXI_awready(darius_v2_0_0_m_axi_weight_AWREADY),
        .SLOT_5_AXI_awsize({1'b1,1'b1,1'b0}),
        .SLOT_5_AXI_awvalid(darius_v2_0_0_m_axi_weight_AWVALID),
        .SLOT_5_AXI_bready(darius_v2_0_0_m_axi_weight_BREADY),
        .SLOT_5_AXI_bvalid(darius_v2_0_0_m_axi_weight_BVALID),
        .SLOT_5_AXI_rdata(darius_v2_0_0_m_axi_weight_RDATA),
        .SLOT_5_AXI_rlast(darius_v2_0_0_m_axi_weight_RLAST),
        .SLOT_5_AXI_rready(darius_v2_0_0_m_axi_weight_RREADY),
        .SLOT_5_AXI_rvalid(darius_v2_0_0_m_axi_weight_RVALID),
        .SLOT_5_AXI_wdata(darius_v2_0_0_m_axi_weight_WDATA),
        .SLOT_5_AXI_wlast(darius_v2_0_0_m_axi_weight_WLAST),
        .SLOT_5_AXI_wready(darius_v2_0_0_m_axi_weight_WREADY),
        .SLOT_5_AXI_wstrb(darius_v2_0_0_m_axi_weight_WSTRB),
        .SLOT_5_AXI_wvalid(darius_v2_0_0_m_axi_weight_WVALID),
        .clk(CLK_1),
        .resetn(ARESETN_1));
endmodule

module dariusMPI_debug_32x32_axi_interconnect_control_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_control_ACLK_net;
  wire axi_interconnect_control_ARESETN_net;
  wire [31:0]axi_interconnect_control_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_control_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_control_to_s00_couplers_ARCACHE;
  wire [0:0]axi_interconnect_control_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_control_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_control_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_control_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_control_to_s00_couplers_ARQOS;
  wire axi_interconnect_control_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_control_to_s00_couplers_ARSIZE;
  wire axi_interconnect_control_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_control_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_control_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_control_to_s00_couplers_AWCACHE;
  wire [0:0]axi_interconnect_control_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_control_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_control_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_control_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_control_to_s00_couplers_AWQOS;
  wire axi_interconnect_control_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_control_to_s00_couplers_AWSIZE;
  wire axi_interconnect_control_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_control_to_s00_couplers_BID;
  wire axi_interconnect_control_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_control_to_s00_couplers_BRESP;
  wire axi_interconnect_control_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_control_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_control_to_s00_couplers_RID;
  wire axi_interconnect_control_to_s00_couplers_RLAST;
  wire axi_interconnect_control_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_control_to_s00_couplers_RRESP;
  wire axi_interconnect_control_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_control_to_s00_couplers_WDATA;
  wire axi_interconnect_control_to_s00_couplers_WLAST;
  wire axi_interconnect_control_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_control_to_s00_couplers_WSTRB;
  wire axi_interconnect_control_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_control_ARADDR;
  wire s00_couplers_to_axi_interconnect_control_ARREADY;
  wire s00_couplers_to_axi_interconnect_control_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_control_AWADDR;
  wire s00_couplers_to_axi_interconnect_control_AWREADY;
  wire s00_couplers_to_axi_interconnect_control_AWVALID;
  wire s00_couplers_to_axi_interconnect_control_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_control_BRESP;
  wire s00_couplers_to_axi_interconnect_control_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_control_RDATA;
  wire s00_couplers_to_axi_interconnect_control_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_control_RRESP;
  wire s00_couplers_to_axi_interconnect_control_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_control_WDATA;
  wire s00_couplers_to_axi_interconnect_control_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_control_WSTRB;
  wire s00_couplers_to_axi_interconnect_control_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_control_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_control_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_control_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_control_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_control_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_control_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_control_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_control_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_control_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_control_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_control_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_interconnect_control_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_control_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_control_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_control_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_interconnect_control_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_control_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_control_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_control_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_control_to_s00_couplers_WREADY;
  assign axi_interconnect_control_ACLK_net = M00_ACLK;
  assign axi_interconnect_control_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_control_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_control_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_control_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_control_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_interconnect_control_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_control_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_control_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_control_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_control_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_control_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_control_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_control_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_control_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_control_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_interconnect_control_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_control_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_control_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_control_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_control_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_control_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_control_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_control_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_control_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_control_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_control_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_control_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_control_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_control_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_control_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_control_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_control_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_control_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_control_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_control_WREADY = M00_AXI_wready;
  s00_couplers_imp_1OAIMPJ s00_couplers
       (.M_ACLK(axi_interconnect_control_ACLK_net),
        .M_ARESETN(axi_interconnect_control_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_control_ARADDR),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_control_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_control_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_control_AWADDR),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_control_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_control_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_control_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_control_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_control_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_control_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_control_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_control_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_control_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_control_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_control_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_control_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_control_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_control_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_control_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_control_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_control_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_control_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_control_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_control_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_control_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_control_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_control_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_control_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_control_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_control_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_control_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_control_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_control_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_control_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_control_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_control_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_control_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_control_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_control_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_control_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_control_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_control_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_control_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_control_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_control_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_control_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_control_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_control_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_control_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_control_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_control_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_control_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_control_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_control_to_s00_couplers_WVALID));
endmodule

module dariusMPI_debug_32x32_axi_interconnect_mem_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arready,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awready,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arready,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awready,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arlen,
    S03_AXI_arready,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awlen,
    S03_AXI_awready,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    S04_ACLK,
    S04_ARESETN,
    S04_AXI_araddr,
    S04_AXI_arlen,
    S04_AXI_arready,
    S04_AXI_arvalid,
    S04_AXI_awaddr,
    S04_AXI_awlen,
    S04_AXI_awready,
    S04_AXI_awvalid,
    S04_AXI_bready,
    S04_AXI_bvalid,
    S04_AXI_rdata,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rvalid,
    S04_AXI_wdata,
    S04_AXI_wlast,
    S04_AXI_wready,
    S04_AXI_wstrb,
    S04_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [2:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [2:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  output S01_AXI_arready;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  output S01_AXI_awready;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output S01_AXI_bvalid;
  output [127:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output S01_AXI_rvalid;
  input [127:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [15:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [63:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  output S02_AXI_arready;
  input S02_AXI_arvalid;
  input [63:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  output S02_AXI_awready;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output S02_AXI_bvalid;
  output [511:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output S02_AXI_rvalid;
  input [511:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [63:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [63:0]S03_AXI_araddr;
  input [7:0]S03_AXI_arlen;
  output S03_AXI_arready;
  input S03_AXI_arvalid;
  input [63:0]S03_AXI_awaddr;
  input [7:0]S03_AXI_awlen;
  output S03_AXI_awready;
  input S03_AXI_awvalid;
  input S03_AXI_bready;
  output S03_AXI_bvalid;
  output [511:0]S03_AXI_rdata;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output S03_AXI_rvalid;
  input [511:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [63:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;
  input S04_ACLK;
  input S04_ARESETN;
  input [63:0]S04_AXI_araddr;
  input [7:0]S04_AXI_arlen;
  output S04_AXI_arready;
  input S04_AXI_arvalid;
  input [63:0]S04_AXI_awaddr;
  input [7:0]S04_AXI_awlen;
  output S04_AXI_awready;
  input S04_AXI_awvalid;
  input S04_AXI_bready;
  output S04_AXI_bvalid;
  output [511:0]S04_AXI_rdata;
  output S04_AXI_rlast;
  input S04_AXI_rready;
  output S04_AXI_rvalid;
  input [511:0]S04_AXI_wdata;
  input S04_AXI_wlast;
  output S04_AXI_wready;
  input [63:0]S04_AXI_wstrb;
  input S04_AXI_wvalid;

  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [0:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [1:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [0:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [1:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [7:0]S01_AXI_1_ARLEN;
  wire S01_AXI_1_ARREADY;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [7:0]S01_AXI_1_AWLEN;
  wire S01_AXI_1_AWREADY;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire S01_AXI_1_BVALID;
  wire [127:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire S01_AXI_1_RVALID;
  wire [127:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [15:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire axi_interconnect_mem_ACLK_net;
  wire axi_interconnect_mem_ARESETN_net;
  wire [63:0]axi_interconnect_mem_to_s02_couplers_ARADDR;
  wire [7:0]axi_interconnect_mem_to_s02_couplers_ARLEN;
  wire axi_interconnect_mem_to_s02_couplers_ARREADY;
  wire axi_interconnect_mem_to_s02_couplers_ARVALID;
  wire [63:0]axi_interconnect_mem_to_s02_couplers_AWADDR;
  wire [7:0]axi_interconnect_mem_to_s02_couplers_AWLEN;
  wire axi_interconnect_mem_to_s02_couplers_AWREADY;
  wire axi_interconnect_mem_to_s02_couplers_AWVALID;
  wire axi_interconnect_mem_to_s02_couplers_BREADY;
  wire axi_interconnect_mem_to_s02_couplers_BVALID;
  wire [511:0]axi_interconnect_mem_to_s02_couplers_RDATA;
  wire axi_interconnect_mem_to_s02_couplers_RLAST;
  wire axi_interconnect_mem_to_s02_couplers_RREADY;
  wire axi_interconnect_mem_to_s02_couplers_RVALID;
  wire [511:0]axi_interconnect_mem_to_s02_couplers_WDATA;
  wire axi_interconnect_mem_to_s02_couplers_WLAST;
  wire axi_interconnect_mem_to_s02_couplers_WREADY;
  wire [63:0]axi_interconnect_mem_to_s02_couplers_WSTRB;
  wire axi_interconnect_mem_to_s02_couplers_WVALID;
  wire [63:0]axi_interconnect_mem_to_s03_couplers_ARADDR;
  wire [7:0]axi_interconnect_mem_to_s03_couplers_ARLEN;
  wire axi_interconnect_mem_to_s03_couplers_ARREADY;
  wire axi_interconnect_mem_to_s03_couplers_ARVALID;
  wire [63:0]axi_interconnect_mem_to_s03_couplers_AWADDR;
  wire [7:0]axi_interconnect_mem_to_s03_couplers_AWLEN;
  wire axi_interconnect_mem_to_s03_couplers_AWREADY;
  wire axi_interconnect_mem_to_s03_couplers_AWVALID;
  wire axi_interconnect_mem_to_s03_couplers_BREADY;
  wire axi_interconnect_mem_to_s03_couplers_BVALID;
  wire [511:0]axi_interconnect_mem_to_s03_couplers_RDATA;
  wire axi_interconnect_mem_to_s03_couplers_RLAST;
  wire axi_interconnect_mem_to_s03_couplers_RREADY;
  wire axi_interconnect_mem_to_s03_couplers_RVALID;
  wire [511:0]axi_interconnect_mem_to_s03_couplers_WDATA;
  wire axi_interconnect_mem_to_s03_couplers_WLAST;
  wire axi_interconnect_mem_to_s03_couplers_WREADY;
  wire [63:0]axi_interconnect_mem_to_s03_couplers_WSTRB;
  wire axi_interconnect_mem_to_s03_couplers_WVALID;
  wire [63:0]axi_interconnect_mem_to_s04_couplers_ARADDR;
  wire [7:0]axi_interconnect_mem_to_s04_couplers_ARLEN;
  wire axi_interconnect_mem_to_s04_couplers_ARREADY;
  wire axi_interconnect_mem_to_s04_couplers_ARVALID;
  wire [63:0]axi_interconnect_mem_to_s04_couplers_AWADDR;
  wire [7:0]axi_interconnect_mem_to_s04_couplers_AWLEN;
  wire axi_interconnect_mem_to_s04_couplers_AWREADY;
  wire axi_interconnect_mem_to_s04_couplers_AWVALID;
  wire axi_interconnect_mem_to_s04_couplers_BREADY;
  wire axi_interconnect_mem_to_s04_couplers_BVALID;
  wire [511:0]axi_interconnect_mem_to_s04_couplers_RDATA;
  wire axi_interconnect_mem_to_s04_couplers_RLAST;
  wire axi_interconnect_mem_to_s04_couplers_RREADY;
  wire axi_interconnect_mem_to_s04_couplers_RVALID;
  wire [511:0]axi_interconnect_mem_to_s04_couplers_WDATA;
  wire axi_interconnect_mem_to_s04_couplers_WLAST;
  wire axi_interconnect_mem_to_s04_couplers_WREADY;
  wire [63:0]axi_interconnect_mem_to_s04_couplers_WSTRB;
  wire axi_interconnect_mem_to_s04_couplers_WVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_mem_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_mem_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_mem_ARCACHE;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_mem_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_mem_ARQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_ARREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_mem_ARREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_ARSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_ARVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_mem_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_mem_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_mem_AWCACHE;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_mem_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_mem_AWQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_AWREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_mem_AWREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_AWSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_AWVALID;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_BID;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_mem_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_BVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_mem_RDATA;
  wire [2:0]m00_couplers_to_axi_interconnect_mem_RID;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_RLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_mem_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_RVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_mem_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_WLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_WREADY;
  wire [63:0]m00_couplers_to_axi_interconnect_mem_WSTRB;
  wire [0:0]m00_couplers_to_axi_interconnect_mem_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s00_mmu_M_AXI_ARADDR;
  wire [1:0]s00_mmu_M_AXI_ARBURST;
  wire [3:0]s00_mmu_M_AXI_ARCACHE;
  wire [0:0]s00_mmu_M_AXI_ARID;
  wire [7:0]s00_mmu_M_AXI_ARLEN;
  wire [0:0]s00_mmu_M_AXI_ARLOCK;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire [3:0]s00_mmu_M_AXI_ARQOS;
  wire s00_mmu_M_AXI_ARREADY;
  wire [2:0]s00_mmu_M_AXI_ARSIZE;
  wire s00_mmu_M_AXI_ARVALID;
  wire [31:0]s00_mmu_M_AXI_AWADDR;
  wire [1:0]s00_mmu_M_AXI_AWBURST;
  wire [3:0]s00_mmu_M_AXI_AWCACHE;
  wire [0:0]s00_mmu_M_AXI_AWID;
  wire [7:0]s00_mmu_M_AXI_AWLEN;
  wire [0:0]s00_mmu_M_AXI_AWLOCK;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire [3:0]s00_mmu_M_AXI_AWQOS;
  wire s00_mmu_M_AXI_AWREADY;
  wire [2:0]s00_mmu_M_AXI_AWSIZE;
  wire s00_mmu_M_AXI_AWVALID;
  wire [0:0]s00_mmu_M_AXI_BID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire s00_mmu_M_AXI_BVALID;
  wire [31:0]s00_mmu_M_AXI_RDATA;
  wire [0:0]s00_mmu_M_AXI_RID;
  wire s00_mmu_M_AXI_RLAST;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire s00_mmu_M_AXI_RVALID;
  wire [31:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WLAST;
  wire s00_mmu_M_AXI_WREADY;
  wire [3:0]s00_mmu_M_AXI_WSTRB;
  wire s00_mmu_M_AXI_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire s01_mmu_M_AXI_ARVALID;
  wire [31:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire s01_mmu_M_AXI_AWVALID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire s01_mmu_M_AXI_BVALID;
  wire [127:0]s01_mmu_M_AXI_RDATA;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire s01_mmu_M_AXI_RVALID;
  wire [127:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [15:0]s01_mmu_M_AXI_WSTRB;
  wire s01_mmu_M_AXI_WVALID;
  wire [63:0]s02_couplers_to_xbar_ARADDR;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire s02_couplers_to_xbar_ARVALID;
  wire [63:0]s02_couplers_to_xbar_AWADDR;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [1535:1024]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [511:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [63:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [63:0]s03_couplers_to_xbar_ARADDR;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire s03_couplers_to_xbar_ARVALID;
  wire [63:0]s03_couplers_to_xbar_AWADDR;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [2047:1536]s03_couplers_to_xbar_RDATA;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [511:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [63:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [63:0]s04_couplers_to_xbar_ARADDR;
  wire [7:0]s04_couplers_to_xbar_ARLEN;
  wire [4:4]s04_couplers_to_xbar_ARREADY;
  wire s04_couplers_to_xbar_ARVALID;
  wire [63:0]s04_couplers_to_xbar_AWADDR;
  wire [7:0]s04_couplers_to_xbar_AWLEN;
  wire [4:4]s04_couplers_to_xbar_AWREADY;
  wire s04_couplers_to_xbar_AWVALID;
  wire s04_couplers_to_xbar_BREADY;
  wire [4:4]s04_couplers_to_xbar_BVALID;
  wire [2559:2048]s04_couplers_to_xbar_RDATA;
  wire [4:4]s04_couplers_to_xbar_RLAST;
  wire s04_couplers_to_xbar_RREADY;
  wire [4:4]s04_couplers_to_xbar_RVALID;
  wire [511:0]s04_couplers_to_xbar_WDATA;
  wire s04_couplers_to_xbar_WLAST;
  wire [4:4]s04_couplers_to_xbar_WREADY;
  wire [63:0]s04_couplers_to_xbar_WSTRB;
  wire s04_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [2:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [2:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [2:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [2:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_AXI_araddr[63:0] = m00_couplers_to_axi_interconnect_mem_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_mem_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_mem_ARCACHE;
  assign M00_AXI_arid[2:0] = m00_couplers_to_axi_interconnect_mem_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_mem_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_mem_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_mem_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_mem_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_interconnect_mem_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_mem_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_mem_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_axi_interconnect_mem_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_mem_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_mem_AWCACHE;
  assign M00_AXI_awid[2:0] = m00_couplers_to_axi_interconnect_mem_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_mem_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_mem_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_mem_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_mem_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_interconnect_mem_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_mem_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_mem_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_mem_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_mem_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_axi_interconnect_mem_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_axi_interconnect_mem_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_axi_interconnect_mem_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_mem_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[1:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[1:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[0] = S00_AXI_1_RID;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[31:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[31:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[127:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[15:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[127:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign S02_AXI_arready = axi_interconnect_mem_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_interconnect_mem_to_s02_couplers_AWREADY;
  assign S02_AXI_bvalid = axi_interconnect_mem_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[511:0] = axi_interconnect_mem_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_interconnect_mem_to_s02_couplers_RLAST;
  assign S02_AXI_rvalid = axi_interconnect_mem_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_interconnect_mem_to_s02_couplers_WREADY;
  assign S03_AXI_arready = axi_interconnect_mem_to_s03_couplers_ARREADY;
  assign S03_AXI_awready = axi_interconnect_mem_to_s03_couplers_AWREADY;
  assign S03_AXI_bvalid = axi_interconnect_mem_to_s03_couplers_BVALID;
  assign S03_AXI_rdata[511:0] = axi_interconnect_mem_to_s03_couplers_RDATA;
  assign S03_AXI_rlast = axi_interconnect_mem_to_s03_couplers_RLAST;
  assign S03_AXI_rvalid = axi_interconnect_mem_to_s03_couplers_RVALID;
  assign S03_AXI_wready = axi_interconnect_mem_to_s03_couplers_WREADY;
  assign S04_AXI_arready = axi_interconnect_mem_to_s04_couplers_ARREADY;
  assign S04_AXI_awready = axi_interconnect_mem_to_s04_couplers_AWREADY;
  assign S04_AXI_bvalid = axi_interconnect_mem_to_s04_couplers_BVALID;
  assign S04_AXI_rdata[511:0] = axi_interconnect_mem_to_s04_couplers_RDATA;
  assign S04_AXI_rlast = axi_interconnect_mem_to_s04_couplers_RLAST;
  assign S04_AXI_rvalid = axi_interconnect_mem_to_s04_couplers_RVALID;
  assign S04_AXI_wready = axi_interconnect_mem_to_s04_couplers_WREADY;
  assign axi_interconnect_mem_ACLK_net = ACLK;
  assign axi_interconnect_mem_ARESETN_net = ARESETN;
  assign axi_interconnect_mem_to_s02_couplers_ARADDR = S02_AXI_araddr[63:0];
  assign axi_interconnect_mem_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_interconnect_mem_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_interconnect_mem_to_s02_couplers_AWADDR = S02_AXI_awaddr[63:0];
  assign axi_interconnect_mem_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_interconnect_mem_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_interconnect_mem_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_interconnect_mem_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_interconnect_mem_to_s02_couplers_WDATA = S02_AXI_wdata[511:0];
  assign axi_interconnect_mem_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_interconnect_mem_to_s02_couplers_WSTRB = S02_AXI_wstrb[63:0];
  assign axi_interconnect_mem_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign axi_interconnect_mem_to_s03_couplers_ARADDR = S03_AXI_araddr[63:0];
  assign axi_interconnect_mem_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign axi_interconnect_mem_to_s03_couplers_ARVALID = S03_AXI_arvalid;
  assign axi_interconnect_mem_to_s03_couplers_AWADDR = S03_AXI_awaddr[63:0];
  assign axi_interconnect_mem_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign axi_interconnect_mem_to_s03_couplers_AWVALID = S03_AXI_awvalid;
  assign axi_interconnect_mem_to_s03_couplers_BREADY = S03_AXI_bready;
  assign axi_interconnect_mem_to_s03_couplers_RREADY = S03_AXI_rready;
  assign axi_interconnect_mem_to_s03_couplers_WDATA = S03_AXI_wdata[511:0];
  assign axi_interconnect_mem_to_s03_couplers_WLAST = S03_AXI_wlast;
  assign axi_interconnect_mem_to_s03_couplers_WSTRB = S03_AXI_wstrb[63:0];
  assign axi_interconnect_mem_to_s03_couplers_WVALID = S03_AXI_wvalid;
  assign axi_interconnect_mem_to_s04_couplers_ARADDR = S04_AXI_araddr[63:0];
  assign axi_interconnect_mem_to_s04_couplers_ARLEN = S04_AXI_arlen[7:0];
  assign axi_interconnect_mem_to_s04_couplers_ARVALID = S04_AXI_arvalid;
  assign axi_interconnect_mem_to_s04_couplers_AWADDR = S04_AXI_awaddr[63:0];
  assign axi_interconnect_mem_to_s04_couplers_AWLEN = S04_AXI_awlen[7:0];
  assign axi_interconnect_mem_to_s04_couplers_AWVALID = S04_AXI_awvalid;
  assign axi_interconnect_mem_to_s04_couplers_BREADY = S04_AXI_bready;
  assign axi_interconnect_mem_to_s04_couplers_RREADY = S04_AXI_rready;
  assign axi_interconnect_mem_to_s04_couplers_WDATA = S04_AXI_wdata[511:0];
  assign axi_interconnect_mem_to_s04_couplers_WLAST = S04_AXI_wlast;
  assign axi_interconnect_mem_to_s04_couplers_WSTRB = S04_AXI_wstrb[63:0];
  assign axi_interconnect_mem_to_s04_couplers_WVALID = S04_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_mem_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_mem_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_mem_BID = M00_AXI_bid[2:0];
  assign m00_couplers_to_axi_interconnect_mem_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_mem_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_mem_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_axi_interconnect_mem_RID = M00_AXI_rid[2:0];
  assign m00_couplers_to_axi_interconnect_mem_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_axi_interconnect_mem_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_mem_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_mem_WREADY = M00_AXI_wready[0];
  m00_couplers_imp_1MPJ1RO m00_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_mem_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_mem_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_mem_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_mem_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_mem_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_mem_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_mem_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_mem_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_mem_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_mem_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_mem_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_mem_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_mem_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_mem_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_mem_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_mem_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_mem_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_mem_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_mem_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_mem_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_mem_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_mem_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_mem_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_mem_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_mem_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_mem_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_mem_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_mem_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_mem_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_mem_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_mem_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_mem_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_mem_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_mem_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_mem_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_mem_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_mem_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_mem_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_mem_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1LVJ1F9 s00_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(s00_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s00_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s00_mmu_M_AXI_ARCACHE),
        .S_AXI_arid(s00_mmu_M_AXI_ARID),
        .S_AXI_arlen(s00_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s00_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s00_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s00_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s00_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s00_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s00_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s00_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s00_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s00_mmu_M_AXI_AWCACHE),
        .S_AXI_awid(s00_mmu_M_AXI_AWID),
        .S_AXI_awlen(s00_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s00_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s00_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s00_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s00_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s00_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s00_mmu_M_AXI_AWVALID),
        .S_AXI_bid(s00_mmu_M_AXI_BID),
        .S_AXI_bready(s00_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s00_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s00_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s00_mmu_M_AXI_RDATA),
        .S_AXI_rid(s00_mmu_M_AXI_RID),
        .S_AXI_rlast(s00_mmu_M_AXI_RLAST),
        .S_AXI_rready(s00_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s00_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s00_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s00_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s00_mmu_M_AXI_WLAST),
        .S_AXI_wready(s00_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s00_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s00_mmu_M_AXI_WVALID));
  dariusMPI_debug_32x32_s00_mmu_0 s00_mmu
       (.aclk(axi_interconnect_mem_ACLK_net),
        .aresetn(axi_interconnect_mem_ARESETN_net),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .m_axi_arid(s00_mmu_M_AXI_ARID),
        .m_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s00_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s00_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s00_mmu_M_AXI_AWID),
        .m_axi_awlen(s00_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s00_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s00_mmu_M_AXI_AWQOS),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s00_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bid(s00_mmu_M_AXI_BID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rid(s00_mmu_M_AXI_RID),
        .m_axi_rlast(s00_mmu_M_AXI_RLAST),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wlast(s00_mmu_M_AXI_WLAST),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arburst(S00_AXI_1_ARBURST),
        .s_axi_arcache(S00_AXI_1_ARCACHE),
        .s_axi_arid(S00_AXI_1_ARID),
        .s_axi_arlen(S00_AXI_1_ARLEN),
        .s_axi_arlock(S00_AXI_1_ARLOCK[0]),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arqos(S00_AXI_1_ARQOS),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arsize(S00_AXI_1_ARSIZE),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awburst(S00_AXI_1_AWBURST),
        .s_axi_awcache(S00_AXI_1_AWCACHE),
        .s_axi_awid(S00_AXI_1_AWID),
        .s_axi_awlen(S00_AXI_1_AWLEN),
        .s_axi_awlock(S00_AXI_1_AWLOCK[0]),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awqos(S00_AXI_1_AWQOS),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awsize(S00_AXI_1_AWSIZE),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bid(S00_AXI_1_BID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rid(S00_AXI_1_RID),
        .s_axi_rlast(S00_AXI_1_RLAST),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wlast(S00_AXI_1_WLAST),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  s01_couplers_imp_1PPX8V8 s01_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(s01_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s01_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s01_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s01_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s01_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s01_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s01_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s01_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s01_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s01_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s01_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s01_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s01_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s01_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s01_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s01_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s01_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s01_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s01_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s01_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s01_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s01_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s01_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s01_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s01_mmu_M_AXI_RLAST),
        .S_AXI_rready(s01_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s01_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s01_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s01_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s01_mmu_M_AXI_WLAST),
        .S_AXI_wready(s01_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s01_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s01_mmu_M_AXI_WVALID));
  dariusMPI_debug_32x32_s01_mmu_0 s01_mmu
       (.aclk(axi_interconnect_mem_ACLK_net),
        .aresetn(axi_interconnect_mem_ARESETN_net),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize({1'b1,1'b0,1'b0}),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_awaddr(S01_AXI_1_AWADDR),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awlen(S01_AXI_1_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S01_AXI_1_AWREADY),
        .s_axi_awsize({1'b1,1'b0,1'b0}),
        .s_axi_awvalid(S01_AXI_1_AWVALID),
        .s_axi_bready(S01_AXI_1_BREADY),
        .s_axi_bvalid(S01_AXI_1_BVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rvalid(S01_AXI_1_RVALID),
        .s_axi_wdata(S01_AXI_1_WDATA),
        .s_axi_wlast(S01_AXI_1_WLAST),
        .s_axi_wready(S01_AXI_1_WREADY),
        .s_axi_wstrb(S01_AXI_1_WSTRB),
        .s_axi_wvalid(S01_AXI_1_WVALID));
  s02_couplers_imp_1KZ64WN s02_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_mem_to_s02_couplers_ARADDR),
        .S_AXI_arlen(axi_interconnect_mem_to_s02_couplers_ARLEN),
        .S_AXI_arready(axi_interconnect_mem_to_s02_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_mem_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_mem_to_s02_couplers_AWADDR),
        .S_AXI_awlen(axi_interconnect_mem_to_s02_couplers_AWLEN),
        .S_AXI_awready(axi_interconnect_mem_to_s02_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_mem_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_mem_to_s02_couplers_BREADY),
        .S_AXI_bvalid(axi_interconnect_mem_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_mem_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_mem_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_mem_to_s02_couplers_RREADY),
        .S_AXI_rvalid(axi_interconnect_mem_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_mem_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_mem_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_mem_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_mem_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_mem_to_s02_couplers_WVALID));
  s03_couplers_imp_1IB8N0M s03_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_mem_to_s03_couplers_ARADDR),
        .S_AXI_arlen(axi_interconnect_mem_to_s03_couplers_ARLEN),
        .S_AXI_arready(axi_interconnect_mem_to_s03_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_mem_to_s03_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_mem_to_s03_couplers_AWADDR),
        .S_AXI_awlen(axi_interconnect_mem_to_s03_couplers_AWLEN),
        .S_AXI_awready(axi_interconnect_mem_to_s03_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_mem_to_s03_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_mem_to_s03_couplers_BREADY),
        .S_AXI_bvalid(axi_interconnect_mem_to_s03_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_mem_to_s03_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_mem_to_s03_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_mem_to_s03_couplers_RREADY),
        .S_AXI_rvalid(axi_interconnect_mem_to_s03_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_mem_to_s03_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_mem_to_s03_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_mem_to_s03_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_mem_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_mem_to_s03_couplers_WVALID));
  s04_couplers_imp_1T7PI9D s04_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(s04_couplers_to_xbar_ARADDR),
        .M_AXI_arlen(s04_couplers_to_xbar_ARLEN),
        .M_AXI_arready(s04_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s04_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s04_couplers_to_xbar_AWADDR),
        .M_AXI_awlen(s04_couplers_to_xbar_AWLEN),
        .M_AXI_awready(s04_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s04_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s04_couplers_to_xbar_BREADY),
        .M_AXI_bvalid(s04_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s04_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s04_couplers_to_xbar_RLAST),
        .M_AXI_rready(s04_couplers_to_xbar_RREADY),
        .M_AXI_rvalid(s04_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s04_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s04_couplers_to_xbar_WLAST),
        .M_AXI_wready(s04_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s04_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s04_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_mem_to_s04_couplers_ARADDR),
        .S_AXI_arlen(axi_interconnect_mem_to_s04_couplers_ARLEN),
        .S_AXI_arready(axi_interconnect_mem_to_s04_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_mem_to_s04_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_mem_to_s04_couplers_AWADDR),
        .S_AXI_awlen(axi_interconnect_mem_to_s04_couplers_AWLEN),
        .S_AXI_awready(axi_interconnect_mem_to_s04_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_mem_to_s04_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_mem_to_s04_couplers_BREADY),
        .S_AXI_bvalid(axi_interconnect_mem_to_s04_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_mem_to_s04_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_mem_to_s04_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_mem_to_s04_couplers_RREADY),
        .S_AXI_rvalid(axi_interconnect_mem_to_s04_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_mem_to_s04_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_mem_to_s04_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_mem_to_s04_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_mem_to_s04_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_mem_to_s04_couplers_WVALID));
  dariusMPI_debug_32x32_xbar_0 xbar
       (.aclk(axi_interconnect_mem_ACLK_net),
        .aresetn(axi_interconnect_mem_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s04_couplers_to_xbar_ARADDR,s03_couplers_to_xbar_ARADDR,s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s04_couplers_to_xbar_ARLEN,s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s04_couplers_to_xbar_ARREADY,s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s04_couplers_to_xbar_ARVALID,s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s04_couplers_to_xbar_AWADDR,s03_couplers_to_xbar_AWADDR,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s04_couplers_to_xbar_AWLEN,s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s04_couplers_to_xbar_AWREADY,s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s04_couplers_to_xbar_AWVALID,s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s04_couplers_to_xbar_BREADY,s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s04_couplers_to_xbar_BVALID,s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s04_couplers_to_xbar_RDATA,s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s04_couplers_to_xbar_RLAST,s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s04_couplers_to_xbar_RREADY,s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s04_couplers_to_xbar_RVALID,s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s04_couplers_to_xbar_WDATA,s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s04_couplers_to_xbar_WLAST,s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s04_couplers_to_xbar_WREADY,s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s04_couplers_to_xbar_WSTRB,s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s04_couplers_to_xbar_WVALID,s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_1MPJ1RO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [2:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [3:0]m00_couplers_to_m00_couplers_ARREGION;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [2:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [3:0]m00_couplers_to_m00_couplers_AWREGION;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [2:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [511:0]m00_couplers_to_m00_couplers_RDATA;
  wire [2:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [511:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [63:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[2:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[2:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[2:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[2:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[2:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[2:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1LVJ1F9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [511:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [511:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [63:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [0:0]s00_couplers_to_auto_us_ARID;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [0:0]s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [0:0]s00_couplers_to_auto_us_AWID;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [0:0]s00_couplers_to_auto_us_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_AWQOS;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire [0:0]s00_couplers_to_auto_us_BID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire [0:0]s00_couplers_to_auto_us_RID;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_us_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_us_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  dariusMPI_debug_32x32_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_us_ARID),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_us_AWID),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_us_BID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rid(s00_couplers_to_auto_us_RID),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_1OAIMPJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [0:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  dariusMPI_debug_32x32_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_1PPX8V8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_to_s01_couplers_ARQOS;
  wire auto_us_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_to_s01_couplers_ARSIZE;
  wire auto_us_to_s01_couplers_ARVALID;
  wire [31:0]auto_us_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_to_s01_couplers_AWQOS;
  wire auto_us_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_to_s01_couplers_AWSIZE;
  wire auto_us_to_s01_couplers_AWVALID;
  wire auto_us_to_s01_couplers_BREADY;
  wire [1:0]auto_us_to_s01_couplers_BRESP;
  wire auto_us_to_s01_couplers_BVALID;
  wire [511:0]auto_us_to_s01_couplers_RDATA;
  wire auto_us_to_s01_couplers_RLAST;
  wire auto_us_to_s01_couplers_RREADY;
  wire [1:0]auto_us_to_s01_couplers_RRESP;
  wire auto_us_to_s01_couplers_RVALID;
  wire [511:0]auto_us_to_s01_couplers_WDATA;
  wire auto_us_to_s01_couplers_WLAST;
  wire auto_us_to_s01_couplers_WREADY;
  wire [63:0]auto_us_to_s01_couplers_WSTRB;
  wire auto_us_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire [0:0]s01_couplers_to_auto_us_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_ARQOS;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_AWADDR;
  wire [1:0]s01_couplers_to_auto_us_AWBURST;
  wire [3:0]s01_couplers_to_auto_us_AWCACHE;
  wire [7:0]s01_couplers_to_auto_us_AWLEN;
  wire [0:0]s01_couplers_to_auto_us_AWLOCK;
  wire [2:0]s01_couplers_to_auto_us_AWPROT;
  wire [3:0]s01_couplers_to_auto_us_AWQOS;
  wire s01_couplers_to_auto_us_AWREADY;
  wire [2:0]s01_couplers_to_auto_us_AWSIZE;
  wire s01_couplers_to_auto_us_AWVALID;
  wire s01_couplers_to_auto_us_BREADY;
  wire [1:0]s01_couplers_to_auto_us_BRESP;
  wire s01_couplers_to_auto_us_BVALID;
  wire [127:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;
  wire [127:0]s01_couplers_to_auto_us_WDATA;
  wire s01_couplers_to_auto_us_WLAST;
  wire s01_couplers_to_auto_us_WREADY;
  wire [15:0]s01_couplers_to_auto_us_WSTRB;
  wire s01_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[127:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_us_WREADY;
  assign auto_us_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_us_WDATA = S_AXI_wdata[127:0];
  assign s01_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_us_WSTRB = S_AXI_wstrb[15:0];
  assign s01_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  dariusMPI_debug_32x32_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s01_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s01_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_us_WLAST),
        .s_axi_wready(s01_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_us_WVALID));
endmodule

module s02_couplers_imp_1KZ64WN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arlen,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awlen,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [7:0]M_AXI_arlen;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [7:0]M_AXI_awlen;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [7:0]S_AXI_arlen;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [7:0]S_AXI_awlen;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]s02_couplers_to_s02_couplers_ARADDR;
  wire [7:0]s02_couplers_to_s02_couplers_ARLEN;
  wire s02_couplers_to_s02_couplers_ARREADY;
  wire s02_couplers_to_s02_couplers_ARVALID;
  wire [63:0]s02_couplers_to_s02_couplers_AWADDR;
  wire [7:0]s02_couplers_to_s02_couplers_AWLEN;
  wire s02_couplers_to_s02_couplers_AWREADY;
  wire s02_couplers_to_s02_couplers_AWVALID;
  wire s02_couplers_to_s02_couplers_BREADY;
  wire s02_couplers_to_s02_couplers_BVALID;
  wire [511:0]s02_couplers_to_s02_couplers_RDATA;
  wire s02_couplers_to_s02_couplers_RLAST;
  wire s02_couplers_to_s02_couplers_RREADY;
  wire s02_couplers_to_s02_couplers_RVALID;
  wire [511:0]s02_couplers_to_s02_couplers_WDATA;
  wire s02_couplers_to_s02_couplers_WLAST;
  wire s02_couplers_to_s02_couplers_WREADY;
  wire [63:0]s02_couplers_to_s02_couplers_WSTRB;
  wire s02_couplers_to_s02_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s02_couplers_to_s02_couplers_ARADDR;
  assign M_AXI_arlen[7:0] = s02_couplers_to_s02_couplers_ARLEN;
  assign M_AXI_arvalid = s02_couplers_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s02_couplers_to_s02_couplers_AWADDR;
  assign M_AXI_awlen[7:0] = s02_couplers_to_s02_couplers_AWLEN;
  assign M_AXI_awvalid = s02_couplers_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_couplers_to_s02_couplers_BREADY;
  assign M_AXI_rready = s02_couplers_to_s02_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s02_couplers_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_couplers_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s02_couplers_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_couplers_to_s02_couplers_WVALID;
  assign S_AXI_arready = s02_couplers_to_s02_couplers_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_couplers_AWREADY;
  assign S_AXI_bvalid = s02_couplers_to_s02_couplers_BVALID;
  assign S_AXI_rdata[511:0] = s02_couplers_to_s02_couplers_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_couplers_RLAST;
  assign S_AXI_rvalid = s02_couplers_to_s02_couplers_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_couplers_WREADY;
  assign s02_couplers_to_s02_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s02_couplers_to_s02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_couplers_to_s02_couplers_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s02_couplers_to_s02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_couplers_to_s02_couplers_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_couplers_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_couplers_to_s02_couplers_RDATA = M_AXI_rdata[511:0];
  assign s02_couplers_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_couplers_to_s02_couplers_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_couplers_to_s02_couplers_WDATA = S_AXI_wdata[511:0];
  assign s02_couplers_to_s02_couplers_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_s02_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign s02_couplers_to_s02_couplers_WVALID = S_AXI_wvalid;
endmodule

module s03_couplers_imp_1IB8N0M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arlen,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awlen,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [7:0]M_AXI_arlen;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [7:0]M_AXI_awlen;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [7:0]S_AXI_arlen;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [7:0]S_AXI_awlen;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]s03_couplers_to_s03_couplers_ARADDR;
  wire [7:0]s03_couplers_to_s03_couplers_ARLEN;
  wire s03_couplers_to_s03_couplers_ARREADY;
  wire s03_couplers_to_s03_couplers_ARVALID;
  wire [63:0]s03_couplers_to_s03_couplers_AWADDR;
  wire [7:0]s03_couplers_to_s03_couplers_AWLEN;
  wire s03_couplers_to_s03_couplers_AWREADY;
  wire s03_couplers_to_s03_couplers_AWVALID;
  wire s03_couplers_to_s03_couplers_BREADY;
  wire s03_couplers_to_s03_couplers_BVALID;
  wire [511:0]s03_couplers_to_s03_couplers_RDATA;
  wire s03_couplers_to_s03_couplers_RLAST;
  wire s03_couplers_to_s03_couplers_RREADY;
  wire s03_couplers_to_s03_couplers_RVALID;
  wire [511:0]s03_couplers_to_s03_couplers_WDATA;
  wire s03_couplers_to_s03_couplers_WLAST;
  wire s03_couplers_to_s03_couplers_WREADY;
  wire [63:0]s03_couplers_to_s03_couplers_WSTRB;
  wire s03_couplers_to_s03_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s03_couplers_to_s03_couplers_ARADDR;
  assign M_AXI_arlen[7:0] = s03_couplers_to_s03_couplers_ARLEN;
  assign M_AXI_arvalid = s03_couplers_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s03_couplers_to_s03_couplers_AWADDR;
  assign M_AXI_awlen[7:0] = s03_couplers_to_s03_couplers_AWLEN;
  assign M_AXI_awvalid = s03_couplers_to_s03_couplers_AWVALID;
  assign M_AXI_bready = s03_couplers_to_s03_couplers_BREADY;
  assign M_AXI_rready = s03_couplers_to_s03_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s03_couplers_to_s03_couplers_WDATA;
  assign M_AXI_wlast = s03_couplers_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s03_couplers_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = s03_couplers_to_s03_couplers_WVALID;
  assign S_AXI_arready = s03_couplers_to_s03_couplers_ARREADY;
  assign S_AXI_awready = s03_couplers_to_s03_couplers_AWREADY;
  assign S_AXI_bvalid = s03_couplers_to_s03_couplers_BVALID;
  assign S_AXI_rdata[511:0] = s03_couplers_to_s03_couplers_RDATA;
  assign S_AXI_rlast = s03_couplers_to_s03_couplers_RLAST;
  assign S_AXI_rvalid = s03_couplers_to_s03_couplers_RVALID;
  assign S_AXI_wready = s03_couplers_to_s03_couplers_WREADY;
  assign s03_couplers_to_s03_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s03_couplers_to_s03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_s03_couplers_ARREADY = M_AXI_arready;
  assign s03_couplers_to_s03_couplers_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_s03_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s03_couplers_to_s03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_couplers_AWREADY = M_AXI_awready;
  assign s03_couplers_to_s03_couplers_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_couplers_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign s03_couplers_to_s03_couplers_RDATA = M_AXI_rdata[511:0];
  assign s03_couplers_to_s03_couplers_RLAST = M_AXI_rlast;
  assign s03_couplers_to_s03_couplers_RREADY = S_AXI_rready;
  assign s03_couplers_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign s03_couplers_to_s03_couplers_WDATA = S_AXI_wdata[511:0];
  assign s03_couplers_to_s03_couplers_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_s03_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign s03_couplers_to_s03_couplers_WVALID = S_AXI_wvalid;
endmodule

module s04_couplers_imp_1T7PI9D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arlen,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awlen,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [7:0]M_AXI_arlen;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [7:0]M_AXI_awlen;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [7:0]S_AXI_arlen;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [7:0]S_AXI_awlen;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]s04_couplers_to_s04_couplers_ARADDR;
  wire [7:0]s04_couplers_to_s04_couplers_ARLEN;
  wire s04_couplers_to_s04_couplers_ARREADY;
  wire s04_couplers_to_s04_couplers_ARVALID;
  wire [63:0]s04_couplers_to_s04_couplers_AWADDR;
  wire [7:0]s04_couplers_to_s04_couplers_AWLEN;
  wire s04_couplers_to_s04_couplers_AWREADY;
  wire s04_couplers_to_s04_couplers_AWVALID;
  wire s04_couplers_to_s04_couplers_BREADY;
  wire s04_couplers_to_s04_couplers_BVALID;
  wire [511:0]s04_couplers_to_s04_couplers_RDATA;
  wire s04_couplers_to_s04_couplers_RLAST;
  wire s04_couplers_to_s04_couplers_RREADY;
  wire s04_couplers_to_s04_couplers_RVALID;
  wire [511:0]s04_couplers_to_s04_couplers_WDATA;
  wire s04_couplers_to_s04_couplers_WLAST;
  wire s04_couplers_to_s04_couplers_WREADY;
  wire [63:0]s04_couplers_to_s04_couplers_WSTRB;
  wire s04_couplers_to_s04_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s04_couplers_to_s04_couplers_ARADDR;
  assign M_AXI_arlen[7:0] = s04_couplers_to_s04_couplers_ARLEN;
  assign M_AXI_arvalid = s04_couplers_to_s04_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s04_couplers_to_s04_couplers_AWADDR;
  assign M_AXI_awlen[7:0] = s04_couplers_to_s04_couplers_AWLEN;
  assign M_AXI_awvalid = s04_couplers_to_s04_couplers_AWVALID;
  assign M_AXI_bready = s04_couplers_to_s04_couplers_BREADY;
  assign M_AXI_rready = s04_couplers_to_s04_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s04_couplers_to_s04_couplers_WDATA;
  assign M_AXI_wlast = s04_couplers_to_s04_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s04_couplers_to_s04_couplers_WSTRB;
  assign M_AXI_wvalid = s04_couplers_to_s04_couplers_WVALID;
  assign S_AXI_arready = s04_couplers_to_s04_couplers_ARREADY;
  assign S_AXI_awready = s04_couplers_to_s04_couplers_AWREADY;
  assign S_AXI_bvalid = s04_couplers_to_s04_couplers_BVALID;
  assign S_AXI_rdata[511:0] = s04_couplers_to_s04_couplers_RDATA;
  assign S_AXI_rlast = s04_couplers_to_s04_couplers_RLAST;
  assign S_AXI_rvalid = s04_couplers_to_s04_couplers_RVALID;
  assign S_AXI_wready = s04_couplers_to_s04_couplers_WREADY;
  assign s04_couplers_to_s04_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s04_couplers_to_s04_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s04_couplers_to_s04_couplers_ARREADY = M_AXI_arready;
  assign s04_couplers_to_s04_couplers_ARVALID = S_AXI_arvalid;
  assign s04_couplers_to_s04_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s04_couplers_to_s04_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s04_couplers_to_s04_couplers_AWREADY = M_AXI_awready;
  assign s04_couplers_to_s04_couplers_AWVALID = S_AXI_awvalid;
  assign s04_couplers_to_s04_couplers_BREADY = S_AXI_bready;
  assign s04_couplers_to_s04_couplers_BVALID = M_AXI_bvalid;
  assign s04_couplers_to_s04_couplers_RDATA = M_AXI_rdata[511:0];
  assign s04_couplers_to_s04_couplers_RLAST = M_AXI_rlast;
  assign s04_couplers_to_s04_couplers_RREADY = S_AXI_rready;
  assign s04_couplers_to_s04_couplers_RVALID = M_AXI_rvalid;
  assign s04_couplers_to_s04_couplers_WDATA = S_AXI_wdata[511:0];
  assign s04_couplers_to_s04_couplers_WLAST = S_AXI_wlast;
  assign s04_couplers_to_s04_couplers_WREADY = M_AXI_wready;
  assign s04_couplers_to_s04_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign s04_couplers_to_s04_couplers_WVALID = S_AXI_wvalid;
endmodule
