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


module dualportram_tb;
reg clk;
reg [7:0] a;
reg [7:0] b;
reg [2:0]addrs_a;
reg [2:0]addrs_b;
reg wra,rda,wrb,rdb;
wire [7:0] out_a;
wire [7:0] out_b;
//Dut
dualportram dualportram(.a(a),.wra(wra),.rda(rda),.out_a(out_a),.addrs_a(addrs_a),.b(b),.wrb(wrb),.rdb(rdb),.addrs_b(addrs_b),.clk(clk),.out_b(out_b));

initial
begin
clk=1'b0;
forever #5 clk=~clk;

end

initial
begin
a=8'b00011000;
b=8'b00010100;

//read operation for a
#10 rda=1;
#10 rda=1;
//read operation for b
#10 rdb=1;
#10 rdb=1;
//write operation for Port A
#10 wra=1'b1;addrs_a=3'b000;
#10 wra=1'b1;addrs_a=3'b001;
#10 wra=1'b1;addrs_a=3'b010; 
#10 wra=1'b1;addrs_a=3'b011;
#10 wra=1'b1;addrs_a=3'b100;
#10 wra=1'b1;addrs_a=3'b101;
#10 wra=1'b1;addrs_a=3'b110;
#10 wra=1'b1;addrs_a=3'b111;
//write operation for Port B
#10 wrb=1'b1; addrs_b=3'b000;
#10 wrb=1'b1; addrs_b=3'b001;
#10 wrb=1'b1; addrs_b=3'b010;
#10 wrb=1'b1; addrs_b=3'b011;
#10 wrb=1'b1; addrs_b=3'b100;
#10 wrb=1'b1; addrs_b=3'b101;
#10 wrb=1'b1; addrs_b=3'b101;
#10 wrb=1'b1; addrs_b=3'b110;
#10 wrb=1'b1; addrs_b=3'b111;

#100 $finish;
end

endmodule

