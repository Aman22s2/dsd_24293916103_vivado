`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:20:10
// Design Name: 
// Module Name: mux8to1
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


module mux8to1(
    input [7:0] D,
    input [2:0] S,
    output Y

    );
     assign Y = (S == 3'b000) ? D[0] :
           (S == 3'b001) ? D[1] :
           (S == 3'b010) ? D[2] :
           (S == 3'b011) ? D[3] :
           (S == 3'b100) ? D[4] :
           (S == 3'b101) ? D[5] :
           (S == 3'b110) ? D[6] :
                           D[7];
endmodule
