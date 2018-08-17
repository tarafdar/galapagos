`timescale 1 ns/ 1ps

`define OFFSET 8

task automatic open_file(ref int fID, ref string fRelPath);
    $display("Opening file...");
    fID = $fopen(fRelPath, "rb");
endtask

task automatic close_file(ref int fID);
    $display("Closing file...");
    $fclose(fID);
endtask

module bin_parse();

    string fRelPath = "sample_out.bin";
    int fID, fSize, rStatus, currPos;
    reg [7:0] fSizeRev[4];
    reg [7:0] fData[8];
    
    task bin_init();
        #10
        rStatus = $fread(fSizeRev, fID);
        currPos = $ftell(fID);
        fSize = {<<8{fSizeRev}};
    endtask

    initial begin
        open_file(fID, fRelPath);
        bin_init();
        $display("File size = %d bits", fSize);

        while(currPos < fSize) begin
            #10
            rStatus = $fread(fData, fID);
            currPos = $ftell(fID);
        end

        $display("EOF REACHED");
        close_file(fID);
    end

endmodule