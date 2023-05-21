module mux_2x1tb();
  reg a,b;
  wire y;  

  mux_2x1 dut (.i0(1'b0), .i1(b), .s0(a), .y(y));
  
  initial
    begin
     
          a=0;
          b=0;
      #10 a=0;
      #10 b=1;
      #20 a=1;
      #20 b=0;
      #25 a=1;
      #25 b=1; 

 

      $finish;
    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #150 $finish;
      
    end
      
endmodule