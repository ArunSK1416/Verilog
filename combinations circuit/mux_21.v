


module mux_21(a,b,s,z);
input a,b;
input wire s;
output z;
assign z = ((~s&a)|(s&b));
endmodule
