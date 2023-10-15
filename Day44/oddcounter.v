`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 20:53:49
// Design Name: 
// Module Name: oddcounter
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


module oddcounter(input clk,rst,
output reg[7:0]count);
reg [7:0]nxt_count;
always@(posedge clk )
begin
if(rst)
count<=8'h1;
else
count<=nxt_count;

nxt_count=count+8'h2;
end
endmodule
