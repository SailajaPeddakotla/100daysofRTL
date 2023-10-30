`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 21:11:22
// Design Name: 
// Module Name: vedicmul2bit
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


module vedicmul2bit(input [1:0]a,[1:0]b,
output [3:0]c);
wire [3:0] temp;
wire [3:0]c;
assign c[0]=a[0]&b[0];
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];
halfadder ha1(temp[0],temp[1],c[1],temp[3]);
halfadder ha2(temp[2],temp[3],c[2],c[3]);
endmodule

module halfadder(input a,b,output sum,carry);
xor(sum,a,b);
and(carry,a,b);
endmodule
