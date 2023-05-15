module 2x1mux (a,b,s0,y);
  input a,b,s0;
  output y;
  // y = a*s0+b*s0’;
//mux2:1
wire s0n, y1, y2;

not (s0n, s0);
and (y1, a, s0);
  and (y2, b, s0n);
or (y, y1, y2);

endmodule