`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 01:16:09 PM
// Design Name: 
// Module Name: Full_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Full Adder using two Half Adders
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Adder(
    input a,
    input b,
    input Cin,
    output sum,
    output carry
    );
    
    wire sum1, carry1, carry2;
    
    // First Half Adder
    Half_Adder one(
        .a(a),
        .b(b),
        .sum(sum1),
        .carry(carry1)
    );
    
    // Second Half Adder
    Half_Adder two(
        .a(sum1),
        .b(Cin),
        .sum(sum),//sum is propogates from one instance
        .carry(carry2)
    );
    
    // Final Carry
    assign carry = carry1 | carry2;  // OR the carries from both half adders
    
    
    //or  if no half adder################33
    
    //    module Full_Adder(
    //    input a,
    //    input b,
    //    input Cin,
    //    output sum,
    //    output carry
    //    );
    //    assign sum = a ^ b ^ Cin;
    //    assign carry = (a & b) | (b & Cin) | (Cin & a);
endmodule


