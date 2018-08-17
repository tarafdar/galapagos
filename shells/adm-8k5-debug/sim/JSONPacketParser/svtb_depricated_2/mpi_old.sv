`include "ethernet.sv"


parameter [7:0] C_SYNC_ENV_PACKET =  0;
parameter [7:0] C_CLR2SND_PACKET = 1;
parameter [7:0] C_DATA_PACKET = 2;
parameter [7:0] C_ASYNC_ENV_PACKET = 3;
parameter [7:0] C_RECV_ERROR = 4;
parameter [7:0] C_DATA_TRANSMISSION_DONE = 5;

interface mpi_interface
        #(parameter ETHERNET = 1)
        (
            input clk,
            output reg [63:0] stream_out_data,
            output reg [7 :0] stream_out_keep,
            output reg stream_out_last,
            output reg stream_out_valid,
            input stream_out_ready,
            input reg [63:0] stream_in_data,
            input reg [7 :0] stream_in_keep,
            input reg stream_in_last,
            input reg stream_in_valid,
            input stream_in_ready
);
    


   // generate
   //     if(ETHERNET == 1) begin
        //TO DO GENERATE ETHERNET OR TCP
            ethernet_interface stream(.clk(clk),
                          .stream_out_data(stream_out_data),
                          .stream_out_keep(stream_out_keep),
                          .stream_out_last(stream_out_last),
                          .stream_out_valid(stream_out_valid),
                          .stream_out_ready(stream_out_ready),
                          .stream_in_data(stream_in_data),
                          .stream_in_keep(stream_in_keep),
                          .stream_in_last(stream_in_last),
                          .stream_in_valid(stream_in_valid),
                          .stream_in_ready(stream_in_ready)
                      );
    //     end
   //endgenerate
    
    task mpi_recv(
                 input [15:0] dst_rank,
                 input [7:0] src_rank, 
                 input [15:0] size,
                 input [47:0] mac_addr_dst,
                 input [47:0] mac_addr_src,
                 input [31:0] ip_addr_dst,
                 input [31:0] ip_addr_src
             
             );

        stream.wait_for_header(
                           .mac_addr_dst(mac_addr_dst),
                           .mac_addr_src(mac_addr_src),
                           .ip_addr_dst(ip_addr_src),
                           .ip_addr_src(ip_addr_dst),
                           .dst(dst_rank)
                           );
                                                    
      
        //wait for the envelope  
        wait(stream_in_data[31:24] == C_SYNC_ENV_PACKET && 
            stream_in_data[23:16] == src_rank && 
            stream_in_data[15:0] == dst_rank && 
            stream_in_valid  && 
            stream_in_ready); 
            
        repeat (10) @(posedge clk);

        //send clear to send
        write_header(
               .dst_rank(src_rank), 
               .src_rank(dst_rank), 
               .packet_type(C_CLR2SND_PACKET), 
               .size(size), 
               .tag(8'd0),
               .mac_addr_dst(mac_addr_src),
               .mac_addr_src(mac_addr_dst),
               .ip_addr_dst(ip_addr_src),
               .ip_addr_src(ip_addr_dst),
               .last(1'b1)
           );
           
           

        stream.wait_for_header(
                           .mac_addr_dst(mac_addr_dst),
                           .mac_addr_src(mac_addr_src),
                           .ip_addr_dst(ip_addr_dst),
                           .ip_addr_src(ip_addr_src),
                           .dst(dst_rank)
                           );
        wait(clk &&
            stream_in_data[31:24] == C_DATA_PACKET && 
            stream_in_data[23:16] == src_rank && stream_in_data[15:0] == dst_rank && 
            stream_in_valid && 
            stream_in_ready); 
        wait(stream_in_last);
        
        write_header(
                   .dst_rank(dst_rank), 
                   .src_rank(src_rank), 
                   .packet_type(C_DATA_TRANSMISSION_DONE), 
                   .size(16'd0), 
                    .tag(8'd0),
                    .mac_addr_dst(mac_addr_dst),
                    .mac_addr_src(mac_addr_src),
                    .ip_addr_dst(ip_addr_dst),
                    .ip_addr_src(ip_addr_src),
                    .last(1'b1)
           );

    endtask

    task mpi_send_wait_for_done(
                            input [15:0] dst_rank,
                            input [7:0] src_rank,
                            input [47:0] mac_addr_dst,
                            input [47:0] mac_addr_src,
                            input [31:0] ip_addr_dst,
                            input [31:0] ip_addr_src
    );
    

    stream.wait_for_header(
                           .mac_addr_dst(mac_addr_src),
                           .mac_addr_src(mac_addr_dst),
                           .ip_addr_dst(ip_addr_src),
                           .ip_addr_src(ip_addr_dst),
                           .dst(src_rank)
                           );

    wait(
         stream_in_data[31:24] == C_DATA_TRANSMISSION_DONE && 
         stream_in_valid && 
         stream_in_ready && 
         stream_in_data[23:16] == dst_rank && 
         stream_in_data[15:0] == src_rank
         ); 

    endtask


    task mpi_send_data_header(
                              input [15:0] dst_rank, 
                              input [7:0] src_rank, 
                              input [15:0] size,
                              input [47:0] mac_addr_dst,
                              input [47:0] mac_addr_src,
                              input [31:0] ip_addr_dst,
                              input [31:0] ip_addr_src
                          );
                          
        write_header(
                   .dst_rank(dst_rank), 
                   .src_rank(src_rank), 
                   .packet_type(C_DATA_PACKET), 
                   .size(size), 
                   .tag(8'd0),
                   .mac_addr_dst(mac_addr_dst),
                   .mac_addr_src(mac_addr_src),
                   .ip_addr_dst(ip_addr_dst),
                   .ip_addr_src(ip_addr_src),
                   .last(1'b0)
                                
        );
    endtask

    task mpi_send_envelope_header_and_wait(
                                           input [15:0] dst_rank, 
                                           input [7:0] src_rank, 
                                           input [15:0] size,
                                           input [47:0] mac_addr_dst,
                                           input [47:0] mac_addr_src,
                                           input [31:0] ip_addr_dst,
                                           input [31:0] ip_addr_src
                                           );

        write_header(
                   .dst_rank(dst_rank), 
                   .src_rank(src_rank), 
                   .packet_type(C_SYNC_ENV_PACKET), 
                   .size(size), 
                   .tag(8'd0),
                   .mac_addr_dst(mac_addr_dst),
                   .mac_addr_src(mac_addr_src),
                   .ip_addr_dst(ip_addr_dst),
                   .ip_addr_src(ip_addr_src),
                   .last(1'b0)
                   );

          write(.data(64'd0),
                .keep(8'hff),
                .last(1'b1)
               );   

        stream.wait_for_header(
                           .mac_addr_dst(mac_addr_src),
                           .mac_addr_src(mac_addr_dst),
                           .ip_addr_dst(ip_addr_src),
                           .ip_addr_src(ip_addr_dst),
                           .dst(src_rank)
                           );
        //wait for the right clr 2 send  
        wait(
         stream_in_data[31:24] == C_CLR2SND_PACKET && 
         stream_in_data[23:16] == dst_rank[7:0] && 
         stream_in_data[7:0] == src_rank &&
         stream_in_valid && 
         stream_in_ready); 
    endtask


    task mpi_send_header(input [15:0] dst_rank, 
                         input [7:0] src_rank, 
                         input [15:0] size,
                         input [47:0] mac_addr_dst,
                         input [47:0] mac_addr_src,
                         input [31:0] ip_addr_dst,
                         input [31:0] ip_addr_src
                        );
           
           mpi_send_envelope_header_and_wait(
                                             .dst_rank(dst_rank),
                                             .src_rank(src_rank),
                                             .size(size),
                                             .mac_addr_dst(mac_addr_dst),
                                             .mac_addr_src(mac_addr_src),
                                             .ip_addr_dst(ip_addr_dst),
                                             .ip_addr_src(ip_addr_src)
                                             );
           repeat (10) @(posedge clk);
           mpi_send_data_header(
                                             .dst_rank(dst_rank),
                                             .src_rank(src_rank),
                                             .size(size << 2),
                                             .mac_addr_dst(mac_addr_dst),
                                             .mac_addr_src(mac_addr_src),
                                             .ip_addr_dst(ip_addr_dst),
                                             .ip_addr_src(ip_addr_src)
                                             );                 
           
                        
                        
                        
    endtask

    task write_header(
                    input [15:0] dst_rank, 
                    input [7:0] src_rank, 
                    input [7:0] packet_type, 
                    input [15:0] size, 
                    input [7:0] tag,
                    input [47:0] mac_addr_dst,
                    input [47:0] mac_addr_src,
                    input [31:0] ip_addr_dst,
                    input [31:0] ip_addr_src,
                    input last
                    );
    

      //  if(ETHERNET) begin
        stream.write_header(
                           .mac_addr_dst(mac_addr_dst),
                           .mac_addr_src(mac_addr_src),
                           //.ip_addr_dst(ip_addr_dst),
                           //.ip_addr_src(ip_addr_src),
                           .dst(dst_rank)
                           );
        
   //     end
        //else ip
        

        write(
              .data({8'd1, tag , size ,packet_type, src_rank, dst_rank}),
              .keep(8'hff),
              .last(last)
              );
    

    endtask

    task write_header_eth(
        input mac_addr_dst,
        input mac_addr_src,
        input dst_rank
        );

        stream.write_header(
            .mac_addr_dst(mac_addr_dst),
            .mac_addr_src(mac_addr_src),
            //.ip_addr_dst(ip_addr_dst),
            //.ip_addr_src(ip_addr_src),
            .dst(dst_rank)
            );

    endtask
    
    task write(input [63:0] data,
               input [7:0] keep,
               input last);
               
        stream.write(.data(data),
                     .keep(keep),
                     .last(last)
                     );               
                         
            
                         
     endtask
endinterface
