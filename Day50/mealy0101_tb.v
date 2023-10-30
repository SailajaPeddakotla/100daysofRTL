`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 22:08:07
// Design Name: 
// Module Name: mealy0101_tb
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


module mealy0101_tb;
wire [3:0] in;
wire clk,rst;
reg [3:0] out;
//dut
mealy0101 mealy0101(.in(in),.clk(clk),.rst(rst),.out(out));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
in=4'b0101;
#10 rst=1'b0;
#18 $finish;
end
endmodule
