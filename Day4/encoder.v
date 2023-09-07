`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 18:26:06
// Design Name: 
// Module Name: encoder
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
module enc(y,a);
input y ;
output a;
encoder encoder(y,a);
endmodule



module encoder(y,a);
input [8:0] y;
output [2:0] a;
assign a[2]=y[7]|y[6]|y[5]|y[4];
assign a[1]=y[7]|y[6]|y[3]|y[2];
assign a[0]=y[7]|y[5]|y[3]|y[1];
endmodule
