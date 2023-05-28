// Code your testbench here
// or browse Examples
module gray_binary_tb();
  reg [3:0]g;
  wire [3:0]b;

gray_binary dut (.b(b), .g(g));

initial begin 

     g = 4'b1010;
 #10 g = 4'b0000;
 #20 g = 4'b0010;
 #30 g = 4'b0011;
 #40 g = 4'b1000; 

end
initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #200 $finish;
    
    end

endmodule