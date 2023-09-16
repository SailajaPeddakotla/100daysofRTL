module sipo(clk,rst,in,out);

input clk,in,rst;
output reg [3:0] out;
reg [3:0] x;

always @(posedge clk )
begin
if (rst)
out = 4'b0000;
else
x = out >>1 ;
out = {in,x[2:0]};
end
endmodule

module sipoff(input clk,rst,in, output out);
sipo sipo(clk,rst,in,out);
endmodule
