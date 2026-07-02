//mux4:1
module multiplex(i0,i1,i2,i3,y,s1,s2);
input i0,i1,i2,i3;
output y;
input wire s1,s2;
assign y = ((~s1&~s2&i0)|(~s1&s2&i1)|(s1&~s2&i2)|(s1&s2&i3));
endmodule

//mux2:1
module mux_21(a,b,s,z);
input a,b;
input wire s;
output z;
assign z = ((~s&a)|(s&b));
endmodule

//mux16:1
module multiplex12(k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,x,s0,s1,s2,s3);
input wire k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15;
output x;
input wire s0,s1,s2,s3;

wire q,w,e,r,t,u;

multiplex m1(.i0(k0),.i1(k1),.i2(k2),.i3(k3),.y(q),.s1(s0),.s2(s1));
multiplex m2(.i0(k4),.i1(k5),.i2(k6),.i3(k7),.y(w),.s1(s0),.s2(s1));
multiplex m3(.i0(k8),.i1(k9),.i2(k10),.i3(k11),.y(e),.s1(s0),.s2(s1));
multiplex m4(.i0(k12),.i1(k13),.i2(k14),.i3(k15),.y(r),.s1(s0),.s2(s1));

mux_21 m5(.a(q),.b(w),.s(s2),.z(t));
mux_21 m6(.a(e),.b(r),.s(s2),.z(u));
mux_21 m7(.a(t),.b(u),.s(s3),.z(x));
endmodule

