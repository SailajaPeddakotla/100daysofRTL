`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2023 19:49:13
// Design Name: 
// Module Name: comp
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
module comparator(input a,b, output x,y,z);
comp comp(a,b,x,y,z);
endmodule

module comp(input a,b, output x,y,z);
assign x=~(a^b);
assign y=~(b)|a;
assign z=~(a)|b;
endmodule
