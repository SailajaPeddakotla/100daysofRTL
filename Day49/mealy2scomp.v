`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2023 12:03:06
// Design Name: 
// Module Name: mealy2scomp
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


module mealy2scomp(input clk,[3:0]in,output reg[3:0]out);
reg [3:0]temp;
always @(posedge clk)
begin
temp=~in;
out=temp+1;
end
endmodule
