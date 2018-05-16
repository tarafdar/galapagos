// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed May 16 15:52:52 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_pr_decoupler_0_0/shell_pr_decoupler_0_0_sim_netlist.v
// Design      : shell_pr_decoupler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shell_pr_decoupler_0_0,prd_shell_pr_decoupler_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "prd_shell_pr_decoupler_0_0,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module shell_pr_decoupler_0_0
   (s_pr_axi_mem_ARVALID,
    rp_pr_axi_mem_ARVALID,
    s_pr_axi_mem_ARREADY,
    rp_pr_axi_mem_ARREADY,
    s_pr_axi_mem_AWVALID,
    rp_pr_axi_mem_AWVALID,
    s_pr_axi_mem_AWREADY,
    rp_pr_axi_mem_AWREADY,
    s_pr_axi_mem_BVALID,
    rp_pr_axi_mem_BVALID,
    s_pr_axi_mem_BREADY,
    rp_pr_axi_mem_BREADY,
    s_pr_axi_mem_RVALID,
    rp_pr_axi_mem_RVALID,
    s_pr_axi_mem_RREADY,
    rp_pr_axi_mem_RREADY,
    s_pr_axi_mem_WVALID,
    rp_pr_axi_mem_WVALID,
    s_pr_axi_mem_WREADY,
    rp_pr_axi_mem_WREADY,
    s_pr_axi_mem_AWID,
    rp_pr_axi_mem_AWID,
    s_pr_axi_mem_AWADDR,
    rp_pr_axi_mem_AWADDR,
    s_pr_axi_mem_AWLEN,
    rp_pr_axi_mem_AWLEN,
    s_pr_axi_mem_AWSIZE,
    rp_pr_axi_mem_AWSIZE,
    s_pr_axi_mem_AWBURST,
    rp_pr_axi_mem_AWBURST,
    s_pr_axi_mem_AWLOCK,
    rp_pr_axi_mem_AWLOCK,
    s_pr_axi_mem_AWCACHE,
    rp_pr_axi_mem_AWCACHE,
    s_pr_axi_mem_AWPROT,
    rp_pr_axi_mem_AWPROT,
    s_pr_axi_mem_AWREGION,
    rp_pr_axi_mem_AWREGION,
    s_pr_axi_mem_AWQOS,
    rp_pr_axi_mem_AWQOS,
    s_pr_axi_mem_WID,
    rp_pr_axi_mem_WID,
    s_pr_axi_mem_WDATA,
    rp_pr_axi_mem_WDATA,
    s_pr_axi_mem_WSTRB,
    rp_pr_axi_mem_WSTRB,
    s_pr_axi_mem_WLAST,
    rp_pr_axi_mem_WLAST,
    s_pr_axi_mem_BID,
    rp_pr_axi_mem_BID,
    s_pr_axi_mem_BRESP,
    rp_pr_axi_mem_BRESP,
    s_pr_axi_mem_ARID,
    rp_pr_axi_mem_ARID,
    s_pr_axi_mem_ARADDR,
    rp_pr_axi_mem_ARADDR,
    s_pr_axi_mem_ARLEN,
    rp_pr_axi_mem_ARLEN,
    s_pr_axi_mem_ARSIZE,
    rp_pr_axi_mem_ARSIZE,
    s_pr_axi_mem_ARBURST,
    rp_pr_axi_mem_ARBURST,
    s_pr_axi_mem_ARLOCK,
    rp_pr_axi_mem_ARLOCK,
    s_pr_axi_mem_ARCACHE,
    rp_pr_axi_mem_ARCACHE,
    s_pr_axi_mem_ARPROT,
    rp_pr_axi_mem_ARPROT,
    s_pr_axi_mem_ARREGION,
    rp_pr_axi_mem_ARREGION,
    s_pr_axi_mem_ARQOS,
    rp_pr_axi_mem_ARQOS,
    s_pr_axi_mem_RID,
    rp_pr_axi_mem_RID,
    s_pr_axi_mem_RDATA,
    rp_pr_axi_mem_RDATA,
    s_pr_axi_mem_RRESP,
    rp_pr_axi_mem_RRESP,
    s_pr_axi_mem_RLAST,
    rp_pr_axi_mem_RLAST,
    s_control_ARVALID,
    rp_control_ARVALID,
    s_control_ARREADY,
    rp_control_ARREADY,
    s_control_AWVALID,
    rp_control_AWVALID,
    s_control_AWREADY,
    rp_control_AWREADY,
    s_control_BVALID,
    rp_control_BVALID,
    s_control_BREADY,
    rp_control_BREADY,
    s_control_RVALID,
    rp_control_RVALID,
    s_control_RREADY,
    rp_control_RREADY,
    s_control_WVALID,
    rp_control_WVALID,
    s_control_WREADY,
    rp_control_WREADY,
    s_control_AWADDR,
    rp_control_AWADDR,
    s_control_AWPROT,
    rp_control_AWPROT,
    s_control_AWREGION,
    rp_control_AWREGION,
    s_control_AWQOS,
    rp_control_AWQOS,
    s_control_WDATA,
    rp_control_WDATA,
    s_control_WSTRB,
    rp_control_WSTRB,
    s_control_BRESP,
    rp_control_BRESP,
    s_control_ARADDR,
    rp_control_ARADDR,
    s_control_ARPROT,
    rp_control_ARPROT,
    s_control_ARREGION,
    rp_control_ARREGION,
    s_control_ARQOS,
    rp_control_ARQOS,
    s_control_RDATA,
    rp_control_RDATA,
    s_control_RRESP,
    rp_control_RRESP,
    s_stream_in_TVALID,
    rp_stream_in_TVALID,
    s_stream_in_TREADY,
    rp_stream_in_TREADY,
    s_stream_in_TDATA,
    rp_stream_in_TDATA,
    s_stream_in_TLAST,
    rp_stream_in_TLAST,
    s_stream_in_TKEEP,
    rp_stream_in_TKEEP,
    s_stream_out_TVALID,
    rp_stream_out_TVALID,
    s_stream_out_TREADY,
    rp_stream_out_TREADY,
    s_stream_out_TDATA,
    rp_stream_out_TDATA,
    s_stream_out_TLAST,
    rp_stream_out_TLAST,
    s_stream_out_TKEEP,
    rp_stream_out_TKEEP,
    decouple_status,
    aclk,
    s_axi_reg_awaddr,
    s_axi_reg_awvalid,
    s_axi_reg_awready,
    s_axi_reg_wdata,
    s_axi_reg_wvalid,
    s_axi_reg_wready,
    s_axi_reg_bresp,
    s_axi_reg_bvalid,
    s_axi_reg_bready,
    s_axi_reg_araddr,
    s_axi_reg_arvalid,
    s_axi_reg_arready,
    s_axi_reg_rdata,
    s_axi_reg_rresp,
    s_axi_reg_rvalid,
    s_axi_reg_rready,
    s_axi_reg_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_pr_axi_mem, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 156250000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE" *) output s_pr_axi_mem_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME rp_pr_axi_mem, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 156250000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE" *) input rp_pr_axi_mem_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARREADY" *) input s_pr_axi_mem_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARREADY" *) output rp_pr_axi_mem_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWVALID" *) output s_pr_axi_mem_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWVALID" *) input rp_pr_axi_mem_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWREADY" *) input s_pr_axi_mem_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWREADY" *) output rp_pr_axi_mem_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BVALID" *) input s_pr_axi_mem_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BVALID" *) output rp_pr_axi_mem_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BREADY" *) output s_pr_axi_mem_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BREADY" *) input rp_pr_axi_mem_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RVALID" *) input s_pr_axi_mem_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RVALID" *) output rp_pr_axi_mem_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RREADY" *) output s_pr_axi_mem_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RREADY" *) input rp_pr_axi_mem_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WVALID" *) output s_pr_axi_mem_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WVALID" *) input rp_pr_axi_mem_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WREADY" *) input s_pr_axi_mem_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WREADY" *) output rp_pr_axi_mem_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWID" *) output [0:0]s_pr_axi_mem_AWID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWID" *) input [0:0]rp_pr_axi_mem_AWID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWADDR" *) output [31:0]s_pr_axi_mem_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWADDR" *) input [31:0]rp_pr_axi_mem_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWLEN" *) output [7:0]s_pr_axi_mem_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWLEN" *) input [7:0]rp_pr_axi_mem_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWSIZE" *) output [2:0]s_pr_axi_mem_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWSIZE" *) input [2:0]rp_pr_axi_mem_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWBURST" *) output [1:0]s_pr_axi_mem_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWBURST" *) input [1:0]rp_pr_axi_mem_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWLOCK" *) output [0:0]s_pr_axi_mem_AWLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWLOCK" *) input [0:0]rp_pr_axi_mem_AWLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWCACHE" *) output [3:0]s_pr_axi_mem_AWCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWCACHE" *) input [3:0]rp_pr_axi_mem_AWCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWPROT" *) output [2:0]s_pr_axi_mem_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWPROT" *) input [2:0]rp_pr_axi_mem_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWREGION" *) output [3:0]s_pr_axi_mem_AWREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWREGION" *) input [3:0]rp_pr_axi_mem_AWREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWQOS" *) output [3:0]s_pr_axi_mem_AWQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWQOS" *) input [3:0]rp_pr_axi_mem_AWQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WID" *) output [0:0]s_pr_axi_mem_WID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WID" *) input [0:0]rp_pr_axi_mem_WID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WDATA" *) output [511:0]s_pr_axi_mem_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WDATA" *) input [511:0]rp_pr_axi_mem_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WSTRB" *) output [63:0]s_pr_axi_mem_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WSTRB" *) input [63:0]rp_pr_axi_mem_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WLAST" *) output s_pr_axi_mem_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WLAST" *) input rp_pr_axi_mem_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BID" *) input [0:0]s_pr_axi_mem_BID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BID" *) output [0:0]rp_pr_axi_mem_BID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BRESP" *) input [1:0]s_pr_axi_mem_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BRESP" *) output [1:0]rp_pr_axi_mem_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARID" *) output [0:0]s_pr_axi_mem_ARID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARID" *) input [0:0]rp_pr_axi_mem_ARID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARADDR" *) output [31:0]s_pr_axi_mem_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARADDR" *) input [31:0]rp_pr_axi_mem_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARLEN" *) output [7:0]s_pr_axi_mem_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARLEN" *) input [7:0]rp_pr_axi_mem_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARSIZE" *) output [2:0]s_pr_axi_mem_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARSIZE" *) input [2:0]rp_pr_axi_mem_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARBURST" *) output [1:0]s_pr_axi_mem_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARBURST" *) input [1:0]rp_pr_axi_mem_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARLOCK" *) output [0:0]s_pr_axi_mem_ARLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARLOCK" *) input [0:0]rp_pr_axi_mem_ARLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARCACHE" *) output [3:0]s_pr_axi_mem_ARCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARCACHE" *) input [3:0]rp_pr_axi_mem_ARCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARPROT" *) output [2:0]s_pr_axi_mem_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARPROT" *) input [2:0]rp_pr_axi_mem_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARREGION" *) output [3:0]s_pr_axi_mem_ARREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARREGION" *) input [3:0]rp_pr_axi_mem_ARREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARQOS" *) output [3:0]s_pr_axi_mem_ARQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARQOS" *) input [3:0]rp_pr_axi_mem_ARQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RID" *) input [0:0]s_pr_axi_mem_RID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RID" *) output [0:0]rp_pr_axi_mem_RID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RDATA" *) input [511:0]s_pr_axi_mem_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RDATA" *) output [511:0]rp_pr_axi_mem_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RRESP" *) input [1:0]s_pr_axi_mem_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RRESP" *) output [1:0]rp_pr_axi_mem_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RLAST" *) input s_pr_axi_mem_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RLAST" *) output rp_pr_axi_mem_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control ARVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE" *) input s_control_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control ARVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME rp_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE" *) output rp_control_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control ARREADY" *) output s_control_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control ARREADY" *) input rp_control_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control AWVALID" *) input s_control_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control AWVALID" *) output rp_control_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control AWREADY" *) output s_control_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control AWREADY" *) input rp_control_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control BVALID" *) output s_control_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control BVALID" *) input rp_control_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control BREADY" *) input s_control_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control BREADY" *) output rp_control_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control RVALID" *) output s_control_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control RVALID" *) input rp_control_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control RREADY" *) input s_control_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control RREADY" *) output rp_control_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control WVALID" *) input s_control_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control WVALID" *) output rp_control_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control WREADY" *) output s_control_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control WREADY" *) input rp_control_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control AWADDR" *) input [31:0]s_control_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control AWADDR" *) output [31:0]rp_control_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control AWPROT" *) input [2:0]s_control_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control AWPROT" *) output [2:0]rp_control_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control AWREGION" *) input [3:0]s_control_AWREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control AWREGION" *) output [3:0]rp_control_AWREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control AWQOS" *) input [3:0]s_control_AWQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control AWQOS" *) output [3:0]rp_control_AWQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control WDATA" *) input [31:0]s_control_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control WDATA" *) output [31:0]rp_control_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control WSTRB" *) input [3:0]s_control_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control WSTRB" *) output [3:0]rp_control_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control BRESP" *) output [1:0]s_control_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control BRESP" *) input [1:0]rp_control_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control ARADDR" *) input [31:0]s_control_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control ARADDR" *) output [31:0]rp_control_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control ARPROT" *) input [2:0]s_control_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control ARPROT" *) output [2:0]rp_control_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control ARREGION" *) input [3:0]s_control_ARREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control ARREGION" *) output [3:0]rp_control_ARREGION;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control ARQOS" *) input [3:0]s_control_ARQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control ARQOS" *) output [3:0]rp_control_ARQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control RDATA" *) output [31:0]s_control_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control RDATA" *) input [31:0]rp_control_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_control RRESP" *) output [1:0]s_control_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 rp_control RRESP" *) input [1:0]rp_control_RRESP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_in TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_stream_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE" *) output s_stream_in_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_in TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME rp_stream_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE" *) input rp_stream_in_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_in TREADY" *) input s_stream_in_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_in TREADY" *) output rp_stream_in_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_in TDATA" *) output [63:0]s_stream_in_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_in TDATA" *) input [63:0]rp_stream_in_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_in TLAST" *) output s_stream_in_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_in TLAST" *) input rp_stream_in_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_in TKEEP" *) output [7:0]s_stream_in_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_in TKEEP" *) input [7:0]rp_stream_in_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_out TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_stream_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE" *) input s_stream_out_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_out TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME rp_stream_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE" *) output rp_stream_out_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_out TREADY" *) output s_stream_out_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_out TREADY" *) input rp_stream_out_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_out TDATA" *) input [63:0]s_stream_out_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_out TDATA" *) output [63:0]rp_stream_out_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_out TLAST" *) input s_stream_out_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_out TLAST" *) output rp_stream_out_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_stream_out TKEEP" *) input [7:0]s_stream_out_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_stream_out TKEEP" *) output [7:0]rp_stream_out_TKEEP;
  output decouple_status;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_CLOCK, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, ASSOCIATED_BUSIF s_axi_reg" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_reg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [0:0]s_axi_reg_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg AWVALID" *) input s_axi_reg_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg AWREADY" *) output s_axi_reg_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg WDATA" *) input [31:0]s_axi_reg_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg WVALID" *) input s_axi_reg_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg WREADY" *) output s_axi_reg_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg BRESP" *) output [1:0]s_axi_reg_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg BVALID" *) output s_axi_reg_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg BREADY" *) input s_axi_reg_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg ARADDR" *) input [0:0]s_axi_reg_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg ARVALID" *) input s_axi_reg_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg ARREADY" *) output s_axi_reg_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RDATA" *) output [31:0]s_axi_reg_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RRESP" *) output [1:0]s_axi_reg_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RVALID" *) output s_axi_reg_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RREADY" *) input s_axi_reg_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_RESET, POLARITY ACTIVE_LOW" *) input s_axi_reg_aresetn;

  wire aclk;
  wire decouple_status;
  wire [31:0]rp_control_ARADDR;
  wire [2:0]rp_control_ARPROT;
  wire [3:0]rp_control_ARQOS;
  wire rp_control_ARREADY;
  wire [3:0]rp_control_ARREGION;
  wire rp_control_ARVALID;
  wire [31:0]rp_control_AWADDR;
  wire [2:0]rp_control_AWPROT;
  wire [3:0]rp_control_AWQOS;
  wire rp_control_AWREADY;
  wire [3:0]rp_control_AWREGION;
  wire rp_control_AWVALID;
  wire rp_control_BREADY;
  wire [1:0]rp_control_BRESP;
  wire rp_control_BVALID;
  wire [31:0]rp_control_RDATA;
  wire rp_control_RREADY;
  wire [1:0]rp_control_RRESP;
  wire rp_control_RVALID;
  wire [31:0]rp_control_WDATA;
  wire rp_control_WREADY;
  wire [3:0]rp_control_WSTRB;
  wire rp_control_WVALID;
  wire [31:0]rp_pr_axi_mem_ARADDR;
  wire [1:0]rp_pr_axi_mem_ARBURST;
  wire [3:0]rp_pr_axi_mem_ARCACHE;
  wire [0:0]rp_pr_axi_mem_ARID;
  wire [7:0]rp_pr_axi_mem_ARLEN;
  wire [0:0]rp_pr_axi_mem_ARLOCK;
  wire [2:0]rp_pr_axi_mem_ARPROT;
  wire [3:0]rp_pr_axi_mem_ARQOS;
  wire rp_pr_axi_mem_ARREADY;
  wire [3:0]rp_pr_axi_mem_ARREGION;
  wire [2:0]rp_pr_axi_mem_ARSIZE;
  wire rp_pr_axi_mem_ARVALID;
  wire [31:0]rp_pr_axi_mem_AWADDR;
  wire [1:0]rp_pr_axi_mem_AWBURST;
  wire [3:0]rp_pr_axi_mem_AWCACHE;
  wire [0:0]rp_pr_axi_mem_AWID;
  wire [7:0]rp_pr_axi_mem_AWLEN;
  wire [0:0]rp_pr_axi_mem_AWLOCK;
  wire [2:0]rp_pr_axi_mem_AWPROT;
  wire [3:0]rp_pr_axi_mem_AWQOS;
  wire rp_pr_axi_mem_AWREADY;
  wire [3:0]rp_pr_axi_mem_AWREGION;
  wire [2:0]rp_pr_axi_mem_AWSIZE;
  wire rp_pr_axi_mem_AWVALID;
  wire [0:0]rp_pr_axi_mem_BID;
  wire rp_pr_axi_mem_BREADY;
  wire [1:0]rp_pr_axi_mem_BRESP;
  wire rp_pr_axi_mem_BVALID;
  wire [511:0]rp_pr_axi_mem_RDATA;
  wire [0:0]rp_pr_axi_mem_RID;
  wire rp_pr_axi_mem_RLAST;
  wire rp_pr_axi_mem_RREADY;
  wire [1:0]rp_pr_axi_mem_RRESP;
  wire rp_pr_axi_mem_RVALID;
  wire [511:0]rp_pr_axi_mem_WDATA;
  wire [0:0]rp_pr_axi_mem_WID;
  wire rp_pr_axi_mem_WLAST;
  wire rp_pr_axi_mem_WREADY;
  wire [63:0]rp_pr_axi_mem_WSTRB;
  wire rp_pr_axi_mem_WVALID;
  wire [63:0]rp_stream_in_TDATA;
  wire [7:0]rp_stream_in_TKEEP;
  wire rp_stream_in_TLAST;
  wire rp_stream_in_TREADY;
  wire rp_stream_in_TVALID;
  wire [63:0]rp_stream_out_TDATA;
  wire [7:0]rp_stream_out_TKEEP;
  wire rp_stream_out_TLAST;
  wire rp_stream_out_TREADY;
  wire rp_stream_out_TVALID;
  wire [0:0]s_axi_reg_araddr;
  wire s_axi_reg_aresetn;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [0:0]s_axi_reg_awaddr;
  wire s_axi_reg_awready;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire [1:0]s_axi_reg_bresp;
  wire s_axi_reg_bvalid;
  wire [31:0]s_axi_reg_rdata;
  wire s_axi_reg_rready;
  wire [1:0]s_axi_reg_rresp;
  wire s_axi_reg_rvalid;
  wire [31:0]s_axi_reg_wdata;
  wire s_axi_reg_wready;
  wire s_axi_reg_wvalid;
  wire [31:0]s_control_ARADDR;
  wire [2:0]s_control_ARPROT;
  wire [3:0]s_control_ARQOS;
  wire s_control_ARREADY;
  wire [3:0]s_control_ARREGION;
  wire s_control_ARVALID;
  wire [31:0]s_control_AWADDR;
  wire [2:0]s_control_AWPROT;
  wire [3:0]s_control_AWQOS;
  wire s_control_AWREADY;
  wire [3:0]s_control_AWREGION;
  wire s_control_AWVALID;
  wire s_control_BREADY;
  wire [1:0]s_control_BRESP;
  wire s_control_BVALID;
  wire [31:0]s_control_RDATA;
  wire s_control_RREADY;
  wire [1:0]s_control_RRESP;
  wire s_control_RVALID;
  wire [31:0]s_control_WDATA;
  wire s_control_WREADY;
  wire [3:0]s_control_WSTRB;
  wire s_control_WVALID;
  wire [31:0]s_pr_axi_mem_ARADDR;
  wire [1:0]s_pr_axi_mem_ARBURST;
  wire [3:0]s_pr_axi_mem_ARCACHE;
  wire [0:0]s_pr_axi_mem_ARID;
  wire [7:0]s_pr_axi_mem_ARLEN;
  wire [0:0]s_pr_axi_mem_ARLOCK;
  wire [2:0]s_pr_axi_mem_ARPROT;
  wire [3:0]s_pr_axi_mem_ARQOS;
  wire s_pr_axi_mem_ARREADY;
  wire [3:0]s_pr_axi_mem_ARREGION;
  wire [2:0]s_pr_axi_mem_ARSIZE;
  wire s_pr_axi_mem_ARVALID;
  wire [31:0]s_pr_axi_mem_AWADDR;
  wire [1:0]s_pr_axi_mem_AWBURST;
  wire [3:0]s_pr_axi_mem_AWCACHE;
  wire [0:0]s_pr_axi_mem_AWID;
  wire [7:0]s_pr_axi_mem_AWLEN;
  wire [0:0]s_pr_axi_mem_AWLOCK;
  wire [2:0]s_pr_axi_mem_AWPROT;
  wire [3:0]s_pr_axi_mem_AWQOS;
  wire s_pr_axi_mem_AWREADY;
  wire [3:0]s_pr_axi_mem_AWREGION;
  wire [2:0]s_pr_axi_mem_AWSIZE;
  wire s_pr_axi_mem_AWVALID;
  wire [0:0]s_pr_axi_mem_BID;
  wire s_pr_axi_mem_BREADY;
  wire [1:0]s_pr_axi_mem_BRESP;
  wire s_pr_axi_mem_BVALID;
  wire [511:0]s_pr_axi_mem_RDATA;
  wire [0:0]s_pr_axi_mem_RID;
  wire s_pr_axi_mem_RLAST;
  wire s_pr_axi_mem_RREADY;
  wire [1:0]s_pr_axi_mem_RRESP;
  wire s_pr_axi_mem_RVALID;
  wire [511:0]s_pr_axi_mem_WDATA;
  wire [0:0]s_pr_axi_mem_WID;
  wire s_pr_axi_mem_WLAST;
  wire s_pr_axi_mem_WREADY;
  wire [63:0]s_pr_axi_mem_WSTRB;
  wire s_pr_axi_mem_WVALID;
  wire [63:0]s_stream_in_TDATA;
  wire [7:0]s_stream_in_TKEEP;
  wire s_stream_in_TLAST;
  wire s_stream_in_TREADY;
  wire s_stream_in_TVALID;
  wire [63:0]s_stream_out_TDATA;
  wire [7:0]s_stream_out_TKEEP;
  wire s_stream_out_TLAST;
  wire s_stream_out_TREADY;
  wire s_stream_out_TVALID;

  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0 U0
       (.aclk(aclk),
        .decouple_status(decouple_status),
        .rp_control_ARADDR(rp_control_ARADDR),
        .rp_control_ARPROT(rp_control_ARPROT),
        .rp_control_ARQOS(rp_control_ARQOS),
        .rp_control_ARREADY(rp_control_ARREADY),
        .rp_control_ARREGION(rp_control_ARREGION),
        .rp_control_ARVALID(rp_control_ARVALID),
        .rp_control_AWADDR(rp_control_AWADDR),
        .rp_control_AWPROT(rp_control_AWPROT),
        .rp_control_AWQOS(rp_control_AWQOS),
        .rp_control_AWREADY(rp_control_AWREADY),
        .rp_control_AWREGION(rp_control_AWREGION),
        .rp_control_AWVALID(rp_control_AWVALID),
        .rp_control_BREADY(rp_control_BREADY),
        .rp_control_BRESP(rp_control_BRESP),
        .rp_control_BVALID(rp_control_BVALID),
        .rp_control_RDATA(rp_control_RDATA),
        .rp_control_RREADY(rp_control_RREADY),
        .rp_control_RRESP(rp_control_RRESP),
        .rp_control_RVALID(rp_control_RVALID),
        .rp_control_WDATA(rp_control_WDATA),
        .rp_control_WREADY(rp_control_WREADY),
        .rp_control_WSTRB(rp_control_WSTRB),
        .rp_control_WVALID(rp_control_WVALID),
        .rp_pr_axi_mem_ARADDR(rp_pr_axi_mem_ARADDR),
        .rp_pr_axi_mem_ARBURST(rp_pr_axi_mem_ARBURST),
        .rp_pr_axi_mem_ARCACHE(rp_pr_axi_mem_ARCACHE),
        .rp_pr_axi_mem_ARID(rp_pr_axi_mem_ARID),
        .rp_pr_axi_mem_ARLEN(rp_pr_axi_mem_ARLEN),
        .rp_pr_axi_mem_ARLOCK(rp_pr_axi_mem_ARLOCK),
        .rp_pr_axi_mem_ARPROT(rp_pr_axi_mem_ARPROT),
        .rp_pr_axi_mem_ARQOS(rp_pr_axi_mem_ARQOS),
        .rp_pr_axi_mem_ARREADY(rp_pr_axi_mem_ARREADY),
        .rp_pr_axi_mem_ARREGION(rp_pr_axi_mem_ARREGION),
        .rp_pr_axi_mem_ARSIZE(rp_pr_axi_mem_ARSIZE),
        .rp_pr_axi_mem_ARVALID(rp_pr_axi_mem_ARVALID),
        .rp_pr_axi_mem_AWADDR(rp_pr_axi_mem_AWADDR),
        .rp_pr_axi_mem_AWBURST(rp_pr_axi_mem_AWBURST),
        .rp_pr_axi_mem_AWCACHE(rp_pr_axi_mem_AWCACHE),
        .rp_pr_axi_mem_AWID(rp_pr_axi_mem_AWID),
        .rp_pr_axi_mem_AWLEN(rp_pr_axi_mem_AWLEN),
        .rp_pr_axi_mem_AWLOCK(rp_pr_axi_mem_AWLOCK),
        .rp_pr_axi_mem_AWPROT(rp_pr_axi_mem_AWPROT),
        .rp_pr_axi_mem_AWQOS(rp_pr_axi_mem_AWQOS),
        .rp_pr_axi_mem_AWREADY(rp_pr_axi_mem_AWREADY),
        .rp_pr_axi_mem_AWREGION(rp_pr_axi_mem_AWREGION),
        .rp_pr_axi_mem_AWSIZE(rp_pr_axi_mem_AWSIZE),
        .rp_pr_axi_mem_AWVALID(rp_pr_axi_mem_AWVALID),
        .rp_pr_axi_mem_BID(rp_pr_axi_mem_BID),
        .rp_pr_axi_mem_BREADY(rp_pr_axi_mem_BREADY),
        .rp_pr_axi_mem_BRESP(rp_pr_axi_mem_BRESP),
        .rp_pr_axi_mem_BVALID(rp_pr_axi_mem_BVALID),
        .rp_pr_axi_mem_RDATA(rp_pr_axi_mem_RDATA),
        .rp_pr_axi_mem_RID(rp_pr_axi_mem_RID),
        .rp_pr_axi_mem_RLAST(rp_pr_axi_mem_RLAST),
        .rp_pr_axi_mem_RREADY(rp_pr_axi_mem_RREADY),
        .rp_pr_axi_mem_RRESP(rp_pr_axi_mem_RRESP),
        .rp_pr_axi_mem_RVALID(rp_pr_axi_mem_RVALID),
        .rp_pr_axi_mem_WDATA(rp_pr_axi_mem_WDATA),
        .rp_pr_axi_mem_WID(rp_pr_axi_mem_WID),
        .rp_pr_axi_mem_WLAST(rp_pr_axi_mem_WLAST),
        .rp_pr_axi_mem_WREADY(rp_pr_axi_mem_WREADY),
        .rp_pr_axi_mem_WSTRB(rp_pr_axi_mem_WSTRB),
        .rp_pr_axi_mem_WVALID(rp_pr_axi_mem_WVALID),
        .rp_stream_in_TDATA(rp_stream_in_TDATA),
        .rp_stream_in_TKEEP(rp_stream_in_TKEEP),
        .rp_stream_in_TLAST(rp_stream_in_TLAST),
        .rp_stream_in_TREADY(rp_stream_in_TREADY),
        .rp_stream_in_TVALID(rp_stream_in_TVALID),
        .rp_stream_out_TDATA(rp_stream_out_TDATA),
        .rp_stream_out_TKEEP(rp_stream_out_TKEEP),
        .rp_stream_out_TLAST(rp_stream_out_TLAST),
        .rp_stream_out_TREADY(rp_stream_out_TREADY),
        .rp_stream_out_TVALID(rp_stream_out_TVALID),
        .s_axi_reg_araddr(s_axi_reg_araddr),
        .s_axi_reg_aresetn(s_axi_reg_aresetn),
        .s_axi_reg_arready(s_axi_reg_arready),
        .s_axi_reg_arvalid(s_axi_reg_arvalid),
        .s_axi_reg_awaddr(s_axi_reg_awaddr),
        .s_axi_reg_awready(s_axi_reg_awready),
        .s_axi_reg_awvalid(s_axi_reg_awvalid),
        .s_axi_reg_bready(s_axi_reg_bready),
        .s_axi_reg_bresp(s_axi_reg_bresp),
        .s_axi_reg_bvalid(s_axi_reg_bvalid),
        .s_axi_reg_rdata(s_axi_reg_rdata),
        .s_axi_reg_rready(s_axi_reg_rready),
        .s_axi_reg_rresp(s_axi_reg_rresp),
        .s_axi_reg_rvalid(s_axi_reg_rvalid),
        .s_axi_reg_wdata(s_axi_reg_wdata),
        .s_axi_reg_wready(s_axi_reg_wready),
        .s_axi_reg_wvalid(s_axi_reg_wvalid),
        .s_control_ARADDR(s_control_ARADDR),
        .s_control_ARPROT(s_control_ARPROT),
        .s_control_ARQOS(s_control_ARQOS),
        .s_control_ARREADY(s_control_ARREADY),
        .s_control_ARREGION(s_control_ARREGION),
        .s_control_ARVALID(s_control_ARVALID),
        .s_control_AWADDR(s_control_AWADDR),
        .s_control_AWPROT(s_control_AWPROT),
        .s_control_AWQOS(s_control_AWQOS),
        .s_control_AWREADY(s_control_AWREADY),
        .s_control_AWREGION(s_control_AWREGION),
        .s_control_AWVALID(s_control_AWVALID),
        .s_control_BREADY(s_control_BREADY),
        .s_control_BRESP(s_control_BRESP),
        .s_control_BVALID(s_control_BVALID),
        .s_control_RDATA(s_control_RDATA),
        .s_control_RREADY(s_control_RREADY),
        .s_control_RRESP(s_control_RRESP),
        .s_control_RVALID(s_control_RVALID),
        .s_control_WDATA(s_control_WDATA),
        .s_control_WREADY(s_control_WREADY),
        .s_control_WSTRB(s_control_WSTRB),
        .s_control_WVALID(s_control_WVALID),
        .s_pr_axi_mem_ARADDR(s_pr_axi_mem_ARADDR),
        .s_pr_axi_mem_ARBURST(s_pr_axi_mem_ARBURST),
        .s_pr_axi_mem_ARCACHE(s_pr_axi_mem_ARCACHE),
        .s_pr_axi_mem_ARID(s_pr_axi_mem_ARID),
        .s_pr_axi_mem_ARLEN(s_pr_axi_mem_ARLEN),
        .s_pr_axi_mem_ARLOCK(s_pr_axi_mem_ARLOCK),
        .s_pr_axi_mem_ARPROT(s_pr_axi_mem_ARPROT),
        .s_pr_axi_mem_ARQOS(s_pr_axi_mem_ARQOS),
        .s_pr_axi_mem_ARREADY(s_pr_axi_mem_ARREADY),
        .s_pr_axi_mem_ARREGION(s_pr_axi_mem_ARREGION),
        .s_pr_axi_mem_ARSIZE(s_pr_axi_mem_ARSIZE),
        .s_pr_axi_mem_ARVALID(s_pr_axi_mem_ARVALID),
        .s_pr_axi_mem_AWADDR(s_pr_axi_mem_AWADDR),
        .s_pr_axi_mem_AWBURST(s_pr_axi_mem_AWBURST),
        .s_pr_axi_mem_AWCACHE(s_pr_axi_mem_AWCACHE),
        .s_pr_axi_mem_AWID(s_pr_axi_mem_AWID),
        .s_pr_axi_mem_AWLEN(s_pr_axi_mem_AWLEN),
        .s_pr_axi_mem_AWLOCK(s_pr_axi_mem_AWLOCK),
        .s_pr_axi_mem_AWPROT(s_pr_axi_mem_AWPROT),
        .s_pr_axi_mem_AWQOS(s_pr_axi_mem_AWQOS),
        .s_pr_axi_mem_AWREADY(s_pr_axi_mem_AWREADY),
        .s_pr_axi_mem_AWREGION(s_pr_axi_mem_AWREGION),
        .s_pr_axi_mem_AWSIZE(s_pr_axi_mem_AWSIZE),
        .s_pr_axi_mem_AWVALID(s_pr_axi_mem_AWVALID),
        .s_pr_axi_mem_BID(s_pr_axi_mem_BID),
        .s_pr_axi_mem_BREADY(s_pr_axi_mem_BREADY),
        .s_pr_axi_mem_BRESP(s_pr_axi_mem_BRESP),
        .s_pr_axi_mem_BVALID(s_pr_axi_mem_BVALID),
        .s_pr_axi_mem_RDATA(s_pr_axi_mem_RDATA),
        .s_pr_axi_mem_RID(s_pr_axi_mem_RID),
        .s_pr_axi_mem_RLAST(s_pr_axi_mem_RLAST),
        .s_pr_axi_mem_RREADY(s_pr_axi_mem_RREADY),
        .s_pr_axi_mem_RRESP(s_pr_axi_mem_RRESP),
        .s_pr_axi_mem_RVALID(s_pr_axi_mem_RVALID),
        .s_pr_axi_mem_WDATA(s_pr_axi_mem_WDATA),
        .s_pr_axi_mem_WID(s_pr_axi_mem_WID),
        .s_pr_axi_mem_WLAST(s_pr_axi_mem_WLAST),
        .s_pr_axi_mem_WREADY(s_pr_axi_mem_WREADY),
        .s_pr_axi_mem_WSTRB(s_pr_axi_mem_WSTRB),
        .s_pr_axi_mem_WVALID(s_pr_axi_mem_WVALID),
        .s_stream_in_TDATA(s_stream_in_TDATA),
        .s_stream_in_TKEEP(s_stream_in_TKEEP),
        .s_stream_in_TLAST(s_stream_in_TLAST),
        .s_stream_in_TREADY(s_stream_in_TREADY),
        .s_stream_in_TVALID(s_stream_in_TVALID),
        .s_stream_out_TDATA(s_stream_out_TDATA),
        .s_stream_out_TKEEP(s_stream_out_TKEEP),
        .s_stream_out_TLAST(s_stream_out_TLAST),
        .s_stream_out_TREADY(s_stream_out_TREADY),
        .s_stream_out_TVALID(s_stream_out_TVALID));
endmodule

(* ORIG_REF_NAME = "axi_lite_if" *) 
module shell_pr_decoupler_0_0_axi_lite_if
   (decouple_status,
    s_axi_reg_rdata,
    s_axi_reg_rresp,
    s_axi_reg_rvalid,
    s_stream_out_TREADY,
    rp_stream_out_TVALID,
    rp_stream_in_TREADY,
    s_stream_in_TVALID,
    s_control_WREADY,
    rp_control_WVALID,
    rp_control_RREADY,
    s_control_RVALID,
    rp_control_BREADY,
    s_control_BVALID,
    s_control_AWREADY,
    rp_control_AWVALID,
    s_control_ARREADY,
    rp_control_ARVALID,
    rp_pr_axi_mem_WREADY,
    s_pr_axi_mem_WVALID,
    s_pr_axi_mem_RREADY,
    rp_pr_axi_mem_RVALID,
    s_pr_axi_mem_BREADY,
    rp_pr_axi_mem_BVALID,
    rp_pr_axi_mem_AWREADY,
    s_pr_axi_mem_AWVALID,
    rp_pr_axi_mem_ARREADY,
    s_pr_axi_mem_ARVALID,
    s_axi_reg_arready,
    s_axi_reg_bresp,
    s_axi_reg_bvalid,
    aclk,
    s_axi_reg_rready,
    s_axi_reg_arvalid,
    rp_stream_out_TREADY,
    s_stream_out_TVALID,
    s_stream_in_TREADY,
    rp_stream_in_TVALID,
    rp_control_WREADY,
    s_control_WVALID,
    s_control_RREADY,
    rp_control_RVALID,
    s_control_BREADY,
    rp_control_BVALID,
    rp_control_AWREADY,
    s_control_AWVALID,
    rp_control_ARREADY,
    s_control_ARVALID,
    s_pr_axi_mem_WREADY,
    rp_pr_axi_mem_WVALID,
    rp_pr_axi_mem_RREADY,
    s_pr_axi_mem_RVALID,
    rp_pr_axi_mem_BREADY,
    s_pr_axi_mem_BVALID,
    s_pr_axi_mem_AWREADY,
    rp_pr_axi_mem_AWVALID,
    s_pr_axi_mem_ARREADY,
    rp_pr_axi_mem_ARVALID,
    s_axi_reg_wdata,
    s_axi_reg_awaddr,
    s_axi_reg_wvalid,
    s_axi_reg_awvalid,
    s_axi_reg_aresetn,
    s_axi_reg_araddr,
    s_axi_reg_bready);
  output decouple_status;
  output [0:0]s_axi_reg_rdata;
  output [0:0]s_axi_reg_rresp;
  output s_axi_reg_rvalid;
  output s_stream_out_TREADY;
  output rp_stream_out_TVALID;
  output rp_stream_in_TREADY;
  output s_stream_in_TVALID;
  output s_control_WREADY;
  output rp_control_WVALID;
  output rp_control_RREADY;
  output s_control_RVALID;
  output rp_control_BREADY;
  output s_control_BVALID;
  output s_control_AWREADY;
  output rp_control_AWVALID;
  output s_control_ARREADY;
  output rp_control_ARVALID;
  output rp_pr_axi_mem_WREADY;
  output s_pr_axi_mem_WVALID;
  output s_pr_axi_mem_RREADY;
  output rp_pr_axi_mem_RVALID;
  output s_pr_axi_mem_BREADY;
  output rp_pr_axi_mem_BVALID;
  output rp_pr_axi_mem_AWREADY;
  output s_pr_axi_mem_AWVALID;
  output rp_pr_axi_mem_ARREADY;
  output s_pr_axi_mem_ARVALID;
  output s_axi_reg_arready;
  output [0:0]s_axi_reg_bresp;
  output s_axi_reg_bvalid;
  input aclk;
  input s_axi_reg_rready;
  input s_axi_reg_arvalid;
  input rp_stream_out_TREADY;
  input s_stream_out_TVALID;
  input s_stream_in_TREADY;
  input rp_stream_in_TVALID;
  input rp_control_WREADY;
  input s_control_WVALID;
  input s_control_RREADY;
  input rp_control_RVALID;
  input s_control_BREADY;
  input rp_control_BVALID;
  input rp_control_AWREADY;
  input s_control_AWVALID;
  input rp_control_ARREADY;
  input s_control_ARVALID;
  input s_pr_axi_mem_WREADY;
  input rp_pr_axi_mem_WVALID;
  input rp_pr_axi_mem_RREADY;
  input s_pr_axi_mem_RVALID;
  input rp_pr_axi_mem_BREADY;
  input s_pr_axi_mem_BVALID;
  input s_pr_axi_mem_AWREADY;
  input rp_pr_axi_mem_AWVALID;
  input s_pr_axi_mem_ARREADY;
  input rp_pr_axi_mem_ARVALID;
  input [0:0]s_axi_reg_wdata;
  input [0:0]s_axi_reg_awaddr;
  input s_axi_reg_wvalid;
  input s_axi_reg_awvalid;
  input s_axi_reg_aresetn;
  input [0:0]s_axi_reg_araddr;
  input s_axi_reg_bready;

  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire aclk;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire decouple_bit_i_i_1_n_0;
  wire decouple_status;
  wire [1:0]next_state;
  wire rp_control_ARREADY;
  wire rp_control_ARVALID;
  wire rp_control_AWREADY;
  wire rp_control_AWVALID;
  wire rp_control_BREADY;
  wire rp_control_BVALID;
  wire rp_control_RREADY;
  wire rp_control_RVALID;
  wire rp_control_WREADY;
  wire rp_control_WVALID;
  wire rp_pr_axi_mem_ARREADY;
  wire rp_pr_axi_mem_ARVALID;
  wire rp_pr_axi_mem_AWREADY;
  wire rp_pr_axi_mem_AWVALID;
  wire rp_pr_axi_mem_BREADY;
  wire rp_pr_axi_mem_BVALID;
  wire rp_pr_axi_mem_RREADY;
  wire rp_pr_axi_mem_RVALID;
  wire rp_pr_axi_mem_WREADY;
  wire rp_pr_axi_mem_WVALID;
  wire rp_stream_in_TREADY;
  wire rp_stream_in_TVALID;
  wire rp_stream_out_TREADY;
  wire rp_stream_out_TVALID;
  wire \s_axi_rdata_i[0]_i_1_n_0 ;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire [0:0]s_axi_reg_araddr;
  wire s_axi_reg_aresetn;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [0:0]s_axi_reg_awaddr;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire [0:0]s_axi_reg_bresp;
  wire s_axi_reg_bvalid;
  wire [0:0]s_axi_reg_rdata;
  wire s_axi_reg_rready;
  wire [0:0]s_axi_reg_rresp;
  wire s_axi_reg_rvalid;
  wire [0:0]s_axi_reg_wdata;
  wire s_axi_reg_wvalid;
  wire \s_axi_rresp_i[1]_i_1_n_0 ;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_control_ARREADY;
  wire s_control_ARVALID;
  wire s_control_AWREADY;
  wire s_control_AWVALID;
  wire s_control_BREADY;
  wire s_control_BVALID;
  wire s_control_RREADY;
  wire s_control_RVALID;
  wire s_control_WREADY;
  wire s_control_WVALID;
  wire s_pr_axi_mem_ARREADY;
  wire s_pr_axi_mem_ARVALID;
  wire s_pr_axi_mem_AWREADY;
  wire s_pr_axi_mem_AWVALID;
  wire s_pr_axi_mem_BREADY;
  wire s_pr_axi_mem_BVALID;
  wire s_pr_axi_mem_RREADY;
  wire s_pr_axi_mem_RVALID;
  wire s_pr_axi_mem_WREADY;
  wire s_pr_axi_mem_WVALID;
  wire s_stream_in_TREADY;
  wire s_stream_in_TVALID;
  wire s_stream_out_TREADY;
  wire s_stream_out_TVALID;

  LUT5 #(
    .INIT(32'h00400043)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(s_axi_reg_bready),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(s_axi_reg_arvalid),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h00011101)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(s_axi_reg_arvalid),
        .I3(current_state[2]),
        .I4(s_axi_reg_rready),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11101010)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(s_axi_reg_arvalid),
        .I3(s_axi_reg_wvalid),
        .I4(s_axi_reg_awvalid),
        .I5(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(s_axi_reg_arvalid),
        .I3(current_state[1]),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55504A4A)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(current_state[2]),
        .I1(s_axi_reg_rready),
        .I2(current_state[1]),
        .I3(s_axi_reg_bready),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "st_write:011,st_read:100,st_read_resp:010,st_idle:000,st_write_resp:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st_write:011,st_read:100,st_read_resp:010,st_idle:000,st_write_resp:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st_write:011,st_read:100,st_read_resp:010,st_idle:000,st_write_resp:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .D(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .Q(current_state[2]),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    decouple_bit_i_i_1
       (.I0(s_axi_reg_wdata),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(s_axi_reg_awaddr),
        .I4(decouple_status),
        .O(decouple_bit_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    decouple_bit_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(decouple_bit_i_i_1_n_0),
        .Q(decouple_status),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_control_ARVALID_INST_0
       (.I0(s_control_ARVALID),
        .I1(decouple_status),
        .O(rp_control_ARVALID));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_control_AWVALID_INST_0
       (.I0(s_control_AWVALID),
        .I1(decouple_status),
        .O(rp_control_AWVALID));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_control_BREADY_INST_0
       (.I0(s_control_BREADY),
        .I1(decouple_status),
        .O(rp_control_BREADY));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_control_RREADY_INST_0
       (.I0(s_control_RREADY),
        .I1(decouple_status),
        .O(rp_control_RREADY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_control_WVALID_INST_0
       (.I0(s_control_WVALID),
        .I1(decouple_status),
        .O(rp_control_WVALID));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_pr_axi_mem_ARREADY_INST_0
       (.I0(s_pr_axi_mem_ARREADY),
        .I1(decouple_status),
        .O(rp_pr_axi_mem_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_pr_axi_mem_AWREADY_INST_0
       (.I0(s_pr_axi_mem_AWREADY),
        .I1(decouple_status),
        .O(rp_pr_axi_mem_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_pr_axi_mem_BVALID_INST_0
       (.I0(s_pr_axi_mem_BVALID),
        .I1(decouple_status),
        .O(rp_pr_axi_mem_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_pr_axi_mem_RVALID_INST_0
       (.I0(s_pr_axi_mem_RVALID),
        .I1(decouple_status),
        .O(rp_pr_axi_mem_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_pr_axi_mem_WREADY_INST_0
       (.I0(s_pr_axi_mem_WREADY),
        .I1(decouple_status),
        .O(rp_pr_axi_mem_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_stream_in_TREADY_INST_0
       (.I0(s_stream_in_TREADY),
        .I1(decouple_status),
        .O(rp_stream_in_TREADY));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_stream_out_TVALID_INST_0
       (.I0(s_stream_out_TVALID),
        .I1(decouple_status),
        .O(rp_stream_out_TVALID));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(s_axi_reg_aresetn),
        .O(\s_axi_rdata_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEF0220)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(decouple_status),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(s_axi_reg_rdata),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[0]_i_2_n_0 ),
        .Q(s_axi_reg_rdata),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    s_axi_reg_arready_INST_0
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(s_axi_reg_arready));
  LUT3 #(
    .INIT(8'h20)) 
    \s_axi_reg_bresp[1]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(s_axi_reg_awaddr),
        .O(s_axi_reg_bresp));
  LUT2 #(
    .INIT(4'h4)) 
    s_axi_reg_bvalid_INST_0
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .O(s_axi_reg_bvalid));
  LUT6 #(
    .INIT(64'h88888CC888888008)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_reg_rresp),
        .I1(s_axi_reg_aresetn),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(s_axi_reg_araddr),
        .O(\s_axi_rresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_rresp_i[1]_i_1_n_0 ),
        .Q(s_axi_reg_rresp),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h06FF0606)) 
    s_axi_rvalid_i_i_1
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(s_axi_reg_rready),
        .I4(s_axi_reg_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_reg_rvalid),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_control_ARREADY_INST_0
       (.I0(rp_control_ARREADY),
        .I1(decouple_status),
        .O(s_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_control_AWREADY_INST_0
       (.I0(rp_control_AWREADY),
        .I1(decouple_status),
        .O(s_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_control_BVALID_INST_0
       (.I0(rp_control_BVALID),
        .I1(decouple_status),
        .O(s_control_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_control_RVALID_INST_0
       (.I0(rp_control_RVALID),
        .I1(decouple_status),
        .O(s_control_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_control_WREADY_INST_0
       (.I0(rp_control_WREADY),
        .I1(decouple_status),
        .O(s_control_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_pr_axi_mem_ARVALID_INST_0
       (.I0(rp_pr_axi_mem_ARVALID),
        .I1(decouple_status),
        .O(s_pr_axi_mem_ARVALID));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_pr_axi_mem_AWVALID_INST_0
       (.I0(rp_pr_axi_mem_AWVALID),
        .I1(decouple_status),
        .O(s_pr_axi_mem_AWVALID));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_pr_axi_mem_BREADY_INST_0
       (.I0(rp_pr_axi_mem_BREADY),
        .I1(decouple_status),
        .O(s_pr_axi_mem_BREADY));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_pr_axi_mem_RREADY_INST_0
       (.I0(rp_pr_axi_mem_RREADY),
        .I1(decouple_status),
        .O(s_pr_axi_mem_RREADY));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_pr_axi_mem_WVALID_INST_0
       (.I0(rp_pr_axi_mem_WVALID),
        .I1(decouple_status),
        .O(s_pr_axi_mem_WVALID));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_stream_in_TVALID_INST_0
       (.I0(rp_stream_in_TVALID),
        .I1(decouple_status),
        .O(s_stream_in_TVALID));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_stream_out_TREADY_INST_0
       (.I0(rp_stream_out_TREADY),
        .I1(decouple_status),
        .O(s_stream_out_TREADY));
endmodule

(* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "prd_shell_pr_decoupler_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module shell_pr_decoupler_0_0_prd_shell_pr_decoupler_0_0
   (s_pr_axi_mem_ARVALID,
    rp_pr_axi_mem_ARVALID,
    s_pr_axi_mem_ARREADY,
    rp_pr_axi_mem_ARREADY,
    s_pr_axi_mem_AWVALID,
    rp_pr_axi_mem_AWVALID,
    s_pr_axi_mem_AWREADY,
    rp_pr_axi_mem_AWREADY,
    s_pr_axi_mem_BVALID,
    rp_pr_axi_mem_BVALID,
    s_pr_axi_mem_BREADY,
    rp_pr_axi_mem_BREADY,
    s_pr_axi_mem_RVALID,
    rp_pr_axi_mem_RVALID,
    s_pr_axi_mem_RREADY,
    rp_pr_axi_mem_RREADY,
    s_pr_axi_mem_WVALID,
    rp_pr_axi_mem_WVALID,
    s_pr_axi_mem_WREADY,
    rp_pr_axi_mem_WREADY,
    s_pr_axi_mem_AWID,
    rp_pr_axi_mem_AWID,
    s_pr_axi_mem_AWADDR,
    rp_pr_axi_mem_AWADDR,
    s_pr_axi_mem_AWLEN,
    rp_pr_axi_mem_AWLEN,
    s_pr_axi_mem_AWSIZE,
    rp_pr_axi_mem_AWSIZE,
    s_pr_axi_mem_AWBURST,
    rp_pr_axi_mem_AWBURST,
    s_pr_axi_mem_AWLOCK,
    rp_pr_axi_mem_AWLOCK,
    s_pr_axi_mem_AWCACHE,
    rp_pr_axi_mem_AWCACHE,
    s_pr_axi_mem_AWPROT,
    rp_pr_axi_mem_AWPROT,
    s_pr_axi_mem_AWREGION,
    rp_pr_axi_mem_AWREGION,
    s_pr_axi_mem_AWQOS,
    rp_pr_axi_mem_AWQOS,
    s_pr_axi_mem_WID,
    rp_pr_axi_mem_WID,
    s_pr_axi_mem_WDATA,
    rp_pr_axi_mem_WDATA,
    s_pr_axi_mem_WSTRB,
    rp_pr_axi_mem_WSTRB,
    s_pr_axi_mem_WLAST,
    rp_pr_axi_mem_WLAST,
    s_pr_axi_mem_BID,
    rp_pr_axi_mem_BID,
    s_pr_axi_mem_BRESP,
    rp_pr_axi_mem_BRESP,
    s_pr_axi_mem_ARID,
    rp_pr_axi_mem_ARID,
    s_pr_axi_mem_ARADDR,
    rp_pr_axi_mem_ARADDR,
    s_pr_axi_mem_ARLEN,
    rp_pr_axi_mem_ARLEN,
    s_pr_axi_mem_ARSIZE,
    rp_pr_axi_mem_ARSIZE,
    s_pr_axi_mem_ARBURST,
    rp_pr_axi_mem_ARBURST,
    s_pr_axi_mem_ARLOCK,
    rp_pr_axi_mem_ARLOCK,
    s_pr_axi_mem_ARCACHE,
    rp_pr_axi_mem_ARCACHE,
    s_pr_axi_mem_ARPROT,
    rp_pr_axi_mem_ARPROT,
    s_pr_axi_mem_ARREGION,
    rp_pr_axi_mem_ARREGION,
    s_pr_axi_mem_ARQOS,
    rp_pr_axi_mem_ARQOS,
    s_pr_axi_mem_RID,
    rp_pr_axi_mem_RID,
    s_pr_axi_mem_RDATA,
    rp_pr_axi_mem_RDATA,
    s_pr_axi_mem_RRESP,
    rp_pr_axi_mem_RRESP,
    s_pr_axi_mem_RLAST,
    rp_pr_axi_mem_RLAST,
    s_control_ARVALID,
    rp_control_ARVALID,
    s_control_ARREADY,
    rp_control_ARREADY,
    s_control_AWVALID,
    rp_control_AWVALID,
    s_control_AWREADY,
    rp_control_AWREADY,
    s_control_BVALID,
    rp_control_BVALID,
    s_control_BREADY,
    rp_control_BREADY,
    s_control_RVALID,
    rp_control_RVALID,
    s_control_RREADY,
    rp_control_RREADY,
    s_control_WVALID,
    rp_control_WVALID,
    s_control_WREADY,
    rp_control_WREADY,
    s_control_AWADDR,
    rp_control_AWADDR,
    s_control_AWPROT,
    rp_control_AWPROT,
    s_control_AWREGION,
    rp_control_AWREGION,
    s_control_AWQOS,
    rp_control_AWQOS,
    s_control_WDATA,
    rp_control_WDATA,
    s_control_WSTRB,
    rp_control_WSTRB,
    s_control_BRESP,
    rp_control_BRESP,
    s_control_ARADDR,
    rp_control_ARADDR,
    s_control_ARPROT,
    rp_control_ARPROT,
    s_control_ARREGION,
    rp_control_ARREGION,
    s_control_ARQOS,
    rp_control_ARQOS,
    s_control_RDATA,
    rp_control_RDATA,
    s_control_RRESP,
    rp_control_RRESP,
    s_stream_in_TVALID,
    rp_stream_in_TVALID,
    s_stream_in_TREADY,
    rp_stream_in_TREADY,
    s_stream_in_TDATA,
    rp_stream_in_TDATA,
    s_stream_in_TLAST,
    rp_stream_in_TLAST,
    s_stream_in_TKEEP,
    rp_stream_in_TKEEP,
    s_stream_out_TVALID,
    rp_stream_out_TVALID,
    s_stream_out_TREADY,
    rp_stream_out_TREADY,
    s_stream_out_TDATA,
    rp_stream_out_TDATA,
    s_stream_out_TLAST,
    rp_stream_out_TLAST,
    s_stream_out_TKEEP,
    rp_stream_out_TKEEP,
    s_axi_reg_aresetn,
    s_axi_reg_awaddr,
    s_axi_reg_awvalid,
    s_axi_reg_awready,
    s_axi_reg_wdata,
    s_axi_reg_wvalid,
    s_axi_reg_wready,
    s_axi_reg_bresp,
    s_axi_reg_bvalid,
    s_axi_reg_bready,
    s_axi_reg_araddr,
    s_axi_reg_arvalid,
    s_axi_reg_arready,
    s_axi_reg_rdata,
    s_axi_reg_rresp,
    s_axi_reg_rvalid,
    s_axi_reg_rready,
    aclk,
    decouple_status);
  output s_pr_axi_mem_ARVALID;
  input rp_pr_axi_mem_ARVALID;
  input s_pr_axi_mem_ARREADY;
  output rp_pr_axi_mem_ARREADY;
  output s_pr_axi_mem_AWVALID;
  input rp_pr_axi_mem_AWVALID;
  input s_pr_axi_mem_AWREADY;
  output rp_pr_axi_mem_AWREADY;
  input s_pr_axi_mem_BVALID;
  output rp_pr_axi_mem_BVALID;
  output s_pr_axi_mem_BREADY;
  input rp_pr_axi_mem_BREADY;
  input s_pr_axi_mem_RVALID;
  output rp_pr_axi_mem_RVALID;
  output s_pr_axi_mem_RREADY;
  input rp_pr_axi_mem_RREADY;
  output s_pr_axi_mem_WVALID;
  input rp_pr_axi_mem_WVALID;
  input s_pr_axi_mem_WREADY;
  output rp_pr_axi_mem_WREADY;
  output [0:0]s_pr_axi_mem_AWID;
  input [0:0]rp_pr_axi_mem_AWID;
  output [31:0]s_pr_axi_mem_AWADDR;
  input [31:0]rp_pr_axi_mem_AWADDR;
  output [7:0]s_pr_axi_mem_AWLEN;
  input [7:0]rp_pr_axi_mem_AWLEN;
  output [2:0]s_pr_axi_mem_AWSIZE;
  input [2:0]rp_pr_axi_mem_AWSIZE;
  output [1:0]s_pr_axi_mem_AWBURST;
  input [1:0]rp_pr_axi_mem_AWBURST;
  output [0:0]s_pr_axi_mem_AWLOCK;
  input [0:0]rp_pr_axi_mem_AWLOCK;
  output [3:0]s_pr_axi_mem_AWCACHE;
  input [3:0]rp_pr_axi_mem_AWCACHE;
  output [2:0]s_pr_axi_mem_AWPROT;
  input [2:0]rp_pr_axi_mem_AWPROT;
  output [3:0]s_pr_axi_mem_AWREGION;
  input [3:0]rp_pr_axi_mem_AWREGION;
  output [3:0]s_pr_axi_mem_AWQOS;
  input [3:0]rp_pr_axi_mem_AWQOS;
  output [0:0]s_pr_axi_mem_WID;
  input [0:0]rp_pr_axi_mem_WID;
  output [511:0]s_pr_axi_mem_WDATA;
  input [511:0]rp_pr_axi_mem_WDATA;
  output [63:0]s_pr_axi_mem_WSTRB;
  input [63:0]rp_pr_axi_mem_WSTRB;
  output s_pr_axi_mem_WLAST;
  input rp_pr_axi_mem_WLAST;
  input [0:0]s_pr_axi_mem_BID;
  output [0:0]rp_pr_axi_mem_BID;
  input [1:0]s_pr_axi_mem_BRESP;
  output [1:0]rp_pr_axi_mem_BRESP;
  output [0:0]s_pr_axi_mem_ARID;
  input [0:0]rp_pr_axi_mem_ARID;
  output [31:0]s_pr_axi_mem_ARADDR;
  input [31:0]rp_pr_axi_mem_ARADDR;
  output [7:0]s_pr_axi_mem_ARLEN;
  input [7:0]rp_pr_axi_mem_ARLEN;
  output [2:0]s_pr_axi_mem_ARSIZE;
  input [2:0]rp_pr_axi_mem_ARSIZE;
  output [1:0]s_pr_axi_mem_ARBURST;
  input [1:0]rp_pr_axi_mem_ARBURST;
  output [0:0]s_pr_axi_mem_ARLOCK;
  input [0:0]rp_pr_axi_mem_ARLOCK;
  output [3:0]s_pr_axi_mem_ARCACHE;
  input [3:0]rp_pr_axi_mem_ARCACHE;
  output [2:0]s_pr_axi_mem_ARPROT;
  input [2:0]rp_pr_axi_mem_ARPROT;
  output [3:0]s_pr_axi_mem_ARREGION;
  input [3:0]rp_pr_axi_mem_ARREGION;
  output [3:0]s_pr_axi_mem_ARQOS;
  input [3:0]rp_pr_axi_mem_ARQOS;
  input [0:0]s_pr_axi_mem_RID;
  output [0:0]rp_pr_axi_mem_RID;
  input [511:0]s_pr_axi_mem_RDATA;
  output [511:0]rp_pr_axi_mem_RDATA;
  input [1:0]s_pr_axi_mem_RRESP;
  output [1:0]rp_pr_axi_mem_RRESP;
  input s_pr_axi_mem_RLAST;
  output rp_pr_axi_mem_RLAST;
  input s_control_ARVALID;
  output rp_control_ARVALID;
  output s_control_ARREADY;
  input rp_control_ARREADY;
  input s_control_AWVALID;
  output rp_control_AWVALID;
  output s_control_AWREADY;
  input rp_control_AWREADY;
  output s_control_BVALID;
  input rp_control_BVALID;
  input s_control_BREADY;
  output rp_control_BREADY;
  output s_control_RVALID;
  input rp_control_RVALID;
  input s_control_RREADY;
  output rp_control_RREADY;
  input s_control_WVALID;
  output rp_control_WVALID;
  output s_control_WREADY;
  input rp_control_WREADY;
  input [31:0]s_control_AWADDR;
  output [31:0]rp_control_AWADDR;
  input [2:0]s_control_AWPROT;
  output [2:0]rp_control_AWPROT;
  input [3:0]s_control_AWREGION;
  output [3:0]rp_control_AWREGION;
  input [3:0]s_control_AWQOS;
  output [3:0]rp_control_AWQOS;
  input [31:0]s_control_WDATA;
  output [31:0]rp_control_WDATA;
  input [3:0]s_control_WSTRB;
  output [3:0]rp_control_WSTRB;
  output [1:0]s_control_BRESP;
  input [1:0]rp_control_BRESP;
  input [31:0]s_control_ARADDR;
  output [31:0]rp_control_ARADDR;
  input [2:0]s_control_ARPROT;
  output [2:0]rp_control_ARPROT;
  input [3:0]s_control_ARREGION;
  output [3:0]rp_control_ARREGION;
  input [3:0]s_control_ARQOS;
  output [3:0]rp_control_ARQOS;
  output [31:0]s_control_RDATA;
  input [31:0]rp_control_RDATA;
  output [1:0]s_control_RRESP;
  input [1:0]rp_control_RRESP;
  output s_stream_in_TVALID;
  input rp_stream_in_TVALID;
  input s_stream_in_TREADY;
  output rp_stream_in_TREADY;
  output [63:0]s_stream_in_TDATA;
  input [63:0]rp_stream_in_TDATA;
  output s_stream_in_TLAST;
  input rp_stream_in_TLAST;
  output [7:0]s_stream_in_TKEEP;
  input [7:0]rp_stream_in_TKEEP;
  input s_stream_out_TVALID;
  output rp_stream_out_TVALID;
  output s_stream_out_TREADY;
  input rp_stream_out_TREADY;
  input [63:0]s_stream_out_TDATA;
  output [63:0]rp_stream_out_TDATA;
  input s_stream_out_TLAST;
  output rp_stream_out_TLAST;
  input [7:0]s_stream_out_TKEEP;
  output [7:0]rp_stream_out_TKEEP;
  input s_axi_reg_aresetn;
  input [0:0]s_axi_reg_awaddr;
  input s_axi_reg_awvalid;
  output s_axi_reg_awready;
  input [31:0]s_axi_reg_wdata;
  input s_axi_reg_wvalid;
  output s_axi_reg_wready;
  output [1:0]s_axi_reg_bresp;
  output s_axi_reg_bvalid;
  input s_axi_reg_bready;
  input [0:0]s_axi_reg_araddr;
  input s_axi_reg_arvalid;
  output s_axi_reg_arready;
  output [31:0]s_axi_reg_rdata;
  output [1:0]s_axi_reg_rresp;
  output s_axi_reg_rvalid;
  input s_axi_reg_rready;
  input aclk;
  output decouple_status;

  wire \<const0> ;
  wire aclk;
  wire decouple_status;
  wire rp_control_ARREADY;
  wire rp_control_ARVALID;
  wire rp_control_AWREADY;
  wire rp_control_AWVALID;
  wire rp_control_BREADY;
  wire [1:0]rp_control_BRESP;
  wire rp_control_BVALID;
  wire [31:0]rp_control_RDATA;
  wire rp_control_RREADY;
  wire [1:0]rp_control_RRESP;
  wire rp_control_RVALID;
  wire rp_control_WREADY;
  wire rp_control_WVALID;
  wire [31:0]rp_pr_axi_mem_ARADDR;
  wire [1:0]rp_pr_axi_mem_ARBURST;
  wire [3:0]rp_pr_axi_mem_ARCACHE;
  wire [0:0]rp_pr_axi_mem_ARID;
  wire [7:0]rp_pr_axi_mem_ARLEN;
  wire [0:0]rp_pr_axi_mem_ARLOCK;
  wire [2:0]rp_pr_axi_mem_ARPROT;
  wire [3:0]rp_pr_axi_mem_ARQOS;
  wire rp_pr_axi_mem_ARREADY;
  wire [3:0]rp_pr_axi_mem_ARREGION;
  wire [2:0]rp_pr_axi_mem_ARSIZE;
  wire rp_pr_axi_mem_ARVALID;
  wire [31:0]rp_pr_axi_mem_AWADDR;
  wire [1:0]rp_pr_axi_mem_AWBURST;
  wire [3:0]rp_pr_axi_mem_AWCACHE;
  wire [0:0]rp_pr_axi_mem_AWID;
  wire [7:0]rp_pr_axi_mem_AWLEN;
  wire [0:0]rp_pr_axi_mem_AWLOCK;
  wire [2:0]rp_pr_axi_mem_AWPROT;
  wire [3:0]rp_pr_axi_mem_AWQOS;
  wire rp_pr_axi_mem_AWREADY;
  wire [3:0]rp_pr_axi_mem_AWREGION;
  wire [2:0]rp_pr_axi_mem_AWSIZE;
  wire rp_pr_axi_mem_AWVALID;
  wire rp_pr_axi_mem_BREADY;
  wire rp_pr_axi_mem_BVALID;
  wire rp_pr_axi_mem_RREADY;
  wire rp_pr_axi_mem_RVALID;
  wire [511:0]rp_pr_axi_mem_WDATA;
  wire [0:0]rp_pr_axi_mem_WID;
  wire rp_pr_axi_mem_WLAST;
  wire rp_pr_axi_mem_WREADY;
  wire [63:0]rp_pr_axi_mem_WSTRB;
  wire rp_pr_axi_mem_WVALID;
  wire [63:0]rp_stream_in_TDATA;
  wire [7:0]rp_stream_in_TKEEP;
  wire rp_stream_in_TLAST;
  wire rp_stream_in_TREADY;
  wire rp_stream_in_TVALID;
  wire rp_stream_out_TREADY;
  wire rp_stream_out_TVALID;
  wire [0:0]s_axi_reg_araddr;
  wire s_axi_reg_aresetn;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [0:0]s_axi_reg_awaddr;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire [1:1]\^s_axi_reg_bresp ;
  wire s_axi_reg_bvalid;
  wire [0:0]\^s_axi_reg_rdata ;
  wire s_axi_reg_rready;
  wire [1:1]\^s_axi_reg_rresp ;
  wire s_axi_reg_rvalid;
  wire [31:0]s_axi_reg_wdata;
  wire s_axi_reg_wvalid;
  wire [31:0]s_control_ARADDR;
  wire [2:0]s_control_ARPROT;
  wire [3:0]s_control_ARQOS;
  wire s_control_ARREADY;
  wire [3:0]s_control_ARREGION;
  wire s_control_ARVALID;
  wire [31:0]s_control_AWADDR;
  wire [2:0]s_control_AWPROT;
  wire [3:0]s_control_AWQOS;
  wire s_control_AWREADY;
  wire [3:0]s_control_AWREGION;
  wire s_control_AWVALID;
  wire s_control_BREADY;
  wire s_control_BVALID;
  wire s_control_RREADY;
  wire s_control_RVALID;
  wire [31:0]s_control_WDATA;
  wire s_control_WREADY;
  wire [3:0]s_control_WSTRB;
  wire s_control_WVALID;
  wire s_pr_axi_mem_ARREADY;
  wire s_pr_axi_mem_ARVALID;
  wire s_pr_axi_mem_AWREADY;
  wire s_pr_axi_mem_AWVALID;
  wire [0:0]s_pr_axi_mem_BID;
  wire s_pr_axi_mem_BREADY;
  wire [1:0]s_pr_axi_mem_BRESP;
  wire s_pr_axi_mem_BVALID;
  wire [511:0]s_pr_axi_mem_RDATA;
  wire [0:0]s_pr_axi_mem_RID;
  wire s_pr_axi_mem_RLAST;
  wire s_pr_axi_mem_RREADY;
  wire [1:0]s_pr_axi_mem_RRESP;
  wire s_pr_axi_mem_RVALID;
  wire s_pr_axi_mem_WREADY;
  wire s_pr_axi_mem_WVALID;
  wire s_stream_in_TREADY;
  wire s_stream_in_TVALID;
  wire [63:0]s_stream_out_TDATA;
  wire [7:0]s_stream_out_TKEEP;
  wire s_stream_out_TLAST;
  wire s_stream_out_TREADY;
  wire s_stream_out_TVALID;

  assign rp_control_ARADDR[31:0] = s_control_ARADDR;
  assign rp_control_ARPROT[2:0] = s_control_ARPROT;
  assign rp_control_ARQOS[3:0] = s_control_ARQOS;
  assign rp_control_ARREGION[3:0] = s_control_ARREGION;
  assign rp_control_AWADDR[31:0] = s_control_AWADDR;
  assign rp_control_AWPROT[2:0] = s_control_AWPROT;
  assign rp_control_AWQOS[3:0] = s_control_AWQOS;
  assign rp_control_AWREGION[3:0] = s_control_AWREGION;
  assign rp_control_WDATA[31:0] = s_control_WDATA;
  assign rp_control_WSTRB[3:0] = s_control_WSTRB;
  assign rp_pr_axi_mem_BID[0] = s_pr_axi_mem_BID;
  assign rp_pr_axi_mem_BRESP[1:0] = s_pr_axi_mem_BRESP;
  assign rp_pr_axi_mem_RDATA[511:0] = s_pr_axi_mem_RDATA;
  assign rp_pr_axi_mem_RID[0] = s_pr_axi_mem_RID;
  assign rp_pr_axi_mem_RLAST = s_pr_axi_mem_RLAST;
  assign rp_pr_axi_mem_RRESP[1:0] = s_pr_axi_mem_RRESP;
  assign rp_stream_out_TDATA[63:0] = s_stream_out_TDATA;
  assign rp_stream_out_TKEEP[7:0] = s_stream_out_TKEEP;
  assign rp_stream_out_TLAST = s_stream_out_TLAST;
  assign s_axi_reg_awready = s_axi_reg_bvalid;
  assign s_axi_reg_bresp[1] = \^s_axi_reg_bresp [1];
  assign s_axi_reg_bresp[0] = \<const0> ;
  assign s_axi_reg_rdata[31] = \<const0> ;
  assign s_axi_reg_rdata[30] = \<const0> ;
  assign s_axi_reg_rdata[29] = \<const0> ;
  assign s_axi_reg_rdata[28] = \<const0> ;
  assign s_axi_reg_rdata[27] = \<const0> ;
  assign s_axi_reg_rdata[26] = \<const0> ;
  assign s_axi_reg_rdata[25] = \<const0> ;
  assign s_axi_reg_rdata[24] = \<const0> ;
  assign s_axi_reg_rdata[23] = \<const0> ;
  assign s_axi_reg_rdata[22] = \<const0> ;
  assign s_axi_reg_rdata[21] = \<const0> ;
  assign s_axi_reg_rdata[20] = \<const0> ;
  assign s_axi_reg_rdata[19] = \<const0> ;
  assign s_axi_reg_rdata[18] = \<const0> ;
  assign s_axi_reg_rdata[17] = \<const0> ;
  assign s_axi_reg_rdata[16] = \<const0> ;
  assign s_axi_reg_rdata[15] = \<const0> ;
  assign s_axi_reg_rdata[14] = \<const0> ;
  assign s_axi_reg_rdata[13] = \<const0> ;
  assign s_axi_reg_rdata[12] = \<const0> ;
  assign s_axi_reg_rdata[11] = \<const0> ;
  assign s_axi_reg_rdata[10] = \<const0> ;
  assign s_axi_reg_rdata[9] = \<const0> ;
  assign s_axi_reg_rdata[8] = \<const0> ;
  assign s_axi_reg_rdata[7] = \<const0> ;
  assign s_axi_reg_rdata[6] = \<const0> ;
  assign s_axi_reg_rdata[5] = \<const0> ;
  assign s_axi_reg_rdata[4] = \<const0> ;
  assign s_axi_reg_rdata[3] = \<const0> ;
  assign s_axi_reg_rdata[2] = \<const0> ;
  assign s_axi_reg_rdata[1] = \<const0> ;
  assign s_axi_reg_rdata[0] = \^s_axi_reg_rdata [0];
  assign s_axi_reg_rresp[1] = \^s_axi_reg_rresp [1];
  assign s_axi_reg_rresp[0] = \<const0> ;
  assign s_axi_reg_wready = s_axi_reg_bvalid;
  assign s_control_BRESP[1:0] = rp_control_BRESP;
  assign s_control_RDATA[31:0] = rp_control_RDATA;
  assign s_control_RRESP[1:0] = rp_control_RRESP;
  assign s_pr_axi_mem_ARADDR[31:0] = rp_pr_axi_mem_ARADDR;
  assign s_pr_axi_mem_ARBURST[1:0] = rp_pr_axi_mem_ARBURST;
  assign s_pr_axi_mem_ARCACHE[3:0] = rp_pr_axi_mem_ARCACHE;
  assign s_pr_axi_mem_ARID[0] = rp_pr_axi_mem_ARID;
  assign s_pr_axi_mem_ARLEN[7:0] = rp_pr_axi_mem_ARLEN;
  assign s_pr_axi_mem_ARLOCK[0] = rp_pr_axi_mem_ARLOCK;
  assign s_pr_axi_mem_ARPROT[2:0] = rp_pr_axi_mem_ARPROT;
  assign s_pr_axi_mem_ARQOS[3:0] = rp_pr_axi_mem_ARQOS;
  assign s_pr_axi_mem_ARREGION[3:0] = rp_pr_axi_mem_ARREGION;
  assign s_pr_axi_mem_ARSIZE[2:0] = rp_pr_axi_mem_ARSIZE;
  assign s_pr_axi_mem_AWADDR[31:0] = rp_pr_axi_mem_AWADDR;
  assign s_pr_axi_mem_AWBURST[1:0] = rp_pr_axi_mem_AWBURST;
  assign s_pr_axi_mem_AWCACHE[3:0] = rp_pr_axi_mem_AWCACHE;
  assign s_pr_axi_mem_AWID[0] = rp_pr_axi_mem_AWID;
  assign s_pr_axi_mem_AWLEN[7:0] = rp_pr_axi_mem_AWLEN;
  assign s_pr_axi_mem_AWLOCK[0] = rp_pr_axi_mem_AWLOCK;
  assign s_pr_axi_mem_AWPROT[2:0] = rp_pr_axi_mem_AWPROT;
  assign s_pr_axi_mem_AWQOS[3:0] = rp_pr_axi_mem_AWQOS;
  assign s_pr_axi_mem_AWREGION[3:0] = rp_pr_axi_mem_AWREGION;
  assign s_pr_axi_mem_AWSIZE[2:0] = rp_pr_axi_mem_AWSIZE;
  assign s_pr_axi_mem_WDATA[511:0] = rp_pr_axi_mem_WDATA;
  assign s_pr_axi_mem_WID[0] = rp_pr_axi_mem_WID;
  assign s_pr_axi_mem_WLAST = rp_pr_axi_mem_WLAST;
  assign s_pr_axi_mem_WSTRB[63:0] = rp_pr_axi_mem_WSTRB;
  assign s_stream_in_TDATA[63:0] = rp_stream_in_TDATA;
  assign s_stream_in_TKEEP[7:0] = rp_stream_in_TKEEP;
  assign s_stream_in_TLAST = rp_stream_in_TLAST;
  GND GND
       (.G(\<const0> ));
  shell_pr_decoupler_0_0_axi_lite_if i_axi_lite_if
       (.aclk(aclk),
        .decouple_status(decouple_status),
        .rp_control_ARREADY(rp_control_ARREADY),
        .rp_control_ARVALID(rp_control_ARVALID),
        .rp_control_AWREADY(rp_control_AWREADY),
        .rp_control_AWVALID(rp_control_AWVALID),
        .rp_control_BREADY(rp_control_BREADY),
        .rp_control_BVALID(rp_control_BVALID),
        .rp_control_RREADY(rp_control_RREADY),
        .rp_control_RVALID(rp_control_RVALID),
        .rp_control_WREADY(rp_control_WREADY),
        .rp_control_WVALID(rp_control_WVALID),
        .rp_pr_axi_mem_ARREADY(rp_pr_axi_mem_ARREADY),
        .rp_pr_axi_mem_ARVALID(rp_pr_axi_mem_ARVALID),
        .rp_pr_axi_mem_AWREADY(rp_pr_axi_mem_AWREADY),
        .rp_pr_axi_mem_AWVALID(rp_pr_axi_mem_AWVALID),
        .rp_pr_axi_mem_BREADY(rp_pr_axi_mem_BREADY),
        .rp_pr_axi_mem_BVALID(rp_pr_axi_mem_BVALID),
        .rp_pr_axi_mem_RREADY(rp_pr_axi_mem_RREADY),
        .rp_pr_axi_mem_RVALID(rp_pr_axi_mem_RVALID),
        .rp_pr_axi_mem_WREADY(rp_pr_axi_mem_WREADY),
        .rp_pr_axi_mem_WVALID(rp_pr_axi_mem_WVALID),
        .rp_stream_in_TREADY(rp_stream_in_TREADY),
        .rp_stream_in_TVALID(rp_stream_in_TVALID),
        .rp_stream_out_TREADY(rp_stream_out_TREADY),
        .rp_stream_out_TVALID(rp_stream_out_TVALID),
        .s_axi_reg_araddr(s_axi_reg_araddr),
        .s_axi_reg_aresetn(s_axi_reg_aresetn),
        .s_axi_reg_arready(s_axi_reg_arready),
        .s_axi_reg_arvalid(s_axi_reg_arvalid),
        .s_axi_reg_awaddr(s_axi_reg_awaddr),
        .s_axi_reg_awvalid(s_axi_reg_awvalid),
        .s_axi_reg_bready(s_axi_reg_bready),
        .s_axi_reg_bresp(\^s_axi_reg_bresp ),
        .s_axi_reg_bvalid(s_axi_reg_bvalid),
        .s_axi_reg_rdata(\^s_axi_reg_rdata ),
        .s_axi_reg_rready(s_axi_reg_rready),
        .s_axi_reg_rresp(\^s_axi_reg_rresp ),
        .s_axi_reg_rvalid(s_axi_reg_rvalid),
        .s_axi_reg_wdata(s_axi_reg_wdata[0]),
        .s_axi_reg_wvalid(s_axi_reg_wvalid),
        .s_control_ARREADY(s_control_ARREADY),
        .s_control_ARVALID(s_control_ARVALID),
        .s_control_AWREADY(s_control_AWREADY),
        .s_control_AWVALID(s_control_AWVALID),
        .s_control_BREADY(s_control_BREADY),
        .s_control_BVALID(s_control_BVALID),
        .s_control_RREADY(s_control_RREADY),
        .s_control_RVALID(s_control_RVALID),
        .s_control_WREADY(s_control_WREADY),
        .s_control_WVALID(s_control_WVALID),
        .s_pr_axi_mem_ARREADY(s_pr_axi_mem_ARREADY),
        .s_pr_axi_mem_ARVALID(s_pr_axi_mem_ARVALID),
        .s_pr_axi_mem_AWREADY(s_pr_axi_mem_AWREADY),
        .s_pr_axi_mem_AWVALID(s_pr_axi_mem_AWVALID),
        .s_pr_axi_mem_BREADY(s_pr_axi_mem_BREADY),
        .s_pr_axi_mem_BVALID(s_pr_axi_mem_BVALID),
        .s_pr_axi_mem_RREADY(s_pr_axi_mem_RREADY),
        .s_pr_axi_mem_RVALID(s_pr_axi_mem_RVALID),
        .s_pr_axi_mem_WREADY(s_pr_axi_mem_WREADY),
        .s_pr_axi_mem_WVALID(s_pr_axi_mem_WVALID),
        .s_stream_in_TREADY(s_stream_in_TREADY),
        .s_stream_in_TVALID(s_stream_in_TVALID),
        .s_stream_out_TREADY(s_stream_out_TREADY),
        .s_stream_out_TVALID(s_stream_out_TVALID));
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
