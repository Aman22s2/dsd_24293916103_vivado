`timescale 1ns / 1ps


module stimuli(

    );
    reg a,b;
    wire y0,y1,y2;
    Logic_Gates uut(a,b,y0,y1,y2);
    basic_gates uut2(a,b,and_out, or_out,not_out,nor_out,nand_out,xor_out,xnor_out);
    
    initial
    begin
      a=0; b=0;
      #10 a=0; b=1; 
      #10 a=1; b=0;
      #10 a=1; b=1;
      #10 $finish;
    end
    endmodule