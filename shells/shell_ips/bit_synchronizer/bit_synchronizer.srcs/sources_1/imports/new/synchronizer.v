`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2018 07:45:11 PM
// Design Name: 
// Module Name: synchronizer
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


module synchronizer
#(parameter C_NUM_STAGES = 3)
(
    input sync_clk,
    input async_in,
    output sync_out
    );
(* ASYNC_REG="true" *) reg [C_NUM_STAGES-1:0] sync_reg;

always @ (posedge sync_clk)
begin
    sync_reg <= {sync_reg[C_NUM_STAGES-2:0], async_in};
end
assign sync_out = sync_reg[C_NUM_STAGES-1];
endmodule

