`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 22:20:30
// Design Name: 
// Module Name: siso
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


`timescale 1ns / 1ps
module siso_design(input clk,b,output q);
wire w1,w2,w3;

d_ff dut1(.clk(clk),.d(b),.q(w1),.rst());
d_ff dut2(.clk(clk),.d(w1),.q(w2),.rst());
d_ff dut3(.clk(clk),.d(w2),.q(w3),.rst());
d_ff dut4(.clk(clk),.d(w3),.q(q),.rst());

endmodule

// d flip flop
module d_ff (
  input clk,    
  input d,      
  input rst,    
  output reg q);

  always @(posedge clk) 
  begin
    if (rst)
      q <= 1'b0;
    else
      q <= d;
  end

endmodule

// testbench
module siso_tb();

reg clk,b;
wire q;

siso_design uut(.clk(clk),.b(b),.q(q));

initial
begin
clk=1'b0;
forever #5clk=~clk;
end

initial
begin
$monitor("clk=%d,b=%d,q=%d",clk,b,q);
end

initial
begin
b=1;
#10;
b=1;
#10;
b=1;
#10;
b=0;

#50;
$finish;

end
endmodule
