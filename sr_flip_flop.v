`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:34:26
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
 input s,r,clk,
    output q, qbar

    );
    
    wire sg, rg;
    assign #1 sg=(~(s&(clk)));
    assign #1 rg=(~(r&(clk)));
    assign #1 q=(~(sg&qbar));
    assign #1 qbar=(~(rg&q));
endmodule
