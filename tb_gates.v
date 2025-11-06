`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 21:40:27
// Design Name: 
// Module Name: tb_gates
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


module tb_All_Gates(

    );
    reg a,b;
    wire and_gate,or_gate,not_gate,nand_gate,nor_gate,xor_gate,xnor_gate;
    
    All_Gates uut(
    .a(a),
    .b(b),
    .and_gate(and_gate),
    .or_gate(or_gate),
    .not_gate(not_gate),
    .nand_gate(nand_gate),
    .nor_gate(nor_gate),
    .xor_gate(xor_gate),
    .xnor_gate(xnor_gate)
    );
    
    initial begin
    a=0; b=0; #10
    a=0; b=1; #10
    a=1; b=0; #10
    a=1; b=1; #10
    $finish;
end
endmodule
