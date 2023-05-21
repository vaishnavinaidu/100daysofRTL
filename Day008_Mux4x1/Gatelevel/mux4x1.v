module mux4x1 (i0, i1, i2, i3, s0, s1, y);
input i0, i1, i2, i3, s0, s1;
output y;

wire  s0n,s1n,y0,y1,y2,y3;

not(s0n, s0);
not(s1n, s1);
and(y0, s0n, s1n, i0);
and(y1, s0n, s1, i1);
and(y2, s0, s1n, i2);
and(y3, s0, s1, i3);

or(y, y0, y1, y2, y3);

// y = (((~s0) & (~s1) & i0) | ((~s0) & s1 & i1) | (s0 & (~s1)& i2) | (s0 & s1 & i3));

endmodule