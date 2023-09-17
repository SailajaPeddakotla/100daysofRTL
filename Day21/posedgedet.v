`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 07:07:39
// Design Name: 
// Module Name: posedgedet
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


module posedgedet(input in,clk ,output out);
reg q;
always@(clk)
begin
if(clk)
q<=in;
end
assign out= q&(~q);
endmodule
