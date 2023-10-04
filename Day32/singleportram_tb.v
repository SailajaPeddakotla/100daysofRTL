`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2023 22:30:09
// Design Name: 
// Module Name: singleportram_tb
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


module singleportram_tb;
reg clk;
reg [7:0] in;
reg [2:0]select;
reg wr;
wire [7:0] out;
//Dut
singleportram singleportram(.clk(clk),.in(in),.out(out),.wr(wr),.select(select));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
in=8'b00110100;
#5 wr=1'b1; select=3'b000;
#5 wr=1'b1; select=3'b001;
#5 wr=1'b1;select=3'b010;
#5 wr=1'b1;select=3'b011;
#5 wr=1'b1;select=3'b100;
#5 wr=1'b1;select=3'b101;
#5 wr=1'b1;select=3'b110;
#5 wr=1'b1;select=3'b111;

#10 wr=1'b0; select=3'b000;
#10 wr=1'b0; select=3'b001;
#10 wr=1'b0;select=3'b010;
#10 wr=1'b0;select=3'b011;
#10 wr=1'b0;select=3'b100;
#10 wr=1'b0;select=3'b101;
#10 wr=1'b0;select=3'b110;
#10 wr=1'b0;select=3'b111;

#60 $finish;
end

endmodule
