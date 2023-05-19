module nand_logicgates (a, b,y0, y1, y2, y3, y4, y5, y6, y7);
input wire a, b;
 output reg y0, y1, y2, y3, y4, y5, y6, y7;
 

  always @*
  begin

    y0 = ~(a | a);      //NOT of a     
    y1 = ~(b | b);     //NOT of b
    y7 = ~(a | b);       //NOR  
    y2 = ~(y7 | y7);      //OR  (~NOR)
    y3 = ~(y0 | y1);      //AND    (bubbled NOR)
    y4 = ~(y3 | y3);      //NAND   (~AND)
    
    // n  = ~(a & y1);      //XOR    (A*`B|`A*B)
    // l  = ~(b & y0) ; y5 = (~(n&l));
    
    y5 = ~((~(a|b))|(~(y0|y1)));   // XNOR 
    y6 = ~(y5 | y5);     //XNOR   (~)
  end

endmodule