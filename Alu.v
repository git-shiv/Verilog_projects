`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: self
// Engineer: shiv
// 
// Create Date: 09.10.2022 00:35:09
// Design Name: 
// Module Name: ALU4BIT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU4BIT(
input [3:0] A,
input [3:0]B,
input [2:0] opcode,
output reg [3:0] out
    );
    always @(*)
    begin
    case(opcode)
    3'b000: out=0;
    3'b001: out=A+B;
    3'b010: out=A-B;
    3'b011: out=A&B;
    3'b100: out=A|B;
    3'b101: out=~A;
    3'b110: out=~B;
    3'b111: out=0;
    default: out=0;
    endcase
    end   
endmodule
//// test bench
module tb_ALU(
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
    opcode = 3'b000;A=4'b0001;B= 3'b0001;
    #10;
    opcode = 3'b001;A=4'b0011;B= 3'b0001;
    #10;
    opcode = 3'b010;A=4'b0011;B= 3'b0001;
    #10;
    opcode = 3'b011;A=4'b0011;B= 3'b0001;
    #10;
    opcode = 3'b100;A=4'b0111;B= 3'b0001;
    #10;
    
   end
        
endmodule

