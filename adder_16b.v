module adder_16b(
    input [15:0] a,
    input [15:0] b,
    output [15:0] sum
);
    
    wire c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14;

    full_adder fa0 (.A(a[0]), .B(b[0]), .cin(1'b0), .sum(sum[0]), .cout(c0));
    full_adder fa1 (.A(a[1]), .B(b[1]), .cin(c0), .sum(sum[1]), .cout(c1));
    full_adder fa2 (.A(a[2]), .B(b[2]), .cin(c1), .sum(sum[2]), .cout(c2));
    full_adder fa3 (.A(a[3]), .B(b[3]), .cin(c2), .sum(sum[3]), .cout(c3));
    full_adder fa4 (.A(a[4]), .B(b[4]), .cin(c3), .sum(sum[4]), .cout(c4));
    full_adder fa5 (.A(a[5]), .B(b[5]), .cin(c4), .sum(sum[5]), .cout(c5));
    full_adder fa6 (.A(a[6]), .B(b[6]), .cin(c5), .sum(sum[6]), .cout(c6));
    full_adder fa7 (.A(a[7]), .B(b[7]), .cin(c6), .sum(sum[7]), .cout(c7));
    full_adder fa8 (.A(a[8]), .B(b[8]), .cin(c7), .sum(sum[8]), .cout(c8));
    full_adder fa9 (.A(a[9]), .B(b[9]), .cin(c8), .sum(sum[9]), .cout(c9));
    full_adder fa10 (.A(a[10]), .B(b[10]), .cin(c9), .sum(sum[10]), .cout(c10));
    full_adder fa11 (.A(a[11]), .B(b[11]), .cin(c10), .sum(sum[11]), .cout(c11));
    full_adder fa12 (.A(a[12]), .B(b[12]), .cin(c11), .sum(sum[12]), .cout(c12));
    full_adder fa13 (.A(a[13]), .B(b[13]), .cin(c12), .sum(sum[13]), .cout(c13));
    full_adder fa14 (.A(a[14]), .B(b[14]), .cin(c13), .sum(sum[14]), .cout(c14));
    full_adder fa15 (.A(a[15]), .B(b[15]), .cin(c14), .sum(sum[15]), .cout());

endmodule