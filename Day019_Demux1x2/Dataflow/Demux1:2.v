module Demux1_2 (I,s,Y0,Y1);
input I, s;
output Y0, Y1;

assign Y0 = I&(~s);
assign Y1 = I&(s);

endmodule
