module mux4_mux2_tb();
 reg d0, d1, d2, d3, sel0, sel1;
 wire Y;

 mux4_mux2 dut (.i0(d0), .i1(d1), .i2(d2), .i3(d3), .s0(sel0), .s1(sel1), .y(Y));

 initial
  begin 
    $display ("d0 d1 d2 d3 sel0 sel1 Y");
    $monitor($time, "d0=%b d1=%b d2=%b d3=%b sel0=%b sel1=%b", d0, d1, d2, d3, sel0,sel1);

    d0 = 1;
    d1 = 0;
    d2 = 0;
    d3 = 1;

   sel0 = 0;
   sel1 = 0;
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