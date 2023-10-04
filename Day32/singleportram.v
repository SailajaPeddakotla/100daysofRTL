`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2023 21:37:51
// Design Name: 
// Module Name: singleportram
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


module singleportram(input clk,
input [7:0] in,
input [2:0]  select,
input wr,
output reg [7:0] out);
reg [7:0] ram [7:0];
always@(clk)
begin
if (wr)
ram[select]<=in;
else
if (!wr)
out<=ram[select];
else
out<=8'bzzzzzzzz;

end
endmodule
