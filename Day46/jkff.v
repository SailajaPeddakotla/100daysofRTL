`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 22:14:02
// Design Name: 
// Module Name: jkff
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


module jkff(j,k,clk,q,q_bar);
input j,k,clk;
output  q,q_bar;
reg q;
assign q_bar= ~q;
always @(posedge clk)
begin

case({j,k})
2'b00: q<=q;
2'b01: q<=0;
2'b10: q<=1;
2'b11: q<=~q;
endcase
end
endmodule


module master_slave(s,r,clk,qn,qn_bar);
input s,r,clk;
output qn,qn_bar;


wire mq;
wire mq_bar;
wire mclk;
assign mclk= ~clk;


jkff Master(s,r,clk,mq,mq_bar);
jkff Slave(mq,mq_bar,mclk,qn,qn_bar);

endmodule
