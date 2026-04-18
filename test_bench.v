`include "multiplier_8b.v"
`include "subtractor_16b.v"
`include "twos_complement.v"

module testbench;
    reg [15:0] a_add, b_add, a_sub, b_sub;
    reg [15:0] neg_in;
    wire[15:0] sum, diff;
    wire[15:0] neg_out;
    
    reg [7:0] a2,b2;
    wire[15:0] prod;


    adder_16b adder (.a(a_add),.b(b_add),.sum(sum));
    subtractor_16b subtractor (.a(a_sub),.b(b_sub),.diff(diff));
    twos_complement twos (.in(neg_in), .out(neg_out));
    multiplier_16b uut2(.a(a2),.b(b2),.prod(prod));



    initial begin
        
        // set test inputs
        a_add = 'd140; neg_in = 'd129; #0; b_add = neg_out;
        a_sub = 'd129; b_sub = 'd30;
        a2 = 'd4; b2 = 'd12;

        // dump waveform
        $dumpfile("dump.vcd");
        $dumpvars(1);

        // display a, b, and sum in both binary and decimal form
        $display("%d + %d", a_add, b_add);
        $display("Sum (bin): %16b\nSum (dec): %d", sum, sum);
        $display ("Diff (bin): %16b\nDiff (dec): %d", diff, diff);

        // display a2, b2, and prod in both binary and decimal form
        $display("%d * %d", a2, b2);
        $display("Prod (bin): %16b\nProd (dec): %d", prod, prod);

        $finish; 
    end
endmodule