`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 01:22:31 PM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb();

reg a,b,Cin;
wire sum,carry;
integer i;

Full_Adder dut(a,b,Cin,sum,carry);

initial begin
   for(i=0;i<8;i=i+1)
   begin
        {a,b,Cin} = i;
        #10;   
   end
end



endmodule
