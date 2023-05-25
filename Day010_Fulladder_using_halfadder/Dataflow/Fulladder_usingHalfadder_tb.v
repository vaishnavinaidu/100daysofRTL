// Code your testbench here
// or browse Examples
module fulladder_using_Halfadder_tb();
reg a , b, cin;
wire cout, Sum;

  fulladder_halfadder dut (.a(a), .b(b), .cin(cin), .cfinal(cout), .sout2(sum) );

initial 
begin 
  $display (" a  b  cin  cout  sum ");
  $monitor($time,"a=%b b=%b cin=%b sum =%b cout=%b",a, b, cin, sum, cout);
       a=0;
       b=0;
       cin=0;
  
      #5 a=1;
      #5 b=0; 
      #5 cin=0;

  
      #10 a=0;
      #10 b=0;
      #10 cin=1;
  
      #15 a=0;
      #15 b=1;
      #15 cin=0;
  
      #20 a=1;
      #20 b=1; 
      #20 cin=0;

      #25 a=1;
      #25 b=0; 
      #25 cin=1;

      #30 a=1;
      #30 b=1; 
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
      
      
   
