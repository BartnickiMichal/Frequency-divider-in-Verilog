`timescale 1ns / 1ps

module div_tb();
reg clk,rst;
wire led;

div d(clk,rst,led);

initial
clk=1'b0;

always
begin
#2 clk=~clk;
end
initial
begin
#0 rst=0;
#201 rst=1;
#202 rst=0;
end


endmodule
