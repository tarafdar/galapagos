`include "stream_interface.sv"

interface ethernet_interface
            (input clk,
            output [63:0] stream_out_data,
            output [7 :0] stream_out_keep,
            output stream_out_last,
            output stream_out_valid,
            input  stream_out_ready,
            input [63:0] stream_in_data,
            input [7 :0] stream_in_keep,
            input stream_in_last,
            input stream_in_valid,
            input stream_in_ready  
            );
    
    axi_stream stream(.clk(clk),
                      .data(stream_out_data),
                      .dest(),
                      .keep(stream_out_keep),
                      .user(),
                      .last(stream_out_last),
                      .valid(stream_out_valid),
                      .ready(stream_out_ready)
                      );
                      
    task write_header(input [47:0] mac_addr_dst,  
                      input [47:0] mac_addr_src,
                      input [7:0] dst);
    

        stream.write(.data_in(reverseEndian64_data({mac_addr_dst, mac_addr_src[47:32]})),
                     .keep_in(8'hff),
                     .last_in(1'b0)
                     );

                                   
        stream.write(.data_in(reverseEndian64_data({mac_addr_src[31:0], 16'h7400, dst, 8'd0})),
                     .keep_in(8'hff),
                     .last_in(1'b0)
                      );                      
                      
     endtask

     task wait_for_header(input[47:0] mac_addr_dst,
                          input [47:0] mac_addr_src,
                          input [31:0] ip_addr_dst,
                          input [31:0] ip_addr_src,
                          input [7:0] dst);
                          
        wait(stream_in_data == reverseEndian64_data({mac_addr_dst, mac_addr_src[47:32]}) && stream_in_valid && stream_in_ready); 
        wait({8'd0,stream_in_data[55:0]} == reverseEndian64_data({mac_addr_src[31:0],16'h7400, dst, 8'd0}) && stream_in_valid && stream_in_ready);       
     
                 
     endtask

     task write(
                input [63:0] data,
                input [7:0] keep,
                input last);

        stream.write(.data_in(data),
                     .keep_in(keep),
                     .last_in(last)
                     );


     endtask

endinterface



