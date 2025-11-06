`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 22:18:13
// Design Name: 
// Module Name: tb_multiplexer
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


module tb_multiplexer_dsd(

    );
    reg a, b;
    wire y;
    mux2to1 uut(
      .a(a),
      .b(b),
      .sel(sel),
      .y(y)
      );
      
      initial begin
    a=0; b =0; #10
    a=0; b=1; #10
    a=1; b=0; #10
    a=1; b=1; #10
    $finish;
end
endmodule
