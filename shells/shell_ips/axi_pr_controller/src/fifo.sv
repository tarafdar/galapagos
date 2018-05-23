`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 07:21:33 PM
// Design Name: 
// Module Name: fifo
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


module fwft_sync_fifo
#(
parameter FIFO_WRITE_DEPTH = 512,
parameter WRITE_DATA_WIDTH = 32,
parameter READ_DATA_WIDTH = 32
)
    (
    input clk,
    input rstn,
    input [WRITE_DATA_WIDTH-1:0] din,
    input wr_en,
    output full,
    
    output [READ_DATA_WIDTH-1:0] dout,
    output empty,
    input  rd_en,
    
    output almost_full,
    output almost_empty,
    output rst_busy
    );
    logic rst;
    assign rst = ~rstn;
    
    // xpm_fifo_sync: Synchronous FIFO
    // Xilinx Parameterized Macro, Version 2017.3
    xpm_fifo_sync # (
    
      .FIFO_MEMORY_TYPE          ("auto"),           //string; "auto", "block", "distributed", or "ultra";
      .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
      .FIFO_WRITE_DEPTH          (FIFO_WRITE_DEPTH),             //positive integer
      .WRITE_DATA_WIDTH          (WRITE_DATA_WIDTH),               //positive integer
      .WR_DATA_COUNT_WIDTH       (9),               //positive integer
      .PROG_FULL_THRESH          (10),               //positive integer
      .FULL_RESET_VALUE          (1),                //positive integer; 0 or 1
      .USE_ADV_FEATURES          ("0808"),           //string; "0000" to "1F1F"; 
      .READ_MODE                 ("fwft"),            //string; "std" or "fwft";
      .FIFO_READ_LATENCY         (0),                //positive integer;
      .READ_DATA_WIDTH           (READ_DATA_WIDTH),               //positive integer
      .RD_DATA_COUNT_WIDTH       (9),               //positive integer
      .PROG_EMPTY_THRESH         (10),               //positive integer
      .DOUT_RESET_VALUE          ("0"),              //string
      .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
    
    ) xpm_fifo_sync_inst (
    
      .sleep            (1'b0),
      .rst              (rst),
      .wr_clk           (clk),
      .wr_en            (wr_en),
      .din              (din),
      .full             (full),
      .overflow         (),
      .prog_full        (),
      .wr_data_count    (),
      .almost_full      (almost_full),
      .wr_ack           (),
      .wr_rst_busy      (wr_rst_busy),
      .rd_en            (rd_en),
      .dout             (dout),
      .empty            (empty),
      .prog_empty       (),
      .rd_data_count    (),
      .almost_empty     (almost_empty),
      .data_valid       (),
      .underflow        (),
      .rd_rst_busy      (rd_rst_busy),
      .injectsbiterr    (1'b0),
      .injectdbiterr    (1'b0),
      .sbiterr          (),
      .dbiterr          ()
    
    );

    assign rst_busy = wr_rst_busy | rd_rst_busy;
    // End of xpm_fifo_sync instance declaration
endmodule
