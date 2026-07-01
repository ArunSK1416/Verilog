`timescale 1ns / 1ps

module flip_flop_t_tb;
reg clk,t,rst;
wire q;
flip_flop_t uut (.clk(clk),.rst(rst),.t(t),.q(q));
always #10 clk = ~clk;
initial begin
clk = 0;
rst = 1;
t =0;
#20 rst = 0;
#20 t=1;
#20 t=0;
#20 t=1;
#20 t=0;
#20 t=1;
#50 $stop;
end
initial begin
$monitor("time = %0t, clk = %b, rst = %b, t = %b, q = %b,",$time,clk,rst,t,q);
end
endmodule
