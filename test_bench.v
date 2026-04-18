`include "adder_16b.v"
`include "subtractor_16b.v"
`include "twos_complement.v"

module testbench;
    reg [15:0] a_add, b_add, a_sub, b_sub;
    reg [15:0] neg_in;
    wire[15:0] sum, diff;
    wire[15:0] neg_out;

    adder_16b adder (.a(a_add),.b(b_add),.sum(sum));
    subtractor_16b subtractor (.a(a_sub),.b(b_sub),.diff(diff));
    twos_complement twos (.in(neg_in), .out(neg_out));

    initial begin
        
        // set test inputs
        a_add = 'd240; neg_in = 'd129; #0; b_add = neg_out;
        //a_sub = 'd129; b_sub = 'd30;
        
        // dump waveform
        $dumpfile("dump.vcd");
        $dumpvars(1);

        // display a, b, and sum in both binary and decimal form
        //$display("%d + %d", a_add, b_add);
        $monitor("Sum (bin): %16b\nSum (dec): %d", sum, sum);
        //$monitor ("Diff (bin): %16b\nDiff (dec): %d", diff, diff);

    end 
endmodule