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
    'd0: out=0;
    'd1: out=A+B;
    'd2: out=A-B;
    'd3: out=A&B;
    'd4: out=A|B;
    'd5: out=~A;
    'd6: out=~B;
    'd7: out=0;
    default: out=0;
    endcase
    end   
endmodule


