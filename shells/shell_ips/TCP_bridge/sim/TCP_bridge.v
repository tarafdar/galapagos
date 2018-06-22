//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Tue Jun 12 20:05:02 2018
//Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target TCP_bridge.bd
//Design      : TCP_bridge
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "TCP_bridge,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TCP_bridge,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_bram_cntlr_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "TCP_bridge.hwdef" *) 
module TCP_bridge
   (DDR_araddr,
    DDR_arburst,
    DDR_arcache,
    DDR_arid,
    DDR_arlen,
    DDR_arlock,
    DDR_arprot,
    DDR_arqos,
    DDR_arready,
    DDR_arsize,
    DDR_arvalid,
    DDR_awaddr,
    DDR_awburst,
    DDR_awcache,
    DDR_awid,
    DDR_awlen,
    DDR_awlock,
    DDR_awprot,
    DDR_awqos,
    DDR_awready,
    DDR_awsize,
    DDR_awvalid,
    DDR_bid,
    DDR_bready,
    DDR_bresp,
    DDR_bvalid,
    DDR_rdata,
    DDR_rid,
    DDR_rlast,
    DDR_rready,
    DDR_rresp,
    DDR_rvalid,
    DDR_wdata,
    DDR_wlast,
    DDR_wready,
    DDR_wstrb,
    DDR_wvalid,
    Eth_M_tdata,
    Eth_M_tkeep,
    Eth_M_tlast,
    Eth_M_tready,
    Eth_M_tvalid,
    Eth_S_tdata,
    Eth_S_tkeep,
    Eth_S_tlast,
    Eth_S_tready,
    Eth_S_tvalid,
    M_AXIS_0_tdata,
    M_AXIS_0_tdest,
    M_AXIS_0_tkeep,
    M_AXIS_0_tlast,
    M_AXIS_0_tready,
    M_AXIS_0_tvalid,
    S_AXIS_0_tdata,
    S_AXIS_0_tdest,
    S_AXIS_0_tkeep,
    S_AXIS_0_tlast,
    S_AXIS_0_tready,
    S_AXIS_0_tvalid,
    aclk_0,
    aresetn_0,
    ip_table_V_PORTA_0_addr,
    ip_table_V_PORTA_0_clk,
    ip_table_V_PORTA_0_din,
    ip_table_V_PORTA_0_dout,
    ip_table_V_PORTA_0_en,
    ip_table_V_PORTA_0_rst,
    ip_table_V_PORTA_0_we,
    ip_table_V_PORTB_0_addr,
    ip_table_V_PORTB_0_clk,
    ip_table_V_PORTB_0_din,
    ip_table_V_PORTB_0_dout,
    ip_table_V_PORTB_0_en,
    ip_table_V_PORTB_0_rst,
    ip_table_V_PORTB_0_we,
    myGateway_0,
    myIpAddress_0,
    myMacAddress_0,
    mySubnet_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN TCP_bridge_aclk_0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]DDR_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARBURST" *) output [1:0]DDR_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARCACHE" *) output [3:0]DDR_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARID" *) output [3:0]DDR_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARLEN" *) output [7:0]DDR_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARLOCK" *) output DDR_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARPROT" *) output [2:0]DDR_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARQOS" *) output [3:0]DDR_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARREADY" *) input DDR_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARSIZE" *) output [2:0]DDR_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR ARVALID" *) output DDR_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWADDR" *) output [31:0]DDR_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWBURST" *) output [1:0]DDR_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWCACHE" *) output [3:0]DDR_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWID" *) output [3:0]DDR_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWLEN" *) output [7:0]DDR_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWLOCK" *) output DDR_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWPROT" *) output [2:0]DDR_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWQOS" *) output [3:0]DDR_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWREADY" *) input DDR_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWSIZE" *) output [2:0]DDR_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR AWVALID" *) output DDR_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR BID" *) input [3:0]DDR_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR BREADY" *) output DDR_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR BRESP" *) input [1:0]DDR_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR BVALID" *) input DDR_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR RDATA" *) input [63:0]DDR_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR RID" *) input [3:0]DDR_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR RLAST" *) input DDR_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR RREADY" *) output DDR_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR RRESP" *) input [1:0]DDR_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR RVALID" *) input DDR_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR WDATA" *) output [63:0]DDR_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR WLAST" *) output DDR_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR WREADY" *) input DDR_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR WSTRB" *) output [7:0]DDR_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DDR WVALID" *) output DDR_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_M TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Eth_M, CLK_DOMAIN TCP_bridge_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]Eth_M_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_M TKEEP" *) output [7:0]Eth_M_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_M TLAST" *) output Eth_M_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_M TREADY" *) input Eth_M_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_M TVALID" *) output Eth_M_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_S TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Eth_S, CLK_DOMAIN TCP_bridge_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]Eth_S_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_S TKEEP" *) input [7:0]Eth_S_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_S TLAST" *) input Eth_S_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_S TREADY" *) output Eth_S_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Eth_S TVALID" *) input Eth_S_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_0, CLK_DOMAIN TCP_bridge_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDEST" *) output [15:0]M_AXIS_0_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TKEEP" *) output [7:0]M_AXIS_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST" *) output M_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY" *) input M_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID" *) output M_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_0, CLK_DOMAIN TCP_bridge_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TDEST" *) input [15:0]S_AXIS_0_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TKEEP" *) input [7:0]S_AXIS_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TLAST" *) input S_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TREADY" *) output S_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TVALID" *) input S_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF Eth_S:S_AXIS_0:M_AXIS_0:DDR:Eth_M, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN TCP_bridge_aclk_0, FREQ_HZ 100000000, PHASE 0.000" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, POLARITY ACTIVE_LOW" *) input aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ip_table_V_PORTA_0, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 1024, MEM_WIDTH 32" *) output [31:0]ip_table_V_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA_0 CLK" *) output ip_table_V_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA_0 DIN" *) output [31:0]ip_table_V_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA_0 DOUT" *) input [31:0]ip_table_V_PORTA_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA_0 EN" *) output ip_table_V_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA_0 RST" *) output ip_table_V_PORTA_0_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTA_0 WE" *) output [3:0]ip_table_V_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ip_table_V_PORTB_0, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 1024, MEM_WIDTH 32" *) output [31:0]ip_table_V_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB_0 CLK" *) output ip_table_V_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB_0 DIN" *) output [31:0]ip_table_V_PORTB_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB_0 DOUT" *) input [31:0]ip_table_V_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB_0 EN" *) output ip_table_V_PORTB_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB_0 RST" *) output ip_table_V_PORTB_0_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ip_table_V_PORTB_0 WE" *) output [3:0]ip_table_V_PORTB_0_we;
  input [31:0]myGateway_0;
  input [31:0]myIpAddress_0;
  input [47:0]myMacAddress_0;
  input [31:0]mySubnet_0;

  wire [63:0]AXI_S_Stream_0_1_TDATA;
  wire [7:0]AXI_S_Stream_0_1_TKEEP;
  wire AXI_S_Stream_0_1_TLAST;
  wire AXI_S_Stream_0_1_TREADY;
  wire AXI_S_Stream_0_1_TVALID;
  wire [63:0]S_AXIS_0_1_TDATA;
  wire [15:0]S_AXIS_0_1_TDEST;
  wire [7:0]S_AXIS_0_1_TKEEP;
  wire S_AXIS_0_1_TLAST;
  wire S_AXIS_0_1_TREADY;
  wire S_AXIS_0_1_TVALID;
  wire [31:0]TCP_output_bridge_0_ip_table_V_PORTA_ADDR;
  wire TCP_output_bridge_0_ip_table_V_PORTA_CLK;
  wire [31:0]TCP_output_bridge_0_ip_table_V_PORTA_DIN;
  wire [31:0]TCP_output_bridge_0_ip_table_V_PORTA_DOUT;
  wire TCP_output_bridge_0_ip_table_V_PORTA_EN;
  wire TCP_output_bridge_0_ip_table_V_PORTA_RST;
  wire [3:0]TCP_output_bridge_0_ip_table_V_PORTA_WE;
  wire [31:0]TCP_output_bridge_0_ip_table_V_PORTB_ADDR;
  wire TCP_output_bridge_0_ip_table_V_PORTB_CLK;
  wire [31:0]TCP_output_bridge_0_ip_table_V_PORTB_DIN;
  wire [31:0]TCP_output_bridge_0_ip_table_V_PORTB_DOUT;
  wire TCP_output_bridge_0_ip_table_V_PORTB_EN;
  wire TCP_output_bridge_0_ip_table_V_PORTB_RST;
  wire [3:0]TCP_output_bridge_0_ip_table_V_PORTB_WE;
  wire [15:0]TCP_output_bridge_0_m_axis_listen_port_TDATA;
  wire TCP_output_bridge_0_m_axis_listen_port_TREADY;
  wire TCP_output_bridge_0_m_axis_listen_port_TVALID;
  wire [47:0]TCP_output_bridge_0_m_axis_open_connection_TDATA;
  wire TCP_output_bridge_0_m_axis_open_connection_TREADY;
  wire TCP_output_bridge_0_m_axis_open_connection_TVALID;
  wire [31:0]TCP_output_bridge_0_m_axis_read_package_TDATA;
  wire TCP_output_bridge_0_m_axis_read_package_TREADY;
  wire TCP_output_bridge_0_m_axis_read_package_TVALID;
  wire [63:0]TCP_output_bridge_0_m_axis_tx_data_TDATA;
  wire [7:0]TCP_output_bridge_0_m_axis_tx_data_TKEEP;
  wire [0:0]TCP_output_bridge_0_m_axis_tx_data_TLAST;
  wire TCP_output_bridge_0_m_axis_tx_data_TREADY;
  wire TCP_output_bridge_0_m_axis_tx_data_TVALID;
  wire [31:0]TCP_output_bridge_0_m_axis_tx_metadata_TDATA;
  wire TCP_output_bridge_0_m_axis_tx_metadata_TREADY;
  wire TCP_output_bridge_0_m_axis_tx_metadata_TVALID;
  wire [63:0]TCP_output_bridge_0_stream_out_V_TDATA;
  wire [15:0]TCP_output_bridge_0_stream_out_V_TDEST;
  wire [7:0]TCP_output_bridge_0_stream_out_V_TKEEP;
  wire [0:0]TCP_output_bridge_0_stream_out_V_TLAST;
  wire TCP_output_bridge_0_stream_out_V_TREADY;
  wire TCP_output_bridge_0_stream_out_V_TVALID;
  wire aclk_0_1;
  wire aresetn_0_1;
  wire [63:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [15:0]axis_data_fifo_0_M_AXIS_TDEST;
  wire [7:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [63:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire [15:0]axis_data_fifo_1_M_AXIS_TDEST;
  wire [7:0]axis_data_fifo_1_M_AXIS_TKEEP;
  wire axis_data_fifo_1_M_AXIS_TLAST;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [31:0]myGateway_0_1;
  wire [31:0]myIpAddress_0_1;
  wire [47:0]myMacAddress_0_1;
  wire [31:0]mySubnet_0_1;
  wire [63:0]tcp_ip_wrapper_0_AXI_M_Stream_TDATA;
  wire [7:0]tcp_ip_wrapper_0_AXI_M_Stream_TKEEP;
  wire tcp_ip_wrapper_0_AXI_M_Stream_TLAST;
  wire tcp_ip_wrapper_0_AXI_M_Stream_TREADY;
  wire tcp_ip_wrapper_0_AXI_M_Stream_TVALID;
  wire [31:0]tcp_ip_wrapper_0_M00_AXI_ARADDR;
  wire [1:0]tcp_ip_wrapper_0_M00_AXI_ARBURST;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_ARCACHE;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_ARID;
  wire [7:0]tcp_ip_wrapper_0_M00_AXI_ARLEN;
  wire tcp_ip_wrapper_0_M00_AXI_ARLOCK;
  wire [2:0]tcp_ip_wrapper_0_M00_AXI_ARPROT;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_ARQOS;
  wire tcp_ip_wrapper_0_M00_AXI_ARREADY;
  wire [2:0]tcp_ip_wrapper_0_M00_AXI_ARSIZE;
  wire tcp_ip_wrapper_0_M00_AXI_ARVALID;
  wire [31:0]tcp_ip_wrapper_0_M00_AXI_AWADDR;
  wire [1:0]tcp_ip_wrapper_0_M00_AXI_AWBURST;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_AWCACHE;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_AWID;
  wire [7:0]tcp_ip_wrapper_0_M00_AXI_AWLEN;
  wire tcp_ip_wrapper_0_M00_AXI_AWLOCK;
  wire [2:0]tcp_ip_wrapper_0_M00_AXI_AWPROT;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_AWQOS;
  wire tcp_ip_wrapper_0_M00_AXI_AWREADY;
  wire [2:0]tcp_ip_wrapper_0_M00_AXI_AWSIZE;
  wire tcp_ip_wrapper_0_M00_AXI_AWVALID;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_BID;
  wire tcp_ip_wrapper_0_M00_AXI_BREADY;
  wire [1:0]tcp_ip_wrapper_0_M00_AXI_BRESP;
  wire tcp_ip_wrapper_0_M00_AXI_BVALID;
  wire [63:0]tcp_ip_wrapper_0_M00_AXI_RDATA;
  wire [3:0]tcp_ip_wrapper_0_M00_AXI_RID;
  wire tcp_ip_wrapper_0_M00_AXI_RLAST;
  wire tcp_ip_wrapper_0_M00_AXI_RREADY;
  wire [1:0]tcp_ip_wrapper_0_M00_AXI_RRESP;
  wire tcp_ip_wrapper_0_M00_AXI_RVALID;
  wire [63:0]tcp_ip_wrapper_0_M00_AXI_WDATA;
  wire tcp_ip_wrapper_0_M00_AXI_WLAST;
  wire tcp_ip_wrapper_0_M00_AXI_WREADY;
  wire [7:0]tcp_ip_wrapper_0_M00_AXI_WSTRB;
  wire tcp_ip_wrapper_0_M00_AXI_WVALID;
  wire [7:0]tcp_ip_wrapper_0_m_axis_listen_port_status_TDATA;
  wire tcp_ip_wrapper_0_m_axis_listen_port_status_TREADY;
  wire tcp_ip_wrapper_0_m_axis_listen_port_status_TVALID;
  wire [87:0]tcp_ip_wrapper_0_m_axis_notifications_TDATA;
  wire tcp_ip_wrapper_0_m_axis_notifications_TREADY;
  wire tcp_ip_wrapper_0_m_axis_notifications_TVALID;
  wire [23:0]tcp_ip_wrapper_0_m_axis_open_status_TDATA;
  wire tcp_ip_wrapper_0_m_axis_open_status_TREADY;
  wire tcp_ip_wrapper_0_m_axis_open_status_TVALID;
  wire [63:0]tcp_ip_wrapper_0_m_axis_rx_data_TDATA;
  wire [7:0]tcp_ip_wrapper_0_m_axis_rx_data_TKEEP;
  wire tcp_ip_wrapper_0_m_axis_rx_data_TLAST;
  wire tcp_ip_wrapper_0_m_axis_rx_data_TREADY;
  wire tcp_ip_wrapper_0_m_axis_rx_data_TVALID;
  wire [15:0]tcp_ip_wrapper_0_m_axis_rx_metadata_TDATA;
  wire tcp_ip_wrapper_0_m_axis_rx_metadata_TREADY;
  wire tcp_ip_wrapper_0_m_axis_rx_metadata_TVALID;
  wire [23:0]tcp_ip_wrapper_0_m_axis_tx_status_TDATA;
  wire tcp_ip_wrapper_0_m_axis_tx_status_TREADY;
  wire tcp_ip_wrapper_0_m_axis_tx_status_TVALID;

  assign AXI_S_Stream_0_1_TDATA = Eth_S_tdata[63:0];
  assign AXI_S_Stream_0_1_TKEEP = Eth_S_tkeep[7:0];
  assign AXI_S_Stream_0_1_TLAST = Eth_S_tlast;
  assign AXI_S_Stream_0_1_TVALID = Eth_S_tvalid;
  assign DDR_araddr[31:0] = tcp_ip_wrapper_0_M00_AXI_ARADDR;
  assign DDR_arburst[1:0] = tcp_ip_wrapper_0_M00_AXI_ARBURST;
  assign DDR_arcache[3:0] = tcp_ip_wrapper_0_M00_AXI_ARCACHE;
  assign DDR_arid[3:0] = tcp_ip_wrapper_0_M00_AXI_ARID;
  assign DDR_arlen[7:0] = tcp_ip_wrapper_0_M00_AXI_ARLEN;
  assign DDR_arlock = tcp_ip_wrapper_0_M00_AXI_ARLOCK;
  assign DDR_arprot[2:0] = tcp_ip_wrapper_0_M00_AXI_ARPROT;
  assign DDR_arqos[3:0] = tcp_ip_wrapper_0_M00_AXI_ARQOS;
  assign DDR_arsize[2:0] = tcp_ip_wrapper_0_M00_AXI_ARSIZE;
  assign DDR_arvalid = tcp_ip_wrapper_0_M00_AXI_ARVALID;
  assign DDR_awaddr[31:0] = tcp_ip_wrapper_0_M00_AXI_AWADDR;
  assign DDR_awburst[1:0] = tcp_ip_wrapper_0_M00_AXI_AWBURST;
  assign DDR_awcache[3:0] = tcp_ip_wrapper_0_M00_AXI_AWCACHE;
  assign DDR_awid[3:0] = tcp_ip_wrapper_0_M00_AXI_AWID;
  assign DDR_awlen[7:0] = tcp_ip_wrapper_0_M00_AXI_AWLEN;
  assign DDR_awlock = tcp_ip_wrapper_0_M00_AXI_AWLOCK;
  assign DDR_awprot[2:0] = tcp_ip_wrapper_0_M00_AXI_AWPROT;
  assign DDR_awqos[3:0] = tcp_ip_wrapper_0_M00_AXI_AWQOS;
  assign DDR_awsize[2:0] = tcp_ip_wrapper_0_M00_AXI_AWSIZE;
  assign DDR_awvalid = tcp_ip_wrapper_0_M00_AXI_AWVALID;
  assign DDR_bready = tcp_ip_wrapper_0_M00_AXI_BREADY;
  assign DDR_rready = tcp_ip_wrapper_0_M00_AXI_RREADY;
  assign DDR_wdata[63:0] = tcp_ip_wrapper_0_M00_AXI_WDATA;
  assign DDR_wlast = tcp_ip_wrapper_0_M00_AXI_WLAST;
  assign DDR_wstrb[7:0] = tcp_ip_wrapper_0_M00_AXI_WSTRB;
  assign DDR_wvalid = tcp_ip_wrapper_0_M00_AXI_WVALID;
  assign Eth_M_tdata[63:0] = tcp_ip_wrapper_0_AXI_M_Stream_TDATA;
  assign Eth_M_tkeep[7:0] = tcp_ip_wrapper_0_AXI_M_Stream_TKEEP;
  assign Eth_M_tlast = tcp_ip_wrapper_0_AXI_M_Stream_TLAST;
  assign Eth_M_tvalid = tcp_ip_wrapper_0_AXI_M_Stream_TVALID;
  assign Eth_S_tready = AXI_S_Stream_0_1_TREADY;
  assign M_AXIS_0_tdata[63:0] = axis_data_fifo_1_M_AXIS_TDATA;
  assign M_AXIS_0_tdest[15:0] = axis_data_fifo_1_M_AXIS_TDEST;
  assign M_AXIS_0_tkeep[7:0] = axis_data_fifo_1_M_AXIS_TKEEP;
  assign M_AXIS_0_tlast = axis_data_fifo_1_M_AXIS_TLAST;
  assign M_AXIS_0_tvalid = axis_data_fifo_1_M_AXIS_TVALID;
  assign S_AXIS_0_1_TDATA = S_AXIS_0_tdata[63:0];
  assign S_AXIS_0_1_TDEST = S_AXIS_0_tdest[15:0];
  assign S_AXIS_0_1_TKEEP = S_AXIS_0_tkeep[7:0];
  assign S_AXIS_0_1_TLAST = S_AXIS_0_tlast;
  assign S_AXIS_0_1_TVALID = S_AXIS_0_tvalid;
  assign S_AXIS_0_tready = S_AXIS_0_1_TREADY;
  assign TCP_output_bridge_0_ip_table_V_PORTA_DOUT = ip_table_V_PORTA_0_dout[31:0];
  assign TCP_output_bridge_0_ip_table_V_PORTB_DOUT = ip_table_V_PORTB_0_dout[31:0];
  assign aclk_0_1 = aclk_0;
  assign aresetn_0_1 = aresetn_0;
  assign axis_data_fifo_1_M_AXIS_TREADY = M_AXIS_0_tready;
  assign ip_table_V_PORTA_0_addr[31:0] = TCP_output_bridge_0_ip_table_V_PORTA_ADDR;
  assign ip_table_V_PORTA_0_clk = TCP_output_bridge_0_ip_table_V_PORTA_CLK;
  assign ip_table_V_PORTA_0_din[31:0] = TCP_output_bridge_0_ip_table_V_PORTA_DIN;
  assign ip_table_V_PORTA_0_en = TCP_output_bridge_0_ip_table_V_PORTA_EN;
  assign ip_table_V_PORTA_0_rst = TCP_output_bridge_0_ip_table_V_PORTA_RST;
  assign ip_table_V_PORTA_0_we[3:0] = TCP_output_bridge_0_ip_table_V_PORTA_WE;
  assign ip_table_V_PORTB_0_addr[31:0] = TCP_output_bridge_0_ip_table_V_PORTB_ADDR;
  assign ip_table_V_PORTB_0_clk = TCP_output_bridge_0_ip_table_V_PORTB_CLK;
  assign ip_table_V_PORTB_0_din[31:0] = TCP_output_bridge_0_ip_table_V_PORTB_DIN;
  assign ip_table_V_PORTB_0_en = TCP_output_bridge_0_ip_table_V_PORTB_EN;
  assign ip_table_V_PORTB_0_rst = TCP_output_bridge_0_ip_table_V_PORTB_RST;
  assign ip_table_V_PORTB_0_we[3:0] = TCP_output_bridge_0_ip_table_V_PORTB_WE;
  assign myGateway_0_1 = myGateway_0[31:0];
  assign myIpAddress_0_1 = myIpAddress_0[31:0];
  assign myMacAddress_0_1 = myMacAddress_0[47:0];
  assign mySubnet_0_1 = mySubnet_0[31:0];
  assign tcp_ip_wrapper_0_AXI_M_Stream_TREADY = Eth_M_tready;
  assign tcp_ip_wrapper_0_M00_AXI_ARREADY = DDR_arready;
  assign tcp_ip_wrapper_0_M00_AXI_AWREADY = DDR_awready;
  assign tcp_ip_wrapper_0_M00_AXI_BID = DDR_bid[3:0];
  assign tcp_ip_wrapper_0_M00_AXI_BRESP = DDR_bresp[1:0];
  assign tcp_ip_wrapper_0_M00_AXI_BVALID = DDR_bvalid;
  assign tcp_ip_wrapper_0_M00_AXI_RDATA = DDR_rdata[63:0];
  assign tcp_ip_wrapper_0_M00_AXI_RID = DDR_rid[3:0];
  assign tcp_ip_wrapper_0_M00_AXI_RLAST = DDR_rlast;
  assign tcp_ip_wrapper_0_M00_AXI_RRESP = DDR_rresp[1:0];
  assign tcp_ip_wrapper_0_M00_AXI_RVALID = DDR_rvalid;
  assign tcp_ip_wrapper_0_M00_AXI_WREADY = DDR_wready;
  TCP_bridge_TCP_output_bridge_0_0 TCP_output_bridge_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .ip_table_V_Addr_A(TCP_output_bridge_0_ip_table_V_PORTA_ADDR),
        .ip_table_V_Addr_B(TCP_output_bridge_0_ip_table_V_PORTB_ADDR),
        .ip_table_V_Clk_A(TCP_output_bridge_0_ip_table_V_PORTA_CLK),
        .ip_table_V_Clk_B(TCP_output_bridge_0_ip_table_V_PORTB_CLK),
        .ip_table_V_Din_A(TCP_output_bridge_0_ip_table_V_PORTA_DOUT),
        .ip_table_V_Din_B(TCP_output_bridge_0_ip_table_V_PORTB_DOUT),
        .ip_table_V_Dout_A(TCP_output_bridge_0_ip_table_V_PORTA_DIN),
        .ip_table_V_Dout_B(TCP_output_bridge_0_ip_table_V_PORTB_DIN),
        .ip_table_V_EN_A(TCP_output_bridge_0_ip_table_V_PORTA_EN),
        .ip_table_V_EN_B(TCP_output_bridge_0_ip_table_V_PORTB_EN),
        .ip_table_V_Rst_A(TCP_output_bridge_0_ip_table_V_PORTA_RST),
        .ip_table_V_Rst_B(TCP_output_bridge_0_ip_table_V_PORTB_RST),
        .ip_table_V_WEN_A(TCP_output_bridge_0_ip_table_V_PORTA_WE),
        .ip_table_V_WEN_B(TCP_output_bridge_0_ip_table_V_PORTB_WE),
        .m_axis_listen_port_TDATA(TCP_output_bridge_0_m_axis_listen_port_TDATA),
        .m_axis_listen_port_TREADY(TCP_output_bridge_0_m_axis_listen_port_TREADY),
        .m_axis_listen_port_TVALID(TCP_output_bridge_0_m_axis_listen_port_TVALID),
        .m_axis_open_connection_TDATA(TCP_output_bridge_0_m_axis_open_connection_TDATA),
        .m_axis_open_connection_TREADY(TCP_output_bridge_0_m_axis_open_connection_TREADY),
        .m_axis_open_connection_TVALID(TCP_output_bridge_0_m_axis_open_connection_TVALID),
        .m_axis_read_package_TDATA(TCP_output_bridge_0_m_axis_read_package_TDATA),
        .m_axis_read_package_TREADY(TCP_output_bridge_0_m_axis_read_package_TREADY),
        .m_axis_read_package_TVALID(TCP_output_bridge_0_m_axis_read_package_TVALID),
        .m_axis_tx_data_TDATA(TCP_output_bridge_0_m_axis_tx_data_TDATA),
        .m_axis_tx_data_TKEEP(TCP_output_bridge_0_m_axis_tx_data_TKEEP),
        .m_axis_tx_data_TLAST(TCP_output_bridge_0_m_axis_tx_data_TLAST),
        .m_axis_tx_data_TREADY(TCP_output_bridge_0_m_axis_tx_data_TREADY),
        .m_axis_tx_data_TVALID(TCP_output_bridge_0_m_axis_tx_data_TVALID),
        .m_axis_tx_metadata_TDATA(TCP_output_bridge_0_m_axis_tx_metadata_TDATA),
        .m_axis_tx_metadata_TREADY(TCP_output_bridge_0_m_axis_tx_metadata_TREADY),
        .m_axis_tx_metadata_TVALID(TCP_output_bridge_0_m_axis_tx_metadata_TVALID),
        .s_axis_listen_port_status_TDATA(tcp_ip_wrapper_0_m_axis_listen_port_status_TDATA),
        .s_axis_listen_port_status_TREADY(tcp_ip_wrapper_0_m_axis_listen_port_status_TREADY),
        .s_axis_listen_port_status_TVALID(tcp_ip_wrapper_0_m_axis_listen_port_status_TVALID),
        .s_axis_notifications_TDATA(tcp_ip_wrapper_0_m_axis_notifications_TDATA),
        .s_axis_notifications_TREADY(tcp_ip_wrapper_0_m_axis_notifications_TREADY),
        .s_axis_notifications_TVALID(tcp_ip_wrapper_0_m_axis_notifications_TVALID),
        .s_axis_open_status_TDATA(tcp_ip_wrapper_0_m_axis_open_status_TDATA),
        .s_axis_open_status_TREADY(tcp_ip_wrapper_0_m_axis_open_status_TREADY),
        .s_axis_open_status_TVALID(tcp_ip_wrapper_0_m_axis_open_status_TVALID),
        .s_axis_rx_data_TDATA(tcp_ip_wrapper_0_m_axis_rx_data_TDATA),
        .s_axis_rx_data_TKEEP(tcp_ip_wrapper_0_m_axis_rx_data_TKEEP),
        .s_axis_rx_data_TLAST(tcp_ip_wrapper_0_m_axis_rx_data_TLAST),
        .s_axis_rx_data_TREADY(tcp_ip_wrapper_0_m_axis_rx_data_TREADY),
        .s_axis_rx_data_TVALID(tcp_ip_wrapper_0_m_axis_rx_data_TVALID),
        .s_axis_rx_metadata_TDATA(tcp_ip_wrapper_0_m_axis_rx_metadata_TDATA),
        .s_axis_rx_metadata_TREADY(tcp_ip_wrapper_0_m_axis_rx_metadata_TREADY),
        .s_axis_rx_metadata_TVALID(tcp_ip_wrapper_0_m_axis_rx_metadata_TVALID),
        .s_axis_tx_status_TDATA(tcp_ip_wrapper_0_m_axis_tx_status_TDATA),
        .s_axis_tx_status_TREADY(tcp_ip_wrapper_0_m_axis_tx_status_TREADY),
        .s_axis_tx_status_TVALID(tcp_ip_wrapper_0_m_axis_tx_status_TVALID),
        .stream_in_V_TDATA(axis_data_fifo_0_M_AXIS_TDATA),
        .stream_in_V_TDEST(axis_data_fifo_0_M_AXIS_TDEST),
        .stream_in_V_TKEEP(axis_data_fifo_0_M_AXIS_TKEEP),
        .stream_in_V_TLAST(axis_data_fifo_0_M_AXIS_TLAST),
        .stream_in_V_TREADY(axis_data_fifo_0_M_AXIS_TREADY),
        .stream_in_V_TVALID(axis_data_fifo_0_M_AXIS_TVALID),
        .stream_out_V_TDATA(TCP_output_bridge_0_stream_out_V_TDATA),
        .stream_out_V_TDEST(TCP_output_bridge_0_stream_out_V_TDEST),
        .stream_out_V_TKEEP(TCP_output_bridge_0_stream_out_V_TKEEP),
        .stream_out_V_TLAST(TCP_output_bridge_0_stream_out_V_TLAST),
        .stream_out_V_TREADY(TCP_output_bridge_0_stream_out_V_TREADY),
        .stream_out_V_TVALID(TCP_output_bridge_0_stream_out_V_TVALID));
  TCP_bridge_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tdest(axis_data_fifo_0_M_AXIS_TDEST),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(aclk_0_1),
        .s_axis_aresetn(aresetn_0_1),
        .s_axis_tdata(S_AXIS_0_1_TDATA),
        .s_axis_tdest(S_AXIS_0_1_TDEST),
        .s_axis_tkeep(S_AXIS_0_1_TKEEP),
        .s_axis_tlast(S_AXIS_0_1_TLAST),
        .s_axis_tready(S_AXIS_0_1_TREADY),
        .s_axis_tvalid(S_AXIS_0_1_TVALID));
  TCP_bridge_axis_data_fifo_0_3 axis_data_fifo_1
       (.m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tdest(axis_data_fifo_1_M_AXIS_TDEST),
        .m_axis_tkeep(axis_data_fifo_1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(aclk_0_1),
        .s_axis_aresetn(aresetn_0_1),
        .s_axis_tdata(TCP_output_bridge_0_stream_out_V_TDATA),
        .s_axis_tdest(TCP_output_bridge_0_stream_out_V_TDEST),
        .s_axis_tkeep(TCP_output_bridge_0_stream_out_V_TKEEP),
        .s_axis_tlast(TCP_output_bridge_0_stream_out_V_TLAST),
        .s_axis_tready(TCP_output_bridge_0_stream_out_V_TREADY),
        .s_axis_tvalid(TCP_output_bridge_0_stream_out_V_TVALID));
  TCP_bridge_tcp_ip_wrapper_0_0 tcp_ip_wrapper_0
       (.AXI_M_Stream_TDATA(tcp_ip_wrapper_0_AXI_M_Stream_TDATA),
        .AXI_M_Stream_TKEEP(tcp_ip_wrapper_0_AXI_M_Stream_TKEEP),
        .AXI_M_Stream_TLAST(tcp_ip_wrapper_0_AXI_M_Stream_TLAST),
        .AXI_M_Stream_TREADY(tcp_ip_wrapper_0_AXI_M_Stream_TREADY),
        .AXI_M_Stream_TVALID(tcp_ip_wrapper_0_AXI_M_Stream_TVALID),
        .AXI_S_Stream_TDATA(AXI_S_Stream_0_1_TDATA),
        .AXI_S_Stream_TKEEP(AXI_S_Stream_0_1_TKEEP),
        .AXI_S_Stream_TLAST(AXI_S_Stream_0_1_TLAST),
        .AXI_S_Stream_TREADY(AXI_S_Stream_0_1_TREADY),
        .AXI_S_Stream_TVALID(AXI_S_Stream_0_1_TVALID),
        .M00_AXI_ARADDR(tcp_ip_wrapper_0_M00_AXI_ARADDR),
        .M00_AXI_ARBURST(tcp_ip_wrapper_0_M00_AXI_ARBURST),
        .M00_AXI_ARCACHE(tcp_ip_wrapper_0_M00_AXI_ARCACHE),
        .M00_AXI_ARID(tcp_ip_wrapper_0_M00_AXI_ARID),
        .M00_AXI_ARLEN(tcp_ip_wrapper_0_M00_AXI_ARLEN),
        .M00_AXI_ARLOCK(tcp_ip_wrapper_0_M00_AXI_ARLOCK),
        .M00_AXI_ARPROT(tcp_ip_wrapper_0_M00_AXI_ARPROT),
        .M00_AXI_ARQOS(tcp_ip_wrapper_0_M00_AXI_ARQOS),
        .M00_AXI_ARREADY(tcp_ip_wrapper_0_M00_AXI_ARREADY),
        .M00_AXI_ARSIZE(tcp_ip_wrapper_0_M00_AXI_ARSIZE),
        .M00_AXI_ARVALID(tcp_ip_wrapper_0_M00_AXI_ARVALID),
        .M00_AXI_AWADDR(tcp_ip_wrapper_0_M00_AXI_AWADDR),
        .M00_AXI_AWBURST(tcp_ip_wrapper_0_M00_AXI_AWBURST),
        .M00_AXI_AWCACHE(tcp_ip_wrapper_0_M00_AXI_AWCACHE),
        .M00_AXI_AWID(tcp_ip_wrapper_0_M00_AXI_AWID),
        .M00_AXI_AWLEN(tcp_ip_wrapper_0_M00_AXI_AWLEN),
        .M00_AXI_AWLOCK(tcp_ip_wrapper_0_M00_AXI_AWLOCK),
        .M00_AXI_AWPROT(tcp_ip_wrapper_0_M00_AXI_AWPROT),
        .M00_AXI_AWQOS(tcp_ip_wrapper_0_M00_AXI_AWQOS),
        .M00_AXI_AWREADY(tcp_ip_wrapper_0_M00_AXI_AWREADY),
        .M00_AXI_AWSIZE(tcp_ip_wrapper_0_M00_AXI_AWSIZE),
        .M00_AXI_AWVALID(tcp_ip_wrapper_0_M00_AXI_AWVALID),
        .M00_AXI_BID(tcp_ip_wrapper_0_M00_AXI_BID),
        .M00_AXI_BREADY(tcp_ip_wrapper_0_M00_AXI_BREADY),
        .M00_AXI_BRESP(tcp_ip_wrapper_0_M00_AXI_BRESP),
        .M00_AXI_BVALID(tcp_ip_wrapper_0_M00_AXI_BVALID),
        .M00_AXI_RDATA(tcp_ip_wrapper_0_M00_AXI_RDATA),
        .M00_AXI_RID(tcp_ip_wrapper_0_M00_AXI_RID),
        .M00_AXI_RLAST(tcp_ip_wrapper_0_M00_AXI_RLAST),
        .M00_AXI_RREADY(tcp_ip_wrapper_0_M00_AXI_RREADY),
        .M00_AXI_RRESP(tcp_ip_wrapper_0_M00_AXI_RRESP),
        .M00_AXI_RVALID(tcp_ip_wrapper_0_M00_AXI_RVALID),
        .M00_AXI_WDATA(tcp_ip_wrapper_0_M00_AXI_WDATA),
        .M00_AXI_WLAST(tcp_ip_wrapper_0_M00_AXI_WLAST),
        .M00_AXI_WREADY(tcp_ip_wrapper_0_M00_AXI_WREADY),
        .M00_AXI_WSTRB(tcp_ip_wrapper_0_M00_AXI_WSTRB),
        .M00_AXI_WVALID(tcp_ip_wrapper_0_M00_AXI_WVALID),
        .aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_listen_port_status_TDATA(tcp_ip_wrapper_0_m_axis_listen_port_status_TDATA),
        .m_axis_listen_port_status_TREADY(tcp_ip_wrapper_0_m_axis_listen_port_status_TREADY),
        .m_axis_listen_port_status_TVALID(tcp_ip_wrapper_0_m_axis_listen_port_status_TVALID),
        .m_axis_notifications_TDATA(tcp_ip_wrapper_0_m_axis_notifications_TDATA),
        .m_axis_notifications_TREADY(tcp_ip_wrapper_0_m_axis_notifications_TREADY),
        .m_axis_notifications_TVALID(tcp_ip_wrapper_0_m_axis_notifications_TVALID),
        .m_axis_open_status_TDATA(tcp_ip_wrapper_0_m_axis_open_status_TDATA),
        .m_axis_open_status_TREADY(tcp_ip_wrapper_0_m_axis_open_status_TREADY),
        .m_axis_open_status_TVALID(tcp_ip_wrapper_0_m_axis_open_status_TVALID),
        .m_axis_rx_data_TDATA(tcp_ip_wrapper_0_m_axis_rx_data_TDATA),
        .m_axis_rx_data_TKEEP(tcp_ip_wrapper_0_m_axis_rx_data_TKEEP),
        .m_axis_rx_data_TLAST(tcp_ip_wrapper_0_m_axis_rx_data_TLAST),
        .m_axis_rx_data_TREADY(tcp_ip_wrapper_0_m_axis_rx_data_TREADY),
        .m_axis_rx_data_TVALID(tcp_ip_wrapper_0_m_axis_rx_data_TVALID),
        .m_axis_rx_metadata_TDATA(tcp_ip_wrapper_0_m_axis_rx_metadata_TDATA),
        .m_axis_rx_metadata_TREADY(tcp_ip_wrapper_0_m_axis_rx_metadata_TREADY),
        .m_axis_rx_metadata_TVALID(tcp_ip_wrapper_0_m_axis_rx_metadata_TVALID),
        .m_axis_tx_status_TDATA(tcp_ip_wrapper_0_m_axis_tx_status_TDATA),
        .m_axis_tx_status_TREADY(tcp_ip_wrapper_0_m_axis_tx_status_TREADY),
        .m_axis_tx_status_TVALID(tcp_ip_wrapper_0_m_axis_tx_status_TVALID),
        .myGateway(myGateway_0_1),
        .myIpAddress(myIpAddress_0_1),
        .myMacAddress(myMacAddress_0_1),
        .mySubnet(mySubnet_0_1),
        .s_axis_close_connection_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_close_connection_TVALID(1'b0),
        .s_axis_listen_port_TDATA(TCP_output_bridge_0_m_axis_listen_port_TDATA),
        .s_axis_listen_port_TREADY(TCP_output_bridge_0_m_axis_listen_port_TREADY),
        .s_axis_listen_port_TVALID(TCP_output_bridge_0_m_axis_listen_port_TVALID),
        .s_axis_open_connection_TDATA(TCP_output_bridge_0_m_axis_open_connection_TDATA),
        .s_axis_open_connection_TREADY(TCP_output_bridge_0_m_axis_open_connection_TREADY),
        .s_axis_open_connection_TVALID(TCP_output_bridge_0_m_axis_open_connection_TVALID),
        .s_axis_read_package_TDATA(TCP_output_bridge_0_m_axis_read_package_TDATA),
        .s_axis_read_package_TREADY(TCP_output_bridge_0_m_axis_read_package_TREADY),
        .s_axis_read_package_TVALID(TCP_output_bridge_0_m_axis_read_package_TVALID),
        .s_axis_tx_data_TDATA(TCP_output_bridge_0_m_axis_tx_data_TDATA),
        .s_axis_tx_data_TKEEP(TCP_output_bridge_0_m_axis_tx_data_TKEEP),
        .s_axis_tx_data_TLAST(TCP_output_bridge_0_m_axis_tx_data_TLAST),
        .s_axis_tx_data_TREADY(TCP_output_bridge_0_m_axis_tx_data_TREADY),
        .s_axis_tx_data_TVALID(TCP_output_bridge_0_m_axis_tx_data_TVALID),
        .s_axis_tx_metadata_TDATA(TCP_output_bridge_0_m_axis_tx_metadata_TDATA),
        .s_axis_tx_metadata_TREADY(TCP_output_bridge_0_m_axis_tx_metadata_TREADY),
        .s_axis_tx_metadata_TVALID(TCP_output_bridge_0_m_axis_tx_metadata_TVALID));
endmodule
