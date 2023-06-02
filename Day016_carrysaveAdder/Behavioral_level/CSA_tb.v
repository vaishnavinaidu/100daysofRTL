module CSA_tb();
reg [3:0]A;
reg [3:0]B;
reg [3:0]C;
wire cout;
wire [3:0]S;

CSA dut (.A(A), .B(B), .C(C), .Sout(S), .cout(cout));

initial begin 
    $display("A, B, C, S, cout") ;
    $monitor($time, "A = %d, B=%d C=%d Sum=%d cout = %b", A, B, C, S, cout);

    A = 4'b1111;
    B = 4'b1011;
    C = 4'b0111;
    // #5   cin = 0; 
    // #5   A = 4'b1101;
    // #5   B = 4'b1110;
    
  
end
initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    
    end
endmodule