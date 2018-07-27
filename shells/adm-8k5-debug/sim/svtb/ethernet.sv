task waitForEthernetHeader(input [47:0] mac_addr_dst, input [47:0] mac_addr_src, input [7:0] dst);
    
    //wait for the right ethernet header
    wait(stream_in_DATA == reverseEndian64_data({mac_addr_dst, mac_addr_src[47:32]})); 
    //wait for the right ethernet header
    wait(stream_in_DATA == reverseEndian64_data({mac_addr_src[31:0],16'h7400, dst,8'hxx})); 


endtask


task ethernet_header(input [47:0] mac_addr_dst,  input [47:0] mac_addr_src, input [7:0] dst);
    //send first flit of ethernet header
    stream_out_DATA = reverseEndian64_data({mac_addr_dst, mac_addr_src[47:32]});
    stream_out_KEEP = 8'hff;
    stream_out_LAST = 0;
    wait(stream_out_READY);
    stream_out_VALID = 1;
    $display("ETH FLIT 1 %H", stream_out_DATA);
    #10
    stream_out_DATA = reverseEndian64_data({mac_addr_src[31:0], 16'h7400, dst, 8'd0});
    stream_out_KEEP = 8'hff;
    stream_out_LAST = 0;
    wait(stream_out_READY);
    $display("ETH FLIT 2 %H", stream_out_DATA);
    stream_out_VALID = 1;
    #10
    stream_out_VALID = 0;
    $display("SENDING TO MAC: %h, FROM %H", mac_addr_dst, mac_addr_src);
endtask



