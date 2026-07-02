`timescale 1ns / 1ps

module mux_tb;
reg a;
reg b;
reg s;
wire z;
mux_21 uut (.a(a),.b(b),.s(s),.z(z));
    
initial begin
        $monitor("Time=%0t | s=%b a=%b b=%b -> z=%b",$time, s, a, b, z);
        a = 0; b = 0; s = 0; #10;
        a = 1; b = 0; s = 0; #10;
        a = 0; b = 1; s = 0; #10;
        a = 1; b = 1; s = 0; #10;

        a = 0; b = 0; s = 1; #10;
        a = 1; b = 0; s = 1; #10;
        a = 0; b = 1; s = 1; #10;
        a = 1; b = 1; s = 1; #10;

        $finish;
    end

endmodule
