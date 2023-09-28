`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 11:31:23
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb;
reg j,k,clk;
wire q;
jk_ff jk_ff(.j(j),.k(k),.clk(clk),.q(q)); 
initial
begin
clk=1'b0;
forever #5 clk= ~clk;
end
initial
begin
{j,k}=2'b00;
j=0;k=0; #10
j=0;k=1; #10
j=1;k=0; #10
j=1;k=1; #10
#50 $finish;
end

endmodule
