module nand_logicgates (a, b,y0, y1, y2, y3, y4, y5, y6, y7);
input a, b;
 output y0, y1, y2, y3, y4, y5, y6, y7;
 
   assign  y0 = ~(a | a);      //NOT of a     
   assign   y1 = ~(b | b);     //NOT of b
   assign  y7 = ~(a | b);       //NOR  
   assign  y2 = ~(y7 | y7);      //OR  (~NOR)
   assign  y3 = ~(y0 | y1);      //AND    (bubbled NOR)
   assign  y4 = ~(y3 | y3);      //NAND   (~AND)
    
    // n  = ~(a & y1);      //XOR    (A*`B|`A*B)
    // l  = ~(b & y0) ; y5 = (~(n&l));
    
  assign   y5 = ~((~(a|b))|(~(y0|y1)));   // XNOR 
   assign  y6 = ~(y5 | y5);     //XNOR   (~)


endmodule