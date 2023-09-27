`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2023 19:55:49
// Design Name: 
// Module Name: upcounter
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
module upcounter1(input in,clk,rst ,output out);
upcounter upcounter(in,clk,rst,out);
endmodule

module upcounter(input in, clk,rst , output out );
reg [3:0] out=0;
always@(posedge clk)
begin
if(rst)
out=4'b0000;
else if (in)
out=out+1;
end
endmodule
