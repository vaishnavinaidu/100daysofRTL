module Demux1_2_tb();
reg I, s;
wire y0,y1;

  Demux1_2 dut (.I(I), .s(s), .Y0(y0), .Y1(y1));

initial begin
    $display("I s y0 y1") ;
    $monitor($time, "I = %d, s=%d y0=%d y1=%d", I,s,y0,y1);
     s=0;
     I=1'b0;
    #5 I= 1'b1;
    #5 s=1;

end

initial begin 
     $dumpfile("dump.vcd");
      $dumpvars;
      #260 $finish;

end

endmodule  

 
