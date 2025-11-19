`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:10:54
// Design Name: 
// Module Name: tb_d_flip_flop
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


module tb_d_flip_flop(

    );
    
     reg d, clk;
    wire dg, d_bar_g, q, q_bar;
    
    d_flip_flop uut(d, clk, q, q_bar);
    
    initial
    begin
    clk=0;
    forever
    #5 clk =~clk;
    end
    
    initial
    begin
        d=0;
    #10 d=1;
    #10
    $finish;
   end
endmodule
