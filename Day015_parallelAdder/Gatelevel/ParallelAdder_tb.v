module ParallelAdder_tb();
reg [3:0]A;
reg [3:0]B;
reg cin;
wire [3:0]S;
wire cout;

parallelAdder dut (.A(A), .B(B), .cin(cin), .S(S), .cout(cout));

initial begin 
    $display("A, B, cin, S, cout") ;
    $monitor($time, "A = %d, B=%d cin=%d Sum=%d cout = %b", A, B, cin, S, cout);

    A = 4'b1001;
    B = 4'b1110;
    cin = 1'b1;
    #5   cin = 0; 
    #5   A = 4'b1101;
    #5   B = 4'b1110;
    
    $finish;
end
initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #260 $finish;
    
    end
endmodule
