`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 10:16:43
// Design Name: 
// Module Name: srff_tb
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


module srff_tb;
reg s,r,clk,rst;
wire q,q_bar;
sr_ff sr_ff( .q(q),.q_bar(q_bar),.s(s),.r(r),.clk(clk),.rst(rst));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end 
initial
begin
{s,r}=2'b00;
#10
s=0;r=0;rst=1;#10
s=0;r=1;rst=0;#10
s=1;r=0;rst=0;#10
s=1;r=1;rst=0;#10

#100 $finish;
end
endmodule
