`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 23:29:15
// Design Name: 
// Module Name: bintogrey
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
module bintogrey1(input[3:0] binary, output [3:0] out);
bintogrey bintogrey(binary,out);
endmodule

module bintogrey(input [3:0] binary, output [3:0] out );
assign out[3]=binary[3];
assign out[2]=binary[3]^binary[2];
assign out[1]=binary[2]^binary[1];
assign out[0]=binary[1]^binary[0];
endmodule
