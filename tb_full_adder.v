`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 15:06:39
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder(

    );
    reg a, b;
    wire sum, cout;
    
    full_adder uut(
    .a(a), .b(b), .sum(sum), .cout(cout)
    );
    
    initial begin
    a=0; b=0; #10;
    a=1; b=0; #10;
    a=0; b=1; #10;
    a=1; b=1; #10;
    
   $finish;
   end
endmodule
