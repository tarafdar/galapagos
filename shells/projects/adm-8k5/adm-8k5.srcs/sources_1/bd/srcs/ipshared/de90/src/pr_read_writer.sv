`timescale 1ns / 1ps
//`default_nettype none
 
`include "prReadWrite.svh"
import prPkg::*;

module reg_sync_en #(
    parameter C_WIDTH = 32,
    parameter C_RESET_VAL = 0
)
(
    input logic clk,
    input logic resetn,
    input logic en,
    input logic [C_WIDTH-1:0] din,
    output logic [C_WIDTH-1:0] dout
);
    always_ff @ (posedge clk)
    begin
        if(resetn == 0)
            dout <= C_RESET_VAL;
        else if(en)
            dout <= din;
    end
endmodule


module prController #(
        parameter C_CHIP_FAMILY     = 8,
        parameter C_SIZE_WIDTH = 32,
        parameter C_ADDR_WIDTH = 33,
        parameter C_DM_MAX_SIZE = 8388608
)(
	input logic aclk,
	input logic aresetn,

	//axi lite signals
    input logic  [31:0]  s_axi_ctrl_awaddr, // Write address (optional)
    input logic          s_axi_ctrl_awvalid, // Write address valid (optional)
    output logic         s_axi_ctrl_awready, // Write address ready (optional)
    input logic  [31:0]  s_axi_ctrl_wdata, // Write data (optional)
    input logic          s_axi_ctrl_wvalid, // Write valid (optional)
    output logic         s_axi_ctrl_wready, // Write ready (optional)
    output logic  [1:0]  s_axi_ctrl_bresp, // Write response (optional)
    output logic         s_axi_ctrl_bvalid, // Write response valid (optional)
    input logic          s_axi_ctrl_bready, // Write response ready (optional)
    input logic  [31:0]  s_axi_ctrl_araddr, // Read address (optional)
    input logic          s_axi_ctrl_arvalid, // Read address valid (optional)
    output logic         s_axi_ctrl_arready, // Read address ready (optional)
    output logic  [31:0] s_axi_ctrl_rdata, // Read data (optional)
    output logic  [1:0]  s_axi_ctrl_rresp, // Read response (optional)
    output logic         s_axi_ctrl_rvalid, // Read valid (optional)
    input logic          s_axi_ctrl_rready, // Read ready (optional)

	//datamover signals
    output [3:0]  m_axi_arid    ,
    output [39:0] m_axi_araddr  ,
    output [7:0]  m_axi_arlen   ,
    output [2:0]  m_axi_arsize  ,
    output [1:0]  m_axi_arburst ,
    output [2:0]  m_axi_arprot  ,
    output [3:0]  m_axi_arcache ,
    output [3:0]  m_axi_aruser  ,
    output        m_axi_arvalid ,
    input         m_axi_arready ,
    input [63:0]  m_axi_rdata   ,
    input [1:0]   m_axi_rresp   ,
    input         m_axi_rlast   ,
    input         m_axi_rvalid  ,
    output        m_axi_rready  ,

    output [3:0]  m_axi_awid    ,
    output [39:0] m_axi_awaddr  ,
    output [7:0]  m_axi_awlen   ,
    output [2:0]  m_axi_awsize  ,
    output [1:0]  m_axi_awburst ,
    output [2:0]  m_axi_awprot  ,
    output [3:0]  m_axi_awcache ,
    output [3:0]  m_axi_awuser  ,
    output        m_axi_awvalid ,
    input         m_axi_awready ,
    output [63:0] m_axi_wdata   ,
    output [7:0]  m_axi_wstrb   ,
    output        m_axi_wlast   ,
    output        m_axi_wvalid  ,
    input         m_axi_wready  ,
    input [1:0]   m_axi_bresp   ,
    input         m_axi_bvalid  ,
    output        m_axi_bready  ,


	output done_interrupt
);
//if(C_CHIP_FAMILY == 7)
//begin
        //localparam C_ICAP_VERSION   = 2;
        //localparam C_INVALID_CYCLES = 4;
        //localparam C_DUMMY_WORDS    = 101;
//end
//else if(C_CHIP_FAMILY == 8)
//begin
        //localparam C_ICAP_VERSION   = 3;
        //localparam C_INVALID_CYCLES = 4;
        //localparam C_DUMMY_WORDS    = 133;
//end
//else if(C_CHIP_FAMILY == 9)
//begin
        //localparam C_ICAP_VERSION   = 3;
        //localparam C_INVALID_CYCLES = 4;
        //localparam C_DUMMY_WORDS    = 118;
//end
localparam  C_ICAP_VERSION   = C_CHIP_FAMILY == 7 ? 2   : C_CHIP_FAMILY == 8 ? 3   : 3;
localparam  C_INVALID_CYCLES = C_CHIP_FAMILY == 7 ? 4   : C_CHIP_FAMILY == 8 ? 4   : 4;
localparam  C_DUMMY_WORDS    = C_CHIP_FAMILY == 7 ? 101 : C_CHIP_FAMILY == 8 ? 133 : 118;
    

logic prRwDone;
logic [1:0] prRwError;
cmd_t cmd_Tdata;
logic cmd_Tvalid;
logic  cmd_Tready;

//dmS2MMCmd Interface
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)dmCmd_t dmS2MMCmd_Tdata;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic dmS2MMCmd_Tvalid;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic dmS2MMCmd_Tready;

//dmS2MMStatus Interface
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)dmStatus_t dmS2MMStatus_Tdata;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic dmS2MMStatus_Tvalid;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic dmS2MMStatus_Tready;

//dmMM2SCmd Interface
dmCmd_t dmMM2SCmd_Tdata;
logic dmMM2SCmd_Tvalid;
logic dmMM2SCmd_Tready;

//dmMM2SStatus Interface
dmStatus_t dmMM2SStatus_Tdata;
logic dmMM2SStatus_Tvalid;
logic dmMM2SStatus_Tready;

logic [31:0] write_tdata;
logic  write_tvalid;
logic write_tready;
logic write_tlast;

(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic [63:0] read_tdata;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic read_tvalid;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic  read_tready;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic read_tlast;
(* mark_debug = "true" *)(* DONT_TOUCH = "TRUE" *)logic [7:0] read_tkeep;
logic mm2s_err;
logic s2mm_err;
logic dmError;
logic [31:0] prDebug;
assign dmError = mm2s_err | s2mm_err;

axi_datamover_0 datamover_inst (
  .m_axi_mm2s_aclk(aclk),                        // input wire m_axi_mm2s_aclk
  .m_axi_mm2s_aresetn(aresetn),                  // input wire m_axi_mm2s_aresetn
  .m_axis_mm2s_cmdsts_aclk(aclk),        // input wire m_axis_mm2s_cmdsts_aclk
  .m_axis_mm2s_cmdsts_aresetn(aresetn),  // input wire m_axis_mm2s_cmdsts_aresetn
  .s_axis_mm2s_cmd_tvalid(dmMM2SCmd_Tvalid),          // input wire s_axis_mm2s_cmd_tvalid
  .s_axis_mm2s_cmd_tready(dmMM2SCmd_Tready),          // output wire s_axis_mm2s_cmd_tready
  .s_axis_mm2s_cmd_tdata(dmMM2SCmd_Tdata),            // input wire [79 : 0] s_axis_mm2s_cmd_tdata
  .m_axis_mm2s_sts_tvalid(dmMM2SStatus_Tvalid),          // output wire m_axis_mm2s_sts_tvalid
  .m_axis_mm2s_sts_tready(dmMM2SStatus_Tready),          // input wire m_axis_mm2s_sts_tready
  .m_axis_mm2s_sts_tdata(dmMM2SStatus_Tdata),            // output wire [7 : 0] m_axis_mm2s_sts_tdata
  .m_axis_mm2s_sts_tkeep(),            // output wire [0 : 0] m_axis_mm2s_sts_tkeep
  .m_axis_mm2s_sts_tlast(),            // output wire m_axis_mm2s_sts_tlast
  .m_axis_mm2s_tdata(write_tdata),                    // output wire [31 : 0] m_axis_mm2s_tdata
  .m_axis_mm2s_tkeep(),                    // output wire [3 : 0] m_axis_mm2s_tkeep
  .m_axis_mm2s_tlast(write_tlast),                    // output wire m_axis_mm2s_tlast
  .m_axis_mm2s_tvalid(write_tvalid),                  // output wire m_axis_mm2s_tvalid
  .m_axis_mm2s_tready(write_tready),                  // input wire m_axis_mm2s_tready
  .m_axi_s2mm_aclk(aclk),                        // input wire m_axi_s2mm_aclk
  .m_axi_s2mm_aresetn(aresetn),                  // input wire m_axi_s2mm_aresetn
  .m_axis_s2mm_cmdsts_awclk(aclk),      // input wire m_axis_s2mm_cmdsts_awclk
  .m_axis_s2mm_cmdsts_aresetn(aresetn),  // input wire m_axis_s2mm_cmdsts_aresetn
  .s_axis_s2mm_cmd_tvalid(dmS2MMCmd_Tvalid),          // input wire s_axis_s2mm_cmd_tvalid
  .s_axis_s2mm_cmd_tready(dmS2MMCmd_Tready),          // output wire s_axis_s2mm_cmd_tready
  .s_axis_s2mm_cmd_tdata(dmS2MMCmd_Tdata),            // input wire [79 : 0] s_axis_s2mm_cmd_tdata
  .m_axis_s2mm_sts_tvalid(dmS2MMStatus_Tvalid),          // output wire m_axis_s2mm_sts_tvalid
  .m_axis_s2mm_sts_tready(dmS2MMStatus_Tready),          // input wire m_axis_s2mm_sts_tready
  .m_axis_s2mm_sts_tdata(dmS2MMStatus_Tdata),            // output wire [7 : 0] m_axis_s2mm_sts_tdata
  .m_axis_s2mm_sts_tkeep(),            // output wire [0 : 0] m_axis_s2mm_sts_tkeep
  .m_axis_s2mm_sts_tlast(),            // output wire m_axis_s2mm_sts_tlast
  .s_axis_s2mm_tdata(read_tdata),                    // input wire [31 : 0] s_axis_s2mm_tdata
  .s_axis_s2mm_tkeep(read_tkeep),                    // input wire [3 : 0] s_axis_s2mm_tkeep
  .s_axis_s2mm_tlast(read_tlast),                    // input wire s_axis_s2mm_tlast
  .s_axis_s2mm_tvalid(read_tvalid),                  // input wire s_axis_s2mm_tvalid
  .s_axis_s2mm_tready(read_tready),                  // output wire s_axis_s2mm_tready
    .m_axi_mm2s_arid    ( m_axi_arid    ),
    .m_axi_mm2s_araddr  ( m_axi_araddr  ),
    .m_axi_mm2s_arlen   ( m_axi_arlen   ),
    .m_axi_mm2s_arsize  ( m_axi_arsize  ),
    .m_axi_mm2s_arburst ( m_axi_arburst ),
    .m_axi_mm2s_arprot  ( m_axi_arprot  ),
    .m_axi_mm2s_arcache ( m_axi_arcache ),
    .m_axi_mm2s_aruser  ( m_axi_aruser  ),
    .m_axi_mm2s_arvalid ( m_axi_arvalid ),
    .m_axi_mm2s_arready ( m_axi_arready ),
    .m_axi_mm2s_rdata   ( m_axi_rdata   ),
    .m_axi_mm2s_rresp   ( m_axi_rresp   ),
    .m_axi_mm2s_rlast   ( m_axi_rlast   ),
    .m_axi_mm2s_rvalid  ( m_axi_rvalid  ),
    .m_axi_mm2s_rready  ( m_axi_rready  ),
    .m_axi_s2mm_awid    ( m_axi_awid    ),
    .m_axi_s2mm_awaddr  ( m_axi_awaddr  ),
    .m_axi_s2mm_awlen   ( m_axi_awlen   ),
    .m_axi_s2mm_awsize  ( m_axi_awsize  ),
    .m_axi_s2mm_awburst ( m_axi_awburst ),
    .m_axi_s2mm_awprot  ( m_axi_awprot  ),
    .m_axi_s2mm_awcache ( m_axi_awcache ),
    .m_axi_s2mm_awuser  ( m_axi_awuser  ),
    .m_axi_s2mm_awvalid ( m_axi_awvalid ),
    .m_axi_s2mm_awready ( m_axi_awready ),
    .m_axi_s2mm_wdata   ( m_axi_wdata   ),
    .m_axi_s2mm_wstrb   ( m_axi_wstrb   ),
    .m_axi_s2mm_wlast   ( m_axi_wlast   ),
    .m_axi_s2mm_wvalid  ( m_axi_wvalid  ),
    .m_axi_s2mm_wready  ( m_axi_wready  ),
    .m_axi_s2mm_bresp   ( m_axi_bresp   ),
    .m_axi_s2mm_bvalid  ( m_axi_bvalid  ),
    .m_axi_s2mm_bready  ( m_axi_bready  ),
  .*
);

pr_read_writer #(
        .C_DUMMY_WORDS( C_DUMMY_WORDS ),
        .C_INVALID_CYCLES( C_INVALID_CYCLES ),
        .C_SIZE_WIDTH( C_SIZE_WIDTH ),
        .C_ADDR_WIDTH( C_ADDR_WIDTH ),
        .C_DM_MAX_SIZE( C_DM_MAX_SIZE ),
        .C_ICAP_VERSION( C_ICAP_VERSION )
) pr_rw_inst(
    .prRwBusy(   ),
	.*
);

axi_intf axi_intf_inst (
    .s_axi_awaddr  ( s_axi_ctrl_awaddr  ), // Write address        ( optional)
    .s_axi_awvalid ( s_axi_ctrl_awvalid ), // Write address valid ( optional)
    .s_axi_awready ( s_axi_ctrl_awready ), // Write address ready ( optional)
    .s_axi_wdata   ( s_axi_ctrl_wdata   ), // Write data            ( optional)
    .s_axi_wvalid  ( s_axi_ctrl_wvalid  ), // Write valid          ( optional)
    .s_axi_wready  ( s_axi_ctrl_wready  ), // Write ready          ( optional)
    .s_axi_bresp   ( s_axi_ctrl_bresp   ), // Write response        ( optional)
    .s_axi_bvalid  ( s_axi_ctrl_bvalid  ), // Write response valid ( optional)
    .s_axi_bready  ( s_axi_ctrl_bready  ), // Write response ready ( optional)
    .s_axi_araddr  ( s_axi_ctrl_araddr  ), // Read address         ( optional)
    .s_axi_arvalid ( s_axi_ctrl_arvalid ), // Read address valid  ( optional)
    .s_axi_arready ( s_axi_ctrl_arready ), // Read address ready  ( optional)
    .s_axi_rdata   ( s_axi_ctrl_rdata   ), // Read data             ( optional)
    .s_axi_rresp   ( s_axi_ctrl_rresp   ), // Read response         ( optional)
    .s_axi_rvalid  ( s_axi_ctrl_rvalid  ), // Read valid           ( optional)
    .s_axi_rready  ( s_axi_ctrl_rready  ), // Read ready           ( optional)

    .done( done_interrupt  ),
	.*
);

endmodule


module pr_read_writer
#(
        parameter C_INVALID_CYCLES = 4,
        parameter C_DUMMY_WORDS    = 123 + 10,
        parameter C_SIZE_WIDTH = 32,
        parameter C_ADDR_WIDTH = 33,
        parameter C_DM_MAX_SIZE = 8388608,
        parameter C_ICAP_VERSION   = 3
)
(
    input logic aclk,
    input logic aresetn,

    //Control interface
    input cmd_t cmd_Tdata,
    input logic  cmd_Tvalid,
    output logic cmd_Tready,
    output logic prRwBusy,
    output logic prRwDone,
    output logic [1:0]  prRwError,
    //dmS2MMCmd Interface
    output dmCmd_t dmS2MMCmd_Tdata,
    output logic dmS2MMCmd_Tvalid,
    input  logic dmS2MMCmd_Tready,

    //dmS2MMStatus Interface
    input dmStatus_t dmS2MMStatus_Tdata,
    input logic dmS2MMStatus_Tvalid,
    output logic dmS2MMStatus_Tready,

    //dmMM2SCmd Interface
    output dmCmd_t dmMM2SCmd_Tdata,
    output logic dmMM2SCmd_Tvalid,
    input  logic dmMM2SCmd_Tready,

    //dmMM2SStatus Interface
    input dmStatus_t dmMM2SStatus_Tdata,
    input logic dmMM2SStatus_Tvalid,
    output logic dmMM2SStatus_Tready,



    input logic [31:0] write_tdata,
    input logic  write_tvalid,
    output logic write_tready,
    input  logic write_tlast,

    output logic [63:0] read_tdata,
    output logic read_tvalid,
    input logic  read_tready,
    output logic read_tlast,
    output logic [7:0] read_tkeep,

    output logic [31:0] prDebug
);
    localparam OP_WRITE = 0;
    localparam  OP_READ  = 1;
    //localparam C_SIZE_WIDTH = 32;
    //localparam C_ADDR_WIDTH = 33;
    //localparam C_DM_MAX_SIZE = 8388608;
    
    //datapath signals
    //Registers
    logic [C_SIZE_WIDTH-1:0] regNumBytes, regNumBytesDin;
    logic [C_ADDR_WIDTH-1:0] regBaseAddress, regBaseAddressDin;
    //enum logic {OP_WRITE=0, OP_READ=1}  regOperation;
    logic regOperation;
    //Reg Controls
    logic regBaseAddressEn;
    logic regNumBytesEn;
    logic regOpcodeEn;

    logic [C_SIZE_WIDTH-1:0] numBytesDiff;
    logic [C_ADDR_WIDTH-1:0] baseAddressSum;
    logic [22:0] dmBtt;
    logic compareResult;
    logic selBaseAddress;
    logic selNumBytes;
    logic selDmBtt;

    (* KEEP = "TRUE" *) logic tCtrLd, tCtrIncr, tCtrDecr, tCtrEmpty;
    logic nwCtrLd, nwCtrEn, nwCtrEmpty;
    logic [20:0] nwCtrData;

    logic icap_read_tlast;
    logic icap_done;

    icapControl_t icap_ctrl_tdata;
    logic icap_ctrl_tvalid;
    logic icap_ctrl_tready;

    logic  read_tvalid_gate;
    logic  read_tready_gate;
    logic  read_gate_en;
    (* KEEP = "TRUE" *) logic [7:0] tCtrValue;
    logic [7:0] stateDebug;


    //gate the read fifo signals to sync with the DM
    always_comb
    begin
        read_tvalid = read_tvalid_gate;
        read_tready_gate = read_tready;
        if(read_gate_en)
        begin
            read_tvalid = 0;
            read_tready_gate = 0;
        end
    end
    

    icap_controller_top #(
        .C_INVALID_CYCLES(C_INVALID_CYCLES),
        .C_DUMMY_WORDS(C_DUMMY_WORDS),
        .C_ICAP_VERSION(C_ICAP_VERSION)
      ) icap_controler_inst(
        .aclk        ( aclk),
        .aresetn     ( aresetn),
        .ctrl_data   ( icap_ctrl_tdata),
        .ctrl_valid  ( icap_ctrl_tvalid),
        .ctrl_ready  ( icap_ctrl_tready),
        .done        ( icap_done),
        .write_data  ( write_tdata),
        .write_valid ( write_tvalid),
        .write_ready ( write_tready),
        .write_last  ( write_tlast),
        .read_data   ( read_tdata),
        .read_valid  ( read_tvalid_gate),
        .read_ready  ( read_tready_gate),
        .read_last   ( icap_read_tlast),
        .read_keep   ( read_tkeep ), 
        .error       ( prRwError )
    );


    counter_0 #(.C_WIDTH(8)) transactionCounterInst (
        .aclk(aclk),
        .load(tCtrLd),
        .loadData(0),
        .incr(tCtrIncr),
        .decr(tCtrDecr),
        .empty(tCtrEmpty),
        .count(tCtrValue)
    );

    counter_0 #(.C_WIDTH(21)) numWritesCtrInst (
        .aclk(aclk),
        .load(nwCtrLd),
        .loadData(nwCtrData),
        .incr(0),
        .decr(nwCtrEn),
        .empty(nwCtrEmpty)
    );

    enum {ST_INIT=0, ST_S1, ST_S2W, ST_S3W, ST_S2R, ST_READ_MAIN, ST_READ_WAIT, ST_READ_WAIT_LAST, ST_WAIT_ICAP, ST_WAIT_DM} cs, ns;

    always_ff @ (posedge aclk)
    begin
        if(!aresetn)
            cs <= ST_S1;
        else
            cs <= ns;
    end

    always_comb
    begin
        ns = cs;
        stateDebug = 0;
        cmd_Tready = 0;
        prRwBusy = 0;
        prRwDone = 0;
        dmMM2SCmd_Tvalid = 0;
        dmS2MMCmd_Tvalid = 0;
        icap_ctrl_tdata.rdwrb = CTRL_WRITE;
        icap_ctrl_tvalid = 0;

        regBaseAddressEn = 0;
        regNumBytesEn = 0;
        regOpcodeEn = 0;
        selBaseAddress = 0;
        selNumBytes = 0;
        selDmBtt = 0;

        dmMM2SCmd_Tdata.dmEof = 0;
        //dmS2MMCmd_Tdata.dmEof = 0;
        tCtrLd = 0;
        tCtrIncr = 0;

        nwCtrLd = 0;
        nwCtrEn = 0;
        read_tlast = 0;

        read_gate_en = 1;
        
        case(cs)
            ST_INIT:
            begin
                stateDebug = 1;
                cmd_Tready = 0;
                ns = ST_S1;
            end
            ST_S1:
            begin
                stateDebug = 2;
                cmd_Tready = 1;
                regBaseAddressEn = 1;
                regNumBytesEn    = 1;
                regOpcodeEn      = 1;
                tCtrLd          = 1;
                if( cmd_Tvalid )
                    if( cmd_Tdata.cmdOpcode == OP_WRITE )
                        ns = ST_S2W;
                    else
                        ns = ST_S2R;
                end
            ST_S2W:
            begin
                stateDebug = 3;
                icap_ctrl_tdata.rdwrb = CTRL_WRITE;
                icap_ctrl_tvalid = 1;
                prRwBusy       = 1;
                if(icap_ctrl_tready)
                    ns = ST_S3W;
            end
            ST_S3W:
            begin
                stateDebug = 4;
                dmMM2SCmd_Tvalid = 1;
                prRwBusy = 1;
                if(dmMM2SCmd_Tready)
                begin
                    tCtrIncr = 1;
                    if(compareResult)
                    begin
                        selDmBtt = 1;
                        dmMM2SCmd_Tdata.dmEof = 1;
                        ns = ST_WAIT_ICAP;
                    end
                    else
                    begin
                        selBaseAddress = 1;
                        regBaseAddressEn = 1;
                        selNumBytes = 1;
                        regNumBytesEn = 1;
                    end
                end
            end
            ST_S2R:
            begin
                stateDebug = 'h11;
                icap_ctrl_tdata.rdwrb = CTRL_READ;
                icap_ctrl_tvalid = 1;
                prRwBusy = 1;
                if(icap_ctrl_tready)
                    ns = ST_READ_MAIN;
            end
            ST_READ_MAIN:
            begin
                stateDebug = 'h12;
                dmS2MMCmd_Tvalid = 1;
                prRwBusy = 1;
                nwCtrLd = 1;
                if(dmS2MMCmd_Tready)
                begin
                    tCtrIncr = 1;
                    //if last transfer
                    if(compareResult)
                    begin
                        selDmBtt = 1;
                        //dmS2MMCmd_Tdata.dmEof = 1;
                        ns = ST_READ_WAIT_LAST;
                    end
                    else
                    begin
                        selBaseAddress = 1;
                        regBaseAddressEn = 1;
                        selNumBytes = 1;
                        regNumBytesEn = 1;
                        ns = ST_READ_WAIT;
                    end
                end
            end
            ST_READ_WAIT:
            begin
                stateDebug = 'h13;
                prRwBusy = 1;
                read_gate_en = 0;
                if(read_tvalid_gate & read_tready_gate)
                begin
                    nwCtrEn = 1;
                    if(nwCtrEmpty)
                    begin
                        read_tlast = 1;
                        ns = ST_READ_MAIN;
                    end
                end
            end
            ST_READ_WAIT_LAST:
            begin
                stateDebug = 'h14;
                prRwBusy = 1;
                read_gate_en = 0;
                if(read_tvalid_gate & read_tready_gate)
                begin
                    nwCtrEn = 1;
                    if(nwCtrEmpty)
                    begin
                        read_tlast = 1;
                        ns = ST_WAIT_DM;
                    end
                end
            end
            ST_WAIT_ICAP:
            begin
                stateDebug = 5;
                prRwBusy = 1;
                if(icap_done)
                begin
                    prRwDone = 1;
                    ns = ST_S1;
                end
            end
            ST_WAIT_DM:
            begin
                stateDebug = 'h15;
                prRwBusy = 1;
                if(tCtrEmpty)
                begin
                    prRwDone = 1;
                    ns = ST_S1;
                end
            end
        endcase
    end

    always_comb
    begin
        //dmMM2SCmd_Tdata.dmxCache = 0;
        //dmMM2SCmd_Tdata.dmXuser  = 0;
        dmMM2SCmd_Tdata.dmRsvd   = 0;
        dmMM2SCmd_Tdata.dmTag    = 0;
        dmMM2SCmd_Tdata.dmSaddr  = regBaseAddress;
        dmMM2SCmd_Tdata.dmDrr    = 1;
        //dmMM2SCmd_Tdata.dmEof    = 1;
        dmMM2SCmd_Tdata.dmDsa    = 0;
        dmMM2SCmd_Tdata.dmType   = 1;
        dmMM2SCmd_Tdata.dmBtt    = dmBtt;

        //dmS2MMCmd_Tdata.dmxCache = 0;
        //dmS2MMCmd_Tdata.dmXuser  = 0;
        dmS2MMCmd_Tdata.dmRsvd   = 0;
        dmS2MMCmd_Tdata.dmTag    = 0;
        dmS2MMCmd_Tdata.dmSaddr  = regBaseAddress;
        dmS2MMCmd_Tdata.dmDrr    = 1;
        dmS2MMCmd_Tdata.dmEof    = 1;
        dmS2MMCmd_Tdata.dmDsa    = 0;
        dmS2MMCmd_Tdata.dmType   = 1;
        dmS2MMCmd_Tdata.dmBtt    = dmBtt;

        icap_ctrl_tdata.rsvd = 0;
        icap_ctrl_tdata.size  = regNumBytes[C_SIZE_WIDTH-1:2];
    end

    assign dmMM2SStatus_Tready = 1;
    assign dmS2MMStatus_Tready = 1;
    assign tCtrDecr = (dmMM2SStatus_Tvalid | dmS2MMStatus_Tvalid);

    //_Tdatapath Circuit
    reg_sync_en #(.C_WIDTH(C_ADDR_WIDTH)) regBaseAddressInst (aclk, aresetn, regBaseAddressEn, regBaseAddressDin, regBaseAddress);
    reg_sync_en #(.C_WIDTH(C_SIZE_WIDTH)) regNumBytesInst (aclk, aresetn, regNumBytesEn, regNumBytesDin, regNumBytes);
    reg_sync_en #(.C_WIDTH(1))  regOpcodeInst (aclk, aresetn, regOpcodeEn, cmd_Tdata.cmdOpcode[0], regOperation);

    assign baseAddressSum = C_DM_MAX_SIZE + regBaseAddress;
    assign regBaseAddressDin = selBaseAddress ? baseAddressSum : cmd_Tdata.cmdAddress;

    assign numBytesDiff = regNumBytes - C_DM_MAX_SIZE;
    assign regNumBytesDin = selNumBytes ? numBytesDiff : cmd_Tdata.cmdSize;
    assign dmBtt = selDmBtt ? regNumBytes : C_DM_MAX_SIZE;
    //assign nwCtrData = dmBtt[22:2] - 1;
    
    //divide by 8 becase we switch to 64 bits
    //if odd round up to not miss last 4 byte transaction
    assign nwCtrData = dmBtt[2] ? (dmBtt[22:3] + 1) - 1: dmBtt[22:3] - 1;
    assign compareResult = regNumBytes <= C_DM_MAX_SIZE ? 1 : 0;

    assign prDebug[31:24] = tCtrValue;
    assign prDebug[23:8]  = 0;
    assign prDebug[7:0]   = stateDebug;


endmodule

module counter_0 
#(
    parameter C_WIDTH = 32
)
(
    input logic aclk,
    input logic load,
    input logic [C_WIDTH-1:0] loadData,
    input logic incr,
    input logic decr,
    output logic empty,
    output logic [C_WIDTH-1:0] count
);
logic [C_WIDTH-1:0] regCount;
always_ff @ (posedge aclk)
begin
    if(load)
        regCount <= loadData;
    else if(incr && ~decr)
        regCount <= regCount + 1;
    else if(~incr && decr && ~empty)
        regCount <= regCount - 1;
end
assign empty = ~|regCount;
assign count = regCount;
endmodule
