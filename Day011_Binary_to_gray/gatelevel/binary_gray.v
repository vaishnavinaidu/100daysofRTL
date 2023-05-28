module binary_gray (b,g);

input [3:0]b;
output [3:0]g;
  
xor (g[0], b[1], b[0]);   
xor (g[1], b[2], b[1]); // g[1]=b[2]^b[1];
xor (g[2], b[3], b[2]);  //g[2]=b[3]^b[2];
buf (g[3], b[3]); //g[3]=b[3];

endmodule