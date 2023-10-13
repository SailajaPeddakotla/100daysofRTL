`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2023 12:05:46
// Design Name: 
// Module Name: alu16bit_tb
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


module alu16bit_tb;
reg [15:0]a;
reg [15:0]b;
reg [3:0]select;
wire [15:0]out;
//dut
alu16bit alu16bit(.a(a),.b(b),.select(select),.out(out));
initial
begin
a=16'b0001010000100001;
b=16'b0000010100011000;
#10 select=4'b0000;
#10 select=4'b0001;
#10 select=4'b0010;
#10 select=4'b0011;
#10 select=4'b0100;
#10 select=4'b0101;
#10 select=4'b0110;
#10 select=4'b0111;
#10 select=4'b1000;
#10 select=4'b1001;
#10 select=4'b1010;
#10 select=4'b1011;
#10 select=4'b1100;
#10 select=4'b1101;
#10 select=4'b1110;
#10 select=4'b1111;

#170 $finish;
end
endmodule
