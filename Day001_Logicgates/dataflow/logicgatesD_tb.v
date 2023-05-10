module logicgates_tb;
  reg a,b;
  wire y1, y2, y3, y4 ,y5 ,y6 ,y7;
  
logicgates dut (.a(a), .b(b), .y1(y1), .y2(y2), .y3(y3),.y4(y4), .y5(y5), .y6(y6), .y7(y7));
  
  initial
    begin
      
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
      $display ($time, " a=%b b=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",a,b,y1,y2,y3,y4,y5,y6,y7 );
    end
 
      
endmodule