
module mux_11();
reg [15:0]k;
reg [3:0]s;
wire x;


multiplex1 n1(.k0(k0),.k1(k1),.k2(k2),.k3(k3),.k4(k4),.k5(k5),.k6(k6),.k7(k7),.k8(k8),.k9(k9),.k10(k10),.k11(k11),.k12(k12),.k13(k13),.k14(k14),.k15(k15),.s0(s0),.s1(s1),.s2(s2),.s3(s3));
integer i ;
initial begin 
d = 16'b0 ;
$monitor("time=%0t, k = %d ,s=%b,x=%b",$time,s,k,x);
 k = 16'b0101011101010101;
 s = 4'b0 ;

for( i = 0 ; i < 16 ; i = i+1 )begin
s = i; #10;
end
$finish;
endmodule

