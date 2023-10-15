`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 09:16:30
// Design Name: 
// Module Name: FPA_tb
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


module FPA_tb;
reg clk,rst;
reg [3:0] req;
wire [3:0] grant;
//dut
FPA FPA(.clk(clk),.rst(rst),.req(req),.grant(grant));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
#10 rst=1;
#10 rst=0;
#10 req[3]=1;
#10 req[2]=0;
#10 req[1]=0;
#10 req[0]=0;
end
endmodule
