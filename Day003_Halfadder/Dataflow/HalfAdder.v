module HalfAdder (a, b, cin, s);
input a, b;
output cin, s;

//s=a+b;
//cin=a*b;

assign s = a ^ b;
assign cin = a & b;

endmodule;