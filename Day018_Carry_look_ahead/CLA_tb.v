// Code your testbench here
// or browse Examples
module CSA_tb ();
  reg [3:0]A;
  reg [3:0]B;
reg cin;
  wire [3:0]S;
wire cout;

CLA dut (.A(A), .B(B), .cin(cin), .S(S), .cout(cout));

initial begin  
    $display("A, B, cin, S, cout") ;
    $monitor($time, "A = %d, B=%d cin=%d Sum=%d cout = %b", A, B, cin, S, cout);

     A = 4'b000;
     B = 4'b0001;
     cin = 1'b0;
   #10 cin = 1'b0;
   #10 A = 4'b0001;
   #10 B = 4'b0010;
   #20 A = 4'b0011;
   #20 B = 4'b0110;


end
initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #260 $finish;
    
    end

endmodule



