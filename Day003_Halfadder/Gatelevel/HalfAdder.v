module HalfAdder (a, b, cin, s);
input a, b;
output cin, s;

//s=a+b;
//cin=a*b;

xor(s, a, b);
and(cin, a, b);
endmodule