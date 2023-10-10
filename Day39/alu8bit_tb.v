`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2023 22:51:15
// Design Name: 
// Module Name: alu8bit_tb
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


module alu8bit_tb;
reg [7:0] a;
reg [7:0] b;
reg [2:0] select;
wire [7:0] out;
//dut
alu8bit alu8bit(.a(a),.b(b),.select(select),.out(out));
initial
begin
a=8'b00100001;
b=8'b00010100;
#10 select=3'b000;
#10 select=3'b001;
#10 select=3'b010;
#10 select=3'b011;
#10 select=3'b100;
#10 select=3'b101;
#10 select=3'b110;
#10 select=3'b111;
#90 $finish;
end
endmodule
