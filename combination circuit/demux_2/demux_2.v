

module demux_2(a,y1,y2,s);
input a,s;
output y1,y2;
assign y1 = ~s&a;
assign y2 = s&a;
endmodule
