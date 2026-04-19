module subtractor_16b(
    input [15:0] a,
    input [15:0] b,
    output [15:0] diff
);

    wire b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14;

    full_subtractor fs0 (.A(a[0]), .B(b[0]), .bin(1'b0), .diff(diff[0]), .bout(b0));
    full_subtractor fs1 (.A(a[1]), .B(b[1]), .bin(b0), .diff(diff[1]), .bout(b1));
    full_subtractor fs2 (.A(a[2]), .B(b[2]), .bin(b1), .diff(diff[2]), .bout(b2));
    full_subtractor fs3 (.A(a[3]), .B(b[3]), .bin(b2), .diff(diff[3]), .bout(b3));
    full_subtractor fs4 (.A(a[4]), .B(b[4]), .bin(b3), .diff(diff[4]), .bout(b4));
    full_subtractor fs5 (.A(a[5]), .B(b[5]), .bin(b4), .diff(diff[5]), .bout(b5));
    full_subtractor fs6 (.A(a[6]), .B(b[6]), .bin(b5), .diff(diff[6]), .bout(b6));
    full_subtractor fs7 (.A(a[7]), .B(b[7]), .bin(b6), .diff(diff[7]), .bout(b7));
    full_subtractor fs8 (.A(a[8]), .B(b[8]), .bin(b7), .diff(diff[8]), .bout(b8));
    full_subtractor fs9 (.A(a[9]), .B(b[9]), .bin(b8), .diff(diff[9]), .bout(b9));
    full_subtractor fs10 (.A(a[10]), .B(b[10]), .bin(b9), .diff(diff[10]), .bout(b10));
    full_subtractor fs11 (.A(a[11]), .B(b[11]), .bin(b10), .diff(diff[11]), .bout(b11));
    full_subtractor fs12 (.A(a[12]), .B(b[12]), .bin(b11), .diff(diff[12]), .bout(b12));
    full_subtractor fs13 (.A(a[13]), .B(b[13]), .bin(b12), .diff(diff[13]), .bout(b13));
    full_subtractor fs14 (.A(a[14]), .B(b[14]), .bin(b13), .diff(diff[14]), .bout(b14));
    full_subtractor fs15 (.A(a[15]), .B(b[15]), .bin(b14), .diff(diff[15]), .bout());

endmodule