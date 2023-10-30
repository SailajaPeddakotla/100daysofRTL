`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 23:00:03
// Design Name: 
// Module Name: ram16bit
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


module ram16bit(input clk,
input [15:0] in,
input [3:0]  select,
input wr,
output reg [15:0] out);
reg [15:0] ram [15:0];
always@(posedge clk)
begin
if (wr)
ram[select]<=in;
else
if (!wr)
out=ram[select];
else
out<=16'bzzzzzzzzzzzzzzzz;

end
endmodule
