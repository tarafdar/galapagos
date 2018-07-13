
parameter [7:0] C_SYNC_ENV_PACKET =  0;
parameter [7:0] C_CLR2SND_PACKET = 1;
parameter [7:0] C_DATA_PACKET = 2;
parameter [7:0] C_ASYNC_ENV_PACKET = 3;
parameter [7:0] C_RECV_ERROR = 4;
parameter [7:0] C_DATA_TRANSMISSION_DONE = 5;


task mpi_recv(input [15:0] dst_rank, input [7:0] src_rank, input [15:0] size);

    //waitForEthernetHeader();
    //wait for the envelope  
    wait(stream_in_DATA[31:24] == C_SYNC_ENV_PACKET && stream_in_DATA[23:16] == src_rank && stream_in_DATA[15:0] == dst_rank); 
    //send clear to send
    mpi_header(.dst_rank(src_rank), 
               .src_rank(dst_rank), 
               .packet_type(C_CLR2SND_PACKET), 
               .size(size), 
               .tag(8'd0)
           );
    gen_transaction(.data(64'd0),
                    .keep(8'hff),
                    .last(1'b1));
    //waitForEthernetHeader();
    wait(stream_in_DATA[31:24] == C_DATA_PACKET && stream_in_DATA[23:16] == src_rank && stream_in_DATA[15:0] == dst_rank); 
    wait(stream_in_LAST);
    mpi_header(.dst_rank(dst_rank), 
               .src_rank(src_rank), 
               .packet_type(C_DATA_TRANSMISSION_DONE), 
               .size(16'd0), 
               .tag(8'd0)
           );
    gen_transaction(.data(64'd0),
                    .keep(8'hff),
                    .last(1'b1));

endtask

task mpi_send_wait_for_done();
    
    //waitForEthernetHeader();
    wait(stream_in_DATA[31:24] == C_DATA_TRANSMISSION_DONE); 

endtask


task mpi_send_data_header(input [15:0] dst_rank, input [7:0] src_rank, input [15:0] size);
    mpi_header(.dst_rank(dst_rank), 
               .src_rank(src_rank), 
               .packet_type(C_DATA_PACKET), 
               .size(size), 
               .tag(8'd0)
           );
endtask

task mpi_send_envelope_header_and_wait(input [15:0] dst_rank, input [7:0] src_rank, input [15:0] size);

    mpi_header(.dst_rank(dst_rank), 
               .src_rank(src_rank), 
               .packet_type(C_SYNC_ENV_PACKET), 
               .size(size), 
               .tag(8'd0)
           );
    gen_transaction(.data(64'd0),
                    .keep(8'hff),
                    .last(1'b1));

    //waitForEthernetHeader();
    //wait for the right clr 2 send  
    wait(stream_in_DATA[31:24] == C_CLR2SND_PACKET && stream_in_DATA[23:16] == dst_rank[7:0] && stream_in_DATA[7:0] == src_rank); 
endtask


task mpi_header(input [15:0] dst_rank, input [7:0] src_rank, input [7:0] packet_type, input [15:0] size, input [7:0] tag);
    
    stream_out_DATA = {8'd1, tag , size ,packet_type, src_rank, dst_rank};
    stream_out_KEEP = 8'hff;
    stream_out_LAST = 1'b0;
    wait(stream_out_READY);
    stream_out_VALID = 1;
    #10
    stream_out_VALID = 0;
    stream_out_LAST = 0;

endtask
