module nand_logicgates (a, b, y0, y1, y2, y3, y4, y5, y6, y7);
input a, b;
  output y0, y1, y2, y3, y4, y5, y6, y7;
  
wire m,n,l;

  nand(y0, a, a);        //NOT of a     
  nand(y1, b, b);        //NOT of b
  nand(y7, a, b);        //NAND    
  nand(y2, y7, y7);      //AND    (~NAND)
  nand(y3,y0,y1);        //OR     (bubbled NAND)
  nand(y4,y3, y3);       //NOR    (~OR)
  nand(n, a, y1);        //XOR    (A*`B|`A*B)
  nand(l, b, y0);
  nand(y5, n, l);        // XOR 
  nand(y6, y5, y5);      //XNOR   (~XOR )

endmodule;