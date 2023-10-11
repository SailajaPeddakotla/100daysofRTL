`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 20:04:51
// Design Name: 
// Module Name: programcounter
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
module pc(input in,clk,clr,inc,
output  out);
programcounter programcounter(in,clk,clr,inc,out);
endmodule

module programcounter(input [15:0] in,
input clk,clr,inc,
output reg[15:0] out);
reg [15:0]tout;
always@ (posedge clk)
begin
if(!clr)
if(in)
case(inc)
1'b0: tout=in;
1'b1: tout=tout+4;
endcase
else if(clr)
tout=32'b0;

out=tout;
end

endmodule
