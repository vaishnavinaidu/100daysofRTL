module BCD_xs3 (b,x,y);
  input [7:0] b;
  input [7:0] x;
  output  reg [7:0]y;

always @(*) begin
  
y = b + x;
  
end
  
endmodule
