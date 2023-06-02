module CSA (A, B, C, cout, Sout);
input [3:0]A;
input [3:0]B;
input [3:0]C;
output reg cout;
output reg [3:0]Sout;
wire [3:0]S;
wire c0, c1, c2, c3;
wire cout1, cout2, cout3;

FullAdder (.a(A[0]), .b(B[0]), .cin(C[0]), .c0(c0), .s(S[0]));
FullAdder (.a(A[1]), .b(B[1]), .cin(C[1]), .c0(c1), .s(S[1]));
FullAdder (.a(A[2]), .b(B[2]), .cin(C[2]), .c0(c2), .s(S[2]));
FullAdder (.a(A[3]), .b(B[3]), .cin(C[3]), .c0(c3), .s(S[3]));

FullAdder (.a(S[1]), .b(c0), .cin(1'b0), .c0(cout1), .s(Sout[0]));
FullAdder (.a(S[2]), .b(c1), .cin(cout1), .c0(cout2), .s(Sout[1]));
FullAdder (.a(S[3]), .b(c2), .cin(cout2), .c0(cout3), .s(Sout[2]));
FullAdder (.a(c3), .b(1b'0), .cin(cout3), .c0(cout), .s(Sout1[3]));

endmodule 




module FullAdder (a, b, cin, c0, s);
input a, b, cin;
output reg s, c0;
//s=a+b+cin;
//c0=a*b+b*cin+cin*a;
  always @(a or b or cin)
    begin
     s = a^b^cin;
     c0= ((a&b) | (b&cin) | (cin&a));
      
    end
endmodule; 