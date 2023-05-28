// Code your design here
module gray_binary (b,g);

  input [3:0]g;
  output [3:0]b;

 xor (b[0], b[1], g[0]);
 xor (b[1], b[2], g[1]);
 xor (b[2], b[3], g[2]); 
 buf (b[3], g[3]);

//  b[0]=b[1]^g[0];   
//  b[1]=b[2]^g[1];
//  b[2]=b[3]^g[2];
//  b[3]=g[3];


endmodule