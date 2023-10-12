`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 00:11:20
// Design Name: 
// Module Name: dualportram
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
module Dualportram(input [7:0]a,
input [7:0]b,
input clk,
input [2:0] addrs_a,
input [2:0] addrs_b,
input wra,rda,wrb,rdb,
output [7:0] out_a,
output [7:0] out_b);
dualportram dualportram(.a(a),.wra(wra),.rda(rda),.out_a(out_a),.addrs_a(addrs_a),.b(b),.wrb(wrb),.rdb(rdb),.addrs_b(addrs_b),.clk(clk),.out_b(out_b));
endmodule

module dualportram(input [7:0]a,
input [7:0]b,
input clk,
input [2:0] addrs_a,
input [2:0] addrs_b,
input wra,rda,wrb,rdb,
output reg [7:0] out_a,
output reg [7:0] out_b);
reg [7:0] ram1[7:0];
reg [7:0] ram2[7:0];
always @(posedge clk)
begin
if(rda) 
ram1[addrs_a]<= a;
if(wra)
out_a=ram1[addrs_a];
if(rdb)
ram2[addrs_b]<=b;
if(wrb)
out_b<=ram2[addrs_b];
end
endmodule
