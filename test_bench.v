`include "adder_16b.v"

module testbench;
    reg [15:0] a,b;
    wire[15:0] sum;

    adder_16b uut(.a(a),.b(b),.sum(sum));

    initial begin
        
        // set test inputs
        a = 'd240; b = 'd129;
        
        // dump waveform
        $dumpfile("dump.vcd");
        $dumpvars(1);

        // display a, b, and sum in both binary and decimal form
        $display("%d + %d", a, b);
        $monitor("Sum (bin): %16b\nSum (dec): %d", sum, sum);

    end 
endmodule