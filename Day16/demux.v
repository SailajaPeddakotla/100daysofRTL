`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 21:48:27
// Design Name: 
// Module Name: demux
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
module demux1(input i,s0,s1,
output y0,y1,y2,y3);
demux demux(i, s1, s0, y0,y1,y2,y3);
endmodule

module demux(
  input i,
    input s1, s0,
    output y0,y1,y2,y3
    );
assign y0=(~s0)|(~s1)|i;
assign y1=(~s0)|(s1)|i;
assign y2=(s0)|(~s1)|i;
assign y3=(s0)|(s1)|i;
endmodule
