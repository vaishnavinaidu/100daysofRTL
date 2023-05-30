module bcd_decimal_tb();
  reg [3:0]a;
  wire [3:0]d;

bcd_decimal dut (.a(a), .decimal(d));

initial 
  begin 
    $display (" a  d");
    $monitor($time,"a=%b d=%b ",a,decimal);

    a = 4'b0111;
    #5 a= 4'b0101;
    #10 a= 4'b0101;
    #20 a= 4'b0101;
    #25 a= 4'b0101;
    $finish;
  
end
initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #260 $finish;
    
    end

endmodule