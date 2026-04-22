module calculator(
    input clk, rst, start,
    input [15:0] a, b,
    input [2:0] op,
    output [15:0] result
);

    wire [15:0] sum, diff, prod, quot, rem, neg;
    wire div_start;

    // start divider only for quot or rem op
    assign div_start = start & ((op == 3'b011) | (op == 3'b100));

    // ALVIN THE ALU
    adder_16b add (.a(a), .b(b), .sum(sum));
    subtractor_16b subtract (.a(a), .b(b), .diff(diff));
    multiplier_8b multiply (.a(a), .b(b), .prod(prod));
    divider_16b divide (.clk(clk), .rst(rst), .start(start), .a(a), .b(b), .q(quot), .r(rem));
    twos_complement negative (.in(a), .out(neg));

    assign result = (
        (sum & {16{~op[2] & ~op[1] & ~op[0]}}) |
        (diff & {16{~op[2] & ~op[1] & op[0]}}) |
        (prod & {16{~op[2] & op[1] & ~op[0]}}) |
        (quot & {16{~op[2] & op[1] & op[0]}}) |
        (rem & {16{op[2] & ~op[1] & ~op[0]}}) |
        (neg & {16{op[2] & ~op[1] & op[0]}})
        );

endmodule