`timescale 1ns / 1ps

module jk_tb;
reg clk,j,k;
wire q;
jk_flip_flop uut(.clk(clk),.j(j),.k(k),.q(q));

always #10 clk = ~clk;
initial begin 
$monitor("time = %0t || clk = %b || j = %b || k = %b || q = %b ",$time,clk,j,k,q);
clk = 0;
j=0;k=0;
#15 j = 0; k = 0;   // Hold
#20 j = 0; k = 1;   // Reset
#20 j = 1; k = 0;   // Set
#20 j = 1; k = 1;   // Toggle
#20 j = 0; k = 0;   // Hold

#20 $finish;

end
endmodule
