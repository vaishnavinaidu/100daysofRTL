module nand_logicgates (a, b,y0, y1, y2, y3, y4, y5, y6, y7);
input a, b;
 output y0, y1, y2, y3, y4, y5, y6, y7;
 wire n,l;
 
  nor(y0, a, a);  //Not of a 
  nor(y1,b,b);    //NOT of b
  nor(y7,a,b);    //NOR  
  nor(y2,y7,y7);  //OR  (~NOR)
  nor(y3,y1,y0);  //AND buubled NOR 
  nor(y4,y3,y3);  //NAND (~AND)
  nor(n,a,b);
  nor(l,y0,y1);
  nor(y5,n,l);   //XOR
  nor(y6,y5,y5); //XNOR 
 
endmodule
