module mux4x1_tb();
reg a,b,c,d,s0,s1;
wire y;

  mux4x1 dut (.i0(a), .i1(b), .i2(c), .i3(d), .s0(s0), .s1(s1), .y(y));

initial 
begin

    $display ("a b c d s0 s1");
    $monitor($time, "a=%b b=%b c=%b d=%b s0=%b s1=%b", a, b, c, d, s0,s1);
    
    a=1;
    b=0;
    c=1;
    d=0;

        s0 = 0;
        s1 = 0;
    #10 s0 = 0;
    #10 s1 = 1;
    #15 s0 = 1;
    #15 s1 = 0;
    #25 s0 = 1;
    #25 s1 = 1;
   $finish;
  
end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #200 $finish;
      
      
    end
  
endmodule 