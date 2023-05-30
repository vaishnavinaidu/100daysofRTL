module parallelAdder (A, B, cin, cout, S);
input [3:0]A;
input [3:0]B;
input cin;
output reg [3:0]S;
output reg cout;
wire c1, c2, c3;

FullAdder (.a(A[0]), .b(B[0]), .cin(cin), .c0(c1), .s(S[0]));
FullAdder (.a(A[1]), .b(B[1]), .cin(c1), .c0(c2), .s(S[1]));
FullAdder (.a(A[2]), .b(B[2]), .cin(c2), .c0(c3), .s(S[2]));
FullAdder (.a(A[3]), .b(B[3]), .cin(c3), .c0(cout), .s(S[3]));

endmodule


module FullAdder (a, b, cin, c0, s);
input a, b, cin;
output reg s, c0;
//s=a+b+cin;
//c0=a*b+b*cin+cin*a;
  xor(s, a, b, cin);
  and(x, a, b);
  and(y, a, cin); 
  and(z, cin, b);
  or(c0, x, y, z);
  

endmodule; 