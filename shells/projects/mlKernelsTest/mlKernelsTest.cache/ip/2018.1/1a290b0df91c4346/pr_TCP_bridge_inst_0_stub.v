// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 12 17:49:46 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_TCP_bridge_inst_0_stub.v
// Design      : pr_TCP_bridge_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "TCP_bridge,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(DDR_araddr, DDR_arburst, DDR_arcache, DDR_arid, 
  DDR_arlen, DDR_arlock, DDR_arprot, DDR_arqos, DDR_arready, DDR_arsize, DDR_arvalid, DDR_awaddr, 
  DDR_awburst, DDR_awcache, DDR_awid, DDR_awlen, DDR_awlock, DDR_awprot, DDR_awqos, DDR_awready, 
  DDR_awsize, DDR_awvalid, DDR_bid, DDR_bready, DDR_bresp, DDR_bvalid, DDR_rdata, DDR_rid, 
  DDR_rlast, DDR_rready, DDR_rresp, DDR_rvalid, DDR_wdata, DDR_wlast, DDR_wready, DDR_wstrb, 
  DDR_wvalid, Eth_M_tdata, Eth_M_tkeep, Eth_M_tlast, Eth_M_tready, Eth_M_tvalid, Eth_S_tdata, 
  Eth_S_tkeep, Eth_S_tlast, Eth_S_tready, Eth_S_tvalid, M_AXIS_0_tdata, M_AXIS_0_tdest, 
  M_AXIS_0_tkeep, M_AXIS_0_tlast, M_AXIS_0_tready, M_AXIS_0_tvalid, S_AXIS_0_tdata, 
  S_AXIS_0_tdest, S_AXIS_0_tkeep, S_AXIS_0_tlast, S_AXIS_0_tready, S_AXIS_0_tvalid, aclk_0, 
  aresetn_0, ip_table_V_PORTA_0_addr, ip_table_V_PORTA_0_clk, ip_table_V_PORTA_0_din, 
  ip_table_V_PORTA_0_dout, ip_table_V_PORTA_0_en, ip_table_V_PORTA_0_rst, 
  ip_table_V_PORTA_0_we, ip_table_V_PORTB_0_addr, ip_table_V_PORTB_0_clk, 
  ip_table_V_PORTB_0_din, ip_table_V_PORTB_0_dout, ip_table_V_PORTB_0_en, 
  ip_table_V_PORTB_0_rst, ip_table_V_PORTB_0_we, myGateway_0, myIpAddress_0, 
  myMacAddress_0, mySubnet_0)
/* synthesis syn_black_box black_box_pad_pin="DDR_araddr[31:0],DDR_arburst[1:0],DDR_arcache[3:0],DDR_arid[3:0],DDR_arlen[7:0],DDR_arlock,DDR_arprot[2:0],DDR_arqos[3:0],DDR_arready,DDR_arsize[2:0],DDR_arvalid,DDR_awaddr[31:0],DDR_awburst[1:0],DDR_awcache[3:0],DDR_awid[3:0],DDR_awlen[7:0],DDR_awlock,DDR_awprot[2:0],DDR_awqos[3:0],DDR_awready,DDR_awsize[2:0],DDR_awvalid,DDR_bid[3:0],DDR_bready,DDR_bresp[1:0],DDR_bvalid,DDR_rdata[63:0],DDR_rid[3:0],DDR_rlast,DDR_rready,DDR_rresp[1:0],DDR_rvalid,DDR_wdata[63:0],DDR_wlast,DDR_wready,DDR_wstrb[7:0],DDR_wvalid,Eth_M_tdata[63:0],Eth_M_tkeep[7:0],Eth_M_tlast,Eth_M_tready,Eth_M_tvalid,Eth_S_tdata[63:0],Eth_S_tkeep[7:0],Eth_S_tlast,Eth_S_tready,Eth_S_tvalid,M_AXIS_0_tdata[63:0],M_AXIS_0_tdest[15:0],M_AXIS_0_tkeep[7:0],M_AXIS_0_tlast,M_AXIS_0_tready,M_AXIS_0_tvalid,S_AXIS_0_tdata[63:0],S_AXIS_0_tdest[15:0],S_AXIS_0_tkeep[7:0],S_AXIS_0_tlast,S_AXIS_0_tready,S_AXIS_0_tvalid,aclk_0,aresetn_0,ip_table_V_PORTA_0_addr[31:0],ip_table_V_PORTA_0_clk,ip_table_V_PORTA_0_din[31:0],ip_table_V_PORTA_0_dout[31:0],ip_table_V_PORTA_0_en,ip_table_V_PORTA_0_rst,ip_table_V_PORTA_0_we[3:0],ip_table_V_PORTB_0_addr[31:0],ip_table_V_PORTB_0_clk,ip_table_V_PORTB_0_din[31:0],ip_table_V_PORTB_0_dout[31:0],ip_table_V_PORTB_0_en,ip_table_V_PORTB_0_rst,ip_table_V_PORTB_0_we[3:0],myGateway_0[31:0],myIpAddress_0[31:0],myMacAddress_0[47:0],mySubnet_0[31:0]" */;
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
endmodule
