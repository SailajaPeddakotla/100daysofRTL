`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2023 11:36:51
// Design Name: 
// Module Name: alu16bit
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


module alu16bit(input [15:0]a,
input [15:0]b,
input [3:0]select,
output reg [15:0]out);
always@(*)
begin
case(select)
4'b0000: out=a+b;//add
4'b0001: out=a-b;//sub
4'b0010: out=a*b;//mul
4'b0011: out=a/b;//division
4'b0100: out=a%b;//remainder
4'b0101: out=a&b;//and
4'b0110: out=a|b;//or
4'b0111: out=a^b;//exor
4'b1000: out=~a;//not
4'b1001: out=a<<1;//left shift
4'b1010: out=a>>1;//right shift
4'b1011: out=a<b?a:b;//lessthan or >
4'b1100: out=a==b?1'b1:1'b0;//equal or not =
4'b1101: out=a~^b;//exnor
4'b1110: out=(~a)&b;//abar b
4'b1111: out=a&(~b);//nand
default: out=16'bz;
endcase
end
endmodule
