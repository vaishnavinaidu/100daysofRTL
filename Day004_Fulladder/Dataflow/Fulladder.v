module FullAdder (a, b, cin, c0, s);

input a, b, cin;

output s, c0;
  

//s=a+b+cin;
//c0=a*b+b*cin+cin*a;

assign s = a^b^cin;
assign c0= ((a&b) | (b&cin) | (cin&a));

  
endmodule;