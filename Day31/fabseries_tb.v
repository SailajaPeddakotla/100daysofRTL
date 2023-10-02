`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 22:30:58
// Design Name: 
// Module Name: fabseries_tb
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


module fabseries_tb;
reg [3:0]in;
reg clk;
wire [3:0] out;
fabseries fabseries(.in(in),.clk(clk),.out(out));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
#10 in<=4'b0011;
#10 in<=4'b0010;
#10 in<=4'b0001;
#10 in<=4'b0000;
#50 $finish;
end
endmodule
