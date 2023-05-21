module mux2x1_tb();
  reg a,b,s0;
  wire y;  

mux_2x1 dut (.a(a), .b(b), .s0(s0), .y(y));
  
  initial
    begin
      s0=0;
     
      a=0;
      b=0;
      #10 a=0;
      #10 b=1;
      #20 a=1;
      #20 b=0;
      #10  s0 =1;
      #30 a=1;
      #30 b=1; 

 

      $finish;
    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #150 $finish;
      
    end
      
endmodule

