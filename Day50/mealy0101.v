`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 21:49:24
// Design Name: 
// Module Name: mealy0101
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


module mealy0101(input clk,rst,[3:0] in,
output [3:0] out);
reg [3:0] ps;
wire [3:0]ns;
wire [3:0] out1;
always @ (posedge clk)
begin
if(rst)
ps<=4'b0000;
else 
ps<=ns;
 end
assign ns={ps[2:0],in};
assign out1=(ps[3:0]== 4'b0101)?ps:4'bz;
assign out=out1;
endmodule
