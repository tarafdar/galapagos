`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019-04-22 23:41:58.156452
// Module Name: top_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
////////////////////////////////////////////////////////////////////////////////

//filename for the input data file
string dataFileName = "top_sim_sv.dat";

localparam MAX_DATA_SIZE = 64; //max width of the data to be read/writtn
localparam MAX_VECTORS = 1; //number of test vectors
localparam MAX_PARALLEL = 1;  //max number of parallel sections in any vector
localparam MAX_SEEK_SIZE = 64; //base 2 log of the max number to fseek
localparam MAX_ARG_NUM = 4;
localparam MAX_ARG_SIZE = $clog2(MAX_ARG_NUM) + 1;



//This module provides the stimulus for the DUT by reading the data file
module exerciser (
    output logic clk,
    output logic mem_sys_clk_p,
    output logic [63:0] stream_in_tdata,
    output logic stream_in_tvalid,
    input logic stream_in_tready,
    output logic stream_in_tlast,
    output logic [7:0] stream_in_tkeep,
    input logic [63:0] stream_out_tdata,
    input logic stream_out_tvalid,
    output logic stream_out_tready,
    input logic stream_out_tlast,
    input logic [7:0] stream_out_tkeep,
    output logic sys_resetn,
    input logic mem_ready
);

    logic [MAX_SEEK_SIZE-1:0] parallelSections [MAX_PARALLEL];

    logic [MAX_PARALLEL-1:0] testVectorEnd = 0;
    logic [MAX_PARALLEL-1:0] errorCheck = 0;
    logic updateEnd = 0;
    logic fileReady = 0;

    task automatic evaluateData(
        input logic [MAX_DATA_SIZE-1:0] args [MAX_ARG_NUM],
        input string packetType_par,
        input string interfaceType_par,
        output logic done,
        output logic error
    );
        
        if (packetType_par == "wait") begin
            if(interfaceType_par == "0") begin
                @(negedge clk);
            end
            else if(interfaceType_par == "1") begin
                wait(mem_ready == args[0]);
            end
            else begin
                $display({"Unhandled case for wait type: ", interfaceType_par});
                error = 1'b1;
            end
        end
        else if (packetType_par == "signal") begin
            if(interfaceType_par == "sys_resetn") begin
                sys_resetn = args[0];
            end
            else if(interfaceType_par == "stream_in_tdata") begin
                stream_in_tdata = args[0];
            end
            else if(interfaceType_par == "stream_in_tvalid") begin
                stream_in_tvalid = args[0];
            end
            else if(interfaceType_par == "stream_in_tlast") begin
                stream_in_tlast = args[0];
            end
            else if(interfaceType_par == "stream_in_tkeep") begin
                stream_in_tkeep = args[0];
            end
            else if(interfaceType_par == "stream_out_tready") begin
                stream_out_tready = args[0];
            end
            else begin
                $display({"Unhandled case for signal type: ", 
                    interfaceType_par});
                error = 1'b1;
            end
        end
        else if (packetType_par == "delay") begin
            if (interfaceType_par == "ns") begin
                #(args[0]);
            end
            else begin
                $display("Unhandled delay unit: %s", interfaceType_par);
                $display("\n*** Finishing RTL Simulation *** \n");
                $finish;
            end
        end
        else if (packetType_par == "display") begin
            $display("%s", interfaceType_par);
        end
        else if (packetType_par == "flag") begin
            if(interfaceType_par == "set") begin
                flags[args[0]] = 1;
            end
            else begin
                flags[args[0]] = 0;
            end
        end
        else if (packetType_par == "timestamp") begin
            $timeformat(-6, 3, " us", 0);
            if(interfaceType_par == "INIT") begin
                timeRef = $time;
            end
            else if(interfaceType_par == "PRINT") begin
                $display("%t", $time);
            end
            else begin
                $display("%s: %t", interfaceType_par, $time - timeRef);
            end
        end
        else if(packetType_par == "end") begin
            $display("Test vector %0d complete", args[0]);
            done = 1'b1;
        end
        else if(interfaceType_par == "stream_in") begin
            wait(clk == 0);
            stream_in_tdata = args[0];
            stream_in_tlast = args[1];
            stream_in_tkeep = args[2];
            stream_in_tvalid = 1'b1;
            fork
              begin
                @(posedge stream_in_tready iff !clk);
              end
              begin
                @(negedge clk iff (!(stream_in_tready === 1'bx) && stream_in_tready));
              end
              begin
                @(posedge clk iff (!(stream_in_tready === 1'bx) && stream_in_tready));
              end
            join_any
            @(negedge clk);
            stream_in_tvalid = 1'b0;
        end
        else if(interfaceType_par == "stream_out") begin
            @(posedge clk iff stream_out_tready && stream_out_tvalid);
            assert(stream_out_tdata == args[0]) begin
            end else begin
                $error("AXI-S Assert failed at %t on stream_out_tdata. Expected: %h, Received: %h", $time, args[0], stream_out_tdata);
                error = 1'b1;
                $stop;
            end
        end
        else begin
            $display({"Unhandled case: ", packetType_par, " " , 
                interfaceType_par});
            error = 1'b1;
            $display("\n*** Finishing RTL Simulation *** \n");
            $finish;
        end
    endtask

    //clock generation
    initial begin
        clk = 0;
        forever begin
            #(6.25ns/2) clk <= ~clk;
        end
    end
    initial begin
        mem_sys_clk_p = 0;
        forever begin
            #(3ns/2) mem_sys_clk_p <= ~mem_sys_clk_p;
        end
    end
    
    int vectorCount;
    time timeRef;
    logic [1-1:0] flags = 0;

    

    initial begin
        int status;
        string packetType;
        string interfaceType;

        logic [MAX_SEEK_SIZE-1:0] testVectors [MAX_VECTORS];

        int dataFile_0;
        int parallelSectionCount;

        

        dataFile_0 = $fopen(dataFileName, "r");
        status = $fscanf(dataFile_0, "%s %s %d\n", packetType, interfaceType, 
            vectorCount);
        fileReady = 1;
        $display("\n*** Starting RTL Simulation *** \n");
        if (packetType == "TestVector" && interfaceType == "count") begin
            for(int i = 0; i < vectorCount; i++) begin
                status = $fscanf(dataFile_0, "%s %s %d\n", packetType, 
                    interfaceType, testVectors[i]);
            end
            for(int i = 0; i < vectorCount; i++) begin
                status = $fseek(dataFile_0, testVectors[i], 0);
                status = $fscanf(dataFile_0, "%s %s %d\n", packetType, 
                    interfaceType, parallelSectionCount);
                if (packetType == "ParallelSection" && 
                    interfaceType == "count") begin
                    for(int j = 0; j < parallelSectionCount; j++) begin
                        status = $fscanf(dataFile_0, "%s %s %d\n", packetType, 
                            interfaceType,parallelSections[j]);
                    end
                    updateEnd = 1;
                    wait(|testVectorEnd == 1);
                    updateEnd = 0;
                    @(posedge clk)
                    for(int z = 0; z < MAX_PARALLEL; z++) begin
                        parallelSections[z] = 0;
                    end
                end
                else begin
                    $display("Bad data file - parallelsection header");
                    $display("\n*** Finishing RTL Simulation *** \n");
                    $finish;
                end
            end
            if (|errorCheck_latched) begin
                $display("Not all tests completed successfully. See above.");
            end else begin
                $display("All tests completed successfully!");
            end
            $display("\n*** Finishing RTL Simulation *** \n");
            $finish;
        end
        else begin
            $display("Bad data file - vector header");
            $display("\n*** Finishing RTL Simulation *** \n");
            $finish;
        end
    end

    logic [MAX_PARALLEL-1:0] errorCheck_latched = 0;
    always_ff @(posedge clk) begin
        errorCheck_latched <= errorCheck | errorCheck_latched;
    end

    generate;
        for(genvar gen_i = 0; gen_i < MAX_PARALLEL; gen_i++) begin
            initial begin
                int status_par;
                int dataFile; 
                logic [MAX_DATA_SIZE-1:0] args [MAX_ARG_NUM];
                logic [MAX_ARG_SIZE-1:0] argCount;
                string packetType_par; 
                string interfaceType_par;
                int packetCount;
                
                dataFile = $fopen(dataFileName, "r");
                wait(fileReady == 1);
                for(int w = 0; w < vectorCount; w++) begin
                    wait(updateEnd == 1'b1);
                    if (parallelSections[gen_i] != 0) begin
                        status_par = $fseek(dataFile, parallelSections[gen_i], 
                            0);
                        status_par = $fscanf(dataFile, "%s %s %d", 
                            packetType_par, interfaceType_par, packetCount);
                        for(int k = 0; k < packetCount; k++) begin
                            status_par = $fscanf(dataFile, "%s %s %d", 
                                packetType_par, interfaceType_par, argCount);
                            for(int l = 0; l < argCount; l++) begin
                                status_par = $fscanf(dataFile, "%d", args[l]);
                            end
                            evaluateData(args, packetType_par,
                                interfaceType_par, testVectorEnd[gen_i], errorCheck[gen_i]);
                        end
                    end
                    wait(updateEnd == '0);
                    testVectorEnd = '0;                    
                end
            end
        end
    endgenerate
   
endmodule

module top_sim_tb();

    logic clk;
    logic mem_sys_clk_p;
    logic sys_resetn;
    logic mem_ready;
    logic [63:0] stream_in_tdata;
    logic stream_in_tvalid;
    logic stream_in_tready;
    logic stream_in_tlast;
    logic [7:0] stream_in_tkeep;
    logic [63:0] stream_out_tdata;
    logic stream_out_tvalid;
    logic stream_out_tready;
    logic stream_out_tlast;
    logic [7:0] stream_out_tkeep;

    exerciser exerciser_i(
        .clk(clk),
        .mem_sys_clk_p(mem_sys_clk_p),
        .stream_in_tdata(stream_in_tdata),
        .stream_in_tvalid(stream_in_tvalid),
        .stream_in_tready(stream_in_tready),
        .stream_in_tlast(stream_in_tlast),
        .stream_in_tkeep(stream_in_tkeep),
        .stream_out_tdata(stream_out_tdata),
        .stream_out_tvalid(stream_out_tvalid),
        .stream_out_tready(stream_out_tready),
        .stream_out_tlast(stream_out_tlast),
        .stream_out_tkeep(stream_out_tkeep),
        .sys_resetn(sys_resetn),
        .mem_ready(mem_ready)
    );
    
    

    //initialize DUT
    top_sim top_sim_i(
        .clk(clk),
        .mem_sys_clk_p(mem_sys_clk_p),
        .sys_resetn(sys_resetn),
        .mem_ready(mem_ready),
        .stream_in_TDATA(stream_in_tdata),
        .stream_in_TVALID(stream_in_tvalid),
        .stream_in_TREADY(stream_in_tready),
        .stream_in_TLAST(stream_in_tlast),
        .stream_in_TKEEP(stream_in_tkeep),
        .stream_out_TDATA(stream_out_tdata),
        .stream_out_TVALID(stream_out_tvalid),
        .stream_out_TREADY(stream_out_tready),
        .stream_out_TLAST(stream_out_tlast),
        .stream_out_TKEEP(stream_out_tkeep)
    );

endmodule
