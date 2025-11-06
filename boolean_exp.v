`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 22:04:51
// Design Name: 
// Module Name: boolean_exp
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


module boolean_exp(
    input A, B, C,
    output F1, F2, F3
);
    // Example expressions
    assign F1 = (A & B) | (~A & C);     // F1 = AB + A'C
    assign F2 = (~A & ~B) | (B & C);    // F2 = A'B' + BC
    assign F3 = (A ^ B) & C;            // F3 = (A XOR B)C
endmodule
