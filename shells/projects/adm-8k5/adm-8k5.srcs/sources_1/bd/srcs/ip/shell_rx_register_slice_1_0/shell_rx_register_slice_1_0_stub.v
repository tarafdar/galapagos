// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue May 15 12:09:02 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rx_register_slice_1_0/shell_rx_register_slice_1_0_stub.v
// Design      : shell_rx_register_slice_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_register_slice_v1_1_16_axis_register_slice,Vivado 2018.1" *)
module shell_rx_register_slice_1_0(aclk, aresetn, s_axis_tvalid, s_axis_tdata, 
  s_axis_tkeep, s_axis_tlast, m_axis_tvalid, m_axis_tdata, m_axis_tkeep, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tdata[63:0],s_axis_tkeep[7:0],s_axis_tlast,m_axis_tvalid,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tlast" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  output m_axis_tvalid;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
endmodule
