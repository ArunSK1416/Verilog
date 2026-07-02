`timescale 1ns / 1ps

module mux_16(
    input i0,i1,i2,i3,
    input i4,i5,i6,i7,
    input i8,i9,i10,i11,
    input i12,i13,i14,i15,
    input s3,s2,s1,s0,
    output reg y
);

always @(*) begin
    case ({s3,s2,s1,s0})
        4'b0000: y = i0;
        4'b0001: y = i1;
        4'b0010: y = i2;
        4'b0011: y = i3;
        4'b0100: y = i4;
        4'b0101: y = i5;
        4'b0110: y = i6;
        4'b0111: y = i7;
        4'b1000: y = i8;
        4'b1001: y = i9;
        4'b1010: y = i10;
        4'b1011: y = i11;
        4'b1100: y = i12;
        4'b1101: y = i13;
        4'b1110: y = i14;
        4'b1111: y = i15;
        default: y = 1'b0;
    endcase
end

endmodule
