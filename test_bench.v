`include "adder_16b.v"

module testbench;
    reg [15:0] a,b;
    wire[15:0] sum;

    adder_16b uut(.a(a),.b(b),.sum(sum));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        $monitor("Sum: %16b", sum);

        a = 'd240; b = 'd129;

    end 
endmodule