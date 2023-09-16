`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 19:10:13
// Design Name: 
// Module Name: nedgedet
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


module nedgedet(input in,clk,output out );
reg q0,q1,d2,w1,d1;
assign in=d1;
always@(clk)
begin
if (clk)
q0<=d1;
w1<=(~q0);
d2<=q0;
q1<=d2;
end

and a1(out,w1,q1);
endmodule

