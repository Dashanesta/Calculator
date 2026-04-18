`include "multiplier_8b.v"

module testbench;
    reg [15:0] a,b;
    reg [7:0] a2,b2;
    wire[15:0] sum;
    wire[15:0] prod;

    adder_16b uut(.a(a),.b(b),.sum(sum));
    multiplier_16b uut2(.a(a2),.b(b2),.prod(prod));

    initial begin
        
        // set test inputs
        a = 'd240; b = 'd129;
        a2 = 'd4; b2 = 'd12;
        
        // dump waveform
        $dumpfile("dump.vcd");
        $dumpvars(1);

        // display a, b, and sum in both binary and decimal form
        $display("%d + %d", a, b);
        #1;
        $display("Sum (bin): %16b\nSum (dec): %d", sum, sum);

        // display a2, b2, and prod in both binary and decimal form
        $display("%d * %d", a2, b2);
        $display("Prod (bin): %16b\nProd (dec): %d", prod, prod);

        $finish; 
    end
endmodule