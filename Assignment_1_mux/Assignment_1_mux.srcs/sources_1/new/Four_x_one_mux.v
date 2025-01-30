`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 01:03:41 PM
// Design Name: 
// Module Name: Four_x_one_mux
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


module Four_x_one_mux(
    input [3:0] in,
    input [1:0] sel,
    output out
    );
    //data flow code for 4x1 mux just simple TT of mux see
    assign out = ((~sel[1])&(~sel[0])& in[0]) | ((~sel[1])&(sel[0]) & in[1]) | ((sel[1])&(~sel[0]) & in[2]) | ((sel[1])&(sel[0])& in[3]);
    
endmodule
