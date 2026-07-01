`timescale 1ns / 1ps


module d_flip_flop_tb;
reg clk,d;
wire q;

d_flip_flop uut (.clk(clk),.d(d),.q(q));

always #10 clk = ~clk;
initial begin 
clk = 0;
d = 0;
#10 d = 0 ;
#10 d = 1;
#10 d = 0;
#10 d = 1 ;
#10 d = 0;
#10 d = 1;
#10 d = 0 ;
#10 d = 1;
#10 d = 1;

#10 $finish;
$monitor("time = %0t || clk = %b || d = %b || q = %b",$time,clk,d,q);
end
endmodule
