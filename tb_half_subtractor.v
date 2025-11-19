`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 14:42:41
// Design Name: 
// Module Name: tb_half_subtractor
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


module tb_half_subtractor(
    
    

    );
    reg a, b;
    wire difference, borrow;
    
    half_subtractor uut(
    .a(a), .b(b), .difference(difference), .borrow(borrow)
    );
    
    initial begin
    a=0; b=0; #10;
    a=1; b=0; #10;
    a=0; b=1; #10;
    a=1; b=1; #10;
    
   $finish;
   end
endmodule
