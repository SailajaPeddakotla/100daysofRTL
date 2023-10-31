`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 22:46:39
// Design Name: 
// Module Name: clkbuf_tb
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


module clkbuf_tb;
reg inclk;
wire outclk;
realtime t1,t2,t3,t4,t5,t6;
parameter T=10;
clkbuf dut(inclk,outclk);
initial
begin
inclk=1'b0;
forever #(T/2) inclk=~inclk;
end
task master;
begin
@(posedge inclk) t1=$realtime;
@(posedge inclk) t2=$realtime;
t3=t2-t1;
end
endtask

task bufout;
begin
@(posedge outclk) t4=$realtime;
@(posedge outclk) t5=$realtime;
t6=t5-t4;
end
endtask

task freq_phase;
realtime f,p;
begin
f=t6-t3;
p=t4-t1;
$display("freq_diff=%0t,phase_diff=%0t",f,p);
end
endtask

initial
begin
fork master;
bufout;
join freq_phase;
end
endmodule


