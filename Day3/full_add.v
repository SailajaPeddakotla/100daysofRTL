`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2023 18:02:01
// Design Name: 
// Module Name: full_add
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


module full_add(input a,b,c, output sum,carry );
assign sum=a^b^c;
assign carry=(a|b) & (b|c) & (c|a);
endmodule
