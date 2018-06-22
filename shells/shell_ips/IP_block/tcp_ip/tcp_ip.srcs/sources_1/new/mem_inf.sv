`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2018 06:52:19 PM
// Design Name: 
// Module Name: mem_inf
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


module mem_inf(
input               clk156_25,
input               reset156_25_n,
//ddr3 pins
//SODIMM 0
   // Inouts
inout [71:0]        c0_ddr3_dq,
inout [8:0]         c0_ddr3_dqs_n,
inout [8:0]         c0_ddr3_dqs_p,
// Outputs
output [15:0]       c0_ddr3_addr,
output [2:0]        c0_ddr3_ba,
output              c0_ddr3_ras_n,
output              c0_ddr3_cas_n,
output              c0_ddr3_we_n,
output              c0_ddr3_reset_n,
output [1:0]        c0_ddr3_ck_p,
output [1:0]        c0_ddr3_ck_n,
output [1:0]        c0_ddr3_cke,
output [1:0]        c0_ddr3_cs_n,
output [1:0]        c0_ddr3_odt,
output              c0_ui_clk,
output              c0_init_calib_complete,
//CLOCKS and reset
input               c0_sys_clk_p,
input               c0_sys_clk_n,
input               clk_ref_p,
input               clk_ref_n,
//toe stream interface signals
input               toeTX_s_axis_read_cmd_tvalid,
output              toeTX_s_axis_read_cmd_tready,
input[71:0]         toeTX_s_axis_read_cmd_tdata,
//read status
output              toeTX_m_axis_read_sts_tvalid,
input               toeTX_m_axis_read_sts_tready,
output[7:0]         toeTX_m_axis_read_sts_tdata,
//read stream
output[63:0]        toeTX_m_axis_read_tdata,
output[7:0]         toeTX_m_axis_read_tkeep,
output              toeTX_m_axis_read_tlast,
output              toeTX_m_axis_read_tvalid,
input               toeTX_m_axis_read_tready,

//write commands
input               toeTX_s_axis_write_cmd_tvalid,
output              toeTX_s_axis_write_cmd_tready,
input[71:0]         toeTX_s_axis_write_cmd_tdata,
//write status
output              toeTX_m_axis_write_sts_tvalid,
input               toeTX_m_axis_write_sts_tready,
output[7:0]        toeTX_m_axis_write_sts_tdata,
//write stream
input[63:0]         toeTX_s_axis_write_tdata,
input[7:0]          toeTX_s_axis_write_tkeep,
input               toeTX_s_axis_write_tlast,
input               toeTX_s_axis_write_tvalid,
output              toeTX_s_axis_write_tready,

input               toeRX_s_axis_read_cmd_tvalid,
output              toeRX_s_axis_read_cmd_tready,
input[71:0]         toeRX_s_axis_read_cmd_tdata,
//read status
output              toeRX_m_axis_read_sts_tvalid,
input               toeRX_m_axis_read_sts_tready,
output[7:0]         toeRX_m_axis_read_sts_tdata,
//read stream
output[63:0]        toeRX_m_axis_read_tdata,
output[7:0]         toeRX_m_axis_read_tkeep,
output              toeRX_m_axis_read_tlast,
output              toeRX_m_axis_read_tvalid,
input               toeRX_m_axis_read_tready,

//write commands
input               toeRX_s_axis_write_cmd_tvalid,
output              toeRX_s_axis_write_cmd_tready,
input[71:0]         toeRX_s_axis_write_cmd_tdata,
//write status
output              toeRX_m_axis_write_sts_tvalid,
input               toeRX_m_axis_write_sts_tready,
output[7:0]        toeRX_m_axis_write_sts_tdata,
//write stream
input[63:0]         toeRX_s_axis_write_tdata,
input[7:0]          toeRX_s_axis_write_tkeep,
input               toeRX_s_axis_write_tlast,
input               toeRX_s_axis_write_tvalid,
output              toeRX_s_axis_write_tready
    );
always @(posedge c0_ui_clk)
    c0_aresetn_r <= ~c0_ui_clk_sync_rst & c0_mmcm_locked;
    
always @(posedge c1_ui_clk)
    c1_aresetn_r <= ~c1_ui_clk_sync_rst & c1_mmcm_locked;
    
    wire [0 : 0] S10_AXI_AWID;
    wire [31 : 0] S10_AXI_AWADDR;
    wire [7 : 0] S10_AXI_AWLEN;
    wire [2 : 0] S10_AXI_AWSIZE;
    wire [1 : 0] S10_AXI_AWBURST;
    wire S10_AXI_AWLOCK;
    wire [3 : 0] S10_AXI_AWCACHE;
    wire [2 : 0] S10_AXI_AWPROT;
    wire [3 : 0] S10_AXI_AWQOS;
    wire S10_AXI_AWVALID;
    wire S10_AXI_AWREADY;
    wire [511 : 0] S10_AXI_WDATA;
    wire [63 : 0] S10_AXI_WSTRB;
    wire S10_AXI_WLAST;
    wire S10_AXI_WVALID;
    wire S10_AXI_WREADY;
    wire [0 : 0] S10_AXI_BID;
    wire [1 : 0] S10_AXI_BRESP;
    wire S10_AXI_BVALID;
    wire S10_AXI_BREADY;
    wire [0 : 0] S10_AXI_ARID;
    wire [31 : 0] S10_AXI_ARADDR;
    wire [7 : 0] S10_AXI_ARLEN;
    wire [2 : 0] S10_AXI_ARSIZE;
    wire [1 : 0] S10_AXI_ARBURST;
    wire S10_AXI_ARLOCK;
    wire [3 : 0] S10_AXI_ARCACHE;
    wire [2 : 0] S10_AXI_ARPROT;
    wire [3 : 0] S10_AXI_ARQOS;
    wire S10_AXI_ARVALID;
    wire S10_AXI_ARREADY;
    wire [0 : 0] S10_AXI_RID;
    wire [511 : 0] S10_AXI_RDATA;
    wire [1 : 0] S10_AXI_RRESP;
    wire S10_AXI_RLAST;
    wire S10_AXI_RVALID;
    wire S10_AXI_RREADY;
    wire S11_AXI_ARESET_OUT_N;
    wire S11_AXI_ACLK;
    wire [0 : 0] S11_AXI_AWID;
    wire [31 : 0] S11_AXI_AWADDR;
    wire [7 : 0] S11_AXI_AWLEN;
    wire [2 : 0] S11_AXI_AWSIZE;
    wire [1 : 0] S11_AXI_AWBURST;
    wire S11_AXI_AWLOCK;
    wire [3 : 0] S11_AXI_AWCACHE;
    wire [2 : 0] S11_AXI_AWPROT;
    wire [3 : 0] S11_AXI_AWQOS;
    wire S11_AXI_AWVALID;
    wire S11_AXI_AWREADY;
    wire [511 : 0] S11_AXI_WDATA;
    wire [63 : 0] S11_AXI_WSTRB;
    wire S11_AXI_WLAST;
    wire S11_AXI_WVALID;
    wire S11_AXI_WREADY;
    wire [0 : 0] S11_AXI_BID;
    wire [1 : 0] S11_AXI_BRESP;
    wire S11_AXI_BVALID;
    wire S11_AXI_BREADY;
    wire [0 : 0] S11_AXI_ARID;
    wire [31 : 0] S11_AXI_ARADDR;
    wire [7 : 0] S11_AXI_ARLEN;
    wire [2 : 0] S11_AXI_ARSIZE;
    wire [1 : 0] S11_AXI_ARBURST;
    wire S11_AXI_ARLOCK;
    wire [3 : 0] S11_AXI_ARCACHE;
    wire [2 : 0] S11_AXI_ARPROT;
    wire [3 : 0] S11_AXI_ARQOS;
    wire S11_AXI_ARVALID;
    wire S11_AXI_ARREADY;
    wire [0 : 0] S11_AXI_RID;
    wire [511 : 0] S11_AXI_RDATA;
    wire [1 : 0] S11_AXI_RRESP;
    wire S11_AXI_RLAST;
    wire S11_AXI_RVALID;
    wire S11_AXI_RREADY;
    
    wire [3:0] c0_s_axi_arid_x;
    assign c0_s_axi_arid = c0_s_axi_arid_x[0];
    wire [3:0] S10_AXI_ARID_x, S10_AXI_AWID_x;
    assign S10_AXI_ARID = S10_AXI_ARID_x[0];
    assign S10_AXI_AWID = S10_AXI_AWID_x[0];
    
    wire [3:0] S11_AXI_ARID_x, S11_AXI_AWID_x;
    assign S11_AXI_ARID = S11_AXI_ARID_x[0];
    assign S11_AXI_AWID = S11_AXI_AWID_x[0];
    //convert 512-bit AXI full to 64-bit AXI stream
    axi_datamover_0 toeTX_data_mover0 (
      .m_axi_mm2s_aclk(clk156_25), // input m_axi_mm2s_aclk
      .m_axi_mm2s_aresetn(reset156_25_n), // input m_axi_mm2s_aresetn
      .mm2s_err(), // output mm2s_err
      .m_axis_mm2s_cmdsts_aclk(clk156_25), // input m_axis_mm2s_cmdsts_aclk
      .m_axis_mm2s_cmdsts_aresetn(reset156_25_n), // input m_axis_mm2s_cmdsts_aresetn
      // mm2s => read
      .s_axis_mm2s_cmd_tvalid(toeTX_s_axis_read_cmd_tvalid), // input s_axis_mm2s_cmd_tvalid
      .s_axis_mm2s_cmd_tready(toeTX_s_axis_read_cmd_tready), // output s_axis_mm2s_cmd_tready
      .s_axis_mm2s_cmd_tdata(toeTX_s_axis_read_cmd_tdata), // input [71 : 0] s_axis_mm2s_cmd_tdata
      .m_axis_mm2s_sts_tvalid(toeTX_m_axis_read_sts_tvalid), // output m_axis_mm2s_sts_tvalid
      .m_axis_mm2s_sts_tready(toeTX_m_axis_read_sts_tready), // input m_axis_mm2s_sts_tready
      .m_axis_mm2s_sts_tdata(toeTX_m_axis_read_sts_tdata), // output [7 : 0] m_axis_mm2s_sts_tdata
      .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
      .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast
      .m_axi_mm2s_arid(S10_AXI_ARID_x), // output [3 : 0] m_axi_mm2s_arid
      .m_axi_mm2s_araddr(S10_AXI_ARADDR), // output [31 : 0] m_axi_mm2s_araddr
      .m_axi_mm2s_arlen(S10_AXI_ARLEN), // output [7 : 0] m_axi_mm2s_arlen
      .m_axi_mm2s_arsize(S10_AXI_ARSIZE), // output [2 : 0] m_axi_mm2s_arsize
      .m_axi_mm2s_arburst(S10_AXI_ARBURST), // output [1 : 0] m_axi_mm2s_arburst
      .m_axi_mm2s_arprot(), // output [2 : 0] m_axi_mm2s_arprot
      .m_axi_mm2s_arcache(), // output [3 : 0] m_axi_mm2s_arcache
      .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
      .m_axi_mm2s_arvalid(S10_AXI_ARVALID), // output m_axi_mm2s_arvalid
      .m_axi_mm2s_arready(S10_AXI_ARREADY), // input m_axi_mm2s_arready
      .m_axi_mm2s_rdata(S10_AXI_RDATA), // input [511 : 0] m_axi_mm2s_rdata
      .m_axi_mm2s_rresp(S10_AXI_RRESP), // input [1 : 0] m_axi_mm2s_rresp
      .m_axi_mm2s_rlast(S10_AXI_RLAST), // input m_axi_mm2s_rlast
      .m_axi_mm2s_rvalid(S10_AXI_RVALID), // input m_axi_mm2s_rvalid
      .m_axi_mm2s_rready(S10_AXI_RREADY), // output m_axi_mm2s_rready
      // read output to app 
      .m_axis_mm2s_tdata(toeTX_m_axis_read_tdata), // output [63 : 0] m_axis_mm2s_tdata
      .m_axis_mm2s_tkeep(toeTX_m_axis_read_tkeep), // output [7 : 0] m_axis_mm2s_tkeep
      .m_axis_mm2s_tlast(toeTX_m_axis_read_tlast), // output m_axis_mm2s_tlast
      .m_axis_mm2s_tvalid(toeTX_m_axis_read_tvalid), // output m_axis_mm2s_tvalid
      .m_axis_mm2s_tready(toeTX_m_axis_read_tready), // input m_axis_mm2s_tready
      .m_axi_s2mm_aclk(clk156_25), // input m_axi_s2mm_aclk
      .m_axi_s2mm_aresetn(reset156_25_n), // input m_axi_s2mm_aresetn
      .s2mm_err(), // output s2mm_err
      .m_axis_s2mm_cmdsts_awclk(clk156_25), // input m_axis_s2mm_cmdsts_awclk
      .m_axis_s2mm_cmdsts_aresetn(reset156_25_n), // input m_axis_s2mm_cmdsts_aresetn
      // s2mm => write
      .s_axis_s2mm_cmd_tvalid(toeTX_s_axis_write_cmd_tvalid), // input s_axis_s2mm_cmd_tvalid
      .s_axis_s2mm_cmd_tready(toeTX_s_axis_write_cmd_tready), // output s_axis_s2mm_cmd_tready
      .s_axis_s2mm_cmd_tdata(toeTX_s_axis_write_cmd_tdata), // input [71 : 0] s_axis_s2mm_cmd_tdata
      .m_axis_s2mm_sts_tvalid(toeTX_m_axis_write_sts_tvalid), // output m_axis_s2mm_sts_tvalid
      .m_axis_s2mm_sts_tready(toeTX_m_axis_write_sts_tready), // input m_axis_s2mm_sts_tready
      .m_axis_s2mm_sts_tdata(toeTX_m_axis_write_sts_tdata), // OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
      .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast
      .m_axi_s2mm_awid(S10_AXI_AWID_x), // output [3 : 0] m_axi_s2mm_awid
      .m_axi_s2mm_awaddr(S10_AXI_AWADDR), // output [31 : 0] m_axi_s2mm_awaddr
      .m_axi_s2mm_awlen(S10_AXI_AWLEN), // output [7 : 0] m_axi_s2mm_awlen
      .m_axi_s2mm_awsize(S10_AXI_AWSIZE), // output [2 : 0] m_axi_s2mm_awsize
      .m_axi_s2mm_awburst(S10_AXI_AWBURST), // output [1 : 0] m_axi_s2mm_awburst
      .m_axi_s2mm_awprot(), // output [2 : 0] m_axi_s2mm_awprot
      .m_axi_s2mm_awcache(), // output [3 : 0] m_axi_s2mm_awcache
      .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
      .m_axi_s2mm_awvalid(S10_AXI_AWVALID), // output m_axi_s2mm_awvalid
      .m_axi_s2mm_awready(S10_AXI_AWREADY), // input m_axi_s2mm_awready
      .m_axi_s2mm_wdata(S10_AXI_WDATA), // output [511 : 0] m_axi_s2mm_wdata
      .m_axi_s2mm_wstrb(S10_AXI_WSTRB), // output [63 : 0] m_axi_s2mm_wstrb
      .m_axi_s2mm_wlast(S10_AXI_WLAST), // output m_axi_s2mm_wlast
      .m_axi_s2mm_wvalid(S10_AXI_WVALID), // output m_axi_s2mm_wvalid
      .m_axi_s2mm_wready(S10_AXI_WREADY), // input m_axi_s2mm_wready
      .m_axi_s2mm_bresp(S10_AXI_BRESP), // input [1 : 0] m_axi_s2mm_bresp
      .m_axi_s2mm_bvalid(S10_AXI_BVALID), // input m_axi_s2mm_bvalid
      .m_axi_s2mm_bready(S10_AXI_BREADY), // output m_axi_s2mm_bready
      // write input from tcp
      .s_axis_s2mm_tdata(toeTX_s_axis_write_tdata), // input [63 : 0] s_axis_s2mm_tdata
      .s_axis_s2mm_tkeep(toeTX_s_axis_write_tkeep), // input [7 : 0] s_axis_s2mm_tkeep
      .s_axis_s2mm_tlast(toeTX_s_axis_write_tlast), // input s_axis_s2mm_tlast
      .s_axis_s2mm_tvalid(toeTX_s_axis_write_tvalid), // input s_axis_s2mm_tvalid
      .s_axis_s2mm_tready(toeTX_s_axis_write_tready) // output s_axis_s2mm_tready
);

//convert 512-bit AXI full to 64-bit AXI stream
axi_datamover_0 toeRX_data_mover0 (
  .m_axi_mm2s_aclk(clk156_25), // input m_axi_mm2s_aclk
  .m_axi_mm2s_aresetn(reset156_25_n), // input m_axi_mm2s_aresetn
  .mm2s_err(), // output mm2s_err
  .m_axis_mm2s_cmdsts_aclk(clk156_25), // input m_axis_mm2s_cmdsts_aclk
  .m_axis_mm2s_cmdsts_aresetn(reset156_25_n), // input m_axis_mm2s_cmdsts_aresetn
  // mm2s => read
  .s_axis_mm2s_cmd_tvalid(toeRX_s_axis_read_cmd_tvalid), // input s_axis_mm2s_cmd_tvalid
  .s_axis_mm2s_cmd_tready(toeRX_s_axis_read_cmd_tready), // output s_axis_mm2s_cmd_tready
  .s_axis_mm2s_cmd_tdata(toeRX_s_axis_read_cmd_tdata), // input [71 : 0] s_axis_mm2s_cmd_tdata
  .m_axis_mm2s_sts_tvalid(toeRX_m_axis_read_sts_tvalid), // output m_axis_mm2s_sts_tvalid
  .m_axis_mm2s_sts_tready(toeRX_m_axis_read_sts_tready), // input m_axis_mm2s_sts_tready
  .m_axis_mm2s_sts_tdata(toeRX_m_axis_read_sts_tdata), // output [7 : 0] m_axis_mm2s_sts_tdata
  .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
  .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast
  .m_axi_mm2s_arid(S11_AXI_ARID_x), // output [3 : 0] m_axi_mm2s_arid
  .m_axi_mm2s_araddr(S11_AXI_ARADDR), // output [31 : 0] m_axi_mm2s_araddr
  .m_axi_mm2s_arlen(S11_AXI_ARLEN), // output [7 : 0] m_axi_mm2s_arlen
  .m_axi_mm2s_arsize(S11_AXI_ARSIZE), // output [2 : 0] m_axi_mm2s_arsize
  .m_axi_mm2s_arburst(S11_AXI_ARBURST), // output [1 : 0] m_axi_mm2s_arburst
  .m_axi_mm2s_arprot(), // output [2 : 0] m_axi_mm2s_arprot
  .m_axi_mm2s_arcache(), // output [3 : 0] m_axi_mm2s_arcache
  .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
  .m_axi_mm2s_arvalid(S11_AXI_ARVALID), // output m_axi_mm2s_arvalid
  .m_axi_mm2s_arready(S11_AXI_ARREADY), // input m_axi_mm2s_arready
  .m_axi_mm2s_rdata(S11_AXI_RDATA), // input [511 : 0] m_axi_mm2s_rdata
  .m_axi_mm2s_rresp(S11_AXI_RRESP), // input [1 : 0] m_axi_mm2s_rresp
  .m_axi_mm2s_rlast(S11_AXI_RLAST), // input m_axi_mm2s_rlast
  .m_axi_mm2s_rvalid(S11_AXI_RVALID), // input m_axi_mm2s_rvalid
  .m_axi_mm2s_rready(S11_AXI_RREADY), // output m_axi_mm2s_rready
  // read output to app 
  .m_axis_mm2s_tdata(toeRX_m_axis_read_tdata), // output [63 : 0] m_axis_mm2s_tdata
  .m_axis_mm2s_tkeep(toeRX_m_axis_read_tkeep), // output [7 : 0] m_axis_mm2s_tkeep
  .m_axis_mm2s_tlast(toeRX_m_axis_read_tlast), // output m_axis_mm2s_tlast
  .m_axis_mm2s_tvalid(toeRX_m_axis_read_tvalid), // output m_axis_mm2s_tvalid
  .m_axis_mm2s_tready(toeRX_m_axis_read_tready), // input m_axis_mm2s_tready
  .m_axi_s2mm_aclk(clk156_25), // input m_axi_s2mm_aclk
  .m_axi_s2mm_aresetn(reset156_25_n), // input m_axi_s2mm_aresetn
  .s2mm_err(), // output s2mm_err
  .m_axis_s2mm_cmdsts_awclk(clk156_25), // input m_axis_s2mm_cmdsts_awclk
  .m_axis_s2mm_cmdsts_aresetn(reset156_25_n), // input m_axis_s2mm_cmdsts_aresetn
  // s2mm => write
  .s_axis_s2mm_cmd_tvalid(toeRX_s_axis_write_cmd_tvalid), // input s_axis_s2mm_cmd_tvalid
  .s_axis_s2mm_cmd_tready(toeRX_s_axis_write_cmd_tready), // output s_axis_s2mm_cmd_tready
  .s_axis_s2mm_cmd_tdata(toeRX_s_axis_write_cmd_tdata), // input [71 : 0] s_axis_s2mm_cmd_tdata
  .m_axis_s2mm_sts_tvalid(toeRX_m_axis_write_sts_tvalid), // output m_axis_s2mm_sts_tvalid
  .m_axis_s2mm_sts_tready(toeRX_m_axis_write_sts_tready), // input m_axis_s2mm_sts_tready
  .m_axis_s2mm_sts_tdata(toeRX_m_axis_write_sts_tdata), // OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
  .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
  .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast
  .m_axi_s2mm_awid(S11_AXI_AWID_x), // output [3 : 0] m_axi_s2mm_awid
  .m_axi_s2mm_awaddr(S11_AXI_AWADDR), // output [31 : 0] m_axi_s2mm_awaddr
  .m_axi_s2mm_awlen(S11_AXI_AWLEN), // output [7 : 0] m_axi_s2mm_awlen
  .m_axi_s2mm_awsize(S11_AXI_AWSIZE), // output [2 : 0] m_axi_s2mm_awsize
  .m_axi_s2mm_awburst(S11_AXI_AWBURST), // output [1 : 0] m_axi_s2mm_awburst
  .m_axi_s2mm_awprot(), // output [2 : 0] m_axi_s2mm_awprot
  .m_axi_s2mm_awcache(), // output [3 : 0] m_axi_s2mm_awcache
  .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
  .m_axi_s2mm_awvalid(S11_AXI_AWVALID), // output m_axi_s2mm_awvalid
  .m_axi_s2mm_awready(S11_AXI_AWREADY), // input m_axi_s2mm_awready
  .m_axi_s2mm_wdata(S11_AXI_WDATA), // output [511 : 0] m_axi_s2mm_wdata
  .m_axi_s2mm_wstrb(S11_AXI_WSTRB), // output [63 : 0] m_axi_s2mm_wstrb
  .m_axi_s2mm_wlast(S11_AXI_WLAST), // output m_axi_s2mm_wlast
  .m_axi_s2mm_wvalid(S11_AXI_WVALID), // output m_axi_s2mm_wvalid
  .m_axi_s2mm_wready(S11_AXI_WREADY), // input m_axi_s2mm_wready
  .m_axi_s2mm_bresp(S11_AXI_BRESP), // input [1 : 0] m_axi_s2mm_bresp
  .m_axi_s2mm_bvalid(S11_AXI_BVALID), // input m_axi_s2mm_bvalid
  .m_axi_s2mm_bready(S11_AXI_BREADY), // output m_axi_s2mm_bready
  // write input from tcp
  .s_axis_s2mm_tdata(toeRX_s_axis_write_tdata), // input [63 : 0] s_axis_s2mm_tdata
  .s_axis_s2mm_tkeep(toeRX_s_axis_write_tkeep), // input [7 : 0] s_axis_s2mm_tkeep
  .s_axis_s2mm_tlast(toeRX_s_axis_write_tlast), // input s_axis_s2mm_tlast
  .s_axis_s2mm_tvalid(toeRX_s_axis_write_tvalid), // input s_axis_s2mm_tvalid
  .s_axis_s2mm_tready(toeRX_s_axis_write_tready) // output s_axis_s2mm_tready
);
endmodule
