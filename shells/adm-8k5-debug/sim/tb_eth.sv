`timescale 1 ns/ 1ps



module eth_stimulate(
                     output reg [63:0] data,
                     output reg [7:0] keep, 
                     output reg last,
                     output reg valid,
                     input ready
                    );
    

    initial begin
           
        #50
        //ethernet_header(input [63:0] num, input [47:0] src_mac, input [47:0] dst_mac, input [7:0] dest);
        ethernet_header(64'd0, 48'h0cc47a88c047, 48'hfa163e55ca02, 8'h00);
        gen_transaction(64'd2, 64'h0100000100030000, 8'hff, 1'b0);
        gen_transaction(64'd3, 64'h5073930200000000, 8'h0f, 1'b1);
         
    end
    
task ethernet_header(input [63:0] num, input [47:0] src_mac, input [47:0] dst_mac, input [7:0] dest);
    //send first flit of ethernet header
    reverseEndian64_data({dst_mac, src_mac[47:32]});
    keep = 8'hff;
    last = 0;
    wait(ready);
    valid = 1;
    #10
    reverseEndian64_data({src_mac[31:0],dest, 8'd0});
    keep = 8'hff;
    last = 0;
    wait(ready);
    valid = 1;
    #10
  $display("Transaction %d, Destination MAC: %h, Source MAC %h, dest %h", num, dst_mac, src_mac, dest);
endtask



task gen_transaction(input [63:0] num, input [63:0] data_task, input [7:0] keep_task, input last_task);

  
  data = data_task;
  keep = keep_task;
  last = last_task;
  wait(ready);
  valid = 1;
  #10
  $display("Transaction %d, Data: %h, keep %h, last %b", num, data_task, keep_task, last_task);
  
endtask


task reverseEndian64_data(input [64:0] data_in);
    data = (data_in & 64'h00000000FFFFFFFF) << 32 | (data_in & 64'hFFFFFFFF00000000) >> 32;
    data = (data & 64'h0000FFFF0000FFFF) << 16 | (data & 64'hFFFF0000FFFF0000) >> 16;
    data = (data & 64'h00FF00FF00FF00FF) << 8  | (data & 64'hFF00FF00FF00FF00) >> 8;

endtask

task reverseEndian64_keep(input [7:0] keep_in);
    keep = (keep_in & 8'hF0) >> 4 | (keep_in & 8'h0F) << 4;
    keep = (keep & 8'hCC) >> 2 | (keep & 8'h33) << 2;
    keep = (keep & 8'hAA) >> 1 | (keep & 8'h55) << 1;
endtask

endmodule
