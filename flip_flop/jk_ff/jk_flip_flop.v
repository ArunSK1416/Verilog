`timescale 1ns / 1ps


module jk_flip_flop(input clk,j,k,output reg q);
always@(posedge clk) begin
if(j == 0 && k == 1)
    q <= 1'b0;
else if (j == 1 && k == 0)
    q <= 1'b1;
else if (j == 0 && k == 0)
    q <= q;
else 
    q <= ~q;
end
endmodule
