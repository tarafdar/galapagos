
function bit [63:0] reverseEndian64_data (input [63:0] data);
    bit [63:0] temp;
    temp = (data & 64'h00000000FFFFFFFF) << 32 | (data & 64'hFFFFFFFF00000000) >> 32;
    temp = (temp & 64'h0000FFFF0000FFFF) << 16 | (temp & 64'hFFFF0000FFFF0000) >> 16;
    reverseEndian64_data = (temp & 64'h00FF00FF00FF00FF) << 8  | (temp & 64'hFF00FF00FF00FF00) >> 8;
endfunction

function bit[7:0] reverseEndian64_keep(input [7:0] keep);
    bit [7:0] temp ;
    temp = (keep & 8'hF0) >> 4 | (keep & 8'h0F) << 4;
    temp = (temp & 8'hCC) >> 2 | (temp & 8'h33) << 2;
    reverseEndian64_keep = (temp & 8'hAA) >> 1 | (temp & 8'h55) << 1;
endfunction




