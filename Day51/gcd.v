`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 20:33:54
// Design Name: 
// Module Name: gcd
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


module gcd(input wire[3:0]a,wire[3:0]b,
output reg [3:0] out);
reg temp;
reg a1;
reg b1;
always @(*)
begin
a1=a;
b1=b;
temp=a1;
while (b1!=0)
begin
temp=b1;
b1=a1%b1;
a1=temp;
end
out=temp;
end
endmodule
