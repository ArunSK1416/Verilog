

module mux_161;
reg k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15;
reg s0,s1,s2,s3;
wire x;
multiplex12 m1(.k0(k0),.k1(k1),.k2(k2),.k3(k3),.k4(k4),.k5(k5),.k6(k6),.k7(k7),.k8(k8),.k9(k9),.k10(k10),.k11(k11),.k12(k12),.k13(k13),.k14(k14),.k15(k15),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.x(x));
initial begin
k0=0;k1=1;k2=0;k3=1;k4=0;k5=1;k6=0;k7=1;k8=0;k9=1;k10=0;k11=1;k12=0;k13=1;k14=0;k15=1;
s0 = 0; s1 =0;s2=0;s3=0;
#10; s0 = 0; s1 =0;s2=0;s3=1;
#10; s0 = 0; s1 =0;s2=1;s3=0;
#10; s0 = 0; s1 =0;s2=1;s3=1;
#10; s0 = 0; s1 =1;s2=0;s3=0;
#10; s0 = 0; s1 =1;s2=0;s3=1;
#10; s0 = 0; s1 =1;s2=1;s3=0;
#10; s0 = 0; s1 =1;s2=1;s3=1;

#10 $finish;
end
endmodule

//module mux_161_tb;

//reg k0,k1,k2,k3,k4,k5,k6,k7;
//reg k8,k9,k10,k11,k12,k13,k14,k15;
//reg s0,s1,s2,s3;
//wire x;

//// DUT instantiation (FIXED: x connected)
//multiplex12 m1(
//    .k0(k0), .k1(k1), .k2(k2), .k3(k3),
//    .k4(k4), .k5(k5), .k6(k6), .k7(k7),
//    .k8(k8), .k9(k9), .k10(k10), .k11(k11),
//    .k12(k12), .k13(k13), .k14(k14), .k15(k15),
//    .x(x),                // ? FIX
//    .s0(s0), .s1(s1), .s2(s2), .s3(s3)
//);

//initial begin
//    // Waveform dump
//    $dumpfile("mux16.vcd");
//    $dumpvars(0, mux_161_tb);

//    // Inputs
//    k0=0; k1=1; k2=0; k3=1;
//    k4=0; k5=1; k6=0; k7=1;
//    k8=0; k9=1; k10=0; k11=1;
//    k12=0; k13=1; k14=0; k15=1;

//    // Select line
//    {s3,s2,s1,s0} = 4'b0000; #10;
//    {s3,s2,s1,s0} = 4'b0001; #10;
//    {s3,s2,s1,s0} = 4'b0010; #10;
//    {s3,s2,s1,s0} = 4'b0011; #10;
//    {s3,s2,s1,s0} = 4'b0100; #10;
//    {s3,s2,s1,s0} = 4'b0101; #10;
//    {s3,s2,s1,s0} = 4'b0110; #10;
//    {s3,s2,s1,s0} = 4'b0111; #10;

//    #10 $finish;
//end

//endmodule
