`timescale 1ns / 1ps

module mux4to1_tb;

reg i0, i1, i2, i3;
reg s1, s0;
wire y;

mux4to1 uut (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s1(s1),.s0(s0),.y(y));

initial begin
    i0 = 1;
    i1 = 0;
    i2 = 1;
    i3 = 0;

    $monitor("Time=%0t s1=%b s0=%b y=%b", $time, s1, s0, y);

    {s1, s0} = 2'b00; #10;
    {s1, s0} = 2'b01; #10;
    {s1, s0} = 2'b10; #10;
    {s1, s0} = 2'b11; #10;

    $finish;
end

endmodule
