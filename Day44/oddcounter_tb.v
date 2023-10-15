`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 21:02:24
// Design Name: 
// Module Name: oddcounter_tb
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


module oddcounter_tb;
reg clk,rst;
wire [7:0]count;
//dut
oddcounter oddcounter(.clk(clk),.rst(rst),.count(count));
initial
begin
clk=1'b0;
forever #5 clk= ~clk;
end
initial
begin
#10 rst=1'b1;
#10 rst=1'b0;
@(posedge clk);
for(integer i=0;i<220;i=i+1)
 @(posedge clk);
$finish; 
end
endmodule
