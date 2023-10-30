`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 23:03:01
// Design Name: 
// Module Name: ram16bit_tb
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


module ram16bit_tb;
reg clk;
reg [15:0] in;
reg [3:0]select;
reg wr;
wire [15:0] out;
//Dut
ram16bit ram16bit(.clk(clk),.in(in),.out(out),.wr(wr),.select(select));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
in=15'b0001100000000101;
#5 wr=1'b1;select=4'b0000;
#5 wr=1'b1;select=4'b0001;
#5 wr=1'b1;select=4'b0010;
#5 wr=1'b1;select=4'b0011;
#5 wr=1'b1;select=4'b0100;
#5 wr=1'b1;select=4'b0101;
#5 wr=1'b1;select=4'b0110;
#5 wr=1'b1;select=4'b0111;
#5 wr=1'b1;select=4'b1000;
#5 wr=1'b1;select=4'b1001;
#5 wr=1'b1;select=4'b1010;
#5 wr=1'b1;select=4'b1011;
#5 wr=1'b1;select=4'b1100;
#5 wr=1'b1;select=4'b1101;
#5 wr=1'b1;select=4'b1110;
#5 wr=1'b1;select=4'b1111;


#10 wr=1'b0;select=4'b0000;
#10 wr=1'b0;select=4'b0001;
#10 wr=1'b0;select=4'b0010;
#10 wr=1'b0;select=4'b0011;
#10 wr=1'b0;select=4'b0100;
#10 wr=1'b0;select=4'b0101;
#10 wr=1'b0;select=4'b0110;
#10 wr=1'b0;select=4'b0111;
#10 wr=1'b0;select=4'b1000;
#10 wr=1'b0;select=4'b1001;
#10 wr=1'b0;select=4'b1010;
#10 wr=1'b0;select=4'b1011;
#10 wr=1'b0;select=4'b1100;
#10 wr=1'b0;select=4'b1101;
#10 wr=1'b0;select=4'b1110;
#10 wr=1'b0;select=4'b1111;

#100 $finish;
end

endmodule

