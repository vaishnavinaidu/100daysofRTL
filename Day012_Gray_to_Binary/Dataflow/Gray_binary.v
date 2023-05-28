// Code your design here
module gray_binary (b,g);

  input [3:0]g;
  output [3:0]b;


  
 assign b[0]=b[1]^g[0];   
 assign b[1]=b[2]^g[1];
 assign  b[2]=b[3]^g[2];
 assign  b[3]=g[3];


endmodule