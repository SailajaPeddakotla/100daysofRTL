`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2023 12:14:49
// Design Name: 
// Module Name: mealy2scomp_tb
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


module mealy2scomp_tb;
reg clk;
reg[3:0] in;
wire [3:0]out;
//dut
mealy2scomp mealy2scomp(.clk(clk),.in(in),.out(out));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
in=4'b1010;
#50 $finish;
end
endmodule
