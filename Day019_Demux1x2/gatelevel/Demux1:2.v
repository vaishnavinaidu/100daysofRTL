module Demux1_2 (I,s,Y0,Y1);
input I, s;
output Y0, Y1;
wire S;

not(S, s);
and(Y0, I, S);
and(Y1, I,s);


//assign Y0 = I&(~s);
//assign Y1 = I&(s);

endmodule
