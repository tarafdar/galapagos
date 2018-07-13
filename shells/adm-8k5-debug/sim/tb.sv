`timescale 1 ns/ 1ps



module testbench();

    
    reg clk;
    reg resetn;
   

    //from stimulus
    wire [7:0] keep;
    wire last;
    wire [63:0] data;
    wire valid;
    wire ready;
 
   //from dut 
    wire [7:0] keep_out;
    wire last_out;
    wire [63:0] data_out;
    wire valid_out;
    wire ready_out;

    
    always #5 clk = ~clk;
    
    
    
    initial begin
        clk = 0;
        #5 resetn = 1;
    end
    


    //choose stimulation
    mpi_eth_stimulate stimulus(
                            .data(data), 
                            .keep(keep), 
                            .last(last), 
                            .valid(valid), 
                            .ready(ready),
                            .data_in(data_out), 
                            .keep_in(keep_out), 
                            .last_in(last_out), 
                            .valid_in(valid_out), 
                            .ready_in(ready_out)
                       );

   top_sim dut(
    .clk(clk),
    .resetn(resetn),
    .keep(keep),
    .last(last),
    .data(data),
    .valid(valid),
    .ready(ready),
    .keep_out(keep_out),
    .last_out(last_out),
    .data_out(data_out),
    .valid_out(valid_out),
    .ready_out(ready_out)
  );


endmodule
