`timescale 1ns / 1ps

module All_Gates(
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

    // Basic Logic Gates
    assign and_gate  = a & b;      // AND gate
    assign or_gate   = a | b;      // OR gate
    assign not_gate  = ~a;         // NOT gate (of input a)
    assign nand_gate = ~(a & b);   // NAND gate
    assign nor_gate  = ~(a | b);   // NOR gate
    assign xor_gate  = a ^ b;      // XOR gate
    assign xnor_gate = ~(a ^ b);   // XNOR gate

endmodule
