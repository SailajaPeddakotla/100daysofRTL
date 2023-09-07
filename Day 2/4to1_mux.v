`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 08:36:28
// Design Name: 
// Module Name: 4to1_mux
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

module fourto1_mux(s0,s1, a,b,c,d,y );
output reg y;
input a,b,c,d;
input s0,s1;
always @(a or b or c or d or s0 or s1)
begin
case({s0,s1})
 2'b00:  y=a;      
 2'b01:  y=b;
 2'b10:  y=c;
 2'b11:  y=d;
 default y=1'bx;
endcase
end
endmodule
