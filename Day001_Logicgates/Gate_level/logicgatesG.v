module logicgates (a,b,y1,y2,y3,y4,y5,y6,y7);
  input a,b;
  output y1, y2, y3, y4, y5, y6, y7;
  
  not (y1,a,b);
  and (y2,a,b);
  or (y3,a,b);
  xor(y4,a,b);
  xnor(y5,a,b);
  nor(y6,a,b);
  nand(y7,a,b);
  
  endmodule 