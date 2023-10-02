`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 22:22:28
// Design Name: 
// Module Name: fabseries
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


module fabseries(
input wire [3:0] in,
input clk,
output reg [3:0] out
);
always @(posedge clk)
begin
{out[0]}<={in[0]};
out[1]<=in[1];
out[2]<=in[0]+in[1];
out[3]<= in[1]+out[2];
end
endmodule
