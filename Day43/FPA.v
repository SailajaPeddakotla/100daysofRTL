`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 07:52:26
// Design Name: 
// Module Name: FPA
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


module FPA(input clk,rst,
input [3:0]req,
output reg [3:0] grant);
always @(posedge clk)
begin
if (rst)
grant<=4'b0000;
else if (req[3])
grant<=4'b0011;
else if (req[2])
grant<=4'b0010;
else if (req[1])
grant<=4'b0001;
else if (req[0])
grant<=4'b0000;
else
grant<=4'bzzzz;
end
endmodule
