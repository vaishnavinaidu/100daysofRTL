module Demux1_2 (I,s,Y0,Y1);
input I, s;
output reg Y0, Y1;

  always @(I, s, Y0, Y1)
begin
Y0 = I&(~s);
Y1 = I&(s);
end

endmodule
