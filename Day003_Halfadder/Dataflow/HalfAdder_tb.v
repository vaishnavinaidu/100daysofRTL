module halfadder_tb();
  reg a,b;
  wire s,cin;  

  HalfAdder dut (.a(a), .b(b), .cin(cin), .s(s));
  
  initial
    begin
       $monitor($time,"a=%b b=%b sum =%b cin=%b",a,b,s,cin);   
      a=0;
      b=0;
      #10 a=0;
      #10 b=1;
      #20 a=1;
      #20 b=0;
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