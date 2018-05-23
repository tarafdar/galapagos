`timescale 1ns / 1ps
//`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2017 05:13:37 PM
// Design Name: 
// Module Name: icap_controller
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

module icap_controller_top #(
        parameter C_ICAP_VERSION   = 3,
        parameter C_INVALID_CYCLES = 3,
        parameter C_DUMMY_WORDS    = 123 + 10
    )(
        input logic aclk,
        input logic aresetn,
        input icapControl_t ctrl_data,
        input logic ctrl_valid,
        output logic ctrl_ready,
        output logic done,

        input logic [31:0] write_data,
        input logic write_valid,
        output logic  write_ready,
        input  logic write_last,

        output logic [63:0] read_data,
        output logic read_valid,
        input logic  read_ready,
        output logic read_last, 
        output logic [7:0]  read_keep,

        output logic [1:0] error
    );
    logic axi_fifo_s00_tvalid;
    logic axi_fifo_s00_tready;
    logic [31:0] axi_fifo_s00_tdata;
    logic axi_fifo_s00_tlast;

    //logic axi_fifo_m00_tvalid;
    //logic axi_fifo_m00_tready;
    //logic [63:0] axi_fifo_m00_tdata;
    //logic axi_fifo_m00_tlast;
    //logic [7:0] axi_fifo_m00_tkeep;

    logic icap_error;


//   axis_interconnect_0 axi_fifo_inst (
//       .ACLK(aclk),                                // input wire ACLK
//       .ARESETN(aresetn),                          // input wire ARESETN
//       .S00_AXIS_ACLK(aclk),              // input wire S00_AXIS_ACLK
//       .S00_AXIS_ARESETN(aresetn),        // input wire S00_AXIS_ARESETN
//       .S00_AXIS_TVALID(axi_fifo_s00_tvalid),          // input wire S00_AXIS_TVALID
//       .S00_AXIS_TREADY(axi_fifo_s00_tready),          // output wire S00_AXIS_TREADY
//       .S00_AXIS_TDATA(axi_fifo_s00_tdata),            // input wire [31 : 0] S00_AXIS_TDATA
//       .S00_AXIS_TKEEP(4'b1111),            // input wire [3 : 0] S00_AXIS_TKEEP
//       .S00_AXIS_TLAST(axi_fifo_s00_tlast),            // input wire S00_AXIS_TLAST
//       .M00_AXIS_ACLK(aclk),              // input wire M00_AXIS_ACLK
//       .M00_AXIS_ARESETN(aresetn),        // input wire M00_AXIS_ARESETN
//       .M00_AXIS_TVALID(read_valid),          // output wire M00_AXIS_TVALID
//       .M00_AXIS_TREADY(read_ready),          // input wire M00_AXIS_TREADY
//       .M00_AXIS_TDATA(read_data),            // output wire [31 : 0] M00_AXIS_TDATA
//       .M00_AXIS_TKEEP(read_keep),            // output wire [3 : 0] M00_AXIS_TKEEP
//       .M00_AXIS_TLAST(read_last)            // output wire M00_AXIS_TLAST
////       .S00_FIFO_DATA_COUNT()  // output wire [31 : 0] S00_FIFO_DATA_COUNT
//   );




logic abc_tvalid;
logic abc_tready;
logic [63 : 0] abc_tdata;
logic [7 : 0] abc_tkeep;
logic abc_tlast;

axis_dwidth_converter_0 axis_width_conv_inst (
     .aclk(aclk),                    // input wire aclk
     .aresetn(aresetn),              // input wire aresetn
     .s_axis_tvalid(axi_fifo_s00_tvalid),  // input wire s_axis_tvalid
     .s_axis_tready(axi_fifo_s00_tready),  // output wire s_axis_tready
     .s_axis_tdata(axi_fifo_s00_tdata),    // input wire [31 : 0] s_axis_tdata
     .s_axis_tkeep(4'b1111),    // input wire [3 : 0] s_axis_tkeep
     .s_axis_tlast(axi_fifo_s00_tlast),    // input wire s_axis_tlast
     .m_axis_tvalid(abc_tvalid),  // output wire m_axis_tvalid
     .m_axis_tready(abc_tready),  // input  wire m_axis_tready
     .m_axis_tdata(abc_tdata),    // output wire [63 : 0] m_axis_tdata
     .m_axis_tkeep(abc_tkeep),    // output wire [7 : 0] m_axis_tkeep
     .m_axis_tlast(abc_tlast)    // output  wire m_axis_tlast
   );
axis_data_fifo_0 axis_fifo_inst (
     .s_axis_aresetn(aresetn),          // input wire s_axis_aresetn
     .s_axis_aclk(aclk),                // input wire s_axis_aclk
     .s_axis_tvalid(abc_tvalid),            // input wire s_axis_tvalid
     .s_axis_tready(abc_tready),            // output wire s_axis_tready
     .s_axis_tdata(abc_tdata),              // input wire [63 : 0] s_axis_tdata
     .s_axis_tkeep(abc_tkeep),              // input wire [7 : 0] s_axis_tkeep
     .s_axis_tlast(abc_tlast),              // input wire s_axis_tlast
     .m_axis_tvalid(read_valid),            // output wire m_axis_tvalid
     .m_axis_tready(read_ready),            // input wire m_axis_tready
     .m_axis_tdata(read_data),              // output wire [63 : 0] m_axis_tdata
     .m_axis_tkeep(read_keep),              // output wire [7 : 0] m_axis_tkeep
     .m_axis_tlast(read_last),              // output wire m_axis_tlast
     .axis_data_count(),        // output wire [31 : 0] axis_data_count
     .axis_wr_data_count(),  // output wire [31 : 0] axis_wr_data_count
     .axis_rd_data_count()  // output wire [31 : 0] axis_rd_data_count
   );
   //use the most of siginficant bit of fifo data for last
   //assign fifo_din = {fifo_last, icap_data_o_swapped};

icap_controller #(
  .C_ICAP_VERSION(C_ICAP_VERSION),
  .C_INVALID_CYCLES(C_INVALID_CYCLES),
  .C_DUMMY_WORDS(C_DUMMY_WORDS)
) icap_controller_inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .ctrl_data(ctrl_data),
    .ctrl_valid(ctrl_valid),
    .ctrl_ready(ctrl_ready),
    .done(done),

    .write_data(write_data),
    .write_valid(write_valid),
    .write_ready(write_ready),
    .write_last(write_last),

    .read_data(axi_fifo_s00_tdata),
    .read_valid(axi_fifo_s00_tvalid),
    .read_ready(axi_fifo_s00_tready),
    .read_last(axi_fifo_s00_tlast), 

    .error(icap_error)

);
assign error = {(abc_tvalid & ~abc_tready), icap_error};
endmodule
//fsm
module icap_controller
#(
    parameter C_ICAP_VERSION = 3,
    parameter C_INVALID_CYCLES = 3,
    parameter C_DUMMY_WORDS    = 123 + 10
)
(
    input logic aclk,
    input logic aresetn,
    input icapControl_t ctrl_data,
    input logic ctrl_valid,
    output logic ctrl_ready,
    output logic done,

    input logic [31:0] write_data,
    input logic write_valid,
    output logic  write_ready,
    input  logic write_last,

    output logic [31:0] read_data,
    output logic read_valid,
    input logic  read_ready,
    output logic read_last, 

    output logic error

);
    parameter C_NUMWORDS_WIDTH = 27;
   logic icap_avail;
   logic icap_csib;
   logic icap_rdwrb;
   
   logic [C_NUMWORDS_WIDTH-1:0] regNumWords;
   logic regNumWordsEn;

   logic regRdwrb;
   logic regRdwrbEn;

   logic [C_NUMWORDS_WIDTH-1:0] regCounterDin, regCounter, decCounter;
   logic regCounterEn;
   logic [1:0] regCounterSel;
   logic zero;

   logic [31:0] icap_data_o;
   logic [31:0] icap_data_i;
   logic icap_prdone;
   logic icap_prerror;
    reg_sync_en #(.C_WIDTH(C_NUMWORDS_WIDTH)) regNumWordsInst (.clk(aclk), .resetn(aresetn), .en(regNumWordsEn), .din(ctrl_data.size), .dout(regNumWords));
    reg_sync_en #(.C_WIDTH(1))                regRdwrbInst    (.clk(aclk), .resetn(aresetn), .en(regRdwrbEn), .din(ctrl_data.rdwrb), .dout(regRdwrb));
    reg_sync_en #(.C_WIDTH(C_NUMWORDS_WIDTH)) regCounterInst  (.clk(aclk), .resetn(aresetn), .en(regCounterEn), .din(regCounterDin), .dout(regCounter));

if(C_ICAP_VERSION == 3)
begin
   ICAPE3 #(
   .DEVICE_ID(32'h0390D093),     // Specifies the pre-programmed Device ID value to be used for simulation
   // purposes.
   .ICAP_AUTO_SWITCH("DISABLE"), // Enable switch ICAP using sync word
   .SIM_CFG_FILE_NAME()    // Specifies the Raw Bitstream (RBT) file to be parsed by the simulation
   // model
   )
   ICAPE3_inst (
       .AVAIL(icap_avail),     // 1-bit output: Availability status of ICAP
       .O(icap_data_o),             // 32-bit output: Configuration data output bus
       .PRDONE(icap_prdone),   // 1-bit output: Indicates completion of Partial Reconfiguration
       .PRERROR(icap_prerror), // 1-bit output: Indicates Error during Partial Reconfiguration
       .CLK(aclk),         // 1-bit input: Clock input
       .CSIB(icap_csib),       // 1-bit input: Active-Low ICAP enable
       .I(icap_data_i),             // 32-bit input: Configuration data input bus
       .RDWRB(icap_rdwrb)      // 1-bit input: Read/Write Select input
   );

end
else if (C_ICAP_VERSION == 2)
begin
   ICAPE2 #(
      .DEVICE_ID(0'h3651093),     // Specifies the pre-programmed Device ID value to be used for simulation
                                  // purposes.
      .ICAP_WIDTH("X32"),         // Specifies the input and output data width.
      .SIM_CFG_FILE_NAME("None")  // Specifies the Raw Bitstream (RBT) file to be parsed by the simulation
                                  // model.
   )
   ICAPE2_inst (
      .O(icap_data_o),         // 32-bit output: Configuration data output bus
      .CLK(aclk),     // 1-bit input: Clock Input
      .CSIB(icap_csib),   // 1-bit input: Active-Low ICAP Enable
      .I(icap_data_i),         // 32-bit input: Configuration data input bus
      .RDWRB(icap_rdwrb)  // 1-bit input: Read/Write Select input
   );
   counter_0 #(.C_WIDTH(8)) icap_avail_ctr_inst (
       .aclk(aclk),
       .load(~aresetn),
       .loadData(20),
       .incr(0),
       .decr(1),
       .empty(icap_avail)
   );
   assign icap_prerror = 0;
end
   assign icap_data_i = swapBits(write_data);
   assign read_data   = swapBits(icap_data_o);

   //sticky bit for icap errors
   always_ff @ (posedge aclk)
   begin
       if(~aresetn)
           error <= 0;
       else if(icap_prerror)
           error <= 1;
   end

   enum {ST_INIT=0, ST_IDLE, ST_WRITE, ST_WRITE_DEASSERT,  ST_READ_WAIT_VALID, ST_READ_DUMMY, ST_READ_REAL, ST_DONE} cs, ns;
   always_ff @ (posedge aclk)
   begin
       if(aresetn == 0)
           cs <= ST_INIT;
       else
           cs <= ns;
   end
   
   always_comb
   begin
       ns = cs;
       ctrl_ready     = 0;
       regNumWordsEn  = 0;
       regRdwrbEn     = 0;
       regCounterEn   = 0;
       regCounterSel  = 0;
       icap_csib      = 1;
       icap_rdwrb     = 1;
       write_ready    = 0;
       read_valid     = 0;
       read_last      = 0;
       done      = 0;

       case(cs)
           ST_INIT:
           begin
               if(icap_avail)
               begin
                   ns = ST_IDLE;
               end
           end
           ST_IDLE:
           begin
               ctrl_ready = 1;
               regCounterSel = 0;
               regCounterEn = 1;
               regNumWordsEn = 1;
               regRdwrbEn = 1;


               if(ctrl_valid)
               begin
                   if(ctrl_data.rdwrb)
                   begin
                       ns = ST_READ_WAIT_VALID;
                   end
                   else
                   begin
                       icap_rdwrb = 0;
                       ns = ST_WRITE;
                   end
               end
           end
           ST_WRITE:
           begin
               write_ready = 1;
               icap_rdwrb  = 0;
               if(write_valid)
               begin
                   icap_csib = 0;
                   if(write_last)
                   begin
                       ns = ST_WRITE_DEASSERT;
                   end
               end
           end
           ST_WRITE_DEASSERT:
           begin
               icap_rdwrb = 0;
               ns = ST_DONE;
           end
           ST_READ_WAIT_VALID:
           begin
               regCounterSel = 3;
               regCounterEn  = 1;
               icap_csib = 0;
               if(zero)
               begin
                   regCounterSel = 1;
                   ns = ST_READ_DUMMY;
               end
           end
           ST_READ_DUMMY:
           begin
               regCounterSel = 3;
               regCounterEn = 1;
               icap_csib = 0;
               if(zero)
               begin
                   regCounterSel = 2;
                   ns = ST_READ_REAL;
               end
           end
           ST_READ_REAL:
           begin
               regCounterSel = 3;
               regCounterEn = 1;
               icap_csib = 0;
               read_valid = 1;
               if(zero)
               begin
                   read_last = 1;
                   ns = ST_DONE;
               end
           end
           ST_DONE:
           begin
               done = 1;
               ns = ST_IDLE;
           end
       endcase

   end
   always_comb
       case(regCounterSel)
           0: regCounterDin = C_INVALID_CYCLES-1;
           1: regCounterDin = C_DUMMY_WORDS-1;
           2: regCounterDin = regNumWords - 1;
           3: regCounterDin = decCounter;
       endcase
       assign decCounter = regCounter - 1; 
       assign zero = ~|regCounter;
    function logic [31:0] swapBits(input logic [31:0] inWord);
        logic [31:0] outWord;
        for(int i = 0; i < 4; i++)
        begin
            for(int j = 0; j < 8; j++)
            begin
                outWord[i*8+j] = inWord[i*8 + (7-j)];
            end
        end
        return outWord;
    endfunction
endmodule
//module reg_sync_en #(
    //parameter C_WIDTH = 32,
    //parameter C_RESET_VAL = 0
//)
//(
    //input logic clk,
    //input logic resetn,
    //input logic en,
    //input logic [C_WIDTH-1:0] din,
    //output logic [C_WIDTH-1:0] dout
//);
    //always_ff @ (posedge clk)
    //begin
        //if(resetn == 0)
            //dout <= C_RESET_VAL;
        //else if(en)
            //dout <= din;
    //end
//endmodule
