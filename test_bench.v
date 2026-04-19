`include "half_adder.v"
`include "full_adder.v"
`include "adder_16b.v"

`include "half_subtractor.v"
`include "full_subtractor.v"
`include "subtractor_16b.v"

`include "multiplier.v"
`include "multiplier_8b.v"
`include "divider_16b.v"

`include "twos_complement.v"

`include "greater_than.v"
`include "double_dabble.v"
`include "dd_16b.v"


module testbench;
    reg [15:0] a_add, b_add, a_sub, b_sub;
    reg [15:0] neg_in;
    wire[15:0] sum, diff;
    wire[15:0] neg_out;
    
    reg [7:0] a2,b2;
    wire[15:0] prod;

    reg clk, rst, start;
    reg [15:0] dividend, divisor;
    wire [15:0] quotient, remainder;

    reg[15:0] in_dd;
    wire[19:0] out_dd;


    adder_16b adder (.a(a_add),.b(b_add),.sum(sum));
    subtractor_16b subtractor (.a(a_sub),.b(b_sub),.diff(diff));
    twos_complement twos (.in(neg_in), .out(neg_out));
    multiplier_8b uut2(.a(a2),.b(b2),.prod(prod));
    divider_16b divide (
        .clk(clk),
        .rst(rst),
        .start(start),
        .a(dividend),
        .b(divisor),
        .q(quotient),
        .r(remainder)
        );

    dd_16b dd(.bin(in_dd),.dcb(out_dd));


    // clock for divider
    always #5 clk = ~clk;

    initial begin
        
        // set test inputs
        a_add = 'd140; /*neg_in = 'd129;*/ #0; b_add = 'd196;
        a_sub = 'd129; b_sub = 'd30;
        a2 = 'd4; b2 = 'd12;
        dividend = 'd219; divisor = 'd4;
        in_dd = 'd13103;

        // dump waveform
        $dumpfile("dump.vcd");
        $dumpvars(1);

        // small delay to give conbinational logic time to "settle" - don't question it it's just needed lmao
        #1;

        // prime divider circuit
        clk = 0; rst = 1; start = 0; #12; rst = 0; #3; start = 1; #10; start = 0;

        // display a, b, and sum in both binary and decimal form
        $display("%d + %d", a_add, b_add);
        #5;
        $display("Sum (bin): %16b\nSum (dec): %d", sum, sum);

        // display a, b, and diff in both binary and decimal form
        $display("%d - %d", a_sub, b_sub);
        $display ("Diff (bin): %16b\nDiff (dec): %d", diff, diff);

        // display a2, b2, and prod in both binary and decimal form
        #5;
        $display("%d * %d", a2, b2);
        #5;
        $display("Prod (bin): %16b\nProd (dec): %d", prod, prod);

        // display dividend, divisor, quotient, remainder
        #180; // allow time for sequential logic
        $display ("%d / %d", dividend, divisor);
        $display("Quotient: %d, Remainder: %d", quotient, remainder);

        #10;
        $display("DD IN: %16b, DD OUT: %20b", in_dd, out_dd);

        $finish; 
    end
endmodule