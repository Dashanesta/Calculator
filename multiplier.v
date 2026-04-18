module multiplier(
    input [7:0] a,
    input b,
    input [2:0] b_sig,
    output [15:0] prod
);

assign prod = ({8'b0,a}<<b_sig) & {16{b}};

endmodule