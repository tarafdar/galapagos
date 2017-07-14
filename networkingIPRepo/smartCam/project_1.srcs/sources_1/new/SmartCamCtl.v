`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2017 04:45:27 PM
// Design Name: 
// Module Name: SmartCamCtl
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


module SmartCamCtl(
	input	clk,  
    input	rst,
    output led0,
    output led1,
    output cam_ready,

    input			lup_req_valid,    
    output			lup_req_ready,  //should be 96, also wrong in SmartCam
    input[97:0]  	lup_req_din,   

    output			lup_rsp_valid,   
    input			lup_rsp_ready,    
    output[15:0]	lup_rsp_dout,

    input			upd_req_valid,    
    output			upd_req_ready,    
    input [112:0]	upd_req_din,

    output			upd_rsp_valid,    
    input			upd_rsp_ready,    
    output [15:0]	upd_rsp_dout,   //(1 + 1 + 14 + 96) - 1 = 111 
    output [255:0] debug
    
);


endmodule
