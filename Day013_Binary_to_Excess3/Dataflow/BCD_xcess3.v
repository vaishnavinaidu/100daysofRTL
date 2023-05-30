module BCD_xs3 (b,x,y);
  input [7:0] b;
  input [7:0] x;
  output[7:0]y;

assign y = b + x;

endmodule
