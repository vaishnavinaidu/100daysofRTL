module mux_2x1 (i0,i1,s0,y);
input i0, i1, s0;
output reg y;

always @ (i0 or i1 or s0) 
begin
  y = (i0&(~s0)) | (i1&(s0));
end
endmodule;