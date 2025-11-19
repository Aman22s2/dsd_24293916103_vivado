`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:13:35
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input j, k, clk,
    output q, q_bar

    );
    
    wire j_g, k_g;
    
    assign #1 j_g=(~(j&(clk)));
    assign #1 k_g=(~(k&(clk)));
    assign #1 q =(~((j_g)&(q_bar)));
    assign #1 q_bar=(~((k_g)&q));
endmodule
