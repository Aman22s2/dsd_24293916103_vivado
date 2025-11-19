`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:24:06
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
   input  a,
    input  b,
    output and_gate,
    output or_gate,
    output not_gate,
    output nand_gate,
    output nor_gate,
    output xor_gate,
    output xnor_gate

    );
    assign and_gate = a&b;
    assign or_gate = a|b;
    assign not_gate = ~a;
    assign nand_gate = ~(a&b);
    assign nor_gate = ~(a|b);
    assign xor_gate = a^b;
    assign xnor_gate = ~(a^b);
endmodule
