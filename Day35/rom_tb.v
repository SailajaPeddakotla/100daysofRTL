`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 23:04:30
// Design Name: 
// Module Name: rom_tb
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


module rom_tb;
reg clk,rd;
reg [2:0]select;
wire[7:0] out;
//intializaton
rom8bit rom8bit(.clk(clk),.select(select),.rd(rd),.out(out));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
#10 rd=1; select=0;
#10 rd=1; select=1;
#10 rd=1; select=2;
#10 rd=1; select=3;
#10 rd=1; select=4;
#10 rd=1; select=5;
#10 rd=1; select=6;
#10 rd=1; select=7;
#10 rd=0;
#100 $finish;
end
endmodule
