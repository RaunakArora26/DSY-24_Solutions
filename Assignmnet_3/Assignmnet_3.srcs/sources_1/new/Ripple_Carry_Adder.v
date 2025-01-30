`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2025 06:47:46 AM
// Design Name: 
// Module Name: Ripple_Carry_Adder
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


module Ripple_Carry_Adder(
    input [3:0] a,
    input [3:0] b,
    input Cin,
    output Cout,
    output [3:0] Sum
    );
    
    wire C1,C2,C3;
    
    Full_Adder FA1(a[0],b[0],Cin,Sum[0],C1);
    Full_Adder FA2(a[1],b[1],C1,Sum[1],C2);
    Full_Adder FA3(a[2],b[2],C2,Sum[2],C3);
    Full_Adder FA4(a[3],b[3],C3,Sum[3],Cout);

endmodule
