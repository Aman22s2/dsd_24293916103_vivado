`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 16:58:51
// Design Name: 
// Module Name: priority_decoder
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


module priority_decoder(
    input d3,d2,d1,d0,
    output reg y1,
    output reg y0,
    output reg valid

    );
    
     always @(*) begin
        if (d3) begin
            y1 = 1'b1; y0 = 1'b1; valid = 1'b1;   
        end
        else if (d2) begin
            y1 = 1'b1; y0 = 1'b0; valid = 1'b1;  
        end
        else if (d1) begin
            y1 = 1'b0; y0 = 1'b1; valid = 1'b1;   
        end
        else if (d0) begin
            y1 = 1'b0; y0 = 1'b0; valid = 1'b1;   
        end
        else begin
            y1 = 1'b0; y0 = 1'b0; valid = 1'b0;   
        end
    end
endmodule
