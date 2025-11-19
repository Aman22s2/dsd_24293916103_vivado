`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 18:43:12
// Design Name: 
// Module Name: tb_full_subtractor
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


module tb_full_subtractor(

    );
     reg a,b,bin;
    wire diff, borrow;
    
    full_subtractor uut(
     a, b, bin, diff, borrow);
     
     initial begin
      a=0; b=0; bin=0; #10;
      a=0; b=0; bin=1; #10;
      a=0; b=1; bin=0; #10;
      a=0; b=1; bin=1; #10;
      a=1; b=0; bin=0; #10;
      a=1; b=0; bin=1; #10;
      a=1; b=1; bin=0; #10;
      a=1; b=1; bin=1; #10;
     $finish;
     end
endmodule
