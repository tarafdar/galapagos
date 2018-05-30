`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2018 12:23:38 PM
// Design Name: 
// Module Name: axi_intf
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

typedef struct packed {
	logic [7:0]  cmdOpcode;
	logic [39:0] cmdAddress;
	logic [31:0] cmdSize;
} cmd_t;

module axi_intf(
    input logic  aclk,
    input logic  aresetn,
    input logic  [31:0]  s_axi_awaddr, // Write address (optional)
    input logic          s_axi_awvalid, // Write address valid (optional)
    output logic         s_axi_awready, // Write address ready (optional)
    input logic  [31:0]  s_axi_wdata, // Write data (optional)
    input logic          s_axi_wvalid, // Write valid (optional)
    output logic         s_axi_wready, // Write ready (optional)
    output logic  [1:0]  s_axi_bresp, // Write response (optional)
    output logic         s_axi_bvalid, // Write response valid (optional)
    input logic          s_axi_bready, // Write response ready (optional)
    input logic  [31:0]  s_axi_araddr, // Read address (optional)
    input logic          s_axi_arvalid, // Read address valid (optional)
    output logic         s_axi_arready, // Read address ready (optional)
    output logic  [31:0] s_axi_rdata, // Read data (optional)
    output logic  [1:0]  s_axi_rresp, // Read response (optional)
    output logic         s_axi_rvalid, // Read valid (optional)
    input logic          s_axi_rready, // Read ready (optional)
	
	output cmd_t cmd_Tdata,
	output logic cmd_Tvalid,
	input logic  cmd_Tready,
    input logic prRwDone,
    input logic [1:0] prRwError, 
    input logic dmError,
    input logic [31:0] prDebug,
    output logic done
    );
	
	logic [31:0] wdata;
	logic reg0WrEn;
	logic reg1WrEn;
	logic reg2WrEn;
    logic reg3WrEn, reg3WrEnFf;
	logic reg4WrEn;
	logic reg5WrEn;
	logic reg6WrEn;
	logic reg7WrEn;

	logic [31:0] reg0Data;
	logic [31:0] reg1Data;
	logic [31:0] reg2Data;
	logic [31:0] reg3Data;
	logic [31:0] reg4Data;
	logic [31:0] reg5Data;
	logic [31:0] reg6Data;
	logic [31:0] reg7Data;

    logic [31:0] regNumTrans;
    logic regNumTransEn;
    logic regNumTransSel;
    logic regNumTransZero;

    enum logic [2:0] {ST_INIT, ST_IDLE, ST_WAIT_ALL, ST_DONE_WAIT} ns, cs;

    cmd_t cmdFifoDataIn;
    logic cmdFifoWrEn;
    logic cmdFifoFull;
    cmd_t cmdFifoDataOut;
    logic cmdFifoEmpty;
    logic cmdFifoRdEn;
    logic cmdFifoRstBusy;

    logic busy;
    logic doneAck;

    logic B;

    logic [1:0] prRwErrorSticky;
    logic  dmErrorSticky;

	axi_block axi_block_inst ( .* );
    fwft_sync_fifo #(
        .FIFO_WRITE_DEPTH(512),
        .WRITE_DATA_WIDTH(80),
        .READ_DATA_WIDTH(80)
    ) fifo_inst (
        .clk(aclk),
        .rstn(aresetn),
        .din( cmdFifoDataIn ),
        .wr_en( cmdFifoWrEn ),
        .full( cmdFifoFull ),
        .dout( cmdFifoDataOut ),
        .empty( cmdFifoEmpty ),
        .rd_en( cmdFifoRdEn ),
        .almost_full( ),
        .almost_empty( ),
        .rst_busy( cmdFifoRstBusy )
    );
    //Control Path
    
    always @ (posedge aclk)
    begin
        if(~aresetn)
            cs <= ST_INIT;
        else
            cs <= ns;
    end

    always_comb
    begin
        ns = cs;
        busy = 0;
        done = 0;

        regNumTransEn = 0;
        regNumTransSel = 0;

        B = 0;

        case(cs)
            ST_INIT:
            begin
                busy = 1;
                if(~cmdFifoRstBusy)
                    ns = ST_IDLE;
            end
            ST_IDLE:
            begin
                regNumTransEn = 1;
                if(reg4WrEn)
                    ns = ST_WAIT_ALL;
            end
            ST_WAIT_ALL:
            begin
                busy = 1;
                B = 1;
                if(prRwDone)
                    if(regNumTransZero)
                        ns = ST_DONE_WAIT;
                    else
                    begin
                        regNumTransSel = 1;
                        regNumTransEn  = 1;
                    end
            end
            ST_DONE_WAIT:
            begin
                busy = 1;
                done = 1;
                if(doneAck)
                    ns = ST_IDLE;
            end
        endcase
    end

    //DataPath
    always @ (posedge aclk)
    begin
        if(reg0WrEn)
            cmdFifoDataIn.cmdOpcode <= wdata[7:0];
        if(reg1WrEn)
            cmdFifoDataIn.cmdAddress[39:32] <= wdata[7:0];
        if(reg2WrEn)
            cmdFifoDataIn.cmdAddress[31:0] <= wdata;
        if(reg3WrEn)
            cmdFifoDataIn.cmdSize <= wdata;
    end
    always_comb
    begin
        reg0Data = cmdFifoDataIn.cmdOpcode;
        reg1Data = cmdFifoDataIn.cmdAddress[39:32];
        reg2Data = cmdFifoDataIn.cmdAddress[31:0];
        reg3Data = cmdFifoDataIn.cmdSize;
        reg4Data = 0;
        reg5Data = {dmErrorSticky, prRwErrorSticky, busy, done};
        reg6Data = prDebug;
        reg7Data = 0;
    end

    assign doneAck = wdata[0] & reg5WrEn;

    //Write to fifo when Size register is written too
    //Does not check for full, assuming fifo is big enough
    always @ (posedge aclk)
        if(~aresetn)
            reg3WrEnFf <= 0;
        else
            reg3WrEnFf <= reg3WrEn & ~busy;
    
    assign cmdFifoWrEn = B ? 0 : reg3WrEnFf;

    //datapath for numTrans
    always @ (posedge aclk)
    begin
        if(regNumTransEn)
            if(regNumTransSel)
                regNumTrans <= regNumTrans - 1;
            else
                regNumTrans <= wdata-1;
    end

    always @ (posedge aclk)
    begin
        if(~aresetn)
            prRwErrorSticky <= 0;
        else 
        begin
            if(prRwError[0])
                prRwErrorSticky[0] <= 1;
            if(prRwError[1])
                prRwErrorSticky[1] <= 1;
        end
    end

    always @ (posedge aclk)
    begin
        if(~aresetn)
            dmErrorSticky <= 0;
        else if(dmError)
            dmErrorSticky <= 1;
    end

    assign regNumTransZero = ~|regNumTrans;

    assign cmd_Tdata = cmdFifoDataOut;
    assign cmd_Tvalid  =  B ? ~cmdFifoEmpty : 0;
    assign cmdFifoRdEn =  B ? cmd_Tready : 0;
endmodule

module axi_block #(
	parameter C_NUM_REGISTERS = 8
)(
    input logic  aclk, input logic  aresetn,
    input logic  [31:0]  s_axi_awaddr,
    input logic          s_axi_awvalid,
    output logic         s_axi_awready,
    input logic  [31:0]  s_axi_wdata,
    input logic          s_axi_wvalid,
    output logic         s_axi_wready,
    output logic  [1:0]  s_axi_bresp,
    output logic         s_axi_bvalid,
    input logic          s_axi_bready,
    input logic  [31:0]  s_axi_araddr,
    input logic          s_axi_arvalid,
    output logic         s_axi_arready,
    output logic  [31:0] s_axi_rdata,
    output logic  [1:0]  s_axi_rresp,
    output logic         s_axi_rvalid,
    input logic          s_axi_rready,
	
	output logic  [31:0] wdata,
	output logic  reg0WrEn,
	output logic  reg1WrEn,
	output logic  reg2WrEn,
	output logic  reg3WrEn,
	output logic  reg4WrEn,
	output logic  reg5WrEn,
	output logic  reg6WrEn,
	output logic  reg7WrEn,

	input logic  [31:0] reg0Data,
	input logic  [31:0] reg1Data,
	input logic  [31:0] reg2Data,
	input logic  [31:0] reg3Data,
	input logic  [31:0] reg4Data,
	input logic  [31:0] reg5Data,
	input logic  [31:0] reg6Data,
	input logic  [31:0] reg7Data
);
logic [2:0] regRdAddr; 
logic regRdAddrEn;

logic [7:0] wrOneHot;
logic [7:0] regWrOneHot; 
logic regWrOneHotRegEn;

logic [7:0] regWrEnablesOut;
logic regWrEnablesOutSel;
//Control path for read channel
enum logic {ST_S0R, ST_S1R} rd_cs, rd_ns;
always_ff @ (posedge aclk)
    if(~aresetn)
        rd_cs <= ST_S0R;
    else
        rd_cs <= rd_ns;

always_comb
begin
    s_axi_arready = 0;
    s_axi_rvalid  = 0;
    regRdAddrEn   = 0;
    rd_ns = rd_cs;
    if(rd_cs == ST_S0R)
    begin
        s_axi_arready = 1;
        regRdAddrEn = 1;
        if(s_axi_arvalid)
            rd_ns = ST_S1R;
    end
    else
    begin
        s_axi_rvalid = 1;
        if(s_axi_rready)
            rd_ns = ST_S0R;
    end
end
//Data path for Read Channel
//multiplexer
always_comb
    case(regRdAddr)
        0: s_axi_rdata = reg0Data;
        1: s_axi_rdata = reg1Data;
        2: s_axi_rdata = reg2Data;
        3: s_axi_rdata = reg3Data;
        4: s_axi_rdata = reg4Data;
        5: s_axi_rdata = reg5Data;
        6: s_axi_rdata = reg6Data;
        7: s_axi_rdata = reg7Data;
    endcase

always_ff @ (posedge aclk)
begin
    if(regRdAddrEn)
        regRdAddr <= s_axi_araddr[4:2];
end
//Control path for Write Channel

enum logic [1:0] {ST_S0 = 0, ST_S1, ST_S2} wr_cs, wr_ns;
always_ff @ (posedge aclk)
begin
    if(~aresetn)
        wr_cs <= ST_S0;
    else
        wr_cs <= wr_ns;
end

always_comb
begin
    wr_ns = wr_cs;
    s_axi_awready = 0;
    s_axi_wready  = 0;
    s_axi_bvalid  = 0;
    regWrOneHotRegEn   = 0;
    regWrEnablesOutSel    = 0;

    case(wr_cs)
        ST_S0:
        begin
            s_axi_awready = 1;
            regWrOneHotRegEn = 1;
            if(s_axi_awvalid)
                wr_ns = ST_S1;
        end
        ST_S1:
        begin
            s_axi_wready = 1;
            if(s_axi_wvalid)
            begin
                regWrEnablesOutSel = 1;
                wr_ns = ST_S2;
            end
        end
        ST_S2:
        begin
            s_axi_bvalid = 1;
            if(s_axi_bready)
                wr_ns = ST_S0;
        end
    endcase

end

//Datapath for Write Channels

always_ff @ (posedge aclk)
begin
    if(regWrOneHotRegEn)
        regWrOneHot <= wrOneHot;
end

//oneHotEncoder ohe_inst1 (.inData(s_axi_awaddr[4:2]), .outData(wrOneHot));
    always_comb
    begin
        wrOneHot = 0;
        case(s_axi_awaddr[4:2])
            0: wrOneHot = 8'b00000001;
            1: wrOneHot = 8'b00000010;
            2: wrOneHot = 8'b00000100;
            3: wrOneHot = 8'b00001000;
            4: wrOneHot = 8'b00010000;
            5: wrOneHot = 8'b00100000;
            6: wrOneHot = 8'b01000000;
            7: wrOneHot = 8'b10000000;
        endcase
    end   

assign regWrEnablesOut = regWrEnablesOutSel ? regWrOneHot : 0;
assign reg0WrEn = regWrEnablesOut[0];
assign reg1WrEn = regWrEnablesOut[1];
assign reg2WrEn = regWrEnablesOut[2];
assign reg3WrEn = regWrEnablesOut[3];
assign reg4WrEn = regWrEnablesOut[4];
assign reg5WrEn = regWrEnablesOut[5];
assign reg6WrEn = regWrEnablesOut[6];
assign reg7WrEn = regWrEnablesOut[7];


assign wdata = s_axi_wdata;
assign s_axi_bresp = 0;
assign s_axi_rresp = 0;
endmodule

