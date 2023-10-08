`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 23:37:56
// Design Name: 
// Module Name: bintogray_tb
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


module bintogray_tb;
reg [3:0] binary;
wire[3:0] out;
//dut
bintogrey  bintogrey(.binary(binary),.out(out));

initial
begin
binary=4'b1101;
#50
binary=4'b0110;
#50 $finish;
end
endmodule
