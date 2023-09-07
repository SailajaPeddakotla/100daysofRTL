`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 18:57:03
// Design Name: 
// Module Name: sr_ff
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
module SR_FF(clk,rst,s,r,q,q_bar);
input clk,rst,s,r;
output q,q_bar;
SR_FF sr_ff( clk,rst_n,s,r,q,q_bar);
endmodule

module sr_ff(
  input clk, rst_n,
  input s,r,
  output reg q,
  output q_bar
  );
  
  // always@(posedge clk or negedge rst_n) // for asynchronous reset
  always@(posedge clk) begin // for synchronous reset
    if(!rst_n) q <= 0;
    else begin
      case({s,r})
        2'b00: q <= q;    // No change
        2'b01: q <= 1'b0; // reset
        2'b10: q <= 1'b1; // set
        2'b11: q <= 1'bx; // Invalid inputs
      endcase
    end
  end
  assign q_bar = ~q;
endmodule