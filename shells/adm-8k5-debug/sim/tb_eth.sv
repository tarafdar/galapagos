`timescale 1 ns/ 1ps



module eth_stimulate
                    (
                     output reg [63:0] data,
                     output reg [7:0] keep, 
                     output reg last,
                     output reg valid,
                     input ready,
                     input [63:0] data_in,
                     input [7:0] keep_in, 
                     input last_in,
                     input valid_in,
                     output reg ready_in
                    );


    parameter [47:0] MAC_ADDR_FPGA = 48'hfa163e55ca02; 
    parameter [47:0] MAC_ADDR_STIM = 48'h0cc47a88c047; 
    

    initial begin
           
        #50
        //ethernet_header(input [63:0] num, input [47:0] src_mac, input [47:0] dst_mac, input [7:0] dest);
        ethernet_header(64'd0, 48'h0cc47a88c047, 48'hfa163e55ca02, 8'h00);
        gen_transaction(64'd2, 64'h0100000100030000, 8'hff, 1'b0);
        gen_transaction(64'd3, 64'h5073930200000000, 8'h0f, 1'b1);
         
    end
    
task waitForEthernetHeader();
    
    wait_sequence = reverseEndian64_data({MAC_ADDR_STIM, MAC_ADDR_FPGA[47:32]});
    //wait for the right ethernet header
    wait(data_in == wait_sequence); 
    //wait for the right ethernet header
    wait_sequence = reverseEndian64_data({MAC_ADDR_FPGA[31:0],16'h7400,src_rank,8'hxx}); 
    wait(data_in == wait_sequence); 


endtask


task ethernet_header(input [63:0] num, input [7:0] dest);
    //send first flit of ethernet header
    data = reverseEndian64_data({MAC_ADDR_FPGA, MAC_ADDR_STIM[47:32]});
    keep = 8'hff;
    last = 0;
    wait(ready);
    valid = 1;
    #10
    data = reverseEndian64_data({MAC_ADDR_STIM[31:0], 16'h7400, dest, 8'd0});
    keep = 8'hff;
    last = 0;
    wait(ready);
    valid = 1;
    #10
    valid = 0;
  $display("Transaction %d, dest %h", num, dest);
endtask



task gen_transaction(input [63:0] num, input [63:0] data_task, input [7:0] keep_task, input last_task);

  
  data = data_task;
  keep = keep_task;
  last = last_task;
  wait(ready);
  valid = 1;
  #10
  valid = 0;
  $display("Transaction %d, Data: %h, keep %h, last %b", num, data_task, keep_task, last_task);
  
endtask


function bit [63:0] reverseEndian64_data (input [63:0] data_task);
    bit [63:0] temp;
    temp = (data_task & 64'h00000000FFFFFFFF) << 32 | (data_task & 64'hFFFFFFFF00000000) >> 32;
    temp = (temp & 64'h0000FFFF0000FFFF) << 16 | (temp & 64'hFFFF0000FFFF0000) >> 16;
    reverseEndian64_data = (temp & 64'h00FF00FF00FF00FF) << 8  | (temp & 64'hFF00FF00FF00FF00) >> 8;
endfunction

function bit[7:0] reverseEndian64_keep(input [7:0] keep_task);
    bit [7:0] temp ;
    temp = (keep_task & 8'hF0) >> 4 | (keep_task & 8'h0F) << 4;
    temp = (temp & 8'hCC) >> 2 | (temp & 8'h33) << 2;
    reverseEndian64_keep = (temp & 8'hAA) >> 1 | (temp & 8'h55) << 1;
endfunction

endmodule
