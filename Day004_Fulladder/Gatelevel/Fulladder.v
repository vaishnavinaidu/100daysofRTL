module FullAdder (a, b, cin, c0, s);

input a, b, cin;

output s, c0;
wire x,y,z;
  

//s=a+b;
//cin=a*b;


  xor(s, a, b, cin);
  and(x, a, b);
  and(y, a, cin); 
  and(z, cin, b);
  or(c0, x, y, z);
  
endmodule; 