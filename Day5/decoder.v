`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 13:18:32
// Design Name: 
// Module Name: decoder
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

module dec(a,b,en,y);
input a,b,en;
output y;
decoder decoder(y,a,b,en);
endmodule
module decoder(y,a,b,en);
  // input port
   input a,b;
   input en;

   // use reg to store the output value
   output reg [3:0]y;
   // alays is used in design block 
   // only in Behavioural modeling.
   
   always @(en,a,b)
     begin
       // using condition if statement 
       // implement the 2:4 truth table
       if(en==0)
         begin
           if(a==1'b0 & b==1'b0) y=4'b1110;
           else if(a==1'b0 & b==1'b1) y=4'b1101;
           else if(a==1'b1 & b==1'b0) y=4'b1011;
           else if(a==1 & b==1) y=4'b0111;
           else y=4'bxxxx;
         end
       else
        y=4'b1111;
     end
endmodule