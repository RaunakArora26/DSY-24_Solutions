`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 01:34:24 PM
// Design Name: 
// Module Name: Multiplier_twoBits
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


module Multiplier_twoBits(
    input A1, A0, // Inputs for number A
    input B1, B0, // Inputs for number B
    output P3, P2, P1, P0 // Outputs for the product
    );
    
    wire carry1;
    
    assign P0 = A0 & B0;
    
        Half_Adder Mul1(
        .a(A1 & B0),
        .b(A0 & B1),
        .sum(P1),
        .carry(carry1)
    );

        Half_Adder Mul2(
        .a(carry1),
        .b(A1 & B1),
        .sum(P2),
        .carry(P3)
    );
  
    
endmodule
