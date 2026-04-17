`include "adder_8b.v"

module testbench;
    reg [7:0] a,b;
    wire[7:0] sum;

    adder_8b uut(.a(a),.b(b),.sum(sum));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        $monitor("Sum: %8b", sum);

        a = 'd101; b = 'd120;

    end 
endmodule