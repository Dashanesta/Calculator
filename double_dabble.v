module double_dabble(
    input [3:0] a,
    output [3:0] res
);
    wire is_greater;
    wire [3:0] add_3;

    greater_than_4b gt (.num(a),.compare_to(4'b0100),.is_larger(is_greater));
    assign add_3 = {2'b00,is_greater,is_greater};

    //if greater than 4, add 3 and return that
    //4 bit adder implementation lmao
    wire c0, c1, c2, c3;

    full_adder fa0 (.A(a[0]), .B(add_3[0]), .cin(1'b0), .sum(res[0]), .cout(c0));
    full_adder fa1 (.A(a[1]), .B(add_3[1]), .cin(c0), .sum(res[1]), .cout(c1));
    full_adder fa2 (.A(a[2]), .B(add_3[2]), .cin(c1), .sum(res[2]), .cout(c2));
    full_adder fa3 (.A(a[3]), .B(add_3[3]), .cin(c2), .sum(res[3]), .cout(c3));

endmodule