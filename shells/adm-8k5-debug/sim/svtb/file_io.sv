`timescale 1 ns/ 1ps

task automatic openFile(ref int file);
    $display("Opening File");
    file = $fopen("../outputFiles/svLog.txt", "r");
endtask

task automatic closeFile(ref int file);
    $display("Closing File");
    $fclose(file);
endtask


module fileIO 
            (
            output reg [63:0] out_data, 
            output reg [7:0] out_keep, 
            output reg out_last
            );

    int file;
    int status;
    int NUM_ENTRIES = 3;

    initial begin
        openFile(file);
    end

    initial begin
        while(!$feof(file)) begin
            #50
            status = $fscanf(file, "%d,%d,%d", out_data, out_keep, out_last);

            if(status != NUM_ENTRIES) $display("ERROR: Invalid data format.");
        end
        closeFile(file);
    end

endmodule