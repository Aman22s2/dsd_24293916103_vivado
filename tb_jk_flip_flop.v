`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:15:03
// Design Name: 
// Module Name: tb_jk_flip_flop
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


module tb_jk_flip_flop(

    );
     reg j,k,clk;
    wire j_g, k_g,q,q_bar;
    
    jk_flip_flop uut(j,k,clk,q,q_bar);                                                                  
    
    initial begin 
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin    
        j=0; k=1; #10;
        j=1; k=0; #10;
        j=0; k=0; #10;
        j=1; k=1; #10;
    $finish;
    end
endmodule
