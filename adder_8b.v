`include "full_adder.v"

module adder_8b(
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum
);
    
    wire c0, c1, c2, c3, c4, c5, c6;

    full_adder fa0 (.A(a[0]), .B(b[0]), .cin(1'b0), .sum(sum[0]), .cout(c0));
    full_adder fa1 (.A(a[1]), .B(b[1]), .cin(c0), .sum(sum[1]), .cout(c1));
    full_adder fa2 (.A(a[2]), .B(b[2]), .cin(c1), .sum(sum[2]), .cout(c2));
    full_adder fa3 (.A(a[3]), .B(b[3]), .cin(c2), .sum(sum[3]), .cout(c3));
    full_adder fa4 (.A(a[4]), .B(b[4]), .cin(c3), .sum(sum[4]), .cout(c4));
    full_adder fa5 (.A(a[5]), .B(b[5]), .cin(c4), .sum(sum[5]), .cout(c5));
    full_adder fa6 (.A(a[6]), .B(b[6]), .cin(c5), .sum(sum[6]), .cout(c6));
    full_adder fa7 (.A(a[7]), .B(b[7]), .cin(c6), .sum(sum[7]), .cout());

endmodule