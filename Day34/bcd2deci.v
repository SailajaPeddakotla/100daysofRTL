`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 22:29:12
// Design Name: 
// Module Name: bcd2deci
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
module bcd2decimal(input [3:0] in, output [9:0] out);
bcd2deci bcd2deci(.in(in),.out(out));
endmodule


module bcd2deci(input [3:0]in,output reg [9:0] out);
always @(*)
begin
out[0]<=~in[3]& ~in[2]& ~in[1]&in[0];
out[1]<=(~in[3]& ~in[2]& ~in[1])&in[0];
out[2]<=~in[3]& ~in[2]&in[1]&(~in[0]);
out[3]<=~in[3]& ~in[2] &in[1]&in[0];
out[4]<=~in[3]&in[2]& ~in[1]& ~in[0];
out[5]<=~in[3] &in[2]& ~in[1]&in[0];
out[6]<=~in[3] &in[2]&in[1]& ~in[0];
out[7]<=~(in[3])&in[2]&in[1]&in[0];
out[8]<=in[3]& ~in[2]& ~in[1]& ~in[0];
out[9]<=in[3]& ~in[2]& ~in[1]&in[0];
end
endmodule
