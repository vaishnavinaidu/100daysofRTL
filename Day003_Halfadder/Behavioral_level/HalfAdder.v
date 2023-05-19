module HalfAdder (a, b, cin, s);
input a, b;
output  reg cin, s;

//s=a+b;
//cin=a*b;

always @(a or b)
begin

s = a ^ b;
cin = a & b;

end

endmodule;