module nand_logicgates (a, b, y0, y1, y2, y3, y4, y5, y6, y7);
input a, b;
  output y0, y1, y2, y3, y4, y5, y6, y7;
  
wire  n,l;

  assign y0 = ~(a & a);      //NOT of a     
  assign y1 = ~(b & b);     //NOT of b
  assign y7 = ~(a & b);       //NAND    
  assign y2 = ~(y7 & y7);      //AND    (~NAND)
  assign y3 = ~(y0 & y1);      //OR     (bubbled NAND)
  assign y4 = ~(y3 & y3);      //NOR    (~OR)
  assign n  = ~(a & y1);      //XOR    (A*`B|`A*B)
  assign l  = ~(b & y0);
  assign y5 = ~(n & l);       // XOR 
  assign y6 = ~(y5 & y5);     //XNOR   (~)

endmodule;