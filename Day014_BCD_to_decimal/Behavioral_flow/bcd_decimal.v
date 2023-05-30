module bcd_decimal (a, d);
  input [3:0] a;
 output reg [3:0]decimal;
 always @(*) begin
  decimal = (a[3] * 8 )+ (a[2] * 4) + (a[1] * 2 )+ (a[0] * 1);
 end 
endmodule