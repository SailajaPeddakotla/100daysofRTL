`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 19:26:09
// Design Name: 
// Module Name: priority
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


module priority(
    input [3:0] in,
    output reg [1:0] out);
    always @(*)
        begin
            casez({in})
                4'bzzz1: out=2'b00;
                4'bzz1z: out=2'b01;
                4'bz1zz: out=2'b10;
                4'b1zzz: out=2'b11;
                default: out=2'b00;
            endcase
        end
endmodule
