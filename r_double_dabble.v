module r_double_dabble(
    input [3:0] a,
    output [3:0] res
);
    wire is_greater;
    wire [3:0] sub_3;

    greater_than_4b gt (.num(a),.compare_to(4'b0111),.is_larger(is_greater));
    assign sub_3 = {2'b00,is_greater,is_greater};

    //if greater than 4, add 3 and return that
    //4 bit subtractor implementation lmao
    full_subtractor fs0 (.A(a[0]), .B(sub_3[0]), .bin(1'b0), .diff(res[0]), .bout(b0));
    full_subtractor fs1 (.A(a[1]), .B(sub_3[1]), .bin(b0), .diff(res[1]), .bout(b1));
    full_subtractor fs2 (.A(a[2]), .B(sub_3[2]), .bin(b1), .diff(res[2]), .bout(b2));
    full_subtractor fs3 (.A(a[3]), .B(sub_3[3]), .bin(b2), .diff(res[3]), .bout(b3));


endmodule