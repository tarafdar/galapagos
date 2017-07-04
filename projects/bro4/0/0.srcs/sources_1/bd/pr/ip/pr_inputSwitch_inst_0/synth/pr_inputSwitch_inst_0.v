// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axis_switch:1.1
// IP Revision: 11

(* X_CORE_INFO = "axis_switch_v1_1_11_axis_switch,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "pr_inputSwitch_inst_0,axis_switch_v1_1_11_axis_switch,{}" *)
(* CORE_GENERATION_INFO = "pr_inputSwitch_inst_0,axis_switch_v1_1_11_axis_switch,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_switch,x_ipVersion=1.1,x_ipCoreRevision=11,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=kintexu,C_NUM_SI_SLOTS=8,C_LOG_SI_SLOTS=3,C_NUM_MI_SLOTS=6,C_AXIS_TDATA_WIDTH=64,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=8,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000000000000000000000001011011,C_ARB_ON_MAX_XFERS=1,C_ARB_ON_NUM_CYCLES=0,C_ARB_ON_TLAST=0,C_INCLUDE_ARBITER=\
1,C_ARB_ALGORITHM=0,C_OUTPUT_REG=0,C_DECODER_REG=1,C_M_AXIS_CONNECTIVITY_ARRAY=0b111111111111111111111111111111111111111111111111,C_M_AXIS_BASETDEST_ARRAY=0b000011110000011000000101000001000000001000000001,C_M_AXIS_HIGHTDEST_ARRAY=0b000011110000011000000101000001000000001000000001,C_ROUTING_MODE=0,C_S_AXI_CTRL_ADDR_WIDTH=7,C_S_AXI_CTRL_DATA_WIDTH=32,C_COMMON_CLOCK=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module pr_inputSwitch_inst_0 (
  aclk,
  aresetn,
  s_axis_tvalid,
  s_axis_tready,
  s_axis_tdata,
  s_axis_tkeep,
  s_axis_tlast,
  s_axis_tdest,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_tdata,
  m_axis_tkeep,
  m_axis_tlast,
  m_axis_tdest,
  s_decode_err
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TVALID [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TVALID [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TVALID [0:0] [7:7]" *)
input wire [7 : 0] s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TREADY [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TREADY [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TREADY [0:0] [7:7]" *)
output wire [7 : 0] s_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [63:0] [63:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [63:0] [127:64], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [63:0] [191:128], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [63:0] [255:192], xilinx.com:interface:axis:1.0 S04_AXIS TDATA [63:0] [319:256], xilinx.com:interface:axis:1.0 S05_AXIS TDATA [63:0] [383:320], xilinx.com:interface:axis:1.0 S06_AXIS TDATA [63:0] [447:384], xilinx.com:interface:axis:1.0 S07_AXIS TDATA [63:0] [511:448]" *)
input wire [511 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TKEEP [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TKEEP [7:0] [31:24], xilinx.com:interface:axis:1.0 S04_AXIS TKEEP [7:0] [39:32], xilinx.com:interface:axis:1.0 S05_AXIS TKEEP [7:0] [47:40], xilinx.com:interface:axis:1.0 S06_AXIS TKEEP [7:0] [55:48], xilinx.com:interface:axis:1.0 S07_AXIS TKEEP [7:0] [63:56]" *)
input wire [63 : 0] s_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TLAST [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TLAST [0:0] [6:6], xilinx.com:interface:axis:1.0 S07_AXIS TLAST [0:0] [7:7]" *)
input wire [7 : 0] s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TDEST [7:0] [31:24], xilinx.com:interface:axis:1.0 S04_AXIS TDEST [7:0] [39:32], xilinx.com:interface:axis:1.0 S05_AXIS TDEST [7:0] [47:40], xilinx.com:interface:axis:1.0 S06_AXIS TDEST [7:0] [55:48], xilinx.com:interface:axis:1.0 S07_AXIS TDEST [7:0] [63:56]" *)
input wire [63 : 0] s_axis_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TVALID [0:0] [5:5]" *)
output wire [5 : 0] m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TREADY [0:0] [5:5]" *)
input wire [5 : 0] m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [63:0] [63:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [63:0] [127:64], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [63:0] [191:128], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [63:0] [255:192], xilinx.com:interface:axis:1.0 M04_AXIS TDATA [63:0] [319:256], xilinx.com:interface:axis:1.0 M05_AXIS TDATA [63:0] [383:320]" *)
output wire [383 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [7:0] [31:24], xilinx.com:interface:axis:1.0 M04_AXIS TKEEP [7:0] [39:32], xilinx.com:interface:axis:1.0 M05_AXIS TKEEP [7:0] [47:40]" *)
output wire [47 : 0] m_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TLAST [0:0] [5:5]" *)
output wire [5 : 0] m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TDEST [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TDEST [7:0] [31:24], xilinx.com:interface:axis:1.0 M04_AXIS TDEST [7:0] [39:32], xilinx.com:interface:axis:1.0 M05_AXIS TDEST [7:0] [47:40]" *)
output wire [47 : 0] m_axis_tdest;
output wire [7 : 0] s_decode_err;

  axis_switch_v1_1_11_axis_switch #(
    .C_FAMILY("kintexu"),
    .C_NUM_SI_SLOTS(8),
    .C_LOG_SI_SLOTS(3),
    .C_NUM_MI_SLOTS(6),
    .C_AXIS_TDATA_WIDTH(64),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(8),
    .C_AXIS_TUSER_WIDTH(1),
    .C_AXIS_SIGNAL_SET(32'B00000000000000000000000001011011),
    .C_ARB_ON_MAX_XFERS(1),
    .C_ARB_ON_NUM_CYCLES(0),
    .C_ARB_ON_TLAST(0),
    .C_INCLUDE_ARBITER(1),
    .C_ARB_ALGORITHM(0),
    .C_OUTPUT_REG(0),
    .C_DECODER_REG(1),
    .C_M_AXIS_CONNECTIVITY_ARRAY(48'B111111111111111111111111111111111111111111111111),
    .C_M_AXIS_BASETDEST_ARRAY(48'B000011110000011000000101000001000000001000000001),
    .C_M_AXIS_HIGHTDEST_ARRAY(48'B000011110000011000000101000001000000001000000001),
    .C_ROUTING_MODE(0),
    .C_S_AXI_CTRL_ADDR_WIDTH(7),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_COMMON_CLOCK(0)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .aclken(1'H1),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tstrb(64'HFFFFFFFFFFFFFFFF),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tid(8'H00),
    .s_axis_tdest(s_axis_tdest),
    .s_axis_tuser(8'H00),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tstrb(),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tid(),
    .m_axis_tdest(m_axis_tdest),
    .m_axis_tuser(),
    .arb_req(),
    .arb_done(),
    .arb_gnt(48'H000000000000),
    .arb_sel(18'H00000),
    .arb_last(),
    .arb_id(),
    .arb_dest(),
    .arb_user(),
    .s_req_suppress(8'H00),
    .s_axi_ctrl_aclk(1'H0),
    .s_axi_ctrl_aresetn(1'H0),
    .s_axi_ctrl_awvalid(1'H0),
    .s_axi_ctrl_awready(),
    .s_axi_ctrl_awaddr(7'H00),
    .s_axi_ctrl_wvalid(1'H0),
    .s_axi_ctrl_wready(),
    .s_axi_ctrl_wdata(32'H00000000),
    .s_axi_ctrl_bvalid(),
    .s_axi_ctrl_bready(1'H0),
    .s_axi_ctrl_bresp(),
    .s_axi_ctrl_arvalid(1'H0),
    .s_axi_ctrl_arready(),
    .s_axi_ctrl_araddr(7'H00),
    .s_axi_ctrl_rvalid(),
    .s_axi_ctrl_rready(1'H0),
    .s_axi_ctrl_rdata(),
    .s_axi_ctrl_rresp(),
    .s_decode_err(s_decode_err)
  );
endmodule
