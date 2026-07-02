module demux_2_tb;

reg a, s;
wire y1, y2;

demux_2 dut (
    .a(a),
    .s(s),
    .y1(y0),
    .y2(y1)
);

initial begin
    $monitor("Time=%0t a=%b s=%b y1=%b y2=%b", $time, a, s, y1, y2);
    
    s = 0 ; a = 0 ;
    #10 s=0; a = 1;
    #10 s=1; a = 0;
    #10 s=1; a = 1;
    
       #10 $finish;
end

endmodule
