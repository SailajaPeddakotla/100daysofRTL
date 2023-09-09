`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 09:27:11
// Design Name: 
// Module Name: comp2
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
module comparator(input a,b,output x,y,z);
comp2  comp2(a,b,x,y,z);
endmodule
module comp2(a,b,x,y,z);
input [0:1] a,b;
output reg x,y,z;
always @(a or b)
begin
if (a==b)
x<=1'b1;
else
begin
if (a[1]==b[1] && a[0]>b[0] || a>b)
y<=1'b1;
else if (a[1]==b[1] && a[0]<b[0] || a<b)
z<=1'b1;
end
end
endmodule
