`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2018 05:27:46 PM
// Design Name: 
// Module Name: tb_prController
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "prReadWrite.svh"
import prPkg::*;
`include "axi_vip_0_mem_stimulus_d3.sv"
`include "axi_vip_0_mst_stimulus.sv"

module tb_prController(

    );

logic aclk;
logic aresetn;
axi_vip_0_mem_stimulus_d3 slv(); 
axi_lite_icap_stimulus mst();
initial
begin
	aclk = 0;
	forever
		#5ns aclk = ~aclk;
end

initial
begin
	aresetn = 0;
	forever
		@(posedge aclk)aresetn = 1;
end

dut_system DUT (.aclk(aclk), .aresetn(aresetn));

endmodule
module dut_system (input logic aclk, input logic aresetn);

//axi lite signals
logic  [31:0]  s_axi_awaddr; // Write address (optional)
logic          s_axi_awvalid; // Write address valid (optional)
logic         s_axi_awready; // Write address ready (optional)
logic  [31:0]  s_axi_wdata; // Write data (optional)
logic          s_axi_wvalid; // Write valid (optional)
logic         s_axi_wready; // Write ready (optional)
logic  [1:0]  s_axi_bresp; // Write response (optional)
logic         s_axi_bvalid; // Write response valid (optional)
logic          s_axi_bready; // Write response ready (optional)
logic  [31:0]  s_axi_araddr; // Read address (optional)
logic          s_axi_arvalid; // Read address valid (optional)
logic         s_axi_arready; // Read address ready (optional)
logic  [31:0] s_axi_rdata; // Read data (optional)
logic  [1:0]  s_axi_rresp; // Read response (optional)
logic         s_axi_rvalid; // Read valid (optional)
logic          s_axi_rready; // Read ready (optional)

//datamover signals
logic [3:0]m_axi_mm2s_arid;
logic [39:0]m_axi_mm2s_araddr;
logic [7:0]m_axi_mm2s_arlen;
logic [2:0]m_axi_mm2s_arsize;
logic [1:0]m_axi_mm2s_arburst;
logic [2:0]m_axi_mm2s_arprot;
logic [3:0]m_axi_mm2s_arcache;
logic [3:0]m_axi_mm2s_aruser;
logic m_axi_mm2s_arvalid;
logic m_axi_mm2s_arready;
logic [63:0]m_axi_mm2s_rdata;
logic [1:0]m_axi_mm2s_rresp;
logic m_axi_mm2s_rlast;
logic m_axi_mm2s_rvalid;
logic m_axi_mm2s_rready;

logic [3:0]m_axi_s2mm_awid;
logic [39:0]m_axi_s2mm_awaddr;
logic [7:0]m_axi_s2mm_awlen;
logic [2:0]m_axi_s2mm_awsize;
logic [1:0]m_axi_s2mm_awburst;
logic [2:0]m_axi_s2mm_awprot;
logic [3:0]m_axi_s2mm_awcache;
logic [3:0]m_axi_s2mm_awuser;
logic m_axi_s2mm_awvalid;
logic m_axi_s2mm_awready;
logic [63:0]m_axi_s2mm_wdata;
logic [7:0]m_axi_s2mm_wstrb;
logic m_axi_s2mm_wlast;
logic m_axi_s2mm_wvalid;
logic m_axi_s2mm_wready;
logic [1:0]m_axi_s2mm_bresp;
logic m_axi_s2mm_bvalid;
logic m_axi_s2mm_bready;

logic done_interrupt;

prController #(
    .C_INVALID_CYCLES(4),
    .C_DUMMY_WORDS(118),
    .C_DM_MAX_SIZE(8388608)
) prController_inst (
    .*
);

axi_lite_vip_0 axi_lite_vip_inst (
  .m_axi_awaddr(s_axi_awaddr),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awvalid(s_axi_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready(s_axi_awready),  // input wire m_axi_awready
  .m_axi_wdata(s_axi_wdata),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(s_axi_wstrb),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(s_axi_wvalid),    // output wire m_axi_wvalid
  .m_axi_wready(s_axi_wready),    // input wire m_axi_wready
  .m_axi_bresp(s_axi_bresp),      // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(s_axi_bvalid),    // input wire m_axi_bvalid
  .m_axi_bready(s_axi_bready),    // output wire m_axi_bready
  .m_axi_araddr(s_axi_araddr),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arvalid(s_axi_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready(s_axi_arready),  // input wire m_axi_arready
  .m_axi_rdata(s_axi_rdata),      // input wire [31 : 0] m_axi_rdata
  .m_axi_rresp(s_axi_rresp),      // input wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(s_axi_rvalid),    // input wire m_axi_rvalid
  .m_axi_rready(s_axi_rready),    // output wire m_axi_rready
  .*
);

axi_vip_slv_mem_0 axi_vip_mem_inst (
  .s_axi_awaddr  ( m_axi_s2mm_awaddr),    // input wire [39 : 0] s_axi_awaddr
  .s_axi_awlen   ( m_axi_s2mm_awlen),      // input wire [7 : 0] s_axi_awlen
  .s_axi_awsize  ( m_axi_s2mm_awsize),    // input wire [2 : 0] s_axi_awsize
  .s_axi_awburst ( m_axi_s2mm_awburst),  // input wire [1 : 0] s_axi_awburst
  .s_axi_awprot  ( m_axi_s2mm_awprot),    // input wire [2 : 0] s_axi_awprot
  .s_axi_awuser  ( m_axi_s2mm_awuser),    // input wire [3 : 0] s_axi_awuser
  .s_axi_awvalid ( m_axi_s2mm_awvalid),  // input wire s_axi_awvalid
  .s_axi_awready ( m_axi_s2mm_awready),  // output wire s_axi_awready
  .s_axi_wdata   ( m_axi_s2mm_wdata),      // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb   ( m_axi_s2mm_wstrb),      // input wire [3 : 0] s_axi_wstrb
  .s_axi_wlast   ( m_axi_s2mm_wlast),      // input wire s_axi_wlast
  .s_axi_wvalid  ( m_axi_s2mm_wvalid),    // input wire s_axi_wvalid
  .s_axi_wready  ( m_axi_s2mm_wready),    // output wire s_axi_wready
  .s_axi_bresp   ( m_axi_s2mm_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid  ( m_axi_s2mm_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready  ( m_axi_s2mm_bready),    // input wire s_axi_bready
  .s_axi_araddr  ( m_axi_mm2s_araddr),    // input wire [39 : 0] s_axi_araddr
  .s_axi_arlen   ( m_axi_mm2s_arlen),      // input wire [7 : 0] s_axi_arlen
  .s_axi_arsize  ( m_axi_mm2s_arsize),    // input wire [2 : 0] s_axi_arsize
  .s_axi_arburst ( m_axi_mm2s_arburst),  // input wire [1 : 0] s_axi_arburst
  .s_axi_arprot  ( m_axi_mm2s_arprot),    // input wire [2 : 0] s_axi_arprot
  .s_axi_aruser  ( m_axi_mm2s_aruser),    // input wire [3 : 0] s_axi_aruser
  .s_axi_arvalid ( m_axi_mm2s_arvalid),  // input wire s_axi_arvalid
  .s_axi_arready ( m_axi_mm2s_arready),  // output wire s_axi_arready
  .s_axi_rdata   ( m_axi_mm2s_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp   ( m_axi_mm2s_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast   ( m_axi_mm2s_rlast),      // output wire s_axi_rlast
  .s_axi_rvalid  ( m_axi_mm2s_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready  ( m_axi_mm2s_rready),    // input wire s_axi_rready
  .*
);


endmodule

