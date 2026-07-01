`timescale 1ns / 1ps


module flip_flop_sr_tb;
reg clk,s,r;
wire q;
flip_flop_sr uut(.clk(clk),.s(s),.r(r),.q(q));

always #10 clk = ~clk;
initial begin 
$monitor("time = %0t || clk = %b || s = %b || r = %b || q = %b ",$time,clk,s,r,q);
clk = 0;
s=0;r=0;
#10 s= 0; r=1;
#10 s=1;r=0;
#20 $finish;

end
endmodule
