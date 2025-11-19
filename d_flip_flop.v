`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:09:41
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input d,clk,
    output q,q_bar

    );
    
    wire d_g, d_bar_g;
    
    assign #1 d_g = (~(d&(clk)));
    assign #1 d_bar_g = (~((~d)&(clk)));
    assign #1 q = (~((d_g)&(q_bar)));
    assign #1 q_bar = (~((d_bar_g)&q));
endmodule
