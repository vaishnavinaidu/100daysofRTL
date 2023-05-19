module fulladderl_tb();
  reg a, b, cin;
  wire c0, s;

  FullAdder dut (.a(a), .b(b), .cin(cin), .c0(c0), .s(s));
  
  initial
    begin
      $monitor($time,"a=%b b=%b cin=%b sum =%b c0=%b",a, b, cin, s, c0);
      a=0;
      b=0;
      cin=0;
      #10 a=0;
      #10 b=0;
      #10 cin=1;
      #20 a=0;
      #20 b=1;
      #20 cin=0;
      #30 a=1;
      #30 b=0; 
      #30 cin=1;

      $finish;

    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #150 $finish;
      
      
    end

endmodule