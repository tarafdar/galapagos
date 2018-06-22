//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Tue Jun 12 20:05:03 2018
//Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target TCP_bridge_wrapper.bd
//Design      : TCP_bridge_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TCP_bridge_wrapper
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
  output [31:0]DDR_araddr;
  output [1:0]DDR_arburst;
  output [3:0]DDR_arcache;
  output [3:0]DDR_arid;
  output [7:0]DDR_arlen;
  output DDR_arlock;
  output [2:0]DDR_arprot;
  output [3:0]DDR_arqos;
  input DDR_arready;
  output [2:0]DDR_arsize;
  output DDR_arvalid;
  output [31:0]DDR_awaddr;
  output [1:0]DDR_awburst;
  output [3:0]DDR_awcache;
  output [3:0]DDR_awid;
  output [7:0]DDR_awlen;
  output DDR_awlock;
  output [2:0]DDR_awprot;
  output [3:0]DDR_awqos;
  input DDR_awready;
  output [2:0]DDR_awsize;
  output DDR_awvalid;
  input [3:0]DDR_bid;
  output DDR_bready;
  input [1:0]DDR_bresp;
  input DDR_bvalid;
  input [63:0]DDR_rdata;
  input [3:0]DDR_rid;
  input DDR_rlast;
  output DDR_rready;
  input [1:0]DDR_rresp;
  input DDR_rvalid;
  output [63:0]DDR_wdata;
  output DDR_wlast;
  input DDR_wready;
  output [7:0]DDR_wstrb;
  output DDR_wvalid;
  output [63:0]Eth_M_tdata;
  output [7:0]Eth_M_tkeep;
  output Eth_M_tlast;
  input Eth_M_tready;
  output Eth_M_tvalid;
  input [63:0]Eth_S_tdata;
  input [7:0]Eth_S_tkeep;
  input Eth_S_tlast;
  output Eth_S_tready;
  input Eth_S_tvalid;
  output [63:0]M_AXIS_0_tdata;
  output [15:0]M_AXIS_0_tdest;
  output [7:0]M_AXIS_0_tkeep;
  output M_AXIS_0_tlast;
  input M_AXIS_0_tready;
  output M_AXIS_0_tvalid;
  input [63:0]S_AXIS_0_tdata;
  input [15:0]S_AXIS_0_tdest;
  input [7:0]S_AXIS_0_tkeep;
  input S_AXIS_0_tlast;
  output S_AXIS_0_tready;
  input S_AXIS_0_tvalid;
  input aclk_0;
  input aresetn_0;
  output [31:0]ip_table_V_PORTA_0_addr;
  output ip_table_V_PORTA_0_clk;
  output [31:0]ip_table_V_PORTA_0_din;
  input [31:0]ip_table_V_PORTA_0_dout;
  output ip_table_V_PORTA_0_en;
  output ip_table_V_PORTA_0_rst;
  output [3:0]ip_table_V_PORTA_0_we;
  output [31:0]ip_table_V_PORTB_0_addr;
  output ip_table_V_PORTB_0_clk;
  output [31:0]ip_table_V_PORTB_0_din;
  input [31:0]ip_table_V_PORTB_0_dout;
  output ip_table_V_PORTB_0_en;
  output ip_table_V_PORTB_0_rst;
  output [3:0]ip_table_V_PORTB_0_we;
  input [31:0]myGateway_0;
  input [31:0]myIpAddress_0;
  input [47:0]myMacAddress_0;
  input [31:0]mySubnet_0;

  wire [31:0]DDR_araddr;
  wire [1:0]DDR_arburst;
  wire [3:0]DDR_arcache;
  wire [3:0]DDR_arid;
  wire [7:0]DDR_arlen;
  wire DDR_arlock;
  wire [2:0]DDR_arprot;
  wire [3:0]DDR_arqos;
  wire DDR_arready;
  wire [2:0]DDR_arsize;
  wire DDR_arvalid;
  wire [31:0]DDR_awaddr;
  wire [1:0]DDR_awburst;
  wire [3:0]DDR_awcache;
  wire [3:0]DDR_awid;
  wire [7:0]DDR_awlen;
  wire DDR_awlock;
  wire [2:0]DDR_awprot;
  wire [3:0]DDR_awqos;
  wire DDR_awready;
  wire [2:0]DDR_awsize;
  wire DDR_awvalid;
  wire [3:0]DDR_bid;
  wire DDR_bready;
  wire [1:0]DDR_bresp;
  wire DDR_bvalid;
  wire [63:0]DDR_rdata;
  wire [3:0]DDR_rid;
  wire DDR_rlast;
  wire DDR_rready;
  wire [1:0]DDR_rresp;
  wire DDR_rvalid;
  wire [63:0]DDR_wdata;
  wire DDR_wlast;
  wire DDR_wready;
  wire [7:0]DDR_wstrb;
  wire DDR_wvalid;
  wire [63:0]Eth_M_tdata;
  wire [7:0]Eth_M_tkeep;
  wire Eth_M_tlast;
  wire Eth_M_tready;
  wire Eth_M_tvalid;
  wire [63:0]Eth_S_tdata;
  wire [7:0]Eth_S_tkeep;
  wire Eth_S_tlast;
  wire Eth_S_tready;
  wire Eth_S_tvalid;
  wire [63:0]M_AXIS_0_tdata;
  wire [15:0]M_AXIS_0_tdest;
  wire [7:0]M_AXIS_0_tkeep;
  wire M_AXIS_0_tlast;
  wire M_AXIS_0_tready;
  wire M_AXIS_0_tvalid;
  wire [63:0]S_AXIS_0_tdata;
  wire [15:0]S_AXIS_0_tdest;
  wire [7:0]S_AXIS_0_tkeep;
  wire S_AXIS_0_tlast;
  wire S_AXIS_0_tready;
  wire S_AXIS_0_tvalid;
  wire aclk_0;
  wire aresetn_0;
  wire [31:0]ip_table_V_PORTA_0_addr;
  wire ip_table_V_PORTA_0_clk;
  wire [31:0]ip_table_V_PORTA_0_din;
  wire [31:0]ip_table_V_PORTA_0_dout;
  wire ip_table_V_PORTA_0_en;
  wire ip_table_V_PORTA_0_rst;
  wire [3:0]ip_table_V_PORTA_0_we;
  wire [31:0]ip_table_V_PORTB_0_addr;
  wire ip_table_V_PORTB_0_clk;
  wire [31:0]ip_table_V_PORTB_0_din;
  wire [31:0]ip_table_V_PORTB_0_dout;
  wire ip_table_V_PORTB_0_en;
  wire ip_table_V_PORTB_0_rst;
  wire [3:0]ip_table_V_PORTB_0_we;
  wire [31:0]myGateway_0;
  wire [31:0]myIpAddress_0;
  wire [47:0]myMacAddress_0;
  wire [31:0]mySubnet_0;

  TCP_bridge TCP_bridge_i
       (.DDR_araddr(DDR_araddr),
        .DDR_arburst(DDR_arburst),
        .DDR_arcache(DDR_arcache),
        .DDR_arid(DDR_arid),
        .DDR_arlen(DDR_arlen),
        .DDR_arlock(DDR_arlock),
        .DDR_arprot(DDR_arprot),
        .DDR_arqos(DDR_arqos),
        .DDR_arready(DDR_arready),
        .DDR_arsize(DDR_arsize),
        .DDR_arvalid(DDR_arvalid),
        .DDR_awaddr(DDR_awaddr),
        .DDR_awburst(DDR_awburst),
        .DDR_awcache(DDR_awcache),
        .DDR_awid(DDR_awid),
        .DDR_awlen(DDR_awlen),
        .DDR_awlock(DDR_awlock),
        .DDR_awprot(DDR_awprot),
        .DDR_awqos(DDR_awqos),
        .DDR_awready(DDR_awready),
        .DDR_awsize(DDR_awsize),
        .DDR_awvalid(DDR_awvalid),
        .DDR_bid(DDR_bid),
        .DDR_bready(DDR_bready),
        .DDR_bresp(DDR_bresp),
        .DDR_bvalid(DDR_bvalid),
        .DDR_rdata(DDR_rdata),
        .DDR_rid(DDR_rid),
        .DDR_rlast(DDR_rlast),
        .DDR_rready(DDR_rready),
        .DDR_rresp(DDR_rresp),
        .DDR_rvalid(DDR_rvalid),
        .DDR_wdata(DDR_wdata),
        .DDR_wlast(DDR_wlast),
        .DDR_wready(DDR_wready),
        .DDR_wstrb(DDR_wstrb),
        .DDR_wvalid(DDR_wvalid),
        .Eth_M_tdata(Eth_M_tdata),
        .Eth_M_tkeep(Eth_M_tkeep),
        .Eth_M_tlast(Eth_M_tlast),
        .Eth_M_tready(Eth_M_tready),
        .Eth_M_tvalid(Eth_M_tvalid),
        .Eth_S_tdata(Eth_S_tdata),
        .Eth_S_tkeep(Eth_S_tkeep),
        .Eth_S_tlast(Eth_S_tlast),
        .Eth_S_tready(Eth_S_tready),
        .Eth_S_tvalid(Eth_S_tvalid),
        .M_AXIS_0_tdata(M_AXIS_0_tdata),
        .M_AXIS_0_tdest(M_AXIS_0_tdest),
        .M_AXIS_0_tkeep(M_AXIS_0_tkeep),
        .M_AXIS_0_tlast(M_AXIS_0_tlast),
        .M_AXIS_0_tready(M_AXIS_0_tready),
        .M_AXIS_0_tvalid(M_AXIS_0_tvalid),
        .S_AXIS_0_tdata(S_AXIS_0_tdata),
        .S_AXIS_0_tdest(S_AXIS_0_tdest),
        .S_AXIS_0_tkeep(S_AXIS_0_tkeep),
        .S_AXIS_0_tlast(S_AXIS_0_tlast),
        .S_AXIS_0_tready(S_AXIS_0_tready),
        .S_AXIS_0_tvalid(S_AXIS_0_tvalid),
        .aclk_0(aclk_0),
        .aresetn_0(aresetn_0),
        .ip_table_V_PORTA_0_addr(ip_table_V_PORTA_0_addr),
        .ip_table_V_PORTA_0_clk(ip_table_V_PORTA_0_clk),
        .ip_table_V_PORTA_0_din(ip_table_V_PORTA_0_din),
        .ip_table_V_PORTA_0_dout(ip_table_V_PORTA_0_dout),
        .ip_table_V_PORTA_0_en(ip_table_V_PORTA_0_en),
        .ip_table_V_PORTA_0_rst(ip_table_V_PORTA_0_rst),
        .ip_table_V_PORTA_0_we(ip_table_V_PORTA_0_we),
        .ip_table_V_PORTB_0_addr(ip_table_V_PORTB_0_addr),
        .ip_table_V_PORTB_0_clk(ip_table_V_PORTB_0_clk),
        .ip_table_V_PORTB_0_din(ip_table_V_PORTB_0_din),
        .ip_table_V_PORTB_0_dout(ip_table_V_PORTB_0_dout),
        .ip_table_V_PORTB_0_en(ip_table_V_PORTB_0_en),
        .ip_table_V_PORTB_0_rst(ip_table_V_PORTB_0_rst),
        .ip_table_V_PORTB_0_we(ip_table_V_PORTB_0_we),
        .myGateway_0(myGateway_0),
        .myIpAddress_0(myIpAddress_0),
        .myMacAddress_0(myMacAddress_0),
        .mySubnet_0(mySubnet_0));
endmodule
