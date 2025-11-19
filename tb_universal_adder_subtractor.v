`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:54:27
// Design Name: 
// Module Name: tb_universal_adder_subtractor
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


module tb_universal_adder_subtractor(

    );
    
     reg a0,a1,a2,a3,b0,b1,b2,b3,m;
    wire c4,s0,s1,s2,s3,v;
    
    universal_adder_subtractor uut(a0, a1,a2,a3, b0,b1,b2,b3,m,c4,s0,s1,s2,s3,v);
     task display_result;
        begin
            $display("Time=%0t | A=%b%b%b%b  B=%b%b%b%b  M=%b | Result = %b%b%b%b Cout=%b Overflow=%b",
                     $time, a3,a2,a1,a0, b3,b2,b1,b0, m,
                     s3,s2,s1,s0, c4, v);
        end
    endtask

    initial begin
        $display("---- UNIVERSAL ADDER/SUBTRACTOR TEST ----");
    
    {a3,a2,a1,a0} = 4'b0101; 
        {b3,b2,b1,b0} = 4'b0011;
        m = 0; #10; display_result();
        
      {a3,a2,a1,a0} = 4'b0101; 
        {b3,b2,b1,b0} = 4'b0011;
        m = 1; #10; display_result();
      
      {a3,a2,a1,a0} = 4'b1100; 
        {b3,b2,b1,b0} = 4'b0111;
        m = 0; #10; display_result();
      
      {a3,a2,a1,a0} = 4'b0100; 
        {b3,b2,b1,b0} = 4'b1001;
        m = 1; #10; display_result();
       
        {a3,a2,a1,a0} = 4'b1000; 
        {b3,b2,b1,b0} = 4'b1000;
        m = 1; #10; display_result();

        $stop;
    end
endmodule
