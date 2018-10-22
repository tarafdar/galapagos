`timescale 1 ps/ 1ps

//parameter SIM_BYPASS_INIT_CAL = "FAST";
//parameter SIM_INIT_OPTION = "SKIP_PU_DLY";
//parameter SIM_CAL_OPTION = "FAST_CAL";

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

    reg mem_sys_clk;
    wire mem_sys_clk_p;
    wire mem_sys_clk_n;
    wire mem_ready;


    //CLK LOGIC
    localparam real CLKIN_PERIOD_MEM_PS = 3338; //Frequency 299.580587 MHz
    localparam real CLKIN_PERIOD_USR_PS = 6400; //Frequency 156.25 MHz
    
    initial begin
        mem_sys_clk = 1'b0;
        clk = 1'b0;
    end 
       
    always begin
        mem_sys_clk = #(CLKIN_PERIOD_MEM_PS/2.0) ~mem_sys_clk;
        clk = #(CLKIN_PERIOD_USR_PS/2.0) ~clk;
    end
    
    assign mem_sys_clk_p = mem_sys_clk;
    assign mem_sys_clk_n =~mem_sys_clk;
    
    //RESET
    
    localparam int RESET_WAIT_NUM_CYCLES = 30;
    
    initial begin
        resetn = 0;
        repeat (RESET_WAIT_NUM_CYCLES) @(posedge mem_sys_clk);
        resetn = 1;
    
    end


    //Synthesize Stimulation
    mpi_eth_stimulate stimulus(
                            .clk(clk),
                            .stream_out_DATA(stream_in_DATA), 
                            .stream_out_KEEP(stream_in_KEEP), 
                            .stream_out_LAST(stream_in_LAST), 
                            .stream_out_VALID(stream_in_VALID), 
                            .stream_out_READY(stream_in_READY),
                            .stream_in_DATA(stream_out_DATA), 
                            .stream_in_KEEP(stream_out_KEEP), 
                            .stream_in_LAST(stream_out_LAST), 
                            .stream_in_VALID(stream_out_VALID), 
                            .stream_in_READY(stream_out_READY),
                            .aux_resetn(mem_ready)
                       );


   //Synthesize user region
   top_sim dut(
    .clk(clk),
    .mem_sys_clk_p(mem_sys_clk_p),
    .mem_sys_clk_n(mem_sys_clk_n),
    .sys_resetn(resetn),
    .keep(stream_in_KEEP),
    .last(stream_in_LAST),
    .data(stream_in_DATA),
    .valid(stream_in_VALID),
    .ready(stream_in_READY),
    .keep_out(stream_out_KEEP),
    .last_out(stream_out_LAST),
    .data_out(stream_out_DATA),
    .valid_out(stream_out_VALID),
    .ready_out(stream_out_READY),
    .mem_ready(mem_ready)
  );


endmodule
