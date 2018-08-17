module dummy_prj( output reg [63:0] stream_out_DATA,
                     output reg [7:0] stream_out_KEEP, 
                     output reg stream_out_LAST,
                     output reg stream_out_VALID,
                     input stream_out_READY,
                     input [63:0] stream_in_DATA,
                     input [7:0] stream_in_KEEP, 
                     input stream_in_LAST,
                     input stream_in_VALID,
                     output reg stream_in_READY
                     ); 


    always @ (*) begin
        stream_out_DATA[63:0] <= stream_in_DATA[63:0];
        stream_out_KEEP[7:0] <= stream_in_KEEP[7:0];
        stream_out_LAST <= stream_in_LAST;
        stream_out_READY <= 1'b1;
    end                       

    
endmodule
                     

                     