module 2x1mux (a,b,s0,y);
input a, b, s0;
output reg y;
always @(a or b or s0)
begin
y = (a&s0) | (b&(~s0));
end

endmodule;
