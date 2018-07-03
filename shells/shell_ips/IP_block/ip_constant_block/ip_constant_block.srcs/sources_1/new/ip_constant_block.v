`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2017 04:04:25 PM
// Design Name: 
// Module Name: ip_constant_block
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


module ip_constant_block
    #(
        parameter [7:0] C_IP_B0 = 0,
        parameter [7:0] C_IP_B1 = 0,
        parameter [7:0] C_IP_B2 = 0,
        parameter [7:0] C_IP_B3 = 0,
          
        parameter [7:0] C_GATEWAY_B0 = 0,
        parameter [7:0] C_GATEWAY_B1 = 0,
        parameter [7:0] C_GATEWAY_B2 = 0,
        parameter [7:0] C_GATEWAY_B3 = 0,
           
        parameter [7:0] C_SUBNET_B0 = 0,
        parameter [7:0] C_SUBNET_B1 = 0,
        parameter [7:0] C_SUBNET_B2 = 0,
        parameter [7:0] C_SUBNET_B3 = 0,
        
        parameter [47:0] C_MAC = 0
//        parameter [7:0] C_MAC_B0 = 0,
//        parameter [7:0] C_MAC_B1 = 0,
//        parameter [7:0] C_MAC_B2 = 0,
//        parameter [7:0] C_MAC_B3 = 0,
//        parameter [7:0] C_MAC_B4 = 0,
//        parameter [7:0] C_MAC_B5 = 0

    )
    (
        output [31:0] ip,
        output [31:0] gateway,
        output [31:0] subnet,
        output [47:0] mac,
        output [47:0] mac_big
    );
    
    assign ip = swapBytesIP( {C_IP_B3,C_IP_B2,C_IP_B1,C_IP_B0} );
    assign gateway = swapBytesIP( {C_GATEWAY_B3,C_GATEWAY_B2,C_GATEWAY_B1,C_GATEWAY_B0} );
    assign subnet = swapBytesIP( {C_SUBNET_B3,C_SUBNET_B2,C_SUBNET_B1,C_SUBNET_B0} );
    assign mac    = swapBytesMAC( C_MAC );
    assign mac_big = C_MAC;
    function [31:0] swapBytesIP (input [31:0] word);
        swapBytesIP = {word[7:0], word[15:8], word[23:16], word[31:24]};
    endfunction
    function [47:0] swapBytesMAC (input [47:0] word);
        swapBytesMAC = {word[7:0], word[15:8], word[23:16], word[31:24], word[39:32], word[47:40]};
    endfunction
endmodule
