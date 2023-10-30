`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 21:10:26
// Design Name: 
// Module Name: gcd_tb
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


module gcd_tb;
reg [3:0]a;
reg [3:0]b;
wire [3:0]out;
//dut
gcd gcd(.a(a),.b(b),.out(out));
initial
begin
a=5;
b=9;
end
endmodule
