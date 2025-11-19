`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:17:05
// Design Name: 
// Module Name: tb_t_flip_flop
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


module tb_t_flip_flop(

    );
     reg clk, reset, T;
wire Q;

t_flipflop uut (T, clk, reset, Q);

initial begin
    clk = 0;
    forever #5 clk = ~clk;   
end

initial begin
    reset = 1;
    T = 0;
    #10 reset = 0;

    #10 T = 1;
    #40 T = 0;
    #20 T = 1;

    #50 $finish;
end

initial begin
    $monitor("Time=%0t | T=%b | Reset=%b | Q=%b", $time, T, reset, Q);
end
endmodule
