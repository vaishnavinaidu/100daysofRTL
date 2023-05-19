module FullAdder (a, b, cin, c0, s);

input a, b, cin;

output reg s, c0;
  

//s=a+b+cin;
//c0=a*b+b*cin+cin*a;
  always @(a or b or cin)
    begin
     s = a^b^cin;
     c0= ((a&b) | (b&cin) | (cin&a));
      
    end
  
endmodule; 