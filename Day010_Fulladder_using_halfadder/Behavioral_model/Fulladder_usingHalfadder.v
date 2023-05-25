module fulladder_halfadder (a, b, cin, sout2, cfinal);
input a,b,cin;
output cfinal, sout2;
wire sout1, cout1, cout2;
  
Halfadder h1(.a0(a), .b0(b), .cout(cout1), .sout(sout1));
Halfadder h2(.a0(sout1), .b0(cin), .cout(cout2), .sout(sout2));

assign cfinal = cout1 | cout2;

endmodule

module Halfadder (a0,b0,cout,sout);

input a0, b0;
output reg cout, sout;

always @(*) begin
sout = a0 ^ b0;
cout = a0 & b0;
end

endmodule