// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dummy,hls_ip_2018_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.375000,HLS_SYN_LAT=4,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=523,HLS_SYN_LUT=670}" *)

module dummy (
        ap_clk,
        ap_rst_n,
        out_r,
        out_r_ap_vld,
        m_axi_mem_AWVALID,
        m_axi_mem_AWREADY,
        m_axi_mem_AWADDR,
        m_axi_mem_AWID,
        m_axi_mem_AWLEN,
        m_axi_mem_AWSIZE,
        m_axi_mem_AWBURST,
        m_axi_mem_AWLOCK,
        m_axi_mem_AWCACHE,
        m_axi_mem_AWPROT,
        m_axi_mem_AWQOS,
        m_axi_mem_AWREGION,
        m_axi_mem_AWUSER,
        m_axi_mem_WVALID,
        m_axi_mem_WREADY,
        m_axi_mem_WDATA,
        m_axi_mem_WSTRB,
        m_axi_mem_WLAST,
        m_axi_mem_WID,
        m_axi_mem_WUSER,
        m_axi_mem_ARVALID,
        m_axi_mem_ARREADY,
        m_axi_mem_ARADDR,
        m_axi_mem_ARID,
        m_axi_mem_ARLEN,
        m_axi_mem_ARSIZE,
        m_axi_mem_ARBURST,
        m_axi_mem_ARLOCK,
        m_axi_mem_ARCACHE,
        m_axi_mem_ARPROT,
        m_axi_mem_ARQOS,
        m_axi_mem_ARREGION,
        m_axi_mem_ARUSER,
        m_axi_mem_RVALID,
        m_axi_mem_RREADY,
        m_axi_mem_RDATA,
        m_axi_mem_RLAST,
        m_axi_mem_RID,
        m_axi_mem_RUSER,
        m_axi_mem_RRESP,
        m_axi_mem_BVALID,
        m_axi_mem_BREADY,
        m_axi_mem_BRESP,
        m_axi_mem_BID,
        m_axi_mem_BUSER
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
parameter    C_M_AXI_MEM_ID_WIDTH = 1;
parameter    C_M_AXI_MEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_MEM_DATA_WIDTH = 32;
parameter    C_M_AXI_MEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_MEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_MEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_MEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_MEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_MEM_TARGET_ADDR = 0;
parameter    C_M_AXI_MEM_USER_VALUE = 0;
parameter    C_M_AXI_MEM_PROT_VALUE = 0;
parameter    C_M_AXI_MEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_M_AXI_MEM_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output  [31:0] out_r;
output   out_r_ap_vld;
output   m_axi_mem_AWVALID;
input   m_axi_mem_AWREADY;
output  [C_M_AXI_MEM_ADDR_WIDTH - 1:0] m_axi_mem_AWADDR;
output  [C_M_AXI_MEM_ID_WIDTH - 1:0] m_axi_mem_AWID;
output  [7:0] m_axi_mem_AWLEN;
output  [2:0] m_axi_mem_AWSIZE;
output  [1:0] m_axi_mem_AWBURST;
output  [1:0] m_axi_mem_AWLOCK;
output  [3:0] m_axi_mem_AWCACHE;
output  [2:0] m_axi_mem_AWPROT;
output  [3:0] m_axi_mem_AWQOS;
output  [3:0] m_axi_mem_AWREGION;
output  [C_M_AXI_MEM_AWUSER_WIDTH - 1:0] m_axi_mem_AWUSER;
output   m_axi_mem_WVALID;
input   m_axi_mem_WREADY;
output  [C_M_AXI_MEM_DATA_WIDTH - 1:0] m_axi_mem_WDATA;
output  [C_M_AXI_MEM_WSTRB_WIDTH - 1:0] m_axi_mem_WSTRB;
output   m_axi_mem_WLAST;
output  [C_M_AXI_MEM_ID_WIDTH - 1:0] m_axi_mem_WID;
output  [C_M_AXI_MEM_WUSER_WIDTH - 1:0] m_axi_mem_WUSER;
output   m_axi_mem_ARVALID;
input   m_axi_mem_ARREADY;
output  [C_M_AXI_MEM_ADDR_WIDTH - 1:0] m_axi_mem_ARADDR;
output  [C_M_AXI_MEM_ID_WIDTH - 1:0] m_axi_mem_ARID;
output  [7:0] m_axi_mem_ARLEN;
output  [2:0] m_axi_mem_ARSIZE;
output  [1:0] m_axi_mem_ARBURST;
output  [1:0] m_axi_mem_ARLOCK;
output  [3:0] m_axi_mem_ARCACHE;
output  [2:0] m_axi_mem_ARPROT;
output  [3:0] m_axi_mem_ARQOS;
output  [3:0] m_axi_mem_ARREGION;
output  [C_M_AXI_MEM_ARUSER_WIDTH - 1:0] m_axi_mem_ARUSER;
input   m_axi_mem_RVALID;
output   m_axi_mem_RREADY;
input  [C_M_AXI_MEM_DATA_WIDTH - 1:0] m_axi_mem_RDATA;
input   m_axi_mem_RLAST;
input  [C_M_AXI_MEM_ID_WIDTH - 1:0] m_axi_mem_RID;
input  [C_M_AXI_MEM_RUSER_WIDTH - 1:0] m_axi_mem_RUSER;
input  [1:0] m_axi_mem_RRESP;
input   m_axi_mem_BVALID;
output   m_axi_mem_BREADY;
input  [1:0] m_axi_mem_BRESP;
input  [C_M_AXI_MEM_ID_WIDTH - 1:0] m_axi_mem_BID;
input  [C_M_AXI_MEM_BUSER_WIDTH - 1:0] m_axi_mem_BUSER;

reg[31:0] out_r;
reg out_r_ap_vld;

reg    ap_rst_n_inv;
reg   [0:0] state_V;
reg    mem_blk_n_AR;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] state_V_load_load_fu_59_p1;
reg    mem_blk_n_R;
wire    ap_CS_fsm_state8;
reg   [0:0] state_V_load_reg_76;
wire    mem_AWREADY;
wire    mem_WREADY;
reg    mem_ARVALID;
wire    mem_ARREADY;
wire    mem_RVALID;
reg    mem_RREADY;
wire   [31:0] mem_RDATA;
wire    mem_RLAST;
wire   [0:0] mem_RID;
wire   [0:0] mem_RUSER;
wire   [1:0] mem_RRESP;
wire    mem_BVALID;
wire   [1:0] mem_BRESP;
wire   [0:0] mem_BID;
wire   [0:0] mem_BUSER;
reg    ap_sig_ioackin_mem_ARREADY;
reg    ap_block_state1_io;
reg    ap_reg_ioackin_mem_ARREADY;
reg    ap_block_state8;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 state_V = 1'd0;
#0 ap_CS_fsm = 8'd1;
#0 ap_reg_ioackin_mem_ARREADY = 1'b0;
end

dummy_mem_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 32 ),
    .USER_AW( 64 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_MEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_MEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_MEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_MEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_MEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_MEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_MEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_MEM_BUSER_WIDTH ),
    .C_TARGET_ADDR( C_M_AXI_MEM_TARGET_ADDR ),
    .C_USER_VALUE( C_M_AXI_MEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_MEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_MEM_CACHE_VALUE ))
dummy_mem_m_axi_U(
    .AWVALID(m_axi_mem_AWVALID),
    .AWREADY(m_axi_mem_AWREADY),
    .AWADDR(m_axi_mem_AWADDR),
    .AWID(m_axi_mem_AWID),
    .AWLEN(m_axi_mem_AWLEN),
    .AWSIZE(m_axi_mem_AWSIZE),
    .AWBURST(m_axi_mem_AWBURST),
    .AWLOCK(m_axi_mem_AWLOCK),
    .AWCACHE(m_axi_mem_AWCACHE),
    .AWPROT(m_axi_mem_AWPROT),
    .AWQOS(m_axi_mem_AWQOS),
    .AWREGION(m_axi_mem_AWREGION),
    .AWUSER(m_axi_mem_AWUSER),
    .WVALID(m_axi_mem_WVALID),
    .WREADY(m_axi_mem_WREADY),
    .WDATA(m_axi_mem_WDATA),
    .WSTRB(m_axi_mem_WSTRB),
    .WLAST(m_axi_mem_WLAST),
    .WID(m_axi_mem_WID),
    .WUSER(m_axi_mem_WUSER),
    .ARVALID(m_axi_mem_ARVALID),
    .ARREADY(m_axi_mem_ARREADY),
    .ARADDR(m_axi_mem_ARADDR),
    .ARID(m_axi_mem_ARID),
    .ARLEN(m_axi_mem_ARLEN),
    .ARSIZE(m_axi_mem_ARSIZE),
    .ARBURST(m_axi_mem_ARBURST),
    .ARLOCK(m_axi_mem_ARLOCK),
    .ARCACHE(m_axi_mem_ARCACHE),
    .ARPROT(m_axi_mem_ARPROT),
    .ARQOS(m_axi_mem_ARQOS),
    .ARREGION(m_axi_mem_ARREGION),
    .ARUSER(m_axi_mem_ARUSER),
    .RVALID(m_axi_mem_RVALID),
    .RREADY(m_axi_mem_RREADY),
    .RDATA(m_axi_mem_RDATA),
    .RLAST(m_axi_mem_RLAST),
    .RID(m_axi_mem_RID),
    .RUSER(m_axi_mem_RUSER),
    .RRESP(m_axi_mem_RRESP),
    .BVALID(m_axi_mem_BVALID),
    .BREADY(m_axi_mem_BREADY),
    .BRESP(m_axi_mem_BRESP),
    .BID(m_axi_mem_BID),
    .BUSER(m_axi_mem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(mem_ARVALID),
    .I_ARREADY(mem_ARREADY),
    .I_ARADDR(64'd42),
    .I_ARID(1'd0),
    .I_ARLEN(32'd1),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(mem_RVALID),
    .I_RREADY(mem_RREADY),
    .I_RDATA(mem_RDATA),
    .I_RID(mem_RID),
    .I_RUSER(mem_RUSER),
    .I_RRESP(mem_RRESP),
    .I_RLAST(mem_RLAST),
    .I_AWVALID(1'b0),
    .I_AWREADY(mem_AWREADY),
    .I_AWADDR(64'd0),
    .I_AWID(1'd0),
    .I_AWLEN(32'd0),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(1'b0),
    .I_WREADY(mem_WREADY),
    .I_WDATA(32'd0),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(4'd0),
    .I_BVALID(mem_BVALID),
    .I_BREADY(1'b0),
    .I_BRESP(mem_BRESP),
    .I_BID(mem_BID),
    .I_BUSER(mem_BUSER)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_mem_ARREADY <= 1'b0;
    end else begin
        if (((state_V == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
            if ((1'b0 == ap_block_state1_io)) begin
                ap_reg_ioackin_mem_ARREADY <= 1'b0;
            end else if ((mem_ARREADY == 1'b1)) begin
                ap_reg_ioackin_mem_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((state_V == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_io))) begin
        state_V <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_io))) begin
        state_V_load_reg_76 <= state_V;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_mem_ARREADY == 1'b0)) begin
        ap_sig_ioackin_mem_ARREADY = mem_ARREADY;
    end else begin
        ap_sig_ioackin_mem_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if (((state_V == 1'd0) & (ap_reg_ioackin_mem_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        mem_ARVALID = 1'b1;
    end else begin
        mem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((state_V_load_reg_76 == 1'd0) & (mem_RVALID == 1'b0)) & (state_V_load_reg_76 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        mem_RREADY = 1'b1;
    end else begin
        mem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((state_V == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        mem_blk_n_AR = m_axi_mem_ARREADY;
    end else begin
        mem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((state_V_load_reg_76 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        mem_blk_n_R = m_axi_mem_RVALID;
    end else begin
        mem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((~((state_V_load_reg_76 == 1'd0) & (mem_RVALID == 1'b0)) & (state_V_load_reg_76 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        out_r = mem_RDATA;
    end else if (((state_V_load_load_fu_59_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        out_r = 32'd0;
    end else begin
        out_r = 'bx;
    end
end

always @ (*) begin
    if (((~((state_V_load_reg_76 == 1'd0) & (mem_RVALID == 1'b0)) & (state_V_load_reg_76 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((state_V_load_load_fu_59_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        out_r_ap_vld = 1'b1;
    end else begin
        out_r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((state_V_load_load_fu_59_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_io))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if (((state_V == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_io))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if ((~((state_V_load_reg_76 == 1'd0) & (mem_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state1_io = ((state_V == 1'd0) & (ap_sig_ioackin_mem_ARREADY == 1'b0));
end

always @ (*) begin
    ap_block_state8 = ((state_V_load_reg_76 == 1'd0) & (mem_RVALID == 1'b0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign state_V_load_load_fu_59_p1 = state_V;

endmodule //dummy
