`timescale 1ns / 1ps

module multiplex12_tb;

reg k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15;
reg s0,s1,s2,s3;
wire x;

multiplex12 uut (
    .k0(k0), .k1(k1), .k2(k2), .k3(k3),
    .k4(k4), .k5(k5), .k6(k6), .k7(k7),
    .k8(k8), .k9(k9), .k10(k10), .k11(k11),
    .k12(k12), .k13(k13), .k14(k14), .k15(k15),
    .x(x),
    .s0(s0), .s1(s1), .s2(s2), .s3(s3)
);

initial begin
    {k15,k14,k13,k12,k11,k10,k9,k8,k7,k6,k5,k4,k3,k2,k1,k0} = 16'b1010101111001101;

    $monitor("Time=%0t s3=%b s2=%b s1=%b s0=%b x=%b",
              $time,s3,s2,s1,s0,x);

    {s3,s2,s1,s0}=4'b0000; #10;
    {s3,s2,s1,s0}=4'b0001; #10;
    {s3,s2,s1,s0}=4'b0010; #10;
    {s3,s2,s1,s0}=4'b0011; #10;
    {s3,s2,s1,s0}=4'b0100; #10;
    {s3,s2,s1,s0}=4'b0101; #10;
    {s3,s2,s1,s0}=4'b0110; #10;
    {s3,s2,s1,s0}=4'b0111; #10;
    {s3,s2,s1,s0}=4'b1000; #10;
    {s3,s2,s1,s0}=4'b1001; #10;
    {s3,s2,s1,s0}=4'b1010; #10;
    {s3,s2,s1,s0}=4'b1011; #10;
    {s3,s2,s1,s0}=4'b1100; #10;
    {s3,s2,s1,s0}=4'b1101; #10;
    {s3,s2,s1,s0}=4'b1110; #10;
    {s3,s2,s1,s0}=4'b1111; #10;

    $finish;
end

endmodule
