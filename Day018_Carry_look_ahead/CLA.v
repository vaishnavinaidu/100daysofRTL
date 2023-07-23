// Code your design here
module CLA (A, B, cin, S, cout);
input cin;
  input [3:0]A;
  input [3:0]B;
  output reg [3:0]S, cout;
wire c1, c2, c3;
  wire [2:0]p,g;


assign p = A^B;
assign g = A&B;

assign c1=p[0]&cin|g[0];   //c1=p0cin + g0;
assign c2 = p[1] & p[0] & cin | p[1] & g[0] | g[1]; //c2=p1c1+g1 + p1(p0cin+g0) + g1 = p1p0cin + p1g0 + g1;
assign c3 = p[2] & p[1] & p[0] & cin | p[2] & p[1] & g[0] | p[2] & g[1] | g[2]; //c3=p2c2 + g2 => p2(p1p0cin+p1g0+g1)+ g2 = p2p1p0cin + p2p1g0 + p2g1 + g2;

  FullAdder uut1 (.a(A[0]), .b(B[0]), .cin(cin), .c0(c1), .s(S[0]));  
  FullAdder uut2 (.a(A[1]), .b(B[1]), .cin(c1), .c0(c2), .s(S[1]));  
  FullAdder uut3 (.a(A[2]), .b(B[2]), .cin(c2), .c0(c3), .s(S[2]));  
  FullAdder uut4 (.a(A[3]), .b(B[3]), .cin(c3), .c0(cout), .s(S[3]));  

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

