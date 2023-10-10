`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2023 22:30:13
// Design Name: 
// Module Name: alu8bit
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


module alu8bit(input [7:0] a,
input [7:0]b,
input [2:0]select,
output reg [7:0] out);

always @(*)
begin
case({select})
//arth
3'b000: out<=a-b;
3'b001: out<=a~^b; //logical operator
3'b010: out<=a^b;//bitwise
3'b011: out<=a>>1;//rightshift 
3'b100: out<=a<<1;//left shift
3'b101: out<=a|b;//or
3'b110: out<=a&b;//and
3'b111: out<=a/b;//division
default:out=8'bzzzzzzzz;
endcase
end
endmodule
