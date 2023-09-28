`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 12:04:52
// Design Name: 
// Module Name: dff_tb
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


module dff_tb;
reg d,clk,rst;
wire q;
d_ff  d_ff( .q(q),.clk(clk),.rst(rst),.d(d));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
d=1; rst=0; #10
d=1; rst=1; #10
d=0; rst=1; #10
d=0; rst=0; #10
d=1; rst=0; #10

#50 $finish;
end
endmodule
