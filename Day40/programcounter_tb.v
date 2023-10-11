`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 20:15:09
// Design Name: 
// Module Name: programcounter_tb
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


module programcounter_tb;
reg [15:0] in;
reg clk,clr,inc;
wire [15:0] out;
//dut
programcounter programcounter(.in(in),.clr(clr),.clk(clk),.inc(inc),.out(out));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial 
begin
in=16'b0001010000100001;
#15 clr=0;inc=0;
#15 clr=0;inc=1;
#15 clr=1;inc=0;
#15 clr=1;inc=1;
#15 in=16'b0000010100011000;
#15 clr=0;inc=0;
#15 clr=0;inc=1;
#15 clr=1;inc=0;
#15 clr=1;inc=1;
#80 $finish;
end
endmodule
