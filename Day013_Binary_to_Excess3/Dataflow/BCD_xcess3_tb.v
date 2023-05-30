module BCD_xcess3_tb();
  reg [7:0] B;
  reg [7:0] X;
  wire [7:0]Y;

BCD_xs3 dut (.b(B), .x(X), .y(Y));

initial begin 

B = 8'b10011001;
X = 8'b00110011;

#10 B = 8'b00010011;

#15 B = 8'b01010001;
  
#20 B = 8'b01010001;
  
end
initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #200 $finish;
    
    end

endmodule