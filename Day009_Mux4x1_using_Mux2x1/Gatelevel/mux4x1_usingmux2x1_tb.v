module mux4_mux2_tb();
 reg d0, d1, d2, d3, sel0, sel1;
 wire Y;

 mux4_mux2 dut (.i0(d0), .i1(d1), .i2(d2), .i3(d3), .s0(sel0), .s1(sel1), .y(Y));

 initial
  begin 
    $display ("a b c d s0 s1");
    $monitor($time, "a=%b b=%b c=%b d=%b s0=%b s1=%b", a, b, c, d, s0,s1);

    d0 = 1;
    d1 = 0;
    d2 = 0;
    d3 = 1;

    #10sel0 = 0;
    #10sel1 = 0;
    #15sel0 = 0;
    #15sel1 = 1;
    #20sel0 = 1;
    #20sel1 = 0;
    #25sel0 = 1;
    #25sel1 = 1;
    #30sel0 = 0;
    #30sel1 = 0;
    #35sel0 = 0;
    #35sel1 = 1;

    $finish;
  end

  initial 
   begin 
    $dumpfile("dump.vcd");
      $dumpvars;
      #200 $finish;
   end
endmodule




