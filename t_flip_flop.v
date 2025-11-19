`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:15:22
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input T,
    input clk,
    input reset,
    output reg Q

    );
    always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;
    else if (T)
        Q <= ~Q;       
    else
        Q <= Q;        
end
endmodule
