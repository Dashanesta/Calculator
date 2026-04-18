`include "adder_16b.v"
`include "subtractor_16b.v"

module testbench;
    reg [15:0] a_add, b_add, a_sub, b_sub;
    wire[15:0] sum, diff;

    adder_16b uut1(.a(a_add),.b(b_add),.sum(sum));
    subtractor_16b uut2(.a(a_sub),.b(b_sub),.diff(diff));

    initial begin
        
        // set test inputs
        //a_add = 'd240; b_add = 'd129;
        a_sub = 'd129; b_sub = 'd30;
        
        // dump waveform
        $dumpfile("dump.vcd");
        $dumpvars(1);

        // display a, b, and sum in both binary and decimal form
        //$display("%d + %d", a, b);
        //$monitor("Sum (bin): %16b\nSum (dec): %d", sum, sum);
        $monitor ("Diff (bin): %16b\nDiff (dec): %d", diff, diff);

    end 
endmodule