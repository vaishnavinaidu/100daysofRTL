module bcd_decimal (a, decimal);
  input [3:0] a;
 output [3:0]decimal;

 assign decimal = (a[3] * 8 )+ (a[2] * 4) + (a[1] * 2 )+ (a[0] * 1);
 
endmodule

