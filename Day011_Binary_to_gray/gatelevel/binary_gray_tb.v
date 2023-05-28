module binary_gray_tb();
reg [3:0]b;
wire [3:0]g;

binary_gray dut (.b(b), .g(g));

initial begin 


 b = 4'b1010;
 #10 b = 4'b0000;
 #20 b = 4'b0010;
 #30 b = 4'b0011;
 #40 b = 4'b1000; 

end
initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #200 $finish;
    
    end

endmodule