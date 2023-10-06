`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 23:09:01
// Design Name: 
// Module Name: DecimaltoBCD
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
module deci2bcd(input in,output out);
DecimaltoBCD DecimaltoBCD(in,out);
endmodule

module DecimaltoBCD(input [9:0]in,
output reg [3:0] out);
always@(*)
begin
out[3]<=in[9]|in[8];
out[2]<=in[7]|in[6]|in[5]|in[4];
out[1]<=in[7]|in[6]|in[3]|in[2];
out[0]<=in[9]|in[7]|in[5]|in[1];
end
endmodule
