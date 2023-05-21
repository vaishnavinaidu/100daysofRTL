module mux_2x1 (i0,i1,s0,y);
input i0, i1, s0;
output y;
wire s0n, y1, y2;

not (s0n,s0);
and (y1, i0, s0n);
and (y2, i1,s0);
or (y,y1,y2);
//y = (i0&(~s0)) | (i1&(s0));
endmodule;