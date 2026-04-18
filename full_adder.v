`include "half_adder.v"

module full_adder(A, B, cin, sum, cout);
  input A, B, cin;
  output sum, cout;
  
  wire s1, c1, c2;
  
  half_adder ha1 (.A(A), .B(B), .sum(s1), .carry(c1));
  half_adder ha2 (.A(s1), .B(cin), .sum(sum), .carry(c2));
  
  assign cout = c1 | c2;
  
  
endmodule