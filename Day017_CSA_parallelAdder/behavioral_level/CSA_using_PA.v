// Code your design here
module CSA (A, B, C, cout,S0,Sout);
input [3:0]A;
input [3:0]B;
input [3:0]C;
output reg cout;
output reg [3:0]Sout;
output reg S0;
wire [3:0]S;
wire c0, c1, c2, c3;
wire [3:0]Carry;
wire [3:0]Sum;

FullAdder uut1 (.a(A[0]), .b(B[0]), .cin(C[0]), .c0(c0), .s(S[0]));
FullAdder uut2 (.a(A[1]), .b(B[1]), .cin(C[1]), .c0(c1), .s(S[1]));
FullAdder uut3 (.a(A[2]), .b(B[2]), .cin(C[2]), .c0(c2), .s(S[2]));
FullAdder uut4 (.a(A[3]), .b(B[3]), .cin(C[3]), .c0(c3), .s(S[3]));

assign Carry[0] = c0;
assign Carry[1] = c1;
assign Carry[2] = c2;
assign Carry[3] = c3;

assign Sum[0] = S[1];
assign Sum[1] = S[2];
assign Sum[2] = S[3];
assign Sum[3] = 1'b0;
assign S0 = S[0];

  parallelAdder uut (.A(Carry), .B(Sum), .cin(1'b0), .cout(cout), .S(Sout));

endmodule 

module parallelAdder (A, B, cin, cout, S);
input [3:0]A;
input [3:0]B;
input cin;
output reg [3:0]S;
output reg cout;
wire c1, c2, c3;

FullAdder uut5 (.a(A[0]), .b(B[0]), .cin(cin), .c0(c1), .s(S[0]));
FullAdder uut6 (.a(A[1]), .b(B[1]), .cin(c1), .c0(c2), .s(S[1]));
FullAdder uut7 (.a(A[2]), .b(B[2]), .cin(c2), .c0(c3), .s(S[2]));
FullAdder uut8 (.a(A[3]), .b(B[3]), .cin(c3), .c0(cout), .s(S[3]));

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