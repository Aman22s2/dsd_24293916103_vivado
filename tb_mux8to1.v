`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:21:50
// Design Name: 
// Module Name: tb_mux8to1
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


module tb_mux8to1(

    );
    
    reg [7:0] D;
    reg [2:0] S;
    wire Y;
    
    mux8to1 uut (
       D, S, Y
    );
    initial begin
        
        D = 8'b10101010; 

    $display("S  | Y");
    $monitor("%b | %b", S, Y);

    for (S = 0; S < 8; S = S + 1)
        #10;

    $finish;
end
endmodule
