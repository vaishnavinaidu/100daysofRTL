module logicgates (a, b, y1, y2, y3, y4, y5, y6, y7);
  input a, b;
  output reg y1, y2, y3, y4, y5, y6, y7;

always @(a or b)
begin
      y1 = a & b;
      y2 = a | b; 
      y3 = ~ a;
      y4 = ~(a & b);
      y5 = ~(a | b);
      y6 = a ^ b;
      y7 = ~(a ^ b);
end

endmodule
