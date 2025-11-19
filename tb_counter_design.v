`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:46:16
// Design Name: 
// Module Name: tb_counter_design
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


module tb_counter_design(

    );
    reg clk, reset;
wire [3:0] count;


up_counter_design uut (clk, reset, count);

always #5 clk = ~clk; 

initial begin
    clk = 0;
    reset = 1;
    #15 reset = 0;

    #200 $finish;
end

initial begin
    $monitor("Time=%0t | Count=%b", $time, count);
end
endmodule
