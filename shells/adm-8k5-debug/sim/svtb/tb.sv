`timescale 1 ns/ 1ps



module testbench();

    
    reg clk;
    reg resetn;
   

    //from stimulus
    wire [7:0] stream_in_KEEP;
    wire stream_in_LAST;
    wire [63:0] stream_in_DATA;
    wire stream_in_VALID;
    wire stream_in_READY;
 
   //from dut 
    wire [7:0] stream_out_KEEP;
    wire stream_out_LAST;
    wire [63:0] stream_out_DATA;
    wire stream_out_VALID;
    wire stream_out_READY;

    
    always #5 clk = ~clk;
    
    
    
    initial begin
        clk = 0;
        #5 resetn = 1;
    end
    


    //choose stimulation
    mpi_eth_stimulate stimulus(
                            .stream_out_DATA(stream_in_DATA), 
                            .stream_out_KEEP(stream_in_KEEP), 
                            .stream_out_LAST(stream_in_LAST), 
                            .stream_out_VALID(stream_in_VALID), 
                            .stream_out_READY(stream_in_READY),
                            .stream_in_DATA(stream_out_DATA), 
                            .stream_in_KEEP(stream_out_KEEP), 
                            .stream_in_LAST(stream_out_LAST), 
                            .stream_in_VALID(stream_out_VALID), 
                            .stream_in_READY(stream_out_READY)
                       );

   top_sim dut(
    .clk(clk),
    .resetn(resetn),
    .keep(stream_in_KEEP),
    .last(stream_in_LAST),
    .data(stream_in_DATA),
    .valid(stream_in_VALID),
    .ready(stream_in_READY),
    .keep_out(stream_out_KEEP),
    .last_out(stream_out_LAST),
    .data_out(stream_out_DATA),
    .valid_out(stream_out_VALID),
    .ready_out(stream_out_READY)
  );


endmodule
