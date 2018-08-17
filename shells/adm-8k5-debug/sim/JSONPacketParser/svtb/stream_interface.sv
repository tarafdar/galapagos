interface axi_stream
            #(parameter DATA_WIDTH = 64,
              parameter DEST_WIDTH = 8,
              parameter USER_WIDTH = 8
            )
            (input clk,
             output reg [DATA_WIDTH - 1:0] data,
             output reg [DEST_WIDTH - 1:0] dest,
             output reg [(DATA_WIDTH >> 3) -1 :0] keep,
             output reg [(USER_WIDTH) - 1: 0] user,
             output reg last,
             output reg valid,
             input ready  
             );



    task write(
          input [63:0] data_in, 
          input [7:0] keep_in, 
          input last_in
    );
    
    
        data = data_in;
        keep = keep_in;
        last = last_in;
        valid = 0;
        wait(ready);
        valid = 1;
        repeat (1) @(posedge clk);
        valid = 0;
    endtask

endinterface


