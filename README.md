Basic gates 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:24:06
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
   input  a,
    input  b,
    output and_gate,
    output or_gate,
    output not_gate,
    output nand_gate,
    output nor_gate,
    output xor_gate,
    output xnor_gate

    );
    assign and_gate = a&b;
    assign or_gate = a|b;
    assign not_gate = ~a;
    assign nand_gate = ~(a&b);
    assign nor_gate = ~(a|b);
    assign xor_gate = a^b;
    assign xnor_gate = ~(a^b);
endmodule

TEST BENCH:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:25:47
// Design Name: 
// Module Name: tb_basic_gates
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


module tb_basic_gates(

    );
    
     reg a,b;
    wire and_gate,or_gate,
     not_gate,
     nand_gate,
     nor_gate,
    xor_gate,
     xnor_gate;
     
     basic_gates uut(a,b,and_gate,or_gate,
     not_gate,
     nand_gate,
     nor_gate,
    xor_gate,
     xnor_gate);
     
     initial begin 
     a=0; b=0; #10;
     a=0; b=1; #10;
     a=1; b=0; #10;
     a=1; b=1; #10;
     $finish;
     end
endmodule

Simulation:

 
Elaborated Design:
 

Boolean exp.
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 22:04:51
// Design Name: 
// Module Name: boolean_exp
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


module boolean_exp(
   input a,b,c,
    output f1,f2,f3
);
    assign f1=(a&b)|(~a&c);
    assign f2=(~a&~b)|(b&c);
    assign f3=(a^b)&c;
endmodule
Testbench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:50:21
// Design Name: 
// Module Name: tb_boolean
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


module tb_boolean(

    );
    reg a,b,c;
    wire f1, f2, f3;
    
    boolean_exp uut(a,b,c,f1,f2,f3);
    
    initial begin
    a=0; b=0; c=0; #10;
    a=0; b=1; c=0; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=1; #10;
    $finish;
    end
endmodule
Simulation:
 

Elaborated Design:
 
Mux 2to1
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 22:16:13
// Design Name: 
// Module Name: multiplexer_dsd
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


module mux2to1(
    input a, b, sel,
    output y
);
    assign y = sel ? b : a;
endmodule
Test bench:
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
Simulation:
 
Elaborated Design:
 
Mux 8to1 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:20:10
// Design Name: 
// Module Name: mux8to1
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


module mux8to1(
    input [7:0] D,
    input [2:0] S,
    output Y

    );
     assign Y = (S == 3'b000) ? D[0] :
           (S == 3'b001) ? D[1] :
           (S == 3'b010) ? D[2] :
           (S == 3'b011) ? D[3] :
           (S == 3'b100) ? D[4] :
           (S == 3'b101) ? D[5] :
           (S == 3'b110) ? D[6] :
                           D[7];
Endmodule
Test bench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:21:50
// Design Name: 
// Module Name: tb_mux8to1
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


module tb_mux8to1(

    );
    
    reg [7:0] D;
    reg [2:0] S;
    wire Y;
    
    mux8to1 uut (
       D, S, Y
    );
    initial begin
        
        D = 8'b10101010; 

    $display("S  | Y");
    $monitor("%b | %b", S, Y);

    for (S = 0; S < 8; S = S + 1)
        #10;

    $finish;
end
endmodule
Simulation:
 
Elaborated Design:
 
Priority encoder:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 22:32:04
// Design Name: 
// Module Name: priority_encoder
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


module Priority_encoder(
    input d3, d2, d1, d0,
    output reg y1, y0,
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
        y1 = 1'b0; y0 = 1'b0; valid = 1'b0;  // No input active
    end
end

endmodule
Testbench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 22:33:08
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder();

reg d3, d2, d1, d0;
wire y1, y0, valid;

Priority_encoder uut(
    .d3(d3), .d2(d2), .d1(d1), .d0(d0),
    .y1(y1), .y0(y0), .valid(valid)
);

initial begin
    d3=0; d2=0; d1=0; d0=0; #10;
    
    d3=0; d2=0; d1=0; d0=1; #10;

    d3=0; d2=0; d1=1; d0=0; #10;

    d3=0; d2=1; d1=0; d0=0; #10;

    d3=1; d2=0; d1=0; d0=0; #10;

$finish;
end

endmodule
Simulation:
 
Elaborate Design:
 
Priority decoder:
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
Testbench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:01:49
// Design Name: 
// Module Name: tb_priority_decoder
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


module tb_priority_decoder(

    );
    reg d3,d2,d1,d0;
    wire y1,y0,valid;
    
    priority_decoder uut(d3,d2,d1,d0,y1,y0,valid);
    
     initial begin
        d3=0; d2=0; d1=0; d0=0; #10;
        d3=0; d2=0; d1=0; d0=1; #10;
        d3=0; d2=0; d1=1; d0=0; #10;
        d3=0; d2=1; d1=0; d0=0; #10;
        d3=1; d2=0; d1=0; d0=0; #10;

        $finish;
        end
endmodule
Simulation:
 
Elaborate Design:
 
Full adder:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 14:56:08
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,
    input b,
    output sum,
    input c,
    output cout);
    assign sum= a^b^c;
    assign cout = (a&b) | (c&(a^b)
    );
    
Endmodule
Testbench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 15:06:39
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder(

    );
    reg a, b;
    wire sum, cout;
    
    full_adder uut(
    .a(a), .b(b), .sum(sum), .cout(cout)
    );
    
    initial begin
    a=0; b=0; #10;
    a=1; b=0; #10;
    a=0; b=1; #10;
    a=1; b=1; #10;
    
   $finish;
   end
endmodule
Simulation:
 
Elaborated Design:
 
Half subtractor:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 14:35:22
// Design Name: 
// Module Name: half_subtractor
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


module half_subtractor(
    input a,
    input b,
    output difference,
    output borrow
    
    

    );
    assign difference = (a & (~b));
    assign borrow = (b&(~a));
endmodule
Testbench:
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
Simulation:
 
Elaborated Design:
 
Half adder:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 14:18:12
// Design Name: 
// Module Name: half_adder
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


module half_adder(
      input a, b,
      output sum, carry
     
    );
   assign sum=(a&(~b))|(b&(~a));
    assign carry=a&b;
endmodule
Testbench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 18:44:44
// Design Name: 
// Module Name: tb_half_adder1
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


module tb_half_adder1(

    );
    reg a,b;
     wire sum,carry;
     
     half_adder uut(a,b,sum,carry);
     
     initial begin
      
      a=0; b=0; #10;
      a=0; b=1; #10;
      a=1; b=0; #10;
      a=1; b=1; #10;
      
      $finish;
      end
endmodule
Simulation:
 
Elaborated Design:
 
Full subtractor:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 18:41:31
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
input a,b,bin,
    output diff,borrow

    );
    assign diff=bin^a^b;
    assign borrow=bin&(~(a^b))|(~a)&b;
endmodule
Testbench:
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
Simulation:
 
Elaborated Design:
 
Sr latch:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 15:15:29
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input s,r,
    output q,qbar

    );
    assign q=~(s&qbar);
    assign qbar=~(r&q);
   
endmodule
Testbench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 15:20:12
// Design Name: 
// Module Name: tb_sr_latch
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


module tb_sr_latch(

    );
    reg s, r;
    wire q,qbar;
    sr_latch uut(
    .s(s), .r(r), .q(q), .qbar(qbar)
    );
    
    initial begin
    s=0; r=0; #10;
    s=1; r=0; #10;
    s=0; r=1; #10;
    s=1; r=1; #10;
    
   $finish;
   end
endmodule
Simulation:
 
Elaborated Design:
 
JK flip flop
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:13:35
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input j, k, clk,
    output q, q_bar

    );
    
    wire j_g, k_g;
    
    assign #1 j_g=(~(j&(clk)));
    assign #1 k_g=(~(k&(clk)));
    assign #1 q =(~((j_g)&(q_bar)));
    assign #1 q_bar=(~((k_g)&q));
endmodule
Testbench:
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
Simulation:
  
Elaborated Design:

D flipflop
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 17:09:41
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input d,clk,
    output q,q_bar

    );
    
    wire d_g, d_bar_g;
    
    assign #1 d_g = (~(d&(clk)));
    assign #1 d_bar_g = (~((~d)&(clk)));
    assign #1 q = (~((d_g)&(q_bar)));
    assign #1 q_bar = (~((d_bar_g)&q));
endmodule
Testbench:
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
Simulation:
 
Elaborated Design:
 
T flip flop
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:15:22
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input T,
    input clk,
    input reset,
    output reg Q

    );
    always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;
    else if (T)
        Q <= ~Q;       
    else
        Q <= Q;        
end
endmodule
Testbench:
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
Elaborated Design:
 
Simulation:
 
Sr_flip_flop
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:34:26
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
 input s,r,clk,
    output q, qbar

    );
    
    wire sg, rg;
    assign #1 sg=(~(s&(clk)));
    assign #1 rg=(~(r&(clk)));
    assign #1 q=(~(sg&qbar));
    assign #1 qbar=(~(rg&q));
endmodule
Testbench:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:36:45
// Design Name: 
// Module Name: tb_sr_flip_flop
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


module tb_sr_flip_flop(

    );
    reg s,r,clk;
    wire q, qbar;
    wire sg, rg;
    
     sr_flipflop uut(s,r,q,qbar,sg,rg);                                                                  
    
    
    initial begin 
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin 
    
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=1; r=0; #10;
        s=1; r=1; #10;
    
     
    $finish;
    end
endmodule
Elaborated Design:
 
Counter design
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:43:27
// Design Name: 
// Module Name: counter_design
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


module counter_design(
    input clk,
    input reset,
    input up_down,            
    output reg [3:0] count

    );
     always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 0;
    else if (up_down)
        count <= count + 1;
    else
        count <= count - 1;
end
endmodule
Testbench:
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
Elaborate Design:
 
Simulation:
universal_adder_subtractor
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:52:57
// Design Name: 
// Module Name: universal_adder_subtractor
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


module universal_adder_subtractor(
     input a0, a1, a2, a3, b0, b1, b2, b3,m,
    output c4, s0, s1, s2, s3, v

    );
     assign c0= m;
    assign s0= a0^(b0^m)^c0;
    assign c1= (a0 & (b0^m))| (c0&(a0^(b0^m)));
    assign s1= a1^(b1^m)^c1;
    assign c2= (a1&(b1^m))| (c1&(a1^(b1^m)));
    assign s2= a2^(b2^m)^c2;
    assign c3= (a2&(b2^m))| (c2&(a2^(b2^m)));
    assign s3= a3^(b3^m)^c3;
    assign c4= (a3&(b3^m))| (c3&(a3^(b3^m)));
    assign v=c3^c4;
endmodule
testbench:
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
Simulation:
 
Elaborate Design:
 
