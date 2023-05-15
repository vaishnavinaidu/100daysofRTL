module 2x1mux (a,b,s0,y);
input a, b, s0;
output y;

assign y = (a&s0) | (b&(~s0));

endmodule;