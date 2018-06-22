// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Jun 18 18:13:19 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_network_bridge_inst_0_stub.v
// Design      : pr_network_bridge_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ethernet_bridge_top,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(mac_addr_V, mac_table_V_Clk_A, 
  mac_table_V_Rst_A, mac_table_V_EN_A, mac_table_V_WEN_A, mac_table_V_Addr_A, 
  mac_table_V_Dout_A, mac_table_V_Din_A, mac_table_V_Clk_B, mac_table_V_Rst_B, 
  mac_table_V_EN_B, mac_table_V_WEN_B, mac_table_V_Addr_B, mac_table_V_Dout_B, 
  mac_table_V_Din_B, from_app_V_TVALID, from_app_V_TREADY, from_app_V_TDATA, 
  from_app_V_TLAST, from_app_V_TDEST, from_app_V_TKEEP, from_eth_V_TVALID, 
  from_eth_V_TREADY, from_eth_V_TDATA, from_eth_V_TLAST, from_eth_V_TKEEP, to_app_V_TVALID, 
  to_app_V_TREADY, to_app_V_TDATA, to_app_V_TLAST, to_app_V_TDEST, to_app_V_TKEEP, 
  to_eth_V_TVALID, to_eth_V_TREADY, to_eth_V_TDATA, to_eth_V_TLAST, to_eth_V_TKEEP, aclk, 
  aresetn)
/* synthesis syn_black_box black_box_pad_pin="mac_addr_V[47:0],mac_table_V_Clk_A,mac_table_V_Rst_A,mac_table_V_EN_A,mac_table_V_WEN_A[7:0],mac_table_V_Addr_A[31:0],mac_table_V_Dout_A[63:0],mac_table_V_Din_A[63:0],mac_table_V_Clk_B,mac_table_V_Rst_B,mac_table_V_EN_B,mac_table_V_WEN_B[7:0],mac_table_V_Addr_B[31:0],mac_table_V_Dout_B[63:0],mac_table_V_Din_B[63:0],from_app_V_TVALID,from_app_V_TREADY,from_app_V_TDATA[63:0],from_app_V_TLAST[0:0],from_app_V_TDEST[7:0],from_app_V_TKEEP[7:0],from_eth_V_TVALID,from_eth_V_TREADY,from_eth_V_TDATA[63:0],from_eth_V_TLAST[0:0],from_eth_V_TKEEP[7:0],to_app_V_TVALID,to_app_V_TREADY,to_app_V_TDATA[63:0],to_app_V_TLAST[0:0],to_app_V_TDEST[7:0],to_app_V_TKEEP[7:0],to_eth_V_TVALID,to_eth_V_TREADY,to_eth_V_TDATA[63:0],to_eth_V_TLAST[0:0],to_eth_V_TKEEP[7:0],aclk,aresetn" */;
  input [47:0]mac_addr_V;
  output mac_table_V_Clk_A;
  output mac_table_V_Rst_A;
  output mac_table_V_EN_A;
  output [7:0]mac_table_V_WEN_A;
  output [31:0]mac_table_V_Addr_A;
  output [63:0]mac_table_V_Dout_A;
  input [63:0]mac_table_V_Din_A;
  output mac_table_V_Clk_B;
  output mac_table_V_Rst_B;
  output mac_table_V_EN_B;
  output [7:0]mac_table_V_WEN_B;
  output [31:0]mac_table_V_Addr_B;
  output [63:0]mac_table_V_Dout_B;
  input [63:0]mac_table_V_Din_B;
  input from_app_V_TVALID;
  output from_app_V_TREADY;
  input [63:0]from_app_V_TDATA;
  input [0:0]from_app_V_TLAST;
  input [7:0]from_app_V_TDEST;
  input [7:0]from_app_V_TKEEP;
  input from_eth_V_TVALID;
  output from_eth_V_TREADY;
  input [63:0]from_eth_V_TDATA;
  input [0:0]from_eth_V_TLAST;
  input [7:0]from_eth_V_TKEEP;
  output to_app_V_TVALID;
  input to_app_V_TREADY;
  output [63:0]to_app_V_TDATA;
  output [0:0]to_app_V_TLAST;
  output [7:0]to_app_V_TDEST;
  output [7:0]to_app_V_TKEEP;
  output to_eth_V_TVALID;
  input to_eth_V_TREADY;
  output [63:0]to_eth_V_TDATA;
  output [0:0]to_eth_V_TLAST;
  output [7:0]to_eth_V_TKEEP;
  input aclk;
  input aresetn;
endmodule
