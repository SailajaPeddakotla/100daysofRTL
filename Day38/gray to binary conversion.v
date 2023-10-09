`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2023 21:41:28
// Design Name: 
// Module Name: gray2bin
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


module gray2bin(input [3:0] in, output [3:0] out);
assign out[3]=in[3];
assign out[2]=out[3]^in[2];
assign out[1]=out[2]^in[1];
assign out[0]=out[1]^in[0];
endmodule
