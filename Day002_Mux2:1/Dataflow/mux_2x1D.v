module mux_2x1 (a,b,s0,y);
input a, b, s0;
output y;

assign y = (a&s0) | (b&(~s0));

endmodule;
