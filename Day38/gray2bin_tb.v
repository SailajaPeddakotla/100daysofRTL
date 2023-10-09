`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2023 21:58:53
// Design Name: 
// Module Name: gray2bin_tb
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


module gray2bin_tb;
reg [3:0] in;
wire [3:0] out;
//dut
gray2bin gray2bin(.in(in),.out(out));

initial
begin
in=4'b1010;
#50
in=4'b1101;
#30 $finish;
end

endmodule
