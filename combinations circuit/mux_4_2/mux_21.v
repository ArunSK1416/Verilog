`timescale 1ns / 1ps

module mux4to1(
    input i0,i1,i2,i3,
    input s1,s0,
    output y
);

  assign y = (~s1 & ~s0 & i0) | (~s1 &  s0 & i1) | ( s1 & ~s0 & i2) | ( s1 &  s0 & i3);

endmodule

module mux2_using_mux4(
    input a,b,s,
    output y
);

mux4to1 U1(.i0(a),.i1(b),.i2(1'b0),.i3(1'b0),.s1(1'b0),.s0(s),.y(y));

endmodule
