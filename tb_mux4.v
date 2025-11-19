`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 22:27:58
// Design Name: 
// Module Name: tb_mux4
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


module tb_mux4(reg [3:0] d;
    reg [1:0] sel;
    wire y;

    mux4 dut (.d(d), .sel(sel), .y(y));

    initial begin
        $display("D[3:0] SEL | Y");
        d = 4'b1010;
        for (integer s = 0; s < 4; s = s + 1) begin
            sel = s;
            #10;
            $display("%b  %b | %b", d, sel, y);
        end
        $finish;
    end
    
endmodule
