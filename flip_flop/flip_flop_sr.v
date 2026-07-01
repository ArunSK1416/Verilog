`timescale 1ns / 1ps

module flip_flop_sr(input clk,s,r,output reg q);
always@(posedge clk ) begin
  if (s == 0 && r == 1)
      q <= 1'b0;
  else if (s == 1 && r == 0)
      q <= 1'b1;
  else if (s == 0 && r == 0)
      q <= q;
      else 
      q <= 1'bx;
end
endmodule
