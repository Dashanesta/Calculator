module full_subtractor(A, B, bin, diff, bout);
    input A, B, bin;
    output diff, bout;

    wire d1, b1, b2;

    half_subtractor hs1 (.A(A), .B(B), .diff(d1), .borrow(b1));
    half_subtractor hs2 (.A(d1), .B(bin), .diff(diff), .borrow(b2));

    or g1 (bout, b1, b2);
endmodule