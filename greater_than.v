module greater_than_4b(
    input [3:0] num, compare_to,
    output is_larger
);
wire e3, e2, e1; //save if the singular bits are equal
wire g0,g1,g2,g3; //if any given bit is bigger

assign e1 = ~(num[1] ^ compare_to[1]);
assign e2 = ~(num[2] ^ compare_to[2]);
assign e3 = ~(num[3] ^ compare_to[3]);

assign g0 = (num[0] & ~compare_to[0]);
assign g1 = (num[1] & ~compare_to[1]);
assign g2 = (num[2] & ~compare_to[2]);
assign g3 = (num[3] & ~compare_to[3]);

assign is_larger = or(g3,or(e3 & g2,or(e3 & e2 & g1, e3 & e2 & e1 & g0)));
endmodule