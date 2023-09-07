`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 16:42:08
// Design Name: 
// Module Name: d_ff
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


module d_ff( q ,q_bar,clk,reset,d);
input d,clk,reset;
output reg q;
output q_bar;
assign q_bar= ~q ;
always @(posedge clk)
begin
if (reset==1'b1)
q<=1'b0;
else
q<=d;
end
endmodule
