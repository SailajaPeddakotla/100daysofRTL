`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 18:56:47
// Design Name: 
// Module Name: fullsub
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
module full_sub(input a,b,c,output diff,bor);
fullsub fullsub(a,b,c ,diff,bor);
endmodule


module fullsub(input a,b,c ,output diff,bor);
assign diff=a^b^c;
assign bor=(~a)&b |(~b)&c |(~c)&a;
endmodule
