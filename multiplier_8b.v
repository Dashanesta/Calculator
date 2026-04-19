`include "adder_16b.v"
`include "multiplier.v"

module multiplier_8b(
    input [7:0] a,
    input [7:0] b,
    output [15:0] prod
);
    wire [15:0] p0,p1,p2,p3,p4,p5,p6,p7;
    wire [15:0] s0,s1,s2,s3,s4,s5,s6;

    multiplier mult0(.a(a),.b(b[0]),.b_sig(3'b000),.prod(p0));
    adder_16b add0(.a(16'b0),.b(p0),.sum(s0));
    multiplier mult1(.a(a),.b(b[1]),.b_sig(3'b001),.prod(p1));
    adder_16b add1(.a(s0),.b(p1),.sum(s1));
    multiplier mult2(.a(a),.b(b[2]),.b_sig(3'b010),.prod(p2));
    adder_16b add2(.a(s1),.b(p2),.sum(s2));
    multiplier mult3(.a(a),.b(b[3]),.b_sig(3'b011),.prod(p3));
    adder_16b add3(.a(s2),.b(p3),.sum(s3));
    multiplier mult4(.a(a),.b(b[4]),.b_sig(3'b100),.prod(p4));
    adder_16b add4(.a(s3),.b(p4),.sum(s4));
    multiplier mult5(.a(a),.b(b[5]),.b_sig(3'b101),.prod(p5));
    adder_16b add5(.a(s4),.b(p5),.sum(s5));
    multiplier mult6(.a(a),.b(b[6]),.b_sig(3'b110),.prod(p6));
    adder_16b add6(.a(s5),.b(p6),.sum(s6));
    multiplier mult7(.a(a),.b(b[7]),.b_sig(3'b111),.prod(p7));
    adder_16b add7(.a(s6),.b(p7),.sum(prod));

endmodule