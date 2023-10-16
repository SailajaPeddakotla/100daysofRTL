`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 21:38:44
// Design Name: 
// Module Name: tristatebuffer_tb
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


module tristatebuffer_tb;
reg in;
reg en;
wire out;
//dut
tristatebuffer tristatebuffer(.in(in),.en(en),.out(out));
initial
begin
#10 in=0;en=0;
#10 in=0;en=1;
#10 in=1;en=0;
#10 in=1;en=1;
#30 $finish;
end
endmodule
