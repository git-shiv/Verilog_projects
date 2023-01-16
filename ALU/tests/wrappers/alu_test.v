module alu_test(
    );
    reg [3:0] A,B;
    reg [2:0] opcode;
    wire [3:0] out;
    
    ALU4BIT A1(
    .A(A),
    .B(B),
    .opcode(opcode),
    .out(out)
    );
    
    initial 
    begin
    $dumpfile ("alu_waves.vcd");
    $dumpvars;
    
   end
        
endmodule