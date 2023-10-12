`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 22:50:08
// Design Name: 
// Module Name: rom8bit
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


module rom8bit(input clk,[2:0] select, rd, 
output reg [7:0]out);
reg [7:0] rom[7:0];
always@(posedge clk)
begin
if(rd)
out<=rom[select];
end
initial
begin
rom[0]=8'd18; 
rom[1]=8'd14;
rom[2]=8'd21;
rom[3]=8'd05;
rom[4]=8'd10;
rom[5]=8'd11;
rom[6]=8'd18;
rom[7]=8'd01;
end

endmodule
