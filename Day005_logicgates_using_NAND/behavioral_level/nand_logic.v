module nand_logicgates (a, b,y0, y1, y2, y3, y4, y5, y6, y7);
input wire a, b;
 output reg y0, y1, y2, y3, y4, y5, y6, y7;
 

  always @*
  begin

  y0 = ~(a & a);      //NOT of a     
  y1 = ~(b & b);     //NOT of b
  y7 = ~(a & b);       //NAND    
  y2 = ~(y7 & y7);      //AND    (~NAND)
  y3 = ~(y0 & y1);      //OR     (bubbled NAND)
  y4 = ~(y3 & y3);      //NOR    (~OR)
    
    // n  = ~(a & y1);      //XOR    (A*`B|`A*B) --> behavioral type doesn't support wire type. 
    // l  = ~(b & y0) ; y5 = (~(n&l));
    
  y5 = ~((~(a&y1)) & (~(b & y0)));       // XOR 
  y6 = ~(y5 & y5);     //XNOR   (~)
  end

endmodule;